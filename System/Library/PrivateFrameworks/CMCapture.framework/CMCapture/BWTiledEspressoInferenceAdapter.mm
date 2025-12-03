@interface BWTiledEspressoInferenceAdapter
- (BWTiledEspressoInferenceAdapter)init;
- (id)_generateInferenceProviderCacheKeyWithAttributes:(id)result;
- (id)_newInferenceProviderWithType:(uint64_t)type configuration:(uint64_t)configuration resourceProvider:(uint64_t)provider additionalCacheAttributes:;
- (id)inferenceProviderForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status;
- (void)dealloc;
@end

@implementation BWTiledEspressoInferenceAdapter

- (BWTiledEspressoInferenceAdapter)init
{
  v3.receiver = self;
  v3.super_class = BWTiledEspressoInferenceAdapter;
  return [(BWInferenceAdapter *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWTiledEspressoInferenceAdapter;
  [(BWInferenceAdapter *)&v2 dealloc];
}

id __106__BWTiledEspressoInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) inputSegmentationPortraitOrientationSupportEnabled];
  if (v1)
  {
    v2 = 512;
  }

  else
  {
    v2 = 384;
  }

  if (v1)
  {
    v3 = 384;
  }

  else
  {
    v3 = 512;
  }

  HIWORD(v5) = v2;
  LOWORD(v5) = v3;

  return [BWTiledEspressoInferenceProvider videoFormatWithPixelFormat:1278226536 size:v5];
}

id __106__BWTiledEspressoInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [a2 width];
  v4 = [v5 height];
  LODWORD(v5) = v4;
  v6 = *(a1 + 40);
  if (v6 != 0.0)
  {
    v7 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v3 | (v4 << 32), v6);
    v3 = v7;
    v5 = HIDWORD(v7);
  }

  [*(a1 + 32) mainImageDownscalingFactor];
  v9 = (v3 / v8);
  [*(a1 + 32) mainImageDownscalingFactor];
  LOWORD(v13) = v9;
  v11 = *(a1 + 44);

  HIWORD(v13) = (v5 / v10);
  return [BWTiledEspressoInferenceProvider videoFormatWithPixelFormat:1111970369 size:v13 appliesFinalCropRect:v11];
}

id __106__BWTiledEspressoInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [a2 width];
  v4 = [v5 height];
  LODWORD(v5) = v4;
  v6 = *(a1 + 40);
  if (v6 != 0.0)
  {
    v7 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v3 | (v4 << 32), v6);
    v3 = v7;
    v5 = HIDWORD(v7);
  }

  [*(a1 + 32) mainImageDownscalingFactor];
  v9 = (v3 / v8);
  [*(a1 + 32) mainImageDownscalingFactor];
  LOWORD(v12) = v9;

  HIWORD(v12) = (v5 / v10);
  return [BWTiledEspressoInferenceProvider videoFormatWithPixelFormat:1278226488 size:v12];
}

- (id)inferenceProviderForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status
{
  v10 = *&type;
  if ((type - 159) >= 2 && (type - 170) >= 2)
  {
    if (type == 107)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v13 = 0;
      v14 = -31701;
      if (!configuration || (isKindOfClass & 1) == 0)
      {
        goto LABEL_22;
      }

      v13 = [(BWTiledEspressoInferenceAdapter *)self _newInferenceProviderWithType:configuration configuration:provider resourceProvider:0 additionalCacheAttributes:?];
      if (!v13)
      {
        v14 = -31702;
        goto LABEL_22;
      }

      [configuration targetAspectRatio];
      v17 = v16;
      appliesFinalCropRect = [configuration appliesFinalCropRect];
      v19 = [BWInferenceLazyVideoRequirement alloc];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __106__BWTiledEspressoInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke;
      v33[3] = &unk_1E798F7E0;
      v33[4] = configuration;
      v20 = [(BWInferenceLazyVideoRequirement *)v19 initWithAttachedMediaKey:0x1F219E750 preparedByAttachedMediaKey:@"PrimaryFormat" videoFormatProvider:v33];
      if (v20)
      {
        v21 = v20;
        [v13 setInputAlphaVideoRequirement:v20];
        v22 = [BWInferenceLazyVideoRequirement alloc];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __106__BWTiledEspressoInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_2;
        v30[3] = &unk_1E7990C40;
        v31 = v17;
        v30[4] = configuration;
        v32 = appliesFinalCropRect;
        if ([(BWInferenceLazyVideoRequirement *)v22 initWithAttachedMediaKey:@"PrimaryFormat" preparedByAttachedMediaKey:@"PrimaryFormat" videoFormatProvider:v30])
        {
          [OUTLINED_FUNCTION_4() setInputImageVideoRequirement:?];
          v23 = [BWInferenceLazyVideoRequirement alloc];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __106__BWTiledEspressoInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_3;
          v28[3] = &unk_1E798F7B8;
          v29 = v17;
          v28[4] = configuration;
          v24 = [(BWInferenceLazyVideoRequirement *)v23 initWithAttachedMediaKey:0x1F21AABB0 preparedByAttachedMediaKey:@"PrimaryFormat" videoFormatProvider:v28];
          if (v24)
          {
            v25 = v24;
            [v13 setOutputAlphaVideoRequirement:v24];
            if ([configuration produceLowResPersonMaskClone])
            {
              v26 = [[BWInferenceCloneVideoRequirement alloc] initWithAttachedMediaKey:0x1F21AADF0 sourceVideoRequirement:v21];
              if (!v26)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v26 = 0;
            }

            [v13 setOutputLowResSegmentationCloneVideoRequirement:v26];
            [(BWVideoFormat *)[(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)v25 videoFormat] underlyingVideoFormat] formatDescription];
            [OUTLINED_FUNCTION_4() setOutputFormatDescription:?];
            [objc_msgSend(-[BWInferenceCloneVideoRequirement videoFormat](v26 "videoFormat")];
            [OUTLINED_FUNCTION_4() setOutputLowResSegmentationCloneFormatDescription:?];
            [v13 migrateVideoRequirementsToTiledHarness];
LABEL_21:
            v14 = 0;
            goto LABEL_22;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_33();
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_33();
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_33();
      }

      FigSignalErrorAtGM();
LABEL_30:
      v14 = -31784;
      goto LABEL_22;
    }

    v13 = 0;
    goto LABEL_21;
  }

  objc_opt_class();
  v12 = objc_opt_isKindOfClass();
  v13 = 0;
  v14 = -31701;
  if (configuration && (v12 & 1) != 0)
  {
    v13 = [(BWTiledEspressoInferenceAdapter *)self _newInferenceProviderWithType:v10 configuration:configuration resourceProvider:provider additionalCacheAttributes:0];
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = -31702;
    }
  }

LABEL_22:
  if (status)
  {
    *status = v14;
  }

  return v13;
}

- (id)_newInferenceProviderWithType:(uint64_t)type configuration:(uint64_t)configuration resourceProvider:(uint64_t)provider additionalCacheAttributes:
{
  if (!self)
  {
    return 0;
  }

  v8 = a2;
  v10 = MEMORY[0x1E695DF90];
  v26 = @"InferenceType";
  v27 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v11 = [v10 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v27, &v26, 1)}];
  v12 = v11;
  if (provider)
  {
    [v11 addEntriesFromDictionary:provider];
  }

  v13 = [(BWTiledEspressoInferenceAdapter *)self _generateInferenceProviderCacheKeyWithAttributes:v12];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v25.receiver = self;
  v25.super_class = BWTiledEspressoInferenceAdapter;
  v15 = objc_msgSendSuper2(&v25, sel_shouldCacheInferenceProvider);
  if (v8 == 107 && v15)
  {
    v24.receiver = self;
    v24.super_class = BWTiledEspressoInferenceAdapter;
    v16 = [objc_msgSendSuper2(&v24 cachedInferenceProviderByCacheKey)];
    if (v16)
    {
      return v16;
    }

    goto LABEL_14;
  }

  if ((v8 - 159) < 2)
  {
    v18 = BWDeepZoomInferenceProvider;
    goto LABEL_15;
  }

  if ((v8 - 170) >= 2)
  {
    if (v8 == 107)
    {
LABEL_14:
      v18 = BWLearnedMattingInferenceProvider;
      goto LABEL_15;
    }

    return 0;
  }

  v18 = BWLearnedNRInferenceProvider;
LABEL_15:
  v19 = [[v18 alloc] initWithConfiguration:type resourceProvider:configuration];
  v17 = v19;
  if (v19)
  {
    [v19 setCustomInferenceIdentifier:v14];
    v23.receiver = self;
    v23.super_class = BWTiledEspressoInferenceAdapter;
    v20 = objc_msgSendSuper2(&v23, sel_shouldCacheInferenceProvider);
    if (v8 == 107)
    {
      if (v20)
      {
        v22.receiver = self;
        v22.super_class = BWTiledEspressoInferenceAdapter;
        [objc_msgSendSuper2(&v22 cachedInferenceProviderByCacheKey)];
      }
    }
  }

  return v17;
}

- (id)_generateInferenceProviderCacheKeyWithAttributes:(id)result
{
  if (result)
  {
    v3 = [a2 count];
    if (v3)
    {
      array = [MEMORY[0x1E695DF70] array];
      v12 = OUTLINED_FUNCTION_11_2(array, v5, v6, v7, v8, v9, v10, v11, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, 0);
      if (v12)
      {
        v13 = v12;
        v14 = MEMORY[0];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (MEMORY[0] != v14)
            {
              objc_enumerationMutation(a2);
            }

            v16 = MEMORY[0x1E696AEC0];
            v26 = *(8 * i);
            v28 = [a2 objectForKeyedSubscript:v26];
            [v16 stringWithFormat:@"%@:%@"];
            v17 = [OUTLINED_FUNCTION_4() addObject:?];
          }

          v13 = OUTLINED_FUNCTION_11_2(v17, v18, v19, v20, v21, v22, v23, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
        }

        while (v13);
      }

      v3 = [array componentsJoinedByString:@"|"];
    }

    return v3;
  }

  return result;
}

@end