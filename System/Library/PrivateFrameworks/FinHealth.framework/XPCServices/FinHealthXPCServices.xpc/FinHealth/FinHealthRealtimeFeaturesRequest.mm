@interface FinHealthRealtimeFeaturesRequest
- (FinHealthRealtimeFeaturesRequest)init;
- (id)_getLocalSearchResponse:(id)response transactionLocation:(id)location;
- (id)_getPointsOfInterestFromMapKit:(double)kit longitude:(double)longitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy;
- (id)getEvents;
- (id)queryPPEvents:(id)events fromDate:(id)date toDate:(id)toDate;
- (id)realtimeFeaturesForTransaction:(id)transaction;
- (id)textSimilarityFeatures;
- (id)tripEventTitleNomalization:(id)nomalization;
- (void)evaluateEventTagging:(id)tagging bypassMapService:(BOOL)service completion:(id)completion;
@end

@implementation FinHealthRealtimeFeaturesRequest

- (FinHealthRealtimeFeaturesRequest)init
{
  v9.receiver = self;
  v9.super_class = FinHealthRealtimeFeaturesRequest;
  v2 = [(FinHealthRealtimeFeaturesRequest *)&v9 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"%lu", ::secondsInDay];
    v4 = [NSDecimalNumber decimalNumberWithString:v3];
    secondsInDay = v2->_secondsInDay;
    v2->_secondsInDay = v4;

    v6 = objc_alloc_init(NSArray);
    pastTimeRangesToRetagEvents = v2->_pastTimeRangesToRetagEvents;
    v2->_pastTimeRangesToRetagEvents = v6;
  }

  return v2;
}

- (void)evaluateEventTagging:(id)tagging bypassMapService:(BOOL)service completion:(id)completion
{
  taggingCopy = tagging;
  completionCopy = completion;
  v37 = objc_opt_new();
  v32 = completionCopy;
  if (!completionCopy || service)
  {
    if (completionCopy)
    {
      v26 = [NSDictionary dictionaryWithDictionary:v37];
      (*(completionCopy + 2))(completionCopy, v26);
    }
  }

  else
  {
    getEvents = [(FinHealthRealtimeFeaturesRequest *)self getEvents];
    firstObject = [taggingCopy firstObject];
    transactionDate = [firstObject transactionDate];

    lastObject = [taggingCopy lastObject];
    transactionDate2 = [lastObject transactionDate];

    v29 = [NSPredicate predicateWithFormat:@"NOT (SELF.%K < %@)", @"endDate", transactionDate2];
    v28 = [NSPredicate predicateWithFormat:@"NOT (SELF.%K > %@)", @"startDate", transactionDate];
    v59[0] = v29;
    v59[1] = v28;
    v11 = [NSArray arrayWithObjects:v59 count:2];
    v27 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];

    v39 = [getEvents filteredArrayUsingPredicate:v27];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = taggingCopy;
    v12 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v12)
    {
      v38 = *v55;
      v36 = FHSmartFeatureCompoundTypeEventTagging;
      v35 = FHSmartFeatureCompoundTypeTripEvents;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v55 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v54 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v48 = 0;
          v49 = &v48;
          v50 = 0x3032000000;
          v51 = sub_100011A64;
          v52 = sub_100011A74;
          v53 = objc_opt_new();
          v42 = 0;
          v43 = &v42;
          v44 = 0x3032000000;
          v45 = sub_100011A64;
          v46 = sub_100011A74;
          v47 = objc_opt_new();
          transactionDate3 = [v14 transactionDate];
          transactionDate4 = [v14 transactionDate];
          v18 = [NSPredicate predicateWithFormat:@"(SELF.%K <= %@) AND (%@ <= SELF.%K)", @"startDate", transactionDate3, transactionDate4, @"endDate"];

          v19 = [v39 filteredArrayUsingPredicate:v18];
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_100011A7C;
          v41[3] = &unk_1000210B0;
          v41[4] = self;
          v41[5] = &v42;
          v41[6] = &v48;
          [v19 enumerateObjectsUsingBlock:v41];

          v20 = objc_opt_new();
          if ([v49[5] count])
          {
            v21 = [NSArray arrayWithArray:v49[5]];
            [v20 setObject:v21 forKey:v36];
          }

          if ([v43[5] count])
          {
            v22 = [NSArray arrayWithArray:v43[5]];
            [v20 setObject:v22 forKey:v35];
          }

          if ([v20 count])
          {
            v23 = [NSDictionary dictionaryWithDictionary:v20];
            identifier = [v14 identifier];
            [v37 setObject:v23 forKey:identifier];
          }

          _Block_object_dispose(&v42, 8);
          _Block_object_dispose(&v48, 8);

          objc_autoreleasePoolPop(v15);
        }

        v12 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v12);
    }

    v25 = [NSDictionary dictionaryWithDictionary:v37];
    (v32)[2](v32, v25);
  }
}

- (id)tripEventTitleNomalization:(id)nomalization
{
  nomalizationCopy = nomalization;
  title = [nomalizationCopy title];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  tripParts = [nomalizationCopy tripParts];
  v6 = [tripParts countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v30;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(tripParts);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([v11 tripMode] == 2)
        {
          mainLocation = [v11 mainLocation];
          locality = [mainLocation locality];

          v8 = locality;
        }
      }

      v7 = [tripParts countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);

    if (v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v14 = [NSRegularExpression regularExpressionWithPattern:@"Trip to (.*?)( options:.*?)? \\- (.*?) to (.*?)$" error:0, 0];
  v15 = [v14 firstMatchInString:title options:0 range:{0, objc_msgSend(title, "length")}];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 rangeAtIndex:1];
    v19 = [title substringWithRange:{v17, v18}];
    v20 = +[NSCharacterSet whitespaceCharacterSet];
    v21 = [v19 stringByTrimmingCharactersInSet:v20];
    v22 = [v21 length];

    if (v22)
    {
      v8 = v19;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
LABEL_20:
    v23 = objc_alloc_init(NSDateIntervalFormatter);
    [v23 setDateTemplate:tripEventsDateTemplate];
    [v23 setBoundaryStyle:2];
    startDate = [nomalizationCopy startDate];
    endDate = [nomalizationCopy endDate];
    v26 = [v23 stringFromDate:startDate toDate:endDate];
    v27 = [NSString stringWithFormat:@"%@ %@", v8, v26];

    title = v27;
    v8 = title;
  }

  return v8;
}

- (id)realtimeFeaturesForTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = +[NSCalendar currentCalendar];
  timeZone = [transactionCopy timeZone];
  [v5 setTimeZone:timeZone];

  transactionDate = [transactionCopy transactionDate];
  v8 = [v5 components:636 fromDate:transactionDate];

  hour = [v8 hour];
  [v8 setHour:0];
  [v8 setMinute:0];
  [v8 setSecond:0];
  v10 = objc_alloc_init(FHRealtimeFeaturesResponse);
  v11 = [v5 dateFromComponents:v8];
  [v11 timeIntervalSinceReferenceDate];
  [v10 setTransactionDateAtZerothHour:v12];

  timeZone2 = [transactionCopy timeZone];
  if (timeZone2 && (v14 = timeZone2, [transactionCopy timeZone], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "secondsFromGMT"), v15, v14, v16))
  {
    v17 = 2;
    v18 = 3;
    v19 = 4;
    if ((hour & 0xFFFFFFFFFFFFFFFCLL) != 0x10)
    {
      v19 = 5;
    }

    if ((hour & 0xFFFFFFFFFFFFFFFCLL) != 0xC)
    {
      v18 = v19;
    }

    if (hour - 6 >= 6)
    {
      v17 = v18;
    }

    v45 = 0;
    if (hour >= 6)
    {
      v20 = v17;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
    v45 = 1;
  }

  [v10 setTimeOfDay:v20];
  country = [transactionCopy country];
  if (country)
  {
    country2 = [transactionCopy country];
    [v10 setIsInternationalSpend:{objc_msgSend(country2, "isEqualToString:", @"USA"}];
  }

  else
  {
    [v10 setIsInternationalSpend:0];
  }

  [v10 setIsTapToPay:{objc_msgSend(transactionCopy, "transactionSource") == 1}];
  [v10 setMerchantCategory:{objc_msgSend(transactionCopy, "category")}];
  country3 = [transactionCopy country];
  [v10 setCountry:country3];

  displayName = [transactionCopy displayName];
  [v10 setMerchantDisplayName:displayName];

  [v10 setMapsMerchantID:{objc_msgSend(transactionCopy, "mapsMerchantID")}];
  [v10 setMapsMerchantBrandID:{objc_msgSend(transactionCopy, "mapsMerchantBrandID")}];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_100011A64;
  v53 = sub_100011A74;
  v54 = objc_opt_new();
  v25 = objc_alloc_init(FinHealthLostSavingsTag);
  displayName2 = [transactionCopy displayName];
  v27 = [(FinHealthLostSavingsTag *)v25 cashbackPercentForMerchant:displayName2];

  v28 = &off_100018000;
  if (v27 >= 1)
  {
    selfCopy = self;
    v29 = hour;
    v30 = v5;
    amount = [transactionCopy amount];
    v32 = [NSString stringWithFormat:@"%@", amount];
    v33 = [NSDecimalNumber decimalNumberWithString:v32];

    transactionSource = [transactionCopy transactionSource];
    displayName3 = [transactionCopy displayName];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100012690;
    v48[3] = &unk_1000210D8;
    v48[4] = &v49;
    [(FinHealthLostSavingsTag *)v25 lostSavingsTagComputationForTransaction:v33 transactionSource:transactionSource cashbackPercent:v27 merchantName:displayName3 completion:v48];

    v5 = v30;
    hour = v29;
    self = selfCopy;
    v28 = &off_100018000;
  }

  textSimilarityFeatures = [(FinHealthRealtimeFeaturesRequest *)self textSimilarityFeatures];
  displayName4 = [transactionCopy displayName];
  v47[0] = _NSConcreteStackBlock;
  v38 = *(v28 + 117);
  v47[1] = v38;
  v47[2] = sub_100012718;
  v47[3] = &unk_1000210D8;
  v47[4] = &v49;
  [textSimilarityFeatures neighborsForText:displayName4 completion:v47];

  displayName5 = [transactionCopy displayName];
  merchantDetailedCategory = [transactionCopy merchantDetailedCategory];
  if (v45)
  {
    v41 = 0;
  }

  else
  {
    v41 = [NSNumber numberWithInteger:hour];
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = v38;
  v46[2] = sub_1000127A0;
  v46[3] = &unk_1000210D8;
  v46[4] = &v49;
  [textSimilarityFeatures semanticTagsForMerchant:displayName5 detailedCategory:merchantDetailedCategory dateHour:v41 completion:v46];
  if ((v45 & 1) == 0)
  {
  }

  if ([v50[5] count])
  {
    v42 = [NSDictionary dictionaryWithDictionary:v50[5]];
    [v10 setSmartCompoundFeatures:v42];
  }

  [v10 setRepeatingPatternClass:2];

  _Block_object_dispose(&v49, 8);

  return v10;
}

- (id)_getLocalSearchResponse:(id)response transactionLocation:(id)location
{
  responseCopy = response;
  locationCopy = location;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100011A64;
  v33 = sub_100011A74;
  v34 = objc_opt_new();
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100011A64;
  v27 = sub_100011A74;
  v28 = objc_opt_new();
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100012A30;
  v20[3] = &unk_100021100;
  v22 = &v23;
  v8 = v7;
  v21 = v8;
  [responseCopy startWithCompletionHandler:v20];
  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v24[5];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100012BC4;
  v17 = &unk_100021150;
  v10 = locationCopy;
  v18 = v10;
  v19 = &v29;
  [v9 enumerateObjectsUsingBlock:&v14];
  allValues = [v30[5] allValues];
  v12 = [NSArray arrayWithArray:allValues];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v12;
}

- (id)_getPointsOfInterestFromMapKit:(double)kit longitude:(double)longitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy
{
  v6 = 0;
  if (kit != 0.0 && longitude != 0.0)
  {
    v10 = objc_opt_new();
    v11 = [[CLLocation alloc] initWithLatitude:kit longitude:longitude];
    v12 = CLLocationCoordinate2DMake(kit, longitude);
    v13 = objc_alloc_init(MKLocalSearchRequest);
    v14 = [NSString stringWithFormat:@"%f, %f", *&kit, *&longitude];
    [v13 setNaturalLanguageQuery:v14];

    v51 = MKCoordinateRegionMakeWithDistance(v12, 1000.0, 1000.0);
    [v13 setRegion:{v51.center.latitude, v51.center.longitude, v51.span.latitudeDelta, v51.span.longitudeDelta}];
    v41 = v13;
    v15 = [[MKLocalSearch alloc] initWithRequest:v13];
    v39 = [[MKLocalPointsOfInterestRequest alloc] initWithCenterCoordinate:v12.latitude radius:{v12.longitude, 1000.0}];
    v16 = [[MKLocalSearch alloc] initWithPointsOfInterestRequest:v39];
    v17 = FinHealthLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v49 = "[FinHealthRealtimeFeaturesRequest _getPointsOfInterestFromMapKit:longitude:horizontalAccuracy:verticalAccuracy:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "FHSmartCompoundFeatureRankedValue local + poi search start %s", buf, 0xCu);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v40 = v15;
    v18 = [(FinHealthRealtimeFeaturesRequest *)self _getLocalSearchResponse:v15 transactionLocation:v11];
    v38 = v16;
    v42 = v11;
    v19 = [(FinHealthRealtimeFeaturesRequest *)self _getLocalSearchResponse:v16 transactionLocation:v11];
    v20 = [v18 arrayByAddingObjectsFromArray:v19];

    v21 = [v20 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v44;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v43 + 1) + 8 * i);
          featureLabel = [v25 featureLabel];
          v27 = [v10 objectForKey:featureLabel];

          if (v27)
          {
            featureRank = [v25 featureRank];
            featureRank2 = [v27 featureRank];
            v30 = [featureRank compare:featureRank2];

            featureRank3 = [v27 featureRank];
            if (v30 == -1)
            {
              featureRank4 = [v25 featureRank];

              featureLabel2 = [v25 featureLabel];
              [v10 setValue:v25 forKey:featureLabel2];

              featureRank3 = featureRank4;
            }
          }

          else
          {
            featureRank3 = [v25 featureLabel];
            [v10 setValue:v25 forKey:featureRank3];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v22);
    }

    v34 = FinHealthLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v49 = "[FinHealthRealtimeFeaturesRequest _getPointsOfInterestFromMapKit:longitude:horizontalAccuracy:verticalAccuracy:]";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "FHSmartCompoundFeatureRankedValue local + poi search end %s", buf, 0xCu);
    }

    v35 = [NSDictionary alloc];
    allValues = [v10 allValues];
    v6 = [v35 initWithObjectsAndKeys:{allValues, FHSmartFeatureCompoundTypePointsOfInterest, 0}];
  }

  return v6;
}

- (id)textSimilarityFeatures
{
  textSimilarityFeatures = self->_textSimilarityFeatures;
  if (!textSimilarityFeatures)
  {
    v4 = objc_alloc_init(FinHealthTextSimilarityFeatures);
    v5 = self->_textSimilarityFeatures;
    self->_textSimilarityFeatures = v4;

    textSimilarityFeatures = self->_textSimilarityFeatures;
  }

  return textSimilarityFeatures;
}

- (id)getEvents
{
  events = self->_events;
  if (!events)
  {
    v4 = objc_alloc_init(PPEventStore);
    v5 = objc_opt_new();
    v6 = +[NSDate now];
    v7 = secondsInOneYear;
    v8 = [v6 dateByAddingTimeInterval:-secondsInOneYear];

    v9 = numOfPassesToQueryEvents;
    if (numOfPassesToQueryEvents)
    {
      v10 = 0;
      v11 = v7 / numOfPassesToQueryEvents;
      do
      {
        v12 = [v8 dateByAddingTimeInterval:v11 * v10];
        v13 = [v8 dateByAddingTimeInterval:v11 * ++v10];
        v14 = [(FinHealthRealtimeFeaturesRequest *)self queryPPEvents:v4 fromDate:v12 toDate:v13];
        [v5 addObjectsFromArray:v14];
      }

      while (v9 != v10);
    }

    v31 = v8;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = self->_pastTimeRangesToRetagEvents;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          firstObject = [v20 firstObject];
          lastObject = [v20 lastObject];
          v23 = [(FinHealthRealtimeFeaturesRequest *)self queryPPEvents:v4 fromDate:firstObject toDate:lastObject];
          [v5 addObjectsFromArray:v23];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v17);
    }

    v24 = FinHealthLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      pastTimeRangesToRetagEvents = self->_pastTimeRangesToRetagEvents;
      v26 = [v5 count];
      *buf = 138412802;
      v37 = pastTimeRangesToRetagEvents;
      v38 = 2048;
      v39 = v26;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Past time ranges to query:%@ Total events count: %lu Total fetched events %@", buf, 0x20u);
    }

    v27 = [NSSet setWithArray:v5];
    allObjects = [v27 allObjects];
    v29 = self->_events;
    self->_events = allObjects;

    events = self->_events;
  }

  return events;
}

- (id)queryPPEvents:(id)events fromDate:(id)date toDate:(id)toDate
{
  eventsCopy = events;
  dateCopy = date;
  toDateCopy = toDate;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  [v11 setFromDate:dateCopy];
  [v11 setToDate:toDateCopy];
  v30 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100013948;
  v28[3] = &unk_100021178;
  v12 = v10;
  v29 = v12;
  LOBYTE(v10) = [eventsCopy iterScoredEventsWithQuery:v11 error:&v30 block:v28];
  v13 = v30;
  if ((v10 & 1) == 0)
  {
    v14 = FinHealthLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Trip event error:%@", buf, 0xCu);
    }
  }

  v15 = objc_opt_new();
  [v15 setFromDate:dateCopy];
  [v15 setToDate:toDateCopy];

  v27 = 0;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_1000139C0;
  v25 = &unk_100021178;
  v16 = v12;
  v26 = v16;
  v17 = [eventsCopy iterScoredEventsWithQuery:v15 error:&v27 block:&v22];
  v18 = v27;
  if ((v17 & 1) == 0)
  {
    v19 = FinHealthLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v32 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Suggested event error:%@", buf, 0xCu);
    }
  }

  v20 = [NSArray arrayWithArray:v16, v22, v23, v24, v25];

  return v20;
}

@end