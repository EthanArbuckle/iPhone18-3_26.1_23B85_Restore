@interface BWInferenceHumanPosePropagator
- (BWInferenceHumanPosePropagator)initWithOutputRequirement:(id)a3 rotateOutput:(BOOL)a4;
- (__IOSurface)backingMemoryForMetadataRequirement:(id)a3 bindingName:(id)a4 surfaceProperties:(id)a5;
- (double)calculateIOU:(double)a3 with:(double)a4;
- (void)dealloc;
- (void)keypointsFromModelOutput:width:height:persons:;
- (void)newMatchesOfHumanPoses:toTracks:;
- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6;
@end

@implementation BWInferenceHumanPosePropagator

- (BWInferenceHumanPosePropagator)initWithOutputRequirement:(id)a3 rotateOutput:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = BWInferenceHumanPosePropagator;
  v6 = [(BWInferenceHumanPosePropagator *)&v8 init];
  if (v6)
  {
    v6->_outputRequirement = [a3 copy];
    v6->_rotateOutput = a4;
  }

  return v6;
}

- (void)dealloc
{
  tensorBackingSurface = self->_tensorBackingSurface;
  if (tensorBackingSurface)
  {
    CFRelease(tensorBackingSurface);
    self->_tensorBackingSurface = 0;
  }

  v4.receiver = self;
  v4.super_class = BWInferenceHumanPosePropagator;
  [(BWInferenceHumanPosePropagator *)&v4 dealloc];
}

- (__IOSurface)backingMemoryForMetadataRequirement:(id)a3 bindingName:(id)a4 surfaceProperties:(id)a5
{
  result = self->_tensorBackingSurface;
  if (!result)
  {
    result = IOSurfaceCreate(a5);
    self->_tensorBackingSurface = result;
  }

  return result;
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_7_48();
  }

  if (a4)
  {
    outputRequirement = self->_outputRequirement;
    v11 = [a4 tensorForRequirement:outputRequirement];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __136__BWInferenceHumanPosePropagator_propagateInferenceResultsToInferenceDictionary_usingStorage_inputSampleBuffer_propagationSampleBuffer___block_invoke;
    v25[3] = &unk_1E7999450;
    v25[4] = self;
    v26 = *(v11 + 80);
    v12 = [v25 copy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = [(BWInferenceMetadataRequirement *)outputRequirement metadataKeys];
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v21 + 1) + 8 * i);
          v19 = v12;
          [a3 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v19, &v18, 1)}];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v15);
    }
  }

  if (*v9 == 1)
  {
    OUTLINED_FUNCTION_7_48();
  }
}

uint64_t __136__BWInferenceHumanPosePropagator_propagateInferenceResultsToInferenceDictionary_usingStorage_inputSampleBuffer_propagationSampleBuffer___block_invoke(uint64_t a1, void *a2)
{
  v4 = a1;
  IOSurfaceLock(*(*(a1 + 32) + 32), 5u, 0);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  IOSurfaceGetBaseAddress(*(*(v4 + 32) + 32));
  [BWInferenceHumanPosePropagator keypointsFromModelOutput:width:height:persons:];
  if ([v5 count])
  {
    v19 = v4;
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(objc_msgSend(a2, "observations"), "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [a2 observations];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if ([v12 objectKind] == 1000)
          {
            OUTLINED_FUNCTION_10_34();
            v20[0] = [v2 numberWithDouble:?];
            OUTLINED_FUNCTION_10_34();
            v20[1] = [v2 numberWithDouble:v13];
            OUTLINED_FUNCTION_10_34();
            v20[2] = [v2 numberWithDouble:v14];
            OUTLINED_FUNCTION_10_34();
            v20[3] = [v2 numberWithDouble:v15];
            v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
            [v12 identifier];
            [v6 setObject:v2 forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_15(), "numberWithUnsignedInteger:")}];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v21 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v4 = v19;
      [BWInferenceHumanPosePropagator newMatchesOfHumanPoses:toTracks:];
      v17 = v16;
    }

    else
    {
      v17 = 0;
      v4 = v19;
    }
  }

  else
  {
    v17 = 0;
  }

  IOSurfaceUnlock(*(*(v4 + 32) + 32), 5u, 0);

  return v17;
}

- (void)keypointsFromModelOutput:width:height:persons:
{
  OUTLINED_FUNCTION_6_4();
  v157 = v2;
  v163 = v3;
  __src = v4;
  if (v3)
  {
    v5 = v1;
    v6 = v0;
    obj = [MEMORY[0x1E695DF70] array];
    if (__src)
    {
      v7 = *(v163 + 24);
      if (v7 || (v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:34 * v5 * v6], (*(v163 + 24) = v7) != 0))
      {
        v8 = [v7 mutableBytes];
        if (v8)
        {
          v9 = v8;
          memcpy(v8, __src, 34 * v5 * v6);
          v10 = 0;
          v169 = v5 * v6;
          LOWORD(v11) = COERCE_UNSIGNED_INT(-1.0);
          v12 = v9;
          do
          {
            if (v5)
            {
              v13 = 0;
              LODWORD(v14) = 0;
              v15 = &v9[2 * v169 * v10];
              v16 = -3;
              do
              {
                if (v6)
                {
                  v17 = 0;
                  v14 = v14;
                  v18 = v12;
                  do
                  {
                    _H1 = *&v15[2 * v14];
                    __asm { FCVT            S2, H1 }

                    if (_S2 >= 0.1)
                    {
                      v24 = -3;
                      v25 = v16;
                      do
                      {
                        v26 = (v24 + v13);
                        v28 = (v26 & 0x80000000) != 0 || v26 >= v5;
                        v29 = -3;
                        while (v28 || v17 + v29 < 0 || v17 + v29 >= v6 || *&v18[2 * v29 + 2 * v6 * v25] <= _H1)
                        {
                          if (++v29 == 4)
                          {
                            goto LABEL_28;
                          }
                        }

                        _H1 = _H1 + *&v11;
                        *&v15[2 * v14] = _H1;
LABEL_28:
                        ++v24;
                        ++v25;
                      }

                      while (v24 != 4);
                    }

                    else
                    {
                      *&v15[2 * v14] = _H1 + *&v11;
                    }

                    ++v17;
                    ++v14;
                    v18 += 2;
                  }

                  while (v17 != v6);
                }

                ++v13;
                ++v16;
              }

              while (v13 != v5);
            }

            ++v10;
            v12 += 2 * v5 * v6;
          }

          while (v10 != 17);
          v160 = v9;
          v30 = [MEMORY[0x1E695DF70] array];
          v38 = v30;
          v184 = 0;
          v39 = 0x1E696A000;
          v40 = 0x1E695D000;
          do
          {
            if (v5)
            {
              v181 = 0;
              LODWORD(v41) = 0;
              v42 = v160 + 2 * v169 * v184;
              v172 = __src + 2 * v169 * (v184 + 17);
              v175 = v42;
              do
              {
                if (v6)
                {
                  v43 = 0;
                  v41 = v41;
                  do
                  {
                    _H0 = *(v42 + 2 * v41);
                    __asm { FCVT            S0, H0 }

                    if (_S0 > 0.1)
                    {
                      v187 = v43;
                      _H8 = *(v172 + 2 * v41);
                      v237 = 0u;
                      v238 = 0u;
                      v239 = 0u;
                      v240 = 0u;
                      v47 = OUTLINED_FUNCTION_6_51();
                      __asm { FCVT            S8, H8 }

                      if (!v47)
                      {
                        goto LABEL_52;
                      }

                      v50 = v47;
                      v51 = 0;
                      v52 = *v238;
                      LODWORD(v53) = -1;
                      _H9 = 31744;
                      do
                      {
                        v55 = 0;
                        v56 = v51;
                        do
                        {
                          if (*v238 != v52)
                          {
                            objc_enumerationMutation(v38);
                          }

                          [objc_msgSend(*(*(&v237 + 1) + 8 * v55) objectAtIndexedSubscript:{0), "floatValue"}];
                          _S1 = _S8 - v57;
                          __asm
                          {
                            FCVT            S2, H9
                            FCVT            H1, S1
                          }

                          v60 = fabsl(*&_S1);
                          if (vabds_f32(_S8, v57) >= _S2)
                          {
                            v53 = v53;
                          }

                          else
                          {
                            *&_H9 = v60;
                            v53 = v56;
                          }

                          ++v56;
                          ++v55;
                        }

                        while (v50 != v55);
                        v51 += v50;
                        v50 = OUTLINED_FUNCTION_6_51();
                      }

                      while (v50);
                      v39 = 0x1E696A000uLL;
                      v40 = 0x1E695D000uLL;
                      if ((v53 & 0x80000000) != 0)
                      {
                        goto LABEL_52;
                      }

                      __asm { FCVT            S0, H9 }

                      if (_S0 >= 0.3)
                      {
LABEL_52:
                        *&v48 = _S8;
                        v234[0] = [*(v39 + 3480) numberWithFloat:v48];
                        v234[1] = &unk_1F224A890;
                        [*(v40 + 3784) arrayWithObjects:v234 count:2];
                        [OUTLINED_FUNCTION_15() addObject:?];
                        v75 = [MEMORY[0x1E695DF70] array];
                        v76 = 17;
                        do
                        {
                          [v75 addObject:&unk_1F2249000];
                          --v76;
                        }

                        while (v76);
                        v233[0] = [*(v39 + 3480) numberWithInt:v187];
                        v233[1] = [*(v39 + 3480) numberWithInt:v181];
                        v42 = v160 + 2 * v169 * v184;
                        _H0 = *(v175 + 2 * v41);
                        __asm { FCVT            S0, H0 }

                        v233[2] = [*(v39 + 3480) numberWithFloat:_D0];
                        [v75 setObject:objc_msgSend(*(v40 + 3784) atIndexedSubscript:{"arrayWithObjects:count:", v233, 3), v184}];
                        v79 = v75;
                        v43 = v187;
                        v30 = [obj addObject:v79];
                      }

                      else
                      {
                        v62 = [obj objectAtIndexedSubscript:v53];
                        [objc_msgSend(objc_msgSend(v38 objectAtIndexedSubscript:{v53), "objectAtIndexedSubscript:", 0), "floatValue"}];
                        v64 = v63;
                        [objc_msgSend(objc_msgSend(v38 objectAtIndexedSubscript:{v53), "objectAtIndexedSubscript:", 1), "floatValue"}];
                        v66 = _S8 + (v64 * v65);
                        v67 = v65 + 1.0;
                        *&v68 = v66 / (v65 + 1.0);
                        v236[0] = [MEMORY[0x1E696AD98] numberWithFloat:v68];
                        *&v69 = v67;
                        v236[1] = [MEMORY[0x1E696AD98] numberWithFloat:v69];
                        [MEMORY[0x1E695DEC8] arrayWithObjects:v236 count:2];
                        [OUTLINED_FUNCTION_15() setObject:? atIndexedSubscript:?];
                        v42 = v160 + 2 * v169 * v184;
                        _H0 = *(v175 + 2 * v41);
                        __asm { FCVT            S8, H0 }

                        v30 = [objc_msgSend(objc_msgSend(v62 objectAtIndexedSubscript:{v184), "objectAtIndexedSubscript:", 2), "floatValue"}];
                        v43 = v187;
                        if (v72 < _S8)
                        {
                          v235[0] = [MEMORY[0x1E696AD98] numberWithInt:v187];
                          v235[1] = [MEMORY[0x1E696AD98] numberWithInt:v181];
                          _H0 = *(v175 + 2 * v41);
                          __asm { FCVT            S0, H0 }

                          v235[2] = [MEMORY[0x1E696AD98] numberWithFloat:_D0];
                          v30 = [v62 setObject:objc_msgSend(MEMORY[0x1E695DEC8] atIndexedSubscript:{"arrayWithObjects:count:", v235, 3), v184}];
                        }
                      }
                    }

                    ++v43;
                    ++v41;
                  }

                  while (v43 != v6);
                }

                ++v181;
              }

              while (v181 != v5);
            }

            ++v184;
          }

          while (v184 != 17);
          v231 = 0u;
          v232 = 0u;
          v229 = 0u;
          v230 = 0u;
          v80 = OUTLINED_FUNCTION_8_41(v30, v31, v32, v33, v34, v35, v36, v37, v154, v157, v160, v163, __src, v169, v172, v175, obj, v181, 17, v187, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, *(&v212 + 1), v213, *(&v213 + 1), v214, *(&v214 + 1), v215, *(&v215 + 1), v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228);
          if (v80)
          {
            v88 = v80;
            v89 = *v230;
LABEL_60:
            v90 = 0;
            while (1)
            {
              if (*v230 != v89)
              {
                objc_enumerationMutation(obja);
              }

              v91 = *(*(&v229 + 1) + 8 * v90);
              if ([v91 count] != 17)
              {
                break;
              }

              v92 = [v91 count];
              if (v92)
              {
                for (i = 0; i < v92; ++i)
                {
                  v101 = [v91 objectAtIndexedSubscript:i];
                  [objc_msgSend(v101 objectAtIndexedSubscript:{2), "floatValue"}];
                  if (v102 > 0.1)
                  {
                    v103 = [objc_msgSend(v101 objectAtIndexedSubscript:{0), "intValue"}];
                    v104 = [objc_msgSend(v101 objectAtIndexedSubscript:{1), "intValue"}];
                    v106 = 0.0;
                    v107 = -3;
                    v108 = 0.0;
                    v109 = 0.0;
                    do
                    {
                      v110 = (v107 + v104);
                      v111 = __srca + 2 * v170 * i + 2 * v110 * v6;
                      *&v105 = v110;
                      v113 = (v110 & 0x80000000) != 0 || v110 >= v5;
                      v114 = 7;
                      v115 = v103 - 3;
                      do
                      {
                        v116 = (v115 & 0x80000000) != 0 || v113;
                        if ((v116 & 1) == 0 && v115 < v6)
                        {
                          _H2 = *(v111 + 2 * v115);
                          __asm { FCVT            S2, H2 }

                          if (_S2 > 0.05)
                          {
                            v106 = v106 + _S2;
                            *&v109 = *&v109 + (_S2 * v115);
                            v108 = v108 + (_S2 * *&v105);
                          }
                        }

                        ++v115;
                        --v114;
                      }

                      while (v114);
                      ++v107;
                    }

                    while (v107 != 4);
                    if (v106 > 0.0)
                    {
                      *&v109 = (*&v109 / v106) + 0.5;
                      v217 = [MEMORY[0x1E696AD98] numberWithFloat:{v109, v105}];
                      *&v119 = (v108 / v106) + 0.5;
                      v218 = [MEMORY[0x1E696AD98] numberWithFloat:v119];
                      v219 = [v101 objectAtIndexedSubscript:2];
                      [v91 setObject:objc_msgSend(MEMORY[0x1E695DEC8] atIndexedSubscript:{"arrayWithObjects:count:", &v217, 3), i}];
                    }
                  }

                  v92 = [v91 count];
                }
              }

              if (++v90 == v88)
              {
                v80 = OUTLINED_FUNCTION_8_41(v92, v93, v94, v95, v96, v97, v98, v99, v155, v158, v161, v164, __srca, v170, v173, v176, obja, v182, v185, v188, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, *(&v212 + 1), v213, *(&v213 + 1), v214, *(&v214 + 1), v215, *(&v215 + 1), v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228);
                v88 = v80;
                if (v80)
                {
                  goto LABEL_60;
                }

                goto LABEL_89;
              }
            }
          }

          else
          {
LABEL_89:
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v120 = OUTLINED_FUNCTION_9_41(v80, v81, v82, v83, v84, v85, v86, v87, v155, v158, v161, v164, __srca, v170, v173, v176, obja, v182, v185, v188, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, 0);
            if (v120)
            {
              v121 = v120;
              v122 = *v213;
              v123 = v6;
              v124 = v5;
              while (2)
              {
                for (j = 0; j != v121; ++j)
                {
                  if (*v213 != v122)
                  {
                    objc_enumerationMutation(objb);
                  }

                  v126 = *(*(&v212 + 1) + 8 * j);
                  v127 = [v126 count];
                  if (v127)
                  {
                    v135 = 0;
                    v136 = 0.0;
                    v137 = 0.0;
                    while ([OUTLINED_FUNCTION_1_86() count] == 3)
                    {
                      v138 = *(v165 + 16);
                      v139 = MEMORY[0x1E696AD98];
                      v140 = OUTLINED_FUNCTION_1_86();
                      if (v138 == 1)
                      {
                        [objc_msgSend(v140 objectAtIndexedSubscript:{1), "floatValue"}];
                        *&v142 = 1.0 - (v141 / v124);
                        v143 = 0;
                        v193 = [v139 numberWithFloat:v142];
                        v144 = &v193;
                        v145 = v123;
                      }

                      else
                      {
                        [objc_msgSend(v140 objectAtIndexedSubscript:{0), "floatValue"}];
                        *&v147 = v146 / v123;
                        v190 = [v139 numberWithFloat:v147];
                        v144 = &v190;
                        v143 = 1;
                        v145 = v124;
                      }

                      v148 = MEMORY[0x1E696AD98];
                      [objc_msgSend(OUTLINED_FUNCTION_1_86() objectAtIndexedSubscript:{v143), "floatValue"}];
                      *&v150 = v149 / v145;
                      v144[1] = [v148 numberWithFloat:v150];
                      v144[2] = [OUTLINED_FUNCTION_1_86() objectAtIndexedSubscript:2];
                      [MEMORY[0x1E695DEC8] arrayWithObjects:v144 count:3];
                      [OUTLINED_FUNCTION_7() setObject:? atIndexedSubscript:?];
                      [objc_msgSend(OUTLINED_FUNCTION_1_86() objectAtIndexedSubscript:{2), "floatValue"}];
                      if (v151 > 0.1)
                      {
                        [objc_msgSend(OUTLINED_FUNCTION_1_86() objectAtIndexedSubscript:{2), "floatValue"}];
                        v137 = v137 + v152;
                        v136 = v136 + 1.0;
                      }

                      ++v135;
                      v127 = [v126 count];
                      if (v127 <= v135)
                      {
                        if (v136 > 4.0 && (v137 / v136) > 0.1)
                        {
                          *&v153 = v137 / v136;
                          v127 = [v159 addObject:{v126, v153}];
                        }

                        goto LABEL_106;
                      }
                    }

                    goto LABEL_108;
                  }

LABEL_106:
                  ;
                }

                v121 = OUTLINED_FUNCTION_9_41(v127, v128, v129, v130, v131, v132, v133, v134, v156, v159, v162, v165, __srcb, v171, v174, v177, objb, v183, v186, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212);
                if (v121)
                {
                  continue;
                }

                break;
              }
            }
          }
        }
      }
    }
  }

LABEL_108:
  OUTLINED_FUNCTION_5_5();
}

- (void)newMatchesOfHumanPoses:toTracks:
{
  OUTLINED_FUNCTION_6_4();
  v78 = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v0;
    objc_alloc(MEMORY[0x1E695DF90]);
    v5 = [v4 count];
    v6 = v5 >= [v3 count] ? v3 : v4;
    [v6 count];
    v7 = [OUTLINED_FUNCTION_7() initWithCapacity:?];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v73 = OUTLINED_FUNCTION_5_60(v7, v8, v9, v10, v11, v12, v13, v14, v7, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, *(&v107 + 1), v108, *(&v108 + 1), v109, *(&v109 + 1), v110, *(&v110 + 1), v111);
    if (v73)
    {
      v71 = *v113;
      HIDWORD(v67) = 1045220557;
      v69 = v3;
      do
      {
        for (i = 0; i != v73; ++i)
        {
          if (*v113 != v71)
          {
            objc_enumerationMutation(v3);
          }

          v16 = *(*(&v112 + 1) + 8 * i);
          v17 = [v3 objectForKeyedSubscript:v16];
          [objc_msgSend(v17 objectAtIndexedSubscript:{0), "floatValue"}];
          v19 = v18;
          [objc_msgSend(v17 objectAtIndexedSubscript:{1), "floatValue"}];
          v21 = v20;
          [objc_msgSend(v17 objectAtIndexedSubscript:{2), "floatValue"}];
          v23 = v22;
          [objc_msgSend(v17 objectAtIndexedSubscript:{3), "floatValue"}];
          v25 = v24;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v26 = [v4 countByEnumeratingWithState:&v107 objects:&v91 count:16];
          if (v26)
          {
            v34 = v26;
            v75 = v16;
            v77 = i;
            v35 = 0;
            v36 = 0;
            *&v83 = v23;
            *&v85 = v25;
            v37 = v21;
            v38 = v19;
            v81 = *v108;
            v39 = 0.0;
            do
            {
              v40 = v4;
              v41 = 0;
              v42 = v35;
              do
              {
                if (*v108 != v81)
                {
                  objc_enumerationMutation(v40);
                }

                v43 = 0;
                v44 = *(*(&v107 + 1) + 8 * v41);
                v45 = 1.0;
                v46 = 0.0;
                v47 = -11;
                v48 = 0.0;
                v49 = 1.0;
                do
                {
                  if (v43 < 9 || v47 <= 1)
                  {
                    v51 = [v44 objectAtIndexedSubscript:v43];
                    [objc_msgSend(v51 objectAtIndexedSubscript:{2), "floatValue"}];
                    if (v52 > 0.1)
                    {
                      [objc_msgSend(v51 objectAtIndexedSubscript:{0), "floatValue"}];
                      v49 = fminf(v49, v53);
                      [objc_msgSend(v51 objectAtIndexedSubscript:{1), "floatValue"}];
                      v45 = fminf(v45, v54);
                      [objc_msgSend(v51 objectAtIndexedSubscript:{0), "floatValue"}];
                      v48 = fmaxf(v48, v55);
                      [objc_msgSend(v51 objectAtIndexedSubscript:{1), "floatValue"}];
                      v46 = fmaxf(v46, v56);
                    }
                  }

                  ++v43;
                  ++v47;
                }

                while (v43 != 13);
                v57 = [(BWInferenceHumanPosePropagator *)v79 calculateIOU:v38 with:v37, *&v83, *&v85, v49, v45, (v48 - v49), (v46 - v45)];
                if (*&v57 > v39)
                {
                  v39 = *&v57;
                  v36 = v42;
                }

                ++v42;
                ++v41;
              }

              while (v41 != v34);
              v35 += v34;
              v4 = v40;
              v26 = [v40 countByEnumeratingWithState:&v107 objects:&v91 count:16];
              v34 = v26;
            }

            while (v26);
            v3 = v69;
            i = v77;
            if (v39 > *(&v67 + 1))
            {
              v58 = [v40 objectAtIndexedSubscript:v36];
              v59 = objc_alloc(MEMORY[0x1E695DF70]);
              [v58 count];
              v60 = [OUTLINED_FUNCTION_7() initWithCapacity:?];
              v61 = objc_alloc(MEMORY[0x1E695DF70]);
              [v58 count];
              v62 = [OUTLINED_FUNCTION_7() initWithCapacity:?];
              objc_alloc(MEMORY[0x1E695DF70]);
              [v58 count];
              v63 = [OUTLINED_FUNCTION_7() initWithCapacity:?];
              if ([v58 count])
              {
                v64 = 0;
                do
                {
                  [v60 addObject:{objc_msgSend(objc_msgSend(v58, "objectAtIndexedSubscript:", v64), "objectAtIndexedSubscript:", 0)}];
                  [objc_msgSend(v58 objectAtIndexedSubscript:{v64), "objectAtIndexedSubscript:", 1}];
                  [OUTLINED_FUNCTION_15() addObject:?];
                  [v63 addObject:{objc_msgSend(objc_msgSend(v58, "objectAtIndexedSubscript:", v64++), "objectAtIndexedSubscript:", 2)}];
                }

                while (v64 < [v58 count]);
              }

              v88 = v63;
              v89 = @"human_pose";
              v86 = v60;
              v87 = v62;
              v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:3];
              [v65 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v90, &v89, 1), v75}];
            }
          }
        }

        v73 = OUTLINED_FUNCTION_5_60(v26, v27, v28, v29, v30, v31, v32, v33, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, *(&v107 + 1), v108, *(&v108 + 1), v109, *(&v109 + 1), v110, *(&v110 + 1), v111);
      }

      while (v73);
    }
  }

  OUTLINED_FUNCTION_5_5();
}

- (double)calculateIOU:(double)a3 with:(double)a4
{
  if (!a1)
  {
    return 0.0;
  }

  v9 = fmax(a2, a6);
  v10 = fmax(a3, a7);
  v11 = fmin(a2 + a4, a6 + a8);
  v12 = fmin(a3 + a5, a7 + a9);
  result = fmax((v11 - v9), 0.0) * fmax((v12 - v10), 0.0);
  *&result = result;
  v13 = a4 * a5;
  v14 = a8 * a9;
  *&result = *&result / (((v13 + v14) - *&result) + 1.0e-12);
  return result;
}

@end