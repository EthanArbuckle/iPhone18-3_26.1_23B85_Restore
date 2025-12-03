@interface LighthouseBitacoraPlugin
- (LighthouseBitacoraPlugin)init;
- (id)getPathForKey:(id)key IsDirectory:(BOOL)directory FromTrialClient:(id)client WithError:(id *)error;
- (id)performTrialTask:(id)task outError:(id *)error;
- (void)stop;
@end

@implementation LighthouseBitacoraPlugin

- (LighthouseBitacoraPlugin)init
{
  v6.receiver = self;
  v6.super_class = LighthouseBitacoraPlugin;
  v2 = [(LighthouseBitacoraPlugin *)&v6 init];
  if (v2)
  {
    LBPluginLoggingUtilsInit();
    v3 = trialIds;
    trialIds = 0;

    v4 = v2;
  }

  return v2;
}

- (id)getPathForKey:(id)key IsDirectory:(BOOL)directory FromTrialClient:(id)client WithError:(id *)error
{
  directoryCopy = directory;
  keyCopy = key;
  v10 = [client levelForFactor:keyCopy withNamespaceName:trialNamespace];
  v11 = v10;
  if (directoryCopy)
  {
    directoryValue = [v10 directoryValue];
    hasPath = [directoryValue hasPath];

    if (hasPath)
    {
      directoryValue2 = [v11 directoryValue];
LABEL_6:
      v17 = directoryValue2;
      path = [directoryValue2 path];

      v19 = [NSURL fileURLWithPath:path];

      goto LABEL_12;
    }

    if (os_log_type_enabled(LBFLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      [LighthouseBitacoraPlugin getPathForKey:IsDirectory:FromTrialClient:WithError:];
    }
  }

  else
  {
    fileValue = [v10 fileValue];
    hasPath2 = [fileValue hasPath];

    if (hasPath2)
    {
      directoryValue2 = [v11 fileValue];
      goto LABEL_6;
    }

    if (os_log_type_enabled(LBFLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      [LighthouseBitacoraPlugin getPathForKey:IsDirectory:FromTrialClient:WithError:];
    }
  }

  [NSError errorWithDomain:@"LighthouseBitacoraPluginDomain" code:-1 userInfo:0];
  *error = v19 = 0;
LABEL_12:

  return v19;
}

- (id)performTrialTask:(id)task outError:(id *)error
{
  taskCopy = task;
  v7 = LBFLogContextPlugin;
  if (os_log_type_enabled(LBFLogContextPlugin, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "LighthouseBitacoraPlugin: Start task", buf, 2u);
  }

  triClient = [taskCopy triClient];
  [triClient refresh];
  v9 = [triClient experimentIdentifiersWithNamespaceName:trialNamespace];
  v10 = trialIds;
  trialIds = v9;

  v11 = LBFLogContextPlugin;
  if (trialIds)
  {
    if (os_log_type_enabled(LBFLogContextPlugin, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Trial Deployment Information", buf, 2u);
    }

    v12 = LBFLogContextPlugin;
    if (os_log_type_enabled(LBFLogContextPlugin, OS_LOG_TYPE_INFO))
    {
      v13 = trialIds;
      v14 = v12;
      experimentId = [v13 experimentId];
      *buf = 138412290;
      v47 = experimentId;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Experiment ID :%@", buf, 0xCu);
    }

    v16 = LBFLogContextPlugin;
    if (os_log_type_enabled(LBFLogContextPlugin, OS_LOG_TYPE_INFO))
    {
      v17 = trialIds;
      v18 = v16;
      treatmentId = [v17 treatmentId];
      *buf = 138412290;
      v47 = treatmentId;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Treatment ID :%@", buf, 0xCu);
    }

    v20 = LBFLogContextPlugin;
    if (os_log_type_enabled(LBFLogContextPlugin, OS_LOG_TYPE_INFO))
    {
      v21 = trialIds;
      v22 = v20;
      v23 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v21 deploymentId]);
      *buf = 138412290;
      v47 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Deployment ID :%@", buf, 0xCu);
    }

    v45 = 0;
    v24 = [(LighthouseBitacoraPlugin *)self getPathForKey:trialRecipeKey IsDirectory:0 FromTrialClient:triClient WithError:&v45];
    v25 = v45;
    if (v25)
    {
      v26 = v25;
      *error = v25;
      [LBPluginBitacoraHandler emitPerformTrialTaskEvent:trialIds succeeded:0 error:v26];
    }

    else
    {
      v28 = LBFLogContextPlugin;
      if (os_log_type_enabled(LBFLogContextPlugin, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = v24;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "The URL of the recipe is: %@", buf, 0xCu);
      }

      path = [v24 path];
      v30 = [NSData dataWithContentsOfFile:path];

      v31 = LBFLogContextPlugin;
      if (os_log_type_enabled(LBFLogContextPlugin, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Data: %@", buf, 0xCu);
      }

      v44 = 0;
      v32 = [NSJSONSerialization JSONObjectWithData:v30 options:0 error:&v44];
      v26 = v44;
      v33 = LBFLogContextPlugin;
      if (v26)
      {
        if (os_log_type_enabled(LBFLogContextPlugin, OS_LOG_TYPE_ERROR))
        {
          [LighthouseBitacoraPlugin performTrialTask:outError:];
        }

        v34 = [NSError errorWithDomain:@"LighthouseBitacoraPluginDomain" code:-2 userInfo:0];
        *error = v34;
        [LBPluginBitacoraHandler emitPerformTrialTaskEvent:trialIds succeeded:0 error:v34];
      }

      else
      {
        if (os_log_type_enabled(LBFLogContextPlugin, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v47 = v32;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "This is the recipe as JSON: %@", buf, 0xCu);
        }

        [LBPluginBitacoraHandler emitPerformTrialTaskEvent:trialIds succeeded:1 error:0];
        v35 = objc_alloc_init(LBFAggregator);
        v36 = [v32 objectForKeyedSubscript:@"Upload"];

        if (v36)
        {
          v37 = [v32 objectForKeyedSubscript:@"UploadToCoreAnalytics"];
          v38 = v37 != 0;

          v39 = [v32 objectForKeyedSubscript:@"UploadRawEvents"];
          v40 = v39 != 0;

          v41 = [v32 objectForKeyedSubscript:@"SkipNullIdentifiers"];
          v42 = v41 != 0;

          [v35 upload:v38 uploadRawEvents:v40 skipNullIdentifiers:v42];
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(LBFLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      [LighthouseBitacoraPlugin performTrialTask:outError:];
    }

    v27 = [NSError errorWithDomain:@"LighthouseBitacoraPluginDomain" code:-3 userInfo:0];
    *error = v27;
    [LBPluginBitacoraHandler emitPerformTrialTaskEvent:trialIds succeeded:0 error:v27];
  }

  return 0;
}

- (void)stop
{
  v2 = LBFLogContextPlugin;
  if (os_log_type_enabled(LBFLogContextPlugin, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Asked to stop", v3, 2u);
  }

  [LBPluginBitacoraHandler emitStopEvent:trialIds succeeded:1 error:0];
}

@end