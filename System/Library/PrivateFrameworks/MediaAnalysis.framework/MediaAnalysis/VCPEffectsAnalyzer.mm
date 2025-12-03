@interface VCPEffectsAnalyzer
+ (BOOL)isAutoLoopFramworkAvailable;
+ (id)gatingResultKeyToIndex;
+ (id)gatingTypeKeys;
+ (id)getResultIndex:(id)index;
- (VCPEffectsAnalyzer)initWithAnalysisResults:(id)results;
- (VCPEffectsAnalyzer)initWithFlagHasFaceOrPet:(BOOL)pet;
- (id)matchingNodeForSceneClassification:(id)classification inSceneNames:(id)names;
- (id)performanSceneClassificationOfImageFileAtURL:(id)l;
- (int)analyzeAsset:(id)asset onDemand:(BOOL)demand cancel:(id)cancel statsFlags:(unint64_t *)flags results:(id *)results;
- (int)enumerateMatchingScenesOfAsset:(id)asset forLongExposureUsingBlock:(id)block;
- (unint64_t)generateStatsToBeCollectedFrom:(id)from;
- (void)reportLivePhotoEffectAnalysisResults:(id)results;
@end

@implementation VCPEffectsAnalyzer

- (VCPEffectsAnalyzer)initWithAnalysisResults:(id)results
{
  resultsCopy = results;
  v5 = [resultsCopy objectForKeyedSubscript:@"FaceResults"];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [resultsCopy objectForKeyedSubscript:@"PetsResults"];
    v6 = v7 != 0;
  }

  v8 = [(VCPEffectsAnalyzer *)self initWithFlagHasFaceOrPet:v6];
  return v8;
}

- (VCPEffectsAnalyzer)initWithFlagHasFaceOrPet:(BOOL)pet
{
  v8.receiver = self;
  v8.super_class = VCPEffectsAnalyzer;
  v4 = [(VCPEffectsAnalyzer *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_hasFaceOrPet = pet;
    v6 = v4;
  }

  return v5;
}

+ (BOOL)isAutoLoopFramworkAvailable
{
  if (isAutoLoopFramworkAvailable_once_token != -1)
  {
    +[VCPEffectsAnalyzer isAutoLoopFramworkAvailable];
  }

  return (isAutoLoopFramworkAvailable_available & 1) == 0;
}

void __49__VCPEffectsAnalyzer_isAutoLoopFramworkAvailable__block_invoke()
{
  v1 = MEMORY[0x1E698E208];
  if (!MEMORY[0x1E698E208])
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v0 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AutoLoop framework not available", v0, 2u);
    }

    isAutoLoopFramworkAvailable_available = 1;
  }
}

- (int)analyzeAsset:(id)asset onDemand:(BOOL)demand cancel:(id)cancel statsFlags:(unint64_t *)flags results:(id *)results
{
  demandCopy = demand;
  v119[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  cancelCopy = cancel;
  if (+[VCPEffectsAnalyzer isAutoLoopFramworkAvailable])
  {
    if ([assetCopy isLivePhoto])
    {
      originalMovie = [assetCopy originalMovie];
      if (!originalMovie)
      {
        v118 = @"LivePhotoEffectsResults";
        v115 = @"attributes";
        v113[0] = @"loopSuggestionState";
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
        v114[0] = v25;
        v113[1] = @"longExposureSuggestionState";
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
        v114[1] = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:2];
        v116 = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        v117 = v28;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
        v119[0] = v29;
        *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:&v118 count:1];

        v24 = 0;
LABEL_84:

        goto LABEL_85;
      }

      resultsCopy = results;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v106 = 0;
      v105 = 0;
      AutoLoopSettingsForAsset = createAutoLoopSettingsForAsset();
      v15 = MEMORY[0x1E696AEC0];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v18 = [v15 stringWithFormat:@"autoloop-tmp-%@", uUIDString];

      v19 = NSTemporaryDirectory();
      v91 = v18;
      v20 = [v19 stringByAppendingPathComponent:v18];

      v94 = [MEMORY[0x1E695DFF8] fileURLWithPath:v20];
      BundleDefaultGatingClassifierURL = createBundleDefaultGatingClassifierURL();
      mainFileURL = [assetCopy mainFileURL];
      if (mainFileURL)
      {
        mainFileURL2 = [assetCopy mainFileURL];
      }

      else
      {
        mainFileURL2 = 0;
      }

      v89 = mainFileURL2;
      cf = BundleDefaultGatingClassifierURL;
      autoloopSettingsSetGating();
      if (!demandCopy)
      {
        autoloopSettingsSetOptimizeForMemoryUse();
        autoloopSettingsSetDisableStabilizationGPU();
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      if (![defaultManager fileExistsAtPath:v20])
      {
LABEL_22:
        v103 = 0;
        v39 = [defaultManager createDirectoryAtURL:v94 withIntermediateDirectories:1 attributes:0 error:&v103];
        v40 = v103;
        v41 = v40;
        if (!v39)
        {
          v24 = -50;
          goto LABEL_65;
        }

        if (v106)
        {
          v24 = 0;
          goto LABEL_65;
        }

        v87 = v40;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __70__VCPEffectsAnalyzer_analyzeAsset_onDemand_cancel_statsFlags_results___block_invoke;
        aBlock[3] = &unk_1E8350A98;
        v102 = cancelCopy;
        v42 = _Block_copy(aBlock);
        *buf = xmmword_1C9F63320;
        v86 = v42;
        v106 = runLiveAnalysisPipeline();
        v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v20, @"gatingData.plist"];
        v84 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v85];
        v43 = [v84 objectForKeyedSubscript:@"gatingResults"];
        v44 = v43;
        if (!v106)
        {
          v82 = v43;
          v100 = 0;
          GatingResult = getGatingResult();
          v81 = 0;
          if (GatingResult == 1)
          {
            v83 = 2;
            if (!self->_hasFaceOrPet && v82)
            {
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                *v99 = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Reading activity from gatingDataPlist.", v99, 2u);
              }

              v46 = [v82 objectForKeyedSubscript:@"loopActivityDecision"];
              v47 = [@"ALGatingResultPass" isEqualToString:v46];
              v48 = 1;
              if (!v47)
              {
                v48 = 2;
              }

              v83 = v48;
            }
          }

          else
          {
            v83 = 2;
          }

          v98 = 0;
          v79 = 2;
          v49 = getGatingResult();
          v80 = 0;
          if (v49 == 1)
          {
            if (self->_hasFaceOrPet)
            {
              v79 = 2;
            }

            else
            {
              v50 = [MEMORY[0x1E695DFA8] set];
              v96[0] = MEMORY[0x1E69E9820];
              v96[1] = 3221225472;
              v96[2] = __70__VCPEffectsAnalyzer_analyzeAsset_onDemand_cancel_statsFlags_results___block_invoke_366;
              v96[3] = &unk_1E8350AC0;
              v51 = v50;
              v97 = v51;
              [(VCPEffectsAnalyzer *)self enumerateMatchingScenesOfAsset:assetCopy forLongExposureUsingBlock:v96];
              v52 = [v51 count];
              v53 = 1;
              if (!v52)
              {
                v53 = 2;
              }

              v79 = v53;
              if (v52 && demandCopy)
              {
                [v51 allObjects];
                v76 = defaultManager;
                v55 = v54 = originalMovie;
                [dictionary setObject:v55 forKeyedSubscript:@"livePhotoEffectsMatchingScenes"];

                originalMovie = v54;
                defaultManager = v76;
              }
            }
          }

          v78 = originalMovie;
          if (demandCopy)
          {
            v95[1] = 0;
            getGatingResult();
            v77 = 0;
            dictionary2 = [MEMORY[0x1E695DF90] dictionary];
            if (v81)
            {
              stringValue = [&unk_1F49BDEB8 stringValue];
              [dictionary2 setObject:v81 forKeyedSubscript:stringValue];
            }

            if (v77)
            {
              stringValue2 = [&unk_1F49BDED0 stringValue];
              [dictionary2 setObject:v77 forKeyedSubscript:stringValue2];
            }

            if (v80)
            {
              stringValue3 = [&unk_1F49BDEE8 stringValue];
              [dictionary2 setObject:v80 forKeyedSubscript:stringValue3];
            }

            [dictionary setObject:dictionary2 forKeyedSubscript:@"livePhotoEffectsGatingDescriptions"];
          }

          v60 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v83];
          [dictionary setObject:v60 forKey:@"loopSuggestionState"];

          v61 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v79];
          [dictionary setObject:v61 forKey:@"longExposureSuggestionState"];

          v62 = liveAnalysisResultToDictionary();
          v41 = v87;
          if (v62 && (demandCopy || v83 == 1 || v79 == 1))
          {
            v63 = [VCPProtoLivePhotoEffectsRecipe resultFromLegacyDictionary:v62];
            data = [v63 data];
            if (!data)
            {

              v24 = -50;
              originalMovie = v78;
LABEL_64:

LABEL_65:
              if (v105)
              {
                liveAnalysisResultDestroy();
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (v89)
              {
                CFRelease(v89);
              }

              if (AutoLoopSettingsForAsset)
              {
                autoloopSettingsDestroy();
              }

              if (![defaultManager fileExistsAtPath:v20])
              {
                goto LABEL_83;
              }

              v95[0] = 0;
              v68 = [defaultManager removeItemAtPath:v20 error:v95];
              v69 = v95[0];
              v70 = MediaAnalysisLogLevel();
              if (v68)
              {
                if (v70 < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_82;
                }

                *buf = 0;
                v71 = MEMORY[0x1E69E9C10];
                v72 = "Autoloop working directory removed";
                v73 = OS_LOG_TYPE_DEBUG;
                v74 = 2;
              }

              else
              {
                if (v70 < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_82;
                }

                *buf = 138412290;
                *&buf[4] = v69;
                v71 = MEMORY[0x1E69E9C10];
                v72 = "Failed to remove Autoloop working directory (%@)";
                v73 = OS_LOG_TYPE_DEFAULT;
                v74 = 12;
              }

              _os_log_impl(&dword_1C9B70000, v71, v73, v72, buf, v74);
LABEL_82:

LABEL_83:
              v25 = dictionary;
              goto LABEL_84;
            }

            v65 = data;
            [dictionary setObject:data forKey:@"livePhotoEffectsRecipe"];
          }

          originalMovie = v78;
          v44 = v82;
        }

        *flags |= [(VCPEffectsAnalyzer *)self generateStatsToBeCollectedFrom:v44];
        [(VCPEffectsAnalyzer *)self reportLivePhotoEffectAnalysisResults:v44];
        if ([dictionary count])
        {
          v110 = @"LivePhotoEffectsResults";
          v107 = @"attributes";
          v108 = dictionary;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
          v109 = v66;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
          v111 = v67;
          *resultsCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
        }

        v24 = 0;
        v41 = v87;
        goto LABEL_64;
      }

      v31 = originalMovie;
      v104 = 0;
      v32 = [defaultManager removeItemAtPath:v20 error:&v104];
      v33 = v104;
      v34 = MediaAnalysisLogLevel();
      if (v32)
      {
        if (v34 < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_21;
        }

        *buf = 0;
        v35 = MEMORY[0x1E69E9C10];
        v36 = "Existing Autoloop working directory removed";
        v37 = OS_LOG_TYPE_DEBUG;
        v38 = 2;
      }

      else
      {
        if (v34 < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        *buf = 138412290;
        *&buf[4] = v33;
        v35 = MEMORY[0x1E69E9C10];
        v36 = "Failed to remove existing Autoloop working directory (%@)";
        v37 = OS_LOG_TYPE_DEFAULT;
        v38 = 12;
      }

      _os_log_impl(&dword_1C9B70000, v35, v37, v36, buf, v38);
LABEL_21:

      originalMovie = v31;
      goto LABEL_22;
    }

    v24 = 0;
  }

  else
  {
    v24 = -18;
  }

LABEL_85:

  return v24;
}

uint64_t __70__VCPEffectsAnalyzer_analyzeAsset_onDemand_cancel_statsFlags_results___block_invoke_366(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) addObject:a2];
  *a3 = 1;
  return result;
}

- (id)matchingNodeForSceneClassification:(id)classification inSceneNames:(id)names
{
  classificationCopy = classification;
  namesCopy = names;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__52;
  v21 = __Block_byref_object_dispose__52;
  v22 = 0;
  vcp_sharedTaxonomy = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
  v8 = [vcp_sharedTaxonomy nodeForSceneClassId:{objc_msgSend(classificationCopy, "sceneIdentifier")}];

  if (v8 && ([classificationCopy confidence], v10 = v9, objc_msgSend(v8, "searchThreshold"), v10 >= v11))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__VCPEffectsAnalyzer_matchingNodeForSceneClassification_inSceneNames___block_invoke;
    v14[3] = &unk_1E8350AE8;
    v15 = namesCopy;
    v16 = &v17;
    [v8 traverse:0 visitor:v14];
    v12 = v18[5];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

uint64_t __70__VCPEffectsAnalyzer_matchingNodeForSceneClassification_inSceneNames___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = [v4 name];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  return v7;
}

- (id)performanSceneClassificationOfImageFileAtURL:(id)l
{
  v36[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x1E69845B8]);
  v6 = [v5 initWithURL:lCopy options:MEMORY[0x1E695E0F8]];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = objc_alloc_init(MEMORY[0x1E6984668]);
  v9 = v8;
  if (!v8 || ([v8 setPreferBackgroundProcessing:1], objc_msgSend(v9, "setRevision:", 2), v36[0] = v9, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v36, 1), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v7, "performRequests:error:", v10, 0), v10, !v11))
  {

LABEL_13:
    objc_autoreleasePoolPop(v4);
    v25 = 0;
    goto LABEL_14;
  }

  context = v4;
  v29 = lCopy;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  results = [v9 results];
  v13 = [results countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(results);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        vcp_sharedTaxonomy = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
        identifier = [v17 identifier];
        v20 = [vcp_sharedTaxonomy nodeForName:identifier];

        v21 = MEMORY[0x1E6978A30];
        extendedSceneClassId = [v20 extendedSceneClassId];
        [v17 confidence];
        v24 = [v21 vcp_instanceWithExtendedSceneIdentifier:extendedSceneClassId confidence:v23];
        [array addObject:v24];
      }

      v14 = [results countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
  lCopy = v29;
  v25 = array;
LABEL_14:
  v26 = v25;

  return v25;
}

- (int)enumerateMatchingScenesOfAsset:(id)asset forLongExposureUsingBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  blockCopy = block;
  if (blockCopy)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F49BEFB0];
    localIdentifier = [assetCopy localIdentifier];
    if (!localIdentifier || (v10 = localIdentifier, v11 = +[VCPEffectsAnalyzer usePHAssetScene](VCPEffectsAnalyzer, "usePHAssetScene"), v10, !v11) || ([assetCopy allScenes], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      mainFileURL = [assetCopy mainFileURL];
      v12 = [(VCPEffectsAnalyzer *)self performanSceneClassificationOfImageFileAtURL:mainFileURL];
    }

    v24 = assetCopy;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [(VCPEffectsAnalyzer *)self matchingNodeForSceneClassification:*(*(&v26 + 1) + 8 * i) inSceneNames:v8, v24];
          v20 = v19;
          if (v19)
          {
            v25 = 0;
            name = [v19 name];
            blockCopy[2](blockCopy, name, &v25);

            if (v25)
            {

              goto LABEL_18;
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v22 = 0;
    assetCopy = v24;
  }

  else
  {
    v22 = -50;
  }

  return v22;
}

+ (id)gatingTypeKeys
{
  if (gatingTypeKeys_once != -1)
  {
    +[VCPEffectsAnalyzer gatingTypeKeys];
  }

  v3 = gatingTypeKeys_gatingTypeKeys;

  return v3;
}

void __36__VCPEffectsAnalyzer_gatingTypeKeys__block_invoke()
{
  v2[12] = *MEMORY[0x1E69E9840];
  v2[0] = @"mShortInputDecision";
  v2[1] = @"mPreGateStillMetadataDecision";
  v2[2] = @"mPreGateVideoTrimDecision";
  v2[3] = @"mPreGateVideoMLDecision";
  v2[4] = @"mPreGateFacesDecision";
  v2[5] = @"stabilizeGateDecision";
  v2[6] = @"postGateDecision";
  v2[7] = @"finalDecision";
  v2[8] = @"loopActivityDecision";
  v2[9] = @"bounceActivityDecision";
  v2[10] = @"longexpActivityDecision";
  v2[11] = @"stabilizeResult";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:12];
  v1 = gatingTypeKeys_gatingTypeKeys;
  gatingTypeKeys_gatingTypeKeys = v0;
}

+ (id)gatingResultKeyToIndex
{
  if (gatingResultKeyToIndex_once != -1)
  {
    +[VCPEffectsAnalyzer gatingResultKeyToIndex];
  }

  v3 = gatingResultKeyToIndex_gatingResultKeyToIndex;

  return v3;
}

void __44__VCPEffectsAnalyzer_gatingResultKeyToIndex__block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"ALGatingResultError";
  v2[1] = @"ALGatingResultUnset";
  v3[0] = &unk_1F49BDF00;
  v3[1] = &unk_1F49BDF18;
  v2[2] = @"ALGatingResultFail";
  v2[3] = @"ALGatingResultPass";
  v3[2] = &unk_1F49BDF30;
  v3[3] = &unk_1F49BDF48;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = gatingResultKeyToIndex_gatingResultKeyToIndex;
  gatingResultKeyToIndex_gatingResultKeyToIndex = v0;
}

+ (id)getResultIndex:(id)index
{
  v3 = &unk_1F49BDF60;
  if (index)
  {
    indexCopy = index;
    v5 = +[VCPEffectsAnalyzer gatingResultKeyToIndex];
    v6 = [v5 objectForKeyedSubscript:indexCopy];

    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = &unk_1F49BDF60;
    }

    v3 = v7;
  }

  return v3;
}

- (void)reportLivePhotoEffectAnalysisResults:(id)results
{
  resultsCopy = results;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__VCPEffectsAnalyzer_reportLivePhotoEffectAnalysisResults___block_invoke;
  aBlock[3] = &unk_1E8350B10;
  v12 = dictionary;
  selfCopy = self;
  v14 = resultsCopy;
  v6 = resultsCopy;
  v7 = dictionary;
  v8 = _Block_copy(aBlock);
  v9 = [v6 objectForKeyedSubscript:@"stabilizeResult"];
  [v7 setObject:v9 forKeyedSubscript:@"LivePhotoEffectsStabilizeResult"];

  v8[2](v8, @"LivePhotoEffectsShortInputDecision", @"mShortInputDecision");
  v8[2](v8, @"LivePhotoEffectsPreGateStillMetadataDecision", @"mPreGateStillMetadataDecision");
  v8[2](v8, @"LivePhotoEffectsPreGateVideoTrimDecision", @"mPreGateVideoTrimDecision");
  v8[2](v8, @"LivePhotoEffectsPreGateVideoMLDecision", @"mPreGateVideoMLDecision");
  v8[2](v8, @"LivePhotoEffectsPreGateFacesDecision", @"mPreGateFacesDecision");
  v8[2](v8, @"LivePhotoEffectsStabilizeGateDecision", @"stabilizeGateDecision");
  v8[2](v8, @"LivePhotoEffectsPostGateDecision", @"postGateDecision");
  v8[2](v8, @"LivePhotoEffectsFinalGateDecision", @"finalDecision");
  v8[2](v8, @"LivePhotoEffectsLoopActivityDecision", @"loopActivityDecision");
  v8[2](v8, @"LivePhotoEffectsBounceActivityDecision", @"bounceActivityDecision");
  v8[2](v8, @"LivePhotoEffectsLongexpActivityDecision", @"longexpActivityDecision");
  v10 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v10 sendEvent:@"com.apple.mediaanalysisd.livephotoeffectanalysisresults" withAnalytics:v7];
}

void __59__VCPEffectsAnalyzer_reportLivePhotoEffectAnalysisResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_class();
  v9 = [*(a1 + 48) objectForKeyedSubscript:v5];

  v8 = [v7 getResultIndex:v9];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
}

- (unint64_t)generateStatsToBeCollectedFrom:(id)from
{
  fromCopy = from;
  v4 = +[VCPEffectsAnalyzer gatingTypeKeys];
  v17 = +[VCPEffectsAnalyzer gatingResultKeyToIndex];
  if ([v4 count])
  {
    v5 = 0;
    v6 = 2;
    while (1)
    {
      v7 = [v4 objectAtIndexedSubscript:v5];
      v8 = MediaAnalysisLivePhotoGatingResultKeyToType(v7);
      if (v8)
      {
        v9 = v8;
        v10 = [v7 isEqualToString:@"stabilizeResult"];
        v11 = [fromCopy objectForKeyedSubscript:v7];
        v12 = v11;
        if (v10)
        {
          integerValue = [v11 integerValue];

          integerValue2 = integerValue + 3;
          if (integerValue2 >= 8)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v15 = [v17 objectForKeyedSubscript:v11];
          integerValue2 = [v15 integerValue];

          if (integerValue2 > 3)
          {
LABEL_12:

            v6 = 0;
            goto LABEL_13;
          }
        }

        v6 |= 1 << v9 << integerValue2;
      }

      if ([v4 count] <= ++v5)
      {
        goto LABEL_13;
      }
    }
  }

  v6 = 2;
LABEL_13:

  return v6;
}

@end