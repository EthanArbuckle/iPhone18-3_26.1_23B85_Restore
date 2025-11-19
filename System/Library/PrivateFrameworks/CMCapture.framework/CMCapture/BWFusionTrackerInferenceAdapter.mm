@interface BWFusionTrackerInferenceAdapter
- (id)_inferenceProvidersForTrackingOperation:(void *)a3 meanPixelCalculator:(void *)a4 inputVideoRequirement:(void *)a5 inOutOrderBufferRequirement:(void *)a6 configuration:(void *)a7 resourceProvider:;
- (id)inferenceProvidersForType:(int)a3 version:(id)a4 configuration:(id)a5 resourceProvider:(id)a6 status:(int *)a7;
@end

@implementation BWFusionTrackerInferenceAdapter

id __107__BWFusionTrackerInferenceAdapter_inferenceProvidersForType_version_configuration_resourceProvider_status___block_invoke(uint64_t a1, void *a2)
{
  v4 = [[BWInferenceVideoFormatRequirements alloc] initWithFormat:a2];
  v5 = [a2 width] / *(a1 + 32);
  v6 = [a2 height];
  v7 = *(a1 + 40);
  if (v5 <= (v6 / v7))
  {
    v5 = v6 / v7;
  }

  -[BWVideoFormatRequirements setWidth:](v4, "setWidth:", vcvtps_u32_f32([a2 width] / v5));
  -[BWVideoFormatRequirements setHeight:](v4, "setHeight:", vcvtps_u32_f32([a2 height] / v5));
  [(BWVideoFormatRequirements *)v4 setSupportedColorSpaceProperties:&unk_1F22487D8];
  [(BWVideoFormatRequirements *)v4 setSupportedPixelFormats:&unk_1F22487F0];
  [(BWInferenceVideoFormatRequirements *)v4 setIncludesInvalidContent:0];
  v9 = v4;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1]);
}

- (id)_inferenceProvidersForTrackingOperation:(void *)a3 meanPixelCalculator:(void *)a4 inputVideoRequirement:(void *)a5 inOutOrderBufferRequirement:(void *)a6 configuration:(void *)a7 resourceProvider:
{
  if (!result)
  {
    return result;
  }

  if (a5)
  {
    v12 = *a5;
    if (*a5)
    {
      v13 = 0;
    }

    else
    {
      v13 = a5;
    }

    v48 = v13;
  }

  else
  {
    v48 = 0;
    v12 = 0;
  }

  v14 = [a7 espressoContextForExecutionTarget:3];
  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a2 == 3)
  {
    v16 = [getFTTapToBoxClass() networkDescriptor];
    v17 = [objc_msgSend(v16 "inputImages")];
  }

  else
  {
    if (a2 == 2)
    {
      v15 = [getFTCinematicTrackerClass() highPriorityInstanceNetworkDescriptor];
    }

    else
    {
      if (a2 != 1)
      {
        v18 = 0;
        v16 = 0;
        goto LABEL_17;
      }

      v15 = [getFTCinematicTrackerClass() highPriorityExemplarNetworkDescriptor];
    }

    v16 = v15;
    v17 = [v15 onlyImageInput];
  }

  v18 = v17;
LABEL_17:
  v19 = [[BWInferenceFusionTrackerScalingProvider alloc] initWithInputRequirement:a4 orderBufferRequirement:v12 descriptor:v18 resourceProvider:a7 meanPixelCalculator:a3 operation:a2];
  v20 = +[BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:embedPlatformOrDeviceID:](BWEspressoInferenceAdapter, "espressoNetworkURLForPlatformedResourceBaseName:embedPlatformOrDeviceID:", [v16 name], 1);
  v21 = [BWFusionTrackerEspressoInferenceProvider alloc];
  v22 = [a6 priority];
  LOBYTE(v46) = 0;
  LODWORD(v45) = 0;
  v23 = -[BWEspressoInferenceProvider initWithType:networkURL:networkConfiguration:context:executionTarget:schedulerPriority:preventionReasons:resourceProvider:allowedCompressionDirection:concurrentSubmissionLimit:updateMetadataWithCropRect:](v21, "initWithType:networkURL:networkConfiguration:context:executionTarget:schedulerPriority:preventionReasons:resourceProvider:allowedCompressionDirection:concurrentSubmissionLimit:updateMetadataWithCropRect:", 150, v20, 0, v14, 3, v22, [MEMORY[0x1E695DFD8] set], a7, v45, 1, v46);
  [(BWFusionTrackerEspressoInferenceProvider *)v23 setOperation:a2];
  v24 = [objc_msgSend(v19 "outputVideoRequirements")];
  v47 = -[BWEspressoInferenceProvider bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:](v23, "bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:", [v18 name], objc_msgSend(v24, "attachedMediaKey"), objc_msgSend(v24, "videoFormat"));
  v49 = a2;
  if (a2 == 3)
  {
    v32 = [objc_msgSend(v16 "inputImages")];
    v33 = objc_alloc_init(BWInferenceVideoFormatRequirements);
    [v32 size];
    [(BWVideoFormatRequirements *)v33 setWidth:v34];
    [v32 size];
    [(BWVideoFormatRequirements *)v33 setHeight:v35];
    v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v32, "pixelFormat")}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v33, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1]);
    [(BWVideoFormatRequirements *)v33 setBytesPerRowAlignment:64];
    v56 = v33;
    -[BWEspressoInferenceProvider bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:](v23, "bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:", [v32 name], @"PrimaryFormat", +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v56, 1)));
  }

  else if (a2 == 2)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v25 = [v16 inputReferences];
    v26 = [v25 countByEnumeratingWithState:&v60 objects:v59 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v61;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v61 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v60 + 1) + 8 * i);
          v31 = [v30 destinationInputName];
          v58 = [v30 sourceOutputName];
          -[BWEspressoInferenceProvider bindEspressoInput:fromMetadataUsingKeys:](v23, "bindEspressoInput:fromMetadataUsingKeys:", v31, [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1]);
        }

        v27 = [v25 countByEnumeratingWithState:&v60 objects:v59 count:16];
      }

      while (v27);
    }
  }

  v36 = v23;
  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v38 = v16;
  v39 = [v16 outputNames];
  v40 = [v39 countByEnumeratingWithState:&v52 objects:v51 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v53;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(v39);
        }

        [v37 setObject:-[BWEspressoInferenceProvider bindEspressoOutput:asMetadataUsingKey:](v36 forKeyedSubscript:{"bindEspressoOutput:asMetadataUsingKey:", *(*(&v52 + 1) + 8 * j), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"BWInferenceFusionTrackerOutput_%@_%@", objc_msgSend(v38, "name"), *(*(&v52 + 1) + 8 * j))), *(*(&v52 + 1) + 8 * j)}];
      }

      v41 = [v39 countByEnumeratingWithState:&v52 objects:v51 count:16];
    }

    while (v41);
  }

  if (v48)
  {
    *v48 = -[BWEspressoInferenceProvider bindOutputByCloningInputRequirement:toAttachedMediaUsingKey:](v36, "bindOutputByCloningInputRequirement:toAttachedMediaUsingKey:", v47, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_OrderingClone", objc_msgSend(v47, "attachedMediaKey")]);
  }

  v44 = [[BWFusionTrackerInferencePropagator alloc] initWithInputVideoRequirement:v47 outputTensorRequirements:v37 operation:v49];

  [(BWEspressoInferenceProvider *)v36 setPropagatable:v44];
  [v50 addObject:v19];

  [v50 addObject:v36];
  return v50;
}

- (id)inferenceProvidersForType:(int)a3 version:(id)a4 configuration:(id)a5 resourceProvider:(id)a6 status:(int *)a7
{
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v44[0] = [getFTTapToBoxClass() networkDescriptor];
  v44[1] = [getFTCinematicTrackerClass() highPriorityExemplarNetworkDescriptor];
  v44[2] = [getFTCinematicTrackerClass() highPriorityInstanceNetworkDescriptor];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v45 count:16];
  if (v13)
  {
    v16 = v13;
    v38 = self;
    v39 = a5;
    v40 = v11;
    v41 = a7;
    v17 = 0;
    v18 = 0;
    v19 = *v47;
    v20 = 0x7FFFFFFFLL;
    v21 = 0x7FFFFFFFLL;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v47 != v19)
        {
          objc_enumerationMutation(v12);
        }

        v23 = *(*(&v46 + 1) + 8 * i);
        if ([objc_msgSend(v23 inputImages] == 1)
        {
          v24 = [v23 onlyImageInput];
        }

        else
        {
          v24 = [objc_msgSend(v23 "inputImages")];
        }

        v25 = v24;
        [v24 size];
        if (v26 < v21)
        {
          [v25 size];
          v21 = v27;
        }

        [v25 size];
        if (v28 < v20)
        {
          [v25 size];
          v20 = v29;
        }

        [v25 size];
        if (v30 > v17)
        {
          [v25 size];
          v17 = v31;
        }

        [v25 size];
        if (v32 > v18)
        {
          [v25 size];
          v18 = v33;
        }
      }

      v16 = [v12 countByEnumeratingWithState:&v46 objects:v45 count:16];
    }

    while (v16);
    v15 = 4 * v21;
    v14 = 4 * v20;
    v11 = v40;
    a7 = v41;
    self = v38;
    a5 = v39;
  }

  else
  {
    v14 = 0x1FFFFFFFCLL;
    v15 = 0x1FFFFFFFCLL;
  }

  v34 = [BWInferenceLazyVideoRequirement alloc];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __107__BWFusionTrackerInferenceAdapter_inferenceProvidersForType_version_configuration_resourceProvider_status___block_invoke;
  v43[3] = &__block_descriptor_48_e56___BWInferenceVideoFormat_16__0__BWInferenceVideoFormat_8l;
  v43[4] = v15;
  v43[5] = v14;
  v35 = [(BWInferenceLazyVideoRequirement *)v34 initWithAttachedMediaKey:@"PrimaryFormat" preparedByAttachedMediaKey:@"PrimaryFormat" videoFormatProvider:v43];
  v36 = -[BWInferenceFusionTrackerMeanPixelCalculator initWithCommandQueue:]([BWInferenceFusionTrackerMeanPixelCalculator alloc], "initWithCommandQueue:", [objc_msgSend(a6 "defaultDeviceMetalContext")]);
  v42 = 0;
  [(BWFusionTrackerInferenceAdapter *)self _inferenceProvidersForTrackingOperation:0 meanPixelCalculator:v35 inputVideoRequirement:&v42 inOutOrderBufferRequirement:a5 configuration:a6 resourceProvider:?];
  [OUTLINED_FUNCTION_28() addObjectsFromArray:?];
  [(BWFusionTrackerInferenceAdapter *)self _inferenceProvidersForTrackingOperation:v36 meanPixelCalculator:v35 inputVideoRequirement:&v42 inOutOrderBufferRequirement:a5 configuration:a6 resourceProvider:?];
  [OUTLINED_FUNCTION_28() addObjectsFromArray:?];
  [(BWFusionTrackerInferenceAdapter *)self _inferenceProvidersForTrackingOperation:v36 meanPixelCalculator:v35 inputVideoRequirement:0 inOutOrderBufferRequirement:a5 configuration:a6 resourceProvider:?];
  [OUTLINED_FUNCTION_28() addObjectsFromArray:?];

  *a7 = 0;
  return v11;
}

@end