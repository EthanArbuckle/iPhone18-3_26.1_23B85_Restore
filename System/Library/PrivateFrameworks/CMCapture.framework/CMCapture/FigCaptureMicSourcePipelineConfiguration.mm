@interface FigCaptureMicSourcePipelineConfiguration
- (__n128)setClientAuditToken:(uint64_t)token;
- (uint64_t)setAudioOnlyRecordingSession:(uint64_t)result;
- (uint64_t)setClientOSVersionSupportsDecoupledIO:(uint64_t)result;
- (uint64_t)setClientSDKVersionToken:(uint64_t)result;
- (uint64_t)setConfiguresAppAudioSession:(uint64_t)result;
- (void)dealloc;
- (void)micConnectionConfigurationsForMicSourcePosition:(uint64_t)position;
- (void)setRemoteIOOutputFormat:(void *)format;
@end

@implementation FigCaptureMicSourcePipelineConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMicSourcePipelineConfiguration;
  [(FigCaptureMicSourcePipelineConfiguration *)&v3 dealloc];
}

- (void)micConnectionConfigurationsForMicSourcePosition:(uint64_t)position
{
  if (!position)
  {
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v5 = *(position + 16);
  v13 = OUTLINED_FUNCTION_0_0(array, v6, v7, v8, v9, v10, v11, v12, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, 0);
  if (v13)
  {
    v14 = v13;
    v15 = MEMORY[0];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (MEMORY[0] != v15)
        {
          objc_enumerationMutation(v5);
        }

        v17 = *(8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          isKindOfClass = [v17 builtInMicrophonePosition];
          if (isKindOfClass == a2)
          {
            isKindOfClass = [array addObject:v17];
          }
        }
      }

      v14 = OUTLINED_FUNCTION_0_0(isKindOfClass, v19, v20, v21, v22, v23, v24, v25, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v59);
    }

    while (v14);
  }

  return array;
}

- (uint64_t)setConfiguresAppAudioSession:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

- (uint64_t)setClientSDKVersionToken:(uint64_t)result
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

- (uint64_t)setClientOSVersionSupportsDecoupledIO:(uint64_t)result
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

- (__n128)setClientAuditToken:(uint64_t)token
{
  if (token)
  {
    result = *a2;
    *(token + 92) = *(a2 + 16);
    *(token + 76) = result;
  }

  return result;
}

- (uint64_t)setAudioOnlyRecordingSession:(uint64_t)result
{
  if (result)
  {
    *(result + 108) = a2;
  }

  return result;
}

- (void)setRemoteIOOutputFormat:(void *)format
{
  if (format)
  {
    objc_setProperty_nonatomic(format, newValue, newValue, 112);
  }
}

@end