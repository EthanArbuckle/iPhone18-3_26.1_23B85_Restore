@interface BWStillImageBufferRouterNode
- (BWStillImageBufferRouterNode)initWithInputPortTypes:(id)a3 HDRSupported:(BOOL)a4 SISSupported:(BOOL)a5 GNRSISSupported:(BOOL)a6 LTMHDRSupported:(BOOL)a7 depthDataDeliveryEnabled:(BOOL)a8;
- (uint64_t)_outputForInput:(void *)a3 resolvedStillImageCaptureSettings:(void *)a4 metadata:;
- (void)_defaultOutputsForInput:(uint64_t)a1;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)handleStillImagePrewarmWithSettings:(id)a3 resourceConfig:(id)a4 forInput:(id)a5;
- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)a3 forInput:(id)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWStillImageBufferRouterNode

- (BWStillImageBufferRouterNode)initWithInputPortTypes:(id)a3 HDRSupported:(BOOL)a4 SISSupported:(BOOL)a5 GNRSISSupported:(BOOL)a6 LTMHDRSupported:(BOOL)a7 depthDataDeliveryEnabled:(BOOL)a8
{
  v45.receiver = self;
  v45.super_class = BWStillImageBufferRouterNode;
  v14 = [(BWNode *)&v45 init];
  if (v14)
  {
    v14->_inputPortTypes = a3;
    v15 = [a3 containsObject:*off_1E798A0C0];
    v39 = a8;
    if (v15)
    {
      LOBYTE(v15) = [a3 containsObject:*off_1E798A0D8];
    }

    v14->_usingBravoDevice = v15;
    v16 = [a3 containsObject:*off_1E798A0E0];
    if (v16)
    {
      LOBYTE(v16) = [a3 containsObject:*off_1E798A0E8];
    }

    v14->_usingPearlDevice = v16;
    v14->_HDRSupported = a4;
    v14->_SISSupported = a5;
    v14->_GNRSISSupported = a6;
    v14->_LTMHDRSupported = a7;
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = [a3 countByEnumeratingWithState:&v41 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      LODWORD(v20) = 0;
      v21 = *v42;
      do
      {
        v22 = a3;
        v23 = 0;
        v20 = v20;
        do
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v22);
          }

          v24 = *(*(&v41 + 1) + 8 * v23);
          v25 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v14 index:v20];
          v26 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeInput *)v25 setFormatRequirements:v26];

          [(BWNodeInput *)v25 setPassthroughMode:1];
          [(BWNodeInput *)v25 setRetainedBufferCount:0];
          [(BWNodeInput *)v25 setName:BWPortTypeToDisplayString(v24, v27)];
          [(BWNode *)v14 addInput:v25];
          ++v20;
          [v17 setObject:v25 forKeyedSubscript:v24];

          ++v23;
        }

        while (v19 != v23);
        a3 = v22;
        v19 = [v22 countByEnumeratingWithState:&v41 objects:v40 count:16];
      }

      while (v19);
    }

    v14->_portTypeToInput = [v17 copy];
    v28 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v14];
    v29 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutput *)v28 setFormatRequirements:v29];

    [(BWNodeOutput *)v28 setPassthroughMode:1];
    [(BWNodeOutput *)v28 setIndexOfInputWhichDrivesThisOutput:0];
    [(BWNodeOutput *)v28 setName:@"Default"];
    [(BWNode *)v14 addOutput:v28];
    v14->_defaultOutput = v28;

    if (v14->_HDRSupported && !v14->_LTMHDRSupported && !v39)
    {
      v30 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v14];
      v31 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeOutput *)v30 setFormatRequirements:v31];

      [(BWNodeOutput *)v30 setPassthroughMode:1];
      [(BWNodeOutput *)v30 setIndexOfInputWhichDrivesThisOutput:0];
      [(BWNodeOutput *)v30 setName:@"Legacy HDR"];
      [(BWNode *)v14 addOutput:v30];
      v14->_HDROutput = v30;
    }

    if (v14->_SISSupported && !v14->_GNRSISSupported)
    {
      v32 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v14];
      v33 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeOutput *)v32 setFormatRequirements:v33];

      [(BWNodeOutput *)v32 setPassthroughMode:1];
      [(BWNodeOutput *)v32 setIndexOfInputWhichDrivesThisOutput:0];
      [(BWNodeOutput *)v32 setName:@"Legacy SIS/OIS"];
      [(BWNode *)v14 addOutput:v32];
      v14->_SISOutput = v32;
    }

    if (v14->_usingBravoDevice)
    {
      v34 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v14];
      v35 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeOutput *)v34 setFormatRequirements:v35];

      [(BWNodeOutput *)v34 setPassthroughMode:1];
      -[BWNodeOutput setIndexOfInputWhichDrivesThisOutput:](v34, "setIndexOfInputWhichDrivesThisOutput:", [a3 indexOfObject:*off_1E798A0D8]);
      [(BWNodeOutput *)v34 setName:@"Bravo Telephoto"];
      [(BWNode *)v14 addOutput:v34];
      v14->_bravoTelephotoOutput = v34;
    }

    if (v14->_usingPearlDevice)
    {
      v36 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v14];
      v37 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeOutput *)v36 setFormatRequirements:v37];

      [(BWNodeOutput *)v36 setPassthroughMode:1];
      -[BWNodeOutput setIndexOfInputWhichDrivesThisOutput:](v36, "setIndexOfInputWhichDrivesThisOutput:", [a3 indexOfObject:*off_1E798A0E8]);
      [(BWNodeOutput *)v36 setName:@"Pearl IR / Depth"];
      [(BWNode *)v14 addOutput:v36];
      v14->_pearlInfraredOutput = v36;
    }
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageBufferRouterNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  if (![a4 index])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(BWNode *)self outputs];
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) setFormat:objc_msgSend(a4, "format")];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v8);
    }
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if ([(BWNode *)self allInputsHaveReachedState:1, a4, a5])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(BWNode *)self outputs];
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) makeConfiguredFormatLive];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v8);
    }
  }
}

- (void)didReachEndOfDataForInput:(id)a3
{
  if ([(BWNode *)self allInputsHaveReachedState:0])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(BWNode *)self outputs];
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) markEndOfLiveOutput];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v6);
    }
  }
}

- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)a3 forInput:(id)a4
{
  v4 = *&a3;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(BWStillImageBufferRouterNode *)self _defaultOutputsForInput:a4];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v6 = CMGetAttachment(a3, @"BWStillImageCaptureSettings", 0);
  v7 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v9 = [(BWStillImageBufferRouterNode *)self _outputForInput:v8 resolvedStillImageCaptureSettings:v6 metadata:v7];
  if (v9)
  {

    [v9 emitSampleBuffer:a3];
  }
}

- (uint64_t)_outputForInput:(void *)a3 resolvedStillImageCaptureSettings:(void *)a4 metadata:
{
  if (result)
  {
    v6 = result;
    v7 = [a4 objectForKeyedSubscript:*off_1E798B540];
    v8 = [a3 captureStreamSettingsForPortType:v7];
    if ([v8 validBracketedCaptureSequenceNumbers])
    {
      v9 = [objc_msgSend(a4 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
      v10 = [objc_msgSend(a4 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
      v11 = (v9 & 1) != 0 ? &unk_1F2244A88 : [MEMORY[0x1E696AD98] numberWithInt:v10];
      if (![objc_msgSend(v8 "validBracketedCaptureSequenceNumbers")])
      {
        return 0;
      }
    }

    v12 = [a3 captureFlags];
    v13 = [a3 captureType];
    result = 0;
    if (v13 <= 0xD)
    {
      if (((1 << v13) & 0x3CC6) != 0)
      {
        OUTLINED_FUNCTION_33();
        if (!v14)
        {
          goto LABEL_33;
        }

LABEL_11:
        if ([v7 isEqualToString:*off_1E798A0D8])
        {
LABEL_12:
          v15 = &OBJC_IVAR___BWStillImageBufferRouterNode__bravoTelephotoOutput;
          return *(v6 + *v15);
        }

LABEL_33:
        OUTLINED_FUNCTION_33();
        if (v14 && ([v7 isEqualToString:*off_1E798A0E8] & 1) != 0)
        {
LABEL_36:
          v15 = &OBJC_IVAR___BWStillImageBufferRouterNode__pearlInfraredOutput;
          return *(v6 + *v15);
        }

LABEL_37:
        v15 = &OBJC_IVAR___BWStillImageBufferRouterNode__defaultOutput;
        return *(v6 + *v15);
      }

      if (((1 << v13) & 0x30) != 0)
      {
        OUTLINED_FUNCTION_33();
        if (v14 && ([v7 isEqualToString:*off_1E798A0D8] & 1) != 0)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_33();
        if (v14 && ([v7 isEqualToString:*off_1E798A0E8] & 1) != 0)
        {
          goto LABEL_36;
        }

        v16 = 168;
      }

      else
      {
        if (v13 != 3)
        {
          return result;
        }

        v17 = [objc_msgSend(a4 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
        if ((v12 & 0x400) != 0)
        {
          v18 = v17;
          v19 = [a4 objectForKeyedSubscript:*off_1E798A830];
          if (v19)
          {
            [v19 doubleValue];
            v21 = v20 == 0.0;
          }

          else
          {
            v21 = 0;
          }

          if ((v18 | v21))
          {
            v22 = [v7 isEqualToString:*off_1E798A0C0];
            v15 = &OBJC_IVAR___BWStillImageBufferRouterNode__bravoTelephotoOutput;
            if (v22)
            {
              v15 = &OBJC_IVAR___BWStillImageBufferRouterNode__defaultOutput;
            }
          }

          else
          {
            v15 = &OBJC_IVAR___BWStillImageBufferRouterNode__HDROutput;
          }

          return *(v6 + *v15);
        }

        if ((v12 & 0x800) != 0)
        {
          if (!*(v6 + 128))
          {
            goto LABEL_33;
          }

          goto LABEL_11;
        }

        if (*(v6 + 128) && [v7 isEqualToString:*off_1E798A0D8])
        {
          result = *(v6 + 160);
          if (result)
          {
            return result;
          }

          goto LABEL_12;
        }

        OUTLINED_FUNCTION_33();
        if (v14 && ([v7 isEqualToString:*off_1E798A0E8] & 1) != 0)
        {
          goto LABEL_36;
        }

        v16 = 160;
      }

      result = *(v6 + v16);
      if (result)
      {
        return result;
      }

      goto LABEL_37;
    }
  }

  return result;
}

- (void)_defaultOutputsForInput:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [*(a1 + 136) objectAtIndexedSubscript:{objc_msgSend(a2, "index")}];
  v4 = [MEMORY[0x1E695DF70] array];
  if (*(a1 + 128) == 1 && [v3 isEqualToString:*off_1E798A0D8])
  {
    v5 = 176;
LABEL_8:
    v6 = *(a1 + v5);
LABEL_12:
    [v4 addObject:v6];
    return v4;
  }

  if (*(a1 + 129) == 1 && [v3 isEqualToString:*off_1E798A0E8])
  {
    v5 = 184;
    goto LABEL_8;
  }

  [v4 addObject:*(a1 + 152)];
  if (*(a1 + 160))
  {
    [v4 addObject:?];
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    goto LABEL_12;
  }

  return v4;
}

- (void)handleStillImagePrewarmWithSettings:(id)a3 resourceConfig:(id)a4 forInput:(id)a5
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(BWStillImageBufferRouterNode *)self _defaultOutputsForInput:a5];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) emitStillImagePrewarmMessageWithSettings:a3 resourceConfig:a4];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(BWStillImageBufferRouterNode *)self _defaultOutputsForInput:a4];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) emitNodeError:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

@end