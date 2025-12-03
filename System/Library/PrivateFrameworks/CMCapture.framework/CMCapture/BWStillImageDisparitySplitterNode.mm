@interface BWStillImageDisparitySplitterNode
- (BWStillImageDisparitySplitterNode)init;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageDisparitySplitterNode

- (BWStillImageDisparitySplitterNode)init
{
  v11.receiver = self;
  v11.super_class = BWStillImageDisparitySplitterNode;
  v2 = [(BWNode *)&v11 init];
  if (v2)
  {
    v3 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v2];
    primaryMediaConfiguration = [(BWNodeInput *)v3 primaryMediaConfiguration];
    [(BWNodeInputMediaConfiguration *)primaryMediaConfiguration setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    v5 = 1;
    [(BWNodeInputMediaConfiguration *)primaryMediaConfiguration setPassthroughMode:1];
    [(BWNode *)v2 addInput:v3];
    v6 = 0;
    v2->_outputs = malloc_type_malloc(0x10uLL, 0x80040B8603338uLL);
    v2->_numberOfOutputs = 2;
    do
    {
      v7 = v5;
      v8 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v2];
      primaryMediaConfiguration2 = [(BWNodeOutput *)v8 primaryMediaConfiguration];
      [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration2 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration2 setPassthroughMode:1];
      [(BWNode *)v2 addOutput:v8];
      v5 = 0;
      v2->_outputs[v6] = v8;
      v6 = 1;
    }

    while ((v7 & 1) != 0);
    [(BWNodeOutput *)[(BWStillImageDisparitySplitterNode *)v2 disparityOutput] setName:@"Disparity"];
    [(BWNodeOutput *)[(BWStillImageDisparitySplitterNode *)v2 processedOutput] setName:@"Processed"];
  }

  return v2;
}

- (void)dealloc
{
  outputs = self->_outputs;
  if (outputs)
  {
    free(outputs);
    self->_outputs = 0;
  }

  v4.receiver = self;
  v4.super_class = BWStillImageDisparitySplitterNode;
  [(BWNode *)&v4 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if ([key isEqualToString:@"PrimaryFormat"])
  {
    if (self->_numberOfOutputs)
    {
      v9 = 0;
      do
      {
        [self->_outputs[v9++] setFormat:format];
      }

      while (v9 < self->_numberOfOutputs);
    }
  }

  else if ([key isEqualToString:0x1F21AAB10])
  {
    disparityOutput = [(BWStillImageDisparitySplitterNode *)self disparityOutput];
    if (!-[BWNodeOutput attachedMediaKeyDrivenByInputAttachedMediaKey:inputIndex:](disparityOutput, "attachedMediaKeyDrivenByInputAttachedMediaKey:inputIndex:", key, [input index]))
    {
      v11 = [(BWNodeOutput *)disparityOutput mediaPropertiesForAttachedMediaKey:0];
      if (!v11)
      {
        v11 = objc_alloc_init(BWNodeOutputMediaProperties);
        [(BWNodeOutput *)disparityOutput _setMediaProperties:v11 forAttachedMediaKey:0];
      }

      [(BWNodeOutputMediaProperties *)v11 setResolvedFormat:format];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = BWStillImageDisparitySplitterNode;
    [(BWNode *)&v12 didSelectFormat:format forInput:input forAttachedMediaKey:key];
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (self->_numberOfOutputs)
  {
    v6 = 0;
    do
    {
      [self->_outputs[v6++] makeConfiguredFormatLive];
    }

    while (v6 < self->_numberOfOutputs);
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  if (self->_numberOfOutputs)
  {
    v4 = 0;
    do
    {
      [self->_outputs[v4++] markEndOfLiveOutput];
    }

    while (v4 < self->_numberOfOutputs);
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  if (self->_numberOfOutputs)
  {
    v6 = 0;
    do
    {
      [self->_outputs[v6++] emitNodeError:{error, input}];
    }

    while (v6 < self->_numberOfOutputs);
  }
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if (self->_numberOfOutputs)
  {
    v6 = 0;
    do
    {
      [self->_outputs[v6++] emitDroppedSample:{sample, input}];
    }

    while (v6 < self->_numberOfOutputs);
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (buffer)
  {
    v6 = CMGetAttachment(buffer, @"BWStillImageCaptureSettings", 0);
    captureType = [v6 captureType];
    v8 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    v9 = [v8 objectForKeyedSubscript:*off_1E798A830];
    v10 = [v8 objectForKeyedSubscript:*off_1E798B1B8];
    v11 = CMGetAttachment(buffer, @"HasUnreliableBracketingMetadata", 0);
    v12 = [CMGetAttachment(buffer @"StillImageProcessingFlags"];
    v13 = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
    if ((v12 & 0x400) != 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    bOOLValue = [v11 BOOLValue];
    v16 = bOOLValue;
    if (captureType == 3)
    {
      v18 = v9 && ([v9 doubleValue], v17 == 0.0) && objc_msgSend(v10, "intValue") > 0;
    }

    else if ((v12 & 0x400) != 0)
    {
      v18 = 0;
    }

    else
    {
      v18 = (captureType == 10) & ~bOOLValue & ~v14;
    }

    captureFlags = [v6 captureFlags];
    v21 = captureType != 3 && captureType != 10;
    if ((captureFlags & 0x20000) == 0)
    {
      v21 = 1;
    }

    if (((v21 | v14) & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](captureFlags);
      outputs = &v29;
      if ((v27 & ~v16 | v18))
      {
        disparityOutput = [(BWStillImageDisparitySplitterNode *)self disparityOutput];
      }

      else
      {
        disparityOutput = [(BWStillImageDisparitySplitterNode *)self processedOutput];
      }

      v24 = 0;
      v29 = disparityOutput;
LABEL_36:
      [outputs[v24] emitSampleBuffer:{buffer, v29}];
      return;
    }

    if ((v18 & 1) == 0)
    {
      numberOfOutputs = self->_numberOfOutputs;
      if (numberOfOutputs)
      {
        outputs = self->_outputs;
        v24 = numberOfOutputs - 1;
        if (numberOfOutputs != 1)
        {
          v25 = 0;
          do
          {
            sampleBufferOut = 0;
            BWCMSampleBufferCreateCopyIncludingMetadata(buffer, &sampleBufferOut);
            v26 = outputs[v25];
            if (v26 != [(BWStillImageDisparitySplitterNode *)self disparityOutput])
            {
              BWSampleBufferRemoveAttachedMedia(sampleBufferOut, 0x1F21AAB10);
            }

            [outputs[v25] emitSampleBuffer:sampleBufferOut];
            if (sampleBufferOut)
            {
              CFRelease(sampleBufferOut);
            }

            ++v25;
          }

          while (v24 != v25);
        }

        goto LABEL_36;
      }
    }
  }
}

@end