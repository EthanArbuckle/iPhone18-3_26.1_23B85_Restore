@interface BWMattingInferenceAdapter
- (BWMattingInferenceAdapter)init;
- (id)_newInferenceProviderWithType:(uint64_t)a3 configuration:(unsigned __int16)a4 version:(uint64_t)a5 additionalCacheAttributes:;
- (id)inferenceProviderForType:(int)a3 version:(id)a4 configuration:(id)a5 resourceProvider:(id)a6 statusOut:(int *)a7;
- (void)dealloc;
@end

@implementation BWMattingInferenceAdapter

- (BWMattingInferenceAdapter)init
{
  v3.receiver = self;
  v3.super_class = BWMattingInferenceAdapter;
  return [(BWInferenceAdapter *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWMattingInferenceAdapter;
  [(BWInferenceAdapter *)&v2 dealloc];
}

id __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v4, "setWidth:", ([a2 width] / *(a1 + 32)));
  -[BWVideoFormatRequirements setHeight:](v4, "setHeight:", ([a2 height] / *(a1 + 32)));
  [(BWVideoFormatRequirements *)v4 setSupportedPixelFormats:&unk_1F224A170];
  [(BWInferenceVideoFormatRequirements *)v4 setDeviceOriented:0];
  v6 = v4;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
}

id __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v3, "setWidth:", [a2 width]);
  -[BWVideoFormatRequirements setHeight:](v3, "setHeight:", [a2 height]);
  [(BWVideoFormatRequirements *)v3 setSupportedPixelFormats:&unk_1F224A188];
  [(BWInferenceVideoFormatRequirements *)v3 setDeviceOriented:0];
  v5 = v3;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1]);
}

id __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v3, "setWidth:", [a2 width]);
  -[BWVideoFormatRequirements setHeight:](v3, "setHeight:", [a2 height]);
  [(BWVideoFormatRequirements *)v3 setSupportedPixelFormats:&unk_1F224A1A0];
  [(BWInferenceVideoFormatRequirements *)v3 setDeviceOriented:0];
  v5 = v3;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1]);
}

id __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_37(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v4, "setWidth:", ([a2 width] / *(a1 + 32)));
  -[BWVideoFormatRequirements setHeight:](v4, "setHeight:", ([a2 height] / *(a1 + 32)));
  [(BWVideoFormatRequirements *)v4 setSupportedPixelFormats:&unk_1F224A1B8];
  [(BWInferenceVideoFormatRequirements *)v4 setDeviceOriented:0];
  [(BWVideoFormatRequirements *)v4 setBytesPerRowAlignment:64];
  [(BWVideoFormatRequirements *)v4 setWidthAlignment:16];
  [(BWVideoFormatRequirements *)v4 setHeightAlignment:16];
  [(BWVideoFormatRequirements *)v4 setPlaneAlignment:64];
  [(BWVideoFormatRequirements *)v4 setMemoryPoolUseAllowed:0];
  v6 = v4;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
}

id __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_46(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v4, "setWidth:", ([a2 width] / *(a1 + 32)));
  -[BWVideoFormatRequirements setHeight:](v4, "setHeight:", ([a2 height] / *(a1 + 32)));
  [(BWVideoFormatRequirements *)v4 setSupportedPixelFormats:&unk_1F224A1D0];
  [(BWInferenceVideoFormatRequirements *)v4 setDeviceOriented:0];
  [(BWVideoFormatRequirements *)v4 setBytesPerRowAlignment:64];
  v6 = v4;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
}

id __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  v4 = [a2 width];
  v5 = [a2 height];
  LODWORD(a2) = v5;
  v7 = *(a1 + 40);
  if (v7 != 0.0)
  {
    v8 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v4 | (v5 << 32), v7);
    v4 = v8;
    a2 = HIDWORD(v8);
  }

  [*(a1 + 32) mainImageDownscalingFactor];
  [(BWVideoFormatRequirements *)v3 setWidth:(v4 / v9)];
  [*(a1 + 32) mainImageDownscalingFactor];
  [(BWVideoFormatRequirements *)v3 setHeight:(a2 / v10)];
  if (([(BWVideoFormatRequirements *)v3 width]& 1) != 0 || ([(BWVideoFormatRequirements *)v3 width]& 1) != 0)
  {
    [(BWVideoFormatRequirements *)v3 setWidth:2 * llroundf(vcvts_n_f32_u64([(BWVideoFormatRequirements *)v3 width], 1uLL))];
    [(BWVideoFormatRequirements *)v3 setHeight:2 * llroundf(vcvts_n_f32_u64([(BWVideoFormatRequirements *)v3 height], 1uLL))];
  }

  if (*(a1 + 44) == 1)
  {
    v11 = [BWInferenceFinalRectCropDescriptor finalCropRectDescriptorWithName:@"Matting"];
  }

  else
  {
    v11 = 0;
  }

  [(BWInferenceVideoFormatRequirements *)v3 setCropDescriptor:v11];
  [(BWVideoFormatRequirements *)v3 setSupportedPixelFormats:&unk_1F224A1E8];
  [(BWInferenceVideoFormatRequirements *)v3 setDeviceOriented:0];
  v13 = v3;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1]);
}

id __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_60(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v3, "setWidth:", [a2 width]);
  -[BWVideoFormatRequirements setHeight:](v3, "setHeight:", [a2 height]);
  [(BWVideoFormatRequirements *)v3 setSupportedPixelFormats:&unk_1F224A200];
  [(BWInferenceVideoFormatRequirements *)v3 setDeviceOriented:0];
  v5 = v3;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1]);
}

id __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_2_66(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v3, "setWidth:", [a2 width]);
  -[BWVideoFormatRequirements setHeight:](v3, "setHeight:", [a2 height]);
  [(BWVideoFormatRequirements *)v3 setSupportedPixelFormats:&unk_1F224A218];
  [(BWInferenceVideoFormatRequirements *)v3 setDeviceOriented:0];
  v5 = v3;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1]);
}

id __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_86(uint64_t a1)
{
  v2 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  if ([*(a1 + 32) inputSegmentationPortraitOrientationSupportEnabled])
  {
    v3 = 0x20000000180;
  }

  else
  {
    v3 = 0x18000000200;
  }

  [(BWVideoFormatRequirements *)v2 setDimensions:v3];
  [(BWVideoFormatRequirements *)v2 setSupportedPixelFormats:&unk_1F224A248];
  [(BWInferenceVideoFormatRequirements *)v2 setDeviceOriented:0];
  [(BWVideoFormatRequirements *)v2 setBytesPerRowAlignment:64];
  v5 = v2;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1]);
}

id __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_92(uint64_t a1, void *a2)
{
  [*(a1 + 32) mainImageDownscalingFactor];
  v5 = *(a1 + 40);

  return bwmia_mv2ipOutputMatteInferenceVideoFormat(a2, v4, v5);
}

id __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_2_93(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  v5 = [a2 width];
  [*(a1 + 32) mainImageDownscalingFactor];
  [(BWVideoFormatRequirements *)v4 setWidth:(v5 / v6)];
  v7 = [a2 height];
  [*(a1 + 32) mainImageDownscalingFactor];
  [(BWVideoFormatRequirements *)v4 setHeight:(v7 / v8)];
  [(BWVideoFormatRequirements *)v4 setSupportedPixelFormats:&unk_1F224A260];
  [(BWInferenceVideoFormatRequirements *)v4 setDeviceOriented:0];
  [(BWVideoFormatRequirements *)v4 setBytesPerRowAlignment:64];
  v10 = v4;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
}

id __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  if ([*(a1 + 32) inputSegmentationPortraitOrientationSupportEnabled])
  {
    v3 = 0x20000000180;
  }

  else
  {
    v3 = 0x18000000200;
  }

  [(BWVideoFormatRequirements *)v2 setDimensions:v3];
  [(BWVideoFormatRequirements *)v2 setSupportedPixelFormats:&unk_1F224A278];
  [(BWInferenceVideoFormatRequirements *)v2 setDeviceOriented:0];
  [(BWVideoFormatRequirements *)v2 setBytesPerRowAlignment:64];
  v5 = v2;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1]);
}

id __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_4(uint64_t a1, void *a2)
{
  [*(a1 + 32) mainImageDownscalingFactor];
  v5 = *(a1 + 40);

  return bwmia_mv2ipOutputMatteInferenceVideoFormat(a2, v4, v5);
}

- (id)inferenceProviderForType:(int)a3 version:(id)a4 configuration:(id)a5 resourceProvider:(id)a6 statusOut:(int *)a7
{
  var0 = a4.var0;
  if (a4.var0 != 1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v61 = 0;
    v11 = -31701;
    if (!a5 || (isKindOfClass & 1) == 0)
    {
LABEL_71:
      if (!a7)
      {
        return v61;
      }

LABEL_72:
      *a7 = v11;
      return v61;
    }

    v23 = [a5 mainImageDownscalingFactor];
    if (v26 == 0.0 || (v27 = OUTLINED_FUNCTION_3_115(v23, v24, v25, var0)) == 0)
    {
LABEL_79:
      v61 = 0;
      v11 = -31701;
      if (!a7)
      {
        return v61;
      }

      goto LABEL_72;
    }

    v28 = v27;
    v29 = a5;
    [a5 targetAspectRatio];
    v31 = v30;
    v32 = [a5 appliesFinalCropRect];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_2;
    v76[3] = &unk_1E7990C40;
    v77 = v31;
    v76[4] = a5;
    v78 = v32;
    [v28 bindMattingInput:@"primary_format:0" fromAttachedMediaUsingKey:@"PrimaryFormat" preparedByAttachedMediaKey:@"PrimaryFormat" withVideoFormatProvider:v76];
    [OUTLINED_FUNCTION_4() setPrimaryFormatInputVideoRequirement:?];
    if ([a5 depthDataDeliveryEnabled])
    {
      [OUTLINED_FUNCTION_1_135() bindMattingInput:? fromAttachedMediaUsingKey:? preparedByAttachedMediaKey:? withVideoFormatProvider:?];
      [OUTLINED_FUNCTION_4() setDepthInputVideoRequirement:?];
      v29 = a5;
      [OUTLINED_FUNCTION_1_135() bindMattingInput:? fromAttachedMediaUsingKey:? preparedByAttachedMediaKey:? withVideoFormatProvider:?];
      [OUTLINED_FUNCTION_4() setDisparityInputVideoRequirement:?];
    }

    v33 = [v29 enabledMattes];
    v34 = [MEMORY[0x1E695DF70] array];
    v35 = v34;
    if ((v33 & 4) != 0)
    {
      [v34 addObject:&unk_1F22478F0];
      if ((v33 & 8) == 0)
      {
LABEL_21:
        if ((v33 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_76;
      }
    }

    else if ((v33 & 8) == 0)
    {
      goto LABEL_21;
    }

    [v35 addObject:&unk_1F2247908];
    if ((v33 & 0x10) == 0)
    {
LABEL_22:
      if ((v33 & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_77;
    }

LABEL_76:
    [v35 addObject:&unk_1F2247920];
    if ((v33 & 0x20) == 0)
    {
LABEL_23:
      if ((v33 & 0x40) == 0)
      {
LABEL_25:
        [v28 setEnabledSemanticMattingOutputTypes:v35];
        v61 = v28;
        v57 = v35;
        if ((v33 & 2) != 0)
        {
          v75[0] = MEMORY[0x1E69E9820];
          v75[1] = 3221225472;
          v75[2] = __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_86;
          v75[3] = &unk_1E798F7E0;
          v75[4] = v29;
          [v28 bindMattingInput:@"segmentation_input:0" fromAttachedMediaUsingKey:0x1F219E750 preparedByAttachedMediaKey:@"PrimaryFormat" withVideoFormatProvider:v75];
          [OUTLINED_FUNCTION_4() setSegmentationInputVideoRequirement:?];
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_92;
          v73[3] = &unk_1E798F7B8;
          v73[4] = v29;
          v74 = v31;
          [v28 bindMattingOutput:@"segmentation_output:0" fromAttachedMediaUsingKey:0x1F21AABB0 preparedByAttachedMediaKey:@"PrimaryFormat" withVideoFormatProvider:v73];
          [OUTLINED_FUNCTION_4() setSegmentationOutputVideoRequirement:?];
          if ([v29 depthDataDeliveryEnabled] && (v33 & 1) != 0)
          {
            v72[0] = MEMORY[0x1E69E9820];
            v72[1] = 3221225472;
            v72[2] = __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_2_93;
            v72[3] = &unk_1E798F7E0;
            v72[4] = v29;
            [v28 bindMattingOutput:@"refined_depth_output:0" fromAttachedMediaUsingKey:0x1F21AABD0 preparedByAttachedMediaKey:@"PrimaryFormat" withVideoFormatProvider:v72];
            [OUTLINED_FUNCTION_4() setRefinedDepthOutputVideoRequirement:?];
          }

          if ((v33 & 0x80) != 0)
          {
            v36 = -[BWInferenceCloneVideoRequirement initWithAttachedMediaKey:sourceVideoRequirement:]([BWInferenceCloneVideoRequirement alloc], "initWithAttachedMediaKey:sourceVideoRequirement:", 0x1F21AADF0, [v28 segmentationInputVideoRequirement]);
            if (!v36)
            {
LABEL_70:
              v11 = 0;
              goto LABEL_71;
            }

            [v28 setLowResSegmentationCloneOutputVideoRequirement:v36];
          }
        }

        v59 = [MEMORY[0x1E695DF90] dictionary];
        v58 = [MEMORY[0x1E695DF90] dictionary];
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v37 = [&unk_1F224A230 countByEnumeratingWithState:&v68 objects:v67 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v69;
          v56 = *v69;
          do
          {
            v40 = 0;
            v62 = v38;
            do
            {
              if (*v69 != v39)
              {
                objc_enumerationMutation(&unk_1F224A230);
              }

              v41 = *(*(&v68 + 1) + 8 * v40);
              if ([v35 containsObject:v41])
              {
                v42 = [v41 intValue];
                v43 = v42;
                if (!v45 & v44)
                {
                  v53 = @"PersonSemanticsTeeth";
                  v52 = 0x1F219E7D0;
                  if (v42 != 16)
                  {
                    v53 = @"PersonSemanticsGlasses";
                    v52 = 0x1F219E7F0;
                    if (v42 != 32)
                    {
                      v53 = @"PersonSemanticsSky";
                      v52 = 0x1F219E810;
                      if (v42 != 64)
                      {
                        v47 = 0x1F21AADD0;
                        v46 = 0x1F219E8B0;
                        if (v42 != 0x2000)
                        {
                          v46 = 0;
                          v47 = 0;
                        }

                        if (v42 == 4096)
                        {
                          v46 = 0x1F219E890;
                          v47 = 0x1F21AADB0;
                        }

                        if (v42 == 2048)
                        {
                          v46 = 0x1F219E870;
                          v47 = 0x1F21AAD90;
                        }

                        if (v42 == 1024)
                        {
                          v46 = 0x1F219E830;
                          v47 = 0x1F21AAD90;
                        }

                        if (v42 == 512)
                        {
                          v46 = 0x1F219E850;
                          v47 = 0x1F21AAD70;
                        }

                        if (v42 == 128)
                        {
                          v52 = 0x1F219E750;
                        }

                        else
                        {
                          v52 = v46;
                        }

                        if (v42 == 128)
                        {
                          v53 = @"LowResPersonSegmentationMaskClone";
                        }

                        else
                        {
                          v53 = v47;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v52 = 0;
                  v53 = 0;
                  switch(v42)
                  {
                    case 1:
                      v52 = 0;
                      v53 = @"RefinedDepth";
                      break;
                    case 2:
                      v52 = 0x1F219E750;
                      v53 = @"PersonSegmentationMask";
                      break;
                    case 3:
                    case 5:
                    case 6:
                    case 7:
                      break;
                    case 4:
                      v53 = @"PersonSemanticsHair";
                      v52 = 0x1F219E770;
                      break;
                    case 8:
                      v53 = @"PersonSemanticsSkin";
                      v52 = 0x1F219E7B0;
                      break;
                    default:
                      JUMPOUT(0);
                  }
                }

                v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:0", v52];
                v66[0] = MEMORY[0x1E69E9820];
                v66[1] = 3221225472;
                v66[2] = __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_3;
                v66[3] = &unk_1E798F7E0;
                v66[4] = a5;
                v49 = [v61 bindMattingInput:v48 fromAttachedMediaUsingKey:v52 preparedByAttachedMediaKey:@"PrimaryFormat" withVideoFormatProvider:v66];
                [v59 setObject:v49 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v43)}];
                v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:0", v53];
                v64[0] = MEMORY[0x1E69E9820];
                v64[1] = 3221225472;
                v64[2] = __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_4;
                v64[3] = &unk_1E798F7B8;
                v64[4] = a5;
                v65 = v31;
                v51 = [v61 bindMattingOutput:v50 fromAttachedMediaUsingKey:v53 preparedByAttachedMediaKey:@"PrimaryFormat" withVideoFormatProvider:v64];
                [v58 setObject:v51 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v43)}];
                v35 = v57;
                v39 = v56;
                v38 = v62;
              }

              ++v40;
            }

            while (v38 != v40);
            v54 = [&unk_1F224A230 countByEnumeratingWithState:&v68 objects:v67 count:16];
            v38 = v54;
          }

          while (v54);
        }

        [v61 setSemanticMatteInputVideoRequirementsByMattingOutputType:v59];
        [v61 setSemanticMatteOutputVideoRequirementsByMattingOutputType:v58];
        if ((v33 & 0x100) != 0)
        {
          v63 = 0x1F219E710;
          [v61 setOutputMasksContainsValidContentRequirement:{objc_msgSend(v61, "bindMattingOutput:asMetadataUsingKeys:", @"output_masks_contain_valid_content:0", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v63, 1))}];
        }

        goto LABEL_70;
      }

LABEL_24:
      [v35 addObject:&unk_1F2247950];
      goto LABEL_25;
    }

LABEL_77:
    [v35 addObject:&unk_1F2247938];
    if ((v33 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  v61 = 0;
  v11 = -31701;
  if (!a5 || (v10 & 1) == 0)
  {
    goto LABEL_71;
  }

  v12 = [a5 mainImageDownscalingFactor];
  if (v15 == 0.0)
  {
    goto LABEL_79;
  }

  v16 = OUTLINED_FUNCTION_3_115(v12, v13, v14, var0 & 1);
  if (!v16)
  {
    goto LABEL_79;
  }

  v17 = v16;
  [a5 mainImageDownscalingFactor];
  v19 = v18;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke;
  v85[3] = &__block_descriptor_36_e56___BWInferenceVideoFormat_16__0__BWInferenceVideoFormat_8l;
  v86 = v18;
  [v17 bindMattingInput:@"primary_format:0" fromAttachedMediaUsingKey:@"PrimaryFormat" preparedByAttachedMediaKey:@"PrimaryFormat" withVideoFormatProvider:v85];
  [OUTLINED_FUNCTION_4() setPrimaryFormatInputVideoRequirement:?];
  if (+[BWInferenceEngine isNeuralEngineSupported])
  {
    v20 = 1278226536;
  }

  else
  {
    v20 = 1278226534;
  }

  v61 = v17;
  v21 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v21 setDimensions:0x18000000200];
  v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20];
  [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
  [OUTLINED_FUNCTION_4() setSupportedPixelFormats:?];
  [(BWInferenceVideoFormatRequirements *)v21 setDeviceOriented:0];
  [(BWVideoFormatRequirements *)v21 setBytesPerRowAlignment:64];
  v83 = v21;
  [v61 bindMattingInput:@"segmentation_input:0" fromAttachedMediaUsingKey:0x1F219E750 withVideoFormat:+[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v83, 1))];
  [OUTLINED_FUNCTION_4() setSegmentationInputVideoRequirement:?];
  [OUTLINED_FUNCTION_1_135() bindMattingInput:? fromAttachedMediaUsingKey:? preparedByAttachedMediaKey:? withVideoFormatProvider:?];
  [OUTLINED_FUNCTION_4() setDepthInputVideoRequirement:?];
  [OUTLINED_FUNCTION_1_135() bindMattingInput:? fromAttachedMediaUsingKey:? preparedByAttachedMediaKey:? withVideoFormatProvider:?];
  [OUTLINED_FUNCTION_4() setDisparityInputVideoRequirement:?];
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_37;
  v81[3] = &__block_descriptor_36_e56___BWInferenceVideoFormat_16__0__BWInferenceVideoFormat_8l;
  v82 = v19;
  [v61 bindMattingOutput:@"segmentation_output:0" fromAttachedMediaUsingKey:0x1F21AABB0 preparedByAttachedMediaKey:@"PrimaryFormat" withVideoFormatProvider:v81];
  [OUTLINED_FUNCTION_4() setSegmentationOutputVideoRequirement:?];
  if ([a5 refinedDepthDeliveryEnabled])
  {
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __103__BWMattingInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_statusOut___block_invoke_46;
    v79[3] = &__block_descriptor_36_e56___BWInferenceVideoFormat_16__0__BWInferenceVideoFormat_8l;
    v80 = v19;
    [v61 bindMattingOutput:@"refined_depth_output:0" fromAttachedMediaUsingKey:0x1F21AABD0 preparedByAttachedMediaKey:@"PrimaryFormat" withVideoFormatProvider:v79];
    [OUTLINED_FUNCTION_4() setRefinedDepthOutputVideoRequirement:?];
  }

  v11 = 0;
  if (a7)
  {
    goto LABEL_72;
  }

  return v61;
}

- (id)_newInferenceProviderWithType:(uint64_t)a3 configuration:(unsigned __int16)a4 version:(uint64_t)a5 additionalCacheAttributes:
{
  if (!a1)
  {
    return 0;
  }

  v8 = a2;
  v10 = MEMORY[0x1E695DF90];
  v28[0] = @"InferenceType";
  v28[1] = @"VersionMajor";
  v29[0] = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v29[1] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a4];
  v11 = [v10 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v29, v28, 2)}];
  v12 = v11;
  if (a5)
  {
    [v11 addEntriesFromDictionary:a5];
  }

  v13 = [(BWTiledEspressoInferenceAdapter *)a1 _generateInferenceProviderCacheKeyWithAttributes:v12];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v27.receiver = a1;
  v27.super_class = BWMattingInferenceAdapter;
  v15 = objc_msgSendSuper2(&v27, sel_shouldCacheInferenceProvider);
  if (v8 == 201)
  {
    if (v15)
    {
      v26.receiver = a1;
      v26.super_class = BWMattingInferenceAdapter;
      v16 = [objc_msgSendSuper2(&v26 cachedInferenceProviderByCacheKey)];
      if (v16)
      {
        return v16;
      }
    }
  }

  if (a4 == 1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v17 = 0;
    if (!a3 || (isKindOfClass & 1) == 0)
    {
      return v17;
    }

    v19 = BWMattingInferenceProvider;
  }

  else
  {
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();
    v17 = 0;
    if (!a3 || (v20 & 1) == 0)
    {
      return v17;
    }

    v19 = BWMattingV2InferenceProvider;
  }

  v21 = [[v19 alloc] initWithConfiguration:a3];
  v17 = v21;
  if (v21)
  {
    [v21 setCustomInferenceIdentifier:v14];
    v25.receiver = a1;
    v25.super_class = BWMattingInferenceAdapter;
    v22 = objc_msgSendSuper2(&v25, sel_shouldCacheInferenceProvider);
    if (v8 == 201)
    {
      if (v22)
      {
        v24.receiver = a1;
        v24.super_class = BWMattingInferenceAdapter;
        [objc_msgSendSuper2(&v24 cachedInferenceProviderByCacheKey)];
      }
    }
  }

  return v17;
}

@end