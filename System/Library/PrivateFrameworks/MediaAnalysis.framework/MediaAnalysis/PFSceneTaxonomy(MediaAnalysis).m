@interface PFSceneTaxonomy(MediaAnalysis)
+ (id)mad_audioTaxonomy:()MediaAnalysis useResultsKey:;
+ (id)vcp_sharedTaxonomy;
+ (uint64_t)mad_isExpectedTaxonomy;
- (id)mad_allAncestorsForSceneId:()MediaAnalysis;
- (id)mad_extendedSceneIdFromSceneName:()MediaAnalysis;
- (id)mad_sceneNameFromExtendedSceneId:()MediaAnalysis;
@end

@implementation PFSceneTaxonomy(MediaAnalysis)

+ (id)vcp_sharedTaxonomy
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PFSceneTaxonomy_MediaAnalysis__vcp_sharedTaxonomy__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[PFSceneTaxonomy(MediaAnalysis) vcp_sharedTaxonomy]::once != -1)
  {
    dispatch_once(&+[PFSceneTaxonomy(MediaAnalysis) vcp_sharedTaxonomy]::once, block);
  }

  v1 = +[PFSceneTaxonomy(MediaAnalysis) vcp_sharedTaxonomy]::instance;

  return v1;
}

+ (uint64_t)mad_isExpectedTaxonomy
{
  if (+[PFSceneTaxonomy(MediaAnalysis) mad_isExpectedTaxonomy]::once != -1)
  {
    +[PFSceneTaxonomy(MediaAnalysis) mad_isExpectedTaxonomy];
  }

  return +[PFSceneTaxonomy(MediaAnalysis) mad_isExpectedTaxonomy]::isLatest;
}

+ (id)mad_audioTaxonomy:()MediaAnalysis useResultsKey:
{
  v14[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (!a4)
    {
      v7 = &unk_1F49BF338;
      goto LABEL_9;
    }

    v13[0] = @"ApplauseResults";
    v13[1] = @"BabbleResults";
    v14[0] = &unk_1F49BE098;
    v14[1] = &unk_1F49BE0B0;
    v13[2] = @"CheeringResults";
    v13[3] = @"LaughterResults";
    v14[2] = &unk_1F49BE0C8;
    v14[3] = &unk_1F49BE0E0;
    v13[4] = @"MusicResults";
    v13[5] = @"VoiceResults";
    v14[4] = &unk_1F49BE0F8;
    v14[5] = &unk_1F49BE110;
    v4 = MEMORY[0x1E695DF20];
    v5 = v14;
    v6 = v13;
  }

  else if (a4)
  {
    v11[0] = &unk_1F49BE098;
    v11[1] = &unk_1F49BE0B0;
    v12[0] = @"ApplauseResults";
    v12[1] = @"BabbleResults";
    v11[2] = &unk_1F49BE0C8;
    v11[3] = &unk_1F49BE0E0;
    v12[2] = @"CheeringResults";
    v12[3] = @"LaughterResults";
    v11[4] = &unk_1F49BE0F8;
    v11[5] = &unk_1F49BE110;
    v12[4] = @"MusicResults";
    v12[5] = @"VoiceResults";
    v4 = MEMORY[0x1E695DF20];
    v5 = v12;
    v6 = v11;
  }

  else
  {
    v9[0] = &unk_1F49BE098;
    v9[1] = &unk_1F49BE0B0;
    v10[0] = @"applause";
    v10[1] = @"babble";
    v9[2] = &unk_1F49BE0C8;
    v9[3] = &unk_1F49BE0E0;
    v10[2] = @"cheering";
    v10[3] = @"laughter";
    v9[4] = &unk_1F49BE0F8;
    v9[5] = &unk_1F49BE110;
    v10[4] = @"music";
    v10[5] = @"voice";
    v4 = MEMORY[0x1E695DF20];
    v5 = v10;
    v6 = v9;
  }

  v7 = [v4 dictionaryWithObjects:v5 forKeys:v6 count:6];
LABEL_9:

  return v7;
}

- (id)mad_sceneNameFromExtendedSceneId:()MediaAnalysis
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a1 nodeForExtendedSceneClassId:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 name];
  }

  else
  {
    v7 = VCPSpecialLabelFromExtendedSceneClassificationID(a3);
    v6 = v7;
    if (v7)
    {
      v8 = v7;
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PFSceneTaxonomy(MediaAnalysis)] - Failed find scene name for scene id %llu", &v10, 0xCu);
    }
  }

  return v6;
}

- (id)mad_extendedSceneIdFromSceneName:()MediaAnalysis
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 nodeForName:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v5, "sceneClassId")}];
  }

  else
  {
    v8 = VCPSpecialLabelToExtendedSceneClassificationID(v4);
    v7 = v8;
    if (v8)
    {
      v9 = v8;
    }

    else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PFSceneTaxonomy(MediaAnalysis)] - Failed to find scene id for scene name %@", &v11, 0xCu);
    }
  }

  return v7;
}

- (id)mad_allAncestorsForSceneId:()MediaAnalysis
{
  v43 = *MEMORY[0x1E69E9840];
  v27 = [MEMORY[0x1E695DFA8] set];
  v5 = [a1 nodeForSceneClassId:a3];
  if (v5)
  {
    v24 = v5;
    v6 = [v5 parents];
    v25 = 0;
    while (1)
    {
      v26 = v6;
      if (![v6 count])
      {
        break;
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v7 = v26;
      v8 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v8)
      {
        v9 = *v37;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v37 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v36 + 1) + 8 * i);
            if (([v11 isRoot] & 1) == 0)
            {
              [v27 addObject:v11];
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v8);
      }

      v12 = [MEMORY[0x1E695DFA8] set];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = v7;
      v14 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v14)
      {
        v15 = *v33;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v32 + 1) + 8 * j);
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v18 = [v17 parents];
            v19 = [v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
            if (v19)
            {
              v20 = *v29;
              do
              {
                for (k = 0; k != v19; ++k)
                {
                  if (*v29 != v20)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v22 = *(*(&v28 + 1) + 8 * k);
                  if (([v22 isRoot] & 1) == 0)
                  {
                    [v12 addObject:v22];
                  }
                }

                v19 = [v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
              }

              while (v19);
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v14);
      }

      v6 = v12;
      if (++v25 == 10)
      {
        goto LABEL_32;
      }
    }

    v12 = v26;
LABEL_32:

    v5 = v24;
  }

  return v27;
}

@end