@interface CSAudioInjectionXPC
- (CSAudioInjectionXPC)init;
- (void)connectDeviceWithUUID:(id)a3 completion:(id)a4;
- (void)createAudioInjectionDeviceWithType:(int64_t)a3 bundlePath:(id)a4 deviceName:(id)a5 deviceID:(id)a6 productID:(id)a7 completion:(id)a8;
- (void)createAudioInjectionDeviceWithType:(int64_t)a3 deviceName:(id)a4 deviceID:(id)a5 productID:(id)a6 completion:(id)a7;
- (void)disconnectDeviceWithUUID:(id)a3 completion:(id)a4;
- (void)injectAudio:(id)a3 toDeviceWithUUID:(id)a4 withScaleFactor:(float)a5 completion:(id)a6;
- (void)injectAudio:(id)a3 toDeviceWithUUID:(id)a4 withScaleFactor:(float)a5 withNumChannels:(int)a6 withUserIntentOptions:(id)a7 completion:(id)a8;
- (void)injectAudio:(id)a3 toDeviceWithUUID:(id)a4 withScaleFactor:(float)a5 withNumChannels:(int)a6 withUserIntentOptions:(id)a7 started:(id)a8;
- (void)pingpong:(id)a3 completion:(id)a4;
- (void)primaryInputDeviceUUIDWithCompletion:(id)a3;
- (void)selectBuiltInInjectionDeivceWithUUID:(id)a3 completion:(id)a4;
@end

@implementation CSAudioInjectionXPC

- (void)selectBuiltInInjectionDeivceWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[CSAudioInjectionXPC selectBuiltInInjectionDeivceWithUUID:completion:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Request to select BuiltIn Injection Device with UUID: %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009BF64;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

- (void)primaryInputDeviceUUIDWithCompletion:(id)a3
{
  v3 = a3;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[CSAudioInjectionXPC primaryInputDeviceUUIDWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Request fetching primary input device", &v9, 0xCu);
  }

  v5 = +[CSAudioInjectionProvider defaultInjectionProvider];
  v6 = [v5 primaryInputDevice];

  if (!v6)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSAudioInjectionXPC primaryInputDeviceUUIDWithCompletion:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Error fetching primary device!", &v9, 0xCu);
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else if (!v3)
    {
      goto LABEL_10;
    }

    v7 = [NSError errorWithDomain:CSErrorDomain code:1504 userInfo:0];
    (*(v3 + 2))(v3, 0, v7, 0);
    goto LABEL_9;
  }

  if (v3)
  {
    v7 = [v6 deviceUID];
    (*(v3 + 2))(v3, 1, 0, v7);
LABEL_9:
  }

LABEL_10:
}

- (void)disconnectDeviceWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[CSAudioInjectionXPC disconnectDeviceWithUUID:completion:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Request disconnect device with UUID %@", buf, 0x16u);
  }

  if (!v6)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CSAudioInjectionXPC disconnectDeviceWithUUID:completion:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s input device uuid is nil", buf, 0xCu);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else if (!v7)
    {
      goto LABEL_8;
    }

    v11 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    v7[2](v7, 0, v11);

    goto LABEL_8;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009C4C8;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  dispatch_async(queue, block);

LABEL_8:
}

- (void)connectDeviceWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[CSAudioInjectionXPC connectDeviceWithUUID:completion:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Request connect device with UUID %@", buf, 0x16u);
  }

  if (!v6)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CSAudioInjectionXPC connectDeviceWithUUID:completion:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s input device uuid is nil", buf, 0xCu);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else if (!v7)
    {
      goto LABEL_8;
    }

    v11 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    v7[2](v7, 0, v11);

    goto LABEL_8;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009C854;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  dispatch_async(queue, block);

LABEL_8:
}

- (void)injectAudio:(id)a3 toDeviceWithUUID:(id)a4 withScaleFactor:(float)a5 withNumChannels:(int)a6 withUserIntentOptions:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v33 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:withNumChannels:withUserIntentOptions:completion:]";
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v15;
    v38 = 2048;
    v39 = a5;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Request inject audio %@ into device with UUID %@ and scale factor %f", buf, 0x2Au);
  }

  if (!v14 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v19 = objc_claimAutoreleasedReturnValue(), [v14 path], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "fileExistsAtPath:", v20), v20, v19, (v21 & 1) == 0))
  {
    v23 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:withNumChannels:withUserIntentOptions:completion:]";
      v34 = 2112;
      v35 = v14;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Audio url %@ is nil, or url not existing in path", buf, 0x16u);
      if (!v17)
      {
        goto LABEL_9;
      }
    }

    else if (!v17)
    {
      goto LABEL_9;
    }

    v24 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (*(v17 + 2))(v17, 0, v24, 0, 0);

    goto LABEL_9;
  }

  queue = self->_queue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10009CBD4;
  v25[3] = &unk_100252050;
  v25[4] = self;
  v26 = v15;
  v29 = v17;
  v27 = v14;
  v30 = a5;
  v31 = a6;
  v28 = v16;
  dispatch_async(queue, v25);

LABEL_9:
}

- (void)injectAudio:(id)a3 toDeviceWithUUID:(id)a4 withScaleFactor:(float)a5 withNumChannels:(int)a6 withUserIntentOptions:(id)a7 started:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v33 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:withNumChannels:withUserIntentOptions:started:]";
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v15;
    v38 = 2048;
    v39 = a5;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Request inject audio %@ into device with UUID %@ and scale factor %f", buf, 0x2Au);
  }

  if (!v14 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v19 = objc_claimAutoreleasedReturnValue(), [v14 path], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "fileExistsAtPath:", v20), v20, v19, (v21 & 1) == 0))
  {
    v23 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:withNumChannels:withUserIntentOptions:started:]";
      v34 = 2112;
      v35 = v14;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Audio url %@ is nil, or url not existing in path", buf, 0x16u);
      if (!v17)
      {
        goto LABEL_9;
      }
    }

    else if (!v17)
    {
      goto LABEL_9;
    }

    v24 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (*(v17 + 2))(v17, 0, v24, 0);

    goto LABEL_9;
  }

  queue = self->_queue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10009D260;
  v25[3] = &unk_100252050;
  v25[4] = self;
  v26 = v15;
  v29 = v17;
  v27 = v14;
  v30 = a5;
  v31 = a6;
  v28 = v16;
  dispatch_async(queue, v25);

LABEL_9:
}

- (void)injectAudio:(id)a3 toDeviceWithUUID:(id)a4 withScaleFactor:(float)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v26 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:completion:]";
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    v31 = 2048;
    v32 = a5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Request inject audio %@ into device with UUID %@ and scale factor %f", buf, 0x2Au);
  }

  if (!v10 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v14 = objc_claimAutoreleasedReturnValue(), [v10 path], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "fileExistsAtPath:", v15), v15, v14, (v16 & 1) == 0))
  {
    v18 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:completion:]";
      v27 = 2112;
      v28 = v10;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Audio url %@ is nil, or url not existing in path", buf, 0x16u);
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else if (!v12)
    {
      goto LABEL_9;
    }

    v19 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (*(v12 + 2))(v12, 0, v19, 0, 0);

    goto LABEL_9;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D8C8;
  block[3] = &unk_100250328;
  block[4] = self;
  v21 = v11;
  v23 = v12;
  v22 = v10;
  v24 = a5;
  dispatch_async(queue, block);

LABEL_9:
}

- (void)createAudioInjectionDeviceWithType:(int64_t)a3 bundlePath:(id)a4 deviceName:(id)a5 deviceID:(id)a6 productID:(id)a7 completion:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v27 = "[CSAudioInjectionXPC createAudioInjectionDeviceWithType:bundlePath:deviceName:deviceID:productID:completion:]";
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Request to init device with bundlePath : %@, deviceName : %@, deviceId : %@, productId : %@", buf, 0x34u);
  }

  v20 = [[CSAudioInjectionDevice alloc] initWithDeviceType:a3 bundlePath:v14 deviceName:v15 deviceID:v16 productID:v17];
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

  if (v18)
  {
    v23 = [(CSAudioInjectionDevice *)v21 deviceUID];
    v18[2](v18, 1, 0, v23);
  }
}

- (void)createAudioInjectionDeviceWithType:(int64_t)a3 deviceName:(id)a4 deviceID:(id)a5 productID:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v24 = "[CSAudioInjectionXPC createAudioInjectionDeviceWithType:deviceName:deviceID:productID:completion:]";
    v25 = 2048;
    v26 = a3;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Request to init device with deviceType : %ld, deviceName : %@, deviceId : %@, productId : %@", buf, 0x34u);
  }

  v17 = [[CSAudioInjectionDevice alloc] initWithDeviceType:a3 deviceName:v12 deviceID:v13 productID:v14];
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

  if (v15)
  {
    v20 = [(CSAudioInjectionDevice *)v18 deviceUID];
    v15[2](v15, 1, 0, v20);
  }
}

- (void)pingpong:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [a3 copy];
    (*(a4 + 2))(v6, v7);
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
    v8 = [v7 primaryInputDevice];

    if (v8)
    {
      if (CSHasAOP())
      {
        [v8 setEnableAlwaysOnVoiceTrigger:1];
        v9 = +[CSAudioInjectionProvider defaultInjectionProvider];
        [v9 start];
      }

      v10 = v2->_deviceMapTable;
      v11 = [v8 deviceUID];
      [(NSMapTable *)v10 setObject:v8 forKey:v11];
    }
  }

  return v2;
}

@end