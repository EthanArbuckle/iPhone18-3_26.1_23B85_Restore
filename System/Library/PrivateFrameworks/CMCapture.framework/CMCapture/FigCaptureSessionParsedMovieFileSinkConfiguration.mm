@interface FigCaptureSessionParsedMovieFileSinkConfiguration
- (FigVideoCaptureConnectionConfiguration)primaryVideoConnectionConfiguration;
- (void)dealloc;
- (void)initWithCaptureConnectionConfigurations:(void *)configurations videoConnectionConfigurations:(void *)connectionConfigurations stillImageConnectionConfiguration:(void *)configuration sceneClassifierConnectionConfigurationsBySourceID:(void *)d;
@end

@implementation FigCaptureSessionParsedMovieFileSinkConfiguration

- (FigVideoCaptureConnectionConfiguration)primaryVideoConnectionConfiguration
{
  firstObject = [(NSArray *)self->_videoConnectionConfigurations firstObject];

  return firstObject;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedMovieFileSinkConfiguration;
  [(FigCaptureSessionParsedMovieFileSinkConfiguration *)&v3 dealloc];
}

- (void)initWithCaptureConnectionConfigurations:(void *)configurations videoConnectionConfigurations:(void *)connectionConfigurations stillImageConnectionConfiguration:(void *)configuration sceneClassifierConnectionConfigurationsBySourceID:(void *)d
{
  if (!configurations)
  {
    return 0;
  }

  v32.receiver = configurations;
  v32.super_class = FigCaptureSessionParsedMovieFileSinkConfiguration;
  v7 = objc_msgSendSuper2(&v32, sel_init);
  if (v7)
  {
    dCopy = d;
    array = [MEMORY[0x1E695DF70] array];
    configurationCopy = configuration;
    v25 = v7;
    v7[1] = configurationCopy;
    memset(v31, 0, sizeof(v31));
    v10 = OUTLINED_FUNCTION_1_0(configurationCopy, v9, v31, v30);
    if (!v10)
    {
      goto LABEL_23;
    }

    v11 = v10;
    v26 = v7 + 3;
    v12 = v7 + 2;
    v28 = *MEMORY[0x1E6962900];
    v29 = v7 + 5;
LABEL_5:
    v13 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_6_30();
      if (!v14)
      {
        objc_enumerationMutation(connectionConfigurations);
      }

      v15 = *(v31[0].super_class + v13);
      mediaType = [v15 mediaType];
      if (mediaType == 1685091432)
      {
        v18 = v29;
      }

      else
      {
        v18 = v12;
        if (mediaType != 1936684398)
        {
          if (mediaType != 1835365473)
          {
            goto LABEL_21;
          }

          mediaType = [objc_msgSend(v15 "sourceConfiguration")];
          if (mediaType != 1)
          {
            goto LABEL_21;
          }

          if (![v15 formatDescription] || (Identifiers = CMMetadataFormatDescriptionGetIdentifiers(objc_msgSend(v15, "formatDescription")), !-[__CFArray count](Identifiers, "count")))
          {
LABEL_28:
            OUTLINED_FUNCTION_9_19();
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_45();
            FigDebugAssert3();
            OUTLINED_FUNCTION_9_19();
            fig_log_get_emitter();
            FigSignalErrorAtGM();

            return 0;
          }

          if (FigMetadataItemConnectionConfigurationRequiresObjectDetection(v15))
          {
            [array addObject:v15];
          }

          mediaType = [(__CFArray *)Identifiers containsObject:v28];
          if (!mediaType)
          {
            goto LABEL_21;
          }

          v18 = v26;
          if (*v26)
          {
            goto LABEL_28;
          }
        }
      }

      mediaType = v15;
      *v18 = mediaType;
LABEL_21:
      if (v11 == ++v13)
      {
        v11 = OUTLINED_FUNCTION_1_0(mediaType, v17, v31, v30);
        if (v11)
        {
          goto LABEL_5;
        }

LABEL_23:
        v7 = v25;
        v25[6] = dCopy;
        v20 = [array count];
        if (v20)
        {
          v20 = array;
        }

        v25[4] = v20;
        [objc_msgSend(objc_msgSend(v25[1] "firstObject")];
        v21 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
        underlyingDeviceType = [v21 underlyingDeviceType];
        if (underlyingDeviceType == [objc_msgSend(v25[1] "firstObject")])
        {
          v25[7] = v21;
        }

        return v7;
      }
    }
  }

  return v7;
}

@end