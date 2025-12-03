@interface BWEspressoInferenceAdapter
+ ($2ACC23B9A21F50F5CC728381CA870116)findAvailableVersion:(id)version defaultOverrideKey:(id)key versionLocator:(id)locator e5Bundle:(BOOL)bundle;
+ (id)espressoNetworkURLForPlatformedResourceBaseName:(uint64_t)name embedPlatformOrDeviceID:(uint64_t)d e5Bundle:;
+ (id)locateNetworkFileFromFormat:(id)format defaultOverrideKey:(id)key version:(id)version e5Bundle:(BOOL)bundle;
- (BWE5MultipleLayoutInferenceProvider)_newInferenceProviderWithType:(uint64_t)type networkURL:(uint64_t)l networkConfiguration:(void *)configuration networkConfigurationByLayout:(unsigned int)layout defaultLayout:(uint64_t)defaultLayout portraitOrientationSupportEnabled:(uint64_t)enabled context:(unsigned int)context executionTarget:(void *)self0 configuration:(uint64_t)self1 preventionReasons:(uint64_t)self2 resourceProvider:(int)self3 allowedCompressionDirection:(uint64_t)self4 concurrentSubmissionLimit:(char)self5 e5Allowed:(char)self6 updateMetadataWithCropRect:(uint64_t)self7 additionalCacheKeyAttributes:;
- (BWEspressoInferenceAdapter)init;
- (id)inferenceProviderForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status;
- (id)inferenceProvidersForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status;
- (void)dealloc;
@end

@implementation BWEspressoInferenceAdapter

- (BWEspressoInferenceAdapter)init
{
  v3.receiver = self;
  v3.super_class = BWEspressoInferenceAdapter;
  return [(BWInferenceAdapter *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWEspressoInferenceAdapter;
  [(BWInferenceAdapter *)&v2 dealloc];
}

- (id)inferenceProvidersForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status
{
  v10 = *&version.var0;
  v11 = *&type;
  array = [MEMORY[0x1E695DF70] array];
  v14 = [objc_opt_class() allowE5ForInferenceType:v11];
  if (v11 > 120)
  {
    if (v11 == 121)
    {
      providerCopy = provider;
      v174 = 0;
      v51 = objc_alloc(getVNResourceVersionClass());
      if (v10 == 2)
      {
        v52 = 2;
      }

      else
      {
        v52 = 1;
      }

      v53 = [v51 initWithMajor:v52 minor:0 micro:0];
      VNProcessingDescriptorClass = getVNProcessingDescriptorClass();
      v185 = 0;
      v186 = &v185;
      v187 = 0x2020000000;
      v55 = getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_ptr;
      v188 = getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_ptr;
      if (!getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_ptr)
      {
        v183[0] = MEMORY[0x1E69E9820];
        v183[1] = 3221225472;
        v183[2] = __getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_block_invoke;
        v183[3] = &unk_1E798FC38;
        v184 = &v185;
        v56 = VisionCoreLibrary();
        v186[3] = dlsym(v56, "VisionCoreInferenceNetworkIdentifierCamGaze");
        getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_ptr = *(v184[1] + 24);
        v55 = v186[3];
      }

      _Block_object_dispose(&v185, 8);
      if (!v55)
      {
        [BWEspressoInferenceAdapter inferenceProvidersForType:version:configuration:resourceProvider:status:];
      }

      v57 = [VNProcessingDescriptorClass descriptorForIdentifier:*v55 version:v53 error:&v174];
      aNESpecificURL = [v57 ANESpecificURL];
      if (!aNESpecificURL)
      {
        goto LABEL_124;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v31 = -31701;
      if (!configuration || (isKindOfClass & 1) == 0)
      {
        goto LABEL_121;
      }

      configurationCopy = configuration;
      statusCopy2 = status;
      v144 = array;
      v146 = [providerCopy espressoContextForExecutionTarget:3];
      onlyInputImage = [v57 onlyInputImage];
      v61 = objc_alloc_init(BWInferenceVideoFormatRequirements);
      -[BWVideoFormatRequirements setWidth:](v61, "setWidth:", [onlyInputImage pixelWidth]);
      -[BWVideoFormatRequirements setHeight:](v61, "setHeight:", [onlyInputImage pixelHeight]);
      v173 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(onlyInputImage, "pixelFormatType")}];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v61, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v173 count:1]);
      [(BWVideoFormatRequirements *)v61 setBytesPerRowAlignment:64];
      [(BWInferenceVideoFormatRequirements *)v61 setDeviceOriented:0];
      maximumNumberOfFaces = [configurationCopy maximumNumberOfFaces];
      gazeProbabilitiesOutput = [v57 gazeProbabilitiesOutput];
      storageByteCount = [gazeProbabilitiesOutput storageByteCount];
      if (maximumNumberOfFaces)
      {
        v65 = storageByteCount;
        v66 = 0;
        do
        {
          [(BWInferenceVideoFormatRequirements *)v61 setCropDescriptor:[[BWInferenceCamGazeCropDescriptor alloc] initWithFaceIndex:v66]];
          v172 = v61;
          v67 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v172 count:1]);
          v68 = [MEMORY[0x1E695DFD8] set];
          v170 = @"ProviderIndex";
          v171 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v66];
          v69 = -[BWEspressoInferenceAdapter _newInferenceProviderWithType:networkURL:networkConfiguration:networkConfigurationByLayout:defaultLayout:portraitOrientationSupportEnabled:context:executionTarget:configuration:preventionReasons:resourceProvider:allowedCompressionDirection:concurrentSubmissionLimit:e5Allowed:updateMetadataWithCropRect:additionalCacheKeyAttributes:](self, 121, aNESpecificURL, 0, 0, 0xFFFFFFFF, 0, v146, 3u, configurationCopy, v68, providerCopy, 0, 1, 0, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1]);
          if (!v69)
          {
            goto LABEL_125;
          }

          v70 = v69;
          if (!-[BWE5MultipleLayoutInferenceProvider bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:](v69, "bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:", [onlyInputImage name], @"PrimaryFormat", v67))
          {
LABEL_126:
            v31 = -31711;
            goto LABEL_81;
          }

          -[BWE5MultipleLayoutInferenceProvider setPropagatable:](v70, "setPropagatable:", -[BWEspressoInferenceCamGazePropagator initWithCamGazeRequirement:camGazeSizeBytes:maxFaces:faceIndex:]([BWEspressoInferenceCamGazePropagator alloc], "initWithCamGazeRequirement:camGazeSizeBytes:maxFaces:faceIndex:", -[BWE5MultipleLayoutInferenceProvider bindEspressoOutput:asMetadataUsingKey:](v70, "bindEspressoOutput:asMetadataUsingKey:", [gazeProbabilitiesOutput name], 0x1F219EEF0), v65, maximumNumberOfFaces, v66));
          [v144 addObject:v70];
        }

        while (maximumNumberOfFaces != ++v66);
      }
    }

    else
    {
      if (v11 != 161)
      {
        goto LABEL_26;
      }

      v183[0] = 0;
      v26 = objc_alloc(getVNResourceVersionClass());
      if (v10 == 2)
      {
        v27 = 4;
        v28 = 0;
      }

      else
      {
        v27 = 3;
        v28 = 1;
      }

      v76 = [v26 initWithMajor:v27 minor:v28 micro:0];
      v77 = getVNProcessingDescriptorClass();
      v78 = [v77 descriptorForIdentifier:getVNInferenceNetworkIdentifierFaceprint() version:v76 error:v183];
      aNESpecificURL2 = [v78 ANESpecificURL];
      if (!aNESpecificURL2)
      {
        goto LABEL_124;
      }

      objc_opt_class();
      v79 = objc_opt_isKindOfClass();
      v31 = -31701;
      if (!configuration)
      {
        goto LABEL_121;
      }

      configurationCopy2 = configuration;
      if ((v79 & 1) == 0)
      {
        goto LABEL_121;
      }

      statusCopy2 = status;
      v144 = array;
      v150 = [provider espressoContextForExecutionTarget:3];
      onlyInputImage2 = [v78 onlyInputImage];
      v81 = objc_alloc_init(BWInferenceVideoFormatRequirements);
      -[BWVideoFormatRequirements setWidth:](v81, "setWidth:", [onlyInputImage2 pixelWidth]);
      -[BWVideoFormatRequirements setHeight:](v81, "setHeight:", [onlyInputImage2 pixelHeight]);
      v182 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(onlyInputImage2, "pixelFormatType")}];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v81, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v182 count:1]);
      [(BWVideoFormatRequirements *)v81 setBytesPerRowAlignment:64];
      [(BWInferenceVideoFormatRequirements *)v81 setDeviceOriented:1];
      maximumNumberOfFaces2 = [configurationCopy2 maximumNumberOfFaces];
      faceprintOutput = [v78 faceprintOutput];
      storageByteCount2 = [faceprintOutput storageByteCount];
      confidencesOutput = [v78 confidencesOutput];
      if (maximumNumberOfFaces2)
      {
        v84 = 0;
        while (1)
        {
          [(BWInferenceVideoFormatRequirements *)v81 setCropDescriptor:[[BWInferenceVisionFaceObservationsCropDescriptor alloc] initWithFaceIndex:v84]];
          v181 = v81;
          v85 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v181 count:1]);
          v86 = [MEMORY[0x1E695DFD8] set];
          v179 = @"ProviderIndex";
          v180 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v84];
          v87 = -[BWEspressoInferenceAdapter _newInferenceProviderWithType:networkURL:networkConfiguration:networkConfigurationByLayout:defaultLayout:portraitOrientationSupportEnabled:context:executionTarget:configuration:preventionReasons:resourceProvider:allowedCompressionDirection:concurrentSubmissionLimit:e5Allowed:updateMetadataWithCropRect:additionalCacheKeyAttributes:](self, 161, aNESpecificURL2, 0, 0, 0xFFFFFFFF, 0, v150, 3u, configurationCopy2, v86, provider, 0, 1, 0, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1]);
          if (!v87)
          {
            break;
          }

          v88 = v87;
          if (!-[BWE5MultipleLayoutInferenceProvider bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:](v87, "bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:", [onlyInputImage2 name], @"PrimaryFormat", v85))
          {
            goto LABEL_126;
          }

          providerCopy2 = provider;
          v90 = -[BWE5MultipleLayoutInferenceProvider bindEspressoOutput:asMetadataUsingKey:](v88, "bindEspressoOutput:asMetadataUsingKey:", [faceprintOutput name], 0x1F219EDD0);
          v91 = -[BWE5MultipleLayoutInferenceProvider bindEspressoOutput:asMetadataUsingKey:](v88, "bindEspressoOutput:asMetadataUsingKey:", [confidencesOutput name], 0x1F219EDF0);
          v92 = [BWEspressoInferenceFaceprintPropagator alloc];
          v93 = v90;
          provider = providerCopy2;
          [(BWE5MultipleLayoutInferenceProvider *)v88 setPropagatable:[(BWEspressoInferenceFaceprintPropagator *)v92 initWithFaceprintRequirement:v93 faceprintSizeBytes:storageByteCount2 confidenceRequirement:v91 maxFaces:maximumNumberOfFaces2 faceIndex:v84]];
          [v144 addObject:v88];
          if (maximumNumberOfFaces2 == ++v84)
          {
            goto LABEL_80;
          }
        }

LABEL_125:
        v31 = -31702;
        goto LABEL_81;
      }
    }

LABEL_80:
    v31 = 0;
LABEL_81:
    array = v144;
    status = statusCopy2;
    goto LABEL_121;
  }

  v15 = v14;
  if (v11 == 101)
  {
    objc_opt_class();
    v30 = objc_opt_isKindOfClass();
    v31 = -31701;
    if (!configuration || (v30 & 1) == 0)
    {
      goto LABEL_121;
    }

    if (self)
    {
      if (+[BWInferenceEngine isNeuralEngineSupported])
      {
        v32 = 3;
      }

      else
      {
        v32 = 1;
      }
    }

    else
    {
      v32 = 0;
    }

    providerCopy3 = provider;
    v34 = [provider espressoContextForExecutionTarget:v32];
    v35 = 0;
    if (self && v32 == 3)
    {
      v35 = [BWInferenceEngine allowedBufferCompressionDirectionForExecutionTarget:3];
    }

    v36 = (*(BWInferenceSmartCameraNetworkForVersion + 2))(BWInferenceSmartCameraNetworkForVersion, v10 & 0xFFFFFFFFFFFFLL, v15);
    if (!v36)
    {
      goto LABEL_124;
    }

    v37 = -[BWEspressoInferenceAdapter _newInferenceProviderWithType:networkURL:networkConfiguration:networkConfigurationByLayout:defaultLayout:portraitOrientationSupportEnabled:context:executionTarget:configuration:preventionReasons:resourceProvider:allowedCompressionDirection:concurrentSubmissionLimit:e5Allowed:updateMetadataWithCropRect:additionalCacheKeyAttributes:](self, 101, v36, 0, 0, 0xFFFFFFFF, 0, v34, v32, configuration, [MEMORY[0x1E695DFA8] setWithObjects:{@"BlurryInputBuffer", @"FilteredInputBuffer", 0}], providerCopy3, v35, 1, v15, 1, 0);
    if (v37)
    {
      v38 = v37;
      v39 = [BWInferenceVideoFormatRequirements defaultEspressoFormatRequirementsWithWidth:256 height:256];
      [v39 setVideoContentMode:1];
      [v39 setCropDescriptor:{+[BWInferenceFinalRectCropDescriptor finalCropRectDescriptorWithName:](BWInferenceFinalRectCropDescriptor, "finalCropRectDescriptorWithName:", @"SmartCam"}];
      v178 = v39;
      v40 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v178 count:1]);
      if (!v40)
      {
        v31 = -31711;
        goto LABEL_121;
      }

      if ((v10 & 0xFFFC) != 0)
      {
        v41 = @"image";
      }

      else
      {
        v41 = @"data";
      }

      v42 = [(BWE5MultipleLayoutInferenceProvider *)v38 bindEspressoInput:v41 fromAttachedMediaUsingKey:@"PrimaryFormat" withVideoFormat:v40];
      v43 = BWInferenceSmartCameraOutputs(v10);
      v177[0] = MEMORY[0x1E69E9820];
      v177[1] = 3221225472;
      v177[2] = __102__BWEspressoInferenceAdapter_inferenceProvidersForType_version_configuration_resourceProvider_status___block_invoke;
      v177[3] = &unk_1E799A178;
      v177[4] = v38;
      [v43 enumerateKeysAndObjectsUsingBlock:v177];
      if ([configuration clonedIntermediateMediaKey] && objc_msgSend(configuration, "clonedIntermediateMediaVideoFormatRequirements"))
      {
        v44 = [objc_msgSend(configuration "clonedIntermediateMediaVideoFormatRequirements")];
        if (v44 <= [objc_msgSend(v42 "videoFormat")])
        {
          goto LABEL_127;
        }

        v45 = [objc_msgSend(configuration "clonedIntermediateMediaVideoFormatRequirements")];
        if (v45 <= [objc_msgSend(v42 "videoFormat")])
        {
          goto LABEL_127;
        }

        clonedIntermediateMediaVideoFormatRequirements = [configuration clonedIntermediateMediaVideoFormatRequirements];
        v46 = -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", @"PrimaryFormat", +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&clonedIntermediateMediaVideoFormatRequirements count:1]));
        v47 = [BWInferenceVideoScalingProvider alloc];
        v175 = v42;
        v48 = -[BWInferenceVideoScalingProvider initWithInputRequirement:derivedFromRequirement:outputRequirements:enableFencing:filterType:](v47, "initWithInputRequirement:derivedFromRequirement:outputRequirements:enableFencing:filterType:", v46, 0, [MEMORY[0x1E695DEC8] arrayWithObjects:&v175 count:1], 1, 3);
        -[BWInferenceVideoScalingProvider bindOutputByCloningInputRequirement:toAttachedMediaUsingKey:](v48, "bindOutputByCloningInputRequirement:toAttachedMediaUsingKey:", v46, [configuration clonedIntermediateMediaKey]);
        [array addObject:v48];
      }

      v49 = array;
      v50 = v38;
LABEL_119:
      [v49 addObject:v50];
LABEL_120:
      v31 = 0;
      goto LABEL_121;
    }

LABEL_127:
    v31 = -31702;
    goto LABEL_121;
  }

  if (v11 == 104)
  {
    if (!+[BWInferenceEngine isNeuralEngineSupported])
    {
      goto LABEL_124;
    }

    v135 = v10;
    if (v10 >= 3u)
    {
      v16 = [provider espressoContextForExecutionTarget:3];
      if (!configuration)
      {
        goto LABEL_124;
      }

      v151 = v16;
      providerCopy4 = provider;
      enabledSemantics = [configuration enabledSemantics];
      v143 = array;
      if (v10 == 3)
      {
        v18 = +[BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:embedPlatformOrDeviceID:e5Bundle:](BWEspressoInferenceAdapter, [MEMORY[0x1E696AEC0] stringWithFormat:@"personsemantics-u8-v%u", 3], 0, v15);
        if (v18)
        {
          v19 = -[BWEspressoInferenceAdapter _newInferenceProviderWithType:networkURL:networkConfiguration:networkConfigurationByLayout:defaultLayout:portraitOrientationSupportEnabled:context:executionTarget:configuration:preventionReasons:resourceProvider:allowedCompressionDirection:concurrentSubmissionLimit:e5Allowed:updateMetadataWithCropRect:additionalCacheKeyAttributes:](self, 104, v18, 0, 0, 0xFFFFFFFF, 0, v151, 3u, configuration, [MEMORY[0x1E695DFD8] set], provider, 0, 1, v15, objc_msgSend(configuration, "appliesFinalCropRect"), 0);
          if (v19)
          {
            v20 = v19;
            goto LABEL_11;
          }

          goto LABEL_127;
        }

LABEL_124:
        v31 = -31701;
        goto LABEL_121;
      }

      if (v10 > 4u)
      {
        v124 = (enabledSemantics >> 7) & 1;
      }

      else
      {
        v124 = 0;
      }

      if ((v10 - 4) > 3u)
      {
        goto LABEL_120;
      }

      v125 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/System/Library/PrivateFrameworks/VisionCore.framework/%@", off_1E799A198[(v10 - 4)]];
      v126 = [MEMORY[0x1E695DFF8] fileURLWithPath:v125 isDirectory:1];
      if (v126)
      {
        v127 = v126;
        portraitOrientationSupportEnabled = [configuration portraitOrientationSupportEnabled];
        v129 = -[BWEspressoInferenceAdapter _newInferenceProviderWithType:networkURL:networkConfiguration:networkConfigurationByLayout:defaultLayout:portraitOrientationSupportEnabled:context:executionTarget:configuration:preventionReasons:resourceProvider:allowedCompressionDirection:concurrentSubmissionLimit:e5Allowed:updateMetadataWithCropRect:additionalCacheKeyAttributes:](self, 104, v127, 0, 0, 0xFFFFFFFF, portraitOrientationSupportEnabled, v151, 3u, configuration, [MEMORY[0x1E695DFD8] set], providerCopy4, 0, 0, 1, 0, 0);
        if (v129)
        {
          v20 = v129;
          if (!v124)
          {
            v19 = 0;
            goto LABEL_11;
          }

          v130 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/PrivateFrameworks/VisionCore.framework/HyperDETR-u8-v1.1.bundle" isDirectory:1];
          portraitOrientationSupportEnabled2 = [configuration portraitOrientationSupportEnabled];
          v19 = -[BWEspressoInferenceAdapter _newInferenceProviderWithType:networkURL:networkConfiguration:networkConfigurationByLayout:defaultLayout:portraitOrientationSupportEnabled:context:executionTarget:configuration:preventionReasons:resourceProvider:allowedCompressionDirection:concurrentSubmissionLimit:e5Allowed:updateMetadataWithCropRect:additionalCacheKeyAttributes:](self, 104, v130, 0, 0, 0xFFFFFFFF, portraitOrientationSupportEnabled2, v151, 3u, configuration, [MEMORY[0x1E695DFD8] set], providerCopy4, 0, 0, 1, 0, 0);
          if (v19)
          {
LABEL_11:
            v141 = v19;
            if (v19)
            {
              v21 = v20 == v19;
            }

            else
            {
              v21 = 1;
            }

            v23 = !v21 && v10 != 3;
            v134 = v23;
            v24 = objc_alloc_init(BWInferenceVideoFormatRequirements);
            [(BWVideoFormatRequirements *)v24 setDimensions:0x18000000200];
            [(BWVideoFormatRequirements *)v24 setSupportedPixelFormats:&unk_1F2249480];
            [(BWVideoFormatRequirements *)v24 setBytesPerRowAlignment:64];
            [(BWInferenceVideoFormatRequirements *)v24 setDeviceOriented:0];
            -[BWInferenceVideoFormatRequirements setLandscapeOriented:](v24, "setLandscapeOriented:", [configuration portraitOrientationSupportEnabled]);
            statusCopy3 = status;
            v148 = v20;
            if ([configuration appliesFinalCropRect])
            {
              v25 = [BWInferenceFinalRectCropDescriptor finalCropRectDescriptorWithName:@"PersonSemantics"];
            }

            else
            {
              v25 = 0;
            }

            [(BWInferenceVideoFormatRequirements *)v24 setCropDescriptor:v25];
            v169 = v24;
            v132 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v169 count:1]);

            v71 = objc_alloc_init(BWInferenceVideoFormatRequirements);
            configurationCopy3 = configuration;
            if ([configuration portraitOrientationSupportEnabled])
            {
              v72 = 0x20000000180;
            }

            else
            {
              v72 = 0x18000000200;
            }

            [(BWVideoFormatRequirements *)v71 setDimensions:v72];
            [(BWVideoFormatRequirements *)v71 setSupportedPixelFormats:&unk_1F2249498];
            [(BWVideoFormatRequirements *)v71 setBytesPerRowAlignment:64];
            [(BWInferenceVideoFormatRequirements *)v71 setDeviceOriented:0];
            v168 = v71;
            v153 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v168 count:1]);

            v166[0] = &unk_1F2245E08;
            v166[1] = &unk_1F2245E20;
            v167[0] = 0x1F219E750;
            v167[1] = 0x1F219E770;
            v166[2] = &unk_1F2245E38;
            v166[3] = &unk_1F2245E50;
            v167[2] = 0x1F219E7B0;
            v167[3] = 0x1F219E7D0;
            v166[4] = &unk_1F2245E68;
            v166[5] = &unk_1F2245E80;
            v167[4] = 0x1F219E790;
            v167[5] = 0x1F219E7F0;
            v166[6] = &unk_1F2245E98;
            v166[7] = &unk_1F2245EB0;
            v167[6] = 0x1F219E810;
            v167[7] = 0x1F219E850;
            v166[8] = &unk_1F2245EC8;
            v166[9] = &unk_1F2245EE0;
            v167[8] = 0x1F219E830;
            v167[9] = 0x1F219E870;
            v166[10] = &unk_1F2245EF8;
            v166[11] = &unk_1F2245F10;
            v167[10] = 0x1F219E890;
            v167[11] = 0x1F219E8B0;
            v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v167 forKeys:v166 count:12];
            if (v10 - 4 < 2)
            {
              v162[0] = &unk_1F2245E08;
              v162[1] = &unk_1F2245E20;
              v163[0] = @"person:0";
              v163[1] = @"hair:0";
              v162[2] = &unk_1F2245E38;
              v162[3] = &unk_1F2245E50;
              v163[2] = @"skin:0";
              v163[3] = @"teeth:0";
              v162[4] = &unk_1F2245E68;
              v162[5] = &unk_1F2245E80;
              v163[4] = @"semantics-estimator/split_channels_1__2";
              v163[5] = @"glasses:0";
              v162[6] = &unk_1F2245E98;
              v163[6] = @"sky:0";
              v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v163 forKeys:v162 count:7];
              v75 = @"image:0";
            }

            else
            {
              if (v10 - 6 >= 2)
              {
                v96 = v132;
                if (v10 == 3)
                {
                  v164[0] = &unk_1F2245E08;
                  v164[1] = &unk_1F2245E20;
                  v165[0] = @"person:0";
                  v165[1] = @"hair:0";
                  v164[2] = &unk_1F2245E38;
                  v164[3] = &unk_1F2245E50;
                  v165[2] = @"skin:0";
                  v165[3] = @"teeth:0";
                  v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v165 forKeys:v164 count:4];
                  v75 = @"image:0";
                }

                else
                {
                  v75 = 0;
                  v74 = 0;
                }

                v94 = 0x1E695D000uLL;
                v95 = v141;
LABEL_88:
                [(BWE5MultipleLayoutInferenceProvider *)v20 bindEspressoInput:v75 fromAttachedMediaUsingKey:@"PrimaryFormat" withVideoFormat:v96];
                if (v134)
                {
                  [(BWE5MultipleLayoutInferenceProvider *)v95 bindEspressoInput:@"image:0" fromAttachedMediaUsingKey:@"PrimaryFormat" withVideoFormat:v96];
                }

                array2 = [*(v94 + 3952) array];
                array3 = [*(v94 + 3952) array];
                v156 = 0u;
                v157 = 0u;
                v158 = 0u;
                v159 = 0u;
                v98 = [v74 countByEnumeratingWithState:&v156 objects:v155 count:16];
                if (v98)
                {
                  v99 = v98;
                  v100 = 0;
                  v101 = *v157;
                  do
                  {
                    for (i = 0; i != v99; ++i)
                    {
                      if (*v157 != v101)
                      {
                        objc_enumerationMutation(v74);
                      }

                      v103 = *(*(&v156 + 1) + 8 * i);
                      unsignedIntValue = [v103 unsignedIntValue];
                      v105 = -[BWE5MultipleLayoutInferenceProvider bindEspressoOutput:asAttachedMediaUsingKey:withVideoFormat:](v148, "bindEspressoOutput:asAttachedMediaUsingKey:withVideoFormat:", [v74 objectForKeyedSubscript:v103], objc_msgSend(v73, "objectForKeyedSubscript:", v103), v153);
                      if ((unsignedIntValue & enabledSemantics) != 0)
                      {
                        [array2 addObject:v105];
                      }

                      v100 |= unsignedIntValue;
                    }

                    v99 = [v74 countByEnumeratingWithState:&v156 objects:v155 count:16];
                  }

                  while (v99);
                  v106 = ~v100;
                  v94 = 0x1E695D000;
                  v95 = v141;
                }

                else
                {
                  v106 = -1;
                }

                array = v143;
                status = statusCopy3;
                v107 = v148;
                if (v135 >= 6)
                {
                  [array3 addObject:{-[BWE5MultipleLayoutInferenceProvider bindEspressoOutput:asMetadataUsingKey:](v148, "bindEspressoOutput:asMetadataUsingKey:", @"class_area", 0x1F219E8D0)}];
                }

                if ((enabledSemantics & v106 & 0xFFFFFF7F) == 0)
                {
                  array4 = [*(v94 + 3952) array];
                  array5 = [*(v94 + 3952) array];
                  v110 = array5;
                  if (v135 >= 5)
                  {
                    if (v95)
                    {
                      v136 = array5;
                      v111 = 1;
                      do
                      {
                        v111 = [MEMORY[0x1E696AEC0] stringWithFormat:@"person_instances_%d:0", v111];
                        v113 = -[BWE5MultipleLayoutInferenceProvider bindEspressoOutput:asAttachedMediaUsingKey:withVideoFormat:](v141, "bindEspressoOutput:asAttachedMediaUsingKey:withVideoFormat:", v111, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%d", 0x1F219E970, v111], v153);
                        if ((enabledSemantics & 0x80) != 0)
                        {
                          [array4 addObject:v113];
                        }

                        v111 = (v111 + 1);
                      }

                      while (v111 <= 4);
                      v95 = v141;
                      array = v143;
                      v110 = v136;
                      status = statusCopy3;
                      v107 = v148;
                      v114 = [(BWE5MultipleLayoutInferenceProvider *)v141 bindEspressoOutput:@"person_instance_confidences:0" asMetadataUsingKey:0x1F219E990];
                      if ((enabledSemantics & 0x80) != 0)
                      {
                        [v136 addObject:v114];
                        [v136 addObject:{-[BWE5MultipleLayoutInferenceProvider bindEspressoOutput:asMetadataUsingKey:](v141, "bindEspressoOutput:asMetadataUsingKey:", @"person_instance_boxes:0", 0x1F219E9B0)}];
                      }

                      else
                      {
                        [(BWE5MultipleLayoutInferenceProvider *)v141 bindEspressoOutput:@"person_instance_boxes:0" asMetadataUsingKey:0x1F219E9B0];
                      }
                    }

                    goto LABEL_116;
                  }

                  if ((enabledSemantics & 0x80) == 0)
                  {
LABEL_116:
                    if (v134)
                    {
                      v115 = [BWInferenceSampleBufferPropagator alloc];
                      [configurationCopy3 appliesFinalCropRect];
                      v116 = array2;
                      v117 = MEMORY[0x1E695E0F0];
                      v118 = [BWInferenceSampleBufferPropagator initWithVideoRequirements:v115 cloneRequirements:"initWithVideoRequirements:cloneRequirements:metadataRequirements:updateMetadataWithCropRect:" metadataRequirements:v116 updateMetadataWithCropRect:?];
                      [(BWE5MultipleLayoutInferenceProvider *)v107 setPropagatable:v118];

                      v119 = -[BWInferenceSampleBufferPropagator initWithVideoRequirements:cloneRequirements:metadataRequirements:updateMetadataWithCropRect:]([BWInferenceSampleBufferPropagator alloc], "initWithVideoRequirements:cloneRequirements:metadataRequirements:updateMetadataWithCropRect:", array4, v117, v110, [configurationCopy3 appliesFinalCropRect]);
                      [(BWE5MultipleLayoutInferenceProvider *)v95 setPropagatable:v119];

                      [array addObject:v107];
                      v49 = array;
                      v50 = v95;
                    }

                    else
                    {
                      [array2 addObjectsFromArray:array4];
                      [array3 addObjectsFromArray:v110];
                      v120 = [BWInferenceSampleBufferPropagator alloc];
                      appliesFinalCropRect = [configurationCopy3 appliesFinalCropRect];
                      v122 = [(BWInferenceSampleBufferPropagator *)v120 initWithVideoRequirements:array2 cloneRequirements:MEMORY[0x1E695E0F0] metadataRequirements:array3 updateMetadataWithCropRect:appliesFinalCropRect];
                      [(BWE5MultipleLayoutInferenceProvider *)v107 setPropagatable:v122];

                      v49 = array;
                      v50 = v107;
                    }

                    goto LABEL_119;
                  }
                }

                v31 = -31782;
                goto LABEL_121;
              }

              v160[0] = &unk_1F2245E08;
              v160[1] = &unk_1F2245E20;
              v161[0] = @"person";
              v161[1] = @"hair";
              v160[2] = &unk_1F2245E38;
              v160[3] = &unk_1F2245E50;
              v161[2] = @"skin";
              v161[3] = @"teeth";
              v160[4] = &unk_1F2245E80;
              v160[5] = &unk_1F2245E98;
              v161[4] = @"glasses";
              v161[5] = @"sky";
              v160[6] = &unk_1F2245EB0;
              v160[7] = &unk_1F2245EC8;
              v161[6] = @"foliage";
              v161[7] = @"water";
              v160[8] = &unk_1F2245EE0;
              v160[9] = &unk_1F2245EF8;
              v161[8] = @"beard";
              v161[9] = @"cat";
              v160[10] = &unk_1F2245F10;
              v161[10] = @"dog";
              v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v161 forKeys:v160 count:11];
              v75 = @"image";
            }

            v94 = 0x1E695D000;
            v95 = v141;
            v96 = v132;
            goto LABEL_88;
          }
        }

        v31 = -31702;
      }

      else
      {
        v31 = -31701;
      }

LABEL_121:
      if (status)
      {
        *status = v31;
      }

      return array;
    }

    goto LABEL_127;
  }

LABEL_26:
  v29 = [(BWEspressoInferenceAdapter *)self inferenceProviderForType:v11 version:v10 & 0xFFFFFFFFFFFFLL configuration:configuration resourceProvider:provider status:status];
  if (v29)
  {
    [array addObject:v29];
  }

  return array;
}

+ ($2ACC23B9A21F50F5CC728381CA870116)findAvailableVersion:(id)version defaultOverrideKey:(id)key versionLocator:(id)locator e5Bundle:(BOOL)bundle
{
  if (![version count])
  {
    +[BWEspressoInferenceAdapter findAvailableVersion:defaultOverrideKey:versionLocator:e5Bundle:];
LABEL_7:
    v8 = 0;
    v9 = 0;
    v7 = 0;
    return BWInferenceVersionMake(v7, v8, v9);
  }

  v12 = 0;
  v11 = 0;
  if ((BWVersionMakeWithObject([version objectAtIndexedSubscript:0], &v11) & 1) == 0)
  {
    +[BWEspressoInferenceAdapter findAvailableVersion:defaultOverrideKey:versionLocator:e5Bundle:];
    goto LABEL_7;
  }

  v7 = v11;
  v8 = HIWORD(v11);
  v9 = v12;
  return BWInferenceVersionMake(v7, v8, v9);
}

- (id)inferenceProviderForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status
{
  v10 = *&version.var0;
  v13 = [objc_opt_class() allowE5ForInferenceType:*&type];
  v14 = 0;
  networkURL = 0;
  v16 = v13;
  switch(type)
  {
    case 'f':
      networkURL = [BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:@"personsegmentation-u8" embedPlatformOrDeviceID:1];
      if (!networkURL)
      {
        goto LABEL_148;
      }

      v17 = +[BWInferenceEngine isNeuralEngineSupported];
      if (v17)
      {
        v18 = 3;
      }

      else
      {
        v18 = 1;
      }

      v19 = [provider espressoContextForExecutionTarget:v18];
      [MEMORY[0x1E695DFD8] set];
      OUTLINED_FUNCTION_6_65();
      OUTLINED_FUNCTION_5_70();
      OUTLINED_FUNCTION_0_95();
      networkURL = [(BWEspressoInferenceAdapter *)v20 _newInferenceProviderWithType:v21 networkURL:v22 networkConfiguration:v23 networkConfigurationByLayout:v24 defaultLayout:v25 portraitOrientationSupportEnabled:v26 context:v19 executionTarget:v18 configuration:v346 preventionReasons:v347 resourceProvider:v348 allowedCompressionDirection:v349 concurrentSubmissionLimit:v350 e5Allowed:v351 updateMetadataWithCropRect:SHIBYTE(v351) additionalCacheKeyAttributes:v355];
      if (!networkURL)
      {
        goto LABEL_214;
      }

      v27 = objc_alloc_init(BWInferenceVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v27 setWidth:512];
      [(BWVideoFormatRequirements *)v27 setHeight:384];
      [(BWVideoFormatRequirements *)v27 setSupportedPixelFormats:&unk_1F2249300];
      [(BWVideoFormatRequirements *)v27 setBytesPerRowAlignment:64];
      [OUTLINED_FUNCTION_15_33() setDeviceOriented:?];
      v395 = v27;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v395 count:1];
      [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

      [OUTLINED_FUNCTION_13_35() bindEspressoInput:? fromAttachedMediaUsingKey:? withVideoFormat:?];
      if (v17)
      {
        v28 = 1278226536;
      }

      else
      {
        v28 = 1278226534;
      }

      v29 = objc_alloc_init(BWInferenceVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v29 setWidth:512];
      [(BWVideoFormatRequirements *)v29 setHeight:384];
      v394 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v28];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v394 count:1];
      [OUTLINED_FUNCTION_8() setSupportedPixelFormats:?];
      [(BWVideoFormatRequirements *)v29 setBytesPerRowAlignment:64];
      [OUTLINED_FUNCTION_15_33() setDeviceOriented:?];
      v393 = v29;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v393 count:1];
      [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

      goto LABEL_127;
    case 'g':
      v95 = v10 & 0xFFFF00000000;
      v96 = v10 == 1 && WORD1(v10) == 1;
      if (!v96 || v95)
      {
        v14 = 0;
        networkURL = 0;
        if (v10 != 1 || WORD1(v10) || v95)
        {
          goto LABEL_174;
        }

        networkURL = [BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:@"rgbbasedpersonsegmentation-30-u8" embedPlatformOrDeviceID:0];
        if (!networkURL)
        {
          goto LABEL_148;
        }

        v259 = [provider espressoContextForExecutionTarget:1];
        [MEMORY[0x1E695DFD8] set];
        OUTLINED_FUNCTION_5_70();
        OUTLINED_FUNCTION_0_95();
        networkURL = [(BWEspressoInferenceAdapter *)v260 _newInferenceProviderWithType:v261 networkURL:v262 networkConfiguration:v263 networkConfigurationByLayout:v264 defaultLayout:v265 portraitOrientationSupportEnabled:v266 context:v259 executionTarget:1u configuration:v346 preventionReasons:v347 resourceProvider:v348 allowedCompressionDirection:v349 concurrentSubmissionLimit:1 e5Allowed:0 updateMetadataWithCropRect:0 additionalCacheKeyAttributes:0];
        if (networkURL)
        {
          v267 = OUTLINED_FUNCTION_39_15();
          OUTLINED_FUNCTION_21_26(v267, v268);
          OUTLINED_FUNCTION_28_13();
          [configuration setSupportedPixelFormats:&unk_1F2249360];
          OUTLINED_FUNCTION_27_14();
          configurationCopy = configuration;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&configurationCopy count:1];
          [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

          [OUTLINED_FUNCTION_13_35() bindEspressoInput:? fromAttachedMediaUsingKey:? withVideoFormat:?];
          v269 = objc_alloc_init(MEMORY[0x71]);
          OUTLINED_FUNCTION_21_26(v269, v270);
          OUTLINED_FUNCTION_28_13();
          [configuration setSupportedPixelFormats:&unk_1F2249378];
          OUTLINED_FUNCTION_27_14();
          configurationCopy2 = configuration;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&configurationCopy2 count:1];
          [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

          goto LABEL_127;
        }
      }

      else
      {
        networkURL = [BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:@"rgbbasedpersonsegmentation-u8" embedPlatformOrDeviceID:1];
        if (!networkURL)
        {
          goto LABEL_148;
        }

        v97 = OUTLINED_FUNCTION_10_44();
        [MEMORY[0x1E695DFD8] set];
        OUTLINED_FUNCTION_6_65();
        OUTLINED_FUNCTION_2_94();
        OUTLINED_FUNCTION_0_95();
        networkURL = [(BWEspressoInferenceAdapter *)v98 _newInferenceProviderWithType:v99 networkURL:v100 networkConfiguration:v101 networkConfigurationByLayout:v102 defaultLayout:v103 portraitOrientationSupportEnabled:v104 context:v97 executionTarget:v343 configuration:v346 preventionReasons:v347 resourceProvider:v348 allowedCompressionDirection:0 concurrentSubmissionLimit:v350 e5Allowed:v351 updateMetadataWithCropRect:SHIBYTE(v351) additionalCacheKeyAttributes:v355];
        if (networkURL)
        {
          v105 = OUTLINED_FUNCTION_39_15();
          OUTLINED_FUNCTION_21_26(v105, v106);
          OUTLINED_FUNCTION_28_13();
          [configuration setSupportedPixelFormats:&unk_1F2249318];
          OUTLINED_FUNCTION_27_14();
          configurationCopy3 = configuration;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&configurationCopy3 count:1];
          [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

          [OUTLINED_FUNCTION_13_35() bindEspressoInput:? fromAttachedMediaUsingKey:? withVideoFormat:?];
          v107 = objc_alloc_init(*(v7 + 112));
          OUTLINED_FUNCTION_21_26(v107, v108);
          OUTLINED_FUNCTION_28_13();
          [configuration setSupportedPixelFormats:&unk_1F2249330];
          OUTLINED_FUNCTION_27_14();
          configurationCopy4 = configuration;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&configurationCopy4 count:1];
          [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

          [OUTLINED_FUNCTION_13_35() bindEspressoOutput:? asAttachedMediaUsingKey:? withVideoFormat:?];
          v109 = objc_alloc_init(*(v7 + 112));
          OUTLINED_FUNCTION_21_26(v109, v110);
          OUTLINED_FUNCTION_28_13();
          [configuration setSupportedPixelFormats:&unk_1F2249348];
          OUTLINED_FUNCTION_27_14();
          configurationCopy5 = configuration;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&configurationCopy5 count:1];
          [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

          goto LABEL_127;
        }
      }

      goto LABEL_214;
    case 'h':
    case 'k':
    case 'n':
    case 'p':
    case 'q':
    case 'r':
    case 's':
    case 'u':
      goto LABEL_174;
    case 'i':
      if (self)
      {
        v298 = [BWInferenceEngine allowedBufferCompressionDirectionForExecutionTarget:3];
      }

      else
      {
        v298 = 0;
      }

      objc_opt_class();
      if (OUTLINED_FUNCTION_19())
      {
        configurationCopy6 = configuration;
      }

      else
      {
        configurationCopy6 = 0;
      }

      v300 = MEMORY[0x1E696AEC0];
      useLowFrameRateOptimizedNetwork = [configurationCopy6 useLowFrameRateOptimizedNetwork];
      v302 = &stru_1F216A3D0;
      if (useLowFrameRateOptimizedNetwork)
      {
        v302 = @"-lowfps";
      }

      if (!+[BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:embedPlatformOrDeviceID:e5Bundle:](BWEspressoInferenceAdapter, [v300 stringWithFormat:@"personsemantics-preview%@", v302], 0, v16))
      {
        goto LABEL_147;
      }

      v303 = OUTLINED_FUNCTION_10_44();
      [MEMORY[0x1E695DFD8] set];
      OUTLINED_FUNCTION_11_42();
      OUTLINED_FUNCTION_2_94();
      OUTLINED_FUNCTION_1_106();
      networkURL = [(BWEspressoInferenceAdapter *)v304 _newInferenceProviderWithType:v305 networkURL:v306 networkConfiguration:v307 networkConfigurationByLayout:v308 defaultLayout:v309 portraitOrientationSupportEnabled:v310 context:v303 executionTarget:v345 configuration:v346 preventionReasons:v347 resourceProvider:v348 allowedCompressionDirection:v298 concurrentSubmissionLimit:v350 e5Allowed:v16 updateMetadataWithCropRect:0 additionalCacheKeyAttributes:0];
      if (!networkURL)
      {
        goto LABEL_214;
      }

      v311 = OUTLINED_FUNCTION_39_15();
      OUTLINED_FUNCTION_21_26(v311, v312);
      [configuration setHeight:192];
      [configuration setSupportedPixelFormats:&unk_1F2249390];
      [OUTLINED_FUNCTION_15_33() setDeviceOriented:?];
      [configuration setRotationDegrees:{objc_msgSend(configurationCopy6, "inputRotationAngle")}];
      if ([configurationCopy6 cropColorInputToPrimaryCaptureRect])
      {
        v313 = objc_alloc_init(BWInferencePrimaryCaptureRectDescriptor);
        [OUTLINED_FUNCTION_8() setCropDescriptor:?];
      }

      configurationCopy7 = configuration;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&configurationCopy7 count:1];
      [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

      v314 = [OUTLINED_FUNCTION_13_35() bindEspressoInput:? fromAttachedMediaUsingKey:? withVideoFormat:?];
      if ([configurationCopy6 propagateColorInput])
      {
        [networkURL bindOutputByCloningInputRequirement:v314 toAttachedMediaUsingKey:0x1F219EA50];
      }

      v315 = objc_alloc_init(*(v7 + 112));
      OUTLINED_FUNCTION_21_26(v315, v316);
      [v314 setHeight:192];
      [v314 setSupportedPixelFormats:&unk_1F22493A8];
      [OUTLINED_FUNCTION_15_33() setDeviceOriented:?];
      v386 = v314;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v386 count:1];
      [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

      [configurationCopy6 alternativeStreamingPersonSegmentationMaskKey];
      [OUTLINED_FUNCTION_13_35() bindEspressoOutput:? asAttachedMediaUsingKey:? withVideoFormat:?];
      v317 = objc_alloc_init(*(v7 + 112));
      OUTLINED_FUNCTION_21_26(v317, v318);
      [v314 setHeight:192];
      [v314 setSupportedPixelFormats:&unk_1F22493C0];
      [OUTLINED_FUNCTION_15_33() setDeviceOriented:?];
      v385 = v314;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v385 count:1];
      [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

      [configurationCopy6 alternativeStreamingSkinSegmentationMaskKey];
      goto LABEL_127;
    case 'j':
      if (v10 != 2)
      {
        if (v10 != 1)
        {
LABEL_136:
          networkURL = 0;
          goto LABEL_173;
        }

        objc_opt_class();
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_16_34();
        if (configuration)
        {
          if (v113)
          {
            depthPrioritization = [configuration depthPrioritization];
            v115 = [objc_alloc(getADMonocularPipelineParametersClass()) init];
            v116 = [objc_msgSend(objc_alloc(getADMonocularPipelineClass()) initWithInputPrioritization:depthPrioritization andParameters:{v115), "inferenceDescriptor"}];
            networkURL = [v116 networkURL];
            if (networkURL)
            {
              if ([v116 configurationNameForLayout:1])
              {
                v117 = OUTLINED_FUNCTION_10_44();
                v118 = [MEMORY[0x1E695DFD8] set];
                appliesFinalCropRect = [configuration appliesFinalCropRect];
                OUTLINED_FUNCTION_11_42();
                OUTLINED_FUNCTION_33_16();
                OUTLINED_FUNCTION_3_82();
                networkURL = [(BWEspressoInferenceAdapter *)v119 _newInferenceProviderWithType:v120 networkURL:v121 networkConfiguration:v122 networkConfigurationByLayout:v123 defaultLayout:v124 portraitOrientationSupportEnabled:v125 context:v117 executionTarget:v343 configuration:v346 preventionReasons:v118 resourceProvider:provider allowedCompressionDirection:0 concurrentSubmissionLimit:v350 e5Allowed:0 updateMetadataWithCropRect:appliesFinalCropRect additionalCacheKeyAttributes:0];
                if (!networkURL)
                {
                  goto LABEL_214;
                }

                [objc_msgSend(objc_msgSend(v116 "colorInput")];
                v127 = v126;
                v129 = v128;
                v130 = objc_alloc_init(BWInferenceVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v130 setWidth:v127];
                [(BWVideoFormatRequirements *)v130 setHeight:v129];
                v383 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(objc_msgSend(v116, "colorInput"), "imageDescriptor"), "pixelFormat")}];
                [MEMORY[0x1E695DEC8] arrayWithObjects:&v383 count:1];
                [OUTLINED_FUNCTION_7() setSupportedPixelFormats:?];
                [OUTLINED_FUNCTION_18_25() setDeviceOriented:?];
                if ([configuration appliesFinalCropRect])
                {
                  [BWInferenceFinalRectCropDescriptor finalCropRectDescriptorWithName:@"MonocularDepth"];
                  [OUTLINED_FUNCTION_7() setCropDescriptor:?];
                }

                v382 = v130;
                [MEMORY[0x1E695DEC8] arrayWithObjects:&v382 count:1];
                [OUTLINED_FUNCTION_8() formatByResolvingRequirements:?];
                [objc_msgSend(v116 "colorInput")];
                [OUTLINED_FUNCTION_31_16() bindEspressoInput:? fromAttachedMediaUsingKey:? withVideoFormat:?];
                [objc_msgSend(objc_msgSend(v116 "depthOutput")];
                v132 = v131;
                v134 = v133;
                v135 = objc_alloc_init(BWInferenceVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v135 setWidth:v132];
                [(BWVideoFormatRequirements *)v135 setHeight:v134];
                v381 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(objc_msgSend(v116, "depthOutput"), "imageDescriptor"), "pixelFormat")}];
                [MEMORY[0x1E695DEC8] arrayWithObjects:&v381 count:1];
                [OUTLINED_FUNCTION_8() setSupportedPixelFormats:?];
                [OUTLINED_FUNCTION_15_33() setDeviceOriented:?];
                v380 = v135;
                [MEMORY[0x1E695DEC8] arrayWithObjects:&v380 count:1];
                [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

                [objc_msgSend(v116 "depthOutput")];
                goto LABEL_127;
              }

              goto LABEL_211;
            }
          }
        }

        goto LABEL_174;
      }

      [MEMORY[0x1E695DF90] dictionary];
      networkURL = objc_alloc_init(getADMonocularStillsPipelineParametersClass());
      if (!networkURL)
      {
LABEL_212:
        v14 = -31710;
        goto LABEL_174;
      }

      depthDataDimensions = [configuration depthDataDimensions];
      if (depthDataDimensions < 1 || SHIDWORD(depthDataDimensions) < 1)
      {
LABEL_211:
        networkURL = 0;
        goto LABEL_212;
      }

      depthDataDimensions2 = [configuration depthDataDimensions];
      v278 = [configuration depthDataDimensions] >> 32;
      [getADImageDimensionsClass() imageDimensionsWithWidth:depthDataDimensions2 height:v278];
      [OUTLINED_FUNCTION_4() setRequestedDimensions:?];
      if ([configuration depthDataDimensions] == 768 && objc_msgSend(configuration, "depthDataDimensions") >> 32 == 576)
      {
        v330 = 0;
      }

      else
      {
        if ([configuration depthDataDimensions] != 576 || objc_msgSend(configuration, "depthDataDimensions") >> 32 != 768)
        {
LABEL_146:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_8_50();
          FigDebugAssert3();
LABEL_147:
          networkURL = 0;
LABEL_148:
          v14 = -31701;
          goto LABEL_174;
        }

        v330 = 1;
      }

      v331 = (&bweia_monocularStillsPipelineForInferenceConfiguration_sDescriptors + 48 * v330);
      *&block = MEMORY[0x1E69E9820];
      *(&block + 1) = 3221225472;
      *&v397 = __bweia_monocularStillsPipelineForInferenceConfiguration_block_invoke;
      *(&v397 + 1) = &unk_1E7990178;
      configurationCopy8 = configuration;
      v399 = v331;
      if (*v331 != -1)
      {
        dispatch_once(v331, &block);
      }

      v332 = OUTLINED_FUNCTION_10_44();
      v333 = [MEMORY[0x1E695DFD8] set];
      appliesFinalCropRect2 = [configuration appliesFinalCropRect];
      if (v16)
      {
        v352 = 1;
        v350 = 0;
      }

      else
      {
        v352 = 0;
        OUTLINED_FUNCTION_11_42();
      }

      OUTLINED_FUNCTION_33_16();
      OUTLINED_FUNCTION_3_82();
      networkURL = [(BWEspressoInferenceAdapter *)v334 _newInferenceProviderWithType:v335 networkURL:v336 networkConfiguration:v337 networkConfigurationByLayout:v338 defaultLayout:v339 portraitOrientationSupportEnabled:v340 context:v332 executionTarget:v343 configuration:v346 preventionReasons:v333 resourceProvider:provider allowedCompressionDirection:0 concurrentSubmissionLimit:v350 e5Allowed:v352 updateMetadataWithCropRect:appliesFinalCropRect2 additionalCacheKeyAttributes:0];
      if (networkURL)
      {
        v341 = objc_alloc_init(BWInferenceVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v341 setWidth:depthDataDimensions2];
        [(BWVideoFormatRequirements *)v341 setHeight:v278];
        v379 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v331 + 7)];
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v379 count:1];
        [OUTLINED_FUNCTION_7() setSupportedPixelFormats:?];
        [OUTLINED_FUNCTION_18_25() setDeviceOriented:?];
        if ([configuration appliesFinalCropRect])
        {
          [BWInferenceFinalRectCropDescriptor finalCropRectDescriptorWithName:@"MonocularDepth"];
          [OUTLINED_FUNCTION_7() setCropDescriptor:?];
        }

        [OUTLINED_FUNCTION_18_25() setRotationDegrees:?];
        v378 = v341;
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v378 count:1];
        [networkURL bindEspressoInput:v331[4] fromAttachedMediaUsingKey:@"PrimaryFormat" withVideoFormat:objc_msgSend(OUTLINED_FUNCTION_8(), "formatByResolvingRequirements:")];
        v342 = objc_alloc_init(BWInferenceVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v342 setWidth:depthDataDimensions2];
        [(BWVideoFormatRequirements *)v342 setHeight:v278];
        v377 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v331 + 6)];
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v377 count:1];
        [OUTLINED_FUNCTION_8() setSupportedPixelFormats:?];
        [OUTLINED_FUNCTION_15_33() setDeviceOriented:?];
        v376 = v342;
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v376 count:1];
        [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

LABEL_127:
        [OUTLINED_FUNCTION_13_35() bindEspressoOutput:? asAttachedMediaUsingKey:? withVideoFormat:?];
        goto LABEL_173;
      }

      goto LABEL_214;
    case 'l':
      objc_opt_class();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_16_34();
      if (!configuration || (v51 & 1) == 0)
      {
        goto LABEL_174;
      }

      if (!+[BWInferenceEngine isNeuralEngineSupported])
      {
        goto LABEL_94;
      }

      v52 = [objc_msgSend(objc_alloc(getADStereoPipelineClass()) initWithInputAlignment:objc_msgSend(configuration andPrioritization:{"fsdNetStereoImagesAlignment"), objc_msgSend(configuration, "disparityPrioritization")), "inferenceDescriptor"}];
      networkURL = [v52 networkURL];
      if (!networkURL)
      {
        goto LABEL_174;
      }

      v358 = [objc_msgSend(v52 "referenceInput")];
      [objc_msgSend(objc_msgSend(v52 "referenceInput")];
      v54 = v53;
      v56 = v55;
      v57 = [objc_msgSend(objc_msgSend(v52 "referenceInput")];
      v356 = [objc_msgSend(v52 "auxiliaryInput")];
      [objc_msgSend(objc_msgSend(v52 "auxiliaryInput")];
      v59 = v58;
      v61 = v60;
      v62 = [objc_msgSend(objc_msgSend(v52 "auxiliaryInput")];
      v63 = [objc_msgSend(v52 "disparityOutput")];
      [objc_msgSend(objc_msgSend(v52 "disparityOutput")];
      v65 = v64;
      v67 = v66;
      v68 = [objc_msgSend(objc_msgSend(v52 "disparityOutput")];
      if (v57 != 1380411457 || v62 != 1380411457 || v68 != 1751411059)
      {
        networkURL = 0;
        goto LABEL_210;
      }

      v71 = OUTLINED_FUNCTION_10_44();
      [MEMORY[0x1E695DFD8] set];
      OUTLINED_FUNCTION_6_65();
      OUTLINED_FUNCTION_2_94();
      OUTLINED_FUNCTION_0_95();
      networkURL = [(BWEspressoInferenceAdapter *)v72 _newInferenceProviderWithType:v73 networkURL:v74 networkConfiguration:v75 networkConfigurationByLayout:v76 defaultLayout:v77 portraitOrientationSupportEnabled:v78 context:v71 executionTarget:v343 configuration:v346 preventionReasons:v347 resourceProvider:v348 allowedCompressionDirection:0 concurrentSubmissionLimit:v350 e5Allowed:v351 updateMetadataWithCropRect:SHIBYTE(v351) additionalCacheKeyAttributes:v355];
      if (!networkURL)
      {
        goto LABEL_214;
      }

      v79 = objc_alloc_init(BWInferenceVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v79 setWidth:v54];
      [(BWVideoFormatRequirements *)v79 setHeight:v56];
      v375 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1380411457];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v375 count:1];
      [OUTLINED_FUNCTION_7() setSupportedPixelFormats:?];
      [(BWVideoFormatRequirements *)v79 setBytesPerRowAlignment:64];
      [OUTLINED_FUNCTION_18_25() setDeviceOriented:?];
      v374 = v79;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v374 count:1];
      v80 = [OUTLINED_FUNCTION_8() formatByResolvingRequirements:?];

      v81 = objc_alloc_init(BWInferenceVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v81 setWidth:v59];
      [(BWVideoFormatRequirements *)v81 setHeight:v61];
      v373 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1380411457];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v373 count:1];
      [OUTLINED_FUNCTION_28() setSupportedPixelFormats:?];
      OUTLINED_FUNCTION_38_12();
      [(BWInferenceVideoFormatRequirements *)v81 setDeviceOriented:0];
      v372 = v81;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v372 count:1];
      v82 = [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

      v83 = objc_alloc_init(BWInferenceVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v83 setWidth:v65];
      [(BWVideoFormatRequirements *)v83 setHeight:v67];
      OUTLINED_FUNCTION_30_11();
      v371 = [v84 numberWithUnsignedInt:?];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v371 count:1];
      [OUTLINED_FUNCTION_28() setSupportedPixelFormats:?];
      OUTLINED_FUNCTION_38_12();
      [(BWInferenceVideoFormatRequirements *)v83 setDeviceOriented:0];
      v370 = v83;
      v85 = OUTLINED_FUNCTION_37_12([MEMORY[0x1E695DEC8] arrayWithObjects:&v370 count:1]);

      if (![networkURL bindEspressoInput:v358 fromAttachedMediaUsingKey:0x1F219E9F0 withVideoFormat:v80])
      {
        goto LABEL_210;
      }

      v14 = -31711;
      if ([networkURL bindEspressoInput:v356 fromAttachedMediaUsingKey:0x1F219EA10 withVideoFormat:v82])
      {
        if ([networkURL bindEspressoOutput:v63 asAttachedMediaUsingKey:0x1F219EA30 withVideoFormat:v85])
        {
          v14 = 0;
        }

        else
        {
          v14 = -31711;
        }
      }

      goto LABEL_174;
    case 'm':
      objc_opt_class();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_16_34();
      if (!configuration || (v136 & 1) == 0)
      {
        goto LABEL_174;
      }

      v137 = [provider espressoContextForExecutionTarget:3];
      videoDepthAlgorithm = [configuration videoDepthAlgorithm];
      if (videoDepthAlgorithm > 3)
      {
        goto LABEL_94;
      }

      v139 = +[BWVideoDepthInferenceConfiguration pceDisparityColorInferenceDescriptorForVideoDepthLayout:inputSource:](BWVideoDepthInferenceConfiguration, "pceDisparityColorInferenceDescriptorForVideoDepthLayout:inputSource:", [configuration videoDepthLayout], qword_1AD056490[videoDepthAlgorithm]);
      if (!v139)
      {
        networkURL = 0;
        goto LABEL_214;
      }

      v140 = v139;
      var7 = v139->var7;
      v142 = [configuration concurrencyWidth] + 1;
      [MEMORY[0x1E695DFD8] set];
      OUTLINED_FUNCTION_5_70();
      v344 = v143;
      OUTLINED_FUNCTION_3_82();
      v151 = [(BWEspressoInferenceAdapter *)v144 _newInferenceProviderWithType:v145 networkURL:v146 networkConfiguration:v147 networkConfigurationByLayout:v148 defaultLayout:v149 portraitOrientationSupportEnabled:v150 context:v137 executionTarget:v344 configuration:v346 preventionReasons:v347 resourceProvider:v348 allowedCompressionDirection:v349 concurrentSubmissionLimit:v142 e5Allowed:0 updateMetadataWithCropRect:0 additionalCacheKeyAttributes:0];
      networkURL = v151;
      if (!v151)
      {
        goto LABEL_214;
      }

      if (!var7)
      {
        goto LABEL_174;
      }

      v366[0] = MEMORY[0x1E69E9820];
      v366[1] = 3221225472;
      v367 = __101__BWEspressoInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke;
      v368 = &unk_1E799A150;
      v369 = v151;
      OUTLINED_FUNCTION_9_51(*&v140->var9.var0, *&v140->var9.var1.height);
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_20_21();
      if (!__101__BWEspressoInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke(v152, v153, v154, v155, v156, v157, v158))
      {
        goto LABEL_210;
      }

      OUTLINED_FUNCTION_9_51(*&v140->var10.var0, *&v140->var10.var1.height);
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_20_21();
      if (!v159())
      {
        goto LABEL_210;
      }

      v160 = *&v140->var11.var1.height;
      block = *&v140->var11.var0;
      v397 = v160;
      if (!v367(v366, &block, 1111970369, 1, 0x1F219EC10, 0, &unk_1F2249408))
      {
        goto LABEL_210;
      }

      OUTLINED_FUNCTION_9_51(*&v140->var12.var0, *&v140->var12.var1.height);
      OUTLINED_FUNCTION_30_11();
      if (!v161())
      {
        goto LABEL_210;
      }

      OUTLINED_FUNCTION_9_51(*&v140->var13.var0, *&v140->var13.var1.height);
      OUTLINED_FUNCTION_20_21();
      v14 = -31711;
      if (v162())
      {
        OUTLINED_FUNCTION_9_51(*&v140->var14.var0, *&v140->var14.var1.height);
        v164 = v163();
LABEL_118:
        if (v164)
        {
          v14 = 0;
        }

        else
        {
          v14 = -31711;
        }
      }

      goto LABEL_174;
    case 'o':
      objc_opt_class();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_16_34();
      if (!configuration || (v195 & 1) == 0)
      {
        goto LABEL_174;
      }

      v196 = [configuration concurrencyWidth] + 1;
      v197 = OUTLINED_FUNCTION_10_44();
      v198 = [objc_alloc(getADStereoV2PipelineParametersClass()) init];
      v199 = [objc_msgSend(objc_alloc(getADStereoV2PipelineClass()) initWithParameters:{v198), "inferenceDescriptor"}];
      [v199 networkURL];
      [MEMORY[0x1E695DFD8] set];
      OUTLINED_FUNCTION_2_94();
      OUTLINED_FUNCTION_1_106();
      networkURL = [(BWEspressoInferenceAdapter *)v200 _newInferenceProviderWithType:v201 networkURL:v202 networkConfiguration:v203 networkConfigurationByLayout:v204 defaultLayout:v205 portraitOrientationSupportEnabled:v206 context:v197 executionTarget:v343 configuration:v346 preventionReasons:v347 resourceProvider:v348 allowedCompressionDirection:0 concurrentSubmissionLimit:v196 e5Allowed:0 updateMetadataWithCropRect:0 additionalCacheKeyAttributes:0];
      if (!networkURL)
      {
        goto LABEL_214;
      }

      [v199 referenceInput];
      concurrencyWidth = [OUTLINED_FUNCTION_25_0() concurrencyWidth];
      [-[BWEspressoInferenceAdapter imageDescriptor](self "imageDescriptor")];
      OUTLINED_FUNCTION_12_41();
      if (!bweia_addRequirement_base(self, @"refInput", &unk_1F22493D8, networkURL, concurrencyWidth, v208, v209))
      {
        goto LABEL_210;
      }

      [v199 auxiliaryInput];
      concurrencyWidth2 = [OUTLINED_FUNCTION_25_0() concurrencyWidth];
      [-[BWEspressoInferenceAdapter imageDescriptor](self "imageDescriptor")];
      OUTLINED_FUNCTION_12_41();
      if (!bweia_addRequirement_base(self, @"auxInput", &unk_1F22493D8, networkURL, concurrencyWidth2, v211, v212))
      {
        goto LABEL_210;
      }

      [objc_msgSend(objc_msgSend(v199 "prevColorFeaturesInput")];
      OUTLINED_FUNCTION_12_41();
      OUTLINED_FUNCTION_4_72();
      if (!bweia_addRequirement_base(v213, v214, v215, v216, v217, v218, v219))
      {
        goto LABEL_210;
      }

      [objc_msgSend(objc_msgSend(v199 "colorFeaturesOutput")];
      OUTLINED_FUNCTION_12_41();
      OUTLINED_FUNCTION_4_72();
      if (!bweia_addRequirement_base(v220, v221, v222, v223, v224, v225, v226))
      {
        goto LABEL_210;
      }

      [objc_msgSend(objc_msgSend(v199 "prevDepthFeaturesInput")];
      OUTLINED_FUNCTION_12_41();
      OUTLINED_FUNCTION_4_72();
      if (!bweia_addRequirement_base(v227, v228, v229, v230, v231, v232, v233))
      {
        goto LABEL_210;
      }

      depthFeaturesOutput = [v199 depthFeaturesOutput];
      [objc_msgSend(depthFeaturesOutput "imageDescriptor")];
      OUTLINED_FUNCTION_12_41();
      OUTLINED_FUNCTION_4_72();
      if (!bweia_addRequirement_base(v235, v236, v237, v238, v239, v240, v241))
      {
        goto LABEL_210;
      }

      [v199 disparityOutput];
      concurrencyWidth3 = [OUTLINED_FUNCTION_25_0() concurrencyWidth];
      [objc_msgSend(depthFeaturesOutput "imageDescriptor")];
      OUTLINED_FUNCTION_12_41();
      if (!bweia_addRequirement_base(depthFeaturesOutput, @"espressoOutput", 0, networkURL, concurrencyWidth3, v243, v244))
      {
        goto LABEL_210;
      }

      [objc_msgSend(objc_msgSend(v199 "temporalSmoothingCurrentFeaturesRatioMinInput")];
      OUTLINED_FUNCTION_12_41();
      OUTLINED_FUNCTION_4_72();
      v14 = -31711;
      if (!bweia_addRequirement_base(v245, v246, v247, v248, v249, v250, v251))
      {
        goto LABEL_174;
      }

      [objc_msgSend(objc_msgSend(v199 "temporalSmoothingPreviousFeaturesRatioMinInput")];
      OUTLINED_FUNCTION_12_41();
      OUTLINED_FUNCTION_4_72();
      v164 = bweia_addRequirement_base(v252, v253, v254, v255, v256, v257, v258);
      goto LABEL_118;
    case 't':
      objc_opt_class();
      if ((OUTLINED_FUNCTION_19() & 1) == 0)
      {
        goto LABEL_146;
      }

      if (!+[BWInferenceEngine isNeuralEngineSupported])
      {
        goto LABEL_147;
      }

      version = [configuration version];
      if (version != v10)
      {
        goto LABEL_136;
      }

      version2 = [configuration version];
      v88 = HIWORD(version2);
      if (HIWORD(version2) != WORD1(v10))
      {
        goto LABEL_136;
      }

      v89 = version2;
      if (([configuration version] >> 32) != WORD2(v10))
      {
        goto LABEL_136;
      }

      networkURL = (*(BWInferenceTextLocalizationNetworkForVersion + 2))(BWInferenceTextLocalizationNetworkForVersion, v10 & 0xFFFFFFFFFFFFLL, v16);
      if (!networkURL)
      {
        goto LABEL_148;
      }

      if (version == 1 && v89 < 0x10000)
      {
        v357 = 0;
        v90 = 0;
        v359 = 1;
        v91 = 384.0;
        v92 = 512.0;
        v93 = @"image";
        if (!self)
        {
LABEL_54:
          v94 = 0;
          goto LABEL_162;
        }
      }

      else
      {
        if (version > 1 || version == 1 && (v88 == 3 || v89 >= 0x50000))
        {
          v90 = @"P3rotation";
        }

        else
        {
          v90 = 0;
        }

        v279 = version == 1;
        if ((v89 & 0xFFFC0000) == 0)
        {
          v279 = 0;
        }

        if (version > 1)
        {
          v279 = 1;
        }

        v359 = !v279;
        if (v279)
        {
          v280 = @"P3font_size";
        }

        else
        {
          v280 = 0;
        }

        v357 = v280;
        v93 = @"input_image";
        v91 = 448.0;
        v92 = 608.0;
        if (!self)
        {
          goto LABEL_54;
        }
      }

      v94 = [BWInferenceEngine allowedBufferCompressionDirectionForExecutionTarget:3];
LABEL_162:
      v281 = OUTLINED_FUNCTION_10_44();
      [MEMORY[0x1E695DFD8] set];
      OUTLINED_FUNCTION_6_65();
      OUTLINED_FUNCTION_2_94();
      OUTLINED_FUNCTION_0_95();
      networkURL = [(BWEspressoInferenceAdapter *)v282 _newInferenceProviderWithType:v283 networkURL:v284 networkConfiguration:v285 networkConfigurationByLayout:v286 defaultLayout:v287 portraitOrientationSupportEnabled:v288 context:v281 executionTarget:v343 configuration:v346 preventionReasons:v347 resourceProvider:v348 allowedCompressionDirection:v94 concurrentSubmissionLimit:v350 e5Allowed:v351 updateMetadataWithCropRect:SHIBYTE(v351) additionalCacheKeyAttributes:v355];
      if (networkURL)
      {
        v289 = [BWInferenceVideoFormatRequirements defaultEspressoFormatRequirementsWithWidth:v92 height:v91];
        [v289 setVideoContentMode:0];
        v290 = objc_alloc_init(BWInferencePrimaryCaptureRectDescriptor);
        [OUTLINED_FUNCTION_7() setCropDescriptor:?];
        if ([configuration inferenceInputUsesPortraitOrientation])
        {
          [v289 setRotationDegrees:90];
        }

        [OUTLINED_FUNCTION_18_25() setDeviceOriented:?];
        v384 = v289;
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v384 count:1];
        v291 = [OUTLINED_FUNCTION_28() formatByResolvingRequirements:?];
        if (v291)
        {
          [networkURL bindEspressoInput:v93 fromAttachedMediaUsingKey:@"PrimaryFormat" withVideoFormat:v291];
          v292 = [networkURL bindEspressoOutput:@"pred_boxes" asMetadataUsingKeys:0];
          v293 = [networkURL bindEspressoOutput:@"scores" asMetadataUsingKeys:0];
          if (v90)
          {
            v294 = [networkURL bindEspressoOutput:v90 asMetadataUsingKeys:0];
          }

          else
          {
            v294 = 0;
          }

          if (v359)
          {
            v295 = 0;
          }

          else
          {
            v295 = [networkURL bindEspressoOutput:v357 asMetadataUsingKeys:0];
          }

          v296 = [[BWEspressoInferenceBoundingBoxPropagator alloc] initWithBoxRequirement:v292 scoreRequirement:v293 angularOffsetRequirement:v294 fontSizeRequirement:v295 configuration:configuration toInferenceResultKey:0x1F219E730];
          [OUTLINED_FUNCTION_4() setPropagatable:?];
LABEL_173:
          v14 = 0;
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_8_50();
          FigDebugAssert3();
LABEL_210:
          v14 = -31711;
        }
      }

      else
      {
LABEL_214:
        v14 = -31702;
      }

LABEL_174:
      if (status)
      {
        *status = v14;
      }

      return networkURL;
    case 'v':
      objc_opt_class();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_16_34();
      if (!configuration || (v111 & 1) == 0)
      {
        goto LABEL_174;
      }

      if (!+[BWInferenceEngine isNeuralEngineSupported])
      {
        goto LABEL_94;
      }

      if ([configuration masksDimensions] == 256 && objc_msgSend(configuration, "masksDimensions") >> 32 == 256)
      {
        v112 = @"anst_refiner256x256-v2";
      }

      else if (v10 == 1)
      {
        v112 = @"anst_refiner256-v1.1";
      }

      else
      {
        if (v10 != 2)
        {
LABEL_94:
          networkURL = 0;
          goto LABEL_174;
        }

        v112 = @"anst_refiner256x192-v2";
      }

      networkURL = [BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:v112 embedPlatformOrDeviceID:0 e5Bundle:v16];
      if (!networkURL)
      {
        goto LABEL_174;
      }

      v319 = OUTLINED_FUNCTION_10_44();
      [MEMORY[0x1E695DFD8] set];
      OUTLINED_FUNCTION_11_42();
      OUTLINED_FUNCTION_2_94();
      OUTLINED_FUNCTION_0_95();
      networkURL = [(BWEspressoInferenceAdapter *)v320 _newInferenceProviderWithType:v321 networkURL:v322 networkConfiguration:v323 networkConfigurationByLayout:v324 defaultLayout:v325 portraitOrientationSupportEnabled:v326 context:v319 executionTarget:v343 configuration:v346 preventionReasons:v347 resourceProvider:v348 allowedCompressionDirection:0 concurrentSubmissionLimit:v350 e5Allowed:v16 updateMetadataWithCropRect:0 additionalCacheKeyAttributes:0];
      if (!networkURL)
      {
        goto LABEL_214;
      }

      OUTLINED_FUNCTION_39_15();
      -[BWEspressoInferenceAdapter setWidth:](self, "setWidth:", [OUTLINED_FUNCTION_25_0() masksDimensions]);
      -[BWEspressoInferenceAdapter setHeight:](self, "setHeight:", [configuration masksDimensions] >> 32);
      [(BWEspressoInferenceAdapter *)self setSupportedPixelFormats:&unk_1F2249438];
      [(BWEspressoInferenceAdapter *)self setBytesPerRowAlignment:64];
      [(BWEspressoInferenceAdapter *)self setIncludesInvalidContent:1];
      selfCopy = self;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy count:1];
      [networkURL bindEspressoInput:@"input_image" fromAttachedMediaUsingKey:@"PrimaryFormat" withVideoFormat:objc_msgSend(OUTLINED_FUNCTION_28(), "formatByResolvingRequirements:")];
      v327 = objc_alloc_init(*(v7 + 112));
      [v327 setWidth:{objc_msgSend(configuration, "masksDimensions")}];
      [v327 setHeight:{objc_msgSend(configuration, "masksDimensions") >> 32}];
      [v327 setSupportedPixelFormats:&unk_1F2249450];
      OUTLINED_FUNCTION_38_12();
      v363 = v327;
      v328 = OUTLINED_FUNCTION_37_12([MEMORY[0x1E695DEC8] arrayWithObjects:&v363 count:1]);
      [networkURL bindEspressoInput:@"input_mask_person" fromAttachedMediaUsingKey:0x1F219EE10 withVideoFormat:v328];
      [networkURL bindEspressoInput:@"input_mask_hair" fromAttachedMediaUsingKey:0x1F219EE30 withVideoFormat:v328];
      [networkURL bindEspressoInput:@"input_mask_skin" fromAttachedMediaUsingKey:0x1F219EE50 withVideoFormat:v328];
      [networkURL bindEspressoInput:@"last_mask" fromAttachedMediaUsingKey:0x1F219EE10 withVideoFormat:v328];
      v329 = objc_alloc_init(*(v7 + 112));
      [v329 setWidth:{objc_msgSend(configuration, "masksDimensions")}];
      [v329 setHeight:{objc_msgSend(configuration, "masksDimensions") >> 32}];
      OUTLINED_FUNCTION_38_12();
      [v329 setSupportedPixelFormats:&unk_1F2249468];
      v362 = v329;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v362 count:1];
      [OUTLINED_FUNCTION_8() formatByResolvingRequirements:?];
      [OUTLINED_FUNCTION_31_16() bindEspressoOutput:? asAttachedMediaUsingKey:? withVideoFormat:?];
      [OUTLINED_FUNCTION_31_16() bindEspressoOutput:? asAttachedMediaUsingKey:? withVideoFormat:?];
      [OUTLINED_FUNCTION_31_16() bindEspressoOutput:? asAttachedMediaUsingKey:? withVideoFormat:?];

      goto LABEL_173;
    case 'w':
      if (!v13)
      {
        goto LABEL_147;
      }

      objc_opt_class();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_16_34();
      if (!configuration || (v165 & 1) == 0)
      {
        goto LABEL_174;
      }

      v166 = OUTLINED_FUNCTION_10_44();
      monocularVideoInferenceDescriptor = [configuration monocularVideoInferenceDescriptor];
      [MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(objc_msgSend(monocularVideoInferenceDescriptor isDirectory:{"networkURL"), "path"), 1}];
      [monocularVideoInferenceDescriptor configurationNameForLayout:255];
      [MEMORY[0x1E695DFD8] set];
      OUTLINED_FUNCTION_34_18();
      OUTLINED_FUNCTION_2_94();
      OUTLINED_FUNCTION_3_82();
      networkURL = [(BWEspressoInferenceAdapter *)v168 _newInferenceProviderWithType:v169 networkURL:v170 networkConfiguration:v171 networkConfigurationByLayout:v172 defaultLayout:v173 portraitOrientationSupportEnabled:v174 context:v166 executionTarget:v343 configuration:v346 preventionReasons:v347 resourceProvider:v348 allowedCompressionDirection:v349 concurrentSubmissionLimit:v350 e5Allowed:v351 updateMetadataWithCropRect:SHIBYTE(v351) additionalCacheKeyAttributes:v355];
      if (!networkURL)
      {
        goto LABEL_214;
      }

      if (!bweia_addRequirement_cmm([monocularVideoInferenceDescriptor colorInput], 0x1F219EC10, &unk_1F22493F0, networkURL, objc_msgSend(configuration, "concurrencyWidth")))
      {
        goto LABEL_210;
      }

      [monocularVideoInferenceDescriptor prevColorFeaturesInput];
      OUTLINED_FUNCTION_4_72();
      if (!bweia_addRequirement_cmm(v175, v176, v177, v178, v179))
      {
        goto LABEL_210;
      }

      [monocularVideoInferenceDescriptor colorFeaturesOutput];
      OUTLINED_FUNCTION_4_72();
      if (!bweia_addRequirement_cmm(v180, v181, v182, v183, v184))
      {
        goto LABEL_210;
      }

      [monocularVideoInferenceDescriptor prevDepthFeaturesInput];
      OUTLINED_FUNCTION_4_72();
      if (!bweia_addRequirement_cmm(v185, v186, v187, v188, v189))
      {
        goto LABEL_210;
      }

      [monocularVideoInferenceDescriptor depthFeaturesOutput];
      OUTLINED_FUNCTION_4_72();
      if (!bweia_addRequirement_cmm(v190, v191, v192, v193, v194))
      {
        goto LABEL_210;
      }

      [monocularVideoInferenceDescriptor disparityOutput];
      v14 = -31711;
      if (!OUTLINED_FUNCTION_25_19([configuration concurrencyWidth]))
      {
        goto LABEL_174;
      }

      [monocularVideoInferenceDescriptor outputScale];
      v164 = OUTLINED_FUNCTION_25_19([configuration concurrencyWidth]);
      goto LABEL_118;
    case 'x':
      objc_opt_class();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_16_34();
      if (!configuration)
      {
        goto LABEL_174;
      }

      if ((v40 & 1) == 0)
      {
        goto LABEL_174;
      }

      networkURL = +[BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:embedPlatformOrDeviceID:e5Bundle:](BWEspressoInferenceAdapter, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"smu", @"dgenet-v1"], 0, 1);
      if (!networkURL)
      {
        goto LABEL_174;
      }

      v41 = [MEMORY[0x1E695DFA8] setWithObjects:{@"BlurryInputBuffer", 0}];
      if (+[BWInferenceEngine isNeuralEngineSupported])
      {
        v42 = 3;
      }

      else
      {
        v42 = 1;
      }

      [provider espressoContextForExecutionTarget:v42];
      OUTLINED_FUNCTION_34_18();
      OUTLINED_FUNCTION_0_95();
      networkURL = [(BWEspressoInferenceAdapter *)v43 _newInferenceProviderWithType:v44 networkURL:v45 networkConfiguration:v46 networkConfigurationByLayout:v47 defaultLayout:v48 portraitOrientationSupportEnabled:v49 context:v50 executionTarget:v42 configuration:configuration preventionReasons:v41 resourceProvider:provider allowedCompressionDirection:v349 concurrentSubmissionLimit:v350 e5Allowed:v351 updateMetadataWithCropRect:SHIBYTE(v351) additionalCacheKeyAttributes:v355];
      if (!networkURL)
      {
        goto LABEL_214;
      }

      v361 = BWLensSmudgeDetectionInputVideoFormatRequirements(0);
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v361 count:1];
      [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];
      [OUTLINED_FUNCTION_25_0() inferenceInputMediaKey];
      [OUTLINED_FUNCTION_13_35() bindEspressoInput:? fromAttachedMediaUsingKey:? withVideoFormat:?];
      [networkURL bindEspressoOutput:objc_msgSend(MEMORY[0x1E696AEC0] asMetadataUsingKey:{"stringWithFormat:", @"%@%@", @"smu", @"dge_probabilities", 0x1F219E9D0}];
      goto LABEL_173;
    default:
      if (type != 151)
      {
        goto LABEL_174;
      }

      if (!+[BWInferenceEngine isNeuralEngineSupported])
      {
        goto LABEL_147;
      }

      objc_opt_class();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_16_34();
      if (!configuration)
      {
        goto LABEL_174;
      }

      if ((v30 & 1) == 0)
      {
        goto LABEL_174;
      }

      networkURL = [BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:@"vcp_human_pose_lite_v2" embedPlatformOrDeviceID:1];
      if (!networkURL)
      {
        goto LABEL_174;
      }

      v31 = OUTLINED_FUNCTION_10_44();
      [OUTLINED_FUNCTION_15_33() setPriority:?];
      [MEMORY[0x1E695DFD8] set];
      OUTLINED_FUNCTION_6_65();
      OUTLINED_FUNCTION_2_94();
      OUTLINED_FUNCTION_3_82();
      networkURL = [(BWEspressoInferenceAdapter *)v32 _newInferenceProviderWithType:v33 networkURL:v34 networkConfiguration:v35 networkConfigurationByLayout:v36 defaultLayout:v37 portraitOrientationSupportEnabled:v38 context:v31 executionTarget:v343 configuration:v346 preventionReasons:v347 resourceProvider:v348 allowedCompressionDirection:0 concurrentSubmissionLimit:v350 e5Allowed:v351 updateMetadataWithCropRect:SHIBYTE(v351) additionalCacheKeyAttributes:v355];
      if (!networkURL)
      {
        goto LABEL_214;
      }

      v39 = [configuration targetAspectRatio] == 4 || objc_msgSend(configuration, "targetAspectRatio") == 2;
      v271 = objc_alloc_init(BWInferenceVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v271 setWidth:256];
      [(BWVideoFormatRequirements *)v271 setHeight:160];
      [(BWVideoFormatRequirements *)v271 setSupportedPixelFormats:&unk_1F2249420];
      [(BWVideoFormatRequirements *)v271 setBytesPerRowAlignment:64];
      [OUTLINED_FUNCTION_18_25() setDeviceOriented:?];
      if (v39)
      {
        v272 = 90;
      }

      else
      {
        v272 = 0;
      }

      [(BWInferenceVideoFormatRequirements *)v271 setRotationDegrees:v272];
      v365 = v271;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v365 count:1];
      v273 = [OUTLINED_FUNCTION_28() formatByResolvingRequirements:?];

      if (![networkURL bindEspressoInput:@"input" fromAttachedMediaUsingKey:@"PrimaryFormat" withVideoFormat:v273])
      {
        goto LABEL_210;
      }

      v274 = -[BWInferenceHumanPosePropagator initWithOutputRequirement:rotateOutput:]([BWInferenceHumanPosePropagator alloc], "initWithOutputRequirement:rotateOutput:", [networkURL bindEspressoOutput:@"output" asMetadataUsingKey:0x1F219EBD0], v39);
      [networkURL setPropagatable:v274];
      [networkURL setTensorMemoryProvider:v274];

      goto LABEL_173;
  }
}

- (BWE5MultipleLayoutInferenceProvider)_newInferenceProviderWithType:(uint64_t)type networkURL:(uint64_t)l networkConfiguration:(void *)configuration networkConfigurationByLayout:(unsigned int)layout defaultLayout:(uint64_t)defaultLayout portraitOrientationSupportEnabled:(uint64_t)enabled context:(unsigned int)context executionTarget:(void *)self0 configuration:(uint64_t)self1 preventionReasons:(uint64_t)self2 resourceProvider:(int)self3 allowedCompressionDirection:(uint64_t)self4 concurrentSubmissionLimit:(char)self5 e5Allowed:(char)self6 updateMetadataWithCropRect:(uint64_t)self7 additionalCacheKeyAttributes:
{
  if (!self)
  {
    return 0;
  }

  v21 = a2 - 101;
  v22 = (a2 - 101) > 0x3C;
  v44[0] = @"InferenceType";
  v44[1] = @"InferenceModelURL";
  v45[0] = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v45[1] = type;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v23 = [OUTLINED_FUNCTION_28() dictionaryWithDictionary:?];
  v24 = v23;
  if (rect)
  {
    [v23 addEntriesFromDictionary:rect];
  }

  v25 = [(BWTiledEspressoInferenceAdapter *)self _generateInferenceProviderCacheKeyWithAttributes:v24];
  if (!v25)
  {
    return 0;
  }

  v26 = v25;
  v27 = v22 | (0xFFFFFFFFFFFFFF6uLL >> v21);
  v43.receiver = self;
  v43.super_class = BWEspressoInferenceAdapter;
  if (v27 & 1 | ((objc_msgSendSuper2(&v43, sel_shouldCacheInferenceProvider) & 1) == 0))
  {
    goto LABEL_9;
  }

  v28 = [objc_msgSend(self "cachedInferenceProviderByCacheKey")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BWE5MultipleLayoutInferenceProvider *)v28 setPortraitOrientationSupportEnabled:defaultLayout];
  }

  if (!v28)
  {
LABEL_9:
    if (limit)
    {
      if (!configuration || (v29 = [configuration count], layout == -1) || !v29)
      {
        v34 = [BWE5InferenceProvider alloc];
        [target priority];
        BYTE4(v37) = allowed;
        LODWORD(v37) = provider;
        OUTLINED_FUNCTION_29_14();
        v28 = [v35 initWithType:a11 networkURL:reasons networkConfiguration:v37 context:? executionTarget:? schedulerPriority:? preventionReasons:? resourceProvider:? allowedCompressionDirection:? updateMetadataWithCropRect:?];
        [(BWE5MultipleLayoutInferenceProvider *)v28 setPortraitOrientationSupportEnabled:defaultLayout];
        if (v28)
        {
LABEL_18:
          [(BWE5MultipleLayoutInferenceProvider *)v28 setCustomInferenceIdentifier:v26];
          v42.receiver = self;
          v42.super_class = BWEspressoInferenceAdapter;
          if (!(v27 & 1 | ((objc_msgSendSuper2(&v42, sel_shouldCacheInferenceProvider) & 1) == 0)))
          {
            v41.receiver = self;
            v41.super_class = BWEspressoInferenceAdapter;
            [objc_msgSendSuper2(&v41 cachedInferenceProviderByCacheKey)];
          }

          return v28;
        }

        return 0;
      }

      if (defaultLayout)
      {
        return 0;
      }

      BYTE4(v36) = allowed;
      LODWORD(v36) = 0;
      v30 = -[BWE5MultipleLayoutInferenceProvider initWithType:networkURL:networkConfigurationsByLayout:defaultLayout:executionTarget:schedulerPriority:preventionReasons:allowedCompressionDirection:updateMetadataWithCropRect:]([BWE5MultipleLayoutInferenceProvider alloc], "initWithType:networkURL:networkConfigurationsByLayout:defaultLayout:executionTarget:schedulerPriority:preventionReasons:allowedCompressionDirection:updateMetadataWithCropRect:", a2, type, configuration, layout, context, [target priority], a11, v36);
    }

    else
    {
      if (defaultLayout)
      {
        return 0;
      }

      v31 = [BWEspressoInferenceProvider alloc];
      [target priority];
      LOBYTE(v38) = allowed;
      LODWORD(v37) = provider;
      OUTLINED_FUNCTION_29_14();
      v30 = [v32 initWithType:a11 networkURL:reasons networkConfiguration:v37 context:direction executionTarget:v38 schedulerPriority:? preventionReasons:? resourceProvider:? allowedCompressionDirection:? concurrentSubmissionLimit:? updateMetadataWithCropRect:?];
    }

    v28 = v30;
    if (v30)
    {
      goto LABEL_18;
    }

    return 0;
  }

  return v28;
}

+ (id)espressoNetworkURLForPlatformedResourceBaseName:(uint64_t)name embedPlatformOrDeviceID:(uint64_t)d e5Bundle:
{
  objc_opt_self();
  if (a2)
  {
    v6 = [+[CMInferenceUtils sharedInstance](CMInferenceUtils getNetworkPath:"getNetworkPath:isE5:" isE5:a2, d];
    if (v6)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __101__BWEspressoInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*a2 != a3)
  {
    return 0;
  }

  v13 = *(a2 + 24);
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v16 setWidth:v14];
  [(BWVideoFormatRequirements *)v16 setHeight:v15];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
  [(BWVideoFormatRequirements *)v16 setSupportedPixelFormats:OUTLINED_FUNCTION_26_18(v17, v18, v19, v20, v21, v22, v23, v24, v38, v40)];
  [(BWVideoFormatRequirements *)v16 setSupportedColorSpaceProperties:a7];
  [(BWInferenceVideoFormatRequirements *)v16 setDeviceOriented:0];
  v25 = [(BWVideoFormatRequirements *)v16 setBytesPerRowAlignment:64];
  v33 = OUTLINED_FUNCTION_36_16(v25, v26, v27, v28, v29, v30, v31, v32, v39);
  v34 = OUTLINED_FUNCTION_37_12(v33);
  v35 = *(a1 + 32);
  if (a4)
  {
    v36 = [v35 bindEspressoInput:v13 fromAttachedMediaUsingKey:a5 withVideoFormat:v34];
  }

  else
  {
    v36 = [v35 bindEspressoOutput:v13 asAttachedMediaUsingKey:a5 withVideoFormat:v34];
  }

  if (!v36)
  {
    return 0;
  }

  if (a6)
  {
    [*(a1 + 32) bindOutputByCloningInputRequirement:v36 toAttachedMediaUsingKey:a6];
  }

  return 1;
}

+ (id)locateNetworkFileFromFormat:(id)format defaultOverrideKey:(id)key version:(id)version e5Bundle:(BOOL)bundle
{
  bundleCopy = bundle;
  v7 = *&version.var0;
  formatCopy = format;
  if ([format containsString:{@"PLATFORM", key}])
  {
    if (![formatCopy hasSuffix:@".PLATFORM"])
    {
      return 0;
    }

    v9 = [formatCopy rangeOfString:@".PLATFORM"];
    v11 = v10;
    if (v9 != [formatCopy length] - 9 || v11 != 9)
    {
      return 0;
    }

    formatCopy = [formatCopy substringToIndex:{objc_msgSend(formatCopy, "length") - 9}];
  }

  v13 = [formatCopy stringByReplacingOccurrencesOfString:@"MAJOR" withString:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", v7), "description")}];
  v14 = [v13 stringByReplacingOccurrencesOfString:@"MINOR" withString:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", WORD1(v7)), "description")}];
  v15 = [v14 stringByReplacingOccurrencesOfString:@"PATCH" withString:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", WORD2(v7)), "description")}];

  return [BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:v15 embedPlatformOrDeviceID:0 e5Bundle:bundleCopy];
}

- (void)inferenceProvidersForType:version:configuration:resourceProvider:status:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *getVisionCoreInferenceNetworkIdentifierCamGaze(void)") description:{@"BWVisionCoreSoftLinking.h", 23, @"%s", dlerror()}];
  __break(1u);
}

+ (uint64_t)findAvailableVersion:defaultOverrideKey:versionLocator:e5Bundle:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

+ (uint64_t)findAvailableVersion:defaultOverrideKey:versionLocator:e5Bundle:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end