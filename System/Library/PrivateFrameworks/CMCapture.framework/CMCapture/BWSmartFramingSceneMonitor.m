@interface BWSmartFramingSceneMonitor
- (BWSmartFramingSceneMonitor)initWithDynamicFieldOfViewRectsEnabled:(BOOL)a3;
- (__CFString)_getOptimalFieldOfViewKeyFromCumulativeFieldOfViewWeights:(int)a3 significantFaceOrBodyCount:;
- (int)resolveSuggestedFieldOfViewRectWithSampleBuffer:(opaqueCMSampleBuffer *)a3 fromFieldOfViewRects:(id)a4 suggestedFieldOfViewRectOut:(CGRect *)a5;
- (int)resolveSuggestedFieldOfViewWithSampleBuffer:(opaqueCMSampleBuffer *)a3 suggestedFieldOfViewOut:(int *)a4;
- (int)setSmartFramingFieldOfViewRects:(id)a3;
- (uint64_t)_reset;
- (uint64_t)_resolveSuggestedFieldOfViewWithSampleBuffer:(void *)a3 usingFieldsOfView:(uint64_t)a4 suggestedFieldOfViewOut:(uint64_t)a5 suggestedFieldOfViewRectOut:;
- (uint64_t)_updateFieldOfViewWeightsUsingFaceRect:(void *)a3 cumulativeFieldOfViewWeights:(CGFloat)a4 fieldsOfView:(CGFloat)a5;
- (void)dealloc;
- (void)setSmartFramingCamGazeProbabilitiesByFaceGroupID:(id)a3;
@end

@implementation BWSmartFramingSceneMonitor

- (BWSmartFramingSceneMonitor)initWithDynamicFieldOfViewRectsEnabled:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = BWSmartFramingSceneMonitor;
  v4 = [(BWSmartFramingSceneMonitor *)&v10 init];
  if (v4)
  {
    v4->_optimalFOVHistory = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_optimalFOVHistoryPTS = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_faceTracks = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_gazeProbabilitiesByFaceGroupID = objc_alloc_init(MEMORY[0x1E695DF90]);
    LOBYTE(v4->_lastSuggestedFieldOfViewChangePTS.epoch) = a3;
    v9[0] = @"FieldOfViewNone";
    v9[1] = @"FieldOfViewPortrait";
    v9[2] = @"FieldOfViewZoomedOutPortrait";
    v9[3] = @"FieldOfViewLandscape";
    v9[4] = @"FieldOfViewZoomedOutLandscape";
    *&v4->_useDynamicFieldOfViewRects = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
    v5 = 1.1;
    if (!LOBYTE(v4->_lastSuggestedFieldOfViewChangePTS.epoch))
    {
      v5 = 1.0;
    }

    *&v4->_suggestedFOVSlackDurationInSeconds = 1051372203;
    HIDWORD(v4->_lastFaceDetectionPTS.epoch) = 1069547520;
    v4->_zoomInTransitionEnabled = 1;
    v4->_faceSignificanceDetectionThreshold = 0.35;
    v4->_faceRectExpansionScaleFactor = v5;
    v7[0] = @"FieldOfViewNone";
    v7[1] = @"FieldOfViewPortrait";
    v8[0] = &unk_1F2246E88;
    v8[1] = &unk_1F2246E88;
    v7[2] = @"FieldOfViewZoomedOutPortrait";
    v8[2] = [MEMORY[0x1E696AD98] numberWithInt:2];
    v7[3] = @"FieldOfViewLandscape";
    v8[3] = [MEMORY[0x1E696AD98] numberWithInt:2];
    v7[4] = @"FieldOfViewZoomedOutLandscape";
    v8[4] = [MEMORY[0x1E696AD98] numberWithInt:3];
    v4->_viewsInAscendingFOV = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  }

  return v4;
}

- (int)setSmartFramingFieldOfViewRects:(id)a3
{
  if (LOBYTE(self->_lastSuggestedFieldOfViewChangePTS.epoch) == 1)
  {
    [BWSmartFramingSceneMonitor setSmartFramingFieldOfViewRects:];
  }

  else
  {
    if ([a3 count] < 5)
    {
      [(BWSmartFramingSceneMonitor *)self _reset];

      v5 = [a3 copy];
      result = 0;
      self->_fieldsOfView = v5;
      return result;
    }

    [BWSmartFramingSceneMonitor setSmartFramingFieldOfViewRects:];
  }

  return -1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSmartFramingSceneMonitor;
  [(BWSmartFramingSceneMonitor *)&v3 dealloc];
}

- (int)resolveSuggestedFieldOfViewWithSampleBuffer:(opaqueCMSampleBuffer *)a3 suggestedFieldOfViewOut:(int *)a4
{
  if (LOBYTE(self->_lastSuggestedFieldOfViewChangePTS.epoch) == 1)
  {
    [BWSmartFramingSceneMonitor resolveSuggestedFieldOfViewWithSampleBuffer:suggestedFieldOfViewOut:];
    return -1;
  }

  else
  {
    fieldsOfView = self->_fieldsOfView;

    return [(BWSmartFramingSceneMonitor *)self _resolveSuggestedFieldOfViewWithSampleBuffer:a3 usingFieldsOfView:fieldsOfView suggestedFieldOfViewOut:a4 suggestedFieldOfViewRectOut:0];
  }
}

- (int)resolveSuggestedFieldOfViewRectWithSampleBuffer:(opaqueCMSampleBuffer *)a3 fromFieldOfViewRects:(id)a4 suggestedFieldOfViewRectOut:(CGRect *)a5
{
  if ((self->_lastSuggestedFieldOfViewChangePTS.epoch & 1) == 0)
  {
    [BWSmartFramingSceneMonitor resolveSuggestedFieldOfViewRectWithSampleBuffer:fromFieldOfViewRects:suggestedFieldOfViewRectOut:];
    return -1;
  }

  if ([a4 count] != 2)
  {
    [BWSmartFramingSceneMonitor resolveSuggestedFieldOfViewRectWithSampleBuffer:fromFieldOfViewRects:suggestedFieldOfViewRectOut:];
    return -1;
  }

  v9 = *(MEMORY[0x1E695F050] + 16);
  v19 = *MEMORY[0x1E695F050];
  v20 = v9;
  v17 = v19;
  v18 = v9;
  FigCFArrayGetCGRectAtIndex();
  v10 = 1;
  FigCFArrayGetCGRectAtIndex();
  v11 = 0;
  *&v12 = *&v20 * *(&v20 + 1);
  if (*&v20 * *(&v20 + 1) > *&v18 * *(&v18 + 1))
  {
    v10 = 0;
    v13 = v17;
    v12 = v18;
    v17 = v19;
    v18 = v20;
    v19 = v13;
    v20 = v12;
    v11 = 1;
  }

  v16[0] = [a4 objectAtIndexedSubscript:{v11, *&v12, @"FieldOfViewPortrait"}];
  v15[1] = @"FieldOfViewZoomedOutPortrait";
  v16[1] = [a4 objectAtIndexedSubscript:v10];
  return -[BWSmartFramingSceneMonitor _resolveSuggestedFieldOfViewWithSampleBuffer:usingFieldsOfView:suggestedFieldOfViewOut:suggestedFieldOfViewRectOut:](self, a3, [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2], 0, a5);
}

uint64_t __145__BWSmartFramingSceneMonitor__resolveSuggestedFieldOfViewWithSampleBuffer_usingFieldsOfView_suggestedFieldOfViewOut_suggestedFieldOfViewRectOut___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsObject:a2];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 40) containsObject:a2];
    if ((result & 1) == 0)
    {
      if (*(a1 + 48))
      {
        v5 = *(a1 + 56);

        return [v5 addObject:a2];
      }
    }
  }

  return result;
}

- (uint64_t)_reset
{
  if (result)
  {
    v1 = result;
    *(result + 36) = 0;
    [*(result + 40) removeAllObjects];
    [*(v1 + 16) removeAllObjects];
    [*(v1 + 24) removeAllObjects];
    v2 = *(v1 + 8);

    return [v2 removeAllObjects];
  }

  return result;
}

- (uint64_t)_resolveSuggestedFieldOfViewWithSampleBuffer:(void *)a3 usingFieldsOfView:(uint64_t)a4 suggestedFieldOfViewOut:(uint64_t)a5 suggestedFieldOfViewRectOut:
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v187 = [MEMORY[0x1E695DF90] dictionary];
  if (!a2 || ![a3 count])
  {
    return 4294954516;
  }

  memset(&v263, 0, sizeof(v263));
  CMSampleBufferGetPresentationTimeStamp(&v263, a2);
  v10 = CMGetAttachment(a2, *off_1E798A5A8, 0);
  v11 = *(v9 + 144);
  v165 = a5;
  if (v10)
  {
    v12 = v10;

    *(v9 + 144) = v12;
    *(v9 + 152) = v263;
  }

  else if (v11 && (OUTLINED_FUNCTION_3_107(*&v263.value), *&lhs.value = *(v9 + 152), OUTLINED_FUNCTION_12_52(*(v9 + 168)), CMTimeGetSeconds(&time) < 0.3))
  {
    v12 = *(v9 + 144);
  }

  else
  {
    v12 = 0;
  }

  v168 = v12;
  v13 = [v12 objectForKeyedSubscript:{*off_1E798ACB8, a2}];
  v14 = *off_1E798ACE8;
  obj = [v13 objectForKeyedSubscript:*off_1E798ACE8];
  v183 = [MEMORY[0x1E695DF70] array];
  v15 = MEMORY[0x1E695F050];
  v256 = 0u;
  v257 = 0u;
  v258 = 0u;
  v259 = 0u;
  v16 = OUTLINED_FUNCTION_9_65();
  if (v16)
  {
    v24 = v16;
    v25 = *v257;
    do
    {
      v26 = 0;
      do
      {
        if (*v257 != v25)
        {
          objc_enumerationMutation(a3);
        }

        [v187 setObject:&unk_1F224CBA0 forKeyedSubscript:*(*(&v256 + 1) + 8 * v26++)];
      }

      while (v24 != v26);
      v16 = OUTLINED_FUNCTION_9_65();
      v24 = v16;
    }

    while (v16);
  }

  v27 = *(v15 + 1);
  v179 = *v15;
  v29 = *(v15 + 2);
  v28 = *(v15 + 3);
  v255 = 0u;
  v254 = 0u;
  v253 = 0u;
  v252 = 0u;
  v30 = OUTLINED_FUNCTION_7_79(v16, v17, v18, v19, v20, v21, v22, v23, sbuf, a4, v165, v168, a3, v175, v179, v183, v187, v191, obj);
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    v33 = *v253;
    v34 = *off_1E798AC70;
    v35 = 0.0;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v253 != v33)
        {
          objc_enumerationMutation(obja);
        }

        v37 = *(*(&v252 + 1) + 8 * i);
        v38 = sfsm_unpackFaceRectAndAdjustWithExpansionScaleFactor(*(v9 + 64));
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v45 = [objc_msgSend(v37 objectForKeyedSubscript:{v34), "stringValue"}];
        v46 = sqrt(v44 * v44 + v42 * v42);
        if (v46 > v35)
        {
          v32 = v45;
          v35 = v46;
          v28 = v44;
          v29 = v42;
          v27 = v40;
          v180 = *&v38;
        }

        v47 = [v184 addObject:v45];
      }

      v31 = OUTLINED_FUNCTION_7_79(v47, v48, v49, v50, v51, v52, v53, v54, sbufa, v163, v166, v169, v172, v176, v180, v184, v188, v192, obja);
    }

    while (v31);
  }

  else
  {
    v32 = 0;
    v35 = 0.0;
  }

  v200 = [MEMORY[0x1E695DF70] array];
  v55 = [objc_msgSend(v169 objectForKeyedSubscript:{*off_1E798ACB0), "objectForKeyedSubscript:", v14}];
  v248 = 0u;
  v249 = 0u;
  v250 = 0u;
  v251 = 0u;
  v56 = [v55 countByEnumeratingWithState:&v248 objects:v247 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = 0;
    v59 = *v249;
    v60 = off_1E798AC70;
    v61 = *off_1E798AC70;
    do
    {
      for (j = 0; j != v57; ++j)
      {
        if (*v249 != v59)
        {
          objc_enumerationMutation(v55);
        }

        v63 = [objc_msgSend(*(*(&v248 + 1) + 8 * j) objectForKeyedSubscript:{v61), "stringValue"}];
        v64 = [v200 addObject:v63];
        if (v58)
        {
          v58 = 1;
        }

        else
        {
          v64 = [*(v9 + 8) objectForKeyedSubscript:v63];
          if (v64)
          {
            v64 = [v64 isPersistentlySignificant];
            v58 = v64;
          }

          else
          {
            v58 = 0;
          }
        }
      }

      v57 = OUTLINED_FUNCTION_1_18(v64, v65, &v248, v247);
    }

    while (v57);
  }

  else
  {
    v60 = off_1E798AC70;
    v58 = 0;
  }

  if ((*(v9 + 80) & 1) == 0 || v32)
  {
    *(v9 + 68) = v263;
  }

  if (!((v32 != 0 || (*(v9 + 120) & 1) == 0) | v58 & 1))
  {
    OUTLINED_FUNCTION_3_107(*&v263.value);
    *&lhs.value = *(v9 + 68);
    OUTLINED_FUNCTION_12_52(*(v9 + 84));
    if (CMTimeGetSeconds(&time) > *(v9 + 92) && *(v9 + 36) != 2)
    {
      *(v9 + 36) = 2;
    }

    goto LABEL_108;
  }

  if (v32)
  {
    v66 = [*(v9 + 40) objectForKeyedSubscript:v32];
    v67 = [*(v9 + 8) objectForKeyedSubscript:v32];
    if (!v67)
    {
      v68 = [TrackedFace alloc];
      LODWORD(v69) = *(v9 + 60);
      v67 = [(TrackedFace *)v68 initWithFaceGroupID:v32 signficanceDetectionThreshold:v69];
      [*(v9 + 8) setObject:v67 forKeyedSubscript:v32];
    }

    [obja count];
    v246 = 0;
    v70 = OUTLINED_FUNCTION_2_120();
    *&v71 = v35;
    *&v72 = v35;
    v193 = v73;
    [v74 updateStatesIfNeededUsingFaceRect:v66 faceSize:v67 gazeProbabilitiesData:v70 largestFaceTrack:v27 largestFaceSize:v29 totalDetectedFaceCount:v28 currentPTS:v71 isSignificantOut:v72];
    HIDWORD(v176) = 0;
    v75 = [MEMORY[0x1E695DF70] array];
    v76 = *(v9 + 8);
    v245[0] = MEMORY[0x1E69E9820];
    v245[1] = 3221225472;
    v245[2] = __145__BWSmartFramingSceneMonitor__resolveSuggestedFieldOfViewWithSampleBuffer_usingFieldsOfView_suggestedFieldOfViewOut_suggestedFieldOfViewRectOut___block_invoke;
    v245[3] = &unk_1E799D4A8;
    v245[4] = v184;
    v245[5] = v200;
    v245[6] = v169;
    v245[7] = v75;
    [v76 enumerateKeysAndObjectsUsingBlock:v245];
    v77 = [*(v9 + 8) removeObjectsForKeys:v75];
    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    v85 = OUTLINED_FUNCTION_8_61(v77, v78, v79, v80, v81, v82, v83, v84, sbufa, v163, v166, v169, v172, v176, v180, v184, v188, v193, obja);
    if (v85)
    {
      v93 = v85;
      v94 = *v242;
      v95 = *v60;
      do
      {
        v96 = 0;
        do
        {
          if (*v242 != v94)
          {
            objc_enumerationMutation(objb);
          }

          v97 = [objc_msgSend(*(*(&v241 + 1) + 8 * v96) objectForKeyedSubscript:{v95), "stringValue"}];
          v98 = [v97 isEqualToString:v32];
          if ((v98 & 1) == 0)
          {
            if (![*(v9 + 8) objectForKeyedSubscript:v97])
            {
              v106 = [TrackedFace alloc];
              LODWORD(v107) = *(v9 + 60);
              [*(v9 + 8) setObject:-[TrackedFace initWithFaceGroupID:signficanceDetectionThreshold:](v106 forKeyedSubscript:{"initWithFaceGroupID:signficanceDetectionThreshold:", v97, v107), v97}];
            }

            v108 = sfsm_unpackFaceRectAndAdjustWithExpansionScaleFactor(*(v9 + 64));
            v110 = v109;
            v112 = v111;
            v114 = v113;
            [*(v9 + 40) objectForKeyedSubscript:v97];
            v115 = OUTLINED_FUNCTION_2_120();
            v98 = [v116 updateStatesIfNeededUsingFaceRect:v115 faceSize:v110 gazeProbabilitiesData:v112 largestFaceTrack:v114 largestFaceSize:? totalDetectedFaceCount:? currentPTS:? isSignificantOut:?];
            if (v246 == 1)
            {
              v98 = [(BWSmartFramingSceneMonitor *)v9 _updateFieldOfViewWeightsUsingFaceRect:v189 cumulativeFieldOfViewWeights:v173 fieldsOfView:v108, v110, v112, v114];
              ++HIDWORD(v177);
            }
          }

          ++v96;
        }

        while (v93 != v96);
        v85 = OUTLINED_FUNCTION_8_61(v98, v99, v100, v101, v102, v103, v104, v105, sbufb, v164, v167, v170, v173, v177, v181, v185, v189, v194, objb);
        v93 = v85;
      }

      while (v85);
    }

    v239 = 0u;
    v240 = 0u;
    v237 = 0u;
    v238 = 0u;
    v117 = OUTLINED_FUNCTION_10_55(v85, v86, v87, v88, v89, v90, v91, v92, sbufb, v164, v167, v170, v173, v177, v181, v185, v189, v194, objb, v200, time1.value, *&time1.timescale, time1.epoch, v203.value, *&v203.timescale, v203.epoch, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, *(&v220 + 1), v221, *(&v221 + 1), v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236);
    if (v117)
    {
      v119 = v117;
      v120 = *v238;
      v121 = v186;
      v118 = HIDWORD(v178);
      do
      {
        for (k = 0; k != v119; ++k)
        {
          if (*v238 != v120)
          {
            objc_enumerationMutation(v201);
          }

          v123 = *(*(&v237 + 1) + 8 * k);
          v124 = [*(v9 + 8) objectForKeyedSubscript:v123];
          if (v124)
          {
            v132 = v124;
            v124 = [v121 containsObject:v123];
            if ((v124 & 1) == 0)
            {
              v124 = [v132 isPersistentlySignificant];
              v118 += v124;
            }
          }
        }

        v119 = OUTLINED_FUNCTION_10_55(v124, v125, v126, v127, v128, v129, v130, v131, sbufc, v163, v166, v171, v174, v178, v182, v186, v190, v195, objc, v201, time1.value, *&time1.timescale, time1.epoch, v203.value, *&v203.timescale, v203.epoch, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, *(&v220 + 1), v221, *(&v221 + 1), v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236);
      }

      while (v119);
    }

    else
    {
      v118 = HIDWORD(v178);
    }

    v133 = [(BWSmartFramingSceneMonitor *)v9 _getOptimalFieldOfViewKeyFromCumulativeFieldOfViewWeights:v190 significantFaceOrBodyCount:v118];
    v134 = [*(v9 + 24) count];
    if ([*(v9 + 24) count])
    {
      v135 = 0;
      while (1)
      {
        memset(&time, 0, sizeof(time));
        [objc_msgSend(*(v9 + 24) objectAtIndex:{v135), "doubleValue"}];
        CMTimeMakeWithSeconds(&rhs, v136, v263.timescale);
        lhs = v263;
        CMTimeSubtract(&time, &lhs, &rhs);
        CMTimeMakeWithSeconds(&rhs, 1.0, v263.timescale);
        OUTLINED_FUNCTION_5_88();
        if (CMTimeCompare(&lhs, &rhs) < 1)
        {
          break;
        }

        if (++v135 >= [*(v9 + 24) count])
        {
          goto LABEL_81;
        }
      }

      v134 = v135;
    }

LABEL_81:
    [*(v9 + 16) removeObjectsInRange:{0, v134}];
    [*(v9 + 24) removeObjectsInRange:{0, v134}];
    [*(v9 + 16) addObject:v133];
    v137 = *(v9 + 24);
    time = v263;
    [v137 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", CMTimeGetSeconds(&time))}];
    v138 = [MEMORY[0x1E696AB50] setWithArray:*(v9 + 16)];
    v220 = 0u;
    v221 = 0u;
    v222 = 0u;
    v223 = 0u;
    v139 = [v138 countByEnumeratingWithState:&v220 objects:&v204 count:16];
    if (v139)
    {
      v140 = v139;
      v141 = 0;
      v142 = 0;
      v143 = *v221;
      do
      {
        for (m = 0; m != v140; ++m)
        {
          if (*v221 != v143)
          {
            objc_enumerationMutation(v138);
          }

          v145 = *(*(&v220 + 1) + 8 * m);
          v146 = [v138 countForObject:v145];
          if (v146 > v141)
          {
            v147 = v146;
            v142 = BWSmartFramingSceneMonitorFieldOfViewTypeFromKey(v145);
            v141 = v147;
          }
        }

        v140 = [v138 countByEnumeratingWithState:&v220 objects:&v204 count:16];
      }

      while (v140);
      v148 = v141;
    }

    else
    {
      v142 = 0;
      v148 = 0.0;
    }

    memset(&v203, 0, sizeof(v203));
    [objc_msgSend(*(v9 + 24) "firstObject")];
    CMTimeMakeWithSeconds(&time, v149, v263.timescale);
    OUTLINED_FUNCTION_3_107(*&v263.value);
    CMTimeSubtract(&v203, &rhs, &time);
    v150 = [*(v9 + 16) count];
    v151 = [*(v9 + 16) count];
    v152 = *(v9 + 36);
    if (!v142)
    {
      goto LABEL_106;
    }

    v153 = *(v9 + 32);
    v154 = v153 * v151;
    CMTimeMakeWithSeconds(&time, 1.0 - v153, v263.timescale);
    rhs = v203;
    if (CMTimeCompare(&rhs, &time) < 1 || (v150 - v154) >= v148)
    {
      goto LABEL_106;
    }

    if (v142 == *(v9 + 36))
    {
      goto LABEL_106;
    }

    BWSmartFramingSceneMonitorFieldOfViewKeyFromType(v142);
    v156 = [OUTLINED_FUNCTION_4() indexOfObject:?];
    if (v156 <= [*(v9 + 128) indexOfObject:BWSmartFramingSceneMonitorFieldOfViewKeyFromType(*(v9 + 36))] && *(v9 + 56) != 1)
    {
      goto LABEL_106;
    }

    memset(&time, 0, sizeof(time));
    CMSampleBufferGetPresentationTimeStamp(&time, sbufc);
    if (*(v9 + 36))
    {
      memset(&rhs, 0, sizeof(rhs));
      OUTLINED_FUNCTION_5_88();
      time1 = *(v9 + 96);
      CMTimeSubtract(&rhs, &lhs, &time1);
      CMTimeMakeWithSeconds(&lhs, 1.5, time.timescale);
      time1 = rhs;
      if (CMTimeCompare(&time1, &lhs) < 1)
      {
        goto LABEL_106;
      }

      *(v9 + 96) = time;
    }

    else
    {
      *(v9 + 96) = time;
    }

    v152 = v142;
LABEL_106:
    if (*(v9 + 36) != v152)
    {
      *(v9 + 36) = v152;
    }
  }

LABEL_108:
  v157 = *(v9 + 120);
  if (v163 && (v157 & 1) == 0)
  {
    *v163 = *(v9 + 36);
  }

  result = 0;
  if (v166 && v157)
  {
    v158 = *(v9 + 36);
    if (v158)
    {
      BWSmartFramingSceneMonitorFieldOfViewKeyFromType(v158);
    }

    FigCFDictionaryGetCGRectIfPresent();
    return 0;
  }

  return result;
}

- (void)setSmartFramingCamGazeProbabilitiesByFaceGroupID:(id)a3
{
  if (self)
  {

    self->_gazeProbabilitiesByFaceGroupID = [a3 mutableCopy];
  }
}

- (uint64_t)_updateFieldOfViewWeightsUsingFaceRect:(void *)a3 cumulativeFieldOfViewWeights:(CGFloat)a4 fieldsOfView:(CGFloat)a5
{
  if (result)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    result = OUTLINED_FUNCTION_1_18(result, a2, &v25, v24);
    if (result)
    {
      v13 = result;
      v14 = *v26;
      v22 = *(MEMORY[0x1E695F050] + 16);
      v23 = *MEMORY[0x1E695F050];
      do
      {
        v15 = 0;
        do
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(a3);
          }

          v16 = *(*(&v25 + 1) + 8 * v15);
          FigCFDictionaryGetCGRectIfPresent();
          v31.origin = v23;
          v31.size = v22;
          v29.origin.x = a4;
          v29.origin.y = a5;
          v29.size.width = a6;
          v29.size.height = a7;
          v30 = CGRectIntersection(v29, v31);
          v17 = v30.size.width * v30.size.height / (a6 * a7);
          [objc_msgSend(a2 objectForKeyedSubscript:{v16), "floatValue"}];
          *&v19 = v18 + v17;
          [MEMORY[0x1E696AD98] numberWithFloat:v19];
          v20 = [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
          ++v15;
        }

        while (v13 != v15);
        result = OUTLINED_FUNCTION_1_18(v20, v21, &v25, v24);
        v13 = result;
      }

      while (result);
    }
  }

  return result;
}

- (__CFString)_getOptimalFieldOfViewKeyFromCumulativeFieldOfViewWeights:(int)a3 significantFaceOrBodyCount:
{
  if (!a1)
  {
    return 0;
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v6 = [a2 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v161 objects:v160 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v162;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v162 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v161 + 1) + 8 * i);
        v12 = MEMORY[0x1E696AD98];
        [objc_msgSend(a2 objectForKeyedSubscript:{v11), "doubleValue"}];
        v14 = v13;
        if ([objc_msgSend(*(a1 + 136) objectForKeyedSubscript:{v11), "intValue"}] > a3)
        {
          v15 = 0.0;
        }

        else
        {
          v15 = 1.0;
        }

        [v12 numberWithDouble:v14 * v15];
        [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
        v16 = [*(a1 + 128) indexOfObject:v11];
        if (v16 < [*(a1 + 128) indexOfObject:BWSmartFramingSceneMonitorFieldOfViewKeyFromType(*(a1 + 36))] && objc_msgSend(objc_msgSend(*(a1 + 136), "objectForKeyedSubscript:", BWSmartFramingSceneMonitorFieldOfViewKeyFromType(*(a1 + 36))), "intValue") <= a3)
        {
          [a2 setObject:&unk_1F224CBA0 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v161 objects:v160 count:16];
    }

    while (v8);
  }

  [objc_msgSend(a2 keysSortedByValueUsingComparator:{&__block_literal_global_128), "firstObject"}];
  v17 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
  [v17 doubleValue];
  if (v18 == 0.0)
  {
    return @"FieldOfViewNone";
  }

  v19 = [MEMORY[0x1E695DF70] array];
  v27 = OUTLINED_FUNCTION_11_54(v19, v20, v21, v22, v23, v24, v25, v26, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, 0);
  if (v27)
  {
    v35 = v27;
    v36 = MEMORY[0];
    do
    {
      v37 = 0;
      do
      {
        if (MEMORY[0] != v36)
        {
          objc_enumerationMutation(a2);
        }

        v38 = *(8 * v37);
        v39 = [objc_msgSend(a2 objectForKeyedSubscript:{v38), "isEqualToNumber:", v17}];
        if (v39)
        {
          v39 = [v19 addObject:v38];
        }

        ++v37;
      }

      while (v35 != v37);
      v27 = OUTLINED_FUNCTION_11_54(v39, v40, v41, v42, v43, v44, v45, v46, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v159);
      v35 = v27;
    }

    while (v27);
  }

  v47 = *(a1 + 128);
  v48 = OUTLINED_FUNCTION_2_0(v27, v28, v29, v30, v31, v32, v33, v34, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, 0);
  if (!v48)
  {
    return @"FieldOfViewNone";
  }

  v49 = v48;
  v50 = MEMORY[0];
LABEL_27:
  v51 = 0;
  while (1)
  {
    if (MEMORY[0] != v50)
    {
      objc_enumerationMutation(v47);
    }

    v52 = *(8 * v51);
    v53 = [v19 containsObject:v52];
    if (v53)
    {
      return v52;
    }

    if (v49 == ++v51)
    {
      v49 = OUTLINED_FUNCTION_2_0(v53, v54, v55, v56, v57, v58, v59, v60, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112);
      if (v49)
      {
        goto LABEL_27;
      }

      return @"FieldOfViewNone";
    }
  }
}

- (uint64_t)setSmartFramingFieldOfViewRects:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)setSmartFramingFieldOfViewRects:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)resolveSuggestedFieldOfViewWithSampleBuffer:suggestedFieldOfViewOut:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)resolveSuggestedFieldOfViewRectWithSampleBuffer:fromFieldOfViewRects:suggestedFieldOfViewRectOut:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)resolveSuggestedFieldOfViewRectWithSampleBuffer:fromFieldOfViewRects:suggestedFieldOfViewRectOut:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end