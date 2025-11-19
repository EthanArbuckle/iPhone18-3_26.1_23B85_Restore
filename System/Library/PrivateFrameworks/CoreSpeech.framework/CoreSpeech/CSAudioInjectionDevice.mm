@interface CSAudioInjectionDevice
- (BOOL)speakAudio:(id)a3;
- (BOOL)speakAudio:(id)a3 withScaleFactor:(float)a4 outASBD:(AudioStreamBasicDescription *)a5 playbackStarted:(id)a6 completion:(id)a7;
- (BOOL)speakAudio:(id)a3 withScaleFactor:(float)a4 outASBD:(AudioStreamBasicDescription *)a5 playbackStarted:(id)a6 userIntentOptions:(id)a7 completion:(id)a8;
- (BOOL)speakAudio:(id)a3 withScaleFactor:(float)a4 playbackStarted:(id)a5 completion:(id)a6;
- (CSAudioInjectionDevice)initWithDeviceType:(int64_t)a3 bundlePath:(id)a4 deviceName:(id)a5 deviceID:(id)a6 productID:(id)a7;
- (CSAudioInjectionDevice)initWithDeviceType:(int64_t)a3 deviceName:(id)a4 deviceID:(id)a5 productID:(id)a6;
- (CSAudioInjectionEngineProtocol)injectionEngine;
@end

@implementation CSAudioInjectionDevice

- (CSAudioInjectionEngineProtocol)injectionEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_injectionEngine);

  return WeakRetained;
}

- (BOOL)speakAudio:(id)a3 withScaleFactor:(float)a4 outASBD:(AudioStreamBasicDescription *)a5 playbackStarted:(id)a6 userIntentOptions:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if ([(CSAudioInjectionDevice *)self isBundleDevice])
  {
    v18 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v24[0]) = 136315138;
      *(v24 + 4) = "[CSAudioInjectionDevice speakAudio:withScaleFactor:outASBD:playbackStarted:userIntentOptions:completion:]";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Bundle Injection Device doesn't support speakAudio", v24, 0xCu);
    }

    v19 = 0;
  }

  else
  {
    v20 = [(CSAudioInjectionDevice *)self injectionEngine];
    [v20 setUserIntentOptions:v16];

    v21 = [(CSAudioInjectionDevice *)self injectionEngine];
    v22 = *&a5->mBytesPerPacket;
    v24[0] = *&a5->mSampleRate;
    v24[1] = v22;
    v25 = *&a5->mBitsPerChannel;
    v19 = [v21 injectAudio:v14 withScaleFactor:v24 outASBD:v15 playbackStarted:v17 completion:{COERCE_DOUBLE(__PAIR64__(DWORD1(v24[0]), LODWORD(a4)))}];
  }

  return v19;
}

- (BOOL)speakAudio:(id)a3 withScaleFactor:(float)a4 outASBD:(AudioStreamBasicDescription *)a5 playbackStarted:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if ([(CSAudioInjectionDevice *)self isBundleDevice])
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v20[0]) = 136315138;
      *(v20 + 4) = "[CSAudioInjectionDevice speakAudio:withScaleFactor:outASBD:playbackStarted:completion:]";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Bundle Injection Device doesn't support speakAudio", v20, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v17 = [(CSAudioInjectionDevice *)self injectionEngine];
    v18 = *&a5->mBytesPerPacket;
    v20[0] = *&a5->mSampleRate;
    v20[1] = v18;
    v21 = *&a5->mBitsPerChannel;
    v16 = [v17 injectAudio:v12 withScaleFactor:v20 outASBD:v13 playbackStarted:v14 completion:{COERCE_DOUBLE(__PAIR64__(DWORD1(v20[0]), LODWORD(a4)))}];
  }

  return v16;
}

- (BOOL)speakAudio:(id)a3 withScaleFactor:(float)a4 playbackStarted:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(CSAudioInjectionDevice *)self isBundleDevice])
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[CSAudioInjectionDevice speakAudio:withScaleFactor:playbackStarted:completion:]";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Bundle Injection Device doesn't support speakAudio", &v18, 0xCu);
    }

    v14 = 0;
  }

  else
  {
    v15 = [(CSAudioInjectionDevice *)self injectionEngine];
    *&v16 = a4;
    v14 = [v15 injectAudio:v10 withScaleFactor:v11 playbackStarted:v12 completion:v16];
  }

  return v14;
}

- (BOOL)speakAudio:(id)a3
{
  v4 = a3;
  if ([(CSAudioInjectionDevice *)self isBundleDevice])
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSAudioInjectionDevice speakAudio:]";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Bundle Injection Device doesn't support speakAudio", &v9, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v7 = [(CSAudioInjectionDevice *)self injectionEngine];
    v6 = [v7 injectAudio:v4];
  }

  return v6;
}

- (CSAudioInjectionDevice)initWithDeviceType:(int64_t)a3 bundlePath:(id)a4 deviceName:(id)a5 deviceID:(id)a6 productID:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v33.receiver = self;
  v33.super_class = CSAudioInjectionDevice;
  v17 = [(CSAudioInjectionDevice *)&v33 init];
  v18 = v17;
  if (v17)
  {
    v17->_deviceType = a3;
    objc_storeStrong(&v17->_bundlePath, a4);
    v19 = [v14 copy];
    v20 = [NSString stringWithFormat:@"%@_%@", v19, @"injectionDevice"];
    deviceName = v18->_deviceName;
    v18->_deviceName = v20;

    v22 = [v15 copy];
    deviceID = v18->_deviceID;
    v18->_deviceID = v22;

    v24 = [v16 copy];
    productIdentifier = v18->_productIdentifier;
    v18->_productIdentifier = v24;

    v26 = +[NSUUID UUID];
    deviceUID = v18->_deviceUID;
    v18->_deviceUID = v26;

    objc_storeWeak(&v18->_injectionEngine, 0);
    v28 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      deviceType = v18->_deviceType;
      v30 = v18->_deviceUID;
      bundlePath = v18->_bundlePath;
      *buf = 136316674;
      v35 = "[CSAudioInjectionDevice initWithDeviceType:bundlePath:deviceName:deviceID:productID:]";
      v36 = 2048;
      v37 = deviceType;
      v38 = 2112;
      v39 = v14;
      v40 = 2112;
      v41 = v15;
      v42 = 2112;
      v43 = v16;
      v44 = 2112;
      v45 = v30;
      v46 = 2112;
      v47 = bundlePath;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s Creating Injection Device - Type: %lu, deviceName: %@, deviceId: %@, productId: %@, deviceUID: %@, bundlePath: %@", buf, 0x48u);
    }
  }

  return v18;
}

- (CSAudioInjectionDevice)initWithDeviceType:(int64_t)a3 deviceName:(id)a4 deviceID:(id)a5 productID:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v27.receiver = self;
  v27.super_class = CSAudioInjectionDevice;
  v13 = [(CSAudioInjectionDevice *)&v27 init];
  v14 = v13;
  if (v13)
  {
    v13->_deviceType = a3;
    v15 = [v10 copy];
    v16 = [NSString stringWithFormat:@"%@_%@", v15, @"injectionDevice"];
    deviceName = v14->_deviceName;
    v14->_deviceName = v16;

    v18 = [v11 copy];
    deviceID = v14->_deviceID;
    v14->_deviceID = v18;

    v20 = [v12 copy];
    productIdentifier = v14->_productIdentifier;
    v14->_productIdentifier = v20;

    v22 = +[NSUUID UUID];
    deviceUID = v14->_deviceUID;
    v14->_deviceUID = v22;

    objc_storeWeak(&v14->_injectionEngine, 0);
    v24 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v14->_deviceUID;
      *buf = 136316418;
      v29 = "[CSAudioInjectionDevice initWithDeviceType:deviceName:deviceID:productID:]";
      v30 = 2048;
      v31 = a3;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v11;
      v36 = 2112;
      v37 = v12;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s Creating Injection Device - Type: %lu, deviceName: %@, deviceId: %@, productId: %@, deviceUID: %@", buf, 0x3Eu);
    }
  }

  return v14;
}

@end