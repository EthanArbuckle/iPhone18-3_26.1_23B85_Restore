@interface CSMyriadPHash
+ (BOOL)writeHashResultIntoFile:(id)file;
+ (BOOL)writeHashlessResult:(unint64_t)result;
+ (double)signalEstimateWithBuilder:(id)builder;
+ (id)createHashResult:(unsigned __int16)result goodness:(unsigned __int8)goodness confidence:(unsigned __int8)confidence absTime:(unint64_t)time frac:(unsigned __int8)frac;
+ (id)createRemoraHashResult:(unsigned __int16)result goodness:(unsigned __int8)goodness confidence:(unsigned __int8)confidence firstPassTriggerEndTime:(double)time frac:(unsigned __int8)frac;
+ (id)createRemoraHashResultFromPHash:(id)hash firstPassTriggerEndTime:(double)time;
+ (id)decodeWithMyriadPHash:(id)hash;
+ (id)generateEmptyPHash:(unint64_t)hash writeFile:(BOOL)file;
+ (id)overridePHash:(id)hash withMachTime:(unint64_t)time;
+ (void)notifyAudioHashNotification;
+ (void)notifyAudioHashlessNotification;
+ (void)notifyHashlessTrigger:(unint64_t)trigger;
+ (void)setLastHash:(id)hash;
- (CSMyriadPHash)init;
- (double)_signalEstimate:(float *)estimate length:(unint64_t)length;
- (id)_audioLogDirectory;
- (id)_generateMyriadInfo:(unint64_t)info hsStart:(unint64_t)start triggerEnd:(unint64_t)end writeFile:(BOOL)file score:(float)score triggerSource:(id)source channel:(unint64_t)channel audioProviderUUID:(id)self0 absoluteTime:(unint64_t)self1;
- (id)cachedHash;
- (id)generatePHashFromExclaveVoiceTriggerInfo:(id)info writeFile:(BOOL)file;
- (id)generatePHashFromVoiceTriggerInfo:(id)info writeFile:(BOOL)file;
- (unsigned)pHash:(float *)hash length:(int)length;
- (void)_copyAudioDataInBuffer:(float *)buffer bufferSize:(unint64_t)size copyLength:(unint64_t)length fromAudioData:(void *)data;
- (void)_copyPsdDataInBuffer:(float *)buffer copyLength:(unint64_t)length fromAudioData:(void *)data;
- (void)_surfacePsdWithAudioChunk:(id)chunk;
- (void)dealloc;
@end

@implementation CSMyriadPHash

- (id)generatePHashFromVoiceTriggerInfo:(id)info writeFile:(BOOL)file
{
  infoCopy = info;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10005561C;
  v20 = sub_10005562C;
  v21 = 0;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100055634;
  v11[3] = &unk_10024F488;
  v12 = infoCopy;
  selfCopy = self;
  v14 = &v16;
  fileCopy = file;
  v8 = infoCopy;
  dispatch_sync(queue, v11);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

- (id)generatePHashFromExclaveVoiceTriggerInfo:(id)info writeFile:(BOOL)file
{
  fileCopy = file;
  infoCopy = info;
  v7 = infoCopy;
  v8 = 0.0;
  if (!infoCopy)
  {
    goto LABEL_5;
  }

  v9 = kVTEIExclaveSignalIntensity;
  v10 = [infoCopy objectForKeyedSubscript:kVTEIExclaveSignalIntensity];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = v10;
  v12 = [v7 objectForKeyedSubscript:v9];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [v7 objectForKeyedSubscript:v9];
    [v14 doubleValue];
    v8 = v15;

    v16 = [(CSMyriadPHash *)self sigNorm:v8];
    v17 = [(CSMyriadPHash *)self sigFrac:v8];
  }

  else
  {
LABEL_5:
    v16 = 0;
    v17 = 0;
  }

  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315906;
    v29 = "[CSMyriadPHash generatePHashFromExclaveVoiceTriggerInfo:writeFile:]";
    v30 = 2050;
    v31 = v8;
    v32 = 1026;
    v33 = v16;
    v34 = 1026;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s sigsum = %{public}f sigNorm= %{public}d sigFrac= %{public}d", &v28, 0x22u);
  }

  unsignedLongLongValue = mach_absolute_time();
  if (v7)
  {
    v20 = kVTEItriggerEndMachTime;
    v21 = [v7 objectForKeyedSubscript:kVTEItriggerEndMachTime];
    if (v21)
    {
      v22 = v21;
      v23 = [v7 objectForKeyedSubscript:v20];
      objc_opt_class();
      v24 = objc_opt_isKindOfClass();

      if (v24)
      {
        v25 = [v7 objectForKeyedSubscript:v20];
        unsignedLongLongValue = [v25 unsignedLongLongValue];
      }
    }
  }

  v26 = [CSMyriadPHash createHashResult:42545 goodness:v16 confidence:0 absTime:unsignedLongLongValue frac:v17];
  if (fileCopy)
  {
    [CSMyriadPHash writeHashResultIntoFile:v26];
  }

  return v26;
}

- (id)_audioLogDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[CSFPreferences sharedPreferences];
  voiceTriggerAudioLogDirectory = [v3 voiceTriggerAudioLogDirectory];

  if ([v2 fileExistsAtPath:voiceTriggerAudioLogDirectory])
  {
    v5 = 0;
  }

  else
  {
    v11 = 0;
    v6 = [v2 createDirectoryAtPath:voiceTriggerAudioLogDirectory withIntermediateDirectories:1 attributes:0 error:&v11];
    v5 = v11;
    if ((v6 & 1) == 0)
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v9 = v7;
        localizedDescription = [v5 localizedDescription];
        *buf = 136315650;
        v13 = "[CSMyriadPHash _audioLogDirectory]";
        v14 = 2114;
        v15 = voiceTriggerAudioLogDirectory;
        v16 = 2114;
        v17 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Couldn't create voice trigger audio logging directory at path %{public}@ %{public}@", buf, 0x20u);
      }

      voiceTriggerAudioLogDirectory = @"/tmp";
    }
  }

  return voiceTriggerAudioLogDirectory;
}

- (id)_generateMyriadInfo:(unint64_t)info hsStart:(unint64_t)start triggerEnd:(unint64_t)end writeFile:(BOOL)file score:(float)score triggerSource:(id)source channel:(unint64_t)channel audioProviderUUID:(id)self0 absoluteTime:(unint64_t)self1
{
  fileCopy = file;
  sourceCopy = source;
  dCopy = d;
  if (sourceCopy && ((v19 = [sourceCopy isEqualToString:kVTEIFirstPassTriggeredFromJarvis], (objc_msgSend(sourceCopy, "isEqualToString:", kVTEIFirstPassTriggeredFromHearstAP) & 1) != 0) || ((objc_msgSend(sourceCopy, "isEqualToString:", kVTEIFirstPassTriggeredFromHearst) | v19) & 1) != 0))
  {
    v20 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v47 = "[CSMyriadPHash _generateMyriadInfo:hsStart:triggerEnd:writeFile:score:triggerSource:channel:audioProviderUUID:absoluteTime:]";
      v48 = 2114;
      infoCopy = sourceCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s No posting as trigger source is %{public}@", buf, 0x16u);
    }

    v21 = 0;
  }

  else
  {
    v43 = fileCopy;
    v22 = +[CSSpeechManager sharedManager];
    v23 = [v22 audioProviderWithUUID:dCopy];

    v24 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v47 = "[CSMyriadPHash _generateMyriadInfo:hsStart:triggerEnd:writeFile:score:triggerSource:channel:audioProviderUUID:absoluteTime:]";
      v48 = 2050;
      infoCopy = info;
      v50 = 2050;
      channelCopy = channel;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s BTLE AudioPayload ringBuffer startpoint: %{public}lld toEnd, activeChannel: %{public}tu", buf, 0x20u);
    }

    endCopy = end;
    v45 = v23;
    v25 = [v23 audioChunkToEndFrom:info channelIdx:channel];
    data = [v25 data];
    numSamples = [v25 numSamples];
    v28 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v47 = "[CSMyriadPHash _generateMyriadInfo:hsStart:triggerEnd:writeFile:score:triggerSource:channel:audioProviderUUID:absoluteTime:]";
      v48 = 2050;
      infoCopy = numSamples;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s BTLE raw audio size = %{public}ld", buf, 0x16u);
    }

    v29 = malloc_type_malloc(0x4000uLL, 0x13FF9A7DuLL);
    bzero(v29, 0x4000uLL);
    if (numSamples >= 0x1000)
    {
      numSamples = 4096;
    }

    -[CSMyriadPHash _copyAudioDataInBuffer:bufferSize:copyLength:fromAudioData:](self, "_copyAudioDataInBuffer:bufferSize:copyLength:fromAudioData:", v29, 0x4000, numSamples, [data bytes]);
    v30 = [(CSMyriadPHash *)self pHash:v29 length:4096];
    signalEstimate = [(CSMyriadPHash *)self signalEstimate];
    signalFractional = [(CSMyriadPHash *)self signalFractional];
    free(v29);
    if (CSIsInternalBuild())
    {
      v41 = dCopy;
      v33 = +[NSDate date];
      v34 = [v45 audioChunkFrom:start to:endCopy channelIdx:channel];
      [(CSMyriadPHash *)self _surfacePsdWithAudioChunk:v34];
      v35 = +[NSDate date];
      v36 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        [v35 timeIntervalSinceDate:v33];
        *buf = 136315394;
        v47 = "[CSMyriadPHash _generateMyriadInfo:hsStart:triggerEnd:writeFile:score:triggerSource:channel:audioProviderUUID:absoluteTime:]";
        v48 = 2050;
        infoCopy = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s Surface PSD elapsed time = %{public}lf", buf, 0x16u);
      }

      dCopy = v41;
    }

    if (CSIsHorseman())
    {
      v39 = 0;
    }

    else
    {
      v39 = (score * 10.0);
    }

    v21 = [CSMyriadPHash createHashResult:v30 goodness:signalEstimate confidence:v39 absTime:time frac:signalFractional];
    if (v43)
    {
      [CSMyriadPHash writeHashResultIntoFile:v21];
    }

    +[CSMyriadPHash notifyAudioHashNotification];
  }

  return v21;
}

- (void)_copyPsdDataInBuffer:(float *)buffer copyLength:(unint64_t)length fromAudioData:(void *)data
{
  if (length && buffer && data)
  {
    if (+[CSConfig inputRecordingIsFloat])
    {
      __B = 32767.0;
      vDSP_vsmul(data, 1, &__B, buffer, 1, length);
    }

    else
    {

      vDSP_vflt16(data, 1, buffer, 1, length);
    }
  }
}

- (void)_copyAudioDataInBuffer:(float *)buffer bufferSize:(unint64_t)size copyLength:(unint64_t)length fromAudioData:(void *)data
{
  if (buffer && data)
  {
    if (!length)
    {
      goto LABEL_8;
    }

    if (+[CSConfig inputRecordingIsFloat])
    {
      *buf = 1191181824;
      __C = 1.0;
      __B = -1.0;
      vDSP_vclip(data, 1, &__B, &__C, buffer, 1, length);
      vDSP_vsmul(buffer, 1, buf, buffer, 1, length);
    }

    else
    {
      vDSP_vflt16(data, 1, buffer, 1, length);
    }

    if (length <= 0xFFF)
    {
LABEL_8:
      v9 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[CSMyriadPHash _copyAudioDataInBuffer:bufferSize:copyLength:fromAudioData:]";
        v14 = 2050;
        v15 = 4096 - length;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s BTLE padded %{public}ld samples to fill out buffer", buf, 0x16u);
      }
    }
  }
}

- (id)cachedHash
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10005561C;
  v10 = sub_10005562C;
  v11 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056790;
  block[3] = &unk_100253580;
  block[4] = &v6;
  dispatch_sync(queue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unsigned)pHash:(float *)hash length:(int)length
{
  [(CSMyriadPHash *)self _signalEstimate:hash length:length];
  v6 = v5;
  self->_signalEstimate = [(CSMyriadPHash *)self sigNorm:?];
  v7 = [(CSMyriadPHash *)self sigFrac:v6];
  self->_signalFractional = v7;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    signalEstimate = self->_signalEstimate;
    v11 = 136315906;
    v12 = "[CSMyriadPHash pHash:length:]";
    v13 = 2050;
    v14 = v6;
    v15 = 1026;
    v16 = signalEstimate;
    v17 = 1026;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s sigsum = %{public}f sigNorm= %{public}d sigFrac= %{public}d", &v11, 0x22u);
  }

  return -22991;
}

- (void)_surfacePsdWithAudioChunk:(id)chunk
{
  chunkCopy = chunk;
  data = [chunkCopy data];
  numSamples = [chunkCopy numSamples];

  if (numSamples)
  {
    v7 = malloc_type_malloc(4 * numSamples, 0x660674F7uLL);
    bzero(v7, 4 * numSamples);
    -[CSMyriadPHash _copyPsdDataInBuffer:copyLength:fromAudioData:](self, "_copyPsdDataInBuffer:copyLength:fromAudioData:", v7, numSamples, [data bytes]);
    v20 = 0xBF7851EC3F800000;
    vDSP_conv(v7, 1, &v20 + 1, -1, v7, 1, numSamples - 1, 2uLL);
    *(v7 + numSamples - 1) = *(&v20 + 1) * *(v7 + numSamples - 1);
    vDSP_vsq(v7, 1, v7, 1, numSamples);
    __C = 0.0;
    vDSP_sve(v7, 1, &__C, numSamples);
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = __C;
      v10 = log10(__C) * 10.0 + -50.0;
      *buf = 136315906;
      v13 = "[CSMyriadPHash _surfacePsdWithAudioChunk:]";
      v14 = 1024;
      v15 = v10;
      v16 = 2048;
      v17 = v9;
      v18 = 2048;
      v19 = numSamples;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Surface PSD: PSD Score = %d, PSDSum = %f, PSDLength = %lu", buf, 0x26u);
    }

    free(v7);
  }
}

- (double)_signalEstimate:(float *)estimate length:(unint64_t)length
{
  v15 = 0.0;
  v6 = sub_100056D90(256, @"windowed array for signal estimation");
  v7 = 0.0;
  v8 = 31;
  do
  {
    vDSP_vmul(estimate, 1, self->_snrWindow, 1, v6, 1, 0x100uLL);
    snrSetup = self->_snrSetup;
    v10 = sub_100056D90(256, @"complex part zero vec");
    __C.realp = v6;
    __C.imagp = v10;
    vDSP_fft_zip(snrSetup, &__C, 1, 8uLL, 1);
    v11 = sub_100056D90(256, @"fft magnitudes array");
    vDSP_zvmags(&__C, 1, v11, 1, 0x100uLL);
    __B = 256;
    v12 = sub_100056D90(256, @"sqrt");
    vvsqrtf(v12, v11, &__B);
    v13 = sub_100056D90(256, @"normalized fft magnitudes");
    __B = 0x40000000;
    vDSP_vsmul(v12, 1, &__B, v13, 1, 0x100uLL);
    free(v10);
    free(v11);
    free(v12);
    v15 = 0.0;
    vDSP_sve(&v13[(300.0 / ((*&dword_10029E108 * 0.00024414) * 16.0))], 1, &v15, (2700.0 / ((*&dword_10029E108 * 0.00024414) * 16.0)));
    v7 = v7 + v15;
    free(v13);
    estimate += 128;
    --v8;
  }

  while (v8);
  free(v6);
  return v7;
}

- (void)dealloc
{
  vDSP_destroy_fftsetup(self->_setup);
  vDSP_destroy_fftsetup(self->_snrSetup);
  hammingWindow = self->_hammingWindow;
  if (hammingWindow)
  {
    free(hammingWindow);
    self->_hammingWindow = 0;
  }

  snrWindow = self->_snrWindow;
  if (snrWindow)
  {
    free(snrWindow);
    self->_snrWindow = 0;
  }

  v5.receiver = self;
  v5.super_class = CSMyriadPHash;
  [(CSMyriadPHash *)&v5 dealloc];
}

- (CSMyriadPHash)init
{
  v10.receiver = self;
  v10.super_class = CSMyriadPHash;
  v2 = [(CSMyriadPHash *)&v10 init];
  if (v2)
  {
    v3 = sub_100056D90(2048, @"HammingWindow");
    *(v2 + 1) = v3;
    vDSP_hamm_window(v3, 0x800uLL, 0);
    *(v2 + 2) = vDSP_create_fftsetup(0xAuLL, 2);
    v4 = sub_100056D90(256, @"HammingWindow");
    *(v2 + 3) = v4;
    vDSP_hamm_window(v4, 0x100uLL, 0);
    *(v2 + 4) = vDSP_create_fftsetup(8uLL, 2);
    *(v2 + 21) = 0;
    +[CSConfig inputRecordingSampleRate];
    dword_10029E108 = v5;
    v6 = dispatch_get_global_queue(2, 0);
    v7 = dispatch_queue_create("myriad_audio_analysis", 0);
    v8 = *(v2 + 6);
    *(v2 + 6) = v7;

    dispatch_set_target_queue(*(v2 + 6), v6);
  }

  return v2;
}

+ (void)setLastHash:(id)hash
{
  v3 = [hash copy];
  v4 = qword_10029E110;
  qword_10029E110 = v3;
}

+ (void)notifyAudioHashlessNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.apayload", 0, 0, 1u);
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "+[CSMyriadPHash notifyAudioHashlessNotification]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Posted siri audio hash notification", &v4, 0xCu);
  }
}

+ (void)notifyAudioHashNotification
{
  if (CSIsBridgeOS())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.apayload", 0, 0, 1u);
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "+[CSMyriadPHash notifyAudioHashNotification]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Posted siri audio hash notification", &v4, 0xCu);
    }
  }
}

+ (BOOL)writeHashResultIntoFile:(id)file
{
  fileCopy = file;
  v4 = +[CSFPreferences sharedPreferences];
  myriadHashFilePath = [v4 myriadHashFilePath];

  v6 = [fileCopy writeToFile:myriadHashFilePath atomically:0];
  if ((v6 & 1) == 0)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "+[CSMyriadPHash writeHashResultIntoFile:]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s advert data write failed", &v9, 0xCu);
    }
  }

  return v6;
}

+ (BOOL)writeHashlessResult:(unint64_t)result
{
  v3 = [CSMyriadPHash createHashResult:0 goodness:0 confidence:0 absTime:result frac:0];
  v4 = [CSMyriadPHash writeHashResultIntoFile:v3];

  return v4;
}

+ (id)overridePHash:(id)hash withMachTime:(unint64_t)time
{
  v5 = [CSMyriadPHash decodeWithMyriadPHash:hash];
  v6 = +[CSMyriadPHash createHashResult:goodness:confidence:absTime:frac:](CSMyriadPHash, "createHashResult:goodness:confidence:absTime:frac:", [v5 hash], objc_msgSend(v5, "goodness"), objc_msgSend(v5, "confidence"), time, objc_msgSend(v5, "frac"));

  return v6;
}

+ (id)decodeWithMyriadPHash:(id)hash
{
  hashCopy = hash;
  v4 = hashCopy;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (hashCopy && [hashCopy length] == 13)
  {
    [v4 getBytes:&v13 range:{0, 2}];
    [v4 getBytes:&v12 + 1 range:{2, 1}];
    [v4 getBytes:&v12 range:{3, 1}];
    [v4 getBytes:&v11 range:{4, 8}];
    [v4 getBytes:&v10 range:{12, 1}];
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v15 = "+[CSMyriadPHash decodeWithMyriadPHash:]";
      v16 = 2048;
      v17 = v13;
      v18 = 2048;
      v19 = HIBYTE(v12);
      v20 = 2048;
      v21 = v12;
      v22 = 2048;
      v23 = v11;
      v24 = 2048;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Decoded myriadPHash : hash(%lu), goodness(%lu), confidence(%lu), absTime(%llu), frac(%lu)", buf, 0x3Eu);
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "+[CSMyriadPHash decodeWithMyriadPHash:]";
      v16 = 2114;
      v17 = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Invalid myriad pHash : %{public}@", buf, 0x16u);
    }
  }

  v7 = [CSMyriadPHashFactors alloc];
  v8 = [(CSMyriadPHashFactors *)v7 initWithHash:v13 goodness:HIBYTE(v12) confidence:v12 absTime:v11 frac:v10];

  return v8;
}

+ (id)generateEmptyPHash:(unint64_t)hash writeFile:(BOOL)file
{
  fileCopy = file;
  v5 = [CSMyriadPHash createHashResult:0 goodness:0 confidence:0 absTime:hash frac:0];
  if (fileCopy)
  {
    [CSMyriadPHash writeHashResultIntoFile:v5];
  }

  return v5;
}

+ (id)createHashResult:(unsigned __int16)result goodness:(unsigned __int8)goodness confidence:(unsigned __int8)confidence absTime:(unint64_t)time frac:(unsigned __int8)frac
{
  fracCopy = frac;
  confidenceCopy = confidence;
  goodnessCopy = goodness;
  resultCopy = result;
  goodnessCopy2 = goodness;
  confidenceCopy2 = confidence;
  timeCopy = time;
  fracCopy2 = frac;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v21 = "+[CSMyriadPHash createHashResult:goodness:confidence:absTime:frac:]";
    v22 = 1024;
    *v23 = goodnessCopy;
    *&v23[4] = 1024;
    *&v23[6] = confidenceCopy;
    v24 = 2048;
    timeCopy2 = time;
    v26 = 1024;
    v27 = fracCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s goodness = %d, confidence = %d absTime = %llu, frac = %d", buf, 0x28u);
  }

  v12 = [NSMutableData dataWithCapacity:13];
  [v12 appendBytes:&resultCopy length:2];
  [v12 appendBytes:&goodnessCopy2 length:1];
  [v12 appendBytes:&confidenceCopy2 length:1];
  [v12 appendBytes:&timeCopy length:8];
  [v12 appendBytes:&fracCopy2 length:1];
  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "+[CSMyriadPHash createHashResult:goodness:confidence:absTime:frac:]";
    v22 = 2114;
    *v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Advert data: %{public}@", buf, 0x16u);
  }

  return v12;
}

+ (id)createRemoraHashResult:(unsigned __int16)result goodness:(unsigned __int8)goodness confidence:(unsigned __int8)confidence firstPassTriggerEndTime:(double)time frac:(unsigned __int8)frac
{
  resultCopy = result;
  goodnessCopy = goodness;
  confidenceCopy = confidence;
  timeCopy = time;
  fracCopy = frac;
  v7 = [NSMutableData dataWithCapacity:13];
  [v7 appendBytes:&resultCopy length:2];
  [v7 appendBytes:&goodnessCopy length:1];
  [v7 appendBytes:&confidenceCopy length:1];
  [v7 appendBytes:&timeCopy length:8];
  [v7 appendBytes:&fracCopy length:1];
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "+[CSMyriadPHash createRemoraHashResult:goodness:confidence:firstPassTriggerEndTime:frac:]";
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Advert data: %{public}@", buf, 0x16u);
  }

  return v7;
}

+ (id)createRemoraHashResultFromPHash:(id)hash firstPassTriggerEndTime:(double)time
{
  hashCopy = hash;
  v6 = *[hashCopy bytes];
  v7 = *([hashCopy bytes] + 2);
  v8 = *([hashCopy bytes] + 3);
  bytes = [hashCopy bytes];

  v10 = bytes[12];

  return [CSMyriadPHash createRemoraHashResult:v6 goodness:v7 confidence:v8 firstPassTriggerEndTime:v10 frac:time];
}

+ (void)notifyHashlessTrigger:(unint64_t)trigger
{
  v3 = [CSMyriadPHash generateEmptyPHash:trigger writeFile:1];

  +[CSMyriadPHash notifyAudioHashlessNotification];
}

+ (double)signalEstimateWithBuilder:(id)builder
{
  v3 = (*(builder + 2))(builder, 4096);
  v4 = objc_alloc_init(CSMyriadPHash);
  if (v3)
  {
    data = [v3 data];
    v6 = [data length];
    v7 = -1.0;
    if (v6)
    {
      v8 = v6;
      if (+[CSUtils supportHomeKitAccessory])
      {
        v9 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315651;
          v18 = "+[CSMyriadPHash(SignalEstimate) signalEstimateWithBuilder:]";
          v19 = 2049;
          v20 = 4096;
          v21 = 2049;
          v22 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s BTLE raw audio size = %{private}ld, audio length = %{private}ld", buf, 0x20u);
        }

        if (+[CSConfig inputRecordingIsFloat])
        {
          v10 = malloc_type_malloc(0x4000uLL, 0xE93A9F24uLL);
          bzero(v10, 0x4000uLL);
          bytes = [data bytes];
          *buf = 1191181824;
          __C = 1.0;
          __B = -1.0;
          vDSP_vclip(bytes, 1, &__B, &__C, v10, 1, 0x1000uLL);
          vDSP_vsmul(v10, 1, buf, v10, 1, 0x1000uLL);
          [(CSMyriadPHash *)v4 _signalEstimate:v10 length:v8];
          v7 = log10(v12) * 10.0;
          free(v10);
        }

        else
        {
          v13 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v18 = "+[CSMyriadPHash(SignalEstimate) signalEstimateWithBuilder:]";
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Input recording is not float", buf, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    v7 = -1.0;
  }

  return v7;
}

@end