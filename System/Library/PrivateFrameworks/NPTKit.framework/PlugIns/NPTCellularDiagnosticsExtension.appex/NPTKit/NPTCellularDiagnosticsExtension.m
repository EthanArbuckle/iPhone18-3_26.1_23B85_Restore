@interface NPTCellularDiagnosticsExtension
- (id)attachmentsForParameters:(id)a3;
- (void)saveResults;
@end

@implementation NPTCellularDiagnosticsExtension

- (id)attachmentsForParameters:(id)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  [(NPTCellularDiagnosticsExtension *)self setResults:v4];

  v5 = +[NPTPerformanceTestConfiguration defaultConfigurationCellular];
  [v5 setTestDuration:5];
  [v5 setUseSecureConnection:1];
  [v5 setClientName:@"NPTKit_Cellular_Diagnostics_Extension"];
  [v5 setConcurrentStreams:4];
  v6 = dispatch_semaphore_create(0);
  v7 = [NPTPerformanceTest performanceTestWithConfiguration:v5];
  [(NPTCellularDiagnosticsExtension *)self setPass:v7];

  v8 = [(NPTCellularDiagnosticsExtension *)self pass];
  v9 = [v8 metadata];
  v10 = [(NPTCellularDiagnosticsExtension *)self results];
  [v10 setObject:v9 forKeyedSubscript:@"metadata"];

  v11 = [(NPTCellularDiagnosticsExtension *)self pass];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100000DF0;
  v23 = &unk_100004120;
  v24 = self;
  v25 = v6;
  v12 = v6;
  [v11 startDownloadWithCompletion:&v20];

  v13 = dispatch_time(0, 25000000000);
  dispatch_semaphore_wait(v12, v13);
  v14 = [(NPTCellularDiagnosticsExtension *)self finalPath:v20];
  v15 = [NSURL URLWithString:v14];
  v16 = [v15 path];
  v17 = [DEAttachmentItem attachmentWithPath:v16];
  v26 = v17;
  v18 = [NSArray arrayWithObjects:&v26 count:1];

  return v18;
}

- (void)saveResults
{
  v3 = +[NSFileManager defaultManager];
  v14 = [v3 temporaryDirectory];

  v4 = [v14 path];
  v5 = [v4 stringByAppendingPathComponent:@"performanceTestCellular.json"];
  [(NPTCellularDiagnosticsExtension *)self setFinalPath:v5];

  v6 = +[NSFileManager defaultManager];
  v7 = [(NPTCellularDiagnosticsExtension *)self finalPath];
  [v6 removeItemAtPath:v7 error:0];

  v8 = [(NPTCellularDiagnosticsExtension *)self results];
  v9 = [NSJSONSerialization dataWithJSONObject:v8 options:3 error:0];

  v10 = +[NSFileManager defaultManager];
  v11 = [(NPTCellularDiagnosticsExtension *)self finalPath];
  v12 = [NSURL URLWithString:v11];
  v13 = [v12 path];
  [v10 createFileAtPath:v13 contents:v9 attributes:0];
}

@end