@interface BWMRCNode
- (BOOL)_shouldEmitSBufForBarcodeCount:(__int128 *)count originalPTS:;
- (BWMRCNode)init;
- (CGRect)rectOfInterest;
- (uint64_t)_setupSampleBufferProcessor;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)_newSymbologiesArrayFromIdentifiers:(uint64_t)identifiers;
- (void)_teardownSampleBufferProcessor;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setMrcIdentifiers:(id)identifiers;
- (void)setRectOfInterest:(CGRect)interest;
@end

@implementation BWMRCNode

- (BWMRCNode)init
{
  v9.receiver = self;
  v9.super_class = BWMRCNode;
  v2 = [(BWNode *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_createSampleBufferProcessorFunction = mrcn_createSampleBufferProcessor;
    v2->_symbologiesArray = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v4 = *(MEMORY[0x1E695F050] + 16);
    v3->_rectOfInterest.origin = *MEMORY[0x1E695F050];
    v3->_rectOfInterest.size = v4;
    v3->_rectOfInterestLock._os_unfair_lock_opaque = 0;
    v5 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v3];
    [(BWNodeInput *)v5 setIndefinitelyHeldBufferCount:1];
    v6 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v5 setFormatRequirements:v6];

    [(BWNode *)v3 addInput:v5];
    [(BWFormatRequirements *)[(BWNodeInput *)v3->super._input formatRequirements] setSupportedPixelFormats:&unk_1F22483A0];
    v7 = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:v3];
    [(BWNodeOutput *)v7 setFormat:[BWMetadataObjectFormat formatWithMetadataIdentifiers:0]];
    [(BWNode *)v3 addOutput:v7];
  }

  return v3;
}

- (void)dealloc
{
  sampleBufferProcessor = self->_sampleBufferProcessor;
  if (sampleBufferProcessor)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v4(sampleBufferProcessor, 0, 0);
    }

    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    if (FigBaseObject)
    {
      v6 = FigBaseObject;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }

    v8 = self->_sampleBufferProcessor;
    if (v8)
    {
      CFRelease(v8);
      self->_sampleBufferProcessor = 0;
    }
  }

  v9.receiver = self;
  v9.super_class = BWMRCNode;
  [(BWNode *)&v9 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWMRCNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if (!self->_sampleBufferProcessor)
  {
    if ([(BWMRCNode *)self _setupSampleBufferProcessor])
    {
      [BWMRCNode prepareForCurrentConfigurationToBecomeLive];
    }
  }
}

- (void)setMrcIdentifiers:(id)identifiers
{
  v5 = [identifiers copy];
  self->_mrcIdentifiers = v5;
  [(BWNodeOutput *)self->super._output setFormat:[BWMetadataObjectFormat formatWithMetadataIdentifiers:v5]];

  self->_symbologiesArray = [(BWMRCNode *)self _newSymbologiesArrayFromIdentifiers:?];
}

- (void)setRectOfInterest:(CGRect)interest
{
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 1.0;
  v10.size.height = 1.0;
  v9 = CGRectIntersection(interest, v10);
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  if (CGRectIsEmpty(v9))
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  os_unfair_lock_lock(&self->_rectOfInterestLock);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectEqualToRect(self->_rectOfInterest, v11))
  {
    self->_hasPendingRectOfInterestUpdate = 1;
    self->_rectOfInterest.origin.x = x;
    self->_rectOfInterest.origin.y = y;
    self->_rectOfInterest.size.width = width;
    self->_rectOfInterest.size.height = height;
  }

  os_unfair_lock_unlock(&self->_rectOfInterestLock);
}

- (CGRect)rectOfInterest
{
  x = self->_rectOfInterest.origin.x;
  y = self->_rectOfInterest.origin.y;
  width = self->_rectOfInterest.size.width;
  height = self->_rectOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)didReachEndOfDataForInput:(id)input
{
  [(BWMRCNode *)self _teardownSampleBufferProcessor];
  v5.receiver = self;
  v5.super_class = BWMRCNode;
  [(BWNode *)&v5 didReachEndOfDataForInput:input];
}

- (uint64_t)_setupSampleBufferProcessor
{
  if (!self)
  {
    return 0;
  }

  v20 = 0;
  v2 = *(self + 128);
  if (!v2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  v2(*MEMORY[0x1E695E480], 0, &v20);
  v3 = v20;
  *(self + 136) = v20;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    v18 = 4294954514;
LABEL_21:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return v18;
  }

  v5 = v4(v3, mrcn_processorOutputReadyCallback, self);
  if (v5)
  {
    v18 = v5;
    goto LABEL_21;
  }

  v6 = OUTLINED_FUNCTION_2_32();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v7(v6, *off_1E7989E18, *MEMORY[0x1E695E4D0]);
  }

  v8 = *(self + 144);
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_2_32();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v10(v9, *off_1E7989E30, v8);
    }
  }

  v21.origin.x = OUTLINED_FUNCTION_3_24();
  if (!CGRectIsNull(v21))
  {
    v22.origin.x = OUTLINED_FUNCTION_3_24();
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v22);
    v12 = OUTLINED_FUNCTION_2_32();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v13(v12, *off_1E7989E08, DictionaryRepresentation);
    }

    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }
  }

  if (*(self + 205) == 1)
  {
    v14 = OUTLINED_FUNCTION_2_32();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v15(v14, *off_1E7989E10, MEMORY[0x1E695E118]);
    }
  }

  v16 = OUTLINED_FUNCTION_2_32();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v17)
  {
    return v17(v16, *off_1E7989E20, 0);
  }

  else
  {
    return 4294954514;
  }
}

- (void)_newSymbologiesArrayFromIdentifiers:(uint64_t)identifiers
{
  if (!identifiers)
  {
    return 0;
  }

  if (!*(identifiers + 208))
  {
    v4 = *MEMORY[0x1E69C68B8];
    v5 = *MEMORY[0x1E6962998];
    v88[0] = *MEMORY[0x1E6962990];
    v88[1] = v5;
    v6 = *MEMORY[0x1E69C68C0];
    v89[0] = v4;
    v89[1] = v6;
    v7 = *MEMORY[0x1E69C6940];
    v8 = *MEMORY[0x1E6962970];
    v88[2] = *MEMORY[0x1E69629C0];
    v88[3] = v8;
    v9 = *MEMORY[0x1E69C6880];
    v89[2] = v7;
    v89[3] = v9;
    v10 = *MEMORY[0x1E69C6888];
    v11 = *MEMORY[0x1E6962980];
    v88[4] = *MEMORY[0x1E6962978];
    v88[5] = v11;
    v12 = *MEMORY[0x1E69C68A0];
    v89[4] = v10;
    v89[5] = v12;
    v13 = *MEMORY[0x1E69C6878];
    v14 = *MEMORY[0x1E69629A0];
    v88[6] = *MEMORY[0x1E6962968];
    v88[7] = v14;
    v15 = *MEMORY[0x1E69C68E0];
    v89[6] = v13;
    v89[7] = v15;
    v16 = *MEMORY[0x1E69C68F0];
    v17 = *MEMORY[0x1E6962988];
    v88[8] = *MEMORY[0x1E69629A8];
    v88[9] = v17;
    v18 = *MEMORY[0x1E69C68B0];
    v89[8] = v16;
    v89[9] = v18;
    v19 = *MEMORY[0x1E69C6938];
    v20 = *MEMORY[0x1E6962960];
    v88[10] = *MEMORY[0x1E69629B8];
    v88[11] = v20;
    v21 = *MEMORY[0x1E69C6868];
    v89[10] = v19;
    v89[11] = v21;
    v22 = *MEMORY[0x1E69C6910];
    v23 = *off_1E798D0F0;
    v88[12] = *MEMORY[0x1E69629B0];
    v88[13] = v23;
    v24 = *MEMORY[0x1E69C6870];
    v89[12] = v22;
    v89[13] = v24;
    v25 = *MEMORY[0x1E69C68C8];
    v26 = *off_1E798D100;
    v88[14] = *off_1E798D0F8;
    v88[15] = v26;
    v27 = *MEMORY[0x1E69C68D0];
    v89[14] = v25;
    v89[15] = v27;
    v28 = *MEMORY[0x1E69C68D8];
    v29 = *off_1E798D118;
    v88[16] = *off_1E798D108;
    v88[17] = v29;
    v30 = *MEMORY[0x1E69C6908];
    v89[16] = v28;
    v89[17] = v30;
    v88[18] = *off_1E798D110;
    v89[18] = *MEMORY[0x1E69C6900];
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:19];
    *(identifiers + 208) = v31;
    v32 = v31;
  }

  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
  v41 = OUTLINED_FUNCTION_2_0(v33, v34, v35, v36, v37, v38, v39, v40, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, 0);
  if (v41)
  {
    v42 = v41;
    v43 = MEMORY[0];
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (MEMORY[0] != v43)
        {
          objc_enumerationMutation(a2);
        }

        v45 = *(8 * i);
        v46 = [*(identifiers + 208) objectForKey:v45];
        if (v46)
        {
          v46 = [v33 addObject:{objc_msgSend(*(identifiers + 208), "objectForKeyedSubscript:", v45)}];
        }
      }

      v42 = OUTLINED_FUNCTION_2_0(v46, v47, v48, v49, v50, v51, v52, v53, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v87);
    }

    while (v42);
  }

  return v33;
}

- (void)_teardownSampleBufferProcessor
{
  if (self)
  {
    v2 = *(self + 136);
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v3)
      {
        v3(v2);
      }

      v4 = *(self + 136);
      if (v4)
      {
        CFRelease(v4);
        *(self + 136) = 0;
      }
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v6 = CMGetAttachment(buffer, *off_1E798A340, 0);
  v7 = v6;
  if (v6)
  {
    dispatch_group_enter(v6);
  }

  v8 = CMGetAttachment(buffer, *off_1E798A488, 0);
  if (!v8 || ([v8 BOOLValue] & 1) != 0 || (v9 = FigSampleBufferProcessorGetFigBaseObject(), (v10 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && !v10(v9, *off_1E7989E28, 0))
  {
    os_unfair_lock_lock(&self->_rectOfInterestLock);
    hasPendingRectOfInterestUpdate = self->_hasPendingRectOfInterestUpdate;
    self->_hasPendingRectOfInterestUpdate = 0;
    os_unfair_lock_unlock(&self->_rectOfInterestLock);
    v19.origin.x = OUTLINED_FUNCTION_3();
    IsEmpty = CGRectIsEmpty(v19);
    if (hasPendingRectOfInterestUpdate)
    {
      v20.origin.x = OUTLINED_FUNCTION_3();
      if (!CGRectIsNull(v20))
      {
        v21.origin.x = OUTLINED_FUNCTION_3();
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v21);
        FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v15)
        {
          v15(FigBaseObject, *off_1E7989E08, DictionaryRepresentation);
        }

        if (DictionaryRepresentation)
        {
          CFRelease(DictionaryRepresentation);
        }
      }
    }

    if (!IsEmpty)
    {
      sampleBufferProcessor = self->_sampleBufferProcessor;
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v17)
      {
        v17(sampleBufferProcessor, buffer);
      }
    }
  }

  if (v7)
  {

    dispatch_group_leave(v7);
  }
}

- (BOOL)_shouldEmitSBufForBarcodeCount:(__int128 *)count originalPTS:
{
  if (!self)
  {
    return 0;
  }

  v4 = a2;
  if (!a2)
  {
    v4 = *(self + 160);
  }

  v5 = v4 > 0;
  *(self + 160) = a2;
  v6 = *(self + 216);
  v8 = *count;
  v9 = *(count + 2);
  [v6 node:self didEmitCodesCount:a2 emittedIdentifiers:0 originalPTS:&v8];
  return v5;
}

- (uint64_t)prepareForCurrentConfigurationToBecomeLive
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end