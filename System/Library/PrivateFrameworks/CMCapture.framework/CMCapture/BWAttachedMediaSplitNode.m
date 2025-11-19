@interface BWAttachedMediaSplitNode
- (BOOL)isOutputRenderingEnabledForAttachedMediaKey:(id)a3;
- (BWAttachedMediaSplitNode)initWithAttachedMediaKeys:(id)a3 attachedMediaToPropagateToPrimaryOutput:(id)a4;
- (void)dealloc;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setOutputRenderingEnabled:(BOOL)a3 forAttachedMediaKey:(id)a4;
@end

@implementation BWAttachedMediaSplitNode

- (BWAttachedMediaSplitNode)initWithAttachedMediaKeys:(id)a3 attachedMediaToPropagateToPrimaryOutput:(id)a4
{
  v6 = [a3 count];
  if (!v6)
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = @"The attachedMediaKeys array needs to have at least one element";
    goto LABEL_29;
  }

  if (![a4 count])
  {
    goto LABEL_5;
  }

  if (([a3 containsObject:@"PrimaryFormat"] & 1) == 0)
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = @"attachedMediaKeys does not specify Primary Media but attachedMediaToPropagateToPrimaryOutput has been provided";
    goto LABEL_29;
  }

  if ([a4 containsObject:@"PrimaryFormat"])
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = @"attachedMediaToPropagateToPrimaryOutput cannot specify primary media";
LABEL_29:
    objc_exception_throw([v29 exceptionWithName:v30 reason:v31 userInfo:0]);
  }

LABEL_5:
  v39.receiver = self;
  v39.super_class = BWAttachedMediaSplitNode;
  v7 = [(BWFanOutNode *)&v39 initWithFanOutCount:v6 mediaType:1986618469];
  v8 = v7;
  if (v7)
  {
    [(BWNode *)v7 setSupportsLiveReconfiguration:1];
    v9 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v9 setPassthroughMode:0];
    [(BWNodeInput *)v8->super.super._input setUnspecifiedAttachedMediaConfiguration:v9];
    v10 = a4;
    v32 = v6;
    if (v6 < 1)
    {
      goto LABEL_12;
    }

    v11 = 0;
    v12 = 0;
    v13 = v6 & 0x7FFFFFFF;
    do
    {
      v14 = [a3 objectAtIndexedSubscript:{v11, v32}];
      v15 = [(NSArray *)[(BWNode *)v8 outputs] objectAtIndexedSubscript:v11];
      [v15 setName:v14];
      v16 = v15;
      if (([v14 isEqualToString:@"PrimaryFormat"] & 1) == 0)
      {
        v17 = objc_alloc_init(BWNodeInputMediaConfiguration);
        [(BWNodeInput *)v8->super.super._input formatRequirements];
        [(BWNodeInputMediaConfiguration *)v17 setFormatRequirements:objc_alloc_init(objc_opt_class())];
        [(BWNodeInputMediaConfiguration *)v17 setPassthroughMode:1];
        [(BWNodeInput *)v8->super.super._input setMediaConfiguration:v17 forAttachedMediaKey:v14];
        v18 = [v15 primaryMediaConfiguration];
        [v18 setPassthroughMode:1];
        [v18 setAttachedMediaKeyOfInputWhichDrivesThisOutput:v14];
        v16 = v12;
      }

      v19 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      [(BWNodeOutputMediaConfiguration *)v19 setPassthroughMode:0];
      [v15 setUnspecifiedAttachedMediaConfiguration:v19];
      ++v11;
      v12 = v16;
    }

    while (v13 != v11);
    LODWORD(v6) = v32;
    a4 = v10;
    if (!v16)
    {
LABEL_12:
      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v8->super.super._input primaryMediaConfiguration] setPassthroughMode:0];
      v16 = 0;
    }

    v20 = 0x1E695D000;
    if ([a4 count])
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v21 = [a4 countByEnumeratingWithState:&v35 objects:v34 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v36;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v36 != v23)
            {
              objc_enumerationMutation(v10);
            }

            v25 = *(*(&v35 + 1) + 8 * i);
            if (![(BWNodeInput *)v8->super.super._input mediaConfigurationForAttachedMediaKey:v25])
            {
              v26 = objc_alloc_init(BWNodeInputMediaConfiguration);
              [(BWNodeInput *)v8->super.super._input formatRequirements];
              [(BWNodeInputMediaConfiguration *)v26 setFormatRequirements:objc_alloc_init(objc_opt_class())];
              [(BWNodeInputMediaConfiguration *)v26 setPassthroughMode:1];
              [(BWNodeInput *)v8->super.super._input setMediaConfiguration:v26 forAttachedMediaKey:v25];
            }

            v27 = objc_alloc_init(BWNodeOutputMediaConfiguration);
            [(BWNodeOutputMediaConfiguration *)v27 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
            [(BWNodeOutputMediaConfiguration *)v27 setPassthroughMode:1];
            [v16 setMediaConfiguration:v27 forAttachedMediaKey:v25];
          }

          a4 = v10;
          v22 = [v10 countByEnumeratingWithState:&v35 objects:v34 count:16];
        }

        while (v22);
      }

      v20 = 0x1E695D000uLL;
      v8->_attachedMediaToPropagateToPrimaryOutput = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:a4];
      LODWORD(v6) = v32;
    }

    v8->_attachedMediaKeys = [objc_alloc(*(v20 + 3784)) initWithArray:a3];
    v8->_attachedMediaFormatDescriptions = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8->_numOutputs = v6;
    v8->_disabledAttachedMediaKeys = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v6];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWAttachedMediaSplitNode;
  [(BWFanOutNode *)&v3 dealloc];
}

- (void)setOutputRenderingEnabled:(BOOL)a3 forAttachedMediaKey:(id)a4
{
  disabledAttachedMediaKeys = self->_disabledAttachedMediaKeys;
  if (a3)
  {
    [(NSMutableSet *)disabledAttachedMediaKeys removeObject:a4];
  }

  else
  {
    [(NSMutableSet *)disabledAttachedMediaKeys addObject:a4];
  }
}

- (BOOL)isOutputRenderingEnabledForAttachedMediaKey:(id)a3
{
  v5 = [(NSArray *)self->_attachedMediaKeys containsObject:?];
  if (v5)
  {
    LOBYTE(v5) = [(NSMutableSet *)self->_disabledAttachedMediaKeys containsObject:a3]^ 1;
  }

  return v5;
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(BWNode *)self outputs];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = [v13 attachedMediaKeyDrivenByInputAttachedMediaKey:a5 inputIndex:{objc_msgSend(a4, "index")}];
        if (v14)
        {
          v15 = v14;
          v16 = [v13 mediaPropertiesForAttachedMediaKey:v14];
          if (!v16)
          {
            v16 = objc_alloc_init(BWNodeOutputMediaProperties);
            [v13 _setMediaProperties:v16 forAttachedMediaKey:v15];
          }

          [(BWNodeOutputMediaProperties *)v16 setResolvedFormat:a3];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (!BWSampleBufferIsMarkerBuffer(a3))
  {
    v21 = BWSampleBufferCopyDictionaryOfAttachedMedia(a3);
    if (self->_numOutputs < 1)
    {
LABEL_35:

      return;
    }

    v9 = 0;
    v20 = 0x1F219C170;
    while (1)
    {
      v10 = [(NSArray *)self->_attachedMediaKeys objectAtIndexedSubscript:v9, v20];
      if ([v10 isEqualToString:@"PrimaryFormat"])
      {
        if (self->_attachedMediaToPropagateToPrimaryOutput)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v11 = [v21 allKeys];
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v23 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v24 + 1) + 8 * i);
                if (![(NSArray *)self->_attachedMediaToPropagateToPrimaryOutput containsObject:v16])
                {
                  BWSampleBufferRemoveAttachedMedia(a3, v16);
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v24 objects:v23 count:16];
            }

            while (v13);
          }
        }

        else
        {
          BWSampleBufferRemoveAllAttachedMedia(a3);
        }

        v17 = a3;
        if (!a3)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v17 = [v21 objectForKeyedSubscript:v10];
        if (!v17)
        {
          if (self->_emitsNodeErrorsForMissingAttachedMedia)
          {
            v18 = [BWNodeError newError:4294954513 sourceNode:self];
            [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self "outputs")];
          }

          if (self->_emitsDroppedSampleForMissingAttachedMedia)
          {
            CMSampleBufferGetPresentationTimeStamp(&sampleBufferOut, a3);
            v19 = [BWDroppedSample newDroppedSampleWithReason:v20 pts:&sampleBufferOut];
            [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self "outputs")];
          }

          goto LABEL_34;
        }
      }

      if (([(NSMutableSet *)self->_disabledAttachedMediaKeys containsObject:v10]& 1) == 0)
      {
        [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self "outputs")];
      }

LABEL_34:
      if (++v9 >= self->_numOutputs)
      {
        goto LABEL_35;
      }
    }
  }

  if (self->_numOutputs >= 1)
  {
    v6 = 0;
    v7 = *MEMORY[0x1E695E480];
    do
    {
      if (([(NSMutableSet *)self->_disabledAttachedMediaKeys containsObject:[(NSArray *)self->_attachedMediaKeys objectAtIndexedSubscript:v6]]& 1) == 0)
      {
        sampleBufferOut.value = 0;
        if (!CMSampleBufferCreateCopy(v7, a3, &sampleBufferOut))
        {
          v8 = [(NSArray *)[(BWNode *)self outputs] objectAtIndexedSubscript:v6];
          [v8 emitSampleBuffer:sampleBufferOut.value];
        }

        if (sampleBufferOut.value)
        {
          CFRelease(sampleBufferOut.value);
        }
      }

      ++v6;
    }

    while (v6 < self->_numOutputs);
  }
}

@end