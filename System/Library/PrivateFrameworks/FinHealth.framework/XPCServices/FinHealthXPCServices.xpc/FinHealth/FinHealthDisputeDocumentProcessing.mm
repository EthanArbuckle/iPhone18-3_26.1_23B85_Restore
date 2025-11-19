@interface FinHealthDisputeDocumentProcessing
+ (id)sharedInstance;
- (BOOL)isTransactionAddressFieldPresentIn:(id)a3 forTransactionAddressField:(id)a4;
- (id)_init;
- (id)fetchReceiptPhotosFromDate:(id)a3;
- (id)generateRankingScore:(id)a3 forTransaction:(id)a4;
- (id)getDisputeDocumentSuggestionsForTransaction:(id)a3 withDisputeDocumentType:(unint64_t)a4;
- (id)processDisputeDocument:(id)a3;
- (id)sortDisputeDocumentSuggestions:(id)a3;
@end

@implementation FinHealthDisputeDocumentProcessing

+ (id)sharedInstance
{
  if (qword_100026DF8 != -1)
  {
    sub_100013AA4();
  }

  v3 = qword_100026E00;

  return v3;
}

- (id)_init
{
  v33.receiver = self;
  v33.super_class = FinHealthDisputeDocumentProcessing;
  v2 = [(FinHealthDisputeDocumentProcessing *)&v33 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 pathForResource:@"dispute_document_ranking_dimensions" ofType:@"json" inDirectory:@"FeaturesResources"];
    v5 = [NSData dataWithContentsOfFile:v4];
    v32 = 0;
    v6 = [NSJSONSerialization JSONObjectWithData:v5 options:1 error:&v32];
    v7 = v32;
    dimensionsDict = v2->_dimensionsDict;
    v2->_dimensionsDict = v6;

    if (v7)
    {
      v9 = FinHealthLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error generating dispute document ranking dimensions dict", v31, 2u);
      }
    }

    else
    {
      v9 = objc_opt_new();
      v10 = [NSDecimalNumber alloc];
      v11 = [(NSDictionary *)v2->_dimensionsDict objectForKey:FHDisputeDocumentRankingDimensionDateTimeKey];
      [v11 doubleValue];
      v12 = [v10 initWithDouble:?];
      [v9 addObject:v12];

      v13 = [NSDecimalNumber alloc];
      v14 = [(NSDictionary *)v2->_dimensionsDict objectForKey:FHDisputeDocumentRankingDimensionMerchantKey];
      [v14 doubleValue];
      v15 = [v13 initWithDouble:?];
      [v9 addObject:v15];

      v16 = [NSDecimalNumber alloc];
      v17 = [(NSDictionary *)v2->_dimensionsDict objectForKey:FHDisputeDocumentRankingDimensionLocationStreetKey];
      [v17 doubleValue];
      v18 = [v16 initWithDouble:?];
      [v9 addObject:v18];

      v19 = [NSDecimalNumber alloc];
      v20 = [(NSDictionary *)v2->_dimensionsDict objectForKey:FHDisputeDocumentRankingDimensionLocationStateKey];
      [v20 doubleValue];
      v21 = [v19 initWithDouble:?];
      [v9 addObject:v21];

      v22 = [NSDecimalNumber alloc];
      v23 = [(NSDictionary *)v2->_dimensionsDict objectForKey:FHDisputeDocumentRankingDimensionLocationCityKey];
      [v23 doubleValue];
      v24 = [v22 initWithDouble:?];
      [v9 addObject:v24];

      v25 = [NSDecimalNumber alloc];
      v26 = [(NSDictionary *)v2->_dimensionsDict objectForKey:FHDisputeDocumentRankingDimensionLocationZipKey];
      [v26 doubleValue];
      v27 = [v25 initWithDouble:?];
      [v9 addObject:v27];

      v28 = [v9 copy];
      rankingDimensionFactors = v2->_rankingDimensionFactors;
      v2->_rankingDimensionFactors = v28;
    }
  }

  return v2;
}

- (id)getDisputeDocumentSuggestionsForTransaction:(id)a3 withDisputeDocumentType:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_opt_new();
  v9 = v8;
  if (a4 == 1)
  {
    v39 = v7;
    v41 = v6;
    v10 = [v6 transactionDate];
    v11 = [v10 dateByAddingTimeInterval:-secondsForThreeHours];

    v40 = self;
    v38 = v11;
    v12 = [(FinHealthDisputeDocumentProcessing *)self fetchReceiptPhotosFromDate:v11];
    v13 = FinHealthLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v48 = [v12 count];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "photoFetchResult count %lu", buf, 0xCu);
    }

    if ([v12 count])
    {
      v14 = 0;
      v44 = photoSuggestionDefaultScore;
      v42 = v9;
      v43 = v12;
      do
      {
        v15 = objc_autoreleasePoolPush();
        v16 = [v12 objectAtIndex:v14];
        v17 = [v16 characterRecognitionProperties];
        v18 = [v17 characterRecognitionData];

        v19 = [NSDecimalNumber decimalNumberWithString:v44];
        if (v18)
        {
          v45 = v15;
          v20 = objc_autoreleasePoolPush();
          v21 = objc_opt_class();
          v46 = 0;
          v22 = [NSKeyedUnarchiver unarchivedObjectOfClass:v21 fromData:v18 error:&v46];
          v23 = v46;
          if (v23)
          {
            v24 = FinHealthLogObject();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = [v16 uuid];
              *buf = 138412546;
              v48 = v25;
              v49 = 2112;
              v50 = v23;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error unarchiving photo %@ : %@", buf, 0x16u);

              v9 = v42;
            }
          }

          if (v22)
          {
            v26 = [v22 getTranscript];
            v27 = [(FinHealthDisputeDocumentProcessing *)v40 processDisputeDocument:v26];
            v28 = [(FinHealthDisputeDocumentProcessing *)v40 generateRankingScore:v27 forTransaction:v41];

            v9 = v42;
            v19 = v28;
          }

          objc_autoreleasePoolPop(v20);
          v12 = v43;
          v15 = v45;
        }

        v29 = [FHSmartCompoundFeatureRankedValue alloc];
        v30 = [v16 uuid];
        v31 = [v29 initWithLabelAndRank:v30 featureRank:v19];

        v32 = [[FHSmartFeatureDisputeDocumentSuggestion alloc] initWithRankedValue:v31 type:1];
        [v9 addObject:v32];

        objc_autoreleasePoolPop(v15);
        ++v14;
      }

      while (v14 < [v12 count]);
    }

    v33 = [v9 copy];
    v34 = [(FinHealthDisputeDocumentProcessing *)v40 sortDisputeDocumentSuggestions:v33];

    v35 = FinHealthLogObject();
    v6 = v41;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = [v41 identifier];
      *buf = 138412546;
      v48 = v36;
      v49 = 2112;
      v50 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Dispute Document Suggestions for %@ : %@", buf, 0x16u);
    }

    v7 = v39;
  }

  else
  {
    v34 = [v8 copy];
  }

  objc_autoreleasePoolPop(v7);

  return v34;
}

- (id)fetchReceiptPhotosFromDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [NSPredicate predicateWithFormat:@"dateCreated >= %@", v3];

  v6 = [NSPredicate predicateWithFormat:@"SUBQUERY(additionalAttributes.sceneClassifications, $s, $s.sceneIdentifier == %d AND $s.confidence > 0.9).@count > 0", PHAssetJunkSceneClassificationIdentifierReceiptOrDocument];
  v13[0] = v5;
  v13[1] = v6;
  v7 = [NSArray arrayWithObjects:v13 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  [v4 setInternalPredicate:v8];

  [v4 setFetchLimit:photoFetchLimit];
  v12 = PHAssetPropertySetCharacterRecognition;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  [v4 setFetchPropertySets:v9];

  v10 = [PHAsset fetchAssetsWithOptions:v4];

  return v10;
}

- (id)sortDisputeDocumentSuggestions:(id)a3
{
  v3 = [a3 sortedArrayUsingComparator:&stru_100020F30];
  v4 = photoSuggestionDefaultNum;
  v5 = [v3 count];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = [v3 subarrayWithRange:{0, v6}];

  return v7;
}

- (id)processDisputeDocument:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v28 = 0;
  v6 = [NSDataDetector dataDetectorWithTypes:24 error:&v28];
  v23 = v28;
  v22 = v6;
  [v6 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 addressComponents];

        if (v14)
        {
          v15 = [v12 addressComponents];
          [v4 addObject:v15];
        }

        v16 = [v12 date];

        if (v16)
        {
          v17 = [v12 date];
          [v5 addObject:v17];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v9);
  }

  v29[0] = FHDisputeDocumentProcessingLocationKey;
  v18 = [v4 copy];
  v30[0] = v18;
  v29[1] = FHDisputeDocumentProcessingDateKey;
  v19 = [v5 copy];
  v29[2] = FHDisputeDocumentProcessingTextKey;
  v30[1] = v19;
  v30[2] = v3;
  v20 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];

  return v20;
}

- (id)generateRankingScore:(id)a3 forTransaction:(id)a4
{
  v30 = a3;
  v6 = a4;
  v29 = [v6 displayName];
  v7 = [v6 transactionDate];
  v28 = [v30 objectForKeyedSubscript:FHDisputeDocumentProcessingDateKey];
  v27 = [v30 objectForKeyedSubscript:FHDisputeDocumentProcessingLocationKey];
  v26 = [v30 objectForKey:FHDisputeDocumentProcessingTextKey];
  v25 = [(NSArray *)self->_rankingDimensionFactors count];
  v8 = [NSDecimalNumber decimalNumberWithString:photoSuggestionDefaultScore];
  v9 = objc_opt_new();
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_10000F130;
  v52 = sub_10000F140;
  v10 = rankingDimensionsDefaultScore;
  v53 = [NSDecimalNumber decimalNumberWithString:rankingDimensionsDefaultScore];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10000F148;
  v45[3] = &unk_100020F58;
  v45[4] = self;
  v24 = v7;
  v46 = v24;
  v47 = &v48;
  [v28 enumerateObjectsUsingBlock:v45];
  [v9 addObject:v49[5]];
  v11 = [NSDecimalNumber decimalNumberWithString:v10];
  if (v29)
  {
    v12 = [v26 lowercaseString];
    v13 = [v29 lowercaseString];
    v14 = [v12 rangeOfString:v13] == 0x7FFFFFFFFFFFFFFFLL;

    if (!v14)
    {
      v15 = [(NSArray *)self->_rankingDimensionFactors objectAtIndex:1];

      v11 = v15;
    }
  }

  [v9 addObject:v11];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_10000F130;
  v43 = sub_10000F140;
  v44 = [NSDecimalNumber decimalNumberWithString:v10];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000F254;
  v36[3] = &unk_100020F80;
  v36[4] = self;
  v16 = v6;
  v37 = v16;
  v38 = &v39;
  [v27 enumerateObjectsUsingBlock:v36];
  [v9 addObject:v40[5]];
  if ([v9 count] != (v25 - 3))
  {
    v17 = FinHealthLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Ranking scores computed not equal to number of ranking dimensions", buf, 2u);
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v54 count:16];
  if (v19)
  {
    v20 = *v32;
    do
    {
      v21 = 0;
      v22 = v8;
      do
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v8 = [v22 decimalNumberByAdding:*(*(&v31 + 1) + 8 * v21)];

        v21 = v21 + 1;
        v22 = v8;
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v54 count:16];
    }

    while (v19);
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v48, 8);

  return v8;
}

- (BOOL)isTransactionAddressFieldPresentIn:(id)a3 forTransactionAddressField:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v5 = a4;
  v6 = [a3 lowercaseString];
  v7 = [v5 lowercaseString];

  LOBYTE(v5) = [v6 containsString:v7];
  return v5;
}

@end