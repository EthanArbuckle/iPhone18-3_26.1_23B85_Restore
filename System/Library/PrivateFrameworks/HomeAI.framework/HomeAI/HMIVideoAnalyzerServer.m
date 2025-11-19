@interface HMIVideoAnalyzerServer
- (HMIVideoAnalyzerServer)initWithConfiguration:(id)a3 identifier:(id)a4;
- (double)delay;
- (double)timeSinceAnalyzerStarted;
- (double)timeSinceLastFragmentWasReceived;
- (id)_filterFrameResult:(id)a3 dynamicConfiguration:(id)a4 motionDetections:(id)a5;
- (id)dynamicConfigurationForTime:(id *)a3;
- (id)state;
- (opaqueCMSampleBuffer)frameSelector:(id)a3 prepareFrame:(opaqueCMSampleBuffer *)a4;
- (unint64_t)status;
- (void)_configureAssetWriter;
- (void)_configureEncoder;
- (void)_configureTimelapseAssetWriter;
- (void)_configureTimelapseEncoder;
- (void)_handleDecodedSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_notifyDelegateDidAnalyzeFragmentWithResult:(id)a3;
- (void)_notifyDelegateDidAnalyzeFrameWithResult:(id)a3;
- (void)_notifyDelegateDidCreateTimelapseFragment:(id)a3;
- (void)_notifyDelegateDidFailWithError:(id)a3;
- (void)_notifyDelegateDidProduceAnalysisStateUpdate:(id)a3;
- (void)_prepareForInputVideoFormat:(opaqueCMFormatDescription *)a3 audioFormat:(opaqueCMFormatDescription *)a4;
- (void)_prepareForTimelapseOutputVideoFormat:(opaqueCMFormatDescription *)a3;
- (void)_produceResult:(SEL)a3 withArguments:(id)a4;
- (void)_saveFragmentDataToDisk:(id)a3 diskBufferSize:(unint64_t)a4;
- (void)_updateDecoderAndEncodersForFragment:(id)a3 withConfiguration:(id)a4;
- (void)_updateDecoderForFragment:(id)a3 decodeMode:(int64_t)a4;
- (void)_updateEncoder:(BOOL)a3;
- (void)_updateTimelapseEncoder:(id *)a3;
- (void)analyzeFragment:(id)a3 configuration:(id)a4;
- (void)assetWriter:(id)a3 didOutputInitializationSegment:(id)a4;
- (void)assetWriter:(id)a3 didOutputSeparableSegment:(id)a4 segmentReport:(id)a5;
- (void)buffer:(id)a3 willHandleSampleBuffer:(opaqueCMSampleBuffer *)a4;
- (void)bufferWillFlush:(id)a3;
- (void)dealloc;
- (void)decoder:(id)a3 didDecodeSampleBuffer:(opaqueCMSampleBuffer *)a4;
- (void)encoder:(id)a3 didEncodeSampleBuffer:(opaqueCMSampleBuffer *)a4;
- (void)encoder:(id)a3 didFailWithError:(id)a4;
- (void)finishWithCompletionHandler:(id)a3;
- (void)flush;
- (void)flushAsync;
- (void)frameAnalyzer:(id)a3 didAnalyzeFrame:(id)a4;
- (void)frameSampler:(id)a3 didSampleFrame:(opaqueCMSampleBuffer *)a4;
- (void)frameSelector:(id)a3 didSelectFrame:(opaqueCMSampleBuffer *)a4 reference:(opaqueCMSampleBuffer *)a5;
- (void)frameSelector:(id)a3 didSkipFrame:(opaqueCMSampleBuffer *)a4;
- (void)frameTracker:(id)a3 didTrackFrame:(opaqueCMSampleBuffer *)a4 background:(opaqueCMSampleBuffer *)a5 motionDetections:(id)a6 tracks:(id)a7;
- (void)handleMessageWithOptions:(id)a3 completionHandler:(id)a4;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3 errorHandler:(id)a4;
- (void)setAnalysisFPS:(double)a3;
- (void)setBoosted:(BOOL)a3;
- (void)setDecodeMode:(int64_t)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMIVideoAnalyzerServer

- (HMIVideoAnalyzerServer)initWithConfiguration:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v85.receiver = self;
  v85.super_class = HMIVideoAnalyzerServer;
  v7 = [(HMIVideoAnalyzer *)&v85 initWithConfiguration:v6 identifier:a4];
  if (v7)
  {
    v8 = +[HMIPreference sharedInstance];
    v9 = [v8 analysisQOS];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, v9, 0);
    v12 = dispatch_queue_create("HMIVideoAnalyzerServer", v11);
    v13 = *(v7 + 21);
    *(v7 + 21) = v12;

    v14 = MEMORY[0x277CCACA8];
    v15 = [v7 identifier];
    v16 = [v14 stringWithFormat:@"HMIVideoAnalyzerServer(%@) - Input", v15];
    v17 = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    v20 = *(v7 + 20);
    *(v7 + 20) = v19;

    v21 = MEMORY[0x277CCACA8];
    v22 = [v7 identifier];
    v23 = [v21 stringWithFormat:@"HMIVideoAnalyzerServer(%@) - Encoder", v22];
    v24 = [v23 UTF8String];
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create(v24, v25);
    v27 = *(v7 + 22);
    *(v7 + 22) = v26;

    v28 = MEMORY[0x277CCACA8];
    v29 = [v7 identifier];
    v30 = [v28 stringWithFormat:@"HMIVideoAnalyzerServer(%@) - Boost", v29];
    v31 = [v30 UTF8String];
    v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v33 = dispatch_queue_attr_make_with_qos_class(v32, QOS_CLASS_USER_INTERACTIVE, 0);
    v34 = dispatch_queue_create(v31, v33);
    v35 = *(v7 + 16);
    *(v7 + 16) = v34;

    v7[137] = [v6 transcode];
    *(v7 + 19) = [v6 initialDecodeMode];
    v36 = [[HMIVideoCommandBuffer alloc] initWithMaxCapacity:0x800000];
    v37 = *(v7 + 27);
    *(v7 + 27) = v36;

    v38 = *(v7 + 27);
    v39 = [v7 inputQueue];
    [v38 setDelegate:v7 queue:v39];

    v40 = [HMIVideoFrameSelector alloc];
    v41 = [v7 workQueue];
    v42 = [(HMIVideoFrameSelector *)v40 initWithConfiguration:v6 workQueue:v41];
    v43 = *(v7 + 33);
    *(v7 + 33) = v42;

    [*(v7 + 33) setDelegate:v7];
    v44 = [HMIVideoFrameTracker alloc];
    v45 = [v7 workQueue];
    v46 = [(HMIVideoFrameTracker *)v44 initWithConfiguration:v6 workQueue:v45];
    v47 = *(v7 + 34);
    *(v7 + 34) = v46;

    [*(v7 + 34) setDelegate:v7];
    v48 = [HMIVideoFrameAnalyzer alloc];
    v49 = [v7 workQueue];
    v50 = [(HMIVideoFrameAnalyzer *)v48 initWithConfiguration:v6 workQueue:v49];
    v51 = *(v7 + 35);
    *(v7 + 35) = v50;

    [*(v7 + 35) setDelegate:v7];
    v52 = objc_alloc_init(HMIVideoTemporalEventFilter);
    v53 = *(v7 + 43);
    *(v7 + 43) = v52;

    if (v6)
    {
      [v6 thumbnailInterval];
      if ((v83 & 0x100000000) != 0)
      {
        v54 = [HMIVideoFrameIntervalSampler alloc];
        [v6 thumbnailInterval];
        v55 = [(HMIVideoFrameIntervalSampler *)v54 initWithInterval:v81];
        v56 = *(v7 + 29);
        *(v7 + 29) = v55;

        [*(v7 + 29) setDelegate:v7];
      }

      [v6 timelapseInterval];
      if (v80)
      {
        v57 = [HMIVideoFrameIntervalSampler alloc];
        [v6 timelapseInterval];
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

    [v6 analysisFPS];
    *(v7 + 18) = v71;
    [v6 analysisFPS];
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

- (id)dynamicConfigurationForTime:(id *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  dynamicConfigurationBuffer = self->_dynamicConfigurationBuffer;
  start = **&MEMORY[0x277CC08F0];
  v16 = *a3;
  CMTimeRangeFromTimeToTime(&v18, &start, &v16);
  v6 = [(HMIVideoEventBuffer *)dynamicConfigurationBuffer objectsInTimeRange:&v18 includeEnd:1];
  v7 = [v6 lastObject];
  v8 = [v7 value];

  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *&v18.start.value = *&a3->var0;
      v18.start.epoch = a3->var3;
      v13 = HMICMTimeDescription(&v18.start);
      LODWORD(v18.start.value) = 138543618;
      *(&v18.start.value + 4) = v12;
      LOWORD(v18.start.flags) = 2112;
      *(&v18.start.flags + 2) = v13;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Dynamic configuration is missing for time: %@, using the first instead.", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [(HMIVideoEventBuffer *)self->_dynamicConfigurationBuffer firstObject];
    v8 = [v14 value];
  }

  return v8;
}

- (void)handleMessageWithOptions:(id)a3 completionHandler:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v11;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Received Message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(NSString *)v6 objectForKeyedSubscript:@"selector"];
  v13 = [(NSString *)v6 objectForKeyedSubscript:@"arguments"];
  v14 = NSSelectorFromString(v12);
  if (v14 == sel_flush)
  {
    [(HMIVideoAnalyzerServer *)v9 flush];
  }

  else if (v14 == sel_flushAsync)
  {
    [(HMIVideoAnalyzerServer *)v9 flushAsync];
  }

  else
  {
    if (v14 == sel_finishWithCompletionHandler_)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __69__HMIVideoAnalyzerServer_handleMessageWithOptions_completionHandler___block_invoke;
      v25[3] = &unk_278755D98;
      v27 = v7;
      v25[4] = v9;
      v26 = v6;
      [(HMIVideoAnalyzerServer *)v9 finishWithCompletionHandler:v25];

      goto LABEL_29;
    }

    if (v14 == sel_cancel)
    {
      [(HMIVideoAnalyzerServer *)v9 cancel];
    }

    else
    {
      if (v14 == sel_setAnalysisFPS_)
      {
        v19 = [v13 objectAtIndexedSubscript:0];
        [v19 doubleValue];
        [(HMIVideoAnalyzerServer *)v9 setAnalysisFPS:?];
      }

      else if (v14 == sel_setMonitored_)
      {
        v19 = [v13 objectAtIndexedSubscript:0];
        -[HMIVideoAnalyzerServer setMonitored:](v9, "setMonitored:", [v19 BOOLValue]);
      }

      else if (v14 == sel_setDecodeMode_)
      {
        v19 = [v13 objectAtIndexedSubscript:0];
        -[HMIVideoAnalyzerServer setDecodeMode:](v9, "setDecodeMode:", [v19 integerValue]);
      }

      else if (v14 == sel_setBoosted_)
      {
        v19 = [v13 objectAtIndexedSubscript:0];
        -[HMIVideoAnalyzerServer setBoosted:](v9, "setBoosted:", [v19 BOOLValue]);
      }

      else
      {
        if (v14 != sel_analyzeFragment_configuration_)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = v9;
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
        [(HMIVideoAnalyzerServer *)v9 analyzeFragment:v19 configuration:v20];
      }
    }
  }

LABEL_25:
  if (v7)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v9;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v24;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Sent Message Reply: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    (*(v7 + 2))(v7, 0, 0);
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

- (void)analyzeFragment:(id)a3 configuration:(id)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v62 = a4;
  v7 = [MEMORY[0x277CBEAA8] now];
  [(HMIVideoAnalyzerServer *)self setLastFragmentReceivedDate:v7];

  v61 = [v6 data];
  v8 = +[HMIPreference sharedInstance];
  v9 = [v8 hasPreferenceForKey:@"eventTriggers"];

  if (v9)
  {
    v10 = +[HMIPreference sharedInstance];
    v11 = [v10 numberPreferenceForKey:@"eventTriggers"];
    [v62 setEventTriggers:{objc_msgSend(v11, "integerValue")}];
  }

  v12 = +[HMIPreference sharedInstance];
  v13 = [v12 numberPreferenceForKey:@"fragmentDiskBufferSize" defaultValue:&unk_284075450];
  v14 = [v13 integerValue];

  if (v14)
  {
    [(HMIVideoAnalyzerServer *)self _saveFragmentDataToDisk:v61 diskBufferSize:v14 << 20];
  }

  if (v6)
  {
    [v6 duration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v15 = [(HMIVideoAnalyzer *)self configuration];
  v16 = v15;
  if (v15)
  {
    [v15 maxFragmentDuration];
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
  if (v6)
  {
    [v6 duration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  Seconds = CMTimeGetSeconds(&time1);
  v20 = [(HMIVideoAnalyzer *)self configuration];
  v21 = v20;
  if (v20)
  {
    [v20 maxFragmentDuration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v22 = [v18 stringWithFormat:@"Video fragment duration: %fs is greater than the max fragment duration value: %fs", *&Seconds, CMTimeGetSeconds(&time1)];

  if (+[HMIPreference isInternalInstall])
  {
    v23 = [v6 sanitizedData];
    v60 = [v23 base64EncodedDataWithOptions:0];

    v59 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v60 encoding:4];
    context = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v55 = HMFGetLogIdentifier();
      v57 = [(HMIVideoAnalyzer *)v24 configuration];
      v56 = [v57 camera];
      v26 = [v56 manufacturer];
      v27 = [(HMIVideoAnalyzer *)v24 configuration];
      v28 = [v27 camera];
      v29 = [v28 model];
      LODWORD(time1.value) = 138544386;
      *(&time1.value + 4) = v55;
      LOWORD(time1.flags) = 2112;
      *(&time1.flags + 2) = v26;
      HIWORD(time1.epoch) = 2112;
      v77 = v29;
      v78 = 2112;
      v79 = v6;
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
    v33 = [(HMIVideoAnalyzerServer *)self decodeMode];
    v34 = [(HMIVideoAnalyzerServer *)self encode];
    [v62 setDecodeMode:v33];
    [v62 setShouldEncode:v34 & (v33 != 0)];
    v35 = MEMORY[0x277CC0898];
    if (v33)
    {
      v36 = [(HMIVideoAnalyzer *)self configuration];
      v37 = v36;
      if (v36)
      {
        [v36 timelapseInterval];
      }

      else
      {
        memset(&location[1], 0, 24);
      }

      time1 = *&location[1];
      [v62 setTimelapseInterval:&time1];
    }

    else
    {
      *&location[1] = *MEMORY[0x277CC0898];
      location[3] = *(MEMORY[0x277CC0898] + 16);
      time1 = *&location[1];
      [v62 setTimelapseInterval:&time1];
    }

    v38 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationBuffer];
    v39 = [HMIVideoEventEntry alloc];
    p_currentDTS = &self->_currentDTS;
    time1 = self->_currentDTS;
    v41 = [(HMIVideoEventEntry *)v39 initWithValue:v62 time:&time1];
    [v38 addObject:v41];

    objc_initWeak(location, self);
    v42 = [(HMIVideoAnalyzerServer *)self commandBuffer];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __56__HMIVideoAnalyzerServer_analyzeFragment_configuration___block_invoke_2;
    v65[3] = &unk_278752AC0;
    objc_copyWeak(&v68, location);
    v43 = v6;
    v66 = v43;
    v67 = v62;
    [v42 handleBlock:v65];

    v44 = [[HMIMemoryAVAsset alloc] initWithData:v61];
    [(HMIMemoryAVAsset *)v44 loadValuesSynchronously];
    v45 = [v43 videoFormatDescription];
    v46 = [(HMIVideoAnalyzer *)self configuration];
    if ([v46 passthroughAudio])
    {
      v47 = [v43 audioFormatDescription] != 0;
    }

    else
    {
      v47 = 0;
    }

    v48 = [[HMIVideoAssetReader alloc] initWithAsset:v44 readVideoTrack:v45 != 0 readAudioTrack:v47];
    *&time1.value = *&p_currentDTS->value;
    time1.epoch = self->_currentDTS.epoch;
    value = *v35;
    flags = *(v35 + 12);
    timescale = *(v35 + 8);
    epoch = *(v35 + 16);
    while (1)
    {
      v51 = [(HMIVideoAssetReader *)v48 copyNextSampleBuffer];
      v52 = v51;
      if (!v51)
      {
        break;
      }

      time2 = time1;
      v53 = HMICMSampleBufferCreateCopyWithTimingOffset(v51, &time2);
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

      v54 = [(HMIVideoNode *)v48 error];
      [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:v54];
    }

    else
    {
      v54 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:4 description:{@"Fragment had no video samples, fragment is likely corrupted."}];
      [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:v54];
    }

    goto LABEL_43;
  }

  objc_initWeak(&time1, self);
  v31 = [(HMIVideoAnalyzerServer *)self commandBuffer];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __56__HMIVideoAnalyzerServer_analyzeFragment_configuration___block_invoke;
  v70[3] = &unk_278752BB0;
  objc_copyWeak(&v72, &time1);
  v32 = v30;
  v71 = v32;
  [v31 handleBlock:v70];

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

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3 errorHandler:(id)a4
{
  if (HMICMSampleBufferIsAudio(a3))
  {
    v9 = [(HMIVideoAnalyzerServer *)self commandBuffer];
    [v9 handleSampleBuffer:a3];
  }

  else if (CMSampleBufferGetImageBuffer(a3))
  {

    [(HMIVideoAnalyzerServer *)self _handleDecodedSampleBuffer:a3];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
    CMSampleBufferGetDecodeTimeStamp(&v11, a3);
    self->_currentDTS = v11;
    v6 = [(HMIVideoAnalyzerServer *)self timeline];
    v7 = [MEMORY[0x277CBEAA8] now];
    CMSampleBufferGetPresentationTimeStamp(&v10, a3);
    [v6 addDate:v7 atTime:&v10];

    v8 = [(HMIVideoAnalyzerServer *)self commandBuffer];
    [v8 handleSampleBuffer:a3];
  }
}

- (void)flush
{
  v2 = [(HMIVideoAnalyzerServer *)self commandBuffer];
  [v2 flush];
}

- (void)flushAsync
{
  v2 = [(HMIVideoAnalyzerServer *)self commandBuffer];
  [v2 flushAsync];
}

- (void)finishWithCompletionHandler:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Finish Analyzer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMIVideoAnalyzerServer *)v6 commandBuffer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__HMIVideoAnalyzerServer_finishWithCompletionHandler___block_invoke;
  v11[3] = &unk_278752DF8;
  v11[4] = v6;
  v12 = v4;
  v10 = v4;
  [v9 handleBlock:v11];
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

- (void)_saveFragmentDataToDisk:(id)a3 diskBufferSize:(unint64_t)a4
{
  v45 = a3;
  v5 = [(HMIVideoAnalyzer *)self configuration];
  v6 = [v5 camera];
  v7 = [v6 name];
  v8 = v7;
  v9 = @"Unknown";
  if (v7)
  {
    v9 = v7;
  }

  v44 = v9;

  v41 = MEMORY[0x277CCACA8];
  v43 = [(HMIVideoAnalyzer *)self configuration];
  v42 = [v43 camera];
  v10 = [v42 manufacturer];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"UnknownManufacturer";
  }

  v13 = [(HMIVideoAnalyzer *)self configuration];
  v14 = [v13 camera];
  v15 = [v14 model];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"UnknownModel";
  }

  v18 = [(HMIVideoAnalyzer *)self configuration];
  v19 = [v18 camera];
  v20 = [v19 firmwareVersion];
  v21 = v20;
  v22 = @"UnknownFirmware";
  if (v20)
  {
    v22 = v20;
  }

  v23 = [v41 stringWithFormat:@"%@_%@_%@", v12, v17, v22];

  v24 = [v23 stringByReplacingOccurrencesOfString:@" " withString:@"-"];

  v25 = NSTemporaryDirectory();
  v26 = [v25 stringByAppendingPathComponent:v44];

  v27 = [MEMORY[0x277CCAA00] defaultManager];
  [v27 createDirectoryAtPath:v26 withIntermediateDirectories:1 attributes:0 error:0];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __65__HMIVideoAnalyzerServer__saveFragmentDataToDisk_diskBufferSize___block_invoke;
  v47[3] = &unk_278755DE8;
  v47[4] = self;
  v48 = v26;
  v49 = v45;
  v50 = a4;
  v28 = v45;
  v29 = v26;
  v30 = MEMORY[0x2318CB8E0](v47);
  v31 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v31 setDateFormat:@"YYYY-MM-dd-HH-mm-ss"];
  v32 = MEMORY[0x277CCACA8];
  v33 = [(HMIVideoAnalyzerServer *)self startDate];
  v34 = [v31 stringFromDate:v33];
  v35 = [(HMIVideoAnalyzer *)self identifier];
  v36 = [v32 stringWithFormat:@"%@_%@_%@", v34, v35, v24];

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

- (void)_prepareForInputVideoFormat:(opaqueCMFormatDescription *)a3 audioFormat:(opaqueCMFormatDescription *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if (![(HMIVideoAnalyzerServer *)self inputVideoFormat])
  {
    self->_inputVideoFormat = a3;
    if (a3)
    {
      CFRetain(a3);
    }
  }

  if (!CMFormatDescriptionEqual(a3, [(HMIVideoAnalyzerServer *)self inputVideoFormat]))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
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
    self->_inputAudioFormat = a4;
    if (a4)
    {
      CFRetain(a4);
    }
  }

  if (!CMFormatDescriptionEqual(a4, [(HMIVideoAnalyzerServer *)self inputAudioFormat]))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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

  v15 = [(HMIVideoAnalyzerServer *)self assetWriter];

  if (!v15)
  {
    [(HMIVideoAnalyzerServer *)self _configureAssetWriter];
  }
}

- (void)_prepareForTimelapseOutputVideoFormat:(opaqueCMFormatDescription *)a3
{
  if (!CMFormatDescriptionEqual(a3, [(HMIVideoAnalyzerServer *)self timelapseOutputVideoFormat]))
  {
    timelapseOutputVideoFormat = self->_timelapseOutputVideoFormat;
    if (timelapseOutputVideoFormat)
    {
      CFRelease(timelapseOutputVideoFormat);
    }

    self->_timelapseOutputVideoFormat = CFRetain(a3);

    [(HMIVideoAnalyzerServer *)self _configureTimelapseAssetWriter];
  }
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_DEBUG, "%{public}@[HMIVideoAnalyzerServer dealloc]", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  inputVideoFormat = v4->_inputVideoFormat;
  if (inputVideoFormat)
  {
    CFRelease(inputVideoFormat);
  }

  inputAudioFormat = v4->_inputAudioFormat;
  if (inputAudioFormat)
  {
    CFRelease(inputAudioFormat);
  }

  timelapseOutputVideoFormat = v4->_timelapseOutputVideoFormat;
  if (timelapseOutputVideoFormat)
  {
    CFRelease(timelapseOutputVideoFormat);
  }

  v10.receiver = v4;
  v10.super_class = HMIVideoAnalyzerServer;
  [(HMIVideoAnalyzer *)&v10 dealloc];
}

- (void)_configureAssetWriter
{
  v3 = [(HMIVideoAnalyzerServer *)self assetWriter];

  if (v3)
  {
    v7 = [HMIVideoAnalyzerServer _configureAssetWriter];
    [(HMIVideoAnalyzerServer *)v7 _configureTimelapseAssetWriter];
  }

  else
  {
    v4 = [[HMIVideoAssetWriter alloc] initWithVideoFormat:[(HMIVideoAnalyzerServer *)self inputVideoFormat] audioFormat:[(HMIVideoAnalyzerServer *)self inputAudioFormat]];
    [(HMIVideoAnalyzerServer *)self setAssetWriter:v4];

    v5 = [(HMIVideoAnalyzer *)self logIdentifier];
    v6 = [(HMIVideoAnalyzerServer *)self assetWriter];
    [v6 setLogIdentifier:v5];

    v9 = [(HMIVideoAnalyzerServer *)self assetWriter];
    [v9 setDelegate:self];
  }
}

- (void)_configureTimelapseAssetWriter
{
  if ([(HMIVideoAnalyzerServer *)self timelapseOutputVideoFormat])
  {
    v3 = [HMIVideoAssetWriter alloc];
    v4 = [(HMIVideoAnalyzerServer *)self timelapseOutputVideoFormat];
    v5 = [(HMIVideoAnalyzer *)self configuration];
    v6 = v5;
    if (v5)
    {
      [v5 timelapsePreferredFragmentDuration];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    v7 = [(HMIVideoAssetWriter *)v3 initWithVideoFormat:v4 audioFormat:0 initialFragmentSequenceNumber:1 preferredOutputSegmentInterval:v15];
    [(HMIVideoAnalyzerServer *)self setTimelapseAssetWriter:v7];

    v8 = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];
    [v8 setDelegate:self];

    v9 = [(HMIVideoAnalyzer *)self identifier];
    v10 = [v9 UUIDString];
    v11 = [v10 stringByAppendingString:@" Timelapse"];
    v12 = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];
    [v12 setLogIdentifier:v11];
  }

  else
  {
    v13 = [HMIVideoAnalyzerServer _configureTimelapseAssetWriter];
    [(HMIVideoAnalyzerServer *)v13 _configureEncoder];
  }
}

- (void)_configureEncoder
{
  if (!self->_encode)
  {
    [HMIVideoAnalyzerServer _configureEncoder];
    goto LABEL_9;
  }

  v3 = [(HMIVideoAnalyzerServer *)self encoder];

  if (v3)
  {
LABEL_9:
    [HMIVideoAnalyzerServer _configureEncoder];
    goto LABEL_10;
  }

  if (![(HMIVideoAnalyzerServer *)self inputVideoFormat])
  {
LABEL_10:
    v16 = [HMIVideoAnalyzerServer _configureEncoder];
    [(HMIVideoAnalyzerServer *)v16 _configureTimelapseEncoder];
    return;
  }

  v4 = [HMIVideoEncoder alloc];
  Dimensions = CMVideoFormatDescriptionGetDimensions([(HMIVideoAnalyzerServer *)self inputVideoFormat]);
  v6 = [(HMIVideoAnalyzer *)self configuration];
  v18 = 0;
  v7 = -[HMIVideoEncoder initWithDimensions:codecType:useHardwareAcceleration:error:](v4, "initWithDimensions:codecType:useHardwareAcceleration:error:", Dimensions, [v6 transcodeCodecType], 1, &v18);
  v8 = v18;
  [(HMIVideoAnalyzerServer *)self setEncoder:v7];

  v9 = [(HMIVideoAnalyzerServer *)self encoder];

  if (v9)
  {
    v10 = [(HMIVideoAnalyzer *)self logIdentifier];
    v11 = [(HMIVideoAnalyzerServer *)self encoder];
    [v11 setLogIdentifier:v10];

    v12 = [(HMIVideoAnalyzerServer *)self encoder];
    [v12 setAverageBitRate:1000000];

    v13 = [(HMIVideoAnalyzerServer *)self encoder];
    [v13 setDataRateLimit:{0x80000, 4}];

    v14 = [(HMIVideoAnalyzerServer *)self encoder];
    v15 = [(HMIVideoAnalyzerServer *)self encoderQueue];
    [v14 setDelegate:self queue:v15];
  }

  else
  {
    [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:v8];
  }
}

- (void)_configureTimelapseEncoder
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

  if (v3)
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
    v26 = self;
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
  v11 = [(HMIVideoAnalyzer *)self configuration];
  v30 = 0;
  v12 = -[HMIVideoEncoder initWithDimensions:codecType:useHardwareAcceleration:error:](v10, "initWithDimensions:codecType:useHardwareAcceleration:error:", v9 | v8, [v11 timelapseCodecType], 1, &v30);
  v13 = v30;
  [(HMIVideoAnalyzerServer *)self setTimelapseEncoder:v12];

  v14 = [(HMIVideoAnalyzer *)self logIdentifier];
  v15 = [v14 stringByAppendingString:@" Timelapse"];
  v16 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
  [v16 setLogIdentifier:v15];

  v17 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
  [v17 setAverageBitRate:100000];

  v18 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

  if (v18)
  {
    v19 = [(HMIVideoAnalyzer *)self configuration];
    v20 = v19;
    if (v19)
    {
      [v19 timelapsePreferredFragmentDuration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    v22 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
    [v22 setMaxKeyFrameIntervalDuration:Seconds];

    v23 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
    v24 = [(HMIVideoAnalyzerServer *)self encoderQueue];
    [v23 setDelegate:self queue:v24];
  }

  else
  {
    [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:v13];
  }
}

- (void)buffer:(id)a3 willHandleSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMIVideoAnalyzerServer *)self inputQueue];
  dispatch_assert_queue_V2(v7);

  if (![(HMIVideoAnalyzerServer *)self hasFailed]&& ![(HMIVideoAnalyzerServer *)self isCancelled])
  {
    if (HMICMSampleBufferIsAudio(a4))
    {
      v12 = [(HMIVideoAnalyzerServer *)self assetWriter];

      if (v12)
      {
        v13 = [(HMIVideoAnalyzerServer *)self assetWriter];
        [v13 handleSampleBuffer:a4];
        goto LABEL_15;
      }

      [HMIVideoAnalyzerServer buffer:willHandleSampleBuffer:];
LABEL_18:
      [HMIVideoAnalyzerServer buffer:willHandleSampleBuffer:];
    }

    v14 = [(HMIVideoAnalyzerServer *)self encoder];

    if (!v14)
    {
      v15 = [(HMIVideoAnalyzerServer *)self assetWriter];

      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = [(HMIVideoAnalyzerServer *)self assetWriter];
      [v16 handleSampleBuffer:a4];
    }

    CMSampleBufferGetPresentationTimeStamp(&v19, a4);
    v17 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:&v19];
    v18 = [v17 decodeMode];

    if (v18 == 1 && !HMICMSampleBufferIsSync(a4))
    {
      goto LABEL_16;
    }

    v13 = [(HMIVideoAnalyzerServer *)self decoder];
    [v13 handleSampleBuffer:a4 outputFrame:1];
LABEL_15:

    goto LABEL_16;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
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

- (void)bufferWillFlush:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMIVideoAnalyzerServer *)self inputQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMIVideoAnalyzerServer *)self hasFailed]|| [(HMIVideoAnalyzerServer *)self isCancelled])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
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
    v10 = [(HMIVideoAnalyzerServer *)self decoder];
    [v10 flush];

    v11 = [(HMIVideoAnalyzerServer *)self frameSelector];
    [v11 flush];

    v12 = [(HMIVideoAnalyzerServer *)self frameTracker];
    [v12 flush];

    v13 = [(HMIVideoAnalyzerServer *)self encoder];
    [v13 flush];

    v14 = [(HMIVideoAnalyzerServer *)self assetWriter];
    [v14 flush];

    v15 = [(HMIVideoAnalyzerServer *)self frameAnalyzer];
    [v15 flush];
  }
}

- (void)_updateDecoderAndEncodersForFragment:(id)a3 withConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  -[HMIVideoAnalyzerServer _updateDecoderForFragment:decodeMode:](self, "_updateDecoderForFragment:decodeMode:", v7, [v6 decodeMode]);

  -[HMIVideoAnalyzerServer _updateEncoder:](self, "_updateEncoder:", [v6 shouldEncode]);
  if (v6)
  {
    [v6 timelapseInterval];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  [(HMIVideoAnalyzerServer *)self _updateTimelapseEncoder:v8];
}

- (void)_updateDecoderForFragment:(id)a3 decodeMode:(int64_t)a4
{
  v11 = a3;
  if (a4)
  {
    v6 = [(HMIVideoAnalyzerServer *)self decoder];

    if (!v6)
    {
      v7 = -[HMIVideoDecoder initWithFrameReordering:]([HMIVideoDecoder alloc], "initWithFrameReordering:", [v11 frameReorderingRequired]);
      decoder = self->_decoder;
      self->_decoder = v7;

      v9 = [(HMIVideoAnalyzer *)self logIdentifier];
      [(HMIVideoDecoder *)self->_decoder setLogIdentifier:v9];

      [(HMIVideoDecoder *)self->_decoder setDelegate:self];
    }
  }

  else
  {
    v10 = self->_decoder;
    self->_decoder = 0;
  }
}

- (void)_updateEncoder:(BOOL)a3
{
  if (a3)
  {
    v4 = [(HMIVideoAnalyzerServer *)self encoder];

    if (!v4)
    {

      [(HMIVideoAnalyzerServer *)self _configureEncoder];
    }
  }

  else
  {

    [(HMIVideoAnalyzerServer *)self setEncoder:0];
  }
}

- (void)_updateTimelapseEncoder:(id *)a3
{
  if (a3->var2)
  {
    v5 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

    if (!v5)
    {
      [(HMIVideoAnalyzerServer *)self _configureTimelapseEncoder];
    }

    v6 = [(HMIVideoAnalyzerServer *)self frameTimelapseSampler];

    if (!v6)
    {
      v7 = [HMIVideoFrameIntervalSampler alloc];
      v10 = *&a3->var0;
      var3 = a3->var3;
      v8 = [(HMIVideoFrameIntervalSampler *)v7 initWithInterval:&v10];
      [(HMIVideoAnalyzerServer *)self setFrameTimelapseSampler:v8];

      v9 = [(HMIVideoAnalyzerServer *)self frameTimelapseSampler];
      [v9 setDelegate:self];
    }
  }

  else
  {
    [(HMIVideoAnalyzerServer *)self setTimelapseEncoder:0];

    [(HMIVideoAnalyzerServer *)self setFrameTimelapseSampler:0];
  }
}

- (void)decoder:(id)a3 didDecodeSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  v6 = [(HMIVideoAnalyzerServer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMIVideoAnalyzerServer_decoder_didDecodeSampleBuffer___block_invoke;
  v7[3] = &unk_278754838;
  v7[4] = self;
  v7[5] = a4;
  dispatch_sync(v6, v7);
}

- (void)encoder:(id)a3 didEncodeSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  v16 = a3;
  v6 = [(HMIVideoAnalyzerServer *)self encoder];

  if (v6 == v16)
  {
    v11 = [(HMIVideoAnalyzerServer *)self assetWriter];

    if (v11)
    {
      v10 = [(HMIVideoAnalyzerServer *)self assetWriter];
      goto LABEL_7;
    }

    [HMIVideoAnalyzerServer buffer:willHandleSampleBuffer:];
LABEL_12:
    v13 = [HMIVideoAnalyzerServer encoder:didEncodeSampleBuffer:];
    [(HMIVideoAnalyzerServer *)v13 _handleDecodedSampleBuffer:v14, v15];
    return;
  }

  v7 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

  v8 = v16;
  if (v7 == v16)
  {
    [(HMIVideoAnalyzerServer *)self _prepareForTimelapseOutputVideoFormat:CMSampleBufferGetFormatDescription(a4)];
    v9 = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];

    if (v9)
    {
      v10 = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];
LABEL_7:
      v12 = v10;
      [v10 handleSampleBuffer:a4];

      v8 = v16;
      goto LABEL_8;
    }

    goto LABEL_12;
  }

LABEL_8:
}

- (void)_handleDecodedSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(HMIVideoAnalyzerServer *)self workQueue];
  dispatch_assert_queue_V2(v5);

  memset(&v13, 0, sizeof(v13));
  CMSampleBufferGetDuration(&v13, a3);
  sampleBufferOut = 0;
  if ((v13.flags & 1) == 0)
  {
    memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
    CMSampleBufferGetDecodeTimeStamp(&sampleTimingArray.decodeTimeStamp, a3);
    CMSampleBufferGetPresentationTimeStamp(&v10, a3);
    sampleTimingArray.presentationTimeStamp = v10;
    CMTimeMake(&v10, 1, 30);
    sampleTimingArray.duration = v10;
    CMSampleBufferCreateCopyWithNewTiming(0, a3, 1, &sampleTimingArray, &sampleBufferOut);
    a3 = sampleBufferOut;
  }

  self->_numDecodedSamples += CMSampleBufferGetNumSamples(a3);
  memset(&sampleTimingArray, 0, 24);
  CMSampleBufferGetPresentationTimeStamp(&sampleTimingArray.duration, a3);
  *&self->_currentPTS.value = *&sampleTimingArray.duration.value;
  self->_currentPTS.epoch = sampleTimingArray.duration.epoch;
  v6 = [(HMIVideoAnalyzerServer *)self encoder];
  [v6 handleSampleBuffer:a3];

  v7 = [(HMIVideoAnalyzerServer *)self frameSelector];
  [v7 handleSampleBuffer:a3];

  v8 = [(HMIVideoAnalyzerServer *)self frameThumbnailSampler];
  [v8 handleSampleBuffer:a3];

  v9 = [(HMIVideoAnalyzerServer *)self frameTimelapseSampler];
  [v9 handleSampleBuffer:a3];

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }
}

- (opaqueCMSampleBuffer)frameSelector:(id)a3 prepareFrame:(opaqueCMSampleBuffer *)a4
{
  v5 = [(HMIVideoAnalyzerServer *)self frameTracker];
  v6 = [v5 prepareSampleBuffer:a4];

  return v6;
}

- (void)frameSelector:(id)a3 didSelectFrame:(opaqueCMSampleBuffer *)a4 reference:(opaqueCMSampleBuffer *)a5
{
  CMSampleBufferGetPresentationTimeStamp(&v11, a4);
  v8 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:&v11];
  v9 = [(HMIVideoAnalyzerServer *)self frameTracker];
  [v9 setDynamicConfiguration:v8];

  v10 = [(HMIVideoAnalyzerServer *)self frameTracker];
  [v10 handleSampleBuffer:a4 reference:a5];
}

- (void)frameSelector:(id)a3 didSkipFrame:(opaqueCMSampleBuffer *)a4
{
  v5 = [(HMIVideoAnalyzerServer *)self frameTracker];
  [v5 handleSampleBuffer:a4];
}

- (void)frameTracker:(id)a3 didTrackFrame:(opaqueCMSampleBuffer *)a4 background:(opaqueCMSampleBuffer *)a5 motionDetections:(id)a6 tracks:(id)a7
{
  v11 = a7;
  v12 = a6;
  CMSampleBufferGetPresentationTimeStamp(&v16, a4);
  v13 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:&v16];
  v14 = [(HMIVideoAnalyzerServer *)self frameAnalyzer];
  [v14 setDynamicConfiguration:v13];

  v15 = [(HMIVideoAnalyzerServer *)self frameAnalyzer];
  [v15 handleSampleBuffer:a4 background:a5 motionDetections:v12 tracks:v11];
}

- (id)_filterFrameResult:(id)a3 dynamicConfiguration:(id)a4 motionDetections:(id)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__11;
  v30 = __Block_byref_object_dispose__11;
  v11 = v8;
  v31 = v11;
  v12 = [HMIVideoAnalyzerResultActivityZoneFilter alloc];
  v13 = [v9 activityZones];
  v14 = [(HMIVideoAnalyzerResultActivityZoneFilter *)v12 initWithActivityZones:v13 motionDetections:v10];
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
    v17 = [(HMIVideoAnalyzer *)self configuration];
    v18 = [v17 enableTemporalEventFiltering];

    if (v18)
    {
      v19 = [HMIMotionDetection firstMotionDetectionInArray:v10 withMode:2];
      v20 = [(HMIVideoAnalyzerServer *)self temporalEventFilter];
      v21 = [v20 applyFilterWithFrameResult:v27[5] motionDetection:v19];
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

- (void)frameAnalyzer:(id)a3 didAnalyzeFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  ++self->_numDidAnalyzeFrames;
  v8 = [(HMIVideoAnalyzerServer *)self frameTracker];
  [v8 handleFrameAnalyzerResult:v7];

  v9 = [v7 frame];
  v10 = v9;
  if (v9)
  {
    [v9 presentationTimeStamp];
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  v11 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:&v38];

  v12 = [v7 frame];
  v13 = [(HMIVideoAnalyzer *)self configuration];
  [v13 minFrameScale];
  v15 = v14;
  v16 = [(HMIVideoAnalyzer *)self configuration];
  [v16 minFrameQuality];
  v44 = 0;
  v18 = [v12 compressedFrameWithScale:&v44 quality:v15 error:v17];
  v19 = v44;

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__11;
  v42 = __Block_byref_object_dispose__11;
  v20 = [HMIVideoAnalyzerFrameResult alloc];
  v21 = [v7 events];
  [v7 regionOfInterest];
  v43 = [(HMIVideoAnalyzerFrameResult *)v20 initWithFrame:v18 events:v21 regionOfInterest:?];

  v22 = v39[5];
  v23 = [v7 motionDetections];
  v24 = [(HMIVideoAnalyzerServer *)self _filterFrameResult:v22 dynamicConfiguration:v11 motionDetections:v23];
  v25 = v39[5];
  v39[5] = v24;

  v26 = [v7 events];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __56__HMIVideoAnalyzerServer_frameAnalyzer_didAnalyzeFrame___block_invoke;
  v34 = &unk_278755210;
  v35 = self;
  v27 = v7;
  v36 = v27;
  v37 = &v38;
  [v26 na_each:&v31];

  v28 = [v39[5] events];
  v29 = [v28 count];

  if (v29)
  {
    v30 = [(HMIVideoAnalyzerServer *)self frameAnalyzerFrameResultBuffer];
    [v30 addObject:v39[5]];

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

- (void)frameSampler:(id)a3 didSampleFrame:(opaqueCMSampleBuffer *)a4
{
  v6 = a3;
  v7 = [(HMIVideoAnalyzerServer *)self frameTimelapseSampler];

  if (v7 == v6)
  {
    v19 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];
    [v19 handleSampleBuffer:a4];

    goto LABEL_9;
  }

  v8 = [(HMIVideoAnalyzerServer *)self frameThumbnailSampler];
  if (v8 != v6)
  {
    goto LABEL_7;
  }

  v9 = +[HMIPreference sharedInstance];
  [(HMIVideoAnalyzerServer *)self analysisFPS];
  v10 = [v9 shouldGenerateThumbnailForAnalysisFPS:?];

  if (v10)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a4);
    Size = HMICVPixelBufferGetSize(ImageBuffer);
    v14 = 1.0;
    if (v13 > 0.0)
    {
      v15 = v13;
      v16 = [(HMIVideoAnalyzer *)self configuration];
      v14 = [v16 thumbnailHeight] / v15;
    }

    v17 = [[HMIVideoFrame alloc] initWithSampleBuffer:a4];
    v20 = 0;
    v8 = [(HMIVideoFrame *)v17 compressedFrameWithScale:&v20 quality:v14 error:1.0];

    v18 = [(HMIVideoAnalyzerServer *)self thumbnailBuffer];
    [v18 addObject:v8];

LABEL_7:
  }

LABEL_9:
}

- (void)assetWriter:(id)a3 didOutputInitializationSegment:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMIVideoAnalyzerServer *)self assetWriter];

  if (v7 == v9)
  {
    [(HMIVideoAnalyzerServer *)self setInitializationSegment:v6];
  }

  else
  {
    v8 = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];

    if (v8 == v9)
    {
      [(HMIVideoAnalyzerServer *)self setTimelapseInitializationSegment:v6];
    }
  }
}

- (void)assetWriter:(id)a3 didOutputSeparableSegment:(id)a4 segmentReport:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 trackReports];
  v12 = [v11 na_firstObjectPassingTest:&__block_literal_global_392];

  memset(&v66, 0, sizeof(v66));
  v13 = [v12 firstVideoSampleInformation];
  v14 = v13;
  if (v13)
  {
    [v13 presentationTimeStamp];
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

  v15 = [v12 firstVideoSampleInformation];
  v16 = [v15 offset];
  v17 = [v15 length];
  v18 = [(HMIVideoAnalyzerServer *)self timelapseAssetWriter];

  if (v18 != v8)
  {
    v61 = v16;
    v62 = v10;
    v63 = v8;
    v64 = v9;
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = HMFGetLogIdentifier();
      start = v66;
      v23 = HMICMTimeRangeDescription(&start);
      v24 = [(HMIVideoAnalyzerServer *)v20 frameAnalyzerFrameResultBuffer];
      v25 = [(HMIVideoAnalyzerServer *)v20 thumbnailBuffer];
      LODWORD(start.start.value) = 138544130;
      *(&start.start.value + 4) = v22;
      LOWORD(start.start.flags) = 2112;
      *(&start.start.flags + 2) = v23;
      HIWORD(start.start.epoch) = 2112;
      start.duration.value = v24;
      LOWORD(start.duration.timescale) = 2112;
      *(&start.duration.timescale + 2) = v25;
      _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Bundling Fragment Result, timeRange: %@, frames: [%@], thumbnails [%@]", &start, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    v26 = [(HMIVideoAnalyzerServer *)v20 frameAnalyzerFrameResultBuffer];
    start = v66;
    v27 = [v26 extractObjectsInTimeRange:&start];

    v28 = [(HMIVideoAnalyzerServer *)v20 frameAnalyzerFrameResultBuffer];
    v29 = [v28 count];

    if (v29)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v20;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [(HMIVideoAnalyzerServer *)v31 frameAnalyzerFrameResultBuffer];
        LODWORD(start.start.value) = 138543618;
        *(&start.start.value + 4) = v33;
        LOWORD(start.start.flags) = 2112;
        *(&start.start.flags + 2) = v34;
        _os_log_impl(&dword_22D12F000, v32, OS_LOG_TYPE_ERROR, "%{public}@Analyzer frame result buffer should be empty. %@", &start, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v35 = [(HMIVideoAnalyzerServer *)v31 frameAnalyzerFrameResultBuffer];
      [v35 removeAllObjects];
    }

    v36 = [(HMIVideoAnalyzerServer *)v20 thumbnailBuffer];
    start = v66;
    v37 = [v36 extractObjectsInTimeRange:&start];

    v38 = [(HMIVideoAnalyzerServer *)v20 thumbnailBuffer];
    v39 = [v38 count];

    if (v39)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = v20;
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
      v45 = [(HMIVideoAnalyzerServer *)v41 thumbnailBuffer];
      [v45 removeAllObjects];
    }

    v46 = [HMIVideoFragment alloc];
    v47 = [(HMIVideoAnalyzerServer *)v20 initializationSegment];
    start = v66;
    v48 = [(HMIVideoFragment *)v46 initWithInitializationSegment:v47 separableSegment:v64 timeRange:&start firstVideoSampleByteRange:v61, v17];

    *&start.start.value = *&v66.start.value;
    start.start.epoch = v66.start.epoch;
    v49 = [(HMIVideoAnalyzerServer *)v20 dynamicConfigurationForTime:&start];
    v50 = [HMIVideoAnalyzerResultOutcome alloc];
    [(HMIVideoAnalyzerServer *)v20 analysisFPS];
    v51 = [(HMIVideoAnalyzerResultOutcome *)v50 initWithCode:1 analysisFPS:0 message:?];
    v52 = [v49 decodeMode];
    if (v52)
    {
      if (v52 != 1)
      {
LABEL_23:
        v58 = [HMIVideoAnalyzerFragmentResult alloc];
        v59 = [MEMORY[0x277CBEB98] set];
        v60 = [(HMIVideoAnalyzerFragmentResult *)v58 initWithFragment:v48 events:v59 frameResults:v27 thumbnails:v37 configuration:v49 outcome:v51];

        [(HMIVideoAnalyzerServer *)v20 _notifyDelegateDidAnalyzeFragmentWithResult:v60];
        ++v20->_numDidAnalyzeFragments;

        v8 = v63;
        v9 = v64;
        v10 = v62;
        goto LABEL_24;
      }

      v53 = @"Analyzer is in partial bypass mode, only IFrames are decoded.";
    }

    else
    {
      v53 = @"Analyzer is in full bypass mode.";
    }

    v56 = [HMIVideoAnalyzerResultOutcome alloc];
    [(HMIVideoAnalyzerServer *)v20 analysisFPS];
    v57 = [(HMIVideoAnalyzerResultOutcome *)v56 initWithCode:0 analysisFPS:v53 message:?];

    v51 = v57;
    goto LABEL_23;
  }

  v54 = [HMIVideoFragment alloc];
  v55 = [(HMIVideoAnalyzerServer *)self timelapseInitializationSegment];
  start = v66;
  v27 = [(HMIVideoFragment *)v54 initWithInitializationSegment:v55 separableSegment:v9 timeRange:&start firstVideoSampleByteRange:v16, v17];

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

- (void)encoder:(id)a3 didFailWithError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMIVideoAnalyzerServer *)self timelapseEncoder];

  if (v8 == v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v12;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Timelapse encoder failed, ignoring: error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMIVideoAnalyzerServer *)v10 setTimelapseEncoder:0];
  }

  else
  {
    [(HMIVideoAnalyzerServer *)self _notifyDelegateDidFailWithError:v7];
  }
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMIVideoAnalyzerServer *)self watchdogTimer];

  if (v5 == v4)
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

- (void)_notifyDelegateDidAnalyzeFragmentWithResult:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 fragment];
    v10 = [v4 outcome];
    v11 = [v4 maxConfidenceEvents];
    *buf = 138544130;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Generated Fragment: %@ Outcome: %@ Max Confidence Events: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = [(HMIVideoAnalyzerServer *)v6 state];
  [HMIAnalytics videoAnalyzerDidAnalyzeFragmentWithResult:v4 state:v12];

  v13 = [(HMIVideoAnalyzer *)v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v13 analyzer:v6 didAnalyzeFragmentWithResult:v4];
  }

  v15 = v4;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [(HMIVideoAnalyzerServer *)v6 _produceResult:sel_analyzer_didAnalyzeFragmentWithResult_ withArguments:v14];
}

- (void)_notifyDelegateDidAnalyzeFrameWithResult:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMIVideoAnalyzer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 analyzer:self didAnalyzeFrameWithResult:v4];
  }

  v7[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(HMIVideoAnalyzerServer *)self _produceResult:sel_analyzer_didAnalyzeFrameWithResult_ withArguments:v6];
}

- (void)_notifyDelegateDidCreateTimelapseFragment:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMIVideoAnalyzerServer *)self state];
  [HMIAnalytics videoAnalyzerDidCreateTimelapseFragment:v4 state:v5];

  v6 = [(HMIVideoAnalyzer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 analyzer:self didCreateTimelapseFragment:v4];
  }

  v8[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(HMIVideoAnalyzerServer *)self _produceResult:sel_analyzer_didCreateTimelapseFragment_ withArguments:v7];
}

- (void)_notifyDelegateDidFailWithError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Analyzer Failed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMIVideoAnalyzerServer *)v6 hasFailed])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v6;
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
    v13 = [(HMIVideoAnalyzerServer *)v6 state];
    [HMIAnalytics videoAnalyzerDidTerminateWithError:v4 state:v13];

    [(HMIVideoAnalyzerServer *)v6 setHasFailed:1];
    v14 = [(HMIVideoAnalyzer *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v14 analyzer:v6 didFailWithError:v4];
    }

    v16 = v4;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(HMIVideoAnalyzerServer *)v6 _produceResult:sel_analyzer_didFailWithError_ withArguments:v15];
  }
}

- (void)_notifyDelegateDidProduceAnalysisStateUpdate:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMIVideoAnalyzer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 analyzer:self didProduceAnalysisStateUpdate:v4];
  }

  v7[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(HMIVideoAnalyzerServer *)self _produceResult:sel_analyzer_didProduceAnalysisStateUpdate_ withArguments:v6];
}

- (void)_produceResult:(SEL)a3 withArguments:(id)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMIVideoAnalyzer *)self delegate];
  if ([v7 conformsToProtocol:&unk_28408D330])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (objc_opt_respondsToSelector())
  {
    v20[0] = @"selector";
    v10 = NSStringFromSelector(a3);
    v20[1] = @"arguments";
    v21[0] = v10;
    v21[1] = v6;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v12 = objc_autoreleasePoolPush();
    v13 = self;
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
    [v9 analyzer:v13 didProduceResult:v11];
  }
}

- (id)state
{
  currentPTS = self->_currentPTS;
  v33 = [(HMIVideoAnalyzerServer *)self dynamicConfigurationForTime:&currentPTS];
  v31 = [HMIVideoAnalyzerState alloc];
  v32 = [(HMIVideoAnalyzer *)self configuration];
  v30 = [(HMIVideoAnalyzer *)self identifier];
  v29 = [(HMIVideoAnalyzerServer *)self monitored];
  [(HMIVideoAnalyzerServer *)self analysisFPS];
  v4 = v3;
  [(HMIVideoAnalyzerServer *)self timeSinceAnalyzerStarted];
  v6 = v5;
  [(HMIVideoAnalyzerServer *)self timeSinceLastFragmentWasReceived];
  v8 = v7;
  v28 = [(HMIVideoAnalyzerServer *)self commandBuffer];
  [v28 fillRatio];
  v10 = v9;
  v11 = [(HMIVideoAnalyzerServer *)self commandBuffer];
  v27 = [v11 size];
  [(HMIVideoAnalyzerServer *)self delay];
  v13 = v12;
  [(HMIVideoAnalyzerServer *)self currentPTS];
  numDecodedSamples = self->_numDecodedSamples;
  numDidAnalyzeFrames = self->_numDidAnalyzeFrames;
  numDidAnalyzeFragments = self->_numDidAnalyzeFragments;
  numDidAnalyzePackages = self->_numDidAnalyzePackages;
  numDidCreateTimelapseFragments = self->_numDidCreateTimelapseFragments;
  v18 = [(HMIVideoAnalyzerServer *)self frameAnalyzer];
  [v18 averageAnalysisTime];
  v20 = v19;
  v21 = [(HMIVideoAnalyzerServer *)self encode];
  v22 = [(HMIVideoAnalyzerServer *)self encoder];
  BYTE1(v25) = v22 != 0;
  LOBYTE(v25) = v21;
  v23 = [(HMIVideoAnalyzerState *)v31 initWithConfiguration:v32 dynamicConfiguration:v33 identifier:v30 monitored:v29 analysisFPS:v27 timeSinceAnalyzerStarted:&currentPTS timeSinceLastFragmentWasReceived:v4 bufferFillRatio:v6 bufferSize:v8 delay:v10 currentPTS:v13 numDecodedSamples:v20 numDidAnalyzeFrames:numDecodedSamples numDidAnalyzeFragments:numDidAnalyzeFrames numDidAnalyzePackages:numDidAnalyzeFragments numDidCreateTimelapseFragments:numDidAnalyzePackages averageAnalysisTime:numDidCreateTimelapseFragments encode:v25 encoder:[(HMIVideoAnalyzerServer *)self decodeMode] decodeMode:?];

  return v23;
}

- (double)timeSinceAnalyzerStarted
{
  v2 = [(HMIVideoAnalyzerServer *)self startDate];
  [v2 timeIntervalSinceNow];
  v4 = -v3;

  return v4;
}

- (double)timeSinceLastFragmentWasReceived
{
  v2 = [(HMIVideoAnalyzerServer *)self lastFragmentReceivedDate];
  [v2 timeIntervalSinceNow];
  v4 = -v3;

  return v4;
}

- (double)delay
{
  v2 = [(HMIVideoAnalyzerServer *)self commandBuffer];
  [v2 delay];
  v4 = v3;

  return v4;
}

- (void)setAnalysisFPS:(double)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_analysisFPS != a3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
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
      v16 = a3;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@analysisFPS changing from: %f to: %f", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  self->_analysisFPS = a3;
  v10 = [(HMIVideoAnalyzerServer *)self frameSelector];
  [v10 setSampleRate:a3 * 3.0];
}

- (void)setDecodeMode:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_decodeMode != a3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = HMIVideoAnalyzerDecodeModeAsString(self->_decodeMode);
      v10 = HMIVideoAnalyzerDecodeModeAsString(a3);
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

  self->_decodeMode = a3;
}

- (void)setBoosted:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Analyzer boosting is not supported on this platform.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v6->_boosted = a3;
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

  v4 = [(HMIVideoAnalyzerServer *)self commandBuffer];
  v5 = [v4 isEmpty];

  return v5 ^ 1u;
}

@end