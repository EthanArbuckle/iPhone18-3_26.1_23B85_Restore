@interface BWDeepFusionProcessorInput
+ (id)inputForOnlyApplyingSemanticStyleWithSettings:(id)settings portType:(id)type;
- (BWDeepFusionProcessorInput)initWithSettings:(id)settings portType:(id)type processInferenceInputImage:(BOOL)image processQuadraForEnhancedResolutionInferenceInputImage:(BOOL)inputImage processSmartStyleRenderingInput:(BOOL)input;
- (id)description;
- (void)addBuffer:(__CVBuffer *)buffer metadata:(id)metadata bufferType:(unint64_t)type captureFrameFlags:(unint64_t)flags lscGainMap:(__CVBuffer *)map lscGainMapParameters:(id)parameters;
- (void)dealloc;
- (void)releaseInputPixelBuffers;
- (void)setEvZeroReferenceFramePTS:(id *)s;
@end

@implementation BWDeepFusionProcessorInput

- (BWDeepFusionProcessorInput)initWithSettings:(id)settings portType:(id)type processInferenceInputImage:(BOOL)image processQuadraForEnhancedResolutionInferenceInputImage:(BOOL)inputImage processSmartStyleRenderingInput:(BOOL)input
{
  v12.receiver = self;
  v12.super_class = BWDeepFusionProcessorInput;
  v10 = [(BWStillImageProcessorControllerInput *)&v12 initWithSettings:settings portType:type];
  if (v10)
  {
    v10->_inputBuffers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10->_processInferenceInputImage = image;
    v10->_processQuadraForEnhancedResolutionInferenceInputImage = inputImage;
    v10->_processSmartStyleRenderingInput = input;
  }

  return v10;
}

+ (id)inputForOnlyApplyingSemanticStyleWithSettings:(id)settings portType:(id)type
{
  v4 = [[BWDeepFusionProcessorInput alloc] initWithSettings:settings portType:type processInferenceInputImage:0 processQuadraForEnhancedResolutionInferenceInputImage:0 processSmartStyleRenderingInput:0];
  if (v4)
  {
    v4->_onlyApplyingSemanticStyle = 1;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeepFusionProcessorInput;
  [(BWStillImageProcessorControllerInput *)&v3 dealloc];
}

- (void)addBuffer:(__CVBuffer *)buffer metadata:(id)metadata bufferType:(unint64_t)type captureFrameFlags:(unint64_t)flags lscGainMap:(__CVBuffer *)map lscGainMapParameters:(id)parameters
{
  if (buffer)
  {
    if (type != 24)
    {
      inputBuffers = self->_inputBuffers;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __110__BWDeepFusionProcessorInput_addBuffer_metadata_bufferType_captureFrameFlags_lscGainMap_lscGainMapParameters___block_invoke;
      v18[3] = &__block_descriptor_40_e40_B32__0__BWDeepFusionInputBuffer_8Q16_B24l;
      v18[4] = type;
      v16 = [(NSMutableArray *)inputBuffers indexesOfObjectsPassingTest:v18];
      [(NSMutableArray *)self->_inputBuffers removeObjectsAtIndexes:v16];
      [v16 count];
    }

    v17 = [[BWDeepFusionInputBuffer alloc] initWithBuffer:buffer type:type captureFrameFlags:flags metadata:metadata lscGainMap:map lscGainMapParameters:parameters];
    [(NSMutableArray *)self->_inputBuffers addObject:v17];

    [(BWDeepFusionProcessorInputDelegate *)self->_delegate input:self addInputBuffer:v17];
  }

  else
  {
    [BWDeepFusionProcessorInput addBuffer:metadata:bufferType:captureFrameFlags:lscGainMap:lscGainMapParameters:];
  }
}

- (void)releaseInputPixelBuffers
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  inputBuffers = self->_inputBuffers;
  v3 = [(NSMutableArray *)inputBuffers countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(inputBuffers);
        }

        [*(*(&v8 + 1) + 8 * i) releasePixelBuffers];
      }

      v4 = [(NSMutableArray *)inputBuffers countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

- (id)description
{
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  inputBuffers = self->_inputBuffers;
  v5 = [(NSMutableArray *)inputBuffers countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(inputBuffers);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 type] == 24 || objc_msgSend(v10, "type") == 23 || objc_msgSend(v10, "type") == 25)
        {
          v7 = (v7 + 1);
        }

        type = [v10 type];
        if (type > 18)
        {
          if (type > 23)
          {
            switch(type)
            {
              case 24:
                v12 = array;
                v13 = @"EV0";
                goto LABEL_38;
              case 25:
                v12 = array;
                v13 = @"QuadraEV0";
                goto LABEL_38;
              case 27:
                v12 = array;
                v13 = @"EV-";
                goto LABEL_38;
            }
          }

          else
          {
            switch(type)
            {
              case 19:
                v12 = array;
                v13 = @"GainMap";
                goto LABEL_38;
              case 22:
                v12 = array;
                v13 = @"Long";
                goto LABEL_38;
              case 23:
                v12 = array;
                v13 = @"RefEV0";
                goto LABEL_38;
            }
          }
        }

        else if (type > 10)
        {
          switch(type)
          {
            case 11:
              v12 = array;
              v13 = @"SynthLongFusMap";
              goto LABEL_38;
            case 12:
              v12 = array;
              v13 = @"LongFusMap";
              goto LABEL_38;
            case 13:
              v12 = array;
              v13 = @"DeepFusion";
              goto LABEL_38;
          }
        }

        else
        {
          switch(type)
          {
            case 8:
              v12 = array;
              v13 = @"SynthRef";
              goto LABEL_38;
            case 9:
              v12 = array;
              v13 = @"SynthRefFusMap";
              goto LABEL_38;
            case 10:
              v12 = array;
              v13 = @"SynthLong";
              goto LABEL_38;
          }
        }

        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%llu)", objc_msgSend(v10, "type")];
        v12 = array;
LABEL_38:
        [v12 addObject:v13];
      }

      v6 = [(NSMutableArray *)inputBuffers countByEnumeratingWithState:&v19 objects:v18 count:16];
      if (!v6)
      {
        goto LABEL_42;
      }
    }
  }

  v7 = 0;
LABEL_42:
  [array sortUsingSelector:sel_compare_];
  v14 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  return [v14 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@ %@ : Buffer types: %@, evZeroCount:%d processInferenceInputImage:%d, onlyApplyingSemanticStyle:%d", v15, selfCopy, -[BWStillImageCaptureSettings settingsID](-[BWStillImageProcessorControllerInput captureSettings](selfCopy, "captureSettings"), "settingsID"), BWPhotoEncoderStringFromEncodingScheme(-[BWStillImageCaptureSettings captureType](-[BWStillImageProcessorControllerInput captureSettings](selfCopy, "captureSettings"), "captureType")), -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](selfCopy, "captureStreamSettings"), "portType"), objc_msgSend(array, "componentsJoinedByString:", @", "), v7, -[BWDeepFusionProcessorInput processInferenceInputImage](selfCopy, "processInferenceInputImage"), -[BWDeepFusionProcessorInput onlyApplyingSemanticStyle](selfCopy, "onlyApplyingSemanticStyle")];
}

- (void)setEvZeroReferenceFramePTS:(id *)s
{
  var3 = s->var3;
  *&self->_evZeroReferenceFramePTS.value = *&s->var0;
  self->_evZeroReferenceFramePTS.epoch = var3;
}

@end