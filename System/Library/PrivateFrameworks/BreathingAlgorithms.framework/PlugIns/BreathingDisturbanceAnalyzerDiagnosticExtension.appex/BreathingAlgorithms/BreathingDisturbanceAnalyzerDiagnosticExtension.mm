@interface BreathingDisturbanceAnalyzerDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation BreathingDisturbanceAnalyzerDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v3 = sub_100002E38();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = parametersCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "attachmentsForParameters: %{public}@", buf, 0xCu);
  }

  v70 = [parametersCopy objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if (([v70 isEqualToString:@"com.apple.taptoradard"] & 1) != 0 || objc_msgSend(v70, "isEqualToString:", @"com.apple.TapToRadar"))
  {
    v4 = [parametersCopy objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];
    bOOLValue = [v4 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v6 = &__NSArray0__struct;
      goto LABEL_65;
    }

    v66 = 1;
  }

  else
  {
    v66 = 0;
  }

  v65 = dispatch_semaphore_create(0);
  v7 = NSTemporaryDirectory();
  v71 = [v7 stringByAppendingPathComponent:@"BreathingAlgorithms"];

  v8 = sub_100002E38();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v71;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to create directory at: %{public}@", buf, 0xCu);
  }

  v9 = +[NSFileManager defaultManager];
  v79 = 0;
  v10 = [v9 createDirectoryAtPath:v71 withIntermediateDirectories:1 attributes:0 error:&v79];
  v68 = v79;

  if (v10)
  {
    v11 = sub_100002E38();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v71;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully created directory at: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11 = sub_100002E38();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10000C154(v71, v68, v11);
    }
  }

  v12 = v71;
  v13 = sub_100002E38();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to run force analysis", buf, 2u);
  }

  v14 = objc_opt_new();
  v15 = [[HKSHSleepApneaControl alloc] initWithHealthStore:v14];
  v16 = v15;
  if (v15)
  {
    getDateIntervalOfLastAnalysis = [v15 getDateIntervalOfLastAnalysis];
    if (getDateIntervalOfLastAnalysis)
    {
      v18 = sub_100002E38();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = getDateIntervalOfLastAnalysis;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Date interval of last analysis: %{public}@", buf, 0xCu);
      }

      v80 = 0;
      v19 = [v16 getSamplesFromLastAnalysisWithError:&v80];
      v20 = v80;
      if (v20)
      {
        v21 = sub_100002E38();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Error getting samples from last analysis: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v22 = sub_100002E38();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v19 count];
          v24 = [getDateIntervalOfLastAnalysis description];
          *buf = 134349314;
          *&buf[4] = v23;
          *&buf[12] = 2114;
          *&buf[14] = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Attempting to write %{public}lu samples and analysis interval of %{public}@ to a file", buf, 0x16u);
        }

        v25 = [BABreathingDisturbanceAnalyzerFileHandler filePath:v12 withPrefixFilename:@"input-last-analysis"];
        [BABreathingDisturbanceAnalyzerFileHandler writeSamplesToJsonFile:v19 withDateInterval:getDateIntervalOfLastAnalysis withOutputFilePath:v25];

        v26 = sub_100002E38();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v19 count];
          v28 = [getDateIntervalOfLastAnalysis description];
          *buf = 134349314;
          *&buf[4] = v27;
          *&buf[12] = 2114;
          *&buf[14] = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Running analysis with %{public}lu samples and analysis interval of %{public}@", buf, 0x16u);
        }

        [BABreathingDisturbanceAnalyzer analyzeSamples:v19 dateInterval:getDateIntervalOfLastAnalysis];
        v29 = sub_100002E38();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Attempting to write analysis to a file", v83, 2u);
        }

        v30 = *buf;
        *v83 = v30;
        v31 = *&buf[8];
        v84 = v31;
        v85 = buf[16];
        v32 = [BABreathingDisturbanceAnalyzerFileHandler filePath:v12 withPrefixFilename:@"output-last-analysis"];
        if (BABreathingDisturbanceAnalyzerFileHandler)
        {
          [BABreathingDisturbanceAnalyzerFileHandler writeAnalysisToJsonFile:v83 withOutputFilePath:v32];
        }

        else
        {
        }
      }
    }

    else
    {
      v20 = sub_100002E38();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Date interval from last analysis is nil. Skip running force analysis", buf, 2u);
      }
    }
  }

  else
  {
    getDateIntervalOfLastAnalysis = sub_100002E38();
    if (os_log_type_enabled(getDateIntervalOfLastAnalysis, OS_LOG_TYPE_FAULT))
    {
      sub_10000C1DC(getDateIntervalOfLastAnalysis);
    }
  }

  v62 = v65;
  v63 = v12;
  v33 = sub_100002E38();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Attempting to collect Breathing Disturbance Samples", buf, 2u);
  }

  v34 = +[NSDate date];
  v61 = objc_alloc_init(NSDateComponents);
  [v61 setDay:-45];
  v35 = +[NSCalendar currentCalendar];
  v36 = [v35 dateByAddingComponents:v61 toDate:v34 options:0];
  v37 = [HKQuery predicateForSamplesWithStartDate:v36 endDate:v34 options:0];
  v38 = sub_100002E38();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    predicateFormat = [v37 predicateFormat];
    *buf = 138543362;
    *&buf[4] = predicateFormat;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "datePredicate.predicateFormat: %{public}@", buf, 0xCu);
  }

  v40 = [HKSampleType quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleSleepingBreathingDisturbances];
  v41 = [[NSSortDescriptor alloc] initWithKey:HKSampleSortIdentifierEndDate ascending:1];
  v42 = [HKSampleQuery alloc];
  *v83 = v41;
  v43 = [NSArray arrayWithObjects:v83 count:1];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100001D04;
  v87 = &unk_1000144B8;
  v44 = v36;
  v88 = v44;
  v45 = v34;
  v89 = v45;
  v72 = v63;
  v90 = v72;
  dsema = v62;
  v91 = dsema;
  v46 = [v42 initWithSampleType:v40 predicate:v37 limit:0 sortDescriptors:v43 resultsHandler:buf];

  v47 = objc_opt_new();
  [v46 setIncludeAutomaticTimeZones:1];
  [v47 executeQuery:v46];

  v48 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(dsema, v48);
  if (v66)
  {
    v67 = [NSRegularExpression regularExpressionWithPattern:@".*\\.json" options:0 error:0];
    v64 = [NSURL fileURLWithPath:v72 isDirectory:1];
    [BreathingDisturbanceAnalyzerDiagnosticExtension filesInDir:"filesInDir:matchingPattern:excludingPattern:" matchingPattern:? excludingPattern:?];
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v6 = v76 = 0u;
    v49 = [v6 countByEnumeratingWithState:&v75 objects:v82 count:16];
    if (v49)
    {
      v50 = *v76;
      do
      {
        for (i = 0; i != v49; i = i + 1)
        {
          if (*v76 != v50)
          {
            objc_enumerationMutation(v6);
          }

          v52 = *(*(&v75 + 1) + 8 * i);
          v53 = sub_100002E38();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            path = [v52 path];
            *buf = 138543362;
            *&buf[4] = path;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Returning: %{public}@", buf, 0xCu);
          }

          [v52 setDeleteOnAttach:&__kCFBooleanTrue];
        }

        v49 = [v6 countByEnumeratingWithState:&v75 objects:v82 count:16];
      }

      while (v49);
    }
  }

  else
  {
    v55 = +[NSFileManager defaultManager];
    v56 = [v55 fileExistsAtPath:v72];

    if (v56)
    {
      v67 = [DEAttachmentItem attachmentWithPath:v72];
      [v67 setShouldCompress:&__kCFBooleanTrue];
      [v67 setDeleteOnAttach:&__kCFBooleanTrue];
      v57 = sub_100002E38();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [v67 path];
        *buf = 138543362;
        *&buf[4] = path2;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Returning an attachment from loggingPath %{public}@", buf, 0xCu);
      }

      v81 = v67;
      v6 = [NSArray arrayWithObjects:&v81 count:1];
    }

    else
    {
      v59 = sub_100002E38();
      v67 = v59;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v72;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "loggingPath: %{public}@ does not exist. Returning an empty list", buf, 0xCu);
      }

      v6 = &__NSArray0__struct;
    }
  }

LABEL_65:

  return v6;
}

@end