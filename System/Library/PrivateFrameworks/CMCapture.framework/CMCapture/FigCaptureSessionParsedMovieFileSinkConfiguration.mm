@interface FigCaptureSessionParsedMovieFileSinkConfiguration
- (FigVideoCaptureConnectionConfiguration)primaryVideoConnectionConfiguration;
- (void)dealloc;
- (void)initWithCaptureConnectionConfigurations:(void *)a1 videoConnectionConfigurations:(void *)a2 stillImageConnectionConfiguration:(void *)a3 sceneClassifierConnectionConfigurationsBySourceID:(void *)a4;
@end

@implementation FigCaptureSessionParsedMovieFileSinkConfiguration

- (FigVideoCaptureConnectionConfiguration)primaryVideoConnectionConfiguration
{
  v2 = [(NSArray *)self->_videoConnectionConfigurations firstObject];

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedMovieFileSinkConfiguration;
  [(FigCaptureSessionParsedMovieFileSinkConfiguration *)&v3 dealloc];
}

- (void)initWithCaptureConnectionConfigurations:(void *)a1 videoConnectionConfigurations:(void *)a2 stillImageConnectionConfiguration:(void *)a3 sceneClassifierConnectionConfigurationsBySourceID:(void *)a4
{
  if (!a1)
  {
    return 0;
  }

  v32.receiver = a1;
  v32.super_class = FigCaptureSessionParsedMovieFileSinkConfiguration;
  v7 = objc_msgSendSuper2(&v32, sel_init);
  if (v7)
  {
    v24 = a4;
    v27 = [MEMORY[0x1E695DF70] array];
    v8 = a3;
    v25 = v7;
    v7[1] = v8;
    memset(v31, 0, sizeof(v31));
    v10 = OUTLINED_FUNCTION_1_0(v8, v9, v31, v30);
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
        objc_enumerationMutation(a2);
      }

      v15 = *(v31[0].super_class + v13);
      v16 = [v15 mediaType];
      if (v16 == 1685091432)
      {
        v18 = v29;
      }

      else
      {
        v18 = v12;
        if (v16 != 1936684398)
        {
          if (v16 != 1835365473)
          {
            goto LABEL_21;
          }

          v16 = [objc_msgSend(v15 "sourceConfiguration")];
          if (v16 != 1)
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
            [v27 addObject:v15];
          }

          v16 = [(__CFArray *)Identifiers containsObject:v28];
          if (!v16)
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

      v16 = v15;
      *v18 = v16;
LABEL_21:
      if (v11 == ++v13)
      {
        v11 = OUTLINED_FUNCTION_1_0(v16, v17, v31, v30);
        if (v11)
        {
          goto LABEL_5;
        }

LABEL_23:
        v7 = v25;
        v25[6] = v24;
        v20 = [v27 count];
        if (v20)
        {
          v20 = v27;
        }

        v25[4] = v20;
        [objc_msgSend(objc_msgSend(v25[1] "firstObject")];
        v21 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
        v22 = [v21 underlyingDeviceType];
        if (v22 == [objc_msgSend(v25[1] "firstObject")])
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