@interface BWVideoDepthInferenceAdapter
- (BWVideoDepthInferenceAdapter)init;
- (id)inferenceProvidersForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status;
- (void)dealloc;
@end

@implementation BWVideoDepthInferenceAdapter

- (BWVideoDepthInferenceAdapter)init
{
  v3.receiver = self;
  v3.super_class = BWVideoDepthInferenceAdapter;
  return [(BWInferenceAdapter *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWVideoDepthInferenceAdapter;
  [(BWInferenceAdapter *)&v2 dealloc];
}

- (id)inferenceProvidersForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status
{
  v10 = *&version.var0;
  v11 = *&type;
  v166[0] = 0;
  array = [MEMORY[0x1E695DF70] array];
  HIDWORD(v14) = v11 - 109;
  LODWORD(v14) = v11 - 109;
  v13 = v14 >> 1;
  if (v13 <= 3)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          configurationCopy = configuration;
        }

        else
        {
          configurationCopy = 0;
        }

        v16 = [objc_alloc_init(BWEspressoInferenceAdapter) inferenceProviderForType:v11 version:v10 & 0xFFFFFFFFFFFFLL configuration:configuration resourceProvider:provider status:v166];
        if (!v16)
        {
          [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
          goto LABEL_126;
        }

        if (v166[0])
        {
          [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
          goto LABEL_126;
        }

        v17 = v16;
        statusCopy4 = status;
        if ([configurationCopy concurrencyWidth] >= 2)
        {
          v18 = -[BWVideoDepthSampleBufferPropagator initWithVideoRequirements:cloneRequirements:]([BWVideoDepthSampleBufferPropagator alloc], "initWithVideoRequirements:cloneRequirements:", [v17 outputVideoRequirements], objc_msgSend(v17, "cloneVideoRequirements"));
          [v17 setPropagatable:v18];
        }

        [array addObject:v17];
        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        inputVideoRequirements = [v17 inputVideoRequirements];
        v20 = [inputVideoRequirements countByEnumeratingWithState:&v162 objects:v161 count:16];
        if (!v20)
        {
          goto LABEL_129;
        }

        v21 = v20;
        v118 = configurationCopy;
        providerCopy = provider;
        v123 = array;
        v22 = 0;
        v23 = 0;
        v24 = *v163;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v163 != v24)
            {
              objc_enumerationMutation(inputVideoRequirements);
            }

            v26 = *(*(&v162 + 1) + 8 * i);
            if ([objc_msgSend(v26 "attachedMediaKey")])
            {
              v23 = v26;
            }

            if ([objc_msgSend(v26 "attachedMediaKey")])
            {
              v22 = v26;
            }
          }

          v21 = [inputVideoRequirements countByEnumeratingWithState:&v162 objects:v161 count:16];
        }

        while (v21);
        array = v123;
        if (v23)
        {
          if (v22)
          {
            v27 = [objc_msgSend(v17 "outputVideoRequirements")];
            v157 = 0u;
            v158 = 0u;
            v159 = 0u;
            v160 = 0u;
            outputVideoRequirements = [v17 outputVideoRequirements];
            v29 = [outputVideoRequirements countByEnumeratingWithState:&v157 objects:v156 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v158;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v158 != v31)
                  {
                    objc_enumerationMutation(outputVideoRequirements);
                  }

                  v33 = *(*(&v157 + 1) + 8 * j);
                  if ([objc_msgSend(v33 "attachedMediaKey")])
                  {
                    v27 = v33;
                  }
                }

                v30 = [outputVideoRequirements countByEnumeratingWithState:&v157 objects:v156 count:16];
              }

              while (v30);
            }

            if (v27)
            {
              v152[0] = MEMORY[0x1E69E9820];
              v152[1] = 3221225472;
              v153 = __104__BWVideoDepthInferenceAdapter_inferenceProvidersForType_version_configuration_resourceProvider_status___block_invoke;
              v154 = &unk_1E799B730;
              v155 = v118;
              v34 = __104__BWVideoDepthInferenceAdapter_inferenceProvidersForType_version_configuration_resourceProvider_status___block_invoke(v152, 704, 396, 1111970369, @"PrimaryFormat", &unk_1F22496F0);
              v116 = v153(v152, 704, 396, 1111970369, @"SynchronizedSlaveFrame", &unk_1F22496F0);
              v115 = v153(v152, 704, 396, 875704438, @"PrimaryFormat", &unk_1F22496F0);
              v114 = v153(v152, 704, 396, 875704438, @"SynchronizedSlaveFrame", &unk_1F22496F0);
              v35 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)v34 videoFormat] width]/ 2;
              v36 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)v34 videoFormat] height]/ 2;
              v37 = objc_alloc_init(BWInferenceVideoFormatRequirements);
              v38 = [objc_msgSend(v23 "videoFormat")];
              videoFormat = v35;
              if (v38 > v35)
              {
                videoFormat = [objc_msgSend(v23 videoFormat];
              }

              [(BWVideoFormatRequirements *)v37 setWidth:videoFormat];
              v40 = [objc_msgSend(v23 "videoFormat")];
              videoFormat2 = v36;
              if (v40 > v36)
              {
                videoFormat2 = [objc_msgSend(v23 videoFormat];
              }

              [(BWVideoFormatRequirements *)v37 setHeight:videoFormat2];
              [(BWVideoFormatRequirements *)v37 setBytesPerRowAlignment:64];
              [(BWVideoFormatRequirements *)v37 setSupportedPixelFormats:&unk_1F2249708];
              v151 = v37;
              v113 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v151 count:1]);
              v42 = -[BWRectificationInferenceProvider initWithRefInputRequirement:auxInputRequirement:refKeypointsInputRequirement:auxKeypointsInputRequirement:refOutputRequirement:auxOutputRequirement:opticalFlowOutputRequirement:originalRefRequirement:originalAuxRequirement:resourceProvider:configuration:]([BWRectificationInferenceProvider alloc], "initWithRefInputRequirement:auxInputRequirement:refKeypointsInputRequirement:auxKeypointsInputRequirement:refOutputRequirement:auxOutputRequirement:opticalFlowOutputRequirement:originalRefRequirement:originalAuxRequirement:resourceProvider:configuration:", v34, v116, v115, v114, v23, v22, -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:count:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:count:", 0x1F219EB10, v113, [v118 concurrencyWidth]), -[BWInferenceLazyVideoRequirement initWithAttachedMediaKey:preparedByAttachedMediaKey:videoFormatProvider:]([BWInferenceLazyVideoRequirement alloc], "initWithAttachedMediaKey:preparedByAttachedMediaKey:videoFormatProvider:", @"PrimaryFormat", @"PrimaryFormat", &__block_literal_global_103), -[BWInferenceLazyVideoRequirement initWithAttachedMediaKey:preparedByAttachedMediaKey:videoFormatProvider:]([BWInferenceLazyVideoRequirement alloc], "initWithAttachedMediaKey:preparedByAttachedMediaKey:videoFormatProvider:", @"SynchronizedSlaveFrame", @"SynchronizedSlaveFrame", &__block_literal_global_103), providerCopy, v118);
              if (v42)
              {
                array = v123;
                [v123 addObject:v42];
                v43 = -[BWDerectificationInferenceProvider initWithInputRequirement:opticalFlowInputRequirement:outputRequirement:resourceProvider:configuration:]([BWDerectificationInferenceProvider alloc], "initWithInputRequirement:opticalFlowInputRequirement:outputRequirement:resourceProvider:configuration:", -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:count:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:count:", @"espressoOutput", [v27 videoFormat], objc_msgSend(v118, "concurrencyWidth")), -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:count:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:count:", 0x1F219EB10, v113, objc_msgSend(v118, "concurrencyWidth")), -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", @"Depth", objc_msgSend(v27, "videoFormat")), providerCopy, v118);
                status = statusCopy4;
                if (v43)
                {
                  v44 = v43;
                  v45 = v123;
LABEL_109:
                  [v45 addObject:v44];
                  goto LABEL_126;
                }

                [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
                goto LABEL_126;
              }

              [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
            }

            else
            {
              [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
            }

LABEL_144:
            status = statusCopy4;
            array = v123;
            goto LABEL_126;
          }

          [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
        }

        else
        {
LABEL_129:
          [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
        }

LABEL_125:
        status = statusCopy4;
        goto LABEL_126;
      }

LABEL_60:
      v166[0] = -31710;
      goto LABEL_126;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      configurationCopy2 = configuration;
    }

    else
    {
      configurationCopy2 = 0;
    }

    v58 = [objc_alloc_init(BWEspressoInferenceAdapter) inferenceProviderForType:v11 version:v10 & 0xFFFFFFFFFFFFLL configuration:configurationCopy2 resourceProvider:provider status:v166];
    if (!v58)
    {
      [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
      goto LABEL_126;
    }

    if (v166[0])
    {
      [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
      goto LABEL_126;
    }

    v59 = v58;
    statusCopy4 = status;
    providerCopy2 = provider;
    if ([configurationCopy2 concurrencyWidth] >= 2)
    {
      v60 = -[BWVideoDepthSampleBufferPropagator initWithVideoRequirements:cloneRequirements:]([BWVideoDepthSampleBufferPropagator alloc], "initWithVideoRequirements:cloneRequirements:", [v59 outputVideoRequirements], objc_msgSend(v59, "cloneVideoRequirements"));
      [v59 setPropagatable:v60];
    }

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    inputVideoRequirements2 = [v59 inputVideoRequirements];
    v62 = [inputVideoRequirements2 countByEnumeratingWithState:&v133 objects:v132 count:16];
    if (!v62)
    {
      goto LABEL_130;
    }

    v63 = v62;
    v119 = configurationCopy2;
    v123 = array;
    v64 = 0;
    v65 = 0;
    v66 = *v134;
    do
    {
      for (k = 0; k != v63; ++k)
      {
        if (*v134 != v66)
        {
          objc_enumerationMutation(inputVideoRequirements2);
        }

        v68 = *(*(&v133 + 1) + 8 * k);
        if ([objc_msgSend(v68 "attachedMediaKey")])
        {
          v65 = v68;
        }

        if ([objc_msgSend(v68 "attachedMediaKey")])
        {
          v64 = v68;
        }
      }

      v63 = [inputVideoRequirements2 countByEnumeratingWithState:&v133 objects:v132 count:16];
    }

    while (v63);
    array = v123;
    if (!v65)
    {
LABEL_130:
      [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
      goto LABEL_125;
    }

    if (!v64)
    {
      [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
      goto LABEL_125;
    }

    [v123 addObject:v59];
    v117 = -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", 0x1F219EB50, [v65 videoFormat]);
    v69 = objc_alloc_init(BWInferenceVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v69, "setWidth:", [v119 outputDimensions]);
    -[BWVideoFormatRequirements setHeight:](v69, "setHeight:", [v119 outputDimensions] >> 32);
    [(BWVideoFormatRequirements *)v69 setBytesPerRowAlignment:64];
    v131 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(v65, "videoFormat"), "pixelFormat")}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v69, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1]);
    v130 = v69;
    v70 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1]);
    v71 = objc_alloc_init(BWInferenceVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v71, "setWidth:", [objc_msgSend(v64 "videoFormat")]);
    -[BWVideoFormatRequirements setHeight:](v71, "setHeight:", [objc_msgSend(v64 "videoFormat")]);
    [(BWVideoFormatRequirements *)v71 setBytesPerRowAlignment:64];
    [(BWVideoFormatRequirements *)v71 setSupportedPixelFormats:&unk_1F2249750];
    v129 = v71;
    v72 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v129 count:1]);
    v73 = objc_alloc_init(BWInferenceVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v73, "setWidth:", [v119 outputDimensions]);
    -[BWVideoFormatRequirements setHeight:](v73, "setHeight:", [v119 outputDimensions] >> 32);
    [(BWVideoFormatRequirements *)v73 setBytesPerRowAlignment:64];
    [(BWVideoFormatRequirements *)v73 setSupportedPixelFormats:&unk_1F2249768];
    v128 = v73;
    v74 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:1]);
    v75 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:0x1F219EA90 videoFormat:v72];
    if ([v119 requiresAppleDepthPostProcessing])
    {
      v76 = @"UnscaledDepth";
    }

    else
    {
      v76 = @"Depth";
    }

    v77 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:v76 videoFormat:v70];
    v78 = -[BWDisparityPostProcessingInferenceProvider initWithDisparityInputRequirement:displacementInputRequirement:stateInputRequirement:stateOutputRequirement:disparityOutputRequirement:portType:resourceProvider:configuration:]([BWDisparityPostProcessingInferenceProvider alloc], "initWithDisparityInputRequirement:displacementInputRequirement:stateInputRequirement:stateOutputRequirement:disparityOutputRequirement:portType:resourceProvider:configuration:", v117, v75, -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", 0x1F219EB70, v74), -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", 0x1F219EB90, v74), v77, [v119 portType], providerCopy2, v119);
    if (!v78)
    {
      [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
      goto LABEL_144;
    }

    array = v123;
    [v123 addObject:v78];
    if ([v119 requiresAppleDepthPostProcessing])
    {
      v79 = [[BWDisparityFilteringInferenceProvider alloc] initWithDisparityInputRequirement:v77 disparityOutputRequirement:[[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:@"Depth" videoFormat:v70] resourceProvider:providerCopy2 configuration:v119 isPreprocessing:0];
      if (!v79)
      {
        [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
        goto LABEL_125;
      }

      [v123 addObject:v79];
    }

    v80 = [[BWDisparityFilteringInferenceProvider alloc] initWithDisparityInputRequirement:[[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:0x1F219EAD0 preparedByAttachedMediaKey:0x1F219EAD0 videoFormatProvider:&__block_literal_global_126] disparityOutputRequirement:v65 resourceProvider:providerCopy2 configuration:v119 isPreprocessing:1];
    if (!v80)
    {
      [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
      goto LABEL_125;
    }

    v81 = v80;
LABEL_124:
    [array addObject:v81];
    goto LABEL_125;
  }

  if (v13 != 4)
  {
    if (v13 != 5)
    {
      goto LABEL_60;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      configurationCopy3 = configuration;
    }

    else
    {
      configurationCopy3 = 0;
    }

    v47 = [objc_alloc_init(BWEspressoInferenceAdapter) inferenceProviderForType:v11 version:v10 & 0xFFFFFFFFFFFFLL configuration:configuration resourceProvider:provider status:v166];
    if (!v47)
    {
      [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
      goto LABEL_126;
    }

    if (v166[0])
    {
      [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
      goto LABEL_126;
    }

    v48 = v47;
    statusCopy4 = status;
    if ([configurationCopy3 concurrencyWidth] >= 2)
    {
      v49 = -[BWVideoDepthSampleBufferPropagator initWithVideoRequirements:cloneRequirements:]([BWVideoDepthSampleBufferPropagator alloc], "initWithVideoRequirements:cloneRequirements:", [v48 outputVideoRequirements], objc_msgSend(v48, "cloneVideoRequirements"));
      [v48 setPropagatable:v49];
    }

    v123 = array;
    [array addObject:v48];
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    inputVideoRequirements3 = [v48 inputVideoRequirements];
    v51 = [inputVideoRequirements3 countByEnumeratingWithState:&v147 objects:v146 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = 0;
      v54 = *v148;
      do
      {
        for (m = 0; m != v52; ++m)
        {
          if (*v148 != v54)
          {
            objc_enumerationMutation(inputVideoRequirements3);
          }

          v56 = *(*(&v147 + 1) + 8 * m);
          if ([objc_msgSend(v56 "attachedMediaKey")])
          {
            v53 = v56;
          }
        }

        v52 = [inputVideoRequirements3 countByEnumeratingWithState:&v147 objects:v146 count:16];
      }

      while (v52);
    }

    else
    {
      v53 = 0;
    }

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    outputVideoRequirements2 = [v48 outputVideoRequirements];
    v98 = [outputVideoRequirements2 countByEnumeratingWithState:&v142 objects:v141 count:16];
    if (v98)
    {
      v99 = v98;
      v100 = 0;
      v101 = *v143;
      do
      {
        for (n = 0; n != v99; ++n)
        {
          if (*v143 != v101)
          {
            objc_enumerationMutation(outputVideoRequirements2);
          }

          v103 = *(*(&v142 + 1) + 8 * n);
          if ([objc_msgSend(v103 "attachedMediaKey")])
          {
            v100 = v103;
          }
        }

        v99 = [outputVideoRequirements2 countByEnumeratingWithState:&v142 objects:v141 count:16];
      }

      while (v99);
    }

    else
    {
      v100 = 0;
    }

    v104 = -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", 0x1F219EB50, [v100 videoFormat]);
    v105 = objc_alloc_init(BWInferenceVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v105, "setWidth:", [configurationCopy3 outputDimensions]);
    -[BWVideoFormatRequirements setHeight:](v105, "setHeight:", [configurationCopy3 outputDimensions] >> 32);
    [(BWVideoFormatRequirements *)v105 setBytesPerRowAlignment:64];
    v140 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(v100, "videoFormat"), "pixelFormat")}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v105, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v140 count:1]);
    v139 = v105;
    v106 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v139 count:1]);
    v107 = objc_alloc_init(BWInferenceVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v107, "setWidth:", [objc_msgSend(v53 "videoFormat")]);
    -[BWVideoFormatRequirements setHeight:](v107, "setHeight:", [objc_msgSend(v53 "videoFormat")]);
    [(BWVideoFormatRequirements *)v107 setBytesPerRowAlignment:64];
    [(BWVideoFormatRequirements *)v107 setSupportedPixelFormats:&unk_1F2249720];
    v138 = v107;
    v108 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v138 count:1]);
    v109 = objc_alloc_init(BWInferenceVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v109, "setWidth:", [configurationCopy3 outputDimensions]);
    -[BWVideoFormatRequirements setHeight:](v109, "setHeight:", [configurationCopy3 outputDimensions] >> 32);
    [(BWVideoFormatRequirements *)v109 setBytesPerRowAlignment:64];
    [(BWVideoFormatRequirements *)v109 setSupportedPixelFormats:&unk_1F2249738];
    v137 = v109;
    v110 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1]);
    v111 = -[BWDisparityPostProcessingInferenceProvider initWithDisparityInputRequirement:displacementInputRequirement:stateInputRequirement:stateOutputRequirement:disparityOutputRequirement:portType:resourceProvider:configuration:]([BWDisparityPostProcessingInferenceProvider alloc], "initWithDisparityInputRequirement:displacementInputRequirement:stateInputRequirement:stateOutputRequirement:disparityOutputRequirement:portType:resourceProvider:configuration:", v104, -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", 0x1F219EA90, v108), -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", 0x1F219EB70, v110), -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", 0x1F219EB90, v110), -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", @"Depth", v106), [configurationCopy3 portType], provider, configurationCopy3);
    if (!v111)
    {
      [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
      goto LABEL_144;
    }

    v81 = v111;
    array = v123;
    goto LABEL_124;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    configurationCopy4 = configuration;
  }

  else
  {
    configurationCopy4 = 0;
  }

  v83 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v83, "setWidth:", [configurationCopy4 inputDimensions]);
  -[BWVideoFormatRequirements setHeight:](v83, "setHeight:", [configurationCopy4 inputDimensions] >> 32);
  [(BWVideoFormatRequirements *)v83 setSupportedColorSpaceProperties:&unk_1F2249780];
  [(BWVideoFormatRequirements *)v83 setBytesPerRowAlignment:64];
  [(BWVideoFormatRequirements *)v83 setSupportedPixelFormats:&unk_1F2249798];
  -[BWInferenceVideoFormatRequirements setRotationDegrees:](v83, "setRotationDegrees:", [configurationCopy4 inputRotationAngle]);
  -[BWInferenceVideoFormatRequirements setApplyHorizontalFlip:](v83, "setApplyHorizontalFlip:", [configurationCopy4 colorInputFlipHorizontal]);
  if ([configurationCopy4 colorInputCropMode] == 1)
  {
    [(BWInferenceVideoFormatRequirements *)v83 setCropDescriptor:objc_alloc_init(BWInferencePrimaryCaptureRectDescriptor)];
    attachedMediaKeyForColorInput = @"PrimaryFormat";
  }

  else
  {
    attachedMediaKeyForColorInput = @"PrimaryFormat";
    if ([configurationCopy4 colorInputCropMode] == 2)
    {
      if (![configurationCopy4 attachedMediaKeyForColorInput])
      {
        [BWVideoDepthInferenceAdapter inferenceProvidersForType:v166 version:? configuration:? resourceProvider:? status:?];
        goto LABEL_126;
      }

      if (![configurationCopy4 attachedMediaCropRectKey])
      {
        [BWVideoDepthInferenceAdapter inferenceProvidersForType:v166 version:? configuration:? resourceProvider:? status:?];
        goto LABEL_126;
      }

      -[BWInferenceVideoFormatRequirements setCropDescriptor:](v83, "setCropDescriptor:", +[BWInferenceAttachedMediaCropDescriptor attachedMediaCropDescriptorWithName:attachedMediaKey:cropRectKey:targetDimensions:extendCropRect:](BWInferenceAttachedMediaCropDescriptor, "attachedMediaCropDescriptorWithName:attachedMediaKey:cropRectKey:targetDimensions:extendCropRect:", @"Optical flow", [configurationCopy4 attachedMediaKeyForColorInput], objc_msgSend(configurationCopy4, "attachedMediaCropRectKey"), objc_msgSend(configurationCopy4, "inputDimensions"), 1));
      attachedMediaKeyForColorInput = [configurationCopy4 attachedMediaKeyForColorInput];
    }
  }

  v127 = v83;
  v85 = -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", attachedMediaKeyForColorInput, +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1]));
  forceIntermediateDimensions = [configurationCopy4 forceIntermediateDimensions];
  inputDimensions = [configurationCopy4 inputDimensions];
  if (forceIntermediateDimensions >= inputDimensions && SHIDWORD(forceIntermediateDimensions) >= SHIDWORD(inputDimensions) && (forceIntermediateDimensions > inputDimensions || SHIDWORD(forceIntermediateDimensions) > SHIDWORD(inputDimensions)))
  {
    statusCopy4 = status;
    v88 = [BWInferenceLazyVideoRequirement alloc];
    concurrencyWidth = [configurationCopy4 concurrencyWidth];
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __104__BWVideoDepthInferenceAdapter_inferenceProvidersForType_version_configuration_resourceProvider_status___block_invoke_149;
    v126[3] = &__block_descriptor_40_e56___BWInferenceVideoFormat_16__0__BWInferenceVideoFormat_8l;
    v126[4] = forceIntermediateDimensions;
    v90 = [(BWInferenceLazyVideoRequirement *)v88 initWithAttachedMediaKey:attachedMediaKeyForColorInput preparedByAttachedMediaKey:@"PrimaryFormat" count:concurrencyWidth videoFormatProvider:v126];
    v91 = [BWInferenceVideoScalingProvider alloc];
    v125 = v85;
    v92 = -[BWInferenceVideoScalingProvider initWithInputRequirement:derivedFromRequirement:outputRequirements:enableFencing:filterType:](v91, "initWithInputRequirement:derivedFromRequirement:outputRequirements:enableFencing:filterType:", v90, 0, [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1], 1, 3);
    if (!v92)
    {
      [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
      goto LABEL_125;
    }

    v93 = v92;
    [array addObject:v92];

    status = statusCopy4;
  }

  v94 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v94, "setWidth:", [configurationCopy4 inputDimensions]);
  -[BWVideoFormatRequirements setHeight:](v94, "setHeight:", [configurationCopy4 inputDimensions] >> 32);
  [(BWVideoFormatRequirements *)v94 setBytesPerRowAlignment:64];
  [(BWVideoFormatRequirements *)v94 setSupportedPixelFormats:&unk_1F22497E0];
  v124 = v94;
  v95 = -[BWOpticalFlowInferenceProvider initWithInputRequirement:outputRequirement:portType:resourceProvider:configuration:]([BWOpticalFlowInferenceProvider alloc], "initWithInputRequirement:outputRequirement:portType:resourceProvider:configuration:", v85, -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", 0x1F219EA90, +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1])), objc_msgSend(configurationCopy4, "portType"), provider, configurationCopy4);
  if (v95)
  {
    v96 = v95;
    if ([configurationCopy4 attachedMediaKeyForPropagatedColorInput])
    {
      -[BWOpticalFlowInferenceProvider bindOutputByCloningInputRequirement:toAttachedMediaUsingKey:](v96, "bindOutputByCloningInputRequirement:toAttachedMediaUsingKey:", v85, [configurationCopy4 attachedMediaKeyForPropagatedColorInput]);
    }

    v45 = array;
    v44 = v96;
    goto LABEL_109;
  }

  [BWVideoDepthInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
LABEL_126:
  if (status)
  {
    *status = v166[0];
  }

  return array;
}

BWInferenceVideoRequirement *__104__BWVideoDepthInferenceAdapter_inferenceProvidersForType_version_configuration_resourceProvider_status___block_invoke(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v12 setWidth:a2];
  [(BWVideoFormatRequirements *)v12 setHeight:a3];
  [(BWVideoFormatRequirements *)v12 setBytesPerRowAlignment:64];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v12, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1]);
  [(BWVideoFormatRequirements *)v12 setSupportedColorSpaceProperties:a6];
  v14 = v12;
  return -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:count:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:count:", a5, +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1]), objc_msgSend(*(a1 + 32), "concurrencyWidth"));
}

id __104__BWVideoDepthInferenceAdapter_inferenceProvidersForType_version_configuration_resourceProvider_status___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v3, "setWidth:", [a2 width]);
  -[BWVideoFormatRequirements setHeight:](v3, "setHeight:", [a2 height]);
  [(BWVideoFormatRequirements *)v3 setBytesPerRowAlignment:64];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a2, "pixelFormat")}];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v3, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
  -[BWInferenceVideoFormatRequirements setRotationDegrees:](v3, "setRotationDegrees:", [a2 rotationDegrees]);
  v5 = v3;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1]);
}

id __104__BWVideoDepthInferenceAdapter_inferenceProvidersForType_version_configuration_resourceProvider_status___block_invoke_149(uint64_t a1, void *a2)
{
  v4 = [[BWInferenceVideoFormatRequirements alloc] initWithFormat:a2];
  v5 = *(a1 + 32);
  if ([a2 width] <= v5)
  {
    v6 = [a2 width];
  }

  else
  {
    v6 = *(a1 + 32);
  }

  [(BWVideoFormatRequirements *)v4 setWidth:v6];
  v7 = *(a1 + 36);
  if ([a2 height] <= v7)
  {
    v8 = [a2 height];
  }

  else
  {
    v8 = *(a1 + 36);
  }

  [(BWVideoFormatRequirements *)v4 setHeight:v8];
  [(BWVideoFormatRequirements *)v4 setSupportedColorSpaceProperties:&unk_1F22497B0];
  [(BWVideoFormatRequirements *)v4 setSupportedPixelFormats:&unk_1F22497C8];
  [(BWInferenceVideoFormatRequirements *)v4 setIncludesInvalidContent:0];
  v10 = v4;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
}

- (uint64_t)inferenceProvidersForType:(_DWORD *)a1 version:configuration:resourceProvider:status:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  result = FigDebugAssert3();
  *a1 = -31710;
  return result;
}

- (uint64_t)inferenceProvidersForType:(_DWORD *)a1 version:configuration:resourceProvider:status:.cold.2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  result = FigDebugAssert3();
  *a1 = -31710;
  return result;
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1_110();
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1_110();
}

- (uint64_t)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1_110();
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1_110();
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1_110();
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_100();
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_100();
}

- (uint64_t)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1_110();
}

- (uint64_t)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.16()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1_110();
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.17()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1_110();
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.18()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_100();
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.19()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_100();
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.20()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_100();
}

- (uint64_t)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.21()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end