@interface BWStillImageProcessorControllerInput
- (BOOL)isMaster;
- (BWStillImageProcessorControllerInput)initWithSettings:(id)a3 portType:(id)a4;
- (id)description;
- (id)outputSampleBufferRouterForBufferType:(unint64_t)a3;
- (void)addBypassedProcessorType:(unint64_t)a3 forBufferTypes:(id)a4;
- (void)addOutputSampleBufferRouter:(id)a3 forBufferTypes:(id)a4 name:(id)a5;
- (void)dealloc;
@end

@implementation BWStillImageProcessorControllerInput

- (BWStillImageProcessorControllerInput)initWithSettings:(id)a3 portType:(id)a4
{
  v10.receiver = self;
  v10.super_class = BWStillImageProcessorControllerInput;
  v6 = [(BWStillImageProcessorControllerInput *)&v10 init];
  if (v6)
  {
    v7 = [objc_msgSend(a3 "captureSettings")];
    if (v7)
    {
      v8 = v7;
      v6->_settings = a3;
      v6->_captureStreamSettings = v8;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageProcessorControllerInput;
  [(BWStillImageProcessorControllerInput *)&v3 dealloc];
}

- (BOOL)isMaster
{
  v3 = [(BWStillImageCaptureStreamSettings *)self->_captureStreamSettings portType];
  v4 = [(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_settings captureSettings] masterPortType];

  return [(NSString *)v3 isEqualToString:v4];
}

- (id)outputSampleBufferRouterForBufferType:(unint64_t)a3
{
  v3 = -[NSMutableDictionary objectForKeyedSubscript:](self->_outputSampleBufferRoutersByBufferType, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3]);

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_settings captureSettings] settingsID];
  v6 = BWPhotoEncoderStringFromEncodingScheme([(BWStillImageCaptureStreamSettings *)self->_captureStreamSettings captureType]);
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, captureFlags=%@, %@, captureRequestIdentifier:%@, outputRouters:%lu, delegate:%p", v4, self, v5, v6, BWStillImageCaptureFrameFlagsToShortString(-[BWStillImageCaptureStreamSettings captureFlags](self->_captureStreamSettings, "captureFlags")), -[BWStillImageCaptureStreamSettings portType](self->_captureStreamSettings, "portType"), -[FigCaptureStillImageSettings captureRequestIdentifier](-[BWStillImageSettings requestedSettings](self->_settings, "requestedSettings"), "captureRequestIdentifier"), -[NSMutableDictionary count](self->_outputSampleBufferRoutersByBufferType, "count"), self->_delegate];
}

- (void)addOutputSampleBufferRouter:(id)a3 forBufferTypes:(id)a4 name:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      v9 = [a4 countByEnumeratingWithState:OUTLINED_FUNCTION_0_10() objects:? count:?];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(a4);
          }

          v13 = *(v17 + 8 * v12);
          if (![v13 intValue])
          {
            break;
          }

          if (!self->_outputSampleBufferRoutersByBufferType)
          {
            self->_outputSampleBufferRoutersByBufferType = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v14 = [[BWStillImageProcessorControllerOutputRouter alloc] initWithOutputSampleBufferRouter:a3 name:a5];
          [(NSMutableDictionary *)self->_outputSampleBufferRoutersByBufferType setObject:v14 forKeyedSubscript:v13];

          if (v10 == ++v12)
          {
            v10 = [a4 countByEnumeratingWithState:v16 objects:&v15 count:16];
            if (v10)
            {
              goto LABEL_5;
            }

            return;
          }
        }
      }
    }
  }
}

- (void)addBypassedProcessorType:(unint64_t)a3 forBufferTypes:(id)a4
{
  if (a4)
  {
    v7 = [a4 countByEnumeratingWithState:OUTLINED_FUNCTION_0_10() objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(a4);
        }

        v11 = *(v14 + 8 * v10);
        if (![v11 intValue])
        {
          break;
        }

        [-[NSMutableDictionary objectForKeyedSubscript:](self->_outputSampleBufferRoutersByBufferType objectForKeyedSubscript:{v11), "addBypassedProcessorType:", a3}];
        if (v8 == ++v10)
        {
          v8 = [a4 countByEnumeratingWithState:v13 objects:&v12 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          return;
        }
      }
    }
  }
}

@end