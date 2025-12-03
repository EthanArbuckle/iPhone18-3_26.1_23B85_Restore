@interface VCPVideoSceneClassifier
- (BOOL)compareObjectsOfInterest:(id)interest withScenes:(id)scenes;
- (NSDictionary)frameScenes;
- (VCPVideoSceneClassifier)init;
- (float)adjustedConfidence:(id)confidence confidence:(float)a4;
- (id)filteredKeyFrameResults;
- (id)results;
- (id)sortScenesWithMaxNumCap:(id)cap;
- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags;
- (int)finishAnalysisPass:(id *)pass;
- (void)addAggregatedScenes:(id)scenes timerange:(id *)timerange;
- (void)addResult:(id)result start:(id *)start duration:(id *)duration keyIsName:(BOOL)name;
- (void)findObjectsOfInterest:(id)interest;
@end

@implementation VCPVideoSceneClassifier

- (VCPVideoSceneClassifier)init
{
  v18.receiver = self;
  v18.super_class = VCPVideoSceneClassifier;
  v2 = [(VCPVideoSceneClassifier *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(MEMORY[0x1E6960C80] + 16);
    *(v2 + 8) = *MEMORY[0x1E6960C80];
    *(v2 + 3) = v4;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    existingScenes = v3->_existingScenes;
    v3->_existingScenes = dictionary;

    v7 = *(MEMORY[0x1E6960C70] + 16);
    *&v3->_start.value = *MEMORY[0x1E6960C70];
    v3->_start.epoch = v7;
    array = [MEMORY[0x1E695DF70] array];
    results = v3->_results;
    v3->_results = array;

    sceneResults = v3->_sceneResults;
    v3->_sceneResults = 0;

    qualityResults = v3->_qualityResults;
    v3->_qualityResults = 0;

    internalFrameScenes = v3->_internalFrameScenes;
    v3->_internalFrameScenes = 0;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    thresholdBySceneID = v3->_thresholdBySceneID;
    v3->_thresholdBySceneID = dictionary2;

    v15 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F49BE920];
    objectsOfInterest = v3->_objectsOfInterest;
    v3->_objectsOfInterest = v15;
  }

  return v3;
}

- (float)adjustedConfidence:(id)confidence confidence:(float)a4
{
  confidenceCopy = confidence;
  if (-[NSMutableDictionary count](self->_thresholdBySceneID, "count") && (-[NSMutableDictionary allKeys](self->_thresholdBySceneID, "allKeys"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:confidenceCopy], v7, v8))
  {
    v9 = [(NSMutableDictionary *)self->_thresholdBySceneID objectForKeyedSubscript:confidenceCopy];
    [v9 floatValue];
    a4 = a4 - v10;
  }

  else
  {
    vcp_sharedTaxonomy = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
    v9 = [vcp_sharedTaxonomy nodeForSceneClassId:{objc_msgSend(confidenceCopy, "unsignedIntValue")}];

    if (v9)
    {
      v12 = MEMORY[0x1E696AD98];
      [v9 highPrecisionThreshold];
      v14 = v13;
      [v9 highRecallThreshold];
      v16 = v15;
      [v9 searchThreshold];
      if (v16 >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v16;
      }

      if (v17 >= v18)
      {
        v17 = v18;
      }

      v19 = [v12 numberWithDouble:v17];
      [(NSMutableDictionary *)self->_thresholdBySceneID setObject:v19 forKeyedSubscript:confidenceCopy];

      v20 = [(NSMutableDictionary *)self->_thresholdBySceneID objectForKeyedSubscript:confidenceCopy];
      [v20 floatValue];
      a4 = a4 - v21;
    }
  }

  return a4;
}

- (BOOL)compareObjectsOfInterest:(id)interest withScenes:(id)scenes
{
  v22 = *MEMORY[0x1E69E9840];
  interestCopy = interest;
  scenesCopy = scenes;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_objectsOfInterest;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        allKeys = [interestCopy allKeys];
        v14 = [allKeys containsObject:v12];
        allKeys2 = [scenesCopy allKeys];
        LODWORD(v12) = [allKeys2 containsObject:v12];

        if ((v14 ^ v12))
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (void)addResult:(id)result start:(id *)start duration:(id *)duration keyIsName:(BOOL)name
{
  nameCopy = name;
  v33 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (nameCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    allKeys = [resultCopy allKeys];
    v11 = [allKeys countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v11)
    {
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          vcp_sharedTaxonomy = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
          v16 = [vcp_sharedTaxonomy mad_extendedSceneIdFromSceneName:v14];

          if (v16)
          {
            v17 = [resultCopy objectForKeyedSubscript:v14];
            stringValue = [v16 stringValue];
            [dictionary setObject:v17 forKeyedSubscript:stringValue];
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v11);
    }

    resultCopy = dictionary;
  }

  if ([resultCopy count])
  {
    results = self->_results;
    v30[0] = @"start";
    time = *start;
    v20 = CMTimeCopyAsDictionary(&time, 0);
    v31[0] = v20;
    v30[1] = @"duration";
    time = *duration;
    v21 = CMTimeCopyAsDictionary(&time, 0);
    v30[2] = @"attributes";
    v31[1] = v21;
    v31[2] = resultCopy;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
    [(NSMutableArray *)results addObject:v22];
  }
}

- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags
{
  v157 = *MEMORY[0x1E69E9840];
  internalFrameScenes = self->_internalFrameScenes;
  self->_internalFrameScenes = 0;

  selfCopy = self;
  p_timeLastProcess = &self->_timeLastProcess;
  lhs = *timestamp;
  timestampCopy = timestamp;
  rhs = *p_timeLastProcess;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) < 1.0)
  {
    return 0;
  }

  v12 = *&timestamp->var0;
  p_timeLastProcess->epoch = timestamp->var3;
  *&p_timeLastProcess->value = v12;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = selfCopy->_internalFrameScenes;
  selfCopy->_internalFrameScenes = dictionary;

  array = [MEMORY[0x1E695DF70] array];
  v109 = objc_autoreleasePoolPush();
  v15 = objc_alloc(MEMORY[0x1E69845B8]);
  v110 = [v15 initWithCVPixelBuffer:frame options:MEMORY[0x1E695E0F8]];
  if (v110)
  {
    v16 = objc_alloc_init(MEMORY[0x1E6984668]);
    v17 = v16;
    v106 = v16;
    if (!v16)
    {
      v50 = 0;
LABEL_73:

      v11 = -18;
      goto LABEL_74;
    }

    [v16 setPreferBackgroundProcessing:1];
    v147 = 0;
    v18 = [v17 setRevision:3737841665 error:&v147];
    v19 = v147;
    if ((v18 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(lhs.value) = 134218242;
        *(&lhs.value + 4) = 3737841665;
        LOWORD(lhs.flags) = 2112;
        *(&lhs.flags + 2) = v19;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set VNSceneClassificationRequest with revision %lu - %@", &lhs, 0x16u);
      }

      v50 = 0;
      goto LABEL_72;
    }

    v20 = objc_alloc_init(MEMORY[0x1E69843F0]);
    v21 = v20;
    if (v20)
    {
      v102 = v20;
      [v20 setPreferBackgroundProcessing:1];
      v146 = v19;
      v22 = [v21 setRevision:2 error:&v146];
      v103 = v146;

      if (v22)
      {
        v19 = v103;
        array2 = [MEMORY[0x1E695DF70] array];
        v23 = v110;
        [array2 addObject:v106];
        [array2 addObject:v102];
        if ([MEMORY[0x1E6984658] mad_includeEntityNet])
        {
          v24 = objc_alloc_init(MEMORY[0x1E6984438]);
          v25 = v24;
          if (v24)
          {
            [v24 setPreferBackgroundProcessing:1];
            v145 = v103;
            v26 = [v25 setRevision:3737841667 error:&v145];
            v19 = v145;

            if (v26)
            {
              [v25 setMaximumLeafObservations:15];
              [v25 setMaximumHierarchicalObservations:15];
              [array2 addObject:v25];

              v23 = v110;
              goto LABEL_12;
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              LODWORD(lhs.value) = 134218242;
              *(&lhs.value + 4) = 3737841667;
              LOWORD(lhs.flags) = 2112;
              *(&lhs.flags + 2) = v19;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set VNClassifyImageRequest with revision %lu - %@", &lhs, 0x16u);
            }
          }

          goto LABEL_68;
        }

LABEL_12:
        v144 = v19;
        v27 = [v23 performRequests:array2 error:&v144];
        v104 = v144;

        if (v27)
        {
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          obj = array2;
          v28 = [obj countByEnumeratingWithState:&v140 objects:v155 count:16];
          if (v28)
          {
            v107 = *v141;
            do
            {
              v29 = 0;
              v108 = v28;
              do
              {
                if (*v141 != v107)
                {
                  objc_enumerationMutation(obj);
                }

                v113 = v29;
                v30 = *(*(&v140 + 1) + 8 * v29);
                context = objc_autoreleasePoolPush();
                v138 = 0u;
                v139 = 0u;
                v136 = 0u;
                v137 = 0u;
                results = [v30 results];
                v32 = [results countByEnumeratingWithState:&v136 objects:v154 count:16];
                if (v32)
                {
                  v33 = *v137;
                  do
                  {
                    for (i = 0; i != v32; ++i)
                    {
                      if (*v137 != v33)
                      {
                        objc_enumerationMutation(results);
                      }

                      v35 = *(*(&v136 + 1) + 8 * i);
                      vcp_sharedTaxonomy = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
                      identifier = [v35 identifier];
                      v38 = [vcp_sharedTaxonomy nodeForName:identifier];

                      if (v38)
                      {
                        if ([v38 isIndexed])
                        {
                          [v38 highPrecisionThreshold];
                          v40 = v39;
                          [v38 highRecallThreshold];
                          v42 = v41;
                          [v38 searchThreshold];
                          v44 = v43;
                          [v35 confidence];
                          if (v42 >= v40)
                          {
                            v46 = v40;
                          }

                          else
                          {
                            v46 = v42;
                          }

                          if (v44 < v46)
                          {
                            v46 = v44;
                          }

                          v47 = v45;
                          if (v46 < 0.01)
                          {
                            v46 = 0.01;
                          }

                          if (v46 < v47)
                          {
                            [array addObject:v35];
                          }
                        }

                        else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                        {
                          identifier2 = [v35 identifier];
                          LODWORD(lhs.value) = 138412290;
                          *(&lhs.value + 4) = identifier2;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VideoSceneClassifier] Not-indexed scene label - %@", &lhs, 0xCu);
                        }
                      }

                      else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                      {
                        identifier3 = [v35 identifier];
                        LODWORD(lhs.value) = 138412290;
                        *(&lhs.value + 4) = identifier3;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VideoSceneClassifier] Unsupported scene label - %@", &lhs, 0xCu);
                      }
                    }

                    v32 = [results countByEnumeratingWithState:&v136 objects:v154 count:16];
                  }

                  while (v32);
                }

                objc_autoreleasePoolPop(context);
                v29 = v113 + 1;
              }

              while (v113 + 1 != v108);
              v28 = [obj countByEnumeratingWithState:&v140 objects:v155 count:16];
            }

            while (v28);
          }

          v50 = 1;
          v19 = v104;
          goto LABEL_69;
        }

        v19 = v104;
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LODWORD(lhs.value) = 138412290;
          *(&lhs.value + 4) = v104;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VideoSceneClassifier] Failed to classify scene - %@", &lhs, 0xCu);
        }

LABEL_68:
        v50 = 0;
LABEL_69:

        goto LABEL_70;
      }

      if (MediaAnalysisLogLevel() < 3)
      {
        v50 = 0;
        v19 = v103;
        goto LABEL_70;
      }

      v19 = v103;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_58:
        v50 = 0;
LABEL_70:
        v21 = v102;
        goto LABEL_71;
      }

      LODWORD(lhs.value) = 134218242;
      *(&lhs.value + 4) = 2;
      LOWORD(lhs.flags) = 2112;
      *(&lhs.flags + 2) = v103;
      v52 = MEMORY[0x1E69E9C10];
      v53 = "Failed to set VNClassifySignificantEventRequest::setRevision %lu: %@";
      v54 = 22;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        v50 = 0;
LABEL_71:

LABEL_72:
        goto LABEL_73;
      }

      v102 = 0;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v51 = objc_opt_class();
      LODWORD(lhs.value) = 138412290;
      *(&lhs.value + 4) = v51;
      v52 = MEMORY[0x1E69E9C10];
      v53 = "Failed to create %@";
      v54 = 12;
    }

    _os_log_impl(&dword_1C9B70000, v52, OS_LOG_TYPE_ERROR, v53, &lhs, v54);
    goto LABEL_58;
  }

  v50 = 0;
  v11 = -108;
LABEL_74:

  objc_autoreleasePoolPop(v109);
  if (v50)
  {
    if ([array count])
    {
      if ([array count] < 0x29)
      {
        v56 = array;
      }

      else
      {
        v135[0] = MEMORY[0x1E69E9820];
        v135[1] = 3221225472;
        v135[2] = __72__VCPVideoSceneClassifier_analyzeFrame_withTimestamp_andDuration_flags___block_invoke;
        v135[3] = &unk_1E834CF48;
        v135[4] = selfCopy;
        [array sortUsingComparator:v135];
        v55 = [array subarrayWithRange:{0, 40}];
        v56 = [v55 mutableCopy];
      }

      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v116 = v56;
      v61 = [v116 countByEnumeratingWithState:&v131 objects:v153 count:16];
      if (v61)
      {
        v62 = *v132;
        do
        {
          for (j = 0; j != v61; ++j)
          {
            if (*v132 != v62)
            {
              objc_enumerationMutation(v116);
            }

            v64 = *(*(&v131 + 1) + 8 * j);
            v65 = selfCopy->_internalFrameScenes;
            v66 = MEMORY[0x1E696AD98];
            [v64 confidence];
            v67 = [v66 numberWithFloat:?];
            identifier4 = [v64 identifier];
            [(NSMutableDictionary *)v65 setObject:v67 forKey:identifier4];
          }

          v61 = [v116 countByEnumeratingWithState:&v131 objects:v153 count:16];
        }

        while (v61);
      }

      v69 = [v116 count];
      if (v69 == [(NSMutableDictionary *)selfCopy->_existingScenes count])
      {
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v70 = v116;
        v71 = [v70 countByEnumeratingWithState:&v127 objects:v152 count:16];
        if (v71)
        {
          v72 = *v128;
          while (2)
          {
            for (k = 0; k != v71; ++k)
            {
              if (*v128 != v72)
              {
                objc_enumerationMutation(v70);
              }

              existingScenes = selfCopy->_existingScenes;
              identifier5 = [*(*(&v127 + 1) + 8 * k) identifier];
              v76 = [(NSMutableDictionary *)existingScenes objectForKeyedSubscript:identifier5];
              LOBYTE(existingScenes) = v76 == 0;

              if (existingScenes)
              {
                v77 = 0;
                goto LABEL_100;
              }
            }

            v71 = [v70 countByEnumeratingWithState:&v127 objects:v152 count:16];
            if (v71)
            {
              continue;
            }

            break;
          }
        }

        v77 = 1;
LABEL_100:
      }

      else
      {
        v77 = 0;
      }

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      if (v77)
      {
        v126 = 0uLL;
        v124 = 0uLL;
        v125 = 0uLL;
        v123 = 0uLL;
        v57 = v116;
        v78 = [v57 countByEnumeratingWithState:&v123 objects:v151 count:16];
        if (v78)
        {
          v79 = *v124;
          do
          {
            for (m = 0; m != v78; ++m)
            {
              if (*v124 != v79)
              {
                objc_enumerationMutation(v57);
              }

              v81 = *(*(&v123 + 1) + 8 * m);
              v82 = selfCopy->_existingScenes;
              identifier6 = [v81 identifier];
              v84 = [(NSMutableDictionary *)v82 objectForKeyedSubscript:identifier6];

              if (v84)
              {
                [v84 floatValue];
                v86 = v85;
                [v81 confidence];
                if (v86 >= *&v87)
                {
                  *&v87 = v86;
                }

                v88 = [MEMORY[0x1E696AD98] numberWithFloat:v87];
                v89 = selfCopy->_existingScenes;
                identifier7 = [v81 identifier];
                [(NSMutableDictionary *)v89 setObject:v88 forKeyedSubscript:identifier7];
              }
            }

            v78 = [v57 countByEnumeratingWithState:&v123 objects:v151 count:16];
          }

          while (v78);
        }
      }

      else
      {
        v121 = 0uLL;
        v122 = 0uLL;
        v119 = 0uLL;
        v120 = 0uLL;
        v57 = v116;
        v91 = [v57 countByEnumeratingWithState:&v119 objects:v150 count:16];
        if (v91)
        {
          v92 = *v120;
          do
          {
            for (n = 0; n != v91; ++n)
            {
              if (*v120 != v92)
              {
                objc_enumerationMutation(v57);
              }

              v94 = *(*(&v119 + 1) + 8 * n);
              v95 = MEMORY[0x1E696AD98];
              [v94 confidence];
              v96 = [v95 numberWithFloat:?];
              identifier8 = [v94 identifier];
              [(NSMutableDictionary *)dictionary2 setObject:v96 forKeyedSubscript:identifier8];
            }

            v91 = [v57 countByEnumeratingWithState:&v119 objects:v150 count:16];
          }

          while (v91);
        }

        v98 = selfCopy->_existingScenes;
        time = selfCopy->_start;
        lhs = *timestampCopy;
        rhs = selfCopy->_start;
        CMTimeSubtract(&v118, &lhs, &rhs);
        [(VCPVideoSceneClassifier *)selfCopy addResult:v98 start:&time duration:&v118 keyIsName:1];
        objc_storeStrong(&selfCopy->_existingScenes, dictionary2);
        v99 = *&timestampCopy->value;
        selfCopy->_start.epoch = timestampCopy->epoch;
        *&selfCopy->_start.value = v99;
      }

      v60 = dictionary2;
    }

    else
    {
      v58 = selfCopy->_existingScenes;
      time = selfCopy->_start;
      lhs = *timestampCopy;
      rhs = selfCopy->_start;
      CMTimeSubtract(&v118, &lhs, &rhs);
      [(VCPVideoSceneClassifier *)selfCopy addResult:v58 start:&time duration:&v118 keyIsName:1];
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      v57 = array;
      v60 = selfCopy->_existingScenes;
      selfCopy->_existingScenes = dictionary3;
    }

    v11 = 0;
  }

  else
  {
    v57 = array;
  }

  return v11;
}

uint64_t __72__VCPVideoSceneClassifier_analyzeFrame_withTimestamp_andDuration_flags___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
  v8 = [v5 identifier];
  v9 = [v7 nodeForName:v8];
  v10 = [v9 sceneClassId];

  v11 = *(a1 + 32);
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  [v5 confidence];
  [v11 adjustedConfidence:v12 confidence:?];
  v14 = v13;

  v15 = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
  v16 = [v6 identifier];
  v17 = [v15 nodeForName:v16];
  v18 = [v17 sceneClassId];

  v19 = *(a1 + 32);
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v18];
  [v6 confidence];
  [v19 adjustedConfidence:v20 confidence:?];
  v22 = v21;

  if (v14 > v22)
  {
    v23 = -1;
  }

  else
  {
    v23 = v14 < v22;
  }

  return v23;
}

- (id)sortScenesWithMaxNumCap:(id)cap
{
  allValues = [cap allValues];
  v4 = [allValues mutableCopy];

  [v4 sortUsingComparator:&__block_literal_global_15];
  if ([v4 count] >= 0x29)
  {
    v5 = [v4 subarrayWithRange:{0, 40}];
    v6 = [v5 mutableCopy];

    v4 = v6;
  }

  return v4;
}

uint64_t __51__VCPVideoSceneClassifier_sortScenesWithMaxNumCap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 sumAdjustConfidence];
  v7 = v6;
  [v5 sumAdjustConfidence];
  if (v7 <= v8)
  {
    [v4 sumAdjustConfidence];
    v11 = v10;
    [v5 sumAdjustConfidence];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)addAggregatedScenes:(id)scenes timerange:(id *)timerange
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = [(VCPVideoSceneClassifier *)self sortScenesWithMaxNumCap:scenes];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v23;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        [v11 adjustDuration];
        if (v12 != 0.0)
        {
          [v11 sumAdjustConfidence];
          v14 = v13;
          [v11 adjustDuration];
          if ((v14 / v15) >= 0.0)
          {
            v16 = MEMORY[0x1E696AD98];
            [v11 sumConfidence];
            v18 = v17;
            [v11 duration];
            *&v20 = v18 / v19;
            v21 = [v16 numberWithFloat:v20];
            sceneId = [v11 sceneId];
            [dictionary setObject:v21 forKeyedSubscript:sceneId];
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v26 = *&timerange->var0.var0;
  var3 = timerange->var0.var3;
  v24 = *&timerange->var1.var0;
  v25 = timerange->var1.var3;
  [(VCPVideoSceneClassifier *)self addResult:dictionary start:&v26 duration:&v24 keyIsName:0];
}

- (id)filteredKeyFrameResults
{
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:self->_results];
  v4 = [(NSArray *)self->_qualityResults count];
  v5 = [v3 count];
  if (v5 >= 1)
  {
    LODWORD(v6) = v4 - 1;
    v7 = v5 & 0x7FFFFFFF;
    do
    {
      memset(&v22, 0, sizeof(v22));
      v8 = [v3 objectAtIndexedSubscript:v7 - 1];
      CMTimeRangeMakeFromDictionary(&v22, v8);

      v20 = *MEMORY[0x1E6960CC0];
      epoch = *(MEMORY[0x1E6960CC0] + 16);
      if ((v6 & 0x80000000) == 0)
      {
        v6 = v6;
        while (1)
        {
          memset(&v19, 0, sizeof(v19));
          v9 = [(NSArray *)self->_qualityResults objectAtIndexedSubscript:v6];
          CMTimeRangeMakeFromDictionary(&v19, v9);

          v10 = [(NSArray *)self->_qualityResults objectAtIndexedSubscript:v6];
          v11 = [v10 objectForKeyedSubscript:@"quality"];
          [v11 floatValue];
          v13 = v12;

          if (v13 < 0.3)
          {
            range = v19;
            memset(&v18, 0, sizeof(v18));
            v16 = v22;
            CMTimeRangeGetIntersection(&v18, &range, &v16);
            *&v16.start.value = v20;
            v16.start.epoch = epoch;
            rhs = v18.duration;
            CMTimeAdd(&range.start, &v16.start, &rhs);
            v20 = *&range.start.value;
            epoch = range.start.epoch;
          }

          *&v18.start.value = *&v19.start.value;
          v18.start.epoch = v19.start.epoch;
          *&range.start.value = *&v22.start.value;
          range.start.epoch = v22.start.epoch;
          if (CMTimeCompare(&v18.start, &range.start) < 1)
          {
            break;
          }

          v14 = v6-- <= 0;
          if (v14)
          {
            LODWORD(v6) = -1;
            break;
          }
        }
      }

      *&v19.start.value = v20;
      v19.start.epoch = epoch;
      if (CMTimeGetSeconds(&v19.start) > 0.0)
      {
        [v3 removeObjectAtIndex:v7 - 1];
      }

      v14 = v7-- <= 1;
    }

    while (!v14);
  }

  return v3;
}

- (void)findObjectsOfInterest:(id)interest
{
  v63 = *MEMORY[0x1E69E9840];
  interestCopy = interest;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  for (i = 0; [interestCopy count] > i; ++i)
  {
    memset(&v60, 0, sizeof(v60));
    v5 = [interestCopy objectAtIndexedSubscript:?];
    CMTimeRangeMakeFromDictionary(&v60, v5);

    v6 = [interestCopy objectAtIndexedSubscript:i];
    v7 = [v6 objectForKeyedSubscript:@"attributes"];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v9)
    {
      v10 = *v57;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v57 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v56 + 1) + 8 * j);
          v13 = [v8 objectForKeyedSubscript:v12];
          [v13 floatValue];
          v15 = v14;

          time = v60.duration;
          Seconds = CMTimeGetSeconds(&time);
          v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "intValue")}];
          *&v18 = v15;
          [(VCPVideoSceneClassifier *)self adjustedConfidence:v17 confidence:v18];
          v20 = v19;

          v21 = [dictionary objectForKeyedSubscript:v12];
          v22 = v21;
          v23 = Seconds;
          v24 = v15 * v23;
          if (v21)
          {
            [v21 sumConfidence];
            *&v26 = v24 + v25;
            [v22 setSumConfidence:v26];
            [v22 sumAdjustConfidence];
            *&v28 = v20 + v27;
            [v22 setSumAdjustConfidence:v28];
            [v22 duration];
            *&v30 = v29 + v23;
            [v22 setDuration:v30];
            [v22 adjustDuration];
            if (v20 <= 0.0)
            {
              v32 = 0.0;
            }

            else
            {
              v32 = v23;
            }

            *&v31 = v32 + *&v31;
            [v22 setAdjustDuration:v31];
          }

          else
          {
            v33 = [VCPClassification alloc];
            *&v34 = v23;
            *&v35 = v24;
            *&v36 = v20;
            v37 = [(VCPClassification *)v33 initWithSceneId:v12 withDuration:v34 withConfidence:v35 withAdjustConfidence:v36];
            if (v37)
            {
              [dictionary setObject:v37 forKeyedSubscript:v12];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v9);
    }
  }

  [(VCPVideoSceneClassifier *)self sortScenesWithMaxNumCap:dictionary];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v38 = v52 = 0u;
  v39 = [v38 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v39)
  {
    v40 = *v52;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v52 != v40)
        {
          objc_enumerationMutation(v38);
        }

        v42 = *(*(&v51 + 1) + 8 * k);
        [v42 adjustDuration];
        if (v43 != 0.0)
        {
          [v42 sumAdjustConfidence];
          v45 = v44;
          [v42 adjustDuration];
          if ((v45 / v46) >= 0.0)
          {
            objectsOfInterest = self->_objectsOfInterest;
            sceneId = [v42 sceneId];
            [(NSMutableArray *)objectsOfInterest addObject:sceneId];
          }
        }
      }

      v39 = [v38 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v39);
  }
}

- (int)finishAnalysisPass:(id *)pass
{
  v80 = *MEMORY[0x1E69E9840];
  {
    CMTimeMake(&[VCPVideoSceneClassifier finishAnalysisPass:]::kMinSceneSegmentDuration, 300, 600);
  }

  memset(&v75, 0, sizeof(v75));
  v5 = *&pass->var0.var3;
  *&range.start.value = *&pass->var0.var0;
  *&range.start.epoch = v5;
  *&range.duration.timescale = *&pass->var1.var1;
  CMTimeRangeGetEnd(&v75, &range);
  p_start = &self->_start;
  if (self->_start.flags)
  {
    existingScenes = self->_existingScenes;
    *&time2.start.value = *&p_start->value;
    time2.start.epoch = self->_start.epoch;
    range.start = v75;
    *&rhs.start.value = *&p_start->value;
    rhs.start.epoch = self->_start.epoch;
    CMTimeSubtract(&v67.start, &range.start, &rhs.start);
    [(VCPVideoSceneClassifier *)self addResult:existingScenes start:&time2 duration:&v67 keyIsName:1];
  }

  if (self->_sceneResults)
  {
    filteredKeyFrameResults = [(VCPVideoSceneClassifier *)self filteredKeyFrameResults];
    [(VCPVideoSceneClassifier *)self findObjectsOfInterest:filteredKeyFrameResults];
    [(NSMutableArray *)self->_results removeAllObjects];
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = self->_sceneResults;
    v49 = [(NSArray *)obj countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v49)
    {
      v8 = 0;
      v50 = *v71;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v71 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v70 + 1) + 8 * i);
          memset(&range, 0, sizeof(range));
          CMTimeRangeMakeFromDictionary(&range, v9);
          rhs.start = range.duration;
          *&time2.start.value = [VCPVideoSceneClassifier finishAnalysisPass:]::kMinSceneSegmentDuration;
          time2.start.epoch = qword_1ED942A08;
          if ((CMTimeCompare(&rhs.start, &time2.start) & 0x80000000) == 0)
          {
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            memset(&rhs, 0, sizeof(rhs));
            CMTimeRangeMakeFromDictionary(&rhs, v9);
            value = *MEMORY[0x1E6960C98];
            flags = *(MEMORY[0x1E6960C98] + 12);
            timescale = *(MEMORY[0x1E6960C98] + 8);
            v54 = *(MEMORY[0x1E6960C98] + 24);
            v55 = *(MEMORY[0x1E6960C98] + 32);
            epoch = *(MEMORY[0x1E6960C98] + 16);
            v53 = *(MEMORY[0x1E6960C98] + 40);
            for (j = v8; ; j = v59 + 1)
            {
              v59 = j;
              if ([filteredKeyFrameResults count] <= j)
              {
                break;
              }

              memset(&time2, 0, sizeof(time2));
              v12 = [filteredKeyFrameResults objectAtIndexedSubscript:?];
              CMTimeRangeMakeFromDictionary(&time2, v12);

              v66 = rhs;
              memset(&v67, 0, sizeof(v67));
              otherRange = time2;
              CMTimeRangeGetIntersection(&v67, &v66, &otherRange);
              if ((v67.start.flags & 1) == 0 || (v67.duration.flags & 1) == 0 || v67.duration.epoch || v67.duration.value < 0 || (v66.start = v67.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&v66.start, &otherRange.start)))
              {
                v13 = [filteredKeyFrameResults objectAtIndexedSubscript:v59];
                v57 = [v13 objectForKeyedSubscript:@"attributes"];

                v14 = v55;
                v15 = HIDWORD(v55);
                if (-[VCPVideoSceneClassifier compareObjectsOfInterest:withScenes:](self, "compareObjectsOfInterest:withScenes:", v57, dictionary) && [dictionary count] && (flags & 1) != 0 && (v55 & 0x100000000) != 0 && !v53 && (v54 & 0x8000000000000000) == 0)
                {
                  v66.start.value = value;
                  v66.start.timescale = timescale;
                  v66.start.flags = flags;
                  v66.start.epoch = epoch;
                  v66.duration.value = v54;
                  *&v66.duration.timescale = v55;
                  v66.duration.epoch = 0;
                  [(VCPVideoSceneClassifier *)self addAggregatedScenes:dictionary timerange:&v66];
                  dictionary2 = [MEMORY[0x1E695DF90] dictionary];

                  value = *MEMORY[0x1E6960C98];
                  flags = *(MEMORY[0x1E6960C98] + 12);
                  timescale = *(MEMORY[0x1E6960C98] + 8);
                  v54 = *(MEMORY[0x1E6960C98] + 24);
                  v14 = *(MEMORY[0x1E6960C98] + 32);
                  v15 = *(MEMORY[0x1E6960C98] + 36);
                  epoch = *(MEMORY[0x1E6960C98] + 16);
                  v53 = *(MEMORY[0x1E6960C98] + 40);
                  dictionary = dictionary2;
                }

                if ((flags & 1) == 0 || (v15 & 1) == 0 || v53 || v54 < 0)
                {
                  v66 = v67;
                }

                else
                {
                  otherRange.start.value = value;
                  otherRange.start.timescale = timescale;
                  otherRange.start.flags = flags;
                  otherRange.start.epoch = epoch;
                  otherRange.duration.value = v54;
                  otherRange.duration.timescale = v14;
                  otherRange.duration.flags = v15;
                  otherRange.duration.epoch = 0;
                  v64 = v67;
                  CMTimeRangeGetUnion(&v66, &otherRange, &v64);
                }

                value = v66.start.value;
                flags = v66.start.flags;
                timescale = v66.start.timescale;
                v54 = v66.duration.value;
                v55 = *&v66.duration.timescale;
                epoch = v66.start.epoch;
                v53 = v66.duration.epoch;
                v60 = 0u;
                v61 = 0u;
                v62 = 0u;
                v63 = 0u;
                v17 = v57;
                v18 = [v17 countByEnumeratingWithState:&v60 objects:v76 count:16];
                if (v18)
                {
                  v19 = *v61;
                  do
                  {
                    for (k = 0; k != v18; ++k)
                    {
                      if (*v61 != v19)
                      {
                        objc_enumerationMutation(v17);
                      }

                      v21 = *(*(&v60 + 1) + 8 * k);
                      v22 = [v17 objectForKeyedSubscript:v21];
                      [v22 floatValue];
                      v24 = v23;

                      v66.start = v67.duration;
                      Seconds = CMTimeGetSeconds(&v66.start);
                      v26 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v21, "intValue")}];
                      *&v27 = v24;
                      [(VCPVideoSceneClassifier *)self adjustedConfidence:v26 confidence:v27];
                      v29 = v28;

                      v30 = [dictionary objectForKeyedSubscript:v21];
                      v31 = v30;
                      v32 = Seconds;
                      v33 = v24 * v32;
                      if (v30)
                      {
                        [v30 sumConfidence];
                        *&v35 = v33 + v34;
                        [v31 setSumConfidence:v35];
                        [v31 sumAdjustConfidence];
                        *&v37 = v29 + v36;
                        [v31 setSumAdjustConfidence:v37];
                        [v31 duration];
                        *&v39 = v38 + v32;
                        [v31 setDuration:v39];
                        [v31 adjustDuration];
                        if (v29 <= 0.0)
                        {
                          v41 = 0.0;
                        }

                        else
                        {
                          v41 = v32;
                        }

                        *&v40 = v41 + *&v40;
                        [v31 setAdjustDuration:v40];
                      }

                      else
                      {
                        v42 = [VCPClassification alloc];
                        *&v43 = v32;
                        *&v44 = v33;
                        *&v45 = v29;
                        v46 = [(VCPClassification *)v42 initWithSceneId:v21 withDuration:v43 withConfidence:v44 withAdjustConfidence:v45];
                        if (v46)
                        {
                          [dictionary setObject:v46 forKeyedSubscript:v21];
                        }
                      }
                    }

                    v18 = [v17 countByEnumeratingWithState:&v60 objects:v76 count:16];
                  }

                  while (v18);
                }
              }

              else
              {
                *&v66.start.value = *&time2.start.value;
                v66.start.epoch = time2.start.epoch;
                *&otherRange.start.value = *&rhs.start.value;
                otherRange.start.epoch = rhs.start.epoch;
                if (CMTimeCompare(&v66.start, &otherRange.start) >= 1)
                {
                  break;
                }
              }
            }

            if ([dictionary count] && (flags & 1) != 0 && (v55 & 0x100000000) != 0 && !v53 && (v54 & 0x8000000000000000) == 0)
            {
              time2.start.value = value;
              time2.start.timescale = timescale;
              time2.start.flags = flags;
              time2.start.epoch = epoch;
              time2.duration.value = v54;
              *&time2.duration.timescale = v55;
              [(VCPVideoSceneClassifier *)self addAggregatedScenes:dictionary timerange:&time2];
            }

            v8 = v59;
          }
        }

        v49 = [(NSArray *)obj countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v49);
    }
  }

  return 0;
}

- (id)results
{
  v6[1] = *MEMORY[0x1E69E9840];
  results = self->_results;
  if (results)
  {
    v5 = @"ClassificationResults";
    v6[0] = results;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)frameScenes
{
  if (self->_internalFrameScenes)
  {
    v3 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end