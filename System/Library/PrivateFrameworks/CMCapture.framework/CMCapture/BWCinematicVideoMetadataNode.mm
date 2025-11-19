@interface BWCinematicVideoMetadataNode
- (BWCinematicVideoMetadataNode)init;
- (uint64_t)_emptyMetadataBlockBuffer;
- (void)_emitCopyOfMarkerBuffer:(void *)a3 onOutput:;
- (void)_emitMetadataWithCinematographyMetadata:(CMTime *)a3 time:;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWCinematicVideoMetadataNode

- (BWCinematicVideoMetadataNode)init
{
  v43.receiver = self;
  v43.super_class = BWCinematicVideoMetadataNode;
  v2 = [(BWNode *)&v43 init];
  if (v2)
  {
    v3 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v2];
    v4 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v3 setFormatRequirements:v4];

    [(BWNodeInput *)v3 setPassthroughMode:1];
    [(BWNode *)v2 addInput:v3];

    v6 = *MEMORY[0x1E6960338];
    v40[0] = *MEMORY[0x1E6960348];
    v5 = v40[0];
    v40[1] = v6;
    v7 = *MEMORY[0x1E6960208];
    v42[0] = @"mdta/com.apple.quicktime.aperture-float";
    v42[1] = v7;
    v41 = *MEMORY[0x1E6960358];
    v8 = v41;
    v38 = *MEMORY[0x1E6960360];
    v9 = v38;
    v39 = *MEMORY[0x1E695E4C0];
    v10 = v39;
    v42[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v40 count:3];
    v36[0] = v5;
    v36[1] = v6;
    v37[0] = @"mdta/com.apple.quicktime.disparity-float";
    v37[1] = v7;
    v36[2] = v8;
    v34 = v9;
    v35 = v10;
    v37[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];
    v32[0] = v5;
    v32[1] = v6;
    v12 = *MEMORY[0x1E6960260];
    v33[0] = @"mdta/com.apple.quicktime.cinematic-video.cinematography";
    v33[1] = v12;
    v32[2] = v8;
    v30 = v9;
    v31 = v10;
    v33[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
    v28[0] = v5;
    v28[1] = v6;
    v29[0] = @"mdta/com.apple.quicktime.cinematic-video.rendering";
    v29[1] = v12;
    v28[2] = v8;
    v26 = v9;
    v27 = v10;
    v29[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
    v24[0] = v5;
    v24[1] = v6;
    v25[0] = @"mdta/com.apple.quicktime.cinematic-video.stabilization";
    v25[1] = v12;
    v24[2] = v8;
    v22 = v9;
    v23 = v10;
    v25[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v21[0] = v20;
    v21[1] = v11;
    v21[2] = v19;
    v21[3] = v13;
    v21[4] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:5];
    if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v15, &v2->_metadataFormatDescription))
    {

      return 0;
    }

    else
    {
      [v20 objectForKeyedSubscript:v5];
      [v20 objectForKeyedSubscript:v6];
      v2->_localIDForAperture_BE = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
      [v11 objectForKeyedSubscript:v5];
      [v11 objectForKeyedSubscript:v6];
      v2->_localIDForDisparity_BE = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
      [v19 objectForKeyedSubscript:v5];
      [v19 objectForKeyedSubscript:v6];
      v2->_localIDForCinematographyMetadata_BE = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
      [v13 objectForKeyedSubscript:v5];
      [v13 objectForKeyedSubscript:v6];
      v2->_localIDForRenderingMetadata_BE = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
      [v14 objectForKeyedSubscript:v5];
      [v14 objectForKeyedSubscript:v6];
      v2->_localIDForStabilizationMetadata_BE = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
      v16 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v2];
      [(BWNodeOutput *)v16 setName:@"PassThru"];
      [(BWNodeOutput *)v16 setPassthroughMode:1];
      [(BWNode *)v2 addOutput:v16];
      v2->_passthruOutput = v16;

      v17 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v2];
      [(BWNodeOutput *)v17 setName:@"CinematicVideoMetadata"];
      [(BWNodeOutput *)v17 setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:v2->_metadataFormatDescription]];
      [(BWNode *)v2 addOutput:v17];
      v2->_metadataOutput = v17;
    }
  }

  return v2;
}

- (void)dealloc
{
  metadataFormatDescription = self->_metadataFormatDescription;
  if (metadataFormatDescription)
  {
    CFRelease(metadataFormatDescription);
  }

  emptyMetadataSampleData = self->_emptyMetadataSampleData;
  if (emptyMetadataSampleData)
  {
    CFRelease(emptyMetadataSampleData);
  }

  v5.receiver = self;
  v5.super_class = BWCinematicVideoMetadataNode;
  [(BWNode *)&v5 dealloc];
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  [(BWNodeOutput *)self->_passthruOutput makeConfiguredFormatLive:a3];
  metadataOutput = self->_metadataOutput;

  [(BWNodeOutput *)metadataOutput makeConfiguredFormatLive];
}

- (void)didReachEndOfDataForInput:(id)a3
{
  [(BWNodeOutput *)self->_passthruOutput markEndOfLiveOutput];
  metadataOutput = self->_metadataOutput;

  [(BWNodeOutput *)metadataOutput markEndOfLiveOutput];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  memset(&v21, 0, sizeof(v21));
  CMSampleBufferGetPresentationTimeStamp(&v21, a3);
  v6 = CMGetAttachment(a3, @"CinematicVideoMetadata", 0);
  if (v6)
  {
    v7 = v6;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:0x1F21A9A50];
          memset(&v15, 0, sizeof(v15));
          CMTimeMakeFromDictionary(&v15, [v13 objectForKeyedSubscript:0x1F217CEB0]);
          v14 = v15;
          [(BWCinematicVideoMetadataNode *)self _emitMetadataWithCinematographyMetadata:v12 time:&v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v9);
    }
  }

  if (BWSampleBufferIsMarkerBuffer(a3))
  {
    [(BWCinematicVideoMetadataNode *)self _emitCopyOfMarkerBuffer:a3 onOutput:self->_metadataOutput];
  }

  if (!CMGetAttachment(a3, @"RefinedCinematographyStreamEndMarker", 0))
  {
    [(BWNodeOutput *)self->_passthruOutput emitSampleBuffer:a3];
  }
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  [(BWNodeOutput *)self->_passthruOutput emitDroppedSample:a3, a4];
  metadataOutput = self->_metadataOutput;

  [(BWNodeOutput *)metadataOutput emitDroppedSample:a3];
}

- (void)_emitCopyOfMarkerBuffer:(void *)a3 onOutput:
{
  if (a1)
  {
    if (a3)
    {
      sampleBufferOut = 0;
      memset(&v5, 0, sizeof(v5));
      CMSampleBufferGetPresentationTimeStamp(&v5, sbuf);
      if (!CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], sbuf, &sampleBufferOut))
      {
        [a3 emitSampleBuffer:sampleBufferOut];
        if (sampleBufferOut)
        {
          CFRelease(sampleBufferOut);
        }
      }
    }
  }
}

- (void)_emitMetadataWithCinematographyMetadata:(CMTime *)a3 time:
{
  if (!a1)
  {
    return;
  }

  blockBufferOut = 0;
  v36 = 0;
  v6 = *(a1 + 136);
  v7 = [a2 objectForKeyedSubscript:0x1F21A9A50];
  v8 = MEMORY[0x1E695E480];
  if (v7 && (v9 = v7, [v7 objectForKeyedSubscript:0x1F21A9950]))
  {
    v32 = a3;
    __dst.duration.value = 0;
    v10 = [v9 objectForKeyedSubscript:0x1F21A9950];
    v11 = objc_alloc_init(MEMORY[0x1E695DF88]);
    [getPTSerializationClass() writeObject:v10 toData:v11 options:0 error:&__dst];
    v12 = [v11 length];
    v13 = [a2 objectForKeyedSubscript:0x1F21A9A70];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(v13, "sizeOfSerializedObjectWithOptions:", 0)}];
      [v14 writeToData:v15 withOptions:0];
      v16 = v12 + [v15 length] + 16;
    }

    else
    {
      v15 = 0;
      v16 = v12 + 8;
    }

    v18 = [a2 objectForKeyedSubscript:0x1F21A9A90];
    if (v18)
    {
      v19 = v18;
      v20 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(v18, "sizeOfSerializedObjectWithOptions:", 0)}];
      [v19 writeToData:v20 withOptions:0];
      v16 += [v20 length] + 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = (v16 + 24);
    v17 = malloc_type_malloc(v21, 0xA5E431BFuLL);
    *v17 = bswap32([v11 length] + 8);
    v17[1] = *(a1 + 176);
    memcpy(v17 + 2, [v11 bytes], objc_msgSend(v11, "length"));
    v22 = [v11 length];
    v23 = v22 + 8;

    if (v15)
    {
      *(v17 + v23) = bswap32([v15 length] + 8);
      *(v17 + v22 + 12) = *(a1 + 180);
      memcpy(v17 + v23 + 8, [v15 bytes], objc_msgSend(v15, "length"));
      v23 = v22 + [v15 length] + 16;
    }

    v8 = MEMORY[0x1E695E480];
    if (v20)
    {
      v24 = (v17 + v23);
      *v24 = bswap32([v20 length] + 8);
      v24[1] = *(a1 + 184);
      memcpy(v17 + v23 + 8, [v20 bytes], objc_msgSend(v20, "length"));
      v23 += [v20 length] + 8;
    }

    a3 = v32;
    v25 = (v17 + v23);
    *v25 = 201326592;
    v25[1] = *(a1 + 168);
    [objc_msgSend(v9 objectForKeyedSubscript:{0x1F21A98F0), "floatValue"}];
    v25[2] = bswap32(v26);
    v25[3] = 201326592;
    v25[4] = *(a1 + 172);
    [objc_msgSend(v9 objectForKeyedSubscript:{0x1F21A9930), "floatValue"}];
    v25[5] = bswap32(v27);
    if (CMBlockBufferCreateWithMemoryBlock(*v8, v17, v21, *MEMORY[0x1E695E488], 0, 0, v21, 0, &blockBufferOut))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_78();
      FigDebugAssert3();
      goto LABEL_27;
    }

    v28 = blockBufferOut;
    sampleSizeArray = 0;
    if (!blockBufferOut)
    {
      goto LABEL_26;
    }

    v29 = 0;
  }

  else
  {
    if (v6)
    {
      v17 = 0;
      sampleSizeArray = 0;
LABEL_27:
      *&__dst.duration.value = *&a3->value;
      __dst.duration.epoch = a3->epoch;
      [*(a1 + 160) emitDroppedSample:{+[BWDroppedSample newDroppedSampleWithReason:pts:](BWDroppedSample, "newDroppedSampleWithReason:pts:", 0x1F219C070, &__dst)}];
      goto LABEL_28;
    }

    v30 = [(BWCinematicVideoMetadataNode *)a1 _emptyMetadataBlockBuffer];
    if (!v30)
    {
      v17 = 0;
      blockBufferOut = 0;
      goto LABEL_27;
    }

    v31 = CFRetain(v30);
    blockBufferOut = v31;
    if (!v31)
    {
LABEL_26:
      v17 = 0;
      goto LABEL_27;
    }

    v28 = v31;
    v29 = 1;
  }

  memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  __dst.presentationTimeStamp = *a3;
  sampleSizeArray = CMBlockBufferGetDataLength(v28);
  if (CMSampleBufferCreate(*v8, blockBufferOut, 1u, 0, 0, *(a1 + 128), 1, 1, &__dst, 1, &sampleSizeArray, &v36))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_78();
    FigDebugAssert3();
  }

  if (!v36)
  {
    goto LABEL_26;
  }

  [*(a1 + 160) emitSampleBuffer:?];
  v17 = 0;
  *(a1 + 136) = v29;
LABEL_28:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  free(v17);
}

- (uint64_t)_emptyMetadataBlockBuffer
{
  if (result)
  {
    v1 = result;
    if (!*(result + 144))
    {
      if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 8uLL, *MEMORY[0x1E695E480], 0, 0, 8uLL, 1u, (result + 144)))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_12();
      }

      else
      {
        dataPointerOut = 0;
        if (!CMBlockBufferGetDataPointer(*(v1 + 144), 0, 0, 0, &dataPointerOut))
        {
          *dataPointerOut = 0x8000000;
          return *(v1 + 144);
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_12();
      }

      FigDebugAssert3();
    }

    return *(v1 + 144);
  }

  return result;
}

@end