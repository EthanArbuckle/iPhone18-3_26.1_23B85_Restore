@interface EGStillImagePiecemealEncodingNode
- (EGStillImagePiecemealEncodingNode)initWithName:(id)a3 stillImageSettings:(id)a4 resourceCoordinator:(id)a5 portType:(id)a6 mode:(int)a7 delegate:(id)a8;
- (uint64_t)_getAttachedMediaToEncodeByKeyFromSampleBuffer:(uint64_t)result;
- (void)dealloc;
- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4;
@end

@implementation EGStillImagePiecemealEncodingNode

- (EGStillImagePiecemealEncodingNode)initWithName:(id)a3 stillImageSettings:(id)a4 resourceCoordinator:(id)a5 portType:(id)a6 mode:(int)a7 delegate:(id)a8
{
  v18.receiver = self;
  v18.super_class = EGStillImagePiecemealEncodingNode;
  v12 = [(EGStillImageProcessorControllerDelegateNode *)&v18 initWithName:a3 delegate:a8];
  if (v12)
  {
    v12->_stillImageSettings = a4;
    v12->_resourceCoordinator = a5;
    v12->_portType = a6;
    v12->_mode = a7;
    v13 = [[EGInputGroup alloc] initWithName:@"mainGroup"];
    v14 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v12->_processorInput = v14;
    [(EGInputGroup *)v13 installInput:v14];
    v15 = +[EGStillImageProcessorControllerDelegateNode newSbufInput];
    v12->_sbufInput = v15;
    [(EGInputGroup *)v13 installInput:v15];
    [(EGNode *)v12 installInputGroup:v13];
    v16 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"encodingComplete"];
    v12->_encodingCompleteOutput = v16;
    [(EGNode *)v12 installOutput:v16];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImagePiecemealEncodingNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4
{
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](self->_processorInput, "name", a3, a4)), "processorController"}];
  if (!v6)
  {
    goto LABEL_16;
  }

  v20 = self;
  v21 = [v6 inputForStillImageSettings:self->_stillImageSettings portType:self->_portType portraitAdjustedImage:0 optionalSampleBuffer:0 forEarlyEncoding:1];
  if (v21)
  {
    v7 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](self->_sbufInput, "name")), "sampleBuffer"}];
    if (v7)
    {
      v8 = v7;
      v9 = [(EGStillImagePiecemealEncodingNode *)self _getAttachedMediaToEncodeByKeyFromSampleBuffer:v7];
      if ([v9 count])
      {
        v10 = CMGetAttachment(v8, *off_1E798A3C8, 0);
        v11 = BWStillImageProcessingFlagsForSampleBuffer(v8);
        v12 = [MEMORY[0x1E695DF70] array];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v13 = [v9 allKeys];
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v24;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v24 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v23 + 1) + 8 * i);
              v19 = [v9 objectForKeyedSubscript:v18];
              if (BWPhotonicEngineUtilitiesSampleBufferEligibleForPiecemealEncoding(v19))
              {
                [v21 addSbufForPiecemealEncoding:v19 attachedMediakey:v18 primaryImageMetadata:v10 processingFlags:v11];
                [v12 addObject:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v23 objects:v22 count:16];
          }

          while (v15);
        }
      }

      goto LABEL_14;
    }

LABEL_16:
    [EGStillImageInferenceMergingNode queueManagedReceiveData:? fromInputGroup:?];
    return;
  }

LABEL_14:
  [EGStillImagePiecemealEncodingNode queueManagedReceiveData:v20 fromInputGroup:?];
}

- (uint64_t)_getAttachedMediaToEncodeByKeyFromSampleBuffer:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 160);
    if (v4 == 1)
    {
      v5 = BWPhotoEncoderSmartStylesAttachedMediaKeysForPiecemealEncoding(*(result + 136));
      v6 = *(v3 + 144);

      return [v6 attachedMediaFromInferencesOrSampleBuffer:a2 attachedMediaKeys:v5];
    }

    else if (v4)
    {
      return 0;
    }

    else
    {
      result = BWSampleBufferGetAttachedMedia(a2, 0x1F217BF50);
      if (result)
      {
        v7 = 0x1F217BF50;
        v8 = result;
        return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      }
    }
  }

  return result;
}

@end