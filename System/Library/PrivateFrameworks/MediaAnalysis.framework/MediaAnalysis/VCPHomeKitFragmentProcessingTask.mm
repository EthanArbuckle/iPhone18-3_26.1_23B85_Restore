@interface VCPHomeKitFragmentProcessingTask
+ (id)taskForAssetData:(id)a3 withAnalyzer:(id)a4 withOptions:(id)a5 andCompletionHandler:(id)a6;
- (VCPHomeKitFragmentProcessingTask)initWithAssetData:(id)a3 analyzer:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (int)run;
- (void)dealloc;
@end

@implementation VCPHomeKitFragmentProcessingTask

- (VCPHomeKitFragmentProcessingTask)initWithAssetData:(id)a3 analyzer:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = VCPHomeKitFragmentProcessingTask;
  v15 = [(VCPHomeKitFragmentProcessingTask *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_assetData, a3);
    atomic_store(0, &v16->_started);
    atomic_store(0, &v16->_cancel);
    objc_storeStrong(&v16->_analyzer, a4);
    objc_storeStrong(&v16->_options, a5);
    v17 = objc_retainBlock(v14);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    v19 = v16;
  }

  return v16;
}

+ (id)taskForAssetData:(id)a3 withAnalyzer:(id)a4 withOptions:(id)a5 andCompletionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9)
  {
    v13 = [objc_alloc(objc_opt_class()) initWithAssetData:v9 analyzer:v10 options:v11 completionHandler:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    completionHandler = self->_completionHandler;
    v9 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Home video fragment processing task cancelled"];
    v10 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v6];
    completionHandler[2](completionHandler, 0, v7);
  }

  v8.receiver = self;
  v8.super_class = VCPHomeKitFragmentProcessingTask;
  [(VCPHomeKitFragmentProcessingTask *)&v8 dealloc];
}

- (int)run
{
  atomic_store(1u, &self->_started);
  v3 = atomic_load(&self->_cancel);
  if (v3)
  {
    completionHandler = self->_completionHandler;
    v38 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Home video fragment processing task cancelled"];
    v39 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v6];
    completionHandler[2](completionHandler, 0, v7);

    return -128;
  }

  else
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_100028984;
    v34 = sub_100028994;
    v35 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = sub_100028984;
    v28[4] = sub_100028994;
    v29 = 0;
    v9 = dispatch_semaphore_create(0);
    v10 = +[VCPWatchdog sharedWatchdog];
    [v10 pet];

    assetData = self->_assetData;
    analyzer = self->_analyzer;
    options = self->_options;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002899C;
    v24[3] = &unk_100283578;
    v26 = v28;
    v27 = &v30;
    v14 = v9;
    v25 = v14;
    [(HMIVideoAnalyzer *)analyzer handleAssetData:assetData withOptions:options completionHandler:v24];
    v15 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v14, v15))
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v16 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "HMIVideoAnalyzer handle asset data timed-out", v23, 2u);
        }
      }

      v17 = self->_completionHandler;
      v36 = NSLocalizedDescriptionKey;
      v18 = [NSString stringWithFormat:@"HMIVideoAnalyzer handle asset data timed-out"];
      v37 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v20 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-23804 userInfo:v19];
      v17[2](v17, 0, v20);

      v8 = -23804;
    }

    else
    {
      v21 = v31[5];
      if (v21)
      {
        v8 = [v21 code];
      }

      else
      {
        v8 = 0;
      }

      (*(self->_completionHandler + 2))();
    }

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(&v30, 8);
  }

  return v8;
}

@end