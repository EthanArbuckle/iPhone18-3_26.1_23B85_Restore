@interface CSAudioInjectionXPC
- (CSAudioInjectionXPC)init;
- (void)connectDeviceWithUUID:(id)d completion:(id)completion;
- (void)createAudioInjectionDeviceWithType:(int64_t)type bundlePath:(id)path deviceName:(id)name deviceID:(id)d productID:(id)iD completion:(id)completion;
- (void)createAudioInjectionDeviceWithType:(int64_t)type deviceName:(id)name deviceID:(id)d productID:(id)iD completion:(id)completion;
- (void)disconnectDeviceWithUUID:(id)d completion:(id)completion;
- (void)injectAudio:(id)audio toDeviceWithUUID:(id)d withScaleFactor:(float)factor completion:(id)completion;
- (void)injectAudio:(id)audio toDeviceWithUUID:(id)d withScaleFactor:(float)factor withNumChannels:(int)channels withUserIntentOptions:(id)options completion:(id)completion;
- (void)injectAudio:(id)audio toDeviceWithUUID:(id)d withScaleFactor:(float)factor withNumChannels:(int)channels withUserIntentOptions:(id)options started:(id)started;
- (void)pingpong:(id)pingpong completion:(id)completion;
- (void)primaryInputDeviceUUIDWithCompletion:(id)completion;
- (void)selectBuiltInInjectionDeivceWithUUID:(id)d completion:(id)completion;
@end

@implementation CSAudioInjectionXPC

- (void)selectBuiltInInjectionDeivceWithUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[CSAudioInjectionXPC selectBuiltInInjectionDeivceWithUUID:completion:]";
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Request to select BuiltIn Injection Device with UUID: %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009BF64;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v13 = dCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = dCopy;
  dispatch_async(queue, block);
}

- (void)primaryInputDeviceUUIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[CSAudioInjectionXPC primaryInputDeviceUUIDWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Request fetching primary input device", &v9, 0xCu);
  }

  v5 = +[CSAudioInjectionProvider defaultInjectionProvider];
  primaryInputDevice = [v5 primaryInputDevice];

  if (!primaryInputDevice)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSAudioInjectionXPC primaryInputDeviceUUIDWithCompletion:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Error fetching primary device!", &v9, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_10;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_10;
    }

    deviceUID = [NSError errorWithDomain:CSErrorDomain code:1504 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, deviceUID, 0);
    goto LABEL_9;
  }

  if (completionCopy)
  {
    deviceUID = [primaryInputDevice deviceUID];
    (*(completionCopy + 2))(completionCopy, 1, 0, deviceUID);
LABEL_9:
  }

LABEL_10:
}

- (void)disconnectDeviceWithUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[CSAudioInjectionXPC disconnectDeviceWithUUID:completion:]";
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Request disconnect device with UUID %@", buf, 0x16u);
  }

  if (!dCopy)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CSAudioInjectionXPC disconnectDeviceWithUUID:completion:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s input device uuid is nil", buf, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_8;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_8;
    }

    v11 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);

    goto LABEL_8;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009C4C8;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v13 = dCopy;
  v14 = completionCopy;
  dispatch_async(queue, block);

LABEL_8:
}

- (void)connectDeviceWithUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[CSAudioInjectionXPC connectDeviceWithUUID:completion:]";
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Request connect device with UUID %@", buf, 0x16u);
  }

  if (!dCopy)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CSAudioInjectionXPC connectDeviceWithUUID:completion:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s input device uuid is nil", buf, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_8;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_8;
    }

    v11 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);

    goto LABEL_8;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009C854;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v13 = dCopy;
  v14 = completionCopy;
  dispatch_async(queue, block);

LABEL_8:
}

- (void)injectAudio:(id)audio toDeviceWithUUID:(id)d withScaleFactor:(float)factor withNumChannels:(int)channels withUserIntentOptions:(id)options completion:(id)completion
{
  audioCopy = audio;
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v33 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:withNumChannels:withUserIntentOptions:completion:]";
    v34 = 2112;
    v35 = audioCopy;
    v36 = 2112;
    v37 = dCopy;
    v38 = 2048;
    factorCopy = factor;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Request inject audio %@ into device with UUID %@ and scale factor %f", buf, 0x2Au);
  }

  if (!audioCopy || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v19 = objc_claimAutoreleasedReturnValue(), [audioCopy path], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "fileExistsAtPath:", v20), v20, v19, (v21 & 1) == 0))
  {
    v23 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:withNumChannels:withUserIntentOptions:completion:]";
      v34 = 2112;
      v35 = audioCopy;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Audio url %@ is nil, or url not existing in path", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_9;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_9;
    }

    v24 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v24, 0, 0);

    goto LABEL_9;
  }

  queue = self->_queue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10009CBD4;
  v25[3] = &unk_100252050;
  v25[4] = self;
  v26 = dCopy;
  v29 = completionCopy;
  v27 = audioCopy;
  factorCopy2 = factor;
  channelsCopy = channels;
  v28 = optionsCopy;
  dispatch_async(queue, v25);

LABEL_9:
}

- (void)injectAudio:(id)audio toDeviceWithUUID:(id)d withScaleFactor:(float)factor withNumChannels:(int)channels withUserIntentOptions:(id)options started:(id)started
{
  audioCopy = audio;
  dCopy = d;
  optionsCopy = options;
  startedCopy = started;
  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v33 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:withNumChannels:withUserIntentOptions:started:]";
    v34 = 2112;
    v35 = audioCopy;
    v36 = 2112;
    v37 = dCopy;
    v38 = 2048;
    factorCopy = factor;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Request inject audio %@ into device with UUID %@ and scale factor %f", buf, 0x2Au);
  }

  if (!audioCopy || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v19 = objc_claimAutoreleasedReturnValue(), [audioCopy path], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "fileExistsAtPath:", v20), v20, v19, (v21 & 1) == 0))
  {
    v23 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:withNumChannels:withUserIntentOptions:started:]";
      v34 = 2112;
      v35 = audioCopy;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Audio url %@ is nil, or url not existing in path", buf, 0x16u);
      if (!startedCopy)
      {
        goto LABEL_9;
      }
    }

    else if (!startedCopy)
    {
      goto LABEL_9;
    }

    v24 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (*(startedCopy + 2))(startedCopy, 0, v24, 0);

    goto LABEL_9;
  }

  queue = self->_queue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10009D260;
  v25[3] = &unk_100252050;
  v25[4] = self;
  v26 = dCopy;
  v29 = startedCopy;
  v27 = audioCopy;
  factorCopy2 = factor;
  channelsCopy = channels;
  v28 = optionsCopy;
  dispatch_async(queue, v25);

LABEL_9:
}

- (void)injectAudio:(id)audio toDeviceWithUUID:(id)d withScaleFactor:(float)factor completion:(id)completion
{
  audioCopy = audio;
  dCopy = d;
  completionCopy = completion;
  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v26 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:completion:]";
    v27 = 2112;
    v28 = audioCopy;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2048;
    factorCopy = factor;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Request inject audio %@ into device with UUID %@ and scale factor %f", buf, 0x2Au);
  }

  if (!audioCopy || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v14 = objc_claimAutoreleasedReturnValue(), [audioCopy path], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "fileExistsAtPath:", v15), v15, v14, (v16 & 1) == 0))
  {
    v18 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:completion:]";
      v27 = 2112;
      v28 = audioCopy;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Audio url %@ is nil, or url not existing in path", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_9;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_9;
    }

    v19 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v19, 0, 0);

    goto LABEL_9;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D8C8;
  block[3] = &unk_100250328;
  block[4] = self;
  v21 = dCopy;
  v23 = completionCopy;
  v22 = audioCopy;
  factorCopy2 = factor;
  dispatch_async(queue, block);

LABEL_9:
}

- (void)createAudioInjectionDeviceWithType:(int64_t)type bundlePath:(id)path deviceName:(id)name deviceID:(id)d productID:(id)iD completion:(id)completion
{
  pathCopy = path;
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v19 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v27 = "[CSAudioInjectionXPC createAudioInjectionDeviceWithType:bundlePath:deviceName:deviceID:productID:completion:]";
    v28 = 2112;
    v29 = pathCopy;
    v30 = 2112;
    v31 = nameCopy;
    v32 = 2112;
    v33 = dCopy;
    v34 = 2112;
    v35 = iDCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Request to init device with bundlePath : %@, deviceName : %@, deviceId : %@, productId : %@", buf, 0x34u);
  }

  v20 = [[CSAudioInjectionDevice alloc] initWithDeviceType:type bundlePath:pathCopy deviceName:nameCopy deviceID:dCopy productID:iDCopy];
  v21 = v20;
  if (v20)
  {
    queue = self->_queue;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10009DE40;
    v24[3] = &unk_100253C48;
    v24[4] = self;
    v25 = v20;
    dispatch_async(queue, v24);
  }

  if (completionCopy)
  {
    deviceUID = [(CSAudioInjectionDevice *)v21 deviceUID];
    completionCopy[2](completionCopy, 1, 0, deviceUID);
  }
}

- (void)createAudioInjectionDeviceWithType:(int64_t)type deviceName:(id)name deviceID:(id)d productID:(id)iD completion:(id)completion
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v16 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v24 = "[CSAudioInjectionXPC createAudioInjectionDeviceWithType:deviceName:deviceID:productID:completion:]";
    v25 = 2048;
    typeCopy = type;
    v27 = 2112;
    v28 = nameCopy;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2112;
    v32 = iDCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Request to init device with deviceType : %ld, deviceName : %@, deviceId : %@, productId : %@", buf, 0x34u);
  }

  v17 = [[CSAudioInjectionDevice alloc] initWithDeviceType:type deviceName:nameCopy deviceID:dCopy productID:iDCopy];
  v18 = v17;
  if (v17)
  {
    queue = self->_queue;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10009E094;
    v21[3] = &unk_100253C48;
    v21[4] = self;
    v22 = v17;
    dispatch_async(queue, v21);
  }

  if (completionCopy)
  {
    deviceUID = [(CSAudioInjectionDevice *)v18 deviceUID];
    completionCopy[2](completionCopy, 1, 0, deviceUID);
  }
}

- (void)pingpong:(id)pingpong completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v7 = [pingpong copy];
    (*(completion + 2))(completionCopy, v7);
  }
}

- (CSAudioInjectionXPC)init
{
  v13.receiver = self;
  v13.super_class = CSAudioInjectionXPC;
  v2 = [(CSAudioInjectionXPC *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAudioInjectionXPC Queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSMapTable strongToStrongObjectsMapTable];
    deviceMapTable = v2->_deviceMapTable;
    v2->_deviceMapTable = v5;

    v7 = +[CSAudioInjectionProvider defaultInjectionProvider];
    primaryInputDevice = [v7 primaryInputDevice];

    if (primaryInputDevice)
    {
      if (CSHasAOP())
      {
        [primaryInputDevice setEnableAlwaysOnVoiceTrigger:1];
        v9 = +[CSAudioInjectionProvider defaultInjectionProvider];
        [v9 start];
      }

      v10 = v2->_deviceMapTable;
      deviceUID = [primaryInputDevice deviceUID];
      [(NSMapTable *)v10 setObject:primaryInputDevice forKey:deviceUID];
    }
  }

  return v2;
}

@end