@interface BWStillImageDisparitySplitterNode
- (BWStillImageDisparitySplitterNode)init;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
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
    v4 = [(BWNodeInput *)v3 primaryMediaConfiguration];
    [(BWNodeInputMediaConfiguration *)v4 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    v5 = 1;
    [(BWNodeInputMediaConfiguration *)v4 setPassthroughMode:1];
    [(BWNode *)v2 addInput:v3];
    v6 = 0;
    v2->_outputs = malloc_type_malloc(0x10uLL, 0x80040B8603338uLL);
    v2->_numberOfOutputs = 2;
    do
    {
      v7 = v5;
      v8 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v2];
      v9 = [(BWNodeOutput *)v8 primaryMediaConfiguration];
      [(BWNodeOutputMediaConfiguration *)v9 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeOutputMediaConfiguration *)v9 setPassthroughMode:1];
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

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if ([a5 isEqualToString:@"PrimaryFormat"])
  {
    if (self->_numberOfOutputs)
    {
      v9 = 0;
      do
      {
        [self->_outputs[v9++] setFormat:a3];
      }

      while (v9 < self->_numberOfOutputs);
    }
  }

  else if ([a5 isEqualToString:0x1F21AAB10])
  {
    v10 = [(BWStillImageDisparitySplitterNode *)self disparityOutput];
    if (!-[BWNodeOutput attachedMediaKeyDrivenByInputAttachedMediaKey:inputIndex:](v10, "attachedMediaKeyDrivenByInputAttachedMediaKey:inputIndex:", a5, [a4 index]))
    {
      v11 = [(BWNodeOutput *)v10 mediaPropertiesForAttachedMediaKey:0];
      if (!v11)
      {
        v11 = objc_alloc_init(BWNodeOutputMediaProperties);
        [(BWNodeOutput *)v10 _setMediaProperties:v11 forAttachedMediaKey:0];
      }

      [(BWNodeOutputMediaProperties *)v11 setResolvedFormat:a3];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = BWStillImageDisparitySplitterNode;
    [(BWNode *)&v12 didSelectFormat:a3 forInput:a4 forAttachedMediaKey:a5];
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
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

- (void)didReachEndOfDataForInput:(id)a3
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

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  if (self->_numberOfOutputs)
  {
    v6 = 0;
    do
    {
      [self->_outputs[v6++] emitNodeError:{a3, a4}];
    }

    while (v6 < self->_numberOfOutputs);
  }
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  if (self->_numberOfOutputs)
  {
    v6 = 0;
    do
    {
      [self->_outputs[v6++] emitDroppedSample:{a3, a4}];
    }

    while (v6 < self->_numberOfOutputs);
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (a3)
  {
    v6 = CMGetAttachment(a3, @"BWStillImageCaptureSettings", 0);
    v7 = [v6 captureType];
    v8 = CMGetAttachment(a3, *off_1E798A3C8, 0);
    v9 = [v8 objectForKeyedSubscript:*off_1E798A830];
    v10 = [v8 objectForKeyedSubscript:*off_1E798B1B8];
    v11 = CMGetAttachment(a3, @"HasUnreliableBracketingMetadata", 0);
    v12 = [CMGetAttachment(a3 @"StillImageProcessingFlags"];
    v13 = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
    if ((v12 & 0x400) != 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v11 BOOLValue];
    v16 = v15;
    if (v7 == 3)
    {
      v18 = v9 && ([v9 doubleValue], v17 == 0.0) && objc_msgSend(v10, "intValue") > 0;
    }

    else if ((v12 & 0x400) != 0)
    {
      v18 = 0;
    }

    else
    {
      v18 = (v7 == 10) & ~v15 & ~v14;
    }

    v19 = [v6 captureFlags];
    v21 = v7 != 3 && v7 != 10;
    if ((v19 & 0x20000) == 0)
    {
      v21 = 1;
    }

    if (((v21 | v14) & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v19);
      outputs = &v29;
      if ((v27 & ~v16 | v18))
      {
        v28 = [(BWStillImageDisparitySplitterNode *)self disparityOutput];
      }

      else
      {
        v28 = [(BWStillImageDisparitySplitterNode *)self processedOutput];
      }

      v24 = 0;
      v29 = v28;
LABEL_36:
      [outputs[v24] emitSampleBuffer:{a3, v29}];
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
            BWCMSampleBufferCreateCopyIncludingMetadata(a3, &sampleBufferOut);
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