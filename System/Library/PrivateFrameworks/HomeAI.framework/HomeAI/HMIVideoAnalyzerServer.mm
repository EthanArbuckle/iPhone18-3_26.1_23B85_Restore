@interface HMIVideoAnalyzerServer
- (HMIVideoAnalyzerServer)initWithConfiguration:(id)configuration identifier:(id)identifier;
- (double)delay;
- (double)timeSinceAnalyzerStarted;
- (double)timeSinceLastFragmentWasReceived;
- (id)_filterFrameResult:(id)result dynamicConfiguration:(id)configuration motionDetections:(id)detections;
- (id)dynamicConfigurationForTime:(id *)time;
- (id)state;
- (opaqueCMSampleBuffer)frameSelector:(id)selector prepareFrame:(opaqueCMSampleBuffer *)frame;
- (unint64_t)status;
- (void)_configureAssetWriter;
- (void)_configureEncoder;
- (void)_configureTimelapseAssetWriter;
- (void)_configureTimelapseEncoder;
- (void)_handleDecodedSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_notifyDelegateDidAnalyzeFragmentWithResult:(id)result;
- (void)_notifyDelegateDidAnalyzeFrameWithResult:(id)result;
- (void)_notifyDelegateDidCreateTimelapseFragment:(id)fragment;
- (void)_notifyDelegateDidFailWithError:(id)error;
- (void)_notifyDelegateDidProduceAnalysisStateUpdate:(id)update;
- (void)_prepareForInputVideoFormat:(opaqueCMFormatDescription *)format audioFormat:(opaqueCMFormatDescription *)audioFormat;
- (void)_prepareForTimelapseOutputVideoFormat:(opaqueCMFormatDescription *)format;
- (void)_produceResult:(SEL)result withArguments:(id)arguments;
- (void)_saveFragmentDataToDisk:(id)disk diskBufferSize:(unint64_t)size;
- (void)_updateDecoderAndEncodersForFragment:(id)fragment withConfiguration:(id)configuration;
- (void)_updateDecoderForFragment:(id)fragment decodeMode:(int64_t)mode;
- (void)_updateEncoder:(BOOL)encoder;
- (void)_updateTimelapseEncoder:(id *)encoder;
- (void)analyzeFragment:(id)fragment configuration:(id)configuration;
- (void)assetWriter:(id)writer didOutputInitializationSegment:(id)segment;
- (void)assetWriter:(id)writer didOutputSeparableSegment:(id)segment segmentReport:(id)report;
- (void)buffer:(id)buffer willHandleSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)bufferWillFlush:(id)flush;
- (void)dealloc;
- (void)decoder:(id)decoder didDecodeSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)encoder:(id)encoder didEncodeSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)encoder:(id)encoder didFailWithError:(id)error;
- (void)finishWithCompletionHandler:(id)handler;
- (void)flush;
- (void)flushAsync;
- (void)frameAnalyzer:(id)analyzer didAnalyzeFrame:(id)frame;
- (void)frameSampler:(id)sampler didSampleFrame:(opaqueCMSampleBuffer *)frame;
- (void)frameSelector:(id)selector didSelectFrame:(opaqueCMSampleBuffer *)frame reference:(opaqueCMSampleBuffer *)reference;
- (void)frameSelector:(id)selector didSkipFrame:(opaqueCMSampleBuffer *)frame;
- (void)frameTracker:(id)tracker didTrackFrame:(opaqueCMSampleBuffer *)frame background:(opaqueCMSampleBuffer *)background motionDetections:(id)detections tracks:(id)tracks;
- (void)handleMessageWithOptions:(id)options completionHandler:(id)handler;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer errorHandler:(id)handler;
- (void)setAnalysisFPS:(double)s;
- (void)setBoosted:(BOOL)boosted;
- (void)setDecodeMode:(int64_t)mode;
- (void)timerDidFire:(id)fire;
@end

@implementation HMIVideoAnalyzerServer

- (HMIVideoAnalyzerServer)initWithConfiguration:(id)configuration identifier:(id)identifier
{
  configurationCopy = configuration;
  v85.receiver = self;
  v85.super_class = HMIVideoAnalyzerServer;
  v7 = [(HMIVideoAnalyzer *)&v85 initWithConfiguration:configurationCopy identifier:identifier];
  if (v7)
  {
    v8 = +[HMIPreference sharedInstance];
    analysisQOS = [v8 analysisQOS];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, analysisQOS, 0);
    v12 = dispatch_queue_create("HMIVideoAnalyzerServer", v11);
    v13 = *(v7 + 21);
    *(v7 + 21) = v12;

    v14 = MEMORY[0x277CCACA8];
    identifier = [v7 identifier];
    v16 = [v14 stringWithFormat:@"HMIVideoAnalyzerServer(%@) - Input", identifier];
    uTF8String = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(uTF8String, v18);
    v20 = *(v7 + 20);
    *(v7 + 20) = v19;

    v21 = MEMORY[0x277CCACA8];
    identifier2 = [v7 identifier];
    v23 = [v21 stringWithFormat:@"HMIVideoAnalyzerServer(%@) - Encoder", identifier2];
    uTF8String2 = [v23 UTF8String];
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create(uTF8String2, v25);
    v27 = *(v7 + 22);
    *(v7 + 22) = v26;

    v28 = MEMORY[0x277CCACA8];
    identifier3 = [v7 identifier];
    v30 = [v28 stringWithFormat:@"HMIVideoAnalyzerServer(%@) - Boost", identifier3];
    uTF8String3 = [v30 UTF8String];
    v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v33 = dispatch_queue_attr_make_with_qos_class(v32, QOS_CLASS_USER_INTERACTIVE, 0);
    v34 = dispatch_queue_create(uTF8String3, v33);
    v35 = *(v7 + 16);
    *(v7 + 16) = v34;

    v7[137] = [configurationCopy transcode];
    *(v7 + 19) = [configurationCopy initialDecodeMode];
    v36 = [[HMIVideoCommandBuffer alloc] initWithMaxCapacity:0x800000];
    v37 = *(v7 + 27);
    *(v7 + 27) = v36;

    v38 = *(v7 + 27);
    inputQueue = [v7 inputQueue];
    [v38 setDelegate:v7 queue:inputQueue];

    v40 = [HMIVideoFrameSelector alloc];
    workQueue = [v7 workQueue];
    v42 = [(HMIVideoFrameSelector *)v40 initWithConfiguration:configurationCopy workQueue:workQueue];
    v43 = *(v7 + 33);
    *(v7 + 33) = v42;

    [*(v7 + 33) setDelegate:v7];
    v44 = [HMIVideoFrameTracker alloc];
    workQueue2 = [v7 workQueue];
    v46 = [(HMIVideoFrameTracker *)v44 initWithConfiguration:configurationCopy workQueue:workQueue2];
    v47 = *(v7 + 34);
    *(v7 + 34) = v46;

    [*(v7 + 34) setDelegate:v7];
    v48 = [HMIVideoFrameAnalyzer alloc];
    workQueue3 = [v7 workQueue];
    v50 = [(HMIVideoFrameAnalyzer *)v48 initWithConfiguration:configurationCopy workQueue:workQueue3];
    v51 = *(v7 + 35);
    *(v7 + 35) = v50;

    [*(v7 + 35) setDelegate:v7];
    v52 = objc_alloc_init(HMIVideoTemporalEventFilter);
    v53 = *(v7 + 43);
    *(v7 + 43) = v52;

    if (configurationCopy)
    {
      [configurationCopy thumbnailInterval];
      if ((v83 & 0x100000000) != 0)
      {
        v54 = [HMIVideoFrameIntervalSampler alloc];
        [configurationCopy thumbnailInterval];
        v55 = [(HMIVideoFrameIntervalSampler *)v54 initWithInterval:v81];
        v56 = *(v7 + 29);
        *(v7 + 29) = v55;

        [*(v7 + 29) setDelegate:v7];
      }

      [configurationCopy timelapseInterval];
      if (v80)
      {
        v57 = [HMIVideoFrameIntervalSampler alloc];
        [configurationCopy timelapseInterval];
        v58 = [(HMIVideoFrameIntervalSampler *)v57 initWithInterval:v81];
        v59 = *(v7 + 30);
        *(v7 + 30) = v58;

        [*(v7 + 30) setDelegate:v7];
      }
    }

    else
    {
      v82 = 0;
      v83 = 0;
      v84 = 0;
    }

    v60 = [[HMIVideoEventBuffer alloc] initWithMaxCapacity:1024];
    v61 = *(v7 + 38);
    *(v7 + 38) = v60;

    v62 = [[HMIVideoEventBuffer alloc] initWithMaxCapacity:1024];
    v63 = *(v7 + 39);
    *(v7 + 39) = v62;

    v64 = [[HMIVideoEventBuffer alloc] initWithMaxCapacity:64];
    v65 = *(v7 + 42);
    *(v7 + 42) = v64;

    v66 = MEMORY[0x277CC08F0];
    v67 = *MEMORY[0x277CC08F0];
    *(v7 + 376) = *MEMORY[0x277CC08F0];
    v68 = *(v66 + 16);
    *(v7 + 49) = v68;
    *(v7 + 25) = v67;
    *(v7 + 52) = v68;
    v69 = [[HMIVideoTimeline alloc] initWithMaxCapacity:1024];
    v70 = *(v7 + 44);
    *(v7 + 44) = v69;

    [configurationCopy analysisFPS];
    *(v7 + 18) = v71;
    [configurationCopy analysisFPS];
    [*(v7 + 33) setSampleRate:v72 * 3.0];
    *(v7 + 11) = 0;
    *(v7 + 12) = 0;
    *(v7 + 13) = 0;
    *(v7 + 14) = 0;
    *(v7 + 15) = 0;
    v7[136] = 1;
    v7[139] = 0;
    v7[140] = 0;
    v73 = [MEMORY[0x277CBEAA8] now];
    v74 = *(v7 + 45);
    *(v7 + 45) = v73;

    v75 = [MEMORY[0x277CBEAA8] now];
    v76 = *(v7 + 46);
    *(v7 + 46) = v75;

    v77 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:12 options:30.0];
    v78 = *(v7 + 26);
    *(v7 + 26) = v77;

    [*(v7 + 26) setDelegate:v7];
    [*(v7 + 26) resume];
  }

  return v7;
}

- (id)dynamicConfigurationForTime:(id *)time
{
  v19 = *MEMORY[0x277D85DE8];
  dynamicConfigurationBuffer = self->_dynamicConfigurationBuffer;
  start = **&MEMORY[0x277CC08F0];
  v16 = *time;
  CMTimeRangeFromTimeToTime(&v18, &start, &v16);
  v6 = [(HMIVideoEventBuffer *)dynamicConfigurationBuffer objectsInTimeRange:&v18 includeEnd:1];
  lastObject = [v6 lastObject];
  value = [lastObject value];

  if (!value)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *&v18.start.value = *&time->var0;
      v18.start.epoch = time->var3;
      v13 = HMICMTimeDescription(&v18.start);
      LODWORD(v18.start.value) = 138543618;
      *(&v18.start.value + 4) = v12;
      LOWORD(v18.start.flags) = 2112;
      *(&v18.start.flags + 2) = v13;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Dynamic configuration is missing for time: %@, using the first instead.", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    firstObject = [(HMIVideoEventBuffer *)self->_dynamicConfigurationBuffer firstObject];
    value = [firstObject value];
  }

  return value;
}

- (void)handleMessageWithOptions:(id)options completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v11;
    v30 = 2112;
    v31 = optionsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Received Message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(NSString *)optionsCopy objectForKeyedSubscript:@"selector"];
  v13 = [(NSString *)optionsCopy objectForKeyedSubscript:@"arguments"];
  v14 = NSSelectorFromString(v12);
  if (v14 == sel_flush)
  {
    [(HMIVideoAnalyzerServer *)selfCopy flush];
  }

  else if (v14 == sel_flushAsync)
  {
    [(HMIVideoAnalyzerServer *)selfCopy flushAsync];
  }

  else
  {
    if (v14 == sel_finishWithCompletionHandler_)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __69__HMIVideoAnalyzerServer_handleMessageWithOptions_completionHandler___block_invoke;
      v25[3] = &unk_278755D98;
      v27 = handlerCopy;
      v25[4] = selfCopy;
      v26 = optionsCopy;
      [(HMIVideoAnalyzerServer *)selfCopy finishWithCompletionHandler:v25];

      goto LABEL_29;
    }

    if (v14 == sel_cancel)
    {
      [(HMIVideoAnalyzerServer *)selfCopy cancel];
    }

    else
    {
      if (v14 == sel_setAnalysisFPS_)
      {
        v19 = [v13 objectAtIndexedSubscript:0];
        [v19 doubleValue];
        [(HMIVideoAnalyzerServer *)selfCopy setAnalysisFPS:?];
      }

      else if (v14 == sel_setMonitored_)
      {
        v19 = [v13 objectAtIndexedSubscript:0];
        -[HMIVideoAnalyzerServer setMonitored:](selfCopy, "setMonitored:", [v19 BOOLValue]);
      }

      else if (v14 == sel_setDecodeMode_)
      {
        v19 = [v13 objectAtIndexedSubscript:0];
        -[HMIVideoAnalyzerServer setDecodeMode:](selfCopy, "setDecodeMode:", [v19 integerValue]);
      }

      else if (v14 == sel_setBoosted_)
      {
        v19 = [v13 objectAtIndexedSubscript:0];
        -[HMIVideoAnalyzerServer setBoosted:](selfCopy, "setBoosted:", [v19 BOOLValue]);
      }

      else
      {
        if (v14 != sel_analyzeFragment_configuration_)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = selfCopy;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543618;
            v29 = v18;
            v30 = 2112;
            v31 = v12;
            _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unknown %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          goto LABEL_25;
        }

        v19 = [v13 objectAtIndexedSubscript:0];
        v20 = [v13 objectAtIndexedSubscript:1];
        [(HMIVideoAnalyzerServer *)selfCopy analyzeFragment:v19 configuration:v20];
      }
    }
  }

LABEL_25:
  if (handlerCopy)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v24;
      v30 = 2112;
      v31 = optionsCopy;
      _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Sent Message Reply: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

LABEL_29:
}

void __69__HMIVideoAnalyzerServer_handleMessageWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 48))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Sent Message Reply: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 48) + 16))();
  }
}

- (void)analyzeFragment:(id)fragment configuration:(id)configuration
{
  v82 = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  configurationCopy = configuration;
  v7 = [MEMORY[0x277CBEAA8] now];
  [(HMIVideoAnalyzerServer *)self setLastFragmentReceivedDate:v7];

  data = [fragmentCopy data];
  v8 = +[HMIPreference sharedInstance];
  v9 = [v8 hasPreferenceForKey:@"eventTriggers"];

  if (v9)
  {
    v10 = +[HMIPreference sharedInstance];
    v11 = [v10 numberPreferenceForKey:@"eventTriggers"];
    [configurationCopy setEventTriggers:{objc_msgSend(v11, "integerValue")}];
  }

  v12 = +[HMIPreference sharedInstance];
  v13 = [v12 numberPreferenceForKey:@"fragmentDiskBufferSize" defaultValue:&unk_284075450];
  integerValue = [v13 integerValue];

  if (integerValue)
  {
    [(HMIVideoAnalyzerServer *)self _saveFragmentDataToDisk:data diskBufferSize:integerValue << 20];
  }

  if (fragmentCopy)
  {
    [fragmentCopy duration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  configuration = [(HMIVideoAnalyzer *)self configuration];
  v16 = configuration;
  if (configuration)
  {
    [configuration maxFragmentDuration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  v17 = CMTimeCompare(&time1, &time2) > 0;

  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = MEMORY[0x277CCACA8];
  if (fragmentCopy)
  {
    [fragmentCopy duration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  Seconds = CMTimeGetSeconds(&time1);
  configuration2 = [(HMIVideoAnalyzer *)self configuration];
  v21 = configuration2;
  if (configuration2)
  {
    [configuration2 maxFragmentDuration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v22 = [v18 stringWithFormat:@"Video fragment duration: %fs is greater than the max fragment duration value: %fs", *&Seconds, CMTimeGetSeconds(&time1)];

  if (+[HMIPreference isInternalInstall])
  {
    sanitizedData = [fragmentCopy sanitizedData];
    v60 = [sanitizedData base64EncodedDataWithOptions:0];

    v59 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v60 encoding:4];
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v55 = HMFGetLogIdentifier();
      configuration3 = [(HMIVideoAnalyzer *)selfCopy configuration];
      camera = [configuration3 camera];
      manufacturer = [camera manufacturer];
      configuration4 = [(HMIVideoAnalyzer *)selfCopy configuration];
      camera2 = [configuration4 camera];
      model = [camera2 model];
      LODWORD(time1.value) = 138544386;
      *(&time1.value + 4) = v55;
      LOWORD(time1.flags) = 2112;
      *(&time1.flags + 2) = manufacturer;
      HIWORD(time1.epoch) = 2112;
      v77 = model;
      v78 = 2112;
      v79 = fragmentCopy;
      v80 = 2112;
      v81 = v59;
      _os_log_impl(&dword_22D12F000, v25, OS_LOG_TYPE_ERROR, "%{public}@Camera, Manufacturer: %@, Model: %@, Fragment: %@, Sanitized Fragment Data: %@", &time1, 0x34u);
    }

    objc_autoreleasePoolPop(context);
  }

  v30 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:4 description:v22];

  if (!v30)
  {
LABEL_24:
    decodeMode = [(HMIVideoAnalyzerServer *)self decodeMode];
    encode = [(HMIVideoAnalyzerServer *)self encode];
    [configurationCopy setDecodeMode:decodeMode];
    [configurationCopy setShouldEncode:encode & (decodeMode != 0)];
    v35 = MEMORY[0x277CC0898];
    if (decodeMode)
    {
      configuration5 = [(HMIVideoAnalyzer *)self configuration];
      v37 = configuration5;
      if (configuration5)
      {
        [configuration5 timelapseInterval];
      }

      else
      {
        memset(&location[1], 0, 24);
      }

      time1 = *&location[1];
      [configurationCopy setTimelapseInterval:&time1];
    }

    else
    {
      *&location[1] = *MEMORY[0x277CC0898];
      location[3] = *(MEMORY[0x277CC0898] + 16);
      time1 = *&location[1];
      [configurationCopy setTimelapseInterval:&time1];
    }

    dynamicConfigurationBuffer = [(HMIVideoAnalyzerServer *)self dynamicConfigurationBuffer];
    v39 = [HMIVideoEventEntry alloc];
    p_currentDTS = &self->_currentDTS;
    time1 = self->_currentDTS;
    v41 = [(HMIVideoEventEntry *)v39 initWithValue:configurationCopy time:&time1];
    [dynamicConfigurationBuffer addObject:v41];

    objc_initWeak(location, self);
    commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __56__HMIVideoAnalyzerServer_analyzeFragment_configuration___block_invoke_2;
    v65[3] = &unk_278752AC0;
    objc_copyWeak(&v68, location);
    v43 = fragmentCopy;
    v66 = v43;
    v67 = configurationCopy;
    [commandBuffer handleBlock:v65];

    v44 = [[HMIMemoryAVAsset alloc] initWithData:data];
    [(HMIMemoryAVAsset *)v44 loadValuesSynchronously];
    videoFormatDescription = [v43 videoFormatDescription];
    configuration6 = [(HMIVideoAnalyzer *)self configuration];
    if ([configuration6 passthroughAudio])
    {
      v47 = [v43 audioFormatDescription] != 0;
    }

    else
    {
      v47 = 0;
    }

    v48 = [[HMIVideoAssetReader alloc] initWithAsset:v44 readVideoTrack:videoFormatDescription != 0 readAudioTrack:v47];
    *&time1.value = *&p_currentDTS->value;
    time1.epoch = self->_currentDTS.epoch;
    value = *v35;
    flags = *(v35 + 12);
    timescale = *(v35 + 8);
    epoch = *(v35 + 16);
    while (1)
    {
      copyNextSampleBuffer = [(HMIVideoAssetReader *)v48 copyNextSampleBuffer];
      v52 = copyNextSampleBuffer;
      if (!copyNextSampleBuffer)
      {
        break;
      }

      time2 = time1;
      v53 = HMICMSampleBufferCreateCopyWithTimingOffset(copyNextSampleBuffer, &time2);
      if (HMICMSampleBufferIsVideo(v52))
      {
        CMSampleBufferGetDuration(&time2, v52);
        value = time2.value;
        flags = time2.flags;
        timescale = time2.timescale;
        epoch = time2.epoch;
      }

      CFRelease(v52);
      [(HMIVideoAnalyzerServer *)self handleSampleBuffer:v53 errorHandler:0];
      CFRelease(v53);
    }

    if (flags)
    {
      *&lhs.value = *&p_currentDTS->value;
      lhs.epoch = self->_currentDTS.epoch;
      rhs.value = value;
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      CMTimeAdd(&time2, &lhs, &rhs);
      *&p_currentDTS->value = *&time2.value;
      self->_currentDTS.epoch = time2.epoch;
      if ([(HMIVideoNode *)v48 status]!= 4)
      {
LABEL_43:

        objc_destroyWeak(&v68);
        objc_destroyWeak(location);
        goto LABEL_44;
      }

      error = [(HMIVideoNode *)v48 error];
      [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:error];
    }

    else
    {
      error = [MEMORY[0x277CCA9B8] hmiErrorWithCode:4 description:{@"Fragment had no video samples, fragment is likely corrupted."}];
      [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:error];
    }

    goto LABEL_43;
  }

  objc_initWeak(&time1, self);
  commandBuffer2 = [(HMIVideoAnalyzerServer *)self commandBuffer];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __56__HMIVideoAnalyzerServer_analyzeFragment_configuration___block_invoke;
  v70[3] = &unk_278752BB0;
  objc_copyWeak(&v72, &time1);
  v32 = v30;
  v71 = v32;
  [commandBuffer2 handleBlock:v70];

  objc_destroyWeak(&v72);
  objc_destroyWeak(&time1);

LABEL_44:
}

void __56__HMIVideoAnalyzerServer_analyzeFragment_configuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _notifyDelegateDidFailWithError:*(a1 + 32)];
}

uint64_t __56__HMIVideoAnalyzerServer_analyzeFragment_configuration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v4 = [*(a1 + 32) videoFormatDescription];
    v5 = [v8 configuration];
    if ([v5 passthroughAudio])
    {
      v6 = [*(a1 + 32) audioFormatDescription];
    }

    else
    {
      v6 = 0;
    }

    [v8 _prepareForInputVideoFormat:v4 audioFormat:v6];

    WeakRetained = [v8 _updateDecoderAndEncodersForFragment:*(a1 + 32) withConfiguration:*(a1 + 40)];
    v3 = v8;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer errorHandler:(id)handler
{
  if (HMICMSampleBufferIsAudio(buffer))
  {
    commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
    [commandBuffer handleSampleBuffer:buffer];
  }

  else if (CMSampleBufferGetImageBuffer(buffer))
  {

    [(HMIVideoAnalyzerServer *)self _handleDecodedSampleBuffer:buffer];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
    CMSampleBufferGetDecodeTimeStamp(&v11, buffer);
    self->_currentDTS = v11;
    timeline = [(HMIVideoAnalyzerServer *)self timeline];
    v7 = [MEMORY[0x277CBEAA8] now];
    CMSampleBufferGetPresentationTimeStamp(&v10, buffer);
    [timeline addDate:v7 atTime:&v10];

    commandBuffer2 = [(HMIVideoAnalyzerServer *)self commandBuffer];
    [commandBuffer2 handleSampleBuffer:buffer];
  }
}

- (void)flush
{
  commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
  [commandBuffer flush];
}

- (void)flushAsync
{
  commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
  [commandBuffer flushAsync];
}

- (void)finishWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Finish Analyzer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  commandBuffer = [(HMIVideoAnalyzerServer *)selfCopy commandBuffer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__HMIVideoAnalyzerServer_finishWithCompletionHandler___block_invoke;
  v11[3] = &unk_278752DF8;
  v11[4] = selfCopy;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [commandBuffer handleBlock:v11];
}

void __54__HMIVideoAnalyzerServer_finishWithCompletionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) inputQueue];
  dispatch_assert_queue_V2(v2);

  if ([*(a1 + 32) hasFailed])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Analyzer has failed, ignoring finish.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) state];
    [HMIAnalytics videoAnalyzerDidTerminateWithError:0 state:v7];

    v8 = [*(a1 + 32) timelapseAssetWriter];

    if (v8)
    {
      v9 = [*(a1 + 32) timelapseEncoder];
      [v9 flush];

      v11 = [*(a1 + 32) timelapseAssetWriter];
      [v11 finishWithCompletionHandler:*(a1 + 40)];
    }

    else
    {
      v10 = *(*(a1 + 40) + 16);

      v10();
    }
  }
}

- (void)_saveFragmentDataToDisk:(id)disk diskBufferSize:(unint64_t)size
{
  diskCopy = disk;
  configuration = [(HMIVideoAnalyzer *)self configuration];
  camera = [configuration camera];
  name = [camera name];
  v8 = name;
  v9 = @"Unknown";
  if (name)
  {
    v9 = name;
  }

  v44 = v9;

  v41 = MEMORY[0x277CCACA8];
  configuration2 = [(HMIVideoAnalyzer *)self configuration];
  camera2 = [configuration2 camera];
  manufacturer = [camera2 manufacturer];
  v11 = manufacturer;
  if (manufacturer)
  {
    v12 = manufacturer;
  }

  else
  {
    v12 = @"UnknownManufacturer";
  }

  configuration3 = [(HMIVideoAnalyzer *)self configuration];
  camera3 = [configuration3 camera];
  model = [camera3 model];
  v16 = model;
  if (model)
  {
    v17 = model;
  }

  else
  {
    v17 = @"UnknownModel";
  }

  configuration4 = [(HMIVideoAnalyzer *)self configuration];
  camera4 = [configuration4 camera];
  firmwareVersion = [camera4 firmwareVersion];
  v21 = firmwareVersion;
  v22 = @"UnknownFirmware";
  if (firmwareVersion)
  {
    v22 = firmwareVersion;
  }

  v23 = [v41 stringWithFormat:@"%@_%@_%@", v12, v17, v22];

  v24 = [v23 stringByReplacingOccurrencesOfString:@" " withString:@"-"];

  v25 = NSTemporaryDirectory();
  v26 = [v25 stringByAppendingPathComponent:v44];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createDirectoryAtPath:v26 withIntermediateDirectories:1 attributes:0 error:0];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __65__HMIVideoAnalyzerServer__saveFragmentDataToDisk_diskBufferSize___block_invoke;
  v47[3] = &unk_278755DE8;
  v47[4] = self;
  v48 = v26;
  v49 = diskCopy;
  sizeCopy = size;
  v28 = diskCopy;
  v29 = v26;
  v30 = MEMORY[0x2318CB8E0](v47);
  v31 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v31 setDateFormat:@"YYYY-MM-dd-HH-mm-ss"];
  v32 = MEMORY[0x277CCACA8];
  startDate = [(HMIVideoAnalyzerServer *)self startDate];
  v34 = [v31 stringFromDate:startDate];
  identifier = [(HMIVideoAnalyzer *)self identifier];
  v36 = [v32 stringWithFormat:@"%@_%@_%@", v34, identifier, v24];

  v37 = [v29 stringByAppendingPathComponent:v36];
  v38 = [v37 stringByAppendingPathExtension:@"mp4"];

  (v30)[2](v30, v38, 0);
  v39 = [v29 stringByAppendingPathComponent:v36];
  v40 = [v39 stringByAppendingPathExtension:@"sanitized.mp4"];

  (v30)[2](v30, v40, 1);
}

void __65__HMIVideoAnalyzerServer__saveFragmentDataToDisk_diskBufferSize___block_invoke(uint64_t a1, void *a2, char a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = v8;
  if (!v7)
  {
    v50 = a3;
    v52 = v5;
    v18 = [v8 enumeratorAtPath:*(a1 + 40)];

    v10 = [MEMORY[0x277CBEB18] array];
    v53 = [MEMORY[0x277CBEB38] dictionary];
    v19 = [v18 nextObject];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      do
      {
        [v10 addObject:v20];
        v22 = [MEMORY[0x277CCAA00] defaultManager];
        v23 = [*(a1 + 40) stringByAppendingPathComponent:v20];
        v60 = 0;
        v24 = [v22 attributesOfItemAtPath:v23 error:&v60];

        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v24, "fileSize")}];
        [v53 setObject:v25 forKeyedSubscript:v20];

        v21 += [v24 fileSize];
        v26 = [v18 nextObject];

        v20 = v26;
      }

      while (v26);
    }

    else
    {
      v21 = 0;
    }

    v51 = v18;
    v27 = *(a1 + 56);
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = v27 - v21;
      v32 = HMFGetLogIdentifier();
      v33 = v32;
      v34 = *(a1 + 40);
      v35 = v31 + 0xFFFFF;
      *buf = 138543874;
      if (v31 >= 0)
      {
        v35 = v31;
      }

      v63 = v32;
      v64 = 2112;
      v65 = v34;
      v66 = 2048;
      v67 = v35 >> 20;
      _os_log_impl(&dword_22D12F000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Disk buffer size remaining in %@, %ld MB", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    v36 = v53;
    if (([v10 hmf_isEmpty] & 1) == 0)
    {
      v54 = v10;
      do
      {
        if (v21 < *(a1 + 56))
        {
          break;
        }

        v37 = [v10 firstObject];
        [v10 hmf_removeFirstObject];
        v38 = [*(a1 + 40) stringByAppendingPathComponent:v37];
        v39 = [MEMORY[0x277CCAA00] defaultManager];
        v59 = 0;
        [v39 removeItemAtPath:v38 error:&v59];
        v40 = v59;

        v41 = [v36 objectForKeyedSubscript:v37];
        v42 = [v41 integerValue];

        v43 = objc_autoreleasePoolPush();
        v44 = *(a1 + 32);
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543874;
          v63 = v46;
          v64 = 2112;
          v65 = v38;
          v66 = 2112;
          v67 = v40;
          _os_log_impl(&dword_22D12F000, v45, OS_LOG_TYPE_DEBUG, "%{public}@Deleted %@ to free up some space, error: %@", buf, 0x20u);

          v36 = v53;
        }

        v21 -= v42;

        objc_autoreleasePoolPop(v43);
        v10 = v54;
      }

      while (![v54 hmf_isEmpty]);
    }

    v11 = v51;
    v5 = v52;
    a3 = v50;
    goto LABEL_22;
  }

  v61 = 0;
  v10 = [v8 attributesOfItemAtPath:v5 error:&v61];
  v11 = v61;

  v12 = [v10 fileSize];
  v13 = *(a1 + 56);
  if (v12 <= v13 >> 3)
  {
LABEL_22:

    v47 = *(a1 + 48);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __65__HMIVideoAnalyzerServer__saveFragmentDataToDisk_diskBufferSize___block_invoke_335;
    v55[3] = &unk_278755DC0;
    v48 = v5;
    v58 = a3;
    v49 = *(a1 + 32);
    v56 = v48;
    v57 = v49;
    [HMIVideoFragment fragmentData:v47 handler:v55];
    v11 = v56;
    goto LABEL_23;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 32);
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543874;
    v63 = v17;
    v64 = 2112;
    v65 = v5;
    v66 = 2048;
    v67 = v13 >> 23;
    _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Video file %@ size is too large, maximum allowed is (%ld MB), no longer appending fragments.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
LABEL_23:
}

void __65__HMIVideoAnalyzerServer__saveFragmentDataToDisk_diskBufferSize___block_invoke_335(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    [v4 seekToEndOfFile];
    if (*(a1 + 48) == 1)
    {
      [v3 sanitizedSeperableSegment];
    }

    else
    {
      [v3 separableSegment];
    }
    v6 = ;
    [v5 writeData:v6];

    [v5 closeFile];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v12 = "%{public}@Appending fragment to %@";
LABEL_12:
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_DEBUG, v12, &v15, 0x16u);
    }
  }

  else
  {
    if (*(a1 + 48) == 1)
    {
      [v3 sanitizedData];
    }

    else
    {
      [v3 data];
    }
    v13 = ;
    [v13 writeToFile:*(a1 + 32) atomically:1];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v14 = *(a1 + 32);
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v14;
      v12 = "%{public}@Saving fragment to %@";
      goto LABEL_12;
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)_prepareForInputVideoFormat:(opaqueCMFormatDescription *)format audioFormat:(opaqueCMFormatDescription *)audioFormat
{
  v18 = *MEMORY[0x277D85DE8];
  if (![(HMIVideoAnalyzerServer *)self inputVideoFormat])
  {
    self->_inputVideoFormat = format;
    if (format)
    {
      CFRetain(format);
    }
  }

  if (!CMFormatDescriptionEqual(format, [(HMIVideoAnalyzerServer *)self inputVideoFormat]))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Video format should not change.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  if (![(HMIVideoAnalyzerServer *)self inputAudioFormat])
  {
    self->_inputAudioFormat = audioFormat;
    if (audioFormat)
    {
      CFRetain(audioFormat);
    }
  }

  if (!CMFormatDescriptionEqual(audioFormat, [(HMIVideoAnalyzerServer *)self inputAudioFormat]))
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Audio format should not change.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  assetWriter = [(HMIVideoAnalyzerServer *)self assetWriter];

  if (!assetWriter)
  {
    [(HMIVideoAnalyzerServer *)self _configureAssetWriter];
  }
}

- (void)_prepareForTimelapseOutputVideoFormat:(opaqueCMFormatDescription *)format
{
  if (!CMFormatDescriptionEqual(format, [(HMIVideoAnalyzerServer *)self timelapseOutputVideoFormat]))
  {
    timelapseOutputVideoFormat = self->_timelapseOutputVideoFormat;
    if (timelapseOutputVideoFormat)
    {
      CFRelease(timelapseOutputVideoFormat);
    }

    self->_timelapseOutputVideoFormat = CFRetain(format);

    [(HMIVideoAnalyzerServer *)self _configureTimelapseAssetWriter];
  }
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_DEBUG, "%{public}@[HMIVideoAnalyzerServer dealloc]", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  inputVideoFormat = selfCopy->_inputVideoFormat;
  if (inputVideoFormat)
  {
    CFRelease(inputVideoFormat);
  }

  inputAudioFormat = selfCopy->_inputAudioFormat;
  if (inputAudioFormat)
  {
    CFRelease(inputAudioFormat);
  }

  timelapseOutputVideoFormat = selfCopy->_timelapseOutputVideoFormat;
  if (timelapseOutputVideoFormat)
  {
    CFRelease(timelapseOutputVideoFormat);
  }

  v10.receiver = selfCopy;
  v10.super_class = HMIVideoAnalyzerServer;
  [(HMIVideoAnalyzer *)&v10 dealloc];
}

- (void)_configureAssetWriter
{
  assetWriter = [(HMIVideoAnalyzerServer *)self assetWriter];

  if (assetWriter)
  {
    _configureAssetWriter = [HMIVideoAnalyzerServer _configureAssetWriter];
    [(HMIVideoAnalyzerServer *)_configureAssetWriter _configureTimelapseAssetWriter];
  }

  else
  {
    v4 = [[HMIVideoAssetWriter alloc] initWithVideoFormat:[(HMIVideoAnalyzerServer *)self inputVideoFormat] audioFormat:[(HMIVideoAnalyzerServer *)self inputAudioFormat]];
    [(HMIVideoAnalyzerServer *)self setAssetWriter:v4];

    logIdentifier = [(HMIVideoAnalyzer *)self logIdentifier];
    assetWriter2 = [(HMIVideoAnalyzerServer *)self assetWriter];
    [assetWriter2 setLogIdentifier:logIdentifier];

    assetWriter3 = [(HMIVideoAnalyzerServer *)self assetWriter];
    [assetWriter3 setDelegate:self];
  }
}

- (void)_configureTimelapseAssetWriter
{
  if ([(HMIVideoAnalyzerServer *)self timelapseOutputVideoFormat])
  {
    v3 = [HMIVideoAssetWriter alloc];
    timelapseOutputVideoFormat = [(HMIVideoAnalyzerServer *)self timelapseOutputVideoFormat];
    configuration = [(HMIVideoAnalyzer *)self configuration];
    v6 = configuration;
    if (configuration)
    {
      [configuration timelapsePreferredFragmentDuration];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    v7 = [(HMIVideoAssetWriter *)v3 initWithVideoFormat:timelapseOutputVideoFormat audioFormat:0 initialFragmentSequenceNumber:1 preferredOutputSegmentInterval:v15];
    [(HMIVideoAnalyzerServer *)self setTimelapseAssetWriter:v7];

    timelapseAssetWriter = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];
    [timelapseAssetWriter setDelegate:self];

    identifier = [(HMIVideoAnalyzer *)self identifier];
    uUIDString = [identifier UUIDString];
    v11 = [uUIDString stringByAppendingString:@" Timelapse"];
    timelapseAssetWriter2 = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];
    [timelapseAssetWriter2 setLogIdentifier:v11];
  }

  else
  {
    _configureTimelapseAssetWriter = [HMIVideoAnalyzerServer _configureTimelapseAssetWriter];
    [(HMIVideoAnalyzerServer *)_configureTimelapseAssetWriter _configureEncoder];
  }
}

- (void)_configureEncoder
{
  if (!self->_encode)
  {
    [HMIVideoAnalyzerServer _configureEncoder];
    goto LABEL_9;
  }

  encoder = [(HMIVideoAnalyzerServer *)self encoder];

  if (encoder)
  {
LABEL_9:
    [HMIVideoAnalyzerServer _configureEncoder];
    goto LABEL_10;
  }

  if (![(HMIVideoAnalyzerServer *)self inputVideoFormat])
  {
LABEL_10:
    _configureEncoder = [HMIVideoAnalyzerServer _configureEncoder];
    [(HMIVideoAnalyzerServer *)_configureEncoder _configureTimelapseEncoder];
    return;
  }

  v4 = [HMIVideoEncoder alloc];
  Dimensions = CMVideoFormatDescriptionGetDimensions([(HMIVideoAnalyzerServer *)self inputVideoFormat]);
  configuration = [(HMIVideoAnalyzer *)self configuration];
  v18 = 0;
  v7 = -[HMIVideoEncoder initWithDimensions:codecType:useHardwareAcceleration:error:](v4, "initWithDimensions:codecType:useHardwareAcceleration:error:", Dimensions, [configuration transcodeCodecType], 1, &v18);
  v8 = v18;
  [(HMIVideoAnalyzerServer *)self setEncoder:v7];

  encoder2 = [(HMIVideoAnalyzerServer *)self encoder];

  if (encoder2)
  {
    logIdentifier = [(HMIVideoAnalyzer *)self logIdentifier];
    encoder3 = [(HMIVideoAnalyzerServer *)self encoder];
    [encoder3 setLogIdentifier:logIdentifier];

    encoder4 = [(HMIVideoAnalyzerServer *)self encoder];
    [encoder4 setAverageBitRate:1000000];

    encoder5 = [(HMIVideoAnalyzerServer *)self encoder];
    [encoder5 setDataRateLimit:{0x80000, 4}];

    encoder6 = [(HMIVideoAnalyzerServer *)self encoder];
    encoderQueue = [(HMIVideoAnalyzerServer *)self encoderQueue];
    [encoder6 setDelegate:self queue:encoderQueue];
  }

  else
  {
    [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:v8];
  }
}

- (void)_configureTimelapseEncoder
{
  v32 = *MEMORY[0x277D85DE8];
  timelapseEncoder = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

  if (timelapseEncoder)
  {
    [HMIVideoAnalyzerServer _configureTimelapseEncoder];
LABEL_25:
    [HMIVideoAnalyzerServer _configureEncoder];
  }

  if (![(HMIVideoAnalyzerServer *)self inputVideoFormat])
  {
    goto LABEL_25;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions([(HMIVideoAnalyzerServer *)self inputVideoFormat]);
  v5 = Dimensions;
  v6 = HIDWORD(Dimensions);
  v7 = HMIAspectRatioMake(Dimensions, HIDWORD(Dimensions));
  if (HMIAspectRatioEqualToAspectRatio(v7, 0x900000010))
  {
    v8 = 0x1B000000000;
    v9 = 768;
    goto LABEL_10;
  }

  if (HMIAspectRatioEqualToAspectRatio(v7, 0x1000000009))
  {
    v8 = 0x30000000000;
LABEL_7:
    v9 = 432;
    goto LABEL_10;
  }

  if (HMIAspectRatioEqualToAspectRatio(v7, 0x300000004))
  {
    v8 = 0x1B000000000;
    v9 = 576;
  }

  else
  {
    if (HMIAspectRatioEqualToAspectRatio(v7, 0x400000003))
    {
      v8 = 0x24000000000;
      goto LABEL_7;
    }

    if (HMIAspectRatioEqualToAspectRatio(v7, 0x100000001))
    {
      v8 = 0x1B000000000;
      goto LABEL_7;
    }

    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      LODWORD(time.value) = 138543874;
      *(&time.value + 4) = v28;
      LOWORD(time.flags) = 1024;
      *(&time.flags + 2) = v7;
      WORD1(time.epoch) = 1024;
      HIDWORD(time.epoch) = HIDWORD(v7);
      _os_log_impl(&dword_22D12F000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unsupported aspect ratio: (%d, %d)", &time, 0x18u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = 432.0 / v6;
    v9 = (v29 * v5);
    v8 = (v29 * v6) << 32;
  }

LABEL_10:
  v10 = [HMIVideoEncoder alloc];
  configuration = [(HMIVideoAnalyzer *)self configuration];
  v30 = 0;
  v12 = -[HMIVideoEncoder initWithDimensions:codecType:useHardwareAcceleration:error:](v10, "initWithDimensions:codecType:useHardwareAcceleration:error:", v9 | v8, [configuration timelapseCodecType], 1, &v30);
  v13 = v30;
  [(HMIVideoAnalyzerServer *)self setTimelapseEncoder:v12];

  logIdentifier = [(HMIVideoAnalyzer *)self logIdentifier];
  v15 = [logIdentifier stringByAppendingString:@" Timelapse"];
  timelapseEncoder2 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
  [timelapseEncoder2 setLogIdentifier:v15];

  timelapseEncoder3 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
  [timelapseEncoder3 setAverageBitRate:100000];

  timelapseEncoder4 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

  if (timelapseEncoder4)
  {
    configuration2 = [(HMIVideoAnalyzer *)self configuration];
    v20 = configuration2;
    if (configuration2)
    {
      [configuration2 timelapsePreferredFragmentDuration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    timelapseEncoder5 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
    [timelapseEncoder5 setMaxKeyFrameIntervalDuration:Seconds];

    timelapseEncoder6 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
    encoderQueue = [(HMIVideoAnalyzerServer *)self encoderQueue];
    [timelapseEncoder6 setDelegate:self queue:encoderQueue];
  }

  else
  {
    [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:v13];
  }
}

- (void)buffer:(id)buffer willHandleSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  v20 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  inputQueue = [(HMIVideoAnalyzerServer *)self inputQueue];
  dispatch_assert_queue_V2(inputQueue);

  if (![(HMIVideoAnalyzerServer *)self hasFailed]&& ![(HMIVideoAnalyzerServer *)self isCancelled])
  {
    if (HMICMSampleBufferIsAudio(sampleBuffer))
    {
      assetWriter = [(HMIVideoAnalyzerServer *)self assetWriter];

      if (assetWriter)
      {
        assetWriter2 = [(HMIVideoAnalyzerServer *)self assetWriter];
        [assetWriter2 handleSampleBuffer:sampleBuffer];
        goto LABEL_15;
      }

      [HMIVideoAnalyzerServer buffer:willHandleSampleBuffer:];
LABEL_18:
      [HMIVideoAnalyzerServer buffer:willHandleSampleBuffer:];
    }

    encoder = [(HMIVideoAnalyzerServer *)self encoder];

    if (!encoder)
    {
      assetWriter3 = [(HMIVideoAnalyzerServer *)self assetWriter];

      if (!assetWriter3)
      {
        goto LABEL_18;
      }

      assetWriter4 = [(HMIVideoAnalyzerServer *)self assetWriter];
      [assetWriter4 handleSampleBuffer:sampleBuffer];
    }

    CMSampleBufferGetPresentationTimeStamp(&v19, sampleBuffer);
    v17 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:&v19];
    decodeMode = [v17 decodeMode];

    if (decodeMode == 1 && !HMICMSampleBufferIsSync(sampleBuffer))
    {
      goto LABEL_16;
    }

    assetWriter2 = [(HMIVideoAnalyzerServer *)self decoder];
    [assetWriter2 handleSampleBuffer:sampleBuffer outputFrame:1];
LABEL_15:

    goto LABEL_16;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    LODWORD(v19.value) = 138543362;
    *(&v19.value + 4) = v11;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Analyzer has failed or was cancelled, ignoring sample buffer.", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
LABEL_16:
}

- (void)bufferWillFlush:(id)flush
{
  v18 = *MEMORY[0x277D85DE8];
  flushCopy = flush;
  inputQueue = [(HMIVideoAnalyzerServer *)self inputQueue];
  dispatch_assert_queue_V2(inputQueue);

  if ([(HMIVideoAnalyzerServer *)self hasFailed]|| [(HMIVideoAnalyzerServer *)self isCancelled])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Analyzer has failed or was cancelled, ignoring flush.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    decoder = [(HMIVideoAnalyzerServer *)self decoder];
    [decoder flush];

    frameSelector = [(HMIVideoAnalyzerServer *)self frameSelector];
    [frameSelector flush];

    frameTracker = [(HMIVideoAnalyzerServer *)self frameTracker];
    [frameTracker flush];

    encoder = [(HMIVideoAnalyzerServer *)self encoder];
    [encoder flush];

    assetWriter = [(HMIVideoAnalyzerServer *)self assetWriter];
    [assetWriter flush];

    frameAnalyzer = [(HMIVideoAnalyzerServer *)self frameAnalyzer];
    [frameAnalyzer flush];
  }
}

- (void)_updateDecoderAndEncodersForFragment:(id)fragment withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  fragmentCopy = fragment;
  -[HMIVideoAnalyzerServer _updateDecoderForFragment:decodeMode:](self, "_updateDecoderForFragment:decodeMode:", fragmentCopy, [configurationCopy decodeMode]);

  -[HMIVideoAnalyzerServer _updateEncoder:](self, "_updateEncoder:", [configurationCopy shouldEncode]);
  if (configurationCopy)
  {
    [configurationCopy timelapseInterval];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  [(HMIVideoAnalyzerServer *)self _updateTimelapseEncoder:v8];
}

- (void)_updateDecoderForFragment:(id)fragment decodeMode:(int64_t)mode
{
  fragmentCopy = fragment;
  if (mode)
  {
    decoder = [(HMIVideoAnalyzerServer *)self decoder];

    if (!decoder)
    {
      v7 = -[HMIVideoDecoder initWithFrameReordering:]([HMIVideoDecoder alloc], "initWithFrameReordering:", [fragmentCopy frameReorderingRequired]);
      decoder = self->_decoder;
      self->_decoder = v7;

      logIdentifier = [(HMIVideoAnalyzer *)self logIdentifier];
      [(HMIVideoDecoder *)self->_decoder setLogIdentifier:logIdentifier];

      [(HMIVideoDecoder *)self->_decoder setDelegate:self];
    }
  }

  else
  {
    v10 = self->_decoder;
    self->_decoder = 0;
  }
}

- (void)_updateEncoder:(BOOL)encoder
{
  if (encoder)
  {
    encoder = [(HMIVideoAnalyzerServer *)self encoder];

    if (!encoder)
    {

      [(HMIVideoAnalyzerServer *)self _configureEncoder];
    }
  }

  else
  {

    [(HMIVideoAnalyzerServer *)self setEncoder:0];
  }
}

- (void)_updateTimelapseEncoder:(id *)encoder
{
  if (encoder->var2)
  {
    timelapseEncoder = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

    if (!timelapseEncoder)
    {
      [(HMIVideoAnalyzerServer *)self _configureTimelapseEncoder];
    }

    frameTimelapseSampler = [(HMIVideoAnalyzerServer *)self frameTimelapseSampler];

    if (!frameTimelapseSampler)
    {
      v7 = [HMIVideoFrameIntervalSampler alloc];
      v10 = *&encoder->var0;
      var3 = encoder->var3;
      v8 = [(HMIVideoFrameIntervalSampler *)v7 initWithInterval:&v10];
      [(HMIVideoAnalyzerServer *)self setFrameTimelapseSampler:v8];

      frameTimelapseSampler2 = [(HMIVideoAnalyzerServer *)self frameTimelapseSampler];
      [frameTimelapseSampler2 setDelegate:self];
    }
  }

  else
  {
    [(HMIVideoAnalyzerServer *)self setTimelapseEncoder:0];

    [(HMIVideoAnalyzerServer *)self setFrameTimelapseSampler:0];
  }
}

- (void)decoder:(id)decoder didDecodeSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  workQueue = [(HMIVideoAnalyzerServer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMIVideoAnalyzerServer_decoder_didDecodeSampleBuffer___block_invoke;
  v7[3] = &unk_278754838;
  v7[4] = self;
  v7[5] = buffer;
  dispatch_sync(workQueue, v7);
}

- (void)encoder:(id)encoder didEncodeSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  encoderCopy = encoder;
  encoder = [(HMIVideoAnalyzerServer *)self encoder];

  if (encoder == encoderCopy)
  {
    assetWriter = [(HMIVideoAnalyzerServer *)self assetWriter];

    if (assetWriter)
    {
      assetWriter2 = [(HMIVideoAnalyzerServer *)self assetWriter];
      goto LABEL_7;
    }

    [HMIVideoAnalyzerServer buffer:willHandleSampleBuffer:];
LABEL_12:
    v13 = [HMIVideoAnalyzerServer encoder:didEncodeSampleBuffer:];
    [(HMIVideoAnalyzerServer *)v13 _handleDecodedSampleBuffer:v14, v15];
    return;
  }

  timelapseEncoder = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

  v8 = encoderCopy;
  if (timelapseEncoder == encoderCopy)
  {
    [(HMIVideoAnalyzerServer *)self _prepareForTimelapseOutputVideoFormat:CMSampleBufferGetFormatDescription(buffer)];
    timelapseAssetWriter = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];

    if (timelapseAssetWriter)
    {
      assetWriter2 = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];
LABEL_7:
      v12 = assetWriter2;
      [assetWriter2 handleSampleBuffer:buffer];

      v8 = encoderCopy;
      goto LABEL_8;
    }

    goto LABEL_12;
  }

LABEL_8:
}

- (void)_handleDecodedSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  workQueue = [(HMIVideoAnalyzerServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  memset(&v13, 0, sizeof(v13));
  CMSampleBufferGetDuration(&v13, buffer);
  sampleBufferOut = 0;
  if ((v13.flags & 1) == 0)
  {
    memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
    CMSampleBufferGetDecodeTimeStamp(&sampleTimingArray.decodeTimeStamp, buffer);
    CMSampleBufferGetPresentationTimeStamp(&v10, buffer);
    sampleTimingArray.presentationTimeStamp = v10;
    CMTimeMake(&v10, 1, 30);
    sampleTimingArray.duration = v10;
    CMSampleBufferCreateCopyWithNewTiming(0, buffer, 1, &sampleTimingArray, &sampleBufferOut);
    buffer = sampleBufferOut;
  }

  self->_numDecodedSamples += CMSampleBufferGetNumSamples(buffer);
  memset(&sampleTimingArray, 0, 24);
  CMSampleBufferGetPresentationTimeStamp(&sampleTimingArray.duration, buffer);
  *&self->_currentPTS.value = *&sampleTimingArray.duration.value;
  self->_currentPTS.epoch = sampleTimingArray.duration.epoch;
  encoder = [(HMIVideoAnalyzerServer *)self encoder];
  [encoder handleSampleBuffer:buffer];

  frameSelector = [(HMIVideoAnalyzerServer *)self frameSelector];
  [frameSelector handleSampleBuffer:buffer];

  frameThumbnailSampler = [(HMIVideoAnalyzerServer *)self frameThumbnailSampler];
  [frameThumbnailSampler handleSampleBuffer:buffer];

  frameTimelapseSampler = [(HMIVideoAnalyzerServer *)self frameTimelapseSampler];
  [frameTimelapseSampler handleSampleBuffer:buffer];

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }
}

- (opaqueCMSampleBuffer)frameSelector:(id)selector prepareFrame:(opaqueCMSampleBuffer *)frame
{
  frameTracker = [(HMIVideoAnalyzerServer *)self frameTracker];
  v6 = [frameTracker prepareSampleBuffer:frame];

  return v6;
}

- (void)frameSelector:(id)selector didSelectFrame:(opaqueCMSampleBuffer *)frame reference:(opaqueCMSampleBuffer *)reference
{
  CMSampleBufferGetPresentationTimeStamp(&v11, frame);
  v8 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:&v11];
  frameTracker = [(HMIVideoAnalyzerServer *)self frameTracker];
  [frameTracker setDynamicConfiguration:v8];

  frameTracker2 = [(HMIVideoAnalyzerServer *)self frameTracker];
  [frameTracker2 handleSampleBuffer:frame reference:reference];
}

- (void)frameSelector:(id)selector didSkipFrame:(opaqueCMSampleBuffer *)frame
{
  frameTracker = [(HMIVideoAnalyzerServer *)self frameTracker];
  [frameTracker handleSampleBuffer:frame];
}

- (void)frameTracker:(id)tracker didTrackFrame:(opaqueCMSampleBuffer *)frame background:(opaqueCMSampleBuffer *)background motionDetections:(id)detections tracks:(id)tracks
{
  tracksCopy = tracks;
  detectionsCopy = detections;
  CMSampleBufferGetPresentationTimeStamp(&v16, frame);
  v13 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:&v16];
  frameAnalyzer = [(HMIVideoAnalyzerServer *)self frameAnalyzer];
  [frameAnalyzer setDynamicConfiguration:v13];

  frameAnalyzer2 = [(HMIVideoAnalyzerServer *)self frameAnalyzer];
  [frameAnalyzer2 handleSampleBuffer:frame background:background motionDetections:detectionsCopy tracks:tracksCopy];
}

- (id)_filterFrameResult:(id)result dynamicConfiguration:(id)configuration motionDetections:(id)detections
{
  v32[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  configurationCopy = configuration;
  detectionsCopy = detections;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__11;
  v30 = __Block_byref_object_dispose__11;
  v11 = resultCopy;
  v31 = v11;
  v12 = [HMIVideoAnalyzerResultActivityZoneFilter alloc];
  activityZones = [configurationCopy activityZones];
  v14 = [(HMIVideoAnalyzerResultActivityZoneFilter *)v12 initWithActivityZones:activityZones motionDetections:detectionsCopy];
  v32[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __83__HMIVideoAnalyzerServer__filterFrameResult_dynamicConfiguration_motionDetections___block_invoke;
  v25[3] = &unk_278755E10;
  v25[4] = &v26;
  [v15 na_each:v25];
  v16 = +[HMIPreference sharedInstance];
  LOBYTE(v14) = [v16 hasPreferenceForKey:@"syntheticEvents"];

  if ((v14 & 1) == 0)
  {
    configuration = [(HMIVideoAnalyzer *)self configuration];
    enableTemporalEventFiltering = [configuration enableTemporalEventFiltering];

    if (enableTemporalEventFiltering)
    {
      v19 = [HMIMotionDetection firstMotionDetectionInArray:detectionsCopy withMode:2];
      temporalEventFilter = [(HMIVideoAnalyzerServer *)self temporalEventFilter];
      v21 = [temporalEventFilter applyFilterWithFrameResult:v27[5] motionDetection:v19];
      v22 = v27[5];
      v27[5] = v21;
    }
  }

  v23 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v23;
}

uint64_t __83__HMIVideoAnalyzerServer__filterFrameResult_dynamicConfiguration_motionDetections___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 applyWithFrameResult:*(*(*(a1 + 32) + 8) + 40)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)frameAnalyzer:(id)analyzer didAnalyzeFrame:(id)frame
{
  analyzerCopy = analyzer;
  frameCopy = frame;
  ++self->_numDidAnalyzeFrames;
  frameTracker = [(HMIVideoAnalyzerServer *)self frameTracker];
  [frameTracker handleFrameAnalyzerResult:frameCopy];

  frame = [frameCopy frame];
  v10 = frame;
  if (frame)
  {
    [frame presentationTimeStamp];
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  v11 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:&v38];

  frame2 = [frameCopy frame];
  configuration = [(HMIVideoAnalyzer *)self configuration];
  [configuration minFrameScale];
  v15 = v14;
  configuration2 = [(HMIVideoAnalyzer *)self configuration];
  [configuration2 minFrameQuality];
  v44 = 0;
  v18 = [frame2 compressedFrameWithScale:&v44 quality:v15 error:v17];
  v19 = v44;

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__11;
  v42 = __Block_byref_object_dispose__11;
  v20 = [HMIVideoAnalyzerFrameResult alloc];
  events = [frameCopy events];
  [frameCopy regionOfInterest];
  v43 = [(HMIVideoAnalyzerFrameResult *)v20 initWithFrame:v18 events:events regionOfInterest:?];

  v22 = v39[5];
  motionDetections = [frameCopy motionDetections];
  v24 = [(HMIVideoAnalyzerServer *)self _filterFrameResult:v22 dynamicConfiguration:v11 motionDetections:motionDetections];
  v25 = v39[5];
  v39[5] = v24;

  events2 = [frameCopy events];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __56__HMIVideoAnalyzerServer_frameAnalyzer_didAnalyzeFrame___block_invoke;
  v34 = &unk_278755210;
  selfCopy = self;
  v27 = frameCopy;
  v36 = v27;
  v37 = &v38;
  [events2 na_each:&v31];

  events3 = [v39[5] events];
  v29 = [events3 count];

  if (v29)
  {
    frameAnalyzerFrameResultBuffer = [(HMIVideoAnalyzerServer *)self frameAnalyzerFrameResultBuffer];
    [frameAnalyzerFrameResultBuffer addObject:v39[5]];

    [(HMIVideoAnalyzerServer *)self _notifyDelegateDidAnalyzeFrameWithResult:v39[5]];
  }

  _Block_object_dispose(&v38, 8);
}

void __56__HMIVideoAnalyzerServer_frameAnalyzer_didAnalyzeFrame___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) frame];
      v10 = v9;
      if (v9)
      {
        [v9 presentationTimeStamp];
      }

      else
      {
        memset(&v18, 0, sizeof(v18));
      }

      Seconds = CMTimeGetSeconds(&v18);
      v12 = *(a1 + 40);
      if (v12)
      {
        [v12 backgroundTimeStamp];
      }

      else
      {
        memset(&v18, 0, sizeof(v18));
      }

      v13 = CMTimeGetSeconds(&v18);
      v14 = [v3 shortDescription];
      v15 = [*(*(*(a1 + 48) + 8) + 40) events];
      v16 = [v15 containsObject:v3];
      LODWORD(v18.value) = 138544386;
      v17 = @"Filtered";
      *(&v18.value + 4) = v8;
      LOWORD(v18.flags) = 2048;
      if (v16)
      {
        v17 = &stru_284057FB8;
      }

      *(&v18.flags + 2) = Seconds;
      HIWORD(v18.epoch) = 2048;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@AnalyzerEvents(PTS:%.2f/%.2f): %@ %@", &v18, 0x34u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)frameSampler:(id)sampler didSampleFrame:(opaqueCMSampleBuffer *)frame
{
  samplerCopy = sampler;
  frameTimelapseSampler = [(HMIVideoAnalyzerServer *)self frameTimelapseSampler];

  if (frameTimelapseSampler == samplerCopy)
  {
    timelapseEncoder = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
    [timelapseEncoder handleSampleBuffer:frame];

    goto LABEL_9;
  }

  frameThumbnailSampler = [(HMIVideoAnalyzerServer *)self frameThumbnailSampler];
  if (frameThumbnailSampler != samplerCopy)
  {
    goto LABEL_7;
  }

  v9 = +[HMIPreference sharedInstance];
  [(HMIVideoAnalyzerServer *)self analysisFPS];
  v10 = [v9 shouldGenerateThumbnailForAnalysisFPS:?];

  if (v10)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(frame);
    Size = HMICVPixelBufferGetSize(ImageBuffer);
    v14 = 1.0;
    if (v13 > 0.0)
    {
      v15 = v13;
      configuration = [(HMIVideoAnalyzer *)self configuration];
      v14 = [configuration thumbnailHeight] / v15;
    }

    v17 = [[HMIVideoFrame alloc] initWithSampleBuffer:frame];
    v20 = 0;
    frameThumbnailSampler = [(HMIVideoFrame *)v17 compressedFrameWithScale:&v20 quality:v14 error:1.0];

    thumbnailBuffer = [(HMIVideoAnalyzerServer *)self thumbnailBuffer];
    [thumbnailBuffer addObject:frameThumbnailSampler];

LABEL_7:
  }

LABEL_9:
}

- (void)assetWriter:(id)writer didOutputInitializationSegment:(id)segment
{
  writerCopy = writer;
  segmentCopy = segment;
  assetWriter = [(HMIVideoAnalyzerServer *)self assetWriter];

  if (assetWriter == writerCopy)
  {
    [(HMIVideoAnalyzerServer *)self setInitializationSegment:segmentCopy];
  }

  else
  {
    timelapseAssetWriter = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];

    if (timelapseAssetWriter == writerCopy)
    {
      [(HMIVideoAnalyzerServer *)self setTimelapseInitializationSegment:segmentCopy];
    }
  }
}

- (void)assetWriter:(id)writer didOutputSeparableSegment:(id)segment segmentReport:(id)report
{
  v68 = *MEMORY[0x277D85DE8];
  writerCopy = writer;
  segmentCopy = segment;
  reportCopy = report;
  trackReports = [reportCopy trackReports];
  v12 = [trackReports na_firstObjectPassingTest:&__block_literal_global_392];

  memset(&v66, 0, sizeof(v66));
  firstVideoSampleInformation = [v12 firstVideoSampleInformation];
  v14 = firstVideoSampleInformation;
  if (firstVideoSampleInformation)
  {
    [firstVideoSampleInformation presentationTimeStamp];
    if (v12)
    {
LABEL_3:
      [v12 duration];
      goto LABEL_6;
    }
  }

  else
  {
    memset(&start, 0, 24);
    if (v12)
    {
      goto LABEL_3;
    }
  }

  memset(&duration, 0, sizeof(duration));
LABEL_6:
  CMTimeRangeMake(&v66, &start.start, &duration);

  firstVideoSampleInformation2 = [v12 firstVideoSampleInformation];
  offset = [firstVideoSampleInformation2 offset];
  v17 = [firstVideoSampleInformation2 length];
  timelapseAssetWriter = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];

  if (timelapseAssetWriter != writerCopy)
  {
    v61 = offset;
    v62 = reportCopy;
    v63 = writerCopy;
    v64 = segmentCopy;
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = HMFGetLogIdentifier();
      start = v66;
      v23 = HMICMTimeRangeDescription(&start);
      frameAnalyzerFrameResultBuffer = [(HMIVideoAnalyzerServer *)selfCopy frameAnalyzerFrameResultBuffer];
      thumbnailBuffer = [(HMIVideoAnalyzerServer *)selfCopy thumbnailBuffer];
      LODWORD(start.start.value) = 138544130;
      *(&start.start.value + 4) = v22;
      LOWORD(start.start.flags) = 2112;
      *(&start.start.flags + 2) = v23;
      HIWORD(start.start.epoch) = 2112;
      start.duration.value = frameAnalyzerFrameResultBuffer;
      LOWORD(start.duration.timescale) = 2112;
      *(&start.duration.timescale + 2) = thumbnailBuffer;
      _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Bundling Fragment Result, timeRange: %@, frames: [%@], thumbnails [%@]", &start, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    frameAnalyzerFrameResultBuffer2 = [(HMIVideoAnalyzerServer *)selfCopy frameAnalyzerFrameResultBuffer];
    start = v66;
    v27 = [frameAnalyzerFrameResultBuffer2 extractObjectsInTimeRange:&start];

    frameAnalyzerFrameResultBuffer3 = [(HMIVideoAnalyzerServer *)selfCopy frameAnalyzerFrameResultBuffer];
    v29 = [frameAnalyzerFrameResultBuffer3 count];

    if (v29)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        frameAnalyzerFrameResultBuffer4 = [(HMIVideoAnalyzerServer *)v31 frameAnalyzerFrameResultBuffer];
        LODWORD(start.start.value) = 138543618;
        *(&start.start.value + 4) = v33;
        LOWORD(start.start.flags) = 2112;
        *(&start.start.flags + 2) = frameAnalyzerFrameResultBuffer4;
        _os_log_impl(&dword_22D12F000, v32, OS_LOG_TYPE_ERROR, "%{public}@Analyzer frame result buffer should be empty. %@", &start, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      frameAnalyzerFrameResultBuffer5 = [(HMIVideoAnalyzerServer *)v31 frameAnalyzerFrameResultBuffer];
      [frameAnalyzerFrameResultBuffer5 removeAllObjects];
    }

    thumbnailBuffer2 = [(HMIVideoAnalyzerServer *)selfCopy thumbnailBuffer];
    start = v66;
    v37 = [thumbnailBuffer2 extractObjectsInTimeRange:&start];

    thumbnailBuffer3 = [(HMIVideoAnalyzerServer *)selfCopy thumbnailBuffer];
    v39 = [thumbnailBuffer3 count];

    if (v39)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = selfCopy;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        thumbnailBuffer = v41->_thumbnailBuffer;
        LODWORD(start.start.value) = 138543618;
        *(&start.start.value + 4) = v43;
        LOWORD(start.start.flags) = 2112;
        *(&start.start.flags + 2) = thumbnailBuffer;
        _os_log_impl(&dword_22D12F000, v42, OS_LOG_TYPE_ERROR, "%{public}@Thumbnail buffer should be empty. %@", &start, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      thumbnailBuffer4 = [(HMIVideoAnalyzerServer *)v41 thumbnailBuffer];
      [thumbnailBuffer4 removeAllObjects];
    }

    v46 = [HMIVideoFragment alloc];
    initializationSegment = [(HMIVideoAnalyzerServer *)selfCopy initializationSegment];
    start = v66;
    v48 = [(HMIVideoFragment *)v46 initWithInitializationSegment:initializationSegment separableSegment:v64 timeRange:&start firstVideoSampleByteRange:v61, v17];

    *&start.start.value = *&v66.start.value;
    start.start.epoch = v66.start.epoch;
    v49 = [(HMIVideoAnalyzerServer *)selfCopy dynamicConfigurationForTime:&start];
    v50 = [HMIVideoAnalyzerResultOutcome alloc];
    [(HMIVideoAnalyzerServer *)selfCopy analysisFPS];
    v51 = [(HMIVideoAnalyzerResultOutcome *)v50 initWithCode:1 analysisFPS:0 message:?];
    decodeMode = [v49 decodeMode];
    if (decodeMode)
    {
      if (decodeMode != 1)
      {
LABEL_23:
        v58 = [HMIVideoAnalyzerFragmentResult alloc];
        v59 = [MEMORY[0x277CBEB98] set];
        v60 = [(HMIVideoAnalyzerFragmentResult *)v58 initWithFragment:v48 events:v59 frameResults:v27 thumbnails:v37 configuration:v49 outcome:v51];

        [(HMIVideoAnalyzerServer *)selfCopy _notifyDelegateDidAnalyzeFragmentWithResult:v60];
        ++selfCopy->_numDidAnalyzeFragments;

        writerCopy = v63;
        segmentCopy = v64;
        reportCopy = v62;
        goto LABEL_24;
      }

      v53 = @"Analyzer is in partial bypass mode, only IFrames are decoded.";
    }

    else
    {
      v53 = @"Analyzer is in full bypass mode.";
    }

    v56 = [HMIVideoAnalyzerResultOutcome alloc];
    [(HMIVideoAnalyzerServer *)selfCopy analysisFPS];
    v57 = [(HMIVideoAnalyzerResultOutcome *)v56 initWithCode:0 analysisFPS:v53 message:?];

    v51 = v57;
    goto LABEL_23;
  }

  v54 = [HMIVideoFragment alloc];
  timelapseInitializationSegment = [(HMIVideoAnalyzerServer *)self timelapseInitializationSegment];
  start = v66;
  v27 = [(HMIVideoFragment *)v54 initWithInitializationSegment:timelapseInitializationSegment separableSegment:segmentCopy timeRange:&start firstVideoSampleByteRange:offset, v17];

  [(HMIVideoAnalyzerServer *)self _notifyDelegateDidCreateTimelapseFragment:v27];
  ++self->_numDidCreateTimelapseFragments;
LABEL_24:
}

uint64_t __78__HMIVideoAnalyzerServer_assetWriter_didOutputSeparableSegment_segmentReport___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mediaType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CE5EA8]];

  return v3;
}

- (void)encoder:(id)encoder didFailWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  encoderCopy = encoder;
  errorCopy = error;
  timelapseEncoder = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

  if (timelapseEncoder == encoderCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v12;
      v15 = 2112;
      v16 = errorCopy;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Timelapse encoder failed, ignoring: error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMIVideoAnalyzerServer *)selfCopy setTimelapseEncoder:0];
  }

  else
  {
    [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:errorCopy];
  }
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  watchdogTimer = [(HMIVideoAnalyzerServer *)self watchdogTimer];

  if (watchdogTimer == fireCopy)
  {
    [(HMIVideoAnalyzerServer *)self timeSinceLastFragmentWasReceived];
    if (v6 > 60.0)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Analyzer has not received fragments from client in %fs", *&v6];
      v9 = [v7 hmiErrorWithCode:-1 description:v8];

      [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:v9];
    }
  }
}

- (void)_notifyDelegateDidAnalyzeFragmentWithResult:(id)result
{
  v24 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    fragment = [resultCopy fragment];
    outcome = [resultCopy outcome];
    maxConfidenceEvents = [resultCopy maxConfidenceEvents];
    *buf = 138544130;
    v17 = v8;
    v18 = 2112;
    v19 = fragment;
    v20 = 2112;
    v21 = outcome;
    v22 = 2112;
    v23 = maxConfidenceEvents;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Generated Fragment: %@ Outcome: %@ Max Confidence Events: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  state = [(HMIVideoAnalyzerServer *)selfCopy state];
  [HMIAnalytics videoAnalyzerDidAnalyzeFragmentWithResult:resultCopy state:state];

  delegate = [(HMIVideoAnalyzer *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate analyzer:selfCopy didAnalyzeFragmentWithResult:resultCopy];
  }

  v15 = resultCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [(HMIVideoAnalyzerServer *)selfCopy _produceResult:sel_analyzer_didAnalyzeFragmentWithResult_ withArguments:v14];
}

- (void)_notifyDelegateDidAnalyzeFrameWithResult:(id)result
{
  v7[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  delegate = [(HMIVideoAnalyzer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate analyzer:self didAnalyzeFrameWithResult:resultCopy];
  }

  v7[0] = resultCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(HMIVideoAnalyzerServer *)self _produceResult:sel_analyzer_didAnalyzeFrameWithResult_ withArguments:v6];
}

- (void)_notifyDelegateDidCreateTimelapseFragment:(id)fragment
{
  v8[1] = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  state = [(HMIVideoAnalyzerServer *)self state];
  [HMIAnalytics videoAnalyzerDidCreateTimelapseFragment:fragmentCopy state:state];

  delegate = [(HMIVideoAnalyzer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate analyzer:self didCreateTimelapseFragment:fragmentCopy];
  }

  v8[0] = fragmentCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(HMIVideoAnalyzerServer *)self _produceResult:sel_analyzer_didCreateTimelapseFragment_ withArguments:v7];
}

- (void)_notifyDelegateDidFailWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Analyzer Failed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMIVideoAnalyzerServer *)selfCopy hasFailed])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Analyzer is already in a failed state.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    state = [(HMIVideoAnalyzerServer *)selfCopy state];
    [HMIAnalytics videoAnalyzerDidTerminateWithError:errorCopy state:state];

    [(HMIVideoAnalyzerServer *)selfCopy setHasFailed:1];
    delegate = [(HMIVideoAnalyzer *)selfCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate analyzer:selfCopy didFailWithError:errorCopy];
    }

    v16 = errorCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(HMIVideoAnalyzerServer *)selfCopy _produceResult:sel_analyzer_didFailWithError_ withArguments:v15];
  }
}

- (void)_notifyDelegateDidProduceAnalysisStateUpdate:(id)update
{
  v7[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  delegate = [(HMIVideoAnalyzer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate analyzer:self didProduceAnalysisStateUpdate:updateCopy];
  }

  v7[0] = updateCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(HMIVideoAnalyzerServer *)self _produceResult:sel_analyzer_didProduceAnalysisStateUpdate_ withArguments:v6];
}

- (void)_produceResult:(SEL)result withArguments:(id)arguments
{
  v21[2] = *MEMORY[0x277D85DE8];
  argumentsCopy = arguments;
  delegate = [(HMIVideoAnalyzer *)self delegate];
  if ([delegate conformsToProtocol:&unk_28408D330])
  {
    v8 = delegate;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (objc_opt_respondsToSelector())
  {
    v20[0] = @"selector";
    v10 = NSStringFromSelector(result);
    v20[1] = @"arguments";
    v21[0] = v10;
    v21[1] = argumentsCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v15;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Sending Result: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [v9 analyzer:selfCopy didProduceResult:v11];
  }
}

- (id)state
{
  currentPTS = self->_currentPTS;
  v33 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:&currentPTS];
  v31 = [HMIVideoAnalyzerState alloc];
  configuration = [(HMIVideoAnalyzer *)self configuration];
  identifier = [(HMIVideoAnalyzer *)self identifier];
  monitored = [(HMIVideoAnalyzerServer *)self monitored];
  [(HMIVideoAnalyzerServer *)self analysisFPS];
  v4 = v3;
  [(HMIVideoAnalyzerServer *)self timeSinceAnalyzerStarted];
  v6 = v5;
  [(HMIVideoAnalyzerServer *)self timeSinceLastFragmentWasReceived];
  v8 = v7;
  commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
  [commandBuffer fillRatio];
  v10 = v9;
  commandBuffer2 = [(HMIVideoAnalyzerServer *)self commandBuffer];
  v27 = [commandBuffer2 size];
  [(HMIVideoAnalyzerServer *)self delay];
  v13 = v12;
  [(HMIVideoAnalyzerServer *)self currentPTS];
  numDecodedSamples = self->_numDecodedSamples;
  numDidAnalyzeFrames = self->_numDidAnalyzeFrames;
  numDidAnalyzeFragments = self->_numDidAnalyzeFragments;
  numDidAnalyzePackages = self->_numDidAnalyzePackages;
  numDidCreateTimelapseFragments = self->_numDidCreateTimelapseFragments;
  frameAnalyzer = [(HMIVideoAnalyzerServer *)self frameAnalyzer];
  [frameAnalyzer averageAnalysisTime];
  v20 = v19;
  encode = [(HMIVideoAnalyzerServer *)self encode];
  encoder = [(HMIVideoAnalyzerServer *)self encoder];
  BYTE1(v25) = encoder != 0;
  LOBYTE(v25) = encode;
  v23 = [(HMIVideoAnalyzerState *)v31 initWithConfiguration:configuration dynamicConfiguration:v33 identifier:identifier monitored:monitored analysisFPS:v27 timeSinceAnalyzerStarted:&currentPTS timeSinceLastFragmentWasReceived:v4 bufferFillRatio:v6 bufferSize:v8 delay:v10 currentPTS:v13 numDecodedSamples:v20 numDidAnalyzeFrames:numDecodedSamples numDidAnalyzeFragments:numDidAnalyzeFrames numDidAnalyzePackages:numDidAnalyzeFragments numDidCreateTimelapseFragments:numDidAnalyzePackages averageAnalysisTime:numDidCreateTimelapseFragments encode:v25 encoder:[(HMIVideoAnalyzerServer *)self decodeMode] decodeMode:?];

  return v23;
}

- (double)timeSinceAnalyzerStarted
{
  startDate = [(HMIVideoAnalyzerServer *)self startDate];
  [startDate timeIntervalSinceNow];
  v4 = -v3;

  return v4;
}

- (double)timeSinceLastFragmentWasReceived
{
  lastFragmentReceivedDate = [(HMIVideoAnalyzerServer *)self lastFragmentReceivedDate];
  [lastFragmentReceivedDate timeIntervalSinceNow];
  v4 = -v3;

  return v4;
}

- (double)delay
{
  commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
  [commandBuffer delay];
  v4 = v3;

  return v4;
}

- (void)setAnalysisFPS:(double)s
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_analysisFPS != s)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      analysisFPS = self->_analysisFPS;
      v11 = 138543874;
      v12 = v8;
      v13 = 2048;
      v14 = analysisFPS;
      v15 = 2048;
      sCopy = s;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@analysisFPS changing from: %f to: %f", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  self->_analysisFPS = s;
  frameSelector = [(HMIVideoAnalyzerServer *)self frameSelector];
  [frameSelector setSampleRate:s * 3.0];
}

- (void)setDecodeMode:(int64_t)mode
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_decodeMode != mode)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = HMIVideoAnalyzerDecodeModeAsString(self->_decodeMode);
      v10 = HMIVideoAnalyzerDecodeModeAsString(mode);
      v11 = 138543874;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@decodeMode changing from: %@ to %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  self->_decodeMode = mode;
}

- (void)setBoosted:(BOOL)boosted
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Analyzer boosting is not supported on this platform.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  selfCopy->_boosted = boosted;
}

- (unint64_t)status
{
  if ([(HMIVideoAnalyzerServer *)self hasFailed])
  {
    return 3;
  }

  if ([(HMIVideoAnalyzerServer *)self isCancelled])
  {
    return 2;
  }

  commandBuffer = [(HMIVideoAnalyzerServer *)self commandBuffer];
  isEmpty = [commandBuffer isEmpty];

  return isEmpty ^ 1u;
}

@end