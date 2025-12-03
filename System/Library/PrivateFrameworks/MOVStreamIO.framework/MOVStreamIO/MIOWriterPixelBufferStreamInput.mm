@interface MIOWriterPixelBufferStreamInput
- (BOOL)appendPixelBuffer:(__CVBuffer *)buffer pts:(id *)pts error:(id *)error;
- (BOOL)appendPixelBuffer:(__CVBuffer *)buffer pts:(id *)pts timeCode:(CVSMPTETime *)code error:(id *)error;
- (BOOL)encoder:(id)encoder configureSessionOverride:(OpaqueVTCompressionSession *)override streamId:(id)id;
- (BOOL)sampleReorderingEnabled;
- (BOOL)shouldEnableInProcessEncoding;
- (BOOL)trackEnabled;
- (MIOWriterPixelBufferStreamInput)init;
- (MIOWriterPixelBufferStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format recordingConfig:(id)config;
- (MIOWriterPixelBufferStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format recordingConfig:(id)config timeCodeFormat:(opaqueCMFormatDescription *)codeFormat;
- (MIOWriterPixelBufferStreamInput)initWithStreamId:(id)id pixelFormat:(unsigned int)format width:(int)width height:(int)height recordingConfig:(id)config;
- (id)encoder:(id)encoder overrideVideoEncoderSpecificationForStreamId:(id)id;
- (id)inputSpecificTrackMetadataItems;
- (id)sampleInputOutputSettings;
- (id)stats;
- (id)underlyingInputs;
- (opaqueCMFormatDescription)formatDescription;
- (unsigned)encoder:(id)encoder codecTypeOverrideForstreamId:(id)id;
- (void)customizeSampleInput:(id)input;
- (void)dealloc;
- (void)encoder:(id)encoder encodedSampleBuffer:(opaqueCMSampleBuffer *)buffer metadata:(id)metadata presentationTime:(id *)time streamId:(id)id;
- (void)encoder:(id)encoder encodingFailedForStream:(id)stream;
- (void)finishProcessing;
- (void)invalidate;
- (void)prepareInputFinished;
@end

@implementation MIOWriterPixelBufferStreamInput

- (MIOWriterPixelBufferStreamInput)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_ErrorDoNotCall_0.isa, v4);

  return 0;
}

- (MIOWriterPixelBufferStreamInput)initWithStreamId:(id)id pixelFormat:(unsigned int)format width:(int)width height:(int)height recordingConfig:(id)config
{
  idCopy = id;
  configCopy = config;
  formatDescriptionOut = 0;
  CMVideoFormatDescriptionCreate(*MEMORY[0x277CBECE8], format, width, height, 0, &formatDescriptionOut);
  v14 = [(MIOWriterPixelBufferStreamInput *)self initWithStreamId:idCopy format:formatDescriptionOut recordingConfig:configCopy];
  v15 = v14;
  if (v14)
  {
    [(MIOWriterPixelBufferStreamInput *)v14 setVerifyPixelBufferFormatInformation:1];
    [(MIOFrameProcessor *)v15->_processor setFormatDescriptionNeedsUpdate:1];
  }

  return v15;
}

- (MIOWriterPixelBufferStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format recordingConfig:(id)config
{
  idCopy = id;
  configCopy = config;
  v21.receiver = self;
  v21.super_class = MIOWriterPixelBufferStreamInput;
  v10 = [(MIOWriterBufferStreamInput *)&v21 init];
  v11 = v10;
  if (v10)
  {
    [(MIOWriterStreamInput *)v10 setStreamId:idCopy];
    [(MIOWriterStreamInput *)v11 setMediaType:0];
    CFRetain(format);
    v11->_inputFormatDesc = format;
    timeCodeStreamInput = v11->_timeCodeStreamInput;
    v11->_timeCodeStreamInput = 0;

    objc_storeStrong(&v11->_config, config);
    v13 = [configCopy objectForKey:@"EncodeAttachments"];
    attachmentsToEncode = v11->_attachmentsToEncode;
    v11->_attachmentsToEncode = v13;

    v15 = [configCopy objectForKey:@"DoNotRecordAttachments"];
    -[MIOWriterBufferStreamInput setDoNotRecordAttachments:](v11, "setDoNotRecordAttachments:", [v15 BOOLValue]);

    v16 = [MIOFrameProcessorFactory processorForConfig:configCopy formatDescription:format];
    processor = v11->_processor;
    v11->_processor = v16;

    v18 = *(MEMORY[0x277CBF2C0] + 16);
    v20[0] = *MEMORY[0x277CBF2C0];
    v20[1] = v18;
    v20[2] = *(MEMORY[0x277CBF2C0] + 32);
    [(MIOWriterPixelBufferStreamInput *)v11 setTransform:v20];
  }

  return v11;
}

- (MIOWriterPixelBufferStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format recordingConfig:(id)config timeCodeFormat:(opaqueCMFormatDescription *)codeFormat
{
  idCopy = id;
  configCopy = config;
  v25.receiver = self;
  v25.super_class = MIOWriterPixelBufferStreamInput;
  v12 = [(MIOWriterBufferStreamInput *)&v25 init];
  v13 = v12;
  if (v12)
  {
    [(MIOWriterStreamInput *)v12 setStreamId:idCopy];
    [(MIOWriterStreamInput *)v13 setMediaType:0];
    CFRetain(format);
    v13->_inputFormatDesc = format;
    v14 = [MIOWriterTimeCodeSingleStreamInput alloc];
    idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-time-code", idCopy];
    v16 = [(MIOWriterTimeCodeSingleStreamInput *)v14 initWithStreamId:idCopy format:codeFormat];
    timeCodeStreamInput = v13->_timeCodeStreamInput;
    v13->_timeCodeStreamInput = v16;

    [(MIOWriterStreamInput *)v13->_timeCodeStreamInput registerForAssociating:v13 trackRelation:*MEMORY[0x277CE61A0]];
    objc_storeStrong(&v13->_config, config);
    v18 = [configCopy objectForKey:@"EncodeAttachments"];
    attachmentsToEncode = v13->_attachmentsToEncode;
    v13->_attachmentsToEncode = v18;

    v20 = [MIOFrameProcessorFactory processorForConfig:configCopy formatDescription:format];
    processor = v13->_processor;
    v13->_processor = v20;

    v22 = *(MEMORY[0x277CBF2C0] + 16);
    v24[0] = *MEMORY[0x277CBF2C0];
    v24[1] = v22;
    v24[2] = *(MEMORY[0x277CBF2C0] + 32);
    [(MIOWriterPixelBufferStreamInput *)v13 setTransform:v24];
  }

  return v13;
}

- (void)dealloc
{
  videoEncoderInterface = self->_videoEncoderInterface;
  if (videoEncoderInterface)
  {
    [(MOVStreamVideoEncoderInterface *)videoEncoderInterface awaitEncoderClosed];
  }

  inputFormatDesc = self->_inputFormatDesc;
  if (inputFormatDesc)
  {
    CFRelease(inputFormatDesc);
    self->_inputFormatDesc = 0;
  }

  v5.receiver = self;
  v5.super_class = MIOWriterPixelBufferStreamInput;
  [(MIOWriterPixelBufferStreamInput *)&v5 dealloc];
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = MIOWriterPixelBufferStreamInput;
  [(MIOWriterStreamInput *)&v7 invalidate];
  if (self->_videoEncoderInterface)
  {
    v3 = dispatch_group_create();
    [(MOVStreamVideoEncoderInterface *)self->_videoEncoderInterface closeEncoderInDispatchGroup:v3];
    v4 = dispatch_time(0, 1000000000);
    if (dispatch_group_wait(v3, v4))
    {
      v5 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        streamId = [(MIOWriterStreamInput *)self streamId];
        *buf = 138543362;
        v9 = streamId;
        _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_ERROR, "Timeout closing encoder: %{public}@.", buf, 0xCu);
      }
    }
  }
}

- (id)stats
{
  v3 = MEMORY[0x277CCACA8];
  uuid = [(MIOWriterStreamInput *)self uuid];
  pendingSamples = [(MIOWriterStreamInput *)self pendingSamples];
  fifoBuffer = [(MIOWriterStreamInput *)self fifoBuffer];
  usage = [fifoBuffer usage];
  videoEncoderInterface = [(MIOWriterPixelBufferStreamInput *)self videoEncoderInterface];
  encodingQueueDepth = [videoEncoderInterface encodingQueueDepth];
  videoEncoderInterface2 = [(MIOWriterPixelBufferStreamInput *)self videoEncoderInterface];
  v11 = [v3 stringWithFormat:@"%@: PEND: %lld (FIFO: %zu ECDQ: %lld ENC: %lld) REDY: %d", uuid, pendingSamples, usage, encodingQueueDepth, objc_msgSend(videoEncoderInterface2, "pendingFrames"), -[MIOWriterBufferStreamInput areAllInputsReady](self, "areAllInputsReady")];

  return v11;
}

- (id)underlyingInputs
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_timeCodeStreamInput)
  {
    v4[0] = self->_timeCodeStreamInput;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (id)sampleInputOutputSettings
{
  processor = [(MIOWriterPixelBufferStreamInput *)self processor];
  formatDescriptionForEncoding = [processor formatDescriptionForEncoding];

  config = self->_config;
  writer = [(MIOWriterStreamInput *)self writer];
  [writer defaultFrameRate];
  v8 = v7;
  writer2 = [(MIOWriterStreamInput *)self writer];
  preferCustomCompression = [writer2 preferCustomCompression];
  writer3 = [(MIOWriterStreamInput *)self writer];
  v12 = +[MIOOutputSettingsFactory outputSettingsWithConfig:formatDescription:defaultFrameRate:preferEncoderConfig:enableAVEHighPerformanceProfile:](MIOOutputSettingsFactory, "outputSettingsWithConfig:formatDescription:defaultFrameRate:preferEncoderConfig:enableAVEHighPerformanceProfile:", config, formatDescriptionForEncoding, preferCustomCompression, [writer3 enableAVEHighPerformanceProfile], v8);

  if ([v12 useAsVCPConfig])
  {
    v13 = [MOVStreamVideoEncoderInterface alloc];
    streamId = [(MIOWriterStreamInput *)self streamId];
    encoderSpecVCP = [v12 encoderSpecVCP];
    sessionPropertiesVCP = [v12 sessionPropertiesVCP];
    v17 = [(MOVStreamVideoEncoderInterface *)v13 initForVCPEncodingStream:streamId videoEncoderSpec:encoderSpecVCP sessionProperties:sessionPropertiesVCP delegate:self];
    videoEncoderInterface = self->_videoEncoderInterface;
    self->_videoEncoderInterface = v17;

    if (![(MOVStreamVideoEncoderInterface *)self->_videoEncoderInterface preSetupWithFormatDescription:formatDescriptionForEncoding])
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  config = [v12 config];

  if (config)
  {
    v20 = [MOVStreamVideoEncoderInterface alloc];
    streamId2 = [(MIOWriterStreamInput *)self streamId];
    config2 = [v12 config];
    v23 = [(MOVStreamVideoEncoderInterface *)v20 initForStream:streamId2 configuration:config2 delegate:self];
    v24 = self->_videoEncoderInterface;
    self->_videoEncoderInterface = v23;

    [(MOVStreamVideoEncoderInterface *)self->_videoEncoderInterface setUseLegacyVTController:0];
    if (![(MOVStreamVideoEncoderInterface *)self->_videoEncoderInterface preSetupWithFormatDescription:formatDescriptionForEncoding])
    {
LABEL_6:
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Orig fd: %@  Used fd: %@", self->_inputFormatDesc, formatDescriptionForEncoding];
      v26 = MEMORY[0x277CCACA8];
      streamId3 = [(MIOWriterStreamInput *)self streamId];
      v28 = [v26 stringWithFormat:@"Pre-initialize VTCompressionSession for stream '%@' failed (%@)! Will try again after first pixel buffer is appended...", streamId3, v25];

      writer4 = [(MIOWriterStreamInput *)self writer];
      [writer4 reportWarning:v28];
    }

LABEL_7:
    settings2 = 0;
    goto LABEL_8;
  }

  settings = [v12 settings];
  if (settings)
  {
    writer5 = [(MIOWriterStreamInput *)self writer];
    inProcessRecording = [writer5 inProcessRecording];

    if (inProcessRecording)
    {
      v35 = MEMORY[0x277CCACA8];
      streamId4 = [(MIOWriterStreamInput *)self streamId];
      v37 = [v35 stringWithFormat:@"MIOWriter.inProcessRecording requires custom or none encoder settings. Encoding for stream %@ will not performed in process!", streamId4];

      writer6 = [(MIOWriterStreamInput *)self writer];
      [writer6 reportWarning:v37];
    }
  }

  settings2 = [v12 settings];
LABEL_8:

  return settings2;
}

- (opaqueCMFormatDescription)formatDescription
{
  processor = [(MIOWriterPixelBufferStreamInput *)self processor];
  formatDescriptionForEncoding = [processor formatDescriptionForEncoding];

  return formatDescriptionForEncoding;
}

- (BOOL)sampleReorderingEnabled
{
  videoEncoderInterface = self->_videoEncoderInterface;
  if (videoEncoderInterface)
  {
    LOBYTE(videoEncoderInterface) = [(MOVStreamVideoEncoderInterface *)videoEncoderInterface frameReorderingEnabled];
  }

  return videoEncoderInterface;
}

- (BOOL)trackEnabled
{
  v3 = [(NSDictionary *)self->_config objectForKey:@"MarksOutputTrackAsEnabled"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    writer = [(MIOWriterStreamInput *)self writer];
    v7 = [writer writerInputsWithMediaType:0];
    v8 = [v7 count];

    if (v8 == 1 || ((MediaSubType = CMFormatDescriptionGetMediaSubType(self->_inputFormatDesc), bOOLValue = 0, MediaSubType > 1650943795) ? (MediaSubType > 1735549491 ? (v10 = MediaSubType == 1735549492, v11 = 1919379252) : (v10 = MediaSubType == 1650943796, v11 = 1734505012)) : MediaSubType > 1278226735 ? (v10 = MediaSubType == 1278226736, v11 = 1278226742) : (v10 = MediaSubType == 825306677, v11 = 825437747), !v10 ? (v12 = MediaSubType == v11) : (v12 = 1), !v12))
    {
      bOOLValue = 1;
    }
  }

  return bOOLValue;
}

- (void)prepareInputFinished
{
  writer = [(MIOWriterStreamInput *)self writer];
  bufferCacheMode = [writer bufferCacheMode];
  processor = [(MIOWriterPixelBufferStreamInput *)self processor];
  [processor setBufferCacheMode:bufferCacheMode];
}

- (id)inputSpecificTrackMetadataItems
{
  v3 = objc_opt_new();
  MediaSubType = CMFormatDescriptionGetMediaSubType(self->_inputFormatDesc);
  v5 = [MEMORY[0x277CE6520] trackMetadataItemWithInputPixelFormat:MediaSubType];
  if (v5)
  {
    [v3 addObject:v5];
  }

  if ([MIOPixelBufferUtility isPixelFormatRawBayer:MediaSubType])
  {
    v6 = [(NSDictionary *)self->_config objectForKey:@"RawBayerRearrangeTypeKey"];
    v7 = [MEMORY[0x277CE6520] trackMetadataItemWithRawBayerRearrangeType:v6];

    if (v7)
    {
      [v3 addObject:v7];
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = [(NSDictionary *)self->_config objectForKey:@"OutputPixelFormatOverride"];
  v9 = v8;
  if (v8)
  {
    v10 = [MEMORY[0x277CE6520] trackMetadataItemWithOutputPixelFormatOverride:{objc_msgSend(v8, "intValue")}];
    if (v10)
    {
      [v3 addObject:v10];
    }
  }

  processor = [(MIOWriterPixelBufferStreamInput *)self processor];
  encodedPixelFormat = [processor encodedPixelFormat];

  v13 = [MEMORY[0x277CE6520] trackMetadataItemWithEncodedPixelFormat:encodedPixelFormat];

  if (v13)
  {
    [v3 addObject:v13];
  }

  v14 = [(NSDictionary *)self->_config objectForKey:@"StreamEncoderType"];
  if (v14)
  {
    v15 = [MEMORY[0x277CE6520] trackMetadataItemWithMIOEncoderType:v14];
    if (v15)
    {
      [v3 addObject:v15];
    }
  }

  bOOLValue = [(NSDictionary *)self->_config objectForKey:@"StereoVideoEncoding"];

  if (bOOLValue)
  {
    v17 = [(NSDictionary *)self->_config objectForKey:@"StereoVideoEncoding"];
    bOOLValue = [v17 BOOLValue];
  }

  v18 = [MEMORY[0x277CE6520] trackMetadataItemWithStereoViewEncoding:bOOLValue];

  if (v18)
  {
    [v3 addObject:v18];
  }

  v19 = [(NSDictionary *)self->_config objectForKey:@"AdditionalCompressionProperties"];

  if (v19)
  {
    v20 = [(NSDictionary *)self->_config objectForKey:@"AdditionalCompressionProperties"];
    v28 = 0;
    v21 = [MEMORY[0x277CE6520] trackMetadataItemWithAdditionalCompressionProperties:v20 error:&v28];
    v22 = v28;

    if (v22)
    {
      v23 = MEMORY[0x277CCACA8];
      streamId = [(MIOWriterStreamInput *)self streamId];
      v25 = [v23 stringWithFormat:@"Cannot create track metadata item for additional encoder settings of stream %@. Error: %@", streamId, v22];

      writer = [(MIOWriterStreamInput *)self writer];
      [writer reportWarning:v25];
    }

    else if (v21)
    {
      [v3 addObject:v21];
    }
  }

  else
  {
    v21 = v18;
  }

  return v3;
}

- (void)customizeSampleInput:(id)input
{
  inputCopy = input;
  [(MIOWriterPixelBufferStreamInput *)self transform];
  v5[0] = v5[3];
  v5[1] = v5[4];
  v5[2] = v5[5];
  [inputCopy setTransform:v5];
  [inputCopy setMarksOutputTrackAsEnabled:{-[MIOWriterPixelBufferStreamInput trackEnabled](self, "trackEnabled")}];
}

- (BOOL)appendPixelBuffer:(__CVBuffer *)buffer pts:(id *)pts error:(id *)error
{
  v7 = *pts;
  memset(v6, 0, sizeof(v6));
  return [(MIOWriterPixelBufferStreamInput *)self appendPixelBuffer:buffer pts:&v7 timeCode:v6 error:error];
}

- (BOOL)appendPixelBuffer:(__CVBuffer *)buffer pts:(id *)pts timeCode:(CVSMPTETime *)code error:(id *)error
{
  if ([(MIOWriterPixelBufferStreamInput *)self verifyPixelBufferFormatInformation])
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(self->_inputFormatDesc);
    if (MediaSubType == CVPixelBufferGetPixelFormatType(buffer))
    {
      Dimensions = CMVideoFormatDescriptionGetDimensions(self->_inputFormatDesc);
      if (CVPixelBufferGetWidth(buffer) == Dimensions)
      {
        if (CVPixelBufferGetHeight(buffer) == Dimensions >> 32)
        {
          [(MIOWriterPixelBufferStreamInput *)self setVerifyPixelBufferFormatInformation:0];
          goto LABEL_6;
        }

        v17 = MEMORY[0x277CCA9B8];
        v18 = @"Pixel buffer height does not match initial height.";
      }

      else
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = @"Pixel buffer width does not match initial width.";
      }
    }

    else
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = @"Pixel buffer format does not match initial format.";
    }

    [v17 populateWriterError:error message:v18 code:34];
    return 0;
  }

LABEL_6:
  *location = *&pts->var0;
  var3 = pts->var3;
  if (![(MIOWriterStreamInput *)self prepareForAppendWithTimeStamp:location error:error])
  {
    return 0;
  }

  CVPixelBufferRetain(buffer);
  objc_initWeak(location, self);
  testPatternRenderer = [(MIOWriterPixelBufferStreamInput *)self testPatternRenderer];
  objc_initWeak(&from, testPatternRenderer);

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __72__MIOWriterPixelBufferStreamInput_appendPixelBuffer_pts_timeCode_error___block_invoke;
  v23[3] = &unk_279848488;
  objc_copyWeak(&v24, location);
  v25[1] = buffer;
  objc_copyWeak(v25, &from);
  v26 = *&pts->var0;
  v27 = pts->var3;
  v28 = *&code->subframes;
  v29 = *&code->hours;
  v23[4] = self;
  v14 = MEMORY[0x259C68980](v23);
  threadingOption = [(MIOWriterStreamInput *)self threadingOption];
  if (threadingOption)
  {
    if (threadingOption == 1)
    {
      v16 = v14[2](v14);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    processingQueue = [(MIOWriterStreamInput *)self processingQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__MIOWriterPixelBufferStreamInput_appendPixelBuffer_pts_timeCode_error___block_invoke_258;
    v21[3] = &unk_279847DC8;
    v22 = v14;
    dispatch_async(processingQueue, v21);

    v16 = 1;
  }

  objc_destroyWeak(v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
  return v16;
}

uint64_t __72__MIOWriterPixelBufferStreamInput_appendPixelBuffer_pts_timeCode_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained perfLogHandle];
    v5 = [v3 processingSignPostID];
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      LOWORD(buf.duration.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_257883000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "mio.processing", "", &buf, 2u);
    }

    context = objc_autoreleasePoolPush();
    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = v6;
    if (v6 && ([v6 renderToPixelBuffer:*(a1 + 56)] & 1) == 0)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [v3 streamId];
      v10 = [v8 stringWithFormat:@"Unable to render test pattern. Stream: %@", v9];

      v11 = [v3 writer];
      [v11 reportWarning:v10];
    }

    if ([v3 doNotRecordAttachments])
    {
      v12 = 0;
    }

    else
    {
      v14 = *(a1 + 56);
      *&buf.duration.value = *(a1 + 64);
      buf.duration.epoch = *(a1 + 80);
      v82[0] = 0;
      v12 = [MEMORY[0x277CE6648] attachmentsMIOTimedMetadataGroupForPixelBuffer:v14 pts:&buf error:v82];
      v15 = v82[0];
      if (v15)
      {
        v16 = v15;
        v17 = MEMORY[0x277CCACA8];
        v18 = [v3 streamId];
        v19 = [v17 stringWithFormat:@"Cannot append frame, invalid pixel buffer attachments %@ for stream %@.", v16, v18];

        v20 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v19 code:21];
        v21 = [v3 writer];
        [v21 reportError:v20];

        CVPixelBufferRelease(*(a1 + 56));
        v22 = [v3 perfLogHandle];
        v23 = [v3 processingSignPostID];
        if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v22))
        {
          goto LABEL_41;
        }

        LOWORD(buf.duration.value) = 0;
        goto LABEL_40;
      }
    }

    v24 = [v3 timeCodeStreamInput];
    if (!v24 || (v25 = *(a1 + 100), v24, (v25 & 1) == 0))
    {
      v26 = 0;
LABEL_18:
      v27 = [v3 processor];
      v28 = *(a1 + 56);
      v29 = [v3 attachmentsToEncode];
      v78 = v26;
      v30 = [v27 processPixelBuffer:v28 preserveAttachments:v29 error:&v78];
      v16 = v78;

      CVPixelBufferRelease(*(a1 + 56));
      if (v30)
      {
        v31 = [v3 videoEncoderInterface];

        if (v31)
        {
          v32 = objc_opt_new();
          [v32 setMetadata:v12];
          v33 = [v3 pendingAttachments];
          v13 = [v33 enqueue:v32];

          if (v13)
          {
            v34 = [v3 videoEncoderInterface];
            *&buf.duration.value = *(a1 + 64);
            buf.duration.epoch = *(a1 + 80);
            [v34 encodeFrame:v30 pts:&buf frameProperties:0 metadata:0];

            CVPixelBufferRelease(v30);
          }

          else
          {
            v57 = MEMORY[0x277CCACA8];
            v58 = [v3 streamId];
            v59 = [v57 stringWithFormat:@"Attempted to enqueue metadata in full Fifo for stream %@.  Indicates leak in overall pending sample metadata tracking.", v58];

            v60 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v59 code:21];
            v61 = [v3 writer];
            [v61 reportError:v60];

            CFRelease(v30);
            v62 = [v3 perfLogHandle];
            v63 = [v3 processingSignPostID];
            if (v63 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
            {
              LOWORD(buf.duration.value) = 0;
              _os_signpost_emit_with_name_impl(&dword_257883000, v62, OS_SIGNPOST_INTERVAL_END, v63, "mio.processing", "", &buf, 2u);
            }
          }

          goto LABEL_43;
        }

        v44 = *(MEMORY[0x277CC0920] + 48);
        *&buf.presentationTimeStamp.timescale = *(MEMORY[0x277CC0920] + 32);
        *&buf.decodeTimeStamp.value = v44;
        v45 = *(MEMORY[0x277CC0920] + 64);
        v46 = *(MEMORY[0x277CC0920] + 16);
        *&buf.duration.value = *MEMORY[0x277CC0920];
        *&buf.duration.epoch = v46;
        *&buf.presentationTimeStamp.value = *(a1 + 64);
        v47 = *(a1 + 80);
        buf.decodeTimeStamp.epoch = v45;
        buf.presentationTimeStamp.epoch = v47;
        sampleBufferOut[0] = 0;
        v48 = [*(a1 + 32) formatDescription];
        v49 = CMSampleBufferCreateForImageBuffer(*MEMORY[0x277CBECE8], v30, 1u, 0, 0, v48, &buf, sampleBufferOut);
        CVPixelBufferRelease(v30);
        if (v49)
        {
          v50 = MEMORY[0x277CCACA8];
          v51 = [v3 streamId];
          v52 = [v50 stringWithFormat:@"Cannot append frame, CMSampleBufferCreateForImageBuffer failed (err:%d) for stream %@.", v49, v51];

          v53 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v52 code:21];
          v54 = [v3 writer];
          [v54 reportError:v53];

          v55 = [v3 perfLogHandle];
          v56 = [v3 processingSignPostID];
          if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
          {
            *v76 = 0;
            _os_signpost_emit_with_name_impl(&dword_257883000, v55, OS_SIGNPOST_INTERVAL_END, v56, "mio.processing", "", v76, 2u);
          }
        }

        else
        {
          v52 = objc_opt_new();
          [v52 setSampleBuffer:sampleBufferOut[0]];
          [v52 setMetadata:v12];
          v68 = [v3 fifoBuffer];
          v69 = [v68 enqueue:v52];

          if (v69)
          {
            v13 = [v3 finalizeProcessing];
LABEL_52:

            goto LABEL_43;
          }

          v70 = MEMORY[0x277CCACA8];
          v71 = [v3 streamId];
          v53 = [v70 stringWithFormat:@"Attempted to enqueue sample in full Fifo for stream %@.  Indicates leak in overall pending sample tracking.", v71];

          v55 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v53 code:21];
          v72 = [v3 writer];
          [v72 reportError:v55];

          CFRelease(sampleBufferOut[0]);
          v73 = [v3 perfLogHandle];
          v74 = [v3 processingSignPostID];
          if (v74 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
          {
            *v76 = 0;
            _os_signpost_emit_with_name_impl(&dword_257883000, v73, OS_SIGNPOST_INTERVAL_END, v74, "mio.processing", "", v76, 2u);
          }
        }

        v13 = 0;
        goto LABEL_52;
      }

      v35 = MEMORY[0x277CCACA8];
      v36 = [v3 streamId];
      v37 = [v35 stringWithFormat:@"Process pixel buffer failed %@ for stream %@.", v16, v36];

      v38 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v37 code:21];
      v39 = [v3 writer];
      [v39 reportError:v38];

      v40 = [v3 perfLogHandle];
      v41 = [v3 processingSignPostID];
      if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        LOWORD(buf.duration.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v40, OS_SIGNPOST_INTERVAL_END, v41, "mio.processing", "", &buf, 2u);
      }

LABEL_42:
      v13 = 0;
LABEL_43:

      objc_autoreleasePoolPop(context);
      goto LABEL_44;
    }

    v42 = [v3 timeCodeStreamInput];
    *&buf.duration.value = *(a1 + 88);
    buf.duration.epoch = *(a1 + 104);
    *sampleBufferOut = *(a1 + 64);
    v81 = *(a1 + 80);
    v79 = 0;
    v43 = [v42 appendTimeCode:&buf pts:sampleBufferOut error:&v79];
    v16 = v79;

    if (v43)
    {
      v26 = v16;
      goto LABEL_18;
    }

    v64 = MEMORY[0x277CCACA8];
    v65 = [v3 streamId];
    v19 = [v64 stringWithFormat:@"Cannot append time code to underlying tmcd stream for video stream %@.", v65];

    v20 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v19 code:21];
    v66 = [v3 writer];
    [v66 reportError:v20];

    CVPixelBufferRelease(*(a1 + 56));
    v22 = [v3 perfLogHandle];
    v23 = [v3 processingSignPostID];
    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v22))
    {
LABEL_41:

      goto LABEL_42;
    }

    LOWORD(buf.duration.value) = 0;
LABEL_40:
    _os_signpost_emit_with_name_impl(&dword_257883000, v22, OS_SIGNPOST_INTERVAL_END, v23, "mio.processing", "", &buf, 2u);
    goto LABEL_41;
  }

  CVPixelBufferRelease(*(a1 + 56));
  v13 = 0;
LABEL_44:

  return v13;
}

- (void)finishProcessing
{
  videoEncoderInterface = self->_videoEncoderInterface;
  if (videoEncoderInterface)
  {
    [(MOVStreamVideoEncoderInterface *)videoEncoderInterface awaitEncoderClosed];
  }
}

- (BOOL)shouldEnableInProcessEncoding
{
  writer = [(MIOWriterStreamInput *)self writer];
  inProcessRecording = [writer inProcessRecording];

  return inProcessRecording;
}

- (void)encoder:(id)encoder encodedSampleBuffer:(opaqueCMSampleBuffer *)buffer metadata:(id)metadata presentationTime:(id *)time streamId:(id)id
{
  v9 = [(MIOWriterBufferStreamInput *)self pendingAttachments:encoder];
  dequeue = [v9 dequeue];

  v10 = objc_opt_new();
  [v10 setSampleBuffer:buffer];
  metadata = [dequeue metadata];
  [v10 setMetadata:metadata];

  fifoBuffer = [(MIOWriterStreamInput *)self fifoBuffer];
  v13 = [fifoBuffer enqueue:v10];

  if (v13)
  {
    [(MIOWriterStreamInput *)self finalizeProcessing];
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    streamId = [(MIOWriterStreamInput *)self streamId];
    v16 = [v14 stringWithFormat:@"Attempted to enqueue sample in full Fifo for stream %@.  Indicates leak in overall pending sample tracking.", streamId];

    v17 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v16 code:21];
    writer = [(MIOWriterStreamInput *)self writer];
    [writer reportError:v17];
  }
}

- (void)encoder:(id)encoder encodingFailedForStream:(id)stream
{
  encoderCopy = encoder;
  streamCopy = stream;
  streamCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Sample buffer encoding failed (encoder status: %i flags: %d) for stream '%@'. Dropping frame.", objc_msgSend(encoderCopy, "lastEncodingStatus"), objc_msgSend(encoderCopy, "lastEncodingInfoFlags"), streamCopy];
  v8 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:streamCopy code:14];
  writer = [(MIOWriterStreamInput *)self writer];
  [writer reportError:v8];

  [(MIOWriterStreamInput *)self resolveSample];
}

- (unsigned)encoder:(id)encoder codecTypeOverrideForstreamId:(id)id
{
  encoderCopy = encoder;
  idCopy = id;
  __assert_rtn("[MIOWriterPixelBufferStreamInput encoder:codecTypeOverrideForstreamId:]", "MIOWriterPixelBufferStreamInput.mm", 583, "0");
}

- (BOOL)encoder:(id)encoder configureSessionOverride:(OpaqueVTCompressionSession *)override streamId:(id)id
{
  encoderCopy = encoder;
  idCopy = id;
  __assert_rtn("[MIOWriterPixelBufferStreamInput encoder:configureSessionOverride:streamId:]", "MIOWriterPixelBufferStreamInput.mm", 589, "0");
}

- (id)encoder:(id)encoder overrideVideoEncoderSpecificationForStreamId:(id)id
{
  encoderCopy = encoder;
  idCopy = id;
  __assert_rtn("[MIOWriterPixelBufferStreamInput encoder:overrideVideoEncoderSpecificationForStreamId:]", "MIOWriterPixelBufferStreamInput.mm", 595, "0");
}

@end