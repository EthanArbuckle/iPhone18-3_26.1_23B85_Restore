@interface FigCaptureMetadataSourcePipeline
- (uint64_t)_buildMetadataSourcePipeline:(void *)pipeline graph:;
- (uint64_t)appendSampleBuffer:(uint64_t)result;
- (uint64_t)output;
- (uint64_t)setMasterClock:(uint64_t)result;
- (uint64_t)sourceFormatDescription;
- (void)dealloc;
- (void)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(_DWORD *)name errorOut:;
@end

@implementation FigCaptureMetadataSourcePipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMetadataSourcePipeline;
  [(FigCaptureSourcePipeline *)&v3 dealloc];
}

- (void)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(_DWORD *)name errorOut:
{
  if (!self)
  {
    return 0;
  }

  v13.receiver = self;
  v13.super_class = FigCaptureMetadataSourcePipeline;
  v8 = objc_msgSendSuper2(&v13, sel_initWithGraph_name_sourceID_, configuration, graph, [objc_msgSend(a2 "sourceConfiguration")]);
  v9 = v8;
  if (v8)
  {
    if (a2)
    {
      v10 = [(FigCaptureMetadataSourcePipeline *)v8 _buildMetadataSourcePipeline:a2 graph:configuration];
      if (!v10)
      {
        return v9;
      }

      v12 = v10;
      fig_log_get_emitter();
      FigDebugAssert3();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v12 = 0;
    }

    if (name)
    {
      *name = v12;
    }

    return 0;
  }

  return v9;
}

- (uint64_t)_buildMetadataSourcePipeline:(void *)pipeline graph:
{
  if (result)
  {
    v5 = result;
    v10 = 0;
    if ([a2 sourceSubType] == 1)
    {
      v6 = -[BWMetadataSourceNode initWithFormatDescription:clock:]([BWMetadataSourceNode alloc], "initWithFormatDescription:clock:", [a2 formatDescription], objc_msgSend(a2, "clock"));
      v5[5] = v6;
      v9.receiver = v5;
      v9.super_class = FigCaptureMetadataSourcePipeline;
      if (objc_msgSendSuper2(&v9, sel_addNode_error_, v6, &v10))
      {
        v7 = [[BWSynchronizerNode alloc] initWithMediaType:1835365473];
        v5[6] = v7;
        v8.receiver = v5;
        v8.super_class = FigCaptureMetadataSourcePipeline;
        if (objc_msgSendSuper2(&v8, sel_addNode_error_, v7, &v10))
        {
          if ([a2 sourceSubType] == 1)
          {
            [v5[6] setSourceClock:{objc_msgSend(v5[5], "clock")}];
          }

          if ([pipeline connectOutput:objc_msgSend(v5[5] toInput:"output") pipelineStage:{objc_msgSend(v5[6], "input"), 0}])
          {
            goto LABEL_8;
          }

          fig_log_get_emitter();
          FigDebugAssert3();
          fig_log_get_emitter();
LABEL_10:
          result = FigSignalErrorAtGM();
          if (result)
          {
            return result;
          }

          goto LABEL_11;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
      }

      FigDebugAssert3();
LABEL_8:
      result = 0;
LABEL_11:
      if (v10)
      {
        return [v10 code];
      }

      return result;
    }

    fig_log_get_emitter();
    goto LABEL_10;
  }

  return result;
}

- (uint64_t)setMasterClock:(uint64_t)result
{
  if (result)
  {
    return [*(result + 48) setMasterClock:a2];
  }

  return result;
}

- (uint64_t)sourceFormatDescription
{
  if (!self)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v2 = *(self + 40);

  return [v2 formatDescription];
}

- (uint64_t)output
{
  if (result)
  {
    return [*(result + 48) output];
  }

  return result;
}

- (uint64_t)appendSampleBuffer:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v4 = *(v3 + 40);

      return [v4 appendMetadataSampleBuffer:a2];
    }
  }

  return result;
}

@end