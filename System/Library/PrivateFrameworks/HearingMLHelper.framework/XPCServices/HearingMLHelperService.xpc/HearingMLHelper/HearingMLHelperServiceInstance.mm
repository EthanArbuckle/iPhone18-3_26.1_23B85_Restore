@interface HearingMLHelperServiceInstance
- (void)run;
- (void)trainWithDetectorID:(id)d hallucinatorPath:(id)path pretrainedWeightsPath:(id)weightsPath resultHandler:(id)handler;
@end

@implementation HearingMLHelperServiceInstance

- (void)run
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** HearingMLHelper service starting up ***", buf, 2u);
  }

  v4 = objc_alloc_init(HearingMLHelperServiceXPCServer);
  [(HearingMLHelperServiceInstance *)self setXpcServer:v4];

  xpcServer = [(HearingMLHelperServiceInstance *)self xpcServer];
  [xpcServer setDelegate:self];

  xpcServer2 = [(HearingMLHelperServiceInstance *)self xpcServer];
  [xpcServer2 run];

  v7 = AXLogUltronKShot();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "*** HearingMLHelper service about to exit ***", v8, 2u);
  }
}

- (void)trainWithDetectorID:(id)d hallucinatorPath:(id)path pretrainedWeightsPath:(id)weightsPath resultHandler:(id)handler
{
  dCopy = d;
  pathCopy = path;
  weightsPathCopy = weightsPath;
  handlerCopy = handler;
  v14 = AXLogUltronKShot();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = dCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Training Detector with ID: %@ started", buf, 0xCu);
  }

  if (!pathCopy)
  {
    v28 = AXLogUltronKShot();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_100002134(v28);
    }

    [NSError ax_errorWithDomain:@"com.apple.accessibility.ultron" description:@"Invalid hallucinatorPath: %@", 0];
    goto LABEL_21;
  }

  v15 = AXLogUltronKShot();
  v16 = v15;
  if (!weightsPathCopy)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000020F0(v16);
    }

    [NSError ax_errorWithDomain:@"com.apple.accessibility.ultron" description:@"Invalid pretrainedWeightsPath: %@", 0];
    v29 = LABEL_21:;
    handlerCopy[2](handlerCopy, 0, v29);

    goto LABEL_22;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    path = [pathCopy path];
    *buf = 138412290;
    v34 = path;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Using hPath: %@", buf, 0xCu);
  }

  v18 = AXLogUltronKShot();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    path2 = [weightsPathCopy path];
    *buf = 138412290;
    v34 = path2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Using pretrained weights at path: %@", buf, 0xCu);
  }

  v20 = objc_autoreleasePoolPush();
  v21 = objc_alloc_init(AXSDKShotModelCreationManager);
  modelCreationManager = self->_modelCreationManager;
  self->_modelCreationManager = v21;

  v23 = AXLogUltronKShot();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = dCopy;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Invoking train method for detector ID: %@", buf, 0xCu);
  }

  v24 = self->_modelCreationManager;
  v32 = 0;
  v25 = [(AXSDKShotModelCreationManager *)v24 trainWithDetectorID:dCopy hallucinatorPath:pathCopy pretrainedWeightsPath:weightsPathCopy error:&v32];
  v26 = v32;
  if (v26)
  {
    v27 = AXLogUltronKShot();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100001FF0(dCopy, v26, v27);
    }
  }

  else
  {
    v30 = AXLogUltronKShot();
    v27 = v30;
    if (v25)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        path3 = [v25 path];
        *buf = 138412546;
        v34 = dCopy;
        v35 = 2112;
        v36 = path3;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Training completed successfully for detector ID: %@, model saved at: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100002078(dCopy, v27);
    }
  }

  (handlerCopy)[2](handlerCopy, v25, v26);
  objc_autoreleasePoolPop(v20);
LABEL_22:
}

@end