@interface CSMyriadPHash
+ (BOOL)writeHashResultIntoFile:(id)a3;
+ (BOOL)writeHashlessResult:(unint64_t)a3;
+ (double)signalEstimateWithBuilder:(id)a3;
+ (id)createHashResult:(unsigned __int16)a3 goodness:(unsigned __int8)a4 confidence:(unsigned __int8)a5 absTime:(unint64_t)a6 frac:(unsigned __int8)a7;
+ (id)createRemoraHashResult:(unsigned __int16)a3 goodness:(unsigned __int8)a4 confidence:(unsigned __int8)a5 firstPassTriggerEndTime:(double)a6 frac:(unsigned __int8)a7;
+ (id)createRemoraHashResultFromPHash:(id)a3 firstPassTriggerEndTime:(double)a4;
+ (id)decodeWithMyriadPHash:(id)a3;
+ (id)generateEmptyPHash:(unint64_t)a3 writeFile:(BOOL)a4;
+ (id)overridePHash:(id)a3 withMachTime:(unint64_t)a4;
+ (void)notifyAudioHashNotification;
+ (void)notifyAudioHashlessNotification;
+ (void)notifyHashlessTrigger:(unint64_t)a3;
+ (void)setLastHash:(id)a3;
- (CSMyriadPHash)init;
- (double)_signalEstimate:(float *)a3 length:(unint64_t)a4;
- (id)_audioLogDirectory;
- (id)_generateMyriadInfo:(unint64_t)a3 hsStart:(unint64_t)a4 triggerEnd:(unint64_t)a5 writeFile:(BOOL)a6 score:(float)a7 triggerSource:(id)a8 channel:(unint64_t)a9 audioProviderUUID:(id)a10 absoluteTime:(unint64_t)a11;
- (id)cachedHash;
- (id)generatePHashFromExclaveVoiceTriggerInfo:(id)a3 writeFile:(BOOL)a4;
- (id)generatePHashFromVoiceTriggerInfo:(id)a3 writeFile:(BOOL)a4;
- (unsigned)pHash:(float *)a3 length:(int)a4;
- (void)_copyAudioDataInBuffer:(float *)a3 bufferSize:(unint64_t)a4 copyLength:(unint64_t)a5 fromAudioData:(void *)a6;
- (void)_copyPsdDataInBuffer:(float *)a3 copyLength:(unint64_t)a4 fromAudioData:(void *)a5;
- (void)_surfacePsdWithAudioChunk:(id)a3;
- (void)dealloc;
@end

@implementation CSMyriadPHash

- (id)generatePHashFromVoiceTriggerInfo:(id)a3 writeFile:(BOOL)a4
{
  v6 = a3;
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
  v12 = v6;
  v13 = self;
  v14 = &v16;
  v15 = a4;
  v8 = v6;
  dispatch_sync(queue, v11);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

- (id)generatePHashFromExclaveVoiceTriggerInfo:(id)a3 writeFile:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  v8 = 0.0;
  if (!v6)
  {
    goto LABEL_5;
  }

  v9 = kVTEIExclaveSignalIntensity;
  v10 = [v6 objectForKeyedSubscript:kVTEIExclaveSignalIntensity];
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

  v19 = mach_absolute_time();
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
        v19 = [v25 unsignedLongLongValue];
      }
    }
  }

  v26 = [CSMyriadPHash createHashResult:42545 goodness:v16 confidence:0 absTime:v19 frac:v17];
  if (v4)
  {
    [CSMyriadPHash writeHashResultIntoFile:v26];
  }

  return v26;
}

- (id)_audioLogDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[CSFPreferences sharedPreferences];
  v4 = [v3 voiceTriggerAudioLogDirectory];

  if ([v2 fileExistsAtPath:v4])
  {
    v5 = 0;
  }

  else
  {
    v11 = 0;
    v6 = [v2 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v11];
    v5 = v11;
    if ((v6 & 1) == 0)
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v9 = v7;
        v10 = [v5 localizedDescription];
        *buf = 136315650;
        v13 = "[CSMyriadPHash _audioLogDirectory]";
        v14 = 2114;
        v15 = v4;
        v16 = 2114;
        v17 = v10;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Couldn't create voice trigger audio logging directory at path %{public}@ %{public}@", buf, 0x20u);
      }

      v4 = @"/tmp";
    }
  }

  return v4;
}

- (id)_generateMyriadInfo:(unint64_t)a3 hsStart:(unint64_t)a4 triggerEnd:(unint64_t)a5 writeFile:(BOOL)a6 score:(float)a7 triggerSource:(id)a8 channel:(unint64_t)a9 audioProviderUUID:(id)a10 absoluteTime:(unint64_t)a11
{
  v13 = a6;
  v17 = a8;
  v18 = a10;
  if (v17 && ((v19 = [v17 isEqualToString:kVTEIFirstPassTriggeredFromJarvis], (objc_msgSend(v17, "isEqualToString:", kVTEIFirstPassTriggeredFromHearstAP) & 1) != 0) || ((objc_msgSend(v17, "isEqualToString:", kVTEIFirstPassTriggeredFromHearst) | v19) & 1) != 0))
  {
    v20 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v47 = "[CSMyriadPHash _generateMyriadInfo:hsStart:triggerEnd:writeFile:score:triggerSource:channel:audioProviderUUID:absoluteTime:]";
      v48 = 2114;
      v49 = v17;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s No posting as trigger source is %{public}@", buf, 0x16u);
    }

    v21 = 0;
  }

  else
  {
    v43 = v13;
    v22 = +[CSSpeechManager sharedManager];
    v23 = [v22 audioProviderWithUUID:v18];

    v24 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v47 = "[CSMyriadPHash _generateMyriadInfo:hsStart:triggerEnd:writeFile:score:triggerSource:channel:audioProviderUUID:absoluteTime:]";
      v48 = 2050;
      v49 = a3;
      v50 = 2050;
      v51 = a9;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s BTLE AudioPayload ringBuffer startpoint: %{public}lld toEnd, activeChannel: %{public}tu", buf, 0x20u);
    }

    v42 = a5;
    v45 = v23;
    v25 = [v23 audioChunkToEndFrom:a3 channelIdx:a9];
    v26 = [v25 data];
    v27 = [v25 numSamples];
    v28 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v47 = "[CSMyriadPHash _generateMyriadInfo:hsStart:triggerEnd:writeFile:score:triggerSource:channel:audioProviderUUID:absoluteTime:]";
      v48 = 2050;
      v49 = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s BTLE raw audio size = %{public}ld", buf, 0x16u);
    }

    v29 = malloc_type_malloc(0x4000uLL, 0x13FF9A7DuLL);
    bzero(v29, 0x4000uLL);
    if (v27 >= 0x1000)
    {
      v27 = 4096;
    }

    -[CSMyriadPHash _copyAudioDataInBuffer:bufferSize:copyLength:fromAudioData:](self, "_copyAudioDataInBuffer:bufferSize:copyLength:fromAudioData:", v29, 0x4000, v27, [v26 bytes]);
    v30 = [(CSMyriadPHash *)self pHash:v29 length:4096];
    v31 = [(CSMyriadPHash *)self signalEstimate];
    v32 = [(CSMyriadPHash *)self signalFractional];
    free(v29);
    if (CSIsInternalBuild())
    {
      v41 = v18;
      v33 = +[NSDate date];
      v34 = [v45 audioChunkFrom:a4 to:v42 channelIdx:a9];
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
        v49 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s Surface PSD elapsed time = %{public}lf", buf, 0x16u);
      }

      v18 = v41;
    }

    if (CSIsHorseman())
    {
      v39 = 0;
    }

    else
    {
      v39 = (a7 * 10.0);
    }

    v21 = [CSMyriadPHash createHashResult:v30 goodness:v31 confidence:v39 absTime:a11 frac:v32];
    if (v43)
    {
      [CSMyriadPHash writeHashResultIntoFile:v21];
    }

    +[CSMyriadPHash notifyAudioHashNotification];
  }

  return v21;
}

- (void)_copyPsdDataInBuffer:(float *)a3 copyLength:(unint64_t)a4 fromAudioData:(void *)a5
{
  if (a4 && a3 && a5)
  {
    if (+[CSConfig inputRecordingIsFloat])
    {
      __B = 32767.0;
      vDSP_vsmul(a5, 1, &__B, a3, 1, a4);
    }

    else
    {

      vDSP_vflt16(a5, 1, a3, 1, a4);
    }
  }
}

- (void)_copyAudioDataInBuffer:(float *)a3 bufferSize:(unint64_t)a4 copyLength:(unint64_t)a5 fromAudioData:(void *)a6
{
  if (a3 && a6)
  {
    if (!a5)
    {
      goto LABEL_8;
    }

    if (+[CSConfig inputRecordingIsFloat])
    {
      *buf = 1191181824;
      __C = 1.0;
      __B = -1.0;
      vDSP_vclip(a6, 1, &__B, &__C, a3, 1, a5);
      vDSP_vsmul(a3, 1, buf, a3, 1, a5);
    }

    else
    {
      vDSP_vflt16(a6, 1, a3, 1, a5);
    }

    if (a5 <= 0xFFF)
    {
LABEL_8:
      v9 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[CSMyriadPHash _copyAudioDataInBuffer:bufferSize:copyLength:fromAudioData:]";
        v14 = 2050;
        v15 = 4096 - a5;
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

- (unsigned)pHash:(float *)a3 length:(int)a4
{
  [(CSMyriadPHash *)self _signalEstimate:a3 length:a4];
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

- (void)_surfacePsdWithAudioChunk:(id)a3
{
  v4 = a3;
  v5 = [v4 data];
  v6 = [v4 numSamples];

  if (v6)
  {
    v7 = malloc_type_malloc(4 * v6, 0x660674F7uLL);
    bzero(v7, 4 * v6);
    -[CSMyriadPHash _copyPsdDataInBuffer:copyLength:fromAudioData:](self, "_copyPsdDataInBuffer:copyLength:fromAudioData:", v7, v6, [v5 bytes]);
    v20 = 0xBF7851EC3F800000;
    vDSP_conv(v7, 1, &v20 + 1, -1, v7, 1, v6 - 1, 2uLL);
    *(v7 + v6 - 1) = *(&v20 + 1) * *(v7 + v6 - 1);
    vDSP_vsq(v7, 1, v7, 1, v6);
    __C = 0.0;
    vDSP_sve(v7, 1, &__C, v6);
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
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Surface PSD: PSD Score = %d, PSDSum = %f, PSDLength = %lu", buf, 0x26u);
    }

    free(v7);
  }
}

- (double)_signalEstimate:(float *)a3 length:(unint64_t)a4
{
  v15 = 0.0;
  v6 = sub_100056D90(256, @"windowed array for signal estimation");
  v7 = 0.0;
  v8 = 31;
  do
  {
    vDSP_vmul(a3, 1, self->_snrWindow, 1, v6, 1, 0x100uLL);
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
    a3 += 128;
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

+ (void)setLastHash:(id)a3
{
  v3 = [a3 copy];
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

+ (BOOL)writeHashResultIntoFile:(id)a3
{
  v3 = a3;
  v4 = +[CSFPreferences sharedPreferences];
  v5 = [v4 myriadHashFilePath];

  v6 = [v3 writeToFile:v5 atomically:0];
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

+ (BOOL)writeHashlessResult:(unint64_t)a3
{
  v3 = [CSMyriadPHash createHashResult:0 goodness:0 confidence:0 absTime:a3 frac:0];
  v4 = [CSMyriadPHash writeHashResultIntoFile:v3];

  return v4;
}

+ (id)overridePHash:(id)a3 withMachTime:(unint64_t)a4
{
  v5 = [CSMyriadPHash decodeWithMyriadPHash:a3];
  v6 = +[CSMyriadPHash createHashResult:goodness:confidence:absTime:frac:](CSMyriadPHash, "createHashResult:goodness:confidence:absTime:frac:", [v5 hash], objc_msgSend(v5, "goodness"), objc_msgSend(v5, "confidence"), a4, objc_msgSend(v5, "frac"));

  return v6;
}

+ (id)decodeWithMyriadPHash:(id)a3
{
  v3 = a3;
  v4 = v3;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (v3 && [v3 length] == 13)
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

+ (id)generateEmptyPHash:(unint64_t)a3 writeFile:(BOOL)a4
{
  v4 = a4;
  v5 = [CSMyriadPHash createHashResult:0 goodness:0 confidence:0 absTime:a3 frac:0];
  if (v4)
  {
    [CSMyriadPHash writeHashResultIntoFile:v5];
  }

  return v5;
}

+ (id)createHashResult:(unsigned __int16)a3 goodness:(unsigned __int8)a4 confidence:(unsigned __int8)a5 absTime:(unint64_t)a6 frac:(unsigned __int8)a7
{
  v7 = a7;
  v9 = a5;
  v10 = a4;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = a7;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v21 = "+[CSMyriadPHash createHashResult:goodness:confidence:absTime:frac:]";
    v22 = 1024;
    *v23 = v10;
    *&v23[4] = 1024;
    *&v23[6] = v9;
    v24 = 2048;
    v25 = a6;
    v26 = 1024;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s goodness = %d, confidence = %d absTime = %llu, frac = %d", buf, 0x28u);
  }

  v12 = [NSMutableData dataWithCapacity:13];
  [v12 appendBytes:&v19 length:2];
  [v12 appendBytes:&v18 length:1];
  [v12 appendBytes:&v17 length:1];
  [v12 appendBytes:&v16 length:8];
  [v12 appendBytes:&v15 length:1];
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

+ (id)createRemoraHashResult:(unsigned __int16)a3 goodness:(unsigned __int8)a4 confidence:(unsigned __int8)a5 firstPassTriggerEndTime:(double)a6 frac:(unsigned __int8)a7
{
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  v10 = a7;
  v7 = [NSMutableData dataWithCapacity:13];
  [v7 appendBytes:&v14 length:2];
  [v7 appendBytes:&v13 length:1];
  [v7 appendBytes:&v12 length:1];
  [v7 appendBytes:&v11 length:8];
  [v7 appendBytes:&v10 length:1];
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

+ (id)createRemoraHashResultFromPHash:(id)a3 firstPassTriggerEndTime:(double)a4
{
  v5 = a3;
  v6 = *[v5 bytes];
  v7 = *([v5 bytes] + 2);
  v8 = *([v5 bytes] + 3);
  v9 = [v5 bytes];

  v10 = v9[12];

  return [CSMyriadPHash createRemoraHashResult:v6 goodness:v7 confidence:v8 firstPassTriggerEndTime:v10 frac:a4];
}

+ (void)notifyHashlessTrigger:(unint64_t)a3
{
  v3 = [CSMyriadPHash generateEmptyPHash:a3 writeFile:1];

  +[CSMyriadPHash notifyAudioHashlessNotification];
}

+ (double)signalEstimateWithBuilder:(id)a3
{
  v3 = (*(a3 + 2))(a3, 4096);
  v4 = objc_alloc_init(CSMyriadPHash);
  if (v3)
  {
    v5 = [v3 data];
    v6 = [v5 length];
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
          v11 = [v5 bytes];
          *buf = 1191181824;
          __C = 1.0;
          __B = -1.0;
          vDSP_vclip(v11, 1, &__B, &__C, v10, 1, 0x1000uLL);
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