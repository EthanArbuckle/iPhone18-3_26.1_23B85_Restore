@interface BWVideoProcessingInferenceAdapter
- (BWVideoProcessingInferenceProvider)_newInferenceProviderWithType:(uint64_t)type analysisType:(uint64_t)analysisType executionTarget:(void *)target configuration:(uint64_t)configuration preventionReasons:(uint64_t)reasons resourceProvider:(uint64_t)provider additionalCacheAttributes:;
- (id)inferenceProviderForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status;
- (uint64_t)_executionTargetForAnalysisType:(uint64_t)result;
@end

@implementation BWVideoProcessingInferenceAdapter

- (uint64_t)_executionTargetForAnalysisType:(uint64_t)result
{
  if (result)
  {
    if (a2 == 4)
    {
      return 4;
    }

    if (a2 <= 127)
    {
      if (((a2 - 8) > 0x38 || ((1 << (a2 - 8)) & 0x100000001000101) == 0) && a2 >= 3)
      {
        goto LABEL_19;
      }

LABEL_17:
      v2 = MEMORY[0x1E695DF30];
      v3 = *MEMORY[0x1E695D920];
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Analysis type %lu is not currently known to the BWInferenceEngine", a2];
      v5 = v2;
      v6 = v3;
      goto LABEL_18;
    }

    if (a2 <= 511)
    {
      if (a2 == 128 || a2 == 256)
      {
        goto LABEL_17;
      }
    }

    else if (a2 == 512 || a2 == 2048 || a2 == 1024)
    {
      goto LABEL_17;
    }

LABEL_19:
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v4 = @"BWInferenceEngine does not currently support the combination of multiple VCPCaptureAnalysisTypes";
LABEL_18:
    objc_exception_throw([v5 exceptionWithName:v6 reason:v4 userInfo:0]);
  }

  return result;
}

id __108__BWVideoProcessingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  v4 = [a2 width];
  v5 = [a2 height];
  v6 = v5;
  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  [(BWVideoFormatRequirements *)v3 setWidth:(580 * v4 / v7) & 0xFFFFFFFFFFFFFFFELL];
  [(BWVideoFormatRequirements *)v3 setHeight:(580 * v6 / v7) & 0xFFFFFFFFFFFFFFFELL];
  [(BWVideoFormatRequirements *)v3 setSupportedColorSpaceProperties:&unk_1F2248220];
  [(BWVideoFormatRequirements *)v3 setSupportedPixelFormats:&unk_1F2248238];
  v9 = v3;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1]);
}

- (id)inferenceProviderForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status
{
  v12 = [MEMORY[0x1E695DFD8] set];
  if (type == 2001)
  {
    v13 = v12;
    v14 = [(BWVideoProcessingInferenceAdapter *)self _executionTargetForAnalysisType:?];
    v15 = [(BWVideoProcessingInferenceAdapter *)self _newInferenceProviderWithType:4 analysisType:v14 executionTarget:configuration configuration:v13 preventionReasons:provider resourceProvider:0 additionalCacheAttributes:?];
    v16 = v15;
    if (v15)
    {
      [(BWVideoProcessingInferenceProvider *)v15 bindVideoInputFromAttachedMediaUsingKey:@"PrimaryFormat" preparedByAttachedMediaKey:@"PrimaryFormat" withVideoFormatProvider:&__block_literal_global_15];
      v20[0] = getVCPCaptureAnalysisSubjectMotionScoreKey();
      v20[1] = getVCPCaptureAnalysisMotionDivScoreKey();
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
      [(BWVideoProcessingInferenceProvider *)v16 bindOutputMetadataKeys:v17, v20[0]];
      v18 = 0;
    }

    else
    {
      v18 = -31702;
    }
  }

  else
  {
    v16 = 0;
    v18 = -31710;
  }

  if (status)
  {
    *status = v18;
  }

  return v16;
}

- (BWVideoProcessingInferenceProvider)_newInferenceProviderWithType:(uint64_t)type analysisType:(uint64_t)analysisType executionTarget:(void *)target configuration:(uint64_t)configuration preventionReasons:(uint64_t)reasons resourceProvider:(uint64_t)provider additionalCacheAttributes:
{
  if (!self)
  {
    return 0;
  }

  v16 = MEMORY[0x1E695DF90];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{a2, @"InferenceType"}];
  v17 = [v16 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v28, &v27, 1)}];
  v18 = v17;
  if (provider)
  {
    [v17 addEntriesFromDictionary:provider];
  }

  v19 = [(BWVisionInferenceAdapter *)self _generateInferenceProviderCacheKeyWithAttributes:v18];
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  shouldCacheInferenceProvider = [self shouldCacheInferenceProvider];
  if (a2 == 2001)
  {
    if (shouldCacheInferenceProvider)
    {
      v22 = [objc_msgSend(self "cachedInferenceProviderByCacheKey")];
      if (v22)
      {
        return v22;
      }
    }
  }

  v24 = -[BWVideoProcessingInferenceProvider initWithType:analysisType:executionTarget:schedulerPriority:preventionReasons:resourceProvider:]([BWVideoProcessingInferenceProvider alloc], "initWithType:analysisType:executionTarget:schedulerPriority:preventionReasons:resourceProvider:", a2, type, analysisType, [target priority], configuration, reasons);
  v23 = v24;
  if (v24)
  {
    [(BWVideoProcessingInferenceProvider *)v24 setCustomInferenceIdentifier:v20];
    shouldCacheInferenceProvider2 = [self shouldCacheInferenceProvider];
    if (a2 == 2001)
    {
      if (shouldCacheInferenceProvider2)
      {
        [objc_msgSend(self "cachedInferenceProviderByCacheKey")];
      }
    }
  }

  return v23;
}

@end