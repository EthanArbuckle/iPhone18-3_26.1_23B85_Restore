@interface BWPreviewHistogramNode
- (BWPreviewHistogramNode)init;
- (void)_emitISPLumaHistogramFromSampleBuffer:(uint64_t)a1;
- (void)_emitMSRHistogramFromSampleBuffer:(uint64_t)a1;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWPreviewHistogramNode

- (BWPreviewHistogramNode)init
{
  v8.receiver = self;
  v8.super_class = BWPreviewHistogramNode;
  v2 = [(BWNode *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *(&v2->super._requiresEndOfDataForConfigurationChanges + 1) = 1;
    *(&v2->super._requiresEndOfDataForConfigurationChanges + 3) = 1;
    v4 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v2];
    [(BWNodeInput *)v4 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNode *)v3 addInput:v4];
    v5 = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:v3];
    v7 = *off_1E798D150;
    -[BWNodeOutput setFormat:](v5, "setFormat:", +[BWMetadataObjectFormat formatWithMetadataIdentifiers:](BWMetadataObjectFormat, "formatWithMetadataIdentifiers:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1]));
    [(BWNode *)v3 addOutput:v5];
    [(BWNode *)v3 setSupportsLiveReconfiguration:1];
    [(BWNode *)v3 setSupportsPrepareWhileRunning:1];
  }

  return v3;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (*(&self->super._requiresEndOfDataForConfigurationChanges + 1))
  {
    [(BWPreviewHistogramNode *)self _emitMSRHistogramFromSampleBuffer:a3];
  }

  if (*(&self->super._requiresEndOfDataForConfigurationChanges + 2))
  {

    [(BWPreviewHistogramNode *)self _emitISPLumaHistogramFromSampleBuffer:a3];
  }
}

- (void)_emitMSRHistogramFromSampleBuffer:(uint64_t)a1
{
  if (a1)
  {
    v26 = 0;
    v3 = CMGetAttachment(target, *off_1E798A520, 0);
    if (v3)
    {
      v4 = v3;
      v5 = [v3 length] / 3uLL;
      if (v5 < [v4 length] && (v6 = objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", objc_msgSend(v4, "bytes"), v5)) != 0)
      {
        v14 = v6;
        OUTLINED_FUNCTION_2_106(v6, v7, v8, v9, v10, v11, v12, v13, v15, v17, v19, v21, v23, v24, v25);
        OUTLINED_FUNCTION_1_116(*MEMORY[0x1E695E480], &v26, v16, v18, v20, v22);
        if (v26)
        {
          CMSetAttachment(v26, *off_1E798A528, v14, 1u);
          [*(a1 + 16) emitSampleBuffer:v26];
          if (v26)
          {
            CFRelease(v26);
          }

          return;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
      }

      FigDebugAssert3();
    }
  }
}

- (void)_emitISPLumaHistogramFromSampleBuffer:(uint64_t)a1
{
  if (a1)
  {
    v3 = [CMGetAttachment(target *off_1E798A3C8];
    if (v3)
    {
      v4 = [v3 bytes];
      if (*v4 == 256)
      {
        if (*(a1 + 124) == 1)
        {
          v5 = 0;
          v6 = v4 + 2;
          do
          {
            *&v30[v5] = *v6 + *(v6 - 1);
            v5 += 4;
            v6 += 2;
          }

          while (v5 != 512);
          v7 = MEMORY[0x1E695DEF0];
          v8 = v30;
          v9 = 512;
        }

        else
        {
          v8 = v4 + 1;
          v7 = MEMORY[0x1E695DEF0];
          v9 = 1024;
        }

        v10 = [v7 dataWithBytes:v8 length:v9];
        targeta = 0;
        OUTLINED_FUNCTION_2_106(v10, v11, v12, v13, v14, v15, v16, v17, v18, v20, v22, v24, v26, v27, v28);
        OUTLINED_FUNCTION_1_116(*MEMORY[0x1E695E480], &targeta, v19, v21, v23, v25);
        if (targeta)
        {
          CMSetAttachment(targeta, *off_1E798A528, v10, 1u);
          [*(a1 + 16) emitSampleBuffer:targeta];
          if (targeta)
          {
            CFRelease(targeta);
          }
        }

        else
        {
          fig_log_get_emitter();
          FigDebugAssert3();
        }
      }
    }
  }
}

@end