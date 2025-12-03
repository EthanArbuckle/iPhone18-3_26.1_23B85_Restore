@interface NPTWiFiDiagnosticsExtension
- (id)attachmentsForParameters:(id)parameters;
- (void)saveResults;
@end

@implementation NPTWiFiDiagnosticsExtension

- (id)attachmentsForParameters:(id)parameters
{
  v4 = objc_alloc_init(NSMutableDictionary);
  [(NPTWiFiDiagnosticsExtension *)self setResults:v4];

  v5 = +[NPTPerformanceTestConfiguration defaultConfigurationWiFi];
  [v5 setTestDuration:5];
  [v5 setUseSecureConnection:1];
  [v5 setClientName:@"NPTKit_WiFi_Diagnostics_Extension"];
  [v5 setConcurrentStreams:4];
  v6 = dispatch_semaphore_create(0);
  v7 = [NPTPerformanceTest performanceTestWithConfiguration:v5];
  [(NPTWiFiDiagnosticsExtension *)self setPass:v7];

  pass = [(NPTWiFiDiagnosticsExtension *)self pass];
  metadata = [pass metadata];
  results = [(NPTWiFiDiagnosticsExtension *)self results];
  [results setObject:metadata forKeyedSubscript:@"metadata"];

  pass2 = [(NPTWiFiDiagnosticsExtension *)self pass];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100000DF0;
  v23 = &unk_100004120;
  selfCopy = self;
  v25 = v6;
  v12 = v6;
  [pass2 startDownloadWithCompletion:&v20];

  v13 = dispatch_time(0, 25000000000);
  dispatch_semaphore_wait(v12, v13);
  v14 = [(NPTWiFiDiagnosticsExtension *)self finalPath:v20];
  v15 = [NSURL URLWithString:v14];
  path = [v15 path];
  v17 = [DEAttachmentItem attachmentWithPath:path];
  v26 = v17;
  v18 = [NSArray arrayWithObjects:&v26 count:1];

  return v18;
}

- (void)saveResults
{
  v3 = +[NSFileManager defaultManager];
  temporaryDirectory = [v3 temporaryDirectory];

  path = [temporaryDirectory path];
  v5 = [path stringByAppendingPathComponent:@"performanceTestWiFi.json"];
  [(NPTWiFiDiagnosticsExtension *)self setFinalPath:v5];

  v6 = +[NSFileManager defaultManager];
  finalPath = [(NPTWiFiDiagnosticsExtension *)self finalPath];
  [v6 removeItemAtPath:finalPath error:0];

  results = [(NPTWiFiDiagnosticsExtension *)self results];
  v9 = [NSJSONSerialization dataWithJSONObject:results options:3 error:0];

  v10 = +[NSFileManager defaultManager];
  finalPath2 = [(NPTWiFiDiagnosticsExtension *)self finalPath];
  v12 = [NSURL URLWithString:finalPath2];
  path2 = [v12 path];
  [v10 createFileAtPath:path2 contents:v9 attributes:0];
}

@end