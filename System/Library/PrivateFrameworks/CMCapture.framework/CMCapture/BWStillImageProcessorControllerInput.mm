@interface BWStillImageProcessorControllerInput
- (BOOL)isMaster;
- (BWStillImageProcessorControllerInput)initWithSettings:(id)settings portType:(id)type;
- (id)description;
- (id)outputSampleBufferRouterForBufferType:(unint64_t)type;
- (void)addBypassedProcessorType:(unint64_t)type forBufferTypes:(id)types;
- (void)addOutputSampleBufferRouter:(id)router forBufferTypes:(id)types name:(id)name;
- (void)dealloc;
@end

@implementation BWStillImageProcessorControllerInput

- (BWStillImageProcessorControllerInput)initWithSettings:(id)settings portType:(id)type
{
  v10.receiver = self;
  v10.super_class = BWStillImageProcessorControllerInput;
  v6 = [(BWStillImageProcessorControllerInput *)&v10 init];
  if (v6)
  {
    v7 = [objc_msgSend(settings "captureSettings")];
    if (v7)
    {
      v8 = v7;
      v6->_settings = settings;
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
  portType = [(BWStillImageCaptureStreamSettings *)self->_captureStreamSettings portType];
  masterPortType = [(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_settings captureSettings] masterPortType];

  return [(NSString *)portType isEqualToString:masterPortType];
}

- (id)outputSampleBufferRouterForBufferType:(unint64_t)type
{
  v3 = -[NSMutableDictionary objectForKeyedSubscript:](self->_outputSampleBufferRoutersByBufferType, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:type]);

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  settingsID = [(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_settings captureSettings] settingsID];
  v6 = BWPhotoEncoderStringFromEncodingScheme([(BWStillImageCaptureStreamSettings *)self->_captureStreamSettings captureType]);
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, captureFlags=%@, %@, captureRequestIdentifier:%@, outputRouters:%lu, delegate:%p", v4, self, settingsID, v6, BWStillImageCaptureFrameFlagsToShortString(-[BWStillImageCaptureStreamSettings captureFlags](self->_captureStreamSettings, "captureFlags")), -[BWStillImageCaptureStreamSettings portType](self->_captureStreamSettings, "portType"), -[FigCaptureStillImageSettings captureRequestIdentifier](-[BWStillImageSettings requestedSettings](self->_settings, "requestedSettings"), "captureRequestIdentifier"), -[NSMutableDictionary count](self->_outputSampleBufferRoutersByBufferType, "count"), self->_delegate];
}

- (void)addOutputSampleBufferRouter:(id)router forBufferTypes:(id)types name:(id)name
{
  if (router)
  {
    if (types)
    {
      v9 = [types countByEnumeratingWithState:OUTLINED_FUNCTION_0_10() objects:? count:?];
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
            objc_enumerationMutation(types);
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

          v14 = [[BWStillImageProcessorControllerOutputRouter alloc] initWithOutputSampleBufferRouter:router name:name];
          [(NSMutableDictionary *)self->_outputSampleBufferRoutersByBufferType setObject:v14 forKeyedSubscript:v13];

          if (v10 == ++v12)
          {
            v10 = [types countByEnumeratingWithState:v16 objects:&v15 count:16];
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

- (void)addBypassedProcessorType:(unint64_t)type forBufferTypes:(id)types
{
  if (types)
  {
    v7 = [types countByEnumeratingWithState:OUTLINED_FUNCTION_0_10() objects:? count:?];
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
          objc_enumerationMutation(types);
        }

        v11 = *(v14 + 8 * v10);
        if (![v11 intValue])
        {
          break;
        }

        [-[NSMutableDictionary objectForKeyedSubscript:](self->_outputSampleBufferRoutersByBufferType objectForKeyedSubscript:{v11), "addBypassedProcessorType:", type}];
        if (v8 == ++v10)
        {
          v8 = [types countByEnumeratingWithState:v13 objects:&v12 count:16];
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