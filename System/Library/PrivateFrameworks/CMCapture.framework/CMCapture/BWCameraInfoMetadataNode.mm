@interface BWCameraInfoMetadataNode
- (CMMetadataFormatDescriptionRef)_initForMotionMetadataSource:(int)source generateLivePhotosMetadata:generateDebugMetadata:generateMotionMetadata:;
- (uint64_t)_emptyMetadataBlockBuffer;
- (void)_emitLivePhotosAndDebugBoxedMetadataForSampleBuffer:(void *)buffer metadata:(uint64_t)metadata time:;
- (void)_updateBoxedMetadataFormatDescriptionWithMetadata:(uint64_t)metadata;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWCameraInfoMetadataNode

- (void)dealloc
{
  basicBoxedMetadataFormatDescription = self->_basicBoxedMetadataFormatDescription;
  if (basicBoxedMetadataFormatDescription)
  {
    CFRelease(basicBoxedMetadataFormatDescription);
  }

  formatSpecificBoxedMetadataFormatDescription = self->_formatSpecificBoxedMetadataFormatDescription;
  if (formatSpecificBoxedMetadataFormatDescription)
  {
    CFRelease(formatSpecificBoxedMetadataFormatDescription);
  }

  boxedMetadataFormatDescription = self->_boxedMetadataFormatDescription;
  if (boxedMetadataFormatDescription)
  {
    CFRelease(boxedMetadataFormatDescription);
  }

  emptyMetadataSampleData = self->_emptyMetadataSampleData;
  if (emptyMetadataSampleData)
  {
    CFRelease(emptyMetadataSampleData);
  }

  v7.receiver = self;
  v7.super_class = BWCameraInfoMetadataNode;
  [(BWNode *)&v7 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  [(BWNodeOutput *)self->_passthruOutput setFormat:format, input];
  if (self->_generateLivePhotosMetadata)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions([format formatDescription]);
    v21 = 0;
    formatDescriptionOut = 0;
    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
    v8 = *MEMORY[0x1E6960348];
    [v7 setObject:@"mdta/com.apple.quicktime.live-photo-info" forKeyedSubscript:*MEMORY[0x1E6960348]];
    v9 = *MEMORY[0x1E6960338];
    [v7 setObject:@"com.apple.quicktime.com.apple.quicktime.live-photo-info" forKeyedSubscript:*MEMORY[0x1E6960338]];
    v19 = *MEMORY[0x1E6960360];
    v20 = *MEMORY[0x1E695E4C0];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6960358]];
    v11 = FigLivePhotoMetadataCopySetupDataAddingDimensions(sLivePhotoMetadataSoftwareVersionSetupDataWithAtomHeader, *&Dimensions);
    if (v11)
    {
      v12 = v11;
      [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6960350]];
      CFRelease(v12);
    }

    v13 = [MEMORY[0x1E695DEC8] arrayWithObject:v7];
    v14 = *MEMORY[0x1E695E480];
    if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v13, &formatDescriptionOut))
    {
      [BWCameraInfoMetadataNode didSelectFormat:forInput:];
      return;
    }

    basicBoxedMetadataFormatDescription = self->_basicBoxedMetadataFormatDescription;
    if (basicBoxedMetadataFormatDescription)
    {
      v16 = CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions(v14, basicBoxedMetadataFormatDescription, formatDescriptionOut, &v21);
      if (formatDescriptionOut)
      {
        CFRelease(formatDescriptionOut);
      }

      formatDescriptionOut = 0;
      if (v16)
      {
        [BWCameraInfoMetadataNode didSelectFormat:forInput:];
        return;
      }
    }

    else
    {
      v21 = formatDescriptionOut;
      formatDescriptionOut = 0;
    }

    [v7 objectForKeyedSubscript:v8];
    [v7 objectForKeyedSubscript:v9];
    self->_localIDForLivePhotosMetadata_BE = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
    formatSpecificBoxedMetadataFormatDescription = self->_formatSpecificBoxedMetadataFormatDescription;
    if (formatSpecificBoxedMetadataFormatDescription)
    {
      CFRelease(formatSpecificBoxedMetadataFormatDescription);
    }

    v18 = v21;
    self->_formatSpecificBoxedMetadataFormatDescription = v21;
    if (self->_boxedMetadataFormatDescription)
    {
      CFRelease(self->_boxedMetadataFormatDescription);
      v18 = self->_formatSpecificBoxedMetadataFormatDescription;
    }

    self->_boxedMetadataFormatDescription = CFRetain(v18);
    self->_videoDimensions = Dimensions;
    [(BWNodeOutput *)self->_boxedMetadataOutput setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:self->_boxedMetadataFormatDescription]];
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  [(BWNodeOutput *)self->_passthruOutput makeConfiguredFormatLive:d];
  boxedMetadataOutput = self->_boxedMetadataOutput;

  [(BWNodeOutput *)boxedMetadataOutput makeConfiguredFormatLive];
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  [(BWNodeOutput *)self->_passthruOutput markEndOfLiveOutputForConfigurationID:d, input];
  boxedMetadataOutput = self->_boxedMetadataOutput;

  [(BWNodeOutput *)boxedMetadataOutput markEndOfLiveOutputForConfigurationID:d];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  memset(&v11, 0, sizeof(v11));
  CMSampleBufferGetPresentationTimeStamp(&v11, buffer);
  if (BWSampleBufferIsMarkerBuffer(buffer))
  {
    v6 = CMGetAttachment(buffer, @"FileWriterAction", 0);
    if (v6)
    {
      v7 = v6;
      if (CFEqual(v6, @"Start") || CFEqual(v7, @"Resume"))
      {
        self->_previousGeneratedMetadataBufferWasEmpty = 0;
      }

      if (CFEqual(v7, @"Start"))
      {
        self->_updateBoxedMetadataFormatDescriptionForFirstBuffer = 1;
      }
    }

    sampleBufferOut = 0;
    if (CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], buffer, &sampleBufferOut))
    {
      v9 = v11;
      [(BWNodeOutput *)self->_boxedMetadataOutput emitDroppedSample:[BWDroppedSample newDroppedSampleWithReason:0x1F219BFF0 pts:&v9]];
    }

    else
    {
      [(BWNodeOutput *)self->_boxedMetadataOutput emitSampleBuffer:sampleBufferOut];
    }

    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }
  }

  else
  {
    v8 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    if (v8 && self->_generateLivePhotosMetadata)
    {
      v9 = v11;
      [(BWCameraInfoMetadataNode *)self _emitLivePhotosAndDebugBoxedMetadataForSampleBuffer:buffer metadata:v8 time:&v9];
    }
  }

  [(BWNodeOutput *)self->_passthruOutput emitSampleBuffer:buffer];
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  [(BWNodeOutput *)self->_passthruOutput emitDroppedSample:sample, input];
  boxedMetadataOutput = self->_boxedMetadataOutput;

  [(BWNodeOutput *)boxedMetadataOutput emitDroppedSample:sample];
}

- (CMMetadataFormatDescriptionRef)_initForMotionMetadataSource:(int)source generateLivePhotosMetadata:generateDebugMetadata:generateMotionMetadata:
{
  if (!self)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = BWCameraInfoMetadataNode;
  v4 = objc_msgSendSuper2(&v12, sel_init);
  if (v4)
  {
    v5 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
    v6 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v5 setFormatRequirements:v6];

    [(BWNodeInput *)v5 setPassthroughMode:1];
    [(CMMetadataFormatDescriptionRef *)v4 addInput:v5];

    *(v4 + 48) = 0;
    *(v4 + 49) = 0;
    *(v4 + 208) = 1;
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (source)
    {
      MEMORY[0x1B26F02D0](&_initForMotionMetadataSource_generateLivePhotosMetadata_generateDebugMetadata_generateMotionMetadata__s_cimn_registerLivePhotosMetadata_once, cimn_registerLivePhotosMetadata_once);
      *(v4 + 128) = 1;
    }

    if ([(__CFArray *)v7 count])
    {
      if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v7, v4 + 19))
      {

        return 0;
      }

      v8 = CFRetain(v4[19]);
      v4[18] = v8;
      v4[17] = CFRetain(v8);
    }

    *(v4 + 51) = 0;
    v9 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v4];
    [(BWNodeOutput *)v9 setName:@"CameraPassThru"];
    [(BWNodeOutput *)v9 setPassthroughMode:1];
    [(CMMetadataFormatDescriptionRef *)v4 addOutput:v9];
    v4[22] = v9;

    v10 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v4];
    [(BWNodeOutput *)v10 setName:@"CameraInfoMetadata"];
    if (v4[17])
    {
      [(BWNodeOutput *)v10 setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:?]];
    }

    [(CMMetadataFormatDescriptionRef *)v4 addOutput:v10];
    v4[23] = v10;

    [(CMMetadataFormatDescriptionRef *)v4 setSupportsLiveReconfiguration:1];
    [(CMMetadataFormatDescriptionRef *)v4 setSupportsPrepareWhileRunning:1];
  }

  return v4;
}

- (void)_emitLivePhotosAndDebugBoxedMetadataForSampleBuffer:(void *)buffer metadata:(uint64_t)metadata time:
{
  if (!self)
  {
    return;
  }

  v91 = 0;
  v92[0] = 0;
  v90 = 0;
  point.x = 0.0;
  point.y = 0.0;
  v87 = 0;
  v88 = 0;
  v6 = *(self + 160);
  if ((*(metadata + 12) & 1) == 0)
  {
    OUTLINED_FUNCTION_2_76();
    goto LABEL_56;
  }

  v70 = *(self + 160);
  if (*(self + 209) == 1)
  {
    [(BWCameraInfoMetadataNode *)self _updateBoxedMetadataFormatDescriptionWithMetadata:buffer];
    *(self + 209) = 0;
  }

  if (![buffer count])
  {
    OUTLINED_FUNCTION_2_76();
LABEL_29:
    v47 = 0;
    goto LABEL_30;
  }

  if (*(self + 128) == 1)
  {
    v84 = 0.0;
    v85 = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    v86 = _Q0;
    FigCFDictionaryGetCGRectIfPresent();
    v11 = [buffer objectForKeyedSubscript:*off_1E798B218];
    v12 = [v11 count];
    if (v12 < 1)
    {
      v77 = 0;
    }

    else if (*&v86 == 1.0 && *(&v86 + 1) == 1.0)
    {
      v77 = v11;
    }

    else
    {
      v77 = BWCreateCorrectedFacesArray(v11, v84, v85, *&v86, *(&v86 + 1), v84, v85, *&v86, *(&v86 + 1));
      v12 = [v77 count];
    }

    v14 = [buffer objectForKeyedSubscript:*off_1E798B220];
    if (v14 && (v15 = v14, [v14 count]))
    {
      [v15 objectForKeyedSubscript:*off_1E798ACB0];
      v16 = OUTLINED_FUNCTION_4_59();
      CorrectedDetectedObjects = cimn_createCorrectedDetectedObjects(v17, &v91 + 1, v16, v18, v19, v20);
      [v15 objectForKeyedSubscript:*off_1E798AC90];
      v21 = OUTLINED_FUNCTION_4_59();
      v75 = cimn_createCorrectedDetectedObjects(v22, &v91, v21, v23, v24, v25);
      [v15 objectForKeyedSubscript:*off_1E798ACA0];
      v26 = OUTLINED_FUNCTION_4_59();
      v74 = cimn_createCorrectedDetectedObjects(v27, &v90 + 1, v26, v28, v29, v30);
      [v15 objectForKeyedSubscript:*off_1E798ACD8];
      v31 = OUTLINED_FUNCTION_4_59();
      v73 = cimn_createCorrectedDetectedObjects(v32, &v90, v31, v33, v34, v35);
      v37 = v91;
      v36 = HIDWORD(v91);
      v39 = v90;
      v38 = HIDWORD(v90);
    }

    else
    {
      v39 = 0;
      v38 = 0;
      v37 = 0;
      v36 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      CorrectedDetectedObjects = 0;
    }

    v40 = FigLivePhotoMetadataComputeSerializationSizeV3(3u, v12, v36, v37, v38, v39, v92);
    if (v40)
    {
      v41 = v40;
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      v83 = 0;
      v82 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_3_69();
      LODWORD(__dst.duration.value) = 67109120;
      HIDWORD(__dst.duration.value) = v41;
      OUTLINED_FUNCTION_5_61();
      v44 = _os_log_send_and_compose_impl();
      numSampleSizeEntries = 0;
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v44, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWCameraInfoMetadataNode.m", 529, @"LastShownDate:BWCameraInfoMetadataNode.m:529", @"LastShownBuild:BWCameraInfoMetadataNode.m:529", 0);
      free(v44);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
  }

  if (!*(self + 204))
  {
    goto LABEL_29;
  }

  v45 = [buffer objectForKeyedSubscript:*off_1E798D4C0];
  if (!v45)
  {
    goto LABEL_29;
  }

  v46 = v45;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (CGPointMakeWithDictionaryRepresentation(v46, &point))
  {
    v47 = 8;
  }

  else
  {
    v47 = 0;
  }

LABEL_30:
  v48 = v92[0];
  if (v92[0] | v47)
  {
    v49 = v47 + 8;
    if (!v47)
    {
      v49 = 0;
    }

    v72 = v49;
    while (1)
    {
      if (v48)
      {
        v50 = v48 + 8;
      }

      else
      {
        v50 = 0;
      }

      v51 = malloc_type_malloc(v50 + v72, 0xC4F9DC79uLL);
      v52 = v51;
      v53 = v92[0];
      if (!v92[0])
      {
        v60 = v51;
        goto LABEL_44;
      }

      v51->i32[0] = bswap32(LODWORD(v92[0]) + 8);
      v51->i32[1] = *(self + 200);
      *&__dst.duration.value = *metadata;
      __dst.duration.epoch = *(metadata + 16);
      v54 = FigLivePhotoMetadataSerializeIntoBufferV3(a2, &__dst, buffer, v77, CorrectedDetectedObjects, v75, v74, v73, 3u, v53, &v51[1]);
      if (!v54)
      {
        break;
      }

      v55 = v54;
      v56 = FigCaptureGetFrameworkRadarComponent();
      v80 = 0;
      LOBYTE(v83) = 0;
      v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v57, v83);
      OUTLINED_FUNCTION_3_69();
      LODWORD(__dst.duration.value) = 67109120;
      HIDWORD(__dst.duration.value) = v55;
      OUTLINED_FUNCTION_5_61();
      v58 = _os_log_send_and_compose_impl();
      numSampleSizeEntries = 0;
      FigCapturePleaseFileRadar(v56, v58, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWCameraInfoMetadataNode.m", 686, @"LastShownDate:BWCameraInfoMetadataNode.m:686", @"LastShownBuild:BWCameraInfoMetadataNode.m:686", 0);
      free(v58);
      free(v52);
      v48 = 0;
      v92[0] = 0;
      if (!v47)
      {
        goto LABEL_40;
      }
    }

    v60 = (v52 + v92[0] + 8);
LABEL_44:
    v59 = MEMORY[0x1E695E480];
    if (v47)
    {
      v60->i32[0] = (v47 + 8) << 24;
      v60->i32[1] = *(self + 204);
      v60[1] = vrev32_s8(vcvt_f32_f64(point));
    }

    v61 = CMBlockBufferCreateWithMemoryBlock(*v59, v52, v50 + v72, *MEMORY[0x1E695E488], 0, 0, v50 + v72, 0, &v88);
    v6 = 0;
    if (v61)
    {
      v67 = v61;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_8();
      LODWORD(blockBufferOut) = v67;
      FigDebugAssert3();
LABEL_61:
      *&__dst.duration.value = *metadata;
      __dst.duration.epoch = *(metadata + 16);
      [*(self + 184) emitDroppedSample:{+[BWDroppedSample newDroppedSampleWithReason:pts:](BWDroppedSample, "newDroppedSampleWithReason:pts:", 0x1F219BFF0, &__dst, blockBufferOut, numSampleSizeEntries)}];
      goto LABEL_62;
    }
  }

  else
  {
LABEL_40:
    if ((v70 & 1) == 0)
    {
      _emptyMetadataBlockBuffer = [(BWCameraInfoMetadataNode *)self _emptyMetadataBlockBuffer];
      if (!_emptyMetadataBlockBuffer)
      {
        v6 = 0;
        v64 = 0;
        v88 = 0;
        goto LABEL_57;
      }

      v66 = CFRetain(_emptyMetadataBlockBuffer);
      v88 = v66;
      v59 = MEMORY[0x1E695E480];
      if (v66)
      {
        v62 = v66;
        v6 = 1;
        goto LABEL_48;
      }

      v6 = 0;
LABEL_56:
      v64 = 0;
      goto LABEL_57;
    }

    v6 = 1;
    v59 = MEMORY[0x1E695E480];
  }

  v62 = v88;
  sampleSizeArray = 0;
  if (!v88)
  {
    goto LABEL_56;
  }

LABEL_48:
  memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  __dst.presentationTimeStamp = *metadata;
  sampleSizeArray = CMBlockBufferGetDataLength(v62);
  v63 = CMSampleBufferCreate(*v59, v88, 1u, 0, 0, *(self + 136), 1, 1, &__dst, 1, &sampleSizeArray, &v87);
  if (v63)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    LODWORD(blockBufferOut) = v63;
    FigDebugAssert3();
  }

  v64 = v63 != 0;
LABEL_57:
  if (v64 || !v87)
  {
    goto LABEL_61;
  }

  [*(self + 184) emitSampleBuffer:?];
  *(self + 160) = v6;
LABEL_62:

  if (v88)
  {
    CFRelease(v88);
  }

  if (v87)
  {
    CFRelease(v87);
  }
}

- (void)_updateBoxedMetadataFormatDescriptionWithMetadata:(uint64_t)metadata
{
  if (!metadata)
  {
    return;
  }

  *(metadata + 204) = 0;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [a2 objectForKeyedSubscript:*off_1E798D498];
  v6 = *(metadata + 208) != 1 || v5 == 0;
  v7 = MEMORY[0x1E6960348];
  v8 = MEMORY[0x1E6960338];
  if (v6)
  {
    goto LABEL_10;
  }

  v9 = [a2 objectForKeyedSubscript:*off_1E798D4C0];
  if (!v9)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    v9 = 0;
  }

  else
  {
    point.x = 0.0;
    point.y = 0.0;
    v10 = CGPointMakeWithDictionaryRepresentation(v9, &point);
    v9 = 0;
    if (v10)
    {
      v11 = *v8;
      v22[0] = *v7;
      v22[1] = v11;
      v12 = *MEMORY[0x1E6960240];
      v23[0] = @"mdta/com.apple.quicktime.optical-center";
      v23[1] = v12;
      v22[2] = *MEMORY[0x1E6960358];
      v20 = *MEMORY[0x1E6960360];
      v21 = *MEMORY[0x1E695E4C0];
      v23[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
      [v4 addObject:v9];
    }
  }

LABEL_11:
  if ([v4 count])
  {
    point.x = 0.0;
    formatDescriptionOut = 0;
    v13 = *MEMORY[0x1E695E480];
    if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v4, &point))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_12();
      goto LABEL_30;
    }

    v14 = *(metadata + 144);
    if (v14)
    {
      v15 = CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions(v13, v14, *&point.x, &formatDescriptionOut);
      if (*&point.x)
      {
        CFRelease(*&point.x);
      }

      if (v15)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_12();
LABEL_30:
        FigDebugAssert3();
        return;
      }
    }

    else
    {
      formatDescriptionOut = *&point.x;
    }

    v18 = *(metadata + 136);
    if (v18)
    {
      CFRelease(v18);
    }

    *(metadata + 136) = formatDescriptionOut;
    if (v9)
    {
      [(__CFDictionary *)v9 objectForKeyedSubscript:*v7];
      [(__CFDictionary *)v9 objectForKeyedSubscript:*v8];
      *(metadata + 204) = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
    }
  }

  else
  {
    v16 = *(metadata + 136);
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = *(metadata + 144);
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(metadata + 136) = v17;
  }
}

- (uint64_t)_emptyMetadataBlockBuffer
{
  if (result)
  {
    v1 = result;
    if (!*(result + 168))
    {
      if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 8uLL, *MEMORY[0x1E695E480], 0, 0, 8uLL, 1u, (result + 168)))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_12();
      }

      else
      {
        dataPointerOut = 0;
        if (!CMBlockBufferGetDataPointer(*(v1 + 168), 0, 0, 0, &dataPointerOut))
        {
          *dataPointerOut = 0x8000000;
          return *(v1 + 168);
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_12();
      }

      FigDebugAssert3();
    }

    return *(v1 + 168);
  }

  return result;
}

- (uint64_t)didSelectFormat:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_8();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_8();
  return FigDebugAssert3();
}

@end