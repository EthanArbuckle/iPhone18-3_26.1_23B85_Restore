@interface HMIFeedbackVisionProcessor
+ (BOOL)reencodeAssetURL:(id)l outputURL:(id)rL bitRate:(int64_t)rate duration:(id *)duration analysisFPS:(float)s sampleFrameHandler:(id)handler dropFrameHandler:(id)frameHandler;
- (BOOL)blurFacesFromAssetURL:(id)l outputURL:(id)rL duration:(id *)duration analysisFPS:(float)s windowSize:(unint64_t)size faceDetected:(BOOL *)detected;
- (__CVBuffer)_createBlurredPixelBuffer:(__CVBuffer *)buffer events:(id)events;
- (unsigned)_blurRadiusForEvents:(id)events imageSize:(CGSize)size;
- (void)_addEventsToEventQueue:(id)queue events:(id)events;
- (void)_blurSampleBufferWithEncoder:(id)encoder sampleBuffer:(opaqueCMSampleBuffer *)buffer events:(id)events;
@end

@implementation HMIFeedbackVisionProcessor

+ (BOOL)reencodeAssetURL:(id)l outputURL:(id)rL bitRate:(int64_t)rate duration:(id *)duration analysisFPS:(float)s sampleFrameHandler:(id)handler dropFrameHandler:(id)frameHandler
{
  v90 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  frameHandlerCopy = frameHandler;
  v57 = lCopy;
  v62 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:1 error:0];
  if (v62)
  {
    v16 = [[HMIVideoFragment alloc] initWithData:v62];
    v17 = [HMIMemoryAVAsset alloc];
    v55 = v16;
    data = [(HMIVideoFragment *)v16 data];
    v19 = [(HMIMemoryAVAsset *)v17 initWithData:data];

    v54 = v19;
    v20 = [[HMIVideoAssetReader alloc] initWithAsset:v19];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v87 = __Block_byref_object_copy__8;
    v88 = __Block_byref_object_dispose__8;
    v89 = 0;
    v21 = objc_opt_new();
    v78 = 0;
    v79 = &v78;
    v80 = 0x3032000000;
    v81 = __Block_byref_object_copy__8;
    v82 = __Block_byref_object_dispose__8;
    v83 = 0;
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke;
    v77[3] = &unk_278755490;
    v77[4] = &v78;
    [v21 setAssetWriterDidOutputInitializationSegment:v77];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke_2;
    v76[3] = &unk_2787554B8;
    v76[4] = &v78;
    [v21 setAssetWriterDidOutputSeparableSegment:v76];
    v22 = [[HMIVideoEncoder alloc] initWithDimensions:CMVideoFormatDescriptionGetDimensions([(HMIVideoFragment *)v55 videoFormatDescription]) codecType:1635148593 useHardwareAcceleration:1 error:0];
    [(HMIVideoEncoder *)v22 setAverageBitRate:rate];
    v59 = objc_opt_new();
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("Encoder Queue", v23);
    [(HMIVideoEncoder *)v22 setDelegate:v59 queue:v24];

    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke_3;
    v73[3] = &unk_2787554E0;
    v75 = buf;
    v53 = v21;
    v74 = v53;
    [v59 setEncoderDidEncodeSampleBuffer:v73];
    v25 = [HMIVideoFrameIntervalSampler alloc];
    *&v26 = s;
    v27 = [(HMIVideoFrameIntervalSampler *)v25 initWithFrameRate:v26];
    v28 = objc_opt_new();
    [(HMIVideoFrameSampler *)v27 setDelegate:v28];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke_4;
    v70[3] = &unk_278755508;
    v72 = handlerCopy;
    v29 = v22;
    v71 = v29;
    [v28 setFrameSamplerDidSampleFrame:v70];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke_5;
    v67[3] = &unk_278755508;
    v69 = frameHandlerCopy;
    v30 = v29;
    v68 = v30;
    [v28 setFrameSamplerDidDropFrame:v67];
    v31 = objc_alloc_init(HMIVideoDecoder);
    v32 = objc_opt_new();
    [(HMIVideoDecoder *)v31 setDelegate:v32];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke_6;
    v65[3] = &unk_278755530;
    v33 = v27;
    v66 = v33;
    [v32 setDecoderDidDecodeSampleBuffer:v65];
    while (1)
    {
      copyNextSampleBuffer = [(HMIVideoAssetReader *)v20 copyNextSampleBuffer];
      v35 = copyNextSampleBuffer;
      if (!copyNextSampleBuffer)
      {
        break;
      }

      if (HMICMSampleBufferIsVideo(copyNextSampleBuffer))
      {
        [(HMIVideoDecoder *)v31 handleSampleBuffer:v35 outputFrame:1];
      }

      memset(&v64, 0, sizeof(v64));
      CMSampleBufferGetPresentationTimeStamp(&v64, v35);
      CFRelease(v35);
      time1 = v64;
      time2 = *duration;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          time2 = v64;
          Seconds = CMTimeGetSeconds(&time2);
          time2 = *duration;
          v40 = CMTimeGetSeconds(&time2);
          LODWORD(time1.value) = 138543874;
          *(&time1.value + 4) = v38;
          LOWORD(time1.flags) = 2048;
          *(&time1.flags + 2) = Seconds;
          HIWORD(time1.epoch) = 2048;
          v85 = v40;
          _os_log_impl(&dword_22D12F000, v37, OS_LOG_TYPE_INFO, "%{public}@Finish re-encoding %.3f > %.3f", &time1, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        break;
      }
    }

    [(HMIVideoDecoder *)v31 flush];
    [(HMIVideoEncoder *)v30 flush];
    [*(*&buf[8] + 40) flush];
    v41 = v79[5];
    if (v41)
    {
      v42 = [v41 writeToURL:rLCopy atomically:1];
    }

    else
    {
      v47 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = HMFGetLogIdentifier();
        LODWORD(time1.value) = 138543618;
        *(&time1.value + 4) = v50;
        LOWORD(time1.flags) = 2112;
        *(&time1.flags + 2) = v57;
        _os_log_impl(&dword_22D12F000, v49, OS_LOG_TYPE_ERROR, "%{public}@Unable to get fragment %@ from AssetWriter", &time1, 0x16u);
      }

      objc_autoreleasePoolPop(v47);
      v42 = 0;
    }

    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v43 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v46;
      *&buf[12] = 2112;
      *&buf[14] = lCopy;
      _os_log_impl(&dword_22D12F000, v45, OS_LOG_TYPE_ERROR, "%{public}@Unable to read the asset %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    v42 = 0;
  }

  return v42;
}

uint64_t __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke(uint64_t result, uint64_t a2, void *a3)
{
  if (!*(*(*(result + 32) + 8) + 40))
  {
    v4 = result;
    v5 = [a3 mutableCopy];
    v6 = *(*(v4 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return MEMORY[0x2821F96F8](v5, v7);
  }

  return result;
}

uint64_t __122__HMIFeedbackVisionProcessor_reencodeAssetURL_outputURL_bitRate_duration_analysisFPS_sampleFrameHandler_dropFrameHandler___block_invoke_3(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (!v5)
  {
    v6 = [HMIVideoAssetWriter alloc];
    FormatDescription = CMSampleBufferGetFormatDescription(a3);
    v12 = *MEMORY[0x277CC0888];
    v13 = *(MEMORY[0x277CC0888] + 16);
    v8 = [(HMIVideoAssetWriter *)v6 initWithVideoFormat:FormatDescription audioFormat:0 initialFragmentSequenceNumber:1 preferredOutputSegmentInterval:&v12];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(*(*(a1 + 40) + 8) + 40) setDelegate:*(a1 + 32)];
    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  return [v5 handleSampleBuffer:a3];
}

- (BOOL)blurFacesFromAssetURL:(id)l outputURL:(id)rL duration:(id *)duration analysisFPS:(float)s windowSize:(unint64_t)size faceDetected:(BOOL *)detected
{
  v51 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v16 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:1 error:0];
  if (v16)
  {
    durationCopy = duration;
    v40 = rLCopy;
    v17 = [HMICameraVideoFrameAnalyzerSignificantActivity alloc];
    v18 = +[HMIVideoAnalyzerEvent defaultConfidenceThresholdsFeedback];
    v19 = +[HMIVideoAnalyzerEvent defaultConfidenceThresholdsFeedback];
    v20 = objc_alloc_init(HMIVideoAnalyzerConfiguration);
    v49 = 0;
    v21 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)v17 initWithMediumConfidenceThresholds:v18 highConfidenceThresholds:v19 analyzerConfiguration:v20 error:&v49];
    v22 = v49;

    if (v22)
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2112;
        *&buf[14] = v22;
        _os_log_impl(&dword_22D12F000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unable to init face detector %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v27 = 0;
      rLCopy = v40;
    }

    else
    {
      if (detected)
      {
        *detected = 0;
      }

      array = [MEMORY[0x277CBEB18] array];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __107__HMIFeedbackVisionProcessor_blurFacesFromAssetURL_outputURL_duration_analysisFPS_windowSize_faceDetected___block_invoke;
      v43[3] = &unk_278755558;
      v44 = v21;
      selfCopy2 = self;
      v33 = array;
      v46 = v33;
      sizeCopy = size;
      detectedCopy = detected;
      v34 = MEMORY[0x2318CB8E0](v43);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __107__HMIFeedbackVisionProcessor_blurFacesFromAssetURL_outputURL_duration_analysisFPS_windowSize_faceDetected___block_invoke_22;
      v41[3] = &unk_278755580;
      v41[4] = self;
      v42 = v33;
      v35 = v33;
      v36 = MEMORY[0x2318CB8E0](v41);
      rLCopy = v40;
      *buf = *v39;
      *&buf[16] = *(v39 + 16);
      v27 = [HMIFeedbackVisionProcessor reencodeAssetURL:lCopy outputURL:v40 bitRate:2000000 duration:buf analysisFPS:v34 sampleFrameHandler:v36 dropFrameHandler:COERCE_DOUBLE(__PAIR64__(*&buf[4], LODWORD(s)))];
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v31;
      *&buf[12] = 2112;
      *&buf[14] = lCopy;
      _os_log_impl(&dword_22D12F000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to read the asset %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v27 = 0;
  }

  return v27;
}

void __107__HMIFeedbackVisionProcessor_blurFacesFromAssetURL_outputURL_duration_analysisFPS_windowSize_faceDetected___block_invoke(uint64_t a1, void *a2, void *a3, opaqueCMSampleBuffer *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  ImageBuffer = CMSampleBufferGetImageBuffer(a4);
  v10 = *(a1 + 32);
  v23 = 0;
  v11 = [v10 analyzePixelBuffer:ImageBuffer regionOfInterest:&v23 error:{0.0, 0.0, 1.0, 1.0}];
  v12 = v23;
  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 40);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      CMSampleBufferGetPresentationTimeStamp(&time, a4);
      Seconds = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = v16;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = Seconds;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_ERROR, "%{public}@Skip the frame @ %.3fs due to analyzer failure", &time, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    while ([*(a1 + 48) count] >= *(a1 + 56))
    {
      [*(a1 + 48) hmf_removeFirstObject];
    }

    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v20 = [v11 allObjects];
    [v18 _addEventsToEventQueue:v19 events:v20];

    if (*(a1 + 64))
    {
      **(a1 + 64) |= [v11 count] != 0;
    }

    v21 = *(a1 + 40);
    v22 = [*(a1 + 48) na_arrayByFlattening];
    [v21 _blurSampleBufferWithEncoder:v8 sampleBuffer:a4 events:v22];
  }
}

void __107__HMIFeedbackVisionProcessor_blurFacesFromAssetURL_outputURL_duration_analysisFPS_windowSize_faceDetected___block_invoke_22(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v6 na_arrayByFlattening];
  [v5 _blurSampleBufferWithEncoder:v7 sampleBuffer:a4 events:v8];
}

- (void)_addEventsToEventQueue:(id)queue events:(id)events
{
  queueCopy = queue;
  eventsCopy = events;
  if (([queueCopy hmf_isEmpty] & 1) == 0)
  {
    lastObject = [queueCopy lastObject];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__HMIFeedbackVisionProcessor__addEventsToEventQueue_events___block_invoke;
    v9[3] = &unk_278755120;
    v10 = eventsCopy;
    v8 = [lastObject na_filter:v9];

    [queueCopy removeLastObject];
    [queueCopy addObject:v8];
  }

  [queueCopy addObject:eventsCopy];
}

uint64_t __60__HMIFeedbackVisionProcessor__addEventsToEventQueue_events___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMIFeedbackVisionProcessor__addEventsToEventQueue_events___block_invoke_2;
  v7[3] = &unk_278755120;
  v8 = v3;
  v5 = v3;
  LODWORD(v4) = [v4 na_any:v7];

  return v4 ^ 1;
}

BOOL __60__HMIFeedbackVisionProcessor__addEventsToEventQueue_events___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 boundingBox];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  HMICGRectIntersectionOverMinArea(v5, v7, v9, v11, v13, v15, v17, v19);
  return v20 > 0.5;
}

- (void)_blurSampleBufferWithEncoder:(id)encoder sampleBuffer:(opaqueCMSampleBuffer *)buffer events:(id)events
{
  v21 = *MEMORY[0x277D85DE8];
  encoderCopy = encoder;
  eventsCopy = events;
  memset(&v19, 0, sizeof(v19));
  CMSampleBufferGetPresentationTimeStamp(&v19, buffer);
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if ([eventsCopy hmf_isEmpty])
  {
    [encoderCopy handleSampleBuffer:buffer];
  }

  else
  {
    v11 = [(HMIFeedbackVisionProcessor *)self _createBlurredPixelBuffer:ImageBuffer events:eventsCopy];
    if (v11)
    {
      v12 = v11;
      CopyWithPixelBuffer = HMICMSampleBufferCreateCopyWithPixelBuffer(buffer, v11);
      [encoderCopy handleSampleBuffer:CopyWithPixelBuffer];
      CFRelease(CopyWithPixelBuffer);
      CVPixelBufferRelease(v12);
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        time = v19;
        Seconds = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 138543618;
        *(&time.value + 4) = v17;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = Seconds;
        _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_ERROR, "%{public}@Skip the frame @ %.3fs due to blurring failure", &time, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }
}

- (__CVBuffer)_createBlurredPixelBuffer:(__CVBuffer *)buffer events:(id)events
{
  v64 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  Size = HMICVPixelBufferGetSize(buffer);
  v9 = v8;
  v57 = 0;
  v10 = [HMIVisionUtilities transferPixelBuffer:buffer pixelFormat:32 options:4 error:&v57];
  v11 = v57;
  if (!v10)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      LODWORD(dest.data) = 138543618;
      *(&dest.data + 4) = v19;
      WORD2(dest.height) = 2112;
      *(&dest.height + 6) = v11;
      v20 = "%{public}@Failed to convert YCbCr to RGBA (%@)";
      p_dest = &dest;
      goto LABEL_8;
    }

LABEL_12:

    objc_autoreleasePoolPop(v16);
    v24 = 0;
    goto LABEL_13;
  }

  v12 = [HMIVisionUtilities createPixelBufferWithSize:CVPixelBufferGetPixelFormatType(v10) pixelFormat:0 useIOSurface:Size, v9];
  if (!v12)
  {
    CVPixelBufferRelease(v10);
    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      LODWORD(dest.data) = 138543362;
      *(&dest.data + 4) = v19;
      v20 = "%{public}@Failed to clone RGBA source image";
      p_dest = &dest;
      v22 = v18;
      v23 = 12;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v13 = v12;
  v14 = [(HMIFeedbackVisionProcessor *)self _blurRadiusForEvents:eventsCopy imageSize:Size, v9];
  CVPixelBufferLockBaseAddress(v13, 0);
  CVPixelBufferLockBaseAddress(v10, 1uLL);
  dest.data = CVPixelBufferGetBaseAddressOfPlane(v13, 0);
  dest.height = CVPixelBufferGetHeightOfPlane(v13, 0);
  dest.width = CVPixelBufferGetWidthOfPlane(v13, 0);
  dest.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(v13, 0);
  src.data = CVPixelBufferGetBaseAddressOfPlane(v10, 0);
  src.height = CVPixelBufferGetHeightOfPlane(v10, 0);
  src.width = CVPixelBufferGetWidthOfPlane(v10, 0);
  src.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(v10, 0);
  v15 = vImageTentConvolve_ARGB8888(&src, &dest, 0, 0, 0, v14, v14, 0, 3u);
  CVPixelBufferUnlockBaseAddress(v13, 0);
  CVPixelBufferUnlockBaseAddress(v10, 1uLL);
  if (v15)
  {
    CVPixelBufferRelease(v13);
    CVPixelBufferRelease(v10);
    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      LODWORD(v62.data) = 138543618;
      *(&v62.data + 4) = v19;
      WORD2(v62.height) = 2048;
      *(&v62.height + 6) = v15;
      v20 = "%{public}@Failed to blur entire image (vImage_Error = %zd)";
      p_dest = &v62;
LABEL_8:
      v22 = v18;
      v23 = 22;
LABEL_11:
      _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_ERROR, v20, p_dest, v23);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if ([eventsCopy count])
  {
    v26 = 0;
    while (1)
    {
      v27 = [eventsCopy objectAtIndexedSubscript:v26];
      [v27 boundingBox];
      HMICGRectPixelFromNormalized(v28, v29, v30, v31, Size, v9);
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v40 = HMICGRectExpandWithinLimit(v33, v35, v37, v39, Size, v9, 1.2);
      v42 = v41;
      v44 = v43;
      v46 = v45;
      CVPixelBufferLockBaseAddress(v13, 1uLL);
      CVPixelBufferLockBaseAddress(v10, 0);
      v47 = dest.rowBytes * v42 + 4 * v40;
      v62.width = v44;
      v62.rowBytes = dest.rowBytes;
      v62.data = dest.data + v47;
      v62.height = v46;
      v55.data = src.data + v47;
      v55.height = v46;
      v55.width = v44;
      v55.rowBytes = src.rowBytes;
      v48 = vImageCopyBuffer(&v62, &v55, 4uLL, 0);
      CVPixelBufferUnlockBaseAddress(v13, 1uLL);
      CVPixelBufferUnlockBaseAddress(v10, 0);
      if (v48)
      {
        break;
      }

      if (++v26 >= [eventsCopy count])
      {
        goto LABEL_18;
      }
    }

    CVPixelBufferRelease(v13);
    CVPixelBufferRelease(v10);
    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v19 = HMFGetLogIdentifier();
    v58 = 138543618;
    v59 = v19;
    v60 = 2048;
    v61 = v48;
    v20 = "%{public}@Failed to copy blurred patch (vImage_Error = %zd)";
    p_dest = &v58;
    goto LABEL_8;
  }

LABEL_18:
  CVPixelBufferRelease(v13);
  v54 = v11;
  v24 = [HMIVisionUtilities transferPixelBuffer:v10 pixelFormat:CVPixelBufferGetPixelFormatType(buffer) options:5 error:&v54];
  v49 = v54;

  CVPixelBufferRelease(v10);
  if (!v24)
  {
    v50 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = HMFGetLogIdentifier();
      LODWORD(v62.data) = 138543618;
      *(&v62.data + 4) = v53;
      WORD2(v62.height) = 2112;
      *(&v62.height + 6) = v49;
      _os_log_impl(&dword_22D12F000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert RGBA to YCbCr (%@)", &v62, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
    v24 = 0;
  }

  v11 = v49;
LABEL_13:

  return v24;
}

- (unsigned)_blurRadiusForEvents:(id)events imageSize:(CGSize)size
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HMIFeedbackVisionProcessor__blurRadiusForEvents_imageSize___block_invoke;
  v8[3] = &__block_descriptor_48_e54___NSNumber_24__0__HMIVideoAnalyzerEvent_8__NSNumber_16l;
  sizeCopy = size;
  v4 = [events na_reduceWithInitialValue:&unk_284075330 reducer:v8];
  v5 = [v4 intValue] / 8;
  if (v5 >= 64)
  {
    v5 = 64;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = (2 * v5) | 1;

  return v6;
}

uint64_t __61__HMIFeedbackVisionProcessor__blurRadiusForEvents_imageSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v6 boundingBox];
  v8 = *(a1 + 32) * v7;
  [v6 boundingBox];
  v10 = v9;

  v11 = *(a1 + 40) * v10;
  v12 = MEMORY[0x277CCABB0];
  [v5 floatValue];
  v14 = v13;

  if (v8 >= v11)
  {
    *&v15 = v8;
  }

  else
  {
    *&v15 = v11;
  }

  if (v14 >= *&v15)
  {
    *&v15 = v14;
  }

  return [v12 numberWithFloat:v15];
}

@end