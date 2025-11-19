@interface FinHealthTextSimilarityFeatures
- (BOOL)_modelsLoaded;
- (BOOL)isNLTaggerSchemeLemmaAvailable;
- (FinHealthTextSimilarityFeatures)init;
- (id)_tokenize:(id)a3 shouldLemmatize:(BOOL)a4;
- (void)applyCategoryHeuristics:(id)a3 detailedCategory:(id)a4;
- (void)applyTimingHeuristics:(id)a3 detailedCategory:(id)a4 dateHour:(id)a5;
- (void)neighborsForText:(id)a3 completion:(id)a4;
- (void)semanticTagsForMerchant:(id)a3 detailedCategory:(id)a4 dateHour:(id)a5 completion:(id)a6;
@end

@implementation FinHealthTextSimilarityFeatures

- (FinHealthTextSimilarityFeatures)init
{
  v40.receiver = self;
  v40.super_class = FinHealthTextSimilarityFeatures;
  v2 = [(FinHealthTextSimilarityFeatures *)&v40 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [NLEmbedding wordEmbeddingForLanguage:NLLanguageEnglish];
    nlEmbedding = v2->_nlEmbedding;
    v2->_nlEmbedding = v4;

    v35 = [v3 pathForResource:@"text_heuristics" ofType:@"json" inDirectory:@"FeaturesResources"];
    [NSData dataWithContentsOfFile:?];
    v34 = v39 = 0;
    v6 = [NSJSONSerialization JSONObjectWithData:"JSONObjectWithData:options:error:" options:? error:?];
    v7 = v39;
    v8 = [v3 pathForResource:@"english_localizations" ofType:@"json" inDirectory:@"FeaturesResources"];
    if (_os_feature_enabled_impl())
    {
      v9 = [v3 pathForResource:@"modern_english_localizations" ofType:@"json" inDirectory:@"FeaturesResources"];

      v8 = v9;
    }

    [NSData dataWithContentsOfFile:v8];
    v33 = v38 = v7;
    v10 = [NSJSONSerialization JSONObjectWithData:"JSONObjectWithData:options:error:" options:? error:?];
    v11 = v38;

    v12 = [v6 valueForKey:@"stop_words"];
    v13 = [NSSet setWithArray:v12];
    stopWords = v2->_stopWords;
    v2->_stopWords = v13;

    v15 = [v6 valueForKey:@"category_expansions"];
    categoriesExpansionDict = v2->_categoriesExpansionDict;
    v2->_categoriesExpansionDict = v15;

    objc_storeStrong(&v2->_categoriesLocalizationDict, v10);
    if (!v2->_stopWords || !v2->_categoriesExpansionDict || v11)
    {
      v17 = FinHealthLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v11 localizedDescription];
        *buf = 136315394;
        v43 = "[FinHealthTextSimilarityFeatures init]";
        v44 = 2112;
        v45 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s: error: %@", buf, 0x16u);
      }
    }

    v19 = [NLTagger alloc];
    v41 = NLTagSchemeLemma;
    v20 = [NSArray arrayWithObjects:&v41 count:1];
    v21 = [v19 initWithTagSchemes:v20];
    nlTagger = v2->_nlTagger;
    v2->_nlTagger = v21;

    v23 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@", boundaryPatternWhitespace, boundaryPatternLowerThenUpper, boundaryPatternUpperUpperThenLower, boundaryPatternDigitThenLetter, boundaryPatternLetterThenDigit];
    v37 = v11;
    v24 = [NSRegularExpression regularExpressionWithPattern:v23 options:0 error:&v37];
    v25 = v37;

    boundaryRegex = v2->_boundaryRegex;
    v2->_boundaryRegex = v24;

    v36 = v25;
    v27 = [NSRegularExpression regularExpressionWithPattern:specialCharPattern options:0 error:&v36];
    v28 = v36;

    specialCharsRegex = v2->_specialCharsRegex;
    v2->_specialCharsRegex = v27;

    if (v28)
    {
      v30 = FinHealthLogObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = [v28 localizedDescription];
        *buf = 136315394;
        v43 = "[FinHealthTextSimilarityFeatures init]";
        v44 = 2112;
        v45 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s: Regex creation error: %@", buf, 0x16u);
      }
    }
  }

  return v2;
}

- (BOOL)_modelsLoaded
{
  v3 = [(FinHealthTextSimilarityFeatures *)self nlEmbedding];
  if (v3)
  {
    v4 = [(FinHealthTextSimilarityFeatures *)self nlTagger];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isNLTaggerSchemeLemmaAvailable
{
  v2 = [NLTagger availableTagSchemesForUnit:0 language:NLLanguageEnglish];
  v3 = [v2 containsObject:NLTagSchemeLemma];

  return v3;
}

- (void)neighborsForText:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_10000FD34;
    v16 = sub_10000FD44;
    v17 = objc_opt_new();
    nlEmbedding = self->_nlEmbedding;
    if (nlEmbedding)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10000FD4C;
      v11[3] = &unk_100020FA8;
      v11[4] = &v12;
      [(NLEmbedding *)nlEmbedding enumerateNeighborsForString:v6 maximumCount:maximumNeighborCount distanceType:0 usingBlock:v11];
    }

    v9 = [NSArray arrayWithArray:v13[5]];
    v10 = [NSDictionary dictionaryWithObject:v9 forKey:FHSmartFeatureCompoundTypeRelatedMerchants];
    v7[2](v7, v10);

    _Block_object_dispose(&v12, 8);
  }
}

- (id)_tokenize:(id)a3 shouldLemmatize:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 length])
  {
    v8 = v7;
    v9 = [(FinHealthTextSimilarityFeatures *)self specialCharsRegex];

    if (v9)
    {
      v10 = [(FinHealthTextSimilarityFeatures *)self specialCharsRegex];
      v11 = [v10 stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{objc_msgSend(v8, "length"), @" "}];

      v8 = v11;
    }

    v12 = [v8 decomposedStringWithCompatibilityMapping];

    CFStringTransform(v12, 0, kCFStringTransformStripCombiningMarks, 0);
    v13 = [(FinHealthTextSimilarityFeatures *)self boundaryRegex];

    if (v13)
    {
      v14 = [(FinHealthTextSimilarityFeatures *)self boundaryRegex];
      v15 = [v14 stringByReplacingMatchesInString:v12 options:0 range:0 withTemplate:{-[__CFString length](v12, "length"), @"\n"}];

      v16 = [v15 componentsSeparatedByString:@"\n"];
    }

    else
    {
      v16 = [(__CFString *)v12 componentsSeparatedByString:@" "];
    }

    v18 = [NSPredicate predicateWithFormat:@"length > 0"];
    v19 = [v16 filteredArrayUsingPredicate:v18];

    v20 = [v19 valueForKey:@"lowercaseString"];

    v21 = [(FinHealthTextSimilarityFeatures *)self nlTagger];

    if (v21 && v4)
    {
      v22 = objc_opt_new();
      v23 = [v20 componentsJoinedByString:@" "];
      v24 = [(FinHealthTextSimilarityFeatures *)self nlTagger];
      [v24 setString:v23];

      v25 = [(FinHealthTextSimilarityFeatures *)self nlTagger];
      v26 = [v23 length];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100010204;
      v35[3] = &unk_100020FD0;
      v36 = v23;
      v27 = v22;
      v37 = v27;
      v28 = v23;
      [v25 enumerateTagsInRange:0 unit:v26 scheme:0 options:NLTagSchemeLemma usingBlock:{0, v35}];

      v29 = v27;
      v20 = v29;
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000102BC;
    v34[3] = &unk_100020B80;
    v34[4] = self;
    v30 = [NSPredicate predicateWithBlock:v34];
    v31 = [v20 filteredArrayUsingPredicate:v30];

    if ([v31 count])
    {
      v32 = v31;

      v20 = v32;
    }

    v17 = v20;
  }

  else
  {
    v17 = &__NSArray0__struct;
  }

  return v17;
}

- (void)applyTimingHeuristics:(id)a3 detailedCategory:(id)a4 dateHour:(id)a5
{
  v13 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = [v8 integerValue];
      if (([v7 containsString:@"dining"] & 1) != 0 || objc_msgSend(v7, "containsString:", @"restaurant"))
      {
        if ((v10 - 5) >= 6)
        {
          if ((v10 - 11) >= 4)
          {
            if ((v10 - 15) > 8)
            {
              goto LABEL_12;
            }

            v11 = @"Dinner";
          }

          else
          {
            v11 = @"Lunch";
          }
        }

        else
        {
          v11 = @"Breakfast";
        }

        v12 = [NSDecimalNumber decimalNumberWithString:@"0.6"];
        [v13 setValue:v12 forKey:v11];
      }
    }
  }

LABEL_12:
}

- (void)applyCategoryHeuristics:(id)a3 detailedCategory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = self;
  v8 = [(FinHealthTextSimilarityFeatures *)self categoriesExpansionDict];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v7 isEqualToString:FHDetailedCategoryUndefined];

    if ((v10 & 1) == 0)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v11 = [(FinHealthTextSimilarityFeatures *)v28 categoriesExpansionDict];
      v12 = [v11 allKeys];

      obj = v12;
      v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v36;
        v26 = *v36;
        v27 = v7;
        do
        {
          v16 = 0;
          v29 = v14;
          do
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v35 + 1) + 8 * v16);
            if ([v7 hasPrefix:v17])
            {
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v18 = [(FinHealthTextSimilarityFeatures *)v28 categoriesExpansionDict];
              v19 = [v18 valueForKey:v17];

              v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v32;
                do
                {
                  for (i = 0; i != v21; i = i + 1)
                  {
                    if (*v32 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v24 = *(*(&v31 + 1) + 8 * i);
                    v25 = [NSDecimalNumber decimalNumberWithString:@"0.55"];
                    [v6 setValue:v25 forKey:v24];
                  }

                  v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
                }

                while (v21);
              }

              v15 = v26;
              v7 = v27;
              v14 = v29;
            }

            v16 = v16 + 1;
          }

          while (v16 != v14);
          v14 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v14);
      }
    }
  }

  else
  {
  }
}

- (void)semanticTagsForMerchant:(id)a3 detailedCategory:(id)a4 dateHour:(id)a5 completion:(id)a6
{
  v42 = a3;
  v44 = a4;
  v43 = a5;
  v10 = a6;
  if (v10)
  {
    v41 = v10;
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = sub_10000FD34;
    v58 = sub_10000FD44;
    v59 = objc_opt_new();
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100010C48;
    v53[3] = &unk_100020FF8;
    v53[4] = &v54;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100010D2C;
    v51[3] = &unk_100021048;
    v51[4] = self;
    v46 = objc_retainBlock(v53);
    v52 = v46;
    v45 = objc_retainBlock(v51);
    if (v44 && ([v44 isEqualToString:FHDetailedCategoryUndefined] & 1) == 0)
    {
      v11 = [v44 componentsSeparatedByString:@"."];
      for (i = 0; [v11 count] > i; ++i)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = [v11 count];
        v15 = [v11 objectAtIndex:i];
        v16 = [v11 subarrayWithRange:{0, i + 1}];
        v17 = [v16 componentsJoinedByString:@"."];

        v18 = [(FinHealthTextSimilarityFeatures *)self categoriesLocalizationDict];
        v19 = 1.0 - (i / v14);
        if (!v18)
        {
          goto LABEL_9;
        }

        v20 = [(FinHealthTextSimilarityFeatures *)self categoriesLocalizationDict];
        v21 = [v20 valueForKey:v17];
        v22 = v21 == 0;

        if (v22)
        {
LABEL_9:
          v24 = [(FinHealthTextSimilarityFeatures *)self _tokenize:v15 shouldLemmatize:0];
          v25 = [v24 count];
          v26 = v46[2];
          if (v25 <= 1)
          {
            v26(v46, v15, v19);
            v27 = v45;
            v26 = v45[2];
          }

          else
          {
            v27 = v46;
          }

          v26(v27, v15, v19);
        }

        else
        {
          v23 = [(FinHealthTextSimilarityFeatures *)self categoriesLocalizationDict];
          v24 = [v23 valueForKey:v17];

          (v46[2])(v46, v24, v19);
          (v45[2])(v45, v24, v19);
        }

        objc_autoreleasePoolPop(v13);
      }
    }

    if (includeExpandedCategoryTags == 1)
    {
      [(FinHealthTextSimilarityFeatures *)self applyCategoryHeuristics:v55[5] detailedCategory:v44];
    }

    if (includeTimeBasedTags == 1)
    {
      [(FinHealthTextSimilarityFeatures *)self applyTimingHeuristics:v55[5] detailedCategory:v44 dateHour:v43];
    }

    v28 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v29 = v55[5];
    v30 = [v29 countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v30)
    {
      v31 = *v48;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v47 + 1) + 8 * j);
          v34 = [FHSmartCompoundFeatureRankedValue alloc];
          v35 = [v55[5] objectForKeyedSubscript:v33];
          v36 = [v34 initWithLabelAndRank:v33 featureRank:v35];

          [v28 addObject:v36];
        }

        v30 = [v29 countByEnumeratingWithState:&v47 objects:v60 count:16];
      }

      while (v30);
    }

    [v28 sortUsingComparator:&stru_100021088];
    v37 = [v28 count];
    if (v37 >= 0xA)
    {
      v38 = 10;
    }

    else
    {
      v38 = v37;
    }

    v39 = [v28 subarrayWithRange:{0, v38}];
    v40 = [NSDictionary dictionaryWithObject:v39 forKey:FHSmartFeatureCompoundTypeSoldProducts];
    v41[2](v41, v40);

    _Block_object_dispose(&v54, 8);
    v10 = v41;
  }
}

@end