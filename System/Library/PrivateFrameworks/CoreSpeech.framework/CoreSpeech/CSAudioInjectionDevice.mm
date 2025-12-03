@interface CSAudioInjectionDevice
- (BOOL)speakAudio:(id)audio;
- (BOOL)speakAudio:(id)audio withScaleFactor:(float)factor outASBD:(AudioStreamBasicDescription *)d playbackStarted:(id)started completion:(id)completion;
- (BOOL)speakAudio:(id)audio withScaleFactor:(float)factor outASBD:(AudioStreamBasicDescription *)d playbackStarted:(id)started userIntentOptions:(id)options completion:(id)completion;
- (BOOL)speakAudio:(id)audio withScaleFactor:(float)factor playbackStarted:(id)started completion:(id)completion;
- (CSAudioInjectionDevice)initWithDeviceType:(int64_t)type bundlePath:(id)path deviceName:(id)name deviceID:(id)d productID:(id)iD;
- (CSAudioInjectionDevice)initWithDeviceType:(int64_t)type deviceName:(id)name deviceID:(id)d productID:(id)iD;
- (CSAudioInjectionEngineProtocol)injectionEngine;
@end

@implementation CSAudioInjectionDevice

- (CSAudioInjectionEngineProtocol)injectionEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_injectionEngine);

  return WeakRetained;
}

- (BOOL)speakAudio:(id)audio withScaleFactor:(float)factor outASBD:(AudioStreamBasicDescription *)d playbackStarted:(id)started userIntentOptions:(id)options completion:(id)completion
{
  audioCopy = audio;
  startedCopy = started;
  optionsCopy = options;
  completionCopy = completion;
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
    injectionEngine = [(CSAudioInjectionDevice *)self injectionEngine];
    [injectionEngine setUserIntentOptions:optionsCopy];

    injectionEngine2 = [(CSAudioInjectionDevice *)self injectionEngine];
    v22 = *&d->mBytesPerPacket;
    v24[0] = *&d->mSampleRate;
    v24[1] = v22;
    v25 = *&d->mBitsPerChannel;
    v19 = [injectionEngine2 injectAudio:audioCopy withScaleFactor:v24 outASBD:startedCopy playbackStarted:completionCopy completion:{COERCE_DOUBLE(__PAIR64__(DWORD1(v24[0]), LODWORD(factor)))}];
  }

  return v19;
}

- (BOOL)speakAudio:(id)audio withScaleFactor:(float)factor outASBD:(AudioStreamBasicDescription *)d playbackStarted:(id)started completion:(id)completion
{
  audioCopy = audio;
  startedCopy = started;
  completionCopy = completion;
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
    injectionEngine = [(CSAudioInjectionDevice *)self injectionEngine];
    v18 = *&d->mBytesPerPacket;
    v20[0] = *&d->mSampleRate;
    v20[1] = v18;
    v21 = *&d->mBitsPerChannel;
    v16 = [injectionEngine injectAudio:audioCopy withScaleFactor:v20 outASBD:startedCopy playbackStarted:completionCopy completion:{COERCE_DOUBLE(__PAIR64__(DWORD1(v20[0]), LODWORD(factor)))}];
  }

  return v16;
}

- (BOOL)speakAudio:(id)audio withScaleFactor:(float)factor playbackStarted:(id)started completion:(id)completion
{
  audioCopy = audio;
  startedCopy = started;
  completionCopy = completion;
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
    injectionEngine = [(CSAudioInjectionDevice *)self injectionEngine];
    *&v16 = factor;
    v14 = [injectionEngine injectAudio:audioCopy withScaleFactor:startedCopy playbackStarted:completionCopy completion:v16];
  }

  return v14;
}

- (BOOL)speakAudio:(id)audio
{
  audioCopy = audio;
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
    injectionEngine = [(CSAudioInjectionDevice *)self injectionEngine];
    v6 = [injectionEngine injectAudio:audioCopy];
  }

  return v6;
}

- (CSAudioInjectionDevice)initWithDeviceType:(int64_t)type bundlePath:(id)path deviceName:(id)name deviceID:(id)d productID:(id)iD
{
  pathCopy = path;
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  v33.receiver = self;
  v33.super_class = CSAudioInjectionDevice;
  v17 = [(CSAudioInjectionDevice *)&v33 init];
  v18 = v17;
  if (v17)
  {
    v17->_deviceType = type;
    objc_storeStrong(&v17->_bundlePath, path);
    v19 = [nameCopy copy];
    v20 = [NSString stringWithFormat:@"%@_%@", v19, @"injectionDevice"];
    deviceName = v18->_deviceName;
    v18->_deviceName = v20;

    v22 = [dCopy copy];
    deviceID = v18->_deviceID;
    v18->_deviceID = v22;

    v24 = [iDCopy copy];
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
      v39 = nameCopy;
      v40 = 2112;
      v41 = dCopy;
      v42 = 2112;
      v43 = iDCopy;
      v44 = 2112;
      v45 = v30;
      v46 = 2112;
      v47 = bundlePath;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s Creating Injection Device - Type: %lu, deviceName: %@, deviceId: %@, productId: %@, deviceUID: %@, bundlePath: %@", buf, 0x48u);
    }
  }

  return v18;
}

- (CSAudioInjectionDevice)initWithDeviceType:(int64_t)type deviceName:(id)name deviceID:(id)d productID:(id)iD
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  v27.receiver = self;
  v27.super_class = CSAudioInjectionDevice;
  v13 = [(CSAudioInjectionDevice *)&v27 init];
  v14 = v13;
  if (v13)
  {
    v13->_deviceType = type;
    v15 = [nameCopy copy];
    v16 = [NSString stringWithFormat:@"%@_%@", v15, @"injectionDevice"];
    deviceName = v14->_deviceName;
    v14->_deviceName = v16;

    v18 = [dCopy copy];
    deviceID = v14->_deviceID;
    v14->_deviceID = v18;

    v20 = [iDCopy copy];
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
      typeCopy = type;
      v32 = 2112;
      v33 = nameCopy;
      v34 = 2112;
      v35 = dCopy;
      v36 = 2112;
      v37 = iDCopy;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s Creating Injection Device - Type: %lu, deviceName: %@, deviceId: %@, productId: %@, deviceUID: %@", buf, 0x3Eu);
    }
  }

  return v14;
}

@end