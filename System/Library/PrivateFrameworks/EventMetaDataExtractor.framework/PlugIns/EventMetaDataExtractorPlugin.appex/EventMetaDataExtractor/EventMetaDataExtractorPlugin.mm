@interface EventMetaDataExtractorPlugin
+ (void)sendAnalyticsForTask:(id)task extractorOutput:(id)output startTime:(id)time;
- (id)performTask:(id)task error:(id *)error;
@end

@implementation EventMetaDataExtractorPlugin

+ (void)sendAnalyticsForTask:(id)task extractorOutput:(id)output startTime:(id)time
{
  taskCopy = task;
  outputCopy = output;
  timeCopy = time;
  v26[0] = @"taskName";
  v26[1] = @"extractionStatus";
  v27[0] = taskCopy;
  v27[1] = &__kCFBooleanFalse;
  v26[2] = @"extractionFailureCode";
  v10 = [outputCopy objectForKeyedSubscript:@"errorCode"];
  v27[2] = v10;
  v26[3] = @"executionTime";
  [timeCopy timeIntervalSinceNow];
  v12 = [NSNumber numberWithInt:(v11 * -10.0)];
  v26[4] = @"eventCategory";
  v27[3] = v12;
  v27[4] = @"Unknown";
  v13 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:5];
  v14 = [v13 mutableCopy];

  v15 = [taskCopy isEqual:@"EventSuggestionsFromMessage"] ^ 1;
  if (!outputCopy)
  {
    LOBYTE(v15) = 1;
  }

  if ((v15 & 1) == 0)
  {
    v16 = [outputCopy objectForKeyedSubscript:@"events"];
    if (v16)
    {
      v17 = [outputCopy objectForKeyedSubscript:@"events"];
      v18 = [v17 count] == 0;

      if (!v18)
      {
        [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"extractionStatus"];
        v19 = [outputCopy objectForKeyedSubscript:@"events"];
        v20 = [v19 objectAtIndexedSubscript:0];
        v21 = [v20 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__CATEGORY"];
        [v14 setObject:v21 forKeyedSubscript:@"eventCategory"];
      }
    }
  }

  v22 = [taskCopy isEqual:@"TitleSuggestionFromMessage"] ^ 1;
  if (!outputCopy)
  {
    LOBYTE(v22) = 1;
  }

  if ((v22 & 1) == 0)
  {
    v23 = [outputCopy objectForKeyedSubscript:@"title"];
    v24 = v23 == 0;

    if (!v24)
    {
      [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"extractionStatus"];
      [v14 setObject:@"N/A" forKeyedSubscript:@"eventCategory"];
    }
  }

  v25 = extractionLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    sub_10008BECC(v14, v25);
  }

  AnalyticsSendEvent();
}

- (id)performTask:(id)task error:(id *)error
{
  taskCopy = task;
  v27 = +[NSDate date];
  parameters = [taskCopy parameters];
  v7 = [parameters stringValueForKey:@"TaskName" defaultValue:0];

  parameters2 = [taskCopy parameters];
  v28 = [parameters2 stringValueForKey:@"AssetFolderPath" defaultValue:0];

  parameters3 = [taskCopy parameters];
  v10 = [parameters3 stringValueForKey:@"ConfigFile" defaultValue:@"config.plist"];

  parameters4 = [taskCopy parameters];
  v26 = [parameters4 stringValueForKey:@"InputMessage" defaultValue:0];

  v12 = extractionLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = @"1.0.1";
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "EventMetaDataExtractorPlugin - Version:%@ Performing Task: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v44 = sub_100013744;
  v45 = sub_100013754;
  v46 = 0;
  v41[0] = @"EventSuggestionsFromMessage";
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10001375C;
  v34[3] = &unk_1000ACB00;
  v37 = buf;
  v13 = [[EMDEEventExtractor alloc] initWithConfigFile:v10 assetFolderPath:v28 error:error];
  v35 = v13;
  v14 = v26;
  v36 = v14;
  errorCopy = error;
  v15 = objc_retainBlock(v34);
  v41[1] = @"TitleSuggestionFromMessage";
  v42[0] = v15;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000137B0;
  v29[3] = &unk_1000ACB00;
  v32 = buf;
  v16 = v13;
  v30 = v16;
  v17 = v14;
  v31 = v17;
  errorCopy2 = error;
  v18 = objc_retainBlock(v29);
  v42[1] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];

  v20 = [v19 objectForKeyedSubscript:v7];
  v21 = v20[2]();

  v22 = [MLRTaskResult alloc];
  v23 = [v22 initWithJSONResult:*(*&buf[8] + 40) unprivatizedVector:0];
  v24 = extractionLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *v39 = 138412290;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "EventMetaDataExtractorPlugin - Returning result for task: %@", v39, 0xCu);
  }

  [objc_opt_class() sendAnalyticsForTask:v7 extractorOutput:*(*&buf[8] + 40) startTime:v27];
  _Block_object_dispose(buf, 8);

  return v23;
}

@end