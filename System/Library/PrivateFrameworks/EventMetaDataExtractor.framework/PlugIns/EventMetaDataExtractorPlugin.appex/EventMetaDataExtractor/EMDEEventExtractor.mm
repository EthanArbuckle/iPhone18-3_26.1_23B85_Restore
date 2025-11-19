@interface EMDEEventExtractor
+ (id)postProcessTitle:(id)a3 messageBody:(id)a4;
- (BOOL)isEndTimeSignificantForEvent:(id)a3;
- (BOOL)isStartTimeSignificantForEvent:(id)a3;
- (EMDEEventExtractor)initWithConfigFile:(id)a3 assetFolderPath:(id)a4 error:(id *)a5;
- (id)createEventResultForTravelCategory:(id)a3 title:(id)a4 date:(id)a5;
- (id)createEventResultFromTitle:(id)a3 date:(id)a4 messageBody:(id)a5;
- (id)dateStringForDate:(id)a3;
- (id)extractDates;
- (id)extractEventDatesFromModelDateOutput:(id)a3;
- (id)extractEventFromMessage:(id)a3 error:(id *)a4;
- (id)extractTitleFromMessage:(id)a3 error:(id *)a4;
- (id)extractTitles;
- (id)formatString:(id)a3;
- (id)getDateFromString:(id)a3;
@end

@implementation EMDEEventExtractor

- (EMDEEventExtractor)initWithConfigFile:(id)a3 assetFolderPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || !v9)
  {
    v15 = extractionLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10008B38C();
    }

    v26 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithFormat:@"Found nil in input params during init of EMDEEventExtractor"];
    v27 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    *a5 = [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v17];

    goto LABEL_16;
  }

  v23.receiver = self;
  v23.super_class = EMDEEventExtractor;
  self = [(EMDEEventExtractor *)&v23 init];
  v11 = objc_alloc_init(EMDEModelWrapper);
  modelWrapper = self->_modelWrapper;
  self->_modelWrapper = v11;

  v13 = self->_modelWrapper;
  if (!v13)
  {
    v19 = extractionLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10008B350();
    }

    v24 = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithFormat:@"Couldn't instantiate EMDEModelWrapper"];
    v25 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    *a5 = [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v21];

    goto LABEL_16;
  }

  [(EMDEModelWrapper *)v13 loadConfigFromFile:v8 assetFolderPath:v10 error:a5];
  if (a5 && *a5)
  {
    v14 = extractionLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10008B2D8(a5);
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  self->_extractionFailureCode = -1;
  self = self;
  v18 = self;
LABEL_17:

  return v18;
}

- (BOOL)isStartTimeSignificantForEvent:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"EMDE_START_TIME_IS_SIGNIFICANT"];
  v5 = [v4 BOOLValue];

  return (a3 != 0) & v5;
}

- (BOOL)isEndTimeSignificantForEvent:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
  v5 = [v4 BOOLValue];

  return (a3 != 0) & v5;
}

- (id)dateStringForDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = +[NSTimeZone localTimeZone];
  [v4 setTimeZone:v5];

  v6 = [v4 stringFromDate:v3];

  return v6;
}

- (id)formatString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = +[NSCharacterSet whitespaceCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    if ([v6 length])
    {
      v7 = [v6 substringWithRange:{0, 1}];
      v8 = [v7 uppercaseString];
      v9 = [v6 stringByReplacingCharactersInRange:0 withString:{1, v8}];

      v6 = v9;
    }

    v10 = +[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @".,!?:_(-");
    v11 = [v6 stringByTrimmingCharactersInSet:v10];
  }

  else
  {
    v11 = v4;
  }

  return v11;
}

+ (id)postProcessTitle:(id)a3 messageBody:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 length];
    if (v6)
    {
      if (v7 && [v6 length] && objc_msgSend(v5, "rangeOfString:options:", @"Travel booking", 1) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = objc_alloc_init(DDScannerHelper);
        v8 = +[NSLocale currentLocale];
        v9 = [(DDScannerHelper *)v19 runDataDetectorsOnBody:v6 locale:v8];

        v10 = [v9 objectForKeyedSubscript:@"error"];

        if (!v10)
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v13 = [v9 objectForKeyedSubscript:@"extractions"];
          v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v14)
          {
            v15 = *v21;
            while (2)
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v21 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:@"ddType"];
                v18 = [v17 integerValue] == 8;

                if (v18)
                {
                  v11 = [v5 stringByReplacingOccurrencesOfString:@"Travel booking from" withString:@"Flight:" options:1 range:{0, objc_msgSend(v5, "length")}];

                  goto LABEL_9;
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }
        }
      }
    }
  }

  v11 = v5;
LABEL_9:

  return v11;
}

- (id)extractDates
{
  v3 = [(EMDEModelWrapper *)self->_modelWrapper runBeamInferenceForDate];
  if (v3)
  {
    v4 = extractionLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v3 objectForKey:@"prediction"];
      sub_10008B404(v5, v9, v4);
    }

    v6 = [(EMDEEventExtractor *)self extractEventDatesFromModelDateOutput:v3];
  }

  else
  {
    v7 = extractionLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No Predicted Date String.", v9, 2u);
    }

    v6 = 0;
    self->_extractionFailureCode = 1;
  }

  return v6;
}

- (id)extractEventDatesFromModelDateOutput:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"score"];
    [v6 floatValue];
    v8 = v7;

    v9 = +[EMDEUtils config];
    v10 = [v9 objectForKeyedSubscript:@"EMDE_DATE_THRESHOLD"];
    if (v10)
    {
      v11 = +[EMDEUtils config];
      v12 = [v11 objectForKeyedSubscript:@"EMDE_DATE_THRESHOLD"];
      [v12 floatValue];
      v14 = v13;

      if (v8 < v14)
      {
        v15 = extractionLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Date predicted has score below allowed threshold. Ignoring prediction.", buf, 2u);
        }

        v16 = 0;
        self->_extractionFailureCode = 3;
        goto LABEL_90;
      }
    }

    else
    {
    }

    v18 = [v5 objectForKey:@"prediction"];
    v97 = objc_alloc_init(NSMutableArray);
    v19 = +[EMDEUtils config];
    v20 = [v19 objectForKeyedSubscript:@"EMDE_EVENT_SEPARATOR"];
    v21 = [v18 rangeOfString:v20];

    v22 = +[EMDEUtils config];
    v23 = [v22 objectForKeyedSubscript:@"EMDE_HOTEL_BOOKING_START_DATE_TOKEN"];
    v24 = [v18 rangeOfString:v23 options:1];

    if (v21 == 0x7FFFFFFFFFFFFFFFLL && v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = [(EMDEEventExtractor *)self getDateFromString:v18];
      v26 = [v25 objectForKeyedSubscript:@"EMDE_EXTRACTION_TYPE"];
      v27 = [v26 integerValue];

      v28 = [(EMDEEventExtractor *)self isStartTimeSignificantForEvent:v25];
      if (v27 <= 5 && ((1 << v27) & 0x36) != 0 && v28)
      {
        [v97 addObject:v25];
LABEL_32:

LABEL_88:
        v75 = v97;
        v16 = v97;
        goto LABEL_89;
      }

      if (v25)
      {
        v54 = extractionLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No Significant Start DateTime found for the event.", buf, 2u);
        }

        v55 = 6;
      }

      else
      {
        v54 = extractionLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Data Detector failed to return any date from string", buf, 2u);
        }

        v55 = 5;
      }

      self->_extractionFailureCode = v55;
      goto LABEL_68;
    }

    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = +[EMDEUtils config];
      v30 = [v29 objectForKeyedSubscript:@"EMDE_EVENT_SEPARATOR"];
      v25 = [v18 componentsSeparatedByString:v30];

      v31 = objc_alloc_init(NSMutableDictionary);
      v32 = [v25 objectAtIndexedSubscript:0];
      v33 = [(EMDEEventExtractor *)self getDateFromString:v32];

      v34 = [v33 objectForKeyedSubscript:@"EMDE_EXTRACTION_TYPE"];
      v35 = [v34 integerValue];

      v36 = [(EMDEEventExtractor *)self isStartTimeSignificantForEvent:v33];
      if ((v35 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      if (v37 == 1)
      {
        v38 = [v33 objectForKeyedSubscript:@"EMDE_START_DATE"];
        [v31 setObject:v38 forKeyedSubscript:@"EMDE_START_DATE"];

        if ([v25 count] == 2)
        {
          v39 = [v25 objectAtIndexedSubscript:1];
          v40 = +[EMDEUtils config];
          v41 = [v40 objectForKeyedSubscript:@"EMDE_HOTEL_BOOKING_END_DATE_TOKEN"];
          v42 = [v39 rangeOfString:v41 options:1];

          if (v42 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v43 = [v25 objectAtIndexedSubscript:1];
            v44 = [(EMDEEventExtractor *)self getDateFromString:v43];

            v45 = [v44 objectForKeyedSubscript:@"EMDE_EXTRACTION_TYPE"];
            v46 = [v45 integerValue];

            v47 = [v44 objectForKeyedSubscript:@"EMDE_START_DATE"];
            v48 = [v33 objectForKeyedSubscript:@"EMDE_START_DATE"];
            v49 = [v47 compare:v48];

            if (v44 && (v46 - 6) >= 0xFFFFFFFFFFFFFFFDLL && v49 == 1)
            {
              v50 = [v44 objectForKeyedSubscript:@"EMDE_START_DATE"];
              [v31 setObject:v50 forKeyedSubscript:@"EMDE_END_DATE"];

              [v31 setObject:&__kCFBooleanTrue forKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
            }
          }
        }

        v51 = [v31 objectForKeyedSubscript:@"EMDE_END_DATE"];

        if (!v51)
        {
          v52 = [v33 objectForKeyedSubscript:@"EMDE_START_DATE"];
          v53 = [v52 dateByAddingTimeInterval:3600.0];
          [v31 setObject:v53 forKeyedSubscript:@"EMDE_END_DATE"];

          [v31 setObject:&__kCFBooleanFalse forKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
        }

        [v97 addObject:v31];

        goto LABEL_32;
      }

      if (v33)
      {
        v73 = extractionLogHandle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No Significant Start DateTime found for the event.", buf, 2u);
        }

        v74 = 6;
      }

      else
      {
        v73 = extractionLogHandle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Data Detector failed to return any date from string", buf, 2u);
        }

        v74 = 5;
      }

      self->_extractionFailureCode = v74;
LABEL_68:
      v16 = &__NSArray0__struct;
      v75 = v97;
LABEL_89:

      goto LABEL_90;
    }

    v56 = +[EMDEUtils config];
    v57 = [v56 objectForKeyedSubscript:@"EMDE_EVENT_SEPARATOR"];
    v58 = [v18 componentsSeparatedByString:v57];

    v59 = [v58 objectAtIndexedSubscript:0];
    v60 = [(EMDEEventExtractor *)self getDateFromString:v59];

    v61 = [v60 objectForKeyedSubscript:@"EMDE_EXTRACTION_TYPE"];
    v62 = [v61 integerValue];

    v63 = [(EMDEEventExtractor *)self isStartTimeSignificantForEvent:v60];
    if ((v62 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    if (v64 == 1)
    {
      [v97 addObject:v60];
      if ([v58 count] != 2)
      {
LABEL_87:

        goto LABEL_88;
      }

      v65 = [v58 objectAtIndexedSubscript:1];
      v66 = [(EMDEEventExtractor *)self getDateFromString:v65];

      v67 = [v66 objectForKeyedSubscript:@"EMDE_EXTRACTION_TYPE"];
      v68 = [v67 integerValue];

      v69 = [(EMDEEventExtractor *)self isStartTimeSignificantForEvent:v66];
      if ((v68 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v70 = v69;
      }

      else
      {
        v70 = 0;
      }

      if (v70 == 1)
      {
        [v97 addObject:v66];
LABEL_86:

        goto LABEL_87;
      }

      if (v68 - 1 < 2)
      {
        v76 = v69;
      }

      else
      {
        v76 = 0;
      }

      if (v76 != 1)
      {
        goto LABEL_86;
      }

      v96 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
      v77 = +[NSTimeZone localTimeZone];
      [v96 setTimeZone:v77];

      v78 = [v60 objectForKeyedSubscript:@"EMDE_START_DATE"];
      v95 = [v96 components:28 fromDate:v78];

      v79 = [v66 objectForKeyedSubscript:@"EMDE_START_DATE"];
      v80 = [v96 components:240 fromDate:v79];

      v94 = v80;
      [v95 setHour:{objc_msgSend(v80, "hour")}];
      [v95 setMinute:{objc_msgSend(v80, "minute")}];
      [v95 setSecond:{objc_msgSend(v80, "second")}];
      v93 = [v96 dateFromComponents:v95];
      if ([(EMDEEventExtractor *)self isEndTimeSignificantForEvent:v66])
      {
        v81 = [v60 objectForKeyedSubscript:@"EMDE_START_DATE"];
        v82 = [v96 components:28 fromDate:v81];

        v83 = [v66 objectForKeyedSubscript:@"EMDE_END_DATE"];
        v84 = [v96 components:240 fromDate:v83];

        [v82 setHour:{objc_msgSend(v84, "hour")}];
        [v82 setMinute:{objc_msgSend(v84, "minute")}];
        [v82 setSecond:{objc_msgSend(v84, "second")}];
        v85 = [v84 day];
        if (v85 == [v94 day] + 1 || objc_msgSend(v84, "day") == 1 && objc_msgSend(v94, "day") != 1)
        {
          [v82 setDay:{objc_msgSend(v82, "day") + 1}];
        }

        v87 = [v96 dateFromComponents:v82];

        v86 = &__kCFBooleanTrue;
      }

      else
      {
        [v93 dateByAddingTimeInterval:3600.0];
        v87 = v86 = &__kCFBooleanFalse;
      }

      v88 = [v87 compare:v93];
      if (v88 == 1)
      {
        v99[0] = @"EMDE_START_DATE";
        v99[1] = @"EMDE_END_DATE";
        v100[0] = v93;
        v100[1] = v87;
        v99[2] = @"EMDE_EXTRACTION_TYPE";
        v89 = [v66 objectForKeyedSubscript:?];
        v99[3] = @"EMDE_END_TIME_IS_SIGNIFICANT";
        v100[2] = v89;
        v100[3] = v86;
        v90 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:4];

        [v97 addObject:v90];
      }

      else
      {
        v91 = extractionLogHandle();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No Significant Start DateTime found for the event.", buf, 2u);
        }

        self->_extractionFailureCode = 6;
      }

      if (v88 == 1)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v60)
      {
        v71 = extractionLogHandle();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No Significant Start DateTime found for the event.", buf, 2u);
        }

        v72 = 6;
      }

      else
      {
        v71 = extractionLogHandle();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Data Detector failed to return any date from string", buf, 2u);
        }

        v72 = 5;
      }

      self->_extractionFailureCode = v72;
    }

    goto LABEL_68;
  }

  v17 = extractionLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10008B45C();
  }

  v16 = 0;
LABEL_90:

  return v16;
}

- (id)extractTitles
{
  v3 = [(EMDEModelWrapper *)self->_modelWrapper runBeamInferenceForTitle];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"prediction"];
    v6 = [v4 objectForKey:@"score"];
    [v6 floatValue];
    v8 = v7;

    v9 = extractionLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10008B498(v5, v9, v8);
    }

    v10 = +[EMDEUtils config];
    v11 = [v10 objectForKeyedSubscript:@"EMDE_TITLE_THRESHOLD"];
    if (v11)
    {
      v12 = +[EMDEUtils config];
      v13 = [v12 objectForKeyedSubscript:@"EMDE_TITLE_THRESHOLD"];
      [v13 floatValue];
      v15 = v8 < v14;

      if (v15)
      {
        v16 = extractionLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Title predicted has score below allowed threshold. Ignoring prediction.", v30, 2u);
        }

        v17 = 0;
        self->_extractionFailureCode = 4;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v19 = +[EMDEUtils config];
    v20 = [v19 objectForKeyedSubscript:@"EMDE_EVENT_SEPARATOR"];
    v21 = [v5 rangeOfString:v20] == 0x7FFFFFFFFFFFFFFFLL;

    if (v21)
    {
      v22 = [(EMDEEventExtractor *)self formatString:v5];
      v31 = v22;
      v17 = [NSArray arrayWithObjects:&v31 count:1];
    }

    else
    {
      v24 = +[EMDEUtils config];
      v25 = [v24 objectForKeyedSubscript:@"EMDE_EVENT_SEPARATOR"];
      v26 = [v5 componentsSeparatedByString:v25];
      v17 = [v26 mutableCopy];

      for (i = 0; [v17 count] > i; ++i)
      {
        v28 = [v17 objectAtIndexedSubscript:i];
        v29 = [(EMDEEventExtractor *)self formatString:v28];
        [v17 setObject:v29 atIndexedSubscript:i];
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  v18 = extractionLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No Predicted Title String.", v30, 2u);
  }

  v17 = 0;
  self->_extractionFailureCode = 2;
LABEL_16:

  return v17;
}

- (id)extractTitleFromMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    self->_extractionFailureCode = -1;
    v7 = extractionLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10008B520(v6, v7);
    }

    if ([(EMDEModelWrapper *)self->_modelWrapper prepareInputsForText:v6 error:a4]&& ([(EMDEEventExtractor *)self extractTitles], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      if (self->_extractionFailureCode == -1)
      {
        self->_extractionFailureCode = 0;
      }

      v19[0] = @"title";
      v10 = [v8 objectAtIndexedSubscript:0];
      v19[1] = @"errorCode";
      v20[0] = v10;
      v11 = [NSNumber numberWithInteger:self->_extractionFailureCode];
      v20[1] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    }

    else
    {
      v17 = @"errorCode";
      v13 = [NSNumber numberWithInteger:self->_extractionFailureCode];
      v18 = v13;
      v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v9 = v13;
    }

    goto LABEL_14;
  }

  v14 = extractionLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10008B598();
  }

  if (a4)
  {
    v21 = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithFormat:@"Found nil in inputMessage for extractEventFromMessage"];
    v22 = v15;
    v9 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v9];
    *a4 = v12 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (id)extractEventFromMessage:(id)a3 error:(id *)a4
{
  v70 = a3;
  if (v70)
  {
    v67 = self;
    self->_extractionFailureCode = -1;
    v5 = extractionLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10008B5D4(v70, v5);
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v6 = [&off_1000B0170 countByEnumeratingWithState:&v76 objects:v87 count:16];
    v7 = v67;
    if (v6)
    {
      v8 = *v77;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v77 != v8)
          {
            objc_enumerationMutation(&off_1000B0170);
          }

          if ([v70 rangeOfString:*(*(&v76 + 1) + 8 * i) options:1] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v68 = objc_alloc_init(DDScannerHelper);
            v10 = +[NSLocale currentLocale];
            v69 = [(DDScannerHelper *)v68 runDataDetectorsOnBody:v70 locale:v10];

            v11 = [v69 objectForKeyedSubscript:@"error"];
            LOBYTE(v10) = v11 == 0;

            if ((v10 & 1) == 0)
            {

              v7 = v67;
              continue;
            }

            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v16 = [v69 objectForKeyedSubscript:@"extractions"];
            v17 = [v16 countByEnumeratingWithState:&v72 objects:v86 count:16];
            if (!v17)
            {
              goto LABEL_30;
            }

            v18 = *v73;
            while (2)
            {
              v19 = 0;
LABEL_22:
              if (*v73 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = [*(*(&v72 + 1) + 8 * v19) objectForKeyedSubscript:@"ddType"];
              if ([v20 integerValue] == 8)
              {
                v21 = [v70 rangeOfString:@"Flight" options:1] == 0x7FFFFFFFFFFFFFFFLL;

                if (v21)
                {
                  [@"Flight " stringByAppendingString:v70];
                  v70 = v20 = v70;
                  goto LABEL_27;
                }
              }

              else
              {
LABEL_27:
              }

              if (v17 == ++v19)
              {
                v17 = [v16 countByEnumeratingWithState:&v72 objects:v86 count:16];
                if (!v17)
                {
LABEL_30:

                  v7 = v67;
                  goto LABEL_31;
                }

                continue;
              }

              goto LABEL_22;
            }
          }
        }

        v6 = [&off_1000B0170 countByEnumeratingWithState:&v76 objects:v87 count:16];
      }

      while (v6);
    }

LABEL_31:
    if ([(EMDEModelWrapper *)v7->_modelWrapper prepareInputsForText:v70 error:a4])
    {
      v22 = [(EMDEEventExtractor *)v67 extractDates];
      v23 = v22;
      if (v22)
      {
        if ([v22 count])
        {
          v24 = [(EMDEEventExtractor *)v67 extractTitles];
          if (v24)
          {
            v25 = v24;
            if ([v23 count] == 2 && objc_msgSend(v25, "count") == 2)
            {
              v26 = [v23 objectAtIndexedSubscript:0];
              v27 = [v26 objectForKeyedSubscript:@"EMDE_START_DATE"];
              [v27 timeIntervalSinceNow];
              if (v28 > 31536000.0)
              {
              }

              else
              {
                v29 = [v23 objectAtIndexedSubscript:1];
                v30 = [v29 objectForKeyedSubscript:@"EMDE_START_DATE"];
                [v30 timeIntervalSinceNow];
                v32 = v31 > 31536000.0;

                if (!v32)
                {
                  v33 = [v23 objectAtIndexedSubscript:0];
                  v34 = [v33 objectForKeyedSubscript:@"EMDE_START_DATE"];
                  [v34 timeIntervalSinceNow];
                  if (v35 < 0.0)
                  {
                  }

                  else
                  {
                    v36 = [v23 objectAtIndexedSubscript:1];
                    v37 = [v36 objectForKeyedSubscript:@"EMDE_START_DATE"];
                    [v37 timeIntervalSinceNow];
                    v39 = v38 < 0.0;

                    if (!v39)
                    {
                      v40 = [v25 objectAtIndexedSubscript:0];
                      v41 = [v23 objectAtIndexedSubscript:0];
                      v42 = [(EMDEEventExtractor *)v67 createEventResultFromTitle:v40 date:v41 messageBody:v70];

                      v43 = [v25 objectAtIndexedSubscript:1];
                      v44 = [v23 objectAtIndexedSubscript:1];
                      v45 = [(EMDEEventExtractor *)v67 createEventResultFromTitle:v43 date:v44 messageBody:v70];

                      v67->_extractionFailureCode = 0;
                      v85[0] = v42;
                      v85[1] = v45;
                      v46 = [NSArray arrayWithObjects:v85 count:2];

LABEL_49:
                      if ([v46 count])
                      {
                        v82[1] = @"errorCode";
                        v83[0] = v46;
                        v82[0] = @"events";
                        v49 = [NSNumber numberWithInteger:v67->_extractionFailureCode];
                        v83[1] = v49;
                        [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
                      }

                      else
                      {
                        v80 = @"errorCode";
                        v49 = [NSNumber numberWithInteger:v67->_extractionFailureCode];
                        v81 = v49;
                        [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
                      }
                      v15 = ;

                      v14 = v70;
                      goto LABEL_53;
                    }
                  }

                  v61 = extractionLogHandle();
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Skipping extracted events because event date is in past", buf, 2u);
                  }

                  goto LABEL_79;
                }
              }

              v55 = extractionLogHandle();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Skipping extracted events because event date is not in near future", buf, 2u);
              }

              goto LABEL_74;
            }

            if ([v23 count] && objc_msgSend(v25, "count"))
            {
              v51 = [v23 objectAtIndexedSubscript:0];
              v52 = [v51 objectForKeyedSubscript:@"EMDE_START_DATE"];
              [v52 timeIntervalSinceNow];
              v54 = v53 > 31536000.0;

              if (!v54)
              {
                v57 = [v23 objectAtIndexedSubscript:0];
                v58 = [v57 objectForKeyedSubscript:@"EMDE_START_DATE"];
                [v58 timeIntervalSinceNow];
                v60 = v59 < 0.0;

                if (!v60)
                {
                  v63 = [v25 objectAtIndexedSubscript:0];
                  v64 = [v23 objectAtIndexedSubscript:0];
                  v65 = [(EMDEEventExtractor *)v67 createEventResultFromTitle:v63 date:v64 messageBody:v70];

                  v67->_extractionFailureCode = 0;
                  v84 = v65;
                  v46 = [NSArray arrayWithObjects:&v84 count:1];

                  goto LABEL_49;
                }

                v61 = extractionLogHandle();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Skipping extracted events because event date is in past", buf, 2u);
                }

LABEL_79:

                v46 = 0;
                v62 = 7;
                goto LABEL_80;
              }

              v55 = extractionLogHandle();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Skipping extracted event because event date is not in near future", buf, 2u);
              }

LABEL_74:

              v46 = 0;
              v62 = 8;
LABEL_80:
              v67->_extractionFailureCode = v62;
              goto LABEL_49;
            }

            v56 = extractionLogHandle();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No event extracted.", buf, 2u);
            }

LABEL_48:
            v46 = 0;
            goto LABEL_49;
          }
        }
      }
    }

    else
    {
      v47 = extractionLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_10008B64C(a4);
      }

      v23 = 0;
    }

    v48 = extractionLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No event extracted.", buf, 2u);
    }

    v25 = 0;
    goto LABEL_48;
  }

  v12 = extractionLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10008B6C4();
  }

  if (a4)
  {
    v88 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithFormat:@"Found nil in inputMessage for extractEventFromMessage"];
    v89 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];

    [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v14];
    *a4 = v15 = 0;
LABEL_53:

    goto LABEL_54;
  }

  v15 = 0;
LABEL_54:

  return v15;
}

- (id)getDateFromString:(id)a3
{
  v33 = a3;
  v35 = objc_alloc_init(DDScannerHelper);
  v3 = +[NSLocale currentLocale];
  v4 = [(DDScannerHelper *)v35 runDataDetectorsOnBody:v33 locale:v3];

  v34 = v4;
  v5 = [v4 objectForKeyedSubscript:@"error"];

  if (v5)
  {
    v6 = extractionLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v34 objectForKeyedSubscript:@"error"];
      sub_10008B700(v7, buf, v6);
    }

    v8 = v34;
    v9 = v34;
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v34 objectForKeyedSubscript:@"extractions"];
    v10 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v10)
    {
      v11 = *v38;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:@"type"];
          v15 = [@"NSTextCheckingTypeDate" isEqualToString:v14];

          if (v15)
          {
            v16 = [v13 objectForKeyedSubscript:@"startDate"];
            if (v16)
            {
              v17 = [v13 objectForKeyedSubscript:@"endDate"];
              v18 = v17 == 0;

              if (!v18)
              {
                v44[0] = @"EMDE_START_DATE";
                v27 = [v13 objectForKeyedSubscript:@"startDate"];
                v45[0] = v27;
                v44[1] = @"EMDE_END_DATE";
                v28 = [v13 objectForKeyedSubscript:@"endDate"];
                v45[1] = v28;
                v44[2] = @"EMDE_START_TIME_IS_SIGNIFICANT";
                v29 = [v13 objectForKeyedSubscript:@"startTimeIsSignificant"];
                v45[2] = v29;
                v44[3] = @"EMDE_END_TIME_IS_SIGNIFICANT";
                v30 = [v13 objectForKeyedSubscript:@"endTimeIsSignificant"];
                v45[3] = v30;
                v44[4] = @"EMDE_EXTRACTION_TYPE";
                v31 = [v13 objectForKeyedSubscript:@"ddType"];
                v45[4] = v31;
                v9 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:5];

                v26 = extractionLogHandle();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_20;
                }

                goto LABEL_21;
              }
            }

            v19 = [v13 objectForKeyedSubscript:@"startDate"];
            v20 = v19 == 0;

            if (!v20)
            {
              v42[0] = @"EMDE_START_DATE";
              v21 = [v13 objectForKeyedSubscript:@"startDate"];
              v43[0] = v21;
              v42[1] = @"EMDE_END_DATE";
              v22 = [v13 objectForKeyedSubscript:@"startDate"];
              v23 = [v22 dateByAddingTimeInterval:3600.0];
              v43[1] = v23;
              v42[2] = @"EMDE_START_TIME_IS_SIGNIFICANT";
              v24 = [v13 objectForKeyedSubscript:@"startTimeIsSignificant"];
              v43[2] = v24;
              v43[3] = &__kCFBooleanFalse;
              v42[3] = @"EMDE_END_TIME_IS_SIGNIFICANT";
              v42[4] = @"EMDE_EXTRACTION_TYPE";
              v25 = [v13 objectForKeyedSubscript:@"ddType"];
              v43[4] = v25;
              v9 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:5];

              v26 = extractionLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
LABEL_20:
                sub_10008B758();
              }

LABEL_21:

              goto LABEL_22;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_22:
    v8 = v34;
  }

  return v9;
}

- (id)createEventResultForTravelCategory:(id)a3 title:(id)a4 date:(id)a5
{
  v8 = a3;
  v9 = a4;
  v31 = v8;
  v32 = a5;
  v29 = v9;
  v10 = [NSString stringWithFormat:@"%@:", v8];
  v11 = [v9 stringByReplacingOccurrencesOfString:v10 withString:&stru_1000AF768];

  v30 = v11;
  v12 = [v11 componentsSeparatedByString:@" to "];
  if ([v12 count] == 2)
  {
    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = [(EMDEEventExtractor *)self formatString:v13];

    v15 = [v12 objectAtIndexedSubscript:1];
    v16 = [(EMDEEventExtractor *)self formatString:v15];
    v17 = v12;
LABEL_5:

    goto LABEL_7;
  }

  v17 = [v11 componentsSeparatedByString:@"-"];

  if ([v17 count] == 2)
  {
    v18 = [v17 objectAtIndexedSubscript:0];
    v14 = [(EMDEEventExtractor *)self formatString:v18];

    v15 = [v17 objectAtIndexedSubscript:1];
    v16 = [(EMDEEventExtractor *)self formatString:v15];
    goto LABEL_5;
  }

  [(EMDEEventExtractor *)self formatString:v11];
  v14 = v16 = &stru_1000AF768;
LABEL_7:
  v19 = @"Travel booking";
  if ([v14 length])
  {
    v19 = [@"Travel booking" stringByAppendingFormat:@" from %@", v14];
  }

  if ([(__CFString *)v16 length])
  {
    v20 = [(__CFString *)v19 stringByAppendingFormat:@" to %@", v16];

    v19 = v20;
  }

  v33[0] = @"EventMetaDataExtractor_ML_EVENT__CATEGORY";
  v33[1] = @"EventMetaDataExtractor_ML_EVENT__DEPARTURE_LOCATION";
  v34[0] = v8;
  v34[1] = v14;
  v33[2] = @"EventMetaDataExtractor_ML_EVENT__ARRIVAL_LOCATION";
  v33[3] = @"EventMetaDataExtractor_ML_EVENT__TITLE";
  v34[2] = v16;
  v34[3] = v19;
  v33[4] = @"EventMetaDataExtractor_ML_EVENT__START_DATETIME";
  v21 = [v32 objectForKeyedSubscript:@"EMDE_START_DATE"];
  v22 = [(EMDEEventExtractor *)self dateStringForDate:v21];
  v34[4] = v22;
  v33[5] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME";
  v23 = [v32 objectForKeyedSubscript:@"EMDE_END_DATE"];
  v24 = [(EMDEEventExtractor *)self dateStringForDate:v23];
  v34[5] = v24;
  v33[6] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT";
  v25 = [v32 objectForKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
  v34[6] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:7];

  v27 = [v26 mutableCopy];

  return v27;
}

- (id)createEventResultFromTitle:(id)a3 date:(id)a4 messageBody:(id)a5
{
  v7 = a3;
  v28 = a4;
  v29 = v7;
  if ([v7 hasPrefix:@"Flight:"])
  {
    v8 = @"Flight";
LABEL_7:
    v9 = [(EMDEEventExtractor *)self createEventResultForTravelCategory:v8 title:v7 date:v28];
    goto LABEL_8;
  }

  if ([v7 hasPrefix:@"Train:"])
  {
    v8 = @"Train";
    goto LABEL_7;
  }

  if ([v7 hasPrefix:@"Bus:"])
  {
    v8 = @"Bus";
    goto LABEL_7;
  }

  if ([v7 hasPrefix:@"Stay:"])
  {
    v18 = [v7 stringByReplacingOccurrencesOfString:@"Stay:" withString:&stru_1000AF768];
    v19 = [(EMDEEventExtractor *)self formatString:v18];
    v20 = @"Booking";
    if ([v19 length])
    {
      v20 = [@"Booking" stringByAppendingFormat:@" for %@", v19];
    }

    v39[0] = @"EventMetaDataExtractor_ML_EVENT__CATEGORY";
    v39[1] = @"EventMetaDataExtractor_ML_EVENT__NAME";
    v40[0] = @"Hotel";
    v40[1] = v19;
    v40[2] = v20;
    v39[2] = @"EventMetaDataExtractor_ML_EVENT__TITLE";
    v39[3] = @"EventMetaDataExtractor_ML_EVENT__START_DATETIME";
    v21 = [v28 objectForKeyedSubscript:@"EMDE_START_DATE"];
    v22 = [(EMDEEventExtractor *)self dateStringForDate:v21];
    v40[3] = v22;
    v39[4] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME";
    v23 = [v28 objectForKeyedSubscript:@"EMDE_END_DATE"];
    v24 = [(EMDEEventExtractor *)self dateStringForDate:v23];
    v40[4] = v24;
    v39[5] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT";
    v25 = [v28 objectForKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
    v40[5] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:6];
    v27 = [v26 mutableCopy];
  }

  else
  {
    if (![v7 hasPrefix:@"Movie:"])
    {
      v35[0] = @"EventMetaDataExtractor_ML_EVENT__CATEGORY";
      v35[1] = @"EventMetaDataExtractor_ML_EVENT__TITLE";
      v36[0] = @"GenericEvent";
      v36[1] = v7;
      v35[2] = @"EventMetaDataExtractor_ML_EVENT__START_DATETIME";
      v19 = [v28 objectForKeyedSubscript:@"EMDE_START_DATE"];
      v18 = [(EMDEEventExtractor *)self dateStringForDate:v19];
      v36[2] = v18;
      v35[3] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME";
      v20 = [v28 objectForKeyedSubscript:@"EMDE_END_DATE"];
      v21 = [(EMDEEventExtractor *)self dateStringForDate:v20];
      v36[3] = v21;
      v35[4] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT";
      v22 = [v28 objectForKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
      v36[4] = v22;
      v23 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];
      v9 = [v23 mutableCopy];
      goto LABEL_31;
    }

    v18 = [v7 stringByReplacingOccurrencesOfString:@"Movie:" withString:&stru_1000AF768];
    v19 = [(EMDEEventExtractor *)self formatString:v18];
    v20 = @"Booking";
    if ([v19 length])
    {
      v20 = [@"Booking" stringByAppendingFormat:@" for %@", v19];
    }

    v37[0] = @"EventMetaDataExtractor_ML_EVENT__CATEGORY";
    v37[1] = @"EventMetaDataExtractor_ML_EVENT__NAME";
    v38[0] = @"Movie";
    v38[1] = v19;
    v38[2] = v20;
    v37[2] = @"EventMetaDataExtractor_ML_EVENT__TITLE";
    v37[3] = @"EventMetaDataExtractor_ML_EVENT__START_DATETIME";
    v21 = [v28 objectForKeyedSubscript:@"EMDE_START_DATE"];
    v22 = [(EMDEEventExtractor *)self dateStringForDate:v21];
    v38[3] = v22;
    v37[4] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME";
    v23 = [v28 objectForKeyedSubscript:@"EMDE_END_DATE"];
    v24 = [(EMDEEventExtractor *)self dateStringForDate:v23];
    v38[4] = v24;
    v37[5] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT";
    v25 = [v28 objectForKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
    v38[5] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:6];
    v27 = [v26 mutableCopy];
  }

  v9 = v27;

LABEL_31:
LABEL_8:
  [v9 allKeys];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v10 = v31 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        if (v14 != @"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT")
        {
          v15 = [v9 objectForKeyedSubscript:*(*(&v30 + 1) + 8 * i)];
          v16 = [v15 isEqualToString:&stru_1000AF768];

          if (v16)
          {
            [v9 removeObjectForKey:v14];
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v11);
  }

  return v9;
}

@end