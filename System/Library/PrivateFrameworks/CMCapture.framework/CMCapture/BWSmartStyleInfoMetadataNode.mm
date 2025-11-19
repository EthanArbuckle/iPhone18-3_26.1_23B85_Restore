@interface BWSmartStyleInfoMetadataNode
- (BWSmartStyleInfoMetadataNode)init;
- (uint64_t)_emptyMetadataBlockBuffer;
- (uint64_t)init;
- (void)_emitSmartStyleInfoBoxedMetadataForSampleBuffer:(void *)a3 metadata:(uint64_t)a4 time:;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWSmartStyleInfoMetadataNode

- (BWSmartStyleInfoMetadataNode)init
{
  v20.receiver = self;
  v20.super_class = BWSmartStyleInfoMetadataNode;
  v2 = [(BWNode *)&v20 init];
  if (!v2)
  {
    return v2;
  }

  v3 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v2];
  if (!v3)
  {
    [BWSmartStyleInfoMetadataNode init];
    return 0;
  }

  v4 = v3;
  v5 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWNodeInput *)v4 setFormatRequirements:v5];

  [(BWNodeInput *)v4 setPassthroughMode:1];
  [(BWNode *)v2 addInput:v4];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = *MEMORY[0x1E6960348];
  v8 = *MEMORY[0x1E6960338];
  v18[0] = *MEMORY[0x1E6960348];
  v18[1] = v8;
  v9 = *MEMORY[0x1E6960260];
  v19[0] = @"mdta/com.apple.quicktime.smartstyle-info";
  v19[1] = v9;
  v18[2] = *MEMORY[0x1E6960358];
  v16 = *MEMORY[0x1E6960360];
  v17 = *MEMORY[0x1E695E4C0];
  v19[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  [v6 addObject:v10];
  if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v6, &v2->_boxedMetadataFormatDescription))
  {
    [BWSmartStyleInfoMetadataNode init];
    return 0;
  }

  [v10 objectForKeyedSubscript:v7];
  [v10 objectForKeyedSubscript:v8];
  v2->_localIDForSmartStyleInfoPlistMetadata_BE = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
  v11 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v2];
  if (!v11)
  {
    [BWSmartStyleInfoMetadataNode init];
    return 0;
  }

  v12 = v11;
  [(BWNodeOutput *)v11 setName:@"SmartStyleCameraPassThru"];
  [(BWNodeOutput *)v12 setPassthroughMode:1];
  [(BWNode *)v2 addOutput:v12];
  v2->_passthruOutput = v12;

  v13 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v2];
  if (!v13)
  {
    [BWSmartStyleInfoMetadataNode init];
    return 0;
  }

  v14 = v13;
  [(BWNodeOutput *)v13 setName:@"SmartStyleInfoMetadata"];
  if (v2->_boxedMetadataFormatDescription)
  {
    [(BWNodeOutput *)v14 setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:?]];
  }

  [(BWNode *)v2 addOutput:v14];
  v2->_boxedMetadataOutput = v14;

  [(BWNode *)v2 setSupportsLiveReconfiguration:1];
  [(BWNode *)v2 setSupportsPrepareWhileRunning:1];
  return v2;
}

- (void)dealloc
{
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

  v5.receiver = self;
  v5.super_class = BWSmartStyleInfoMetadataNode;
  [(BWNode *)&v5 dealloc];
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  [(BWNodeOutput *)self->_passthruOutput makeConfiguredFormatLive:a3];
  boxedMetadataOutput = self->_boxedMetadataOutput;

  [(BWNodeOutput *)boxedMetadataOutput makeConfiguredFormatLive];
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  [(BWNodeOutput *)self->_passthruOutput markEndOfLiveOutputForConfigurationID:a3, a4];
  boxedMetadataOutput = self->_boxedMetadataOutput;

  [(BWNodeOutput *)boxedMetadataOutput markEndOfLiveOutputForConfigurationID:a3];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  memset(&v12, 0, sizeof(v12));
  CMSampleBufferGetPresentationTimeStamp(&v12, a3);
  if (BWSampleBufferIsMarkerBuffer(a3))
  {
    v6 = CMGetAttachment(a3, @"FileWriterAction", 0);
    if (v6)
    {
      v7 = v6;
      if (CFEqual(v6, @"Start") || CFEqual(v7, @"Resume"))
      {
        self->_previousGeneratedMetadataBufferWasEmpty = 0;
        v8 = CMGetAttachment(a3, @"RecordingSettings", 0);
        if (v8)
        {
          self->_currentRecordingSupportsReversibility = [v8 smartStyleReversibilitySupported];
        }
      }
    }

    sampleBufferOut = 0;
    if (CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], a3, &sampleBufferOut))
    {
      v10 = v12;
      [(BWNodeOutput *)self->_boxedMetadataOutput emitDroppedSample:[BWDroppedSample newDroppedSampleWithReason:0x1F219BFF0 pts:&v10]];
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

  else if (self->_currentRecordingSupportsReversibility)
  {
    v9 = CMGetAttachment(a3, *off_1E798A3C8, 0);
    if (v9)
    {
      v10 = v12;
      [(BWSmartStyleInfoMetadataNode *)self _emitSmartStyleInfoBoxedMetadataForSampleBuffer:a3 metadata:v9 time:&v10];
    }
  }

  else
  {
    v10 = v12;
    [(BWNodeOutput *)self->_boxedMetadataOutput emitDroppedSample:[BWDroppedSample newDroppedSampleWithReason:0x1F219C1D0 pts:&v10]];
  }

  [(BWNodeOutput *)self->_passthruOutput emitSampleBuffer:a3];
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  [(BWNodeOutput *)self->_passthruOutput emitDroppedSample:a3, a4];
  boxedMetadataOutput = self->_boxedMetadataOutput;

  [(BWNodeOutput *)boxedMetadataOutput emitDroppedSample:a3];
}

- (void)_emitSmartStyleInfoBoxedMetadataForSampleBuffer:(void *)a3 metadata:(uint64_t)a4 time:
{
  if (!a1)
  {
    return;
  }

  v37 = 0;
  v38 = 0;
  if ((*(a4 + 12) & 1) == 0)
  {
    Data = 0;
    goto LABEL_26;
  }

  v8 = *(a1 + 153);
  v9 = [a3 count];
  v10 = MEMORY[0x1E695E480];
  if (!v9)
  {
    goto LABEL_23;
  }

  v11 = BWPixelBufferDimensionsFromSampleBuffer(a2);
  v12 = FigCaptureAspectRatioForDimensions(v11);
  if (FigCaptureGetAspectRatioFromFractionalAspectRatio(v12) == 2)
  {
    v13 = 8;
  }

  else
  {
    v13 = 7;
  }

  error.duration.value = 0;
  ImageBuffer = 0;
  if ((BWSmartStyleRenderingShouldBeBypassed(a2) & 1) == 0)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(a2, 0x1F21AB090);
    ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
  }

  v16 = BWSampleBufferGetAttachedMedia(a2, 0x1F21AB070);
  v17 = CMGetAttachment(v16, *off_1E798A3C8, 0);
  v18 = BWSmartStyleInfoDictionary(a3, a3, v17, ImageBuffer, 0, 0, 0, v13, 1u);
  if (![v18 count])
  {
LABEL_23:
    Data = 0;
LABEL_24:
    if (v8)
    {
      sampleSizeArray = 0;
      goto LABEL_26;
    }

    v30 = [(BWSmartStyleInfoMetadataNode *)a1 _emptyMetadataBlockBuffer];
    if (!v30)
    {
      v38 = 0;
      goto LABEL_26;
    }

    v31 = CFRetain(v30);
    v38 = v31;
    if (!v31)
    {
      goto LABEL_26;
    }

    v27 = v31;
    v28 = 1;
    goto LABEL_18;
  }

  v19 = *v10;
  Data = CFPropertyListCreateData(*v10, v18, kCFPropertyListBinaryFormat_v1_0, 0, &error);
  if (error.duration.value)
  {
    CFRelease(error.duration.value);
  }

  if (!Data)
  {
    goto LABEL_24;
  }

  Length = CFDataGetLength(Data);
  if (!Length)
  {
    goto LABEL_24;
  }

  v22 = Length;
  v23 = Length + 8;
  v24 = malloc_type_malloc(Length + 8, 0x3F0F2A12uLL);
  if (!v24)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    LODWORD(blockBufferOut) = 0;
LABEL_40:
    FigDebugAssert3();
    goto LABEL_26;
  }

  v25 = v24;
  *v24 = bswap32(v23);
  *(v24 + 1) = *(a1 + 168);
  v39.location = 0;
  v39.length = v22;
  CFDataGetBytes(Data, v39, v24 + 8);
  v26 = CMBlockBufferCreateWithMemoryBlock(v19, v25, v23, *MEMORY[0x1E695E488], 0, 0, v23, 0, &v38);
  if (v26)
  {
    v32 = v26;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    LODWORD(blockBufferOut) = v32;
    goto LABEL_40;
  }

  v27 = v38;
  sampleSizeArray = 0;
  if (!v38)
  {
    goto LABEL_26;
  }

  v28 = 0;
LABEL_18:
  memcpy(&error, MEMORY[0x1E6960CF0], sizeof(error));
  error.presentationTimeStamp = *a4;
  sampleSizeArray = CMBlockBufferGetDataLength(v27);
  v29 = CMSampleBufferCreate(*v10, v38, 1u, 0, 0, *(a1 + 144), 1, 1, &error, 1, &sampleSizeArray, &v37);
  if (v29)
  {
    v33 = v29;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    LODWORD(blockBufferOut) = v33;
    FigDebugAssert3();
  }

  if (v37)
  {
    [*(a1 + 136) emitSampleBuffer:?];
    *(a1 + 153) = v28;
    if (!Data)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_26:
  *&error.duration.value = *a4;
  error.duration.epoch = *(a4 + 16);
  [*(a1 + 136) emitDroppedSample:{+[BWDroppedSample newDroppedSampleWithReason:pts:](BWDroppedSample, "newDroppedSampleWithReason:pts:", 0x1F219BFF0, &error, blockBufferOut)}];
  if (Data)
  {
LABEL_27:
    CFRelease(Data);
  }

LABEL_28:
  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }
}

- (uint64_t)_emptyMetadataBlockBuffer
{
  if (result)
  {
    v1 = result;
    if (!*(result + 160))
    {
      if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 8uLL, *MEMORY[0x1E695E480], 0, 0, 8uLL, 1u, (result + 160)))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_8();
      }

      else
      {
        dataPointerOut = 0;
        if (!CMBlockBufferGetDataPointer(*(v1 + 160), 0, 0, 0, &dataPointerOut))
        {
          *dataPointerOut = 0x8000000;
          return *(v1 + 160);
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_8();
      }

      FigDebugAssert3();
    }

    return *(v1 + 160);
  }

  return result;
}

- (uint64_t)init
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end