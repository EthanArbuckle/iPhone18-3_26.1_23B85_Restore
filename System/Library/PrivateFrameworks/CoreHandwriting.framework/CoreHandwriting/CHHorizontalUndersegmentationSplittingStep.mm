@interface CHHorizontalUndersegmentationSplittingStep
- (CHHorizontalUndersegmentationSplittingStep)initWithAdditionalRecognitionBlock:(id)block;
- (id)process:(id)process options:(id)options;
@end

@implementation CHHorizontalUndersegmentationSplittingStep

- (CHHorizontalUndersegmentationSplittingStep)initWithAdditionalRecognitionBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = CHHorizontalUndersegmentationSplittingStep;
  v5 = [(CHHorizontalUndersegmentationSplittingStep *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1865E6810](blockCopy);
    additionalRecognitionBlock = v5->_additionalRecognitionBlock;
    v5->_additionalRecognitionBlock = v6;
  }

  return v5;
}

- (id)process:(id)process options:(id)options
{
  v229 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  if (processCopy)
  {
    v11 = processCopy[9];
  }

  else
  {
    v11 = 0;
  }

  v220 = processCopy;
  obj = objc_msgSend_copy(v11, v6, v7, v8, v9, v10);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v221, v225, 16, v13);
  v20 = v14;
  if (v14)
  {
    v212 = *v222;
    if (self)
    {
      while (1)
      {
        v215 = 0;
        v213 = v20;
        do
        {
          if (*v222 != v212)
          {
            objc_enumerationMutation(obj);
          }

          if (processCopy)
          {
            v21 = processCopy[10];
          }

          else
          {
            v21 = 0;
          }

          v22 = *(*(&v221 + 1) + 8 * v215);
          v23 = v21;
          v24 = MEMORY[0x1E696AD98];
          v30 = objc_msgSend_uniqueIdentifier(v22, v25, v26, v27, v28, v29);
          v35 = objc_msgSend_numberWithInteger_(v24, v31, v30, v32, v33, v34);
          v217 = objc_msgSend_objectForKeyedSubscript_(v23, v36, v35, v37, v38, v39);

          v45 = objc_msgSend_mathResult(v217, v40, v41, v42, v43, v44);
          v216 = v22;
          v56 = objc_msgSend_topTranscription(v45, v46, v47, v48, v49, v50);
          if (!v45 || (objc_msgSend_strokeIndexes(v45, v51, v52, v53, v54, v55), v57 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend_count(v57, v58, v59, v60, v61, v62), objc_msgSend_strokeIdentifiers(v216, v64, v65, v66, v67, v68), v69 = objc_claimAutoreleasedReturnValue(), LOBYTE(v63) = v63 == objc_msgSend_count(v69, v70, v71, v72, v73, v74), v69, v57, (v63 & 1) == 0) || (objc_msgSend_containsString_(v56, v75, @"\\hline", v76, v77, v78) & 1) != 0)
          {

            v83 = v45;
LABEL_14:

            goto LABEL_15;
          }

          v86 = objc_msgSend_componentsSeparatedByString_(v56, v79, @"=", v80, v81, v82);
          v92 = objc_msgSend_count(v86, v87, v88, v89, v90, v91) > 2;

          if (v92)
          {
            v98 = objc_msgSend_mathResult(v217, v93, v94, v95, v96, v97);
            v226 = 0;
            v227 = 0;
            v228 = 0;
            v210 = v98;
            v102 = objc_msgSend_syntaxAllowedSplitsForResult_outSubResultBounds_(CHMathUtilities, v99, v98, &v226, v100, v101);
            v108 = objc_msgSend_count(v102, v103, v104, v105, v106, v107);
            if (v108 == (v227 - v226) >> 5)
            {
              objc_msgSend_baseCharacterHeight(v210, v109, v110, v111, v112, v113);
              v119 = 0;
              for (i = 0; i < objc_msgSend_count(v102, v114, v115, v116, v117, v118); ++i)
              {
                v126 = objc_msgSend_objectAtIndexedSubscript_(v102, v121, i, v122, v123, v124);
                if (objc_msgSend_count(v126, v127, v128, v129, v130, v131) == 1)
                {
                  v136 = objc_msgSend_objectAtIndexedSubscript_(v126, v132, 0, v133, v134, v135);
                  v142 = objc_msgSend_string(v136, v137, v138, v139, v140, v141);
                  isEqualToString = objc_msgSend_isEqualToString_(v142, v143, @"=", v144, v145, v146);

                  if (isEqualToString)
                  {
                    v148 = v119;
                    v149 = v119 >> 3;
                    if (((v119 >> 3) + 1) >> 61)
                    {
                      sub_18368964C();
                    }

                    if (v119 >> 3 != -1)
                    {
                      if (!(((v119 >> 3) + 1) >> 61))
                      {
                        operator new();
                      }

                      sub_183688F00();
                    }

                    *(8 * v149) = i;
                    v119 = 8 * v149 + 8;
                    memcpy(0, 0, v148);
                  }
                }
              }

              if ((v119 >> 3) >= 2)
              {
                if (v227 - v226 == 32)
                {
                  sub_1838EF090(0, 0, 0, 1, v125);
                  operator new();
                }

                CGRectGetMaxX(*v226);
                CGRectGetMinX(*(v226 + 1));
                operator new();
              }
            }

            if (v226)
            {
              v227 = v226;
              operator delete(v226);
            }

            v155 = objc_msgSend_mathResult(v217, v150, v151, v152, v153, v154);
            v45 = objc_msgSend_updateStrokeIndexOffsetForSubResults_fromResult_(CHTokenizedMathResult, v156, 0, v155, v157, v158);

            v83 = 0;
            goto LABEL_14;
          }

LABEL_15:

          ++v215;
          processCopy = v220;
        }

        while (v215 != v213);
        v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v84, &v221, v225, 16, v85);
        v20 = v159;
        if (!v159)
        {
          goto LABEL_39;
        }
      }
    }

    if (processCopy)
    {
      do
      {
        v161 = v14;
        for (j = 0; j != v161; ++j)
        {
          if (*v222 != v212)
          {
            objc_enumerationMutation(obj);
          }

          v163 = *(*(&v221 + 1) + 8 * j);
          v164 = v220[10];
          v165 = MEMORY[0x1E696AD98];
          v171 = objc_msgSend_uniqueIdentifier(v163, v166, v167, v168, v169, v170);
          v176 = objc_msgSend_numberWithInteger_(v165, v172, v171, v173, v174, v175);
          v218 = objc_msgSend_objectForKeyedSubscript_(v164, v177, v176, v178, v179, v180);

          v186 = objc_msgSend_mathResult(v218, v181, v182, v183, v184, v185);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v187, &v221, v225, 16, v188);
      }

      while (v14);
    }

    else
    {
      do
      {
        v189 = v14;
        for (k = 0; k != v189; ++k)
        {
          if (*v222 != v212)
          {
            objc_enumerationMutation(obj);
          }

          v191 = *(*(&v221 + 1) + 8 * k);
          v192 = MEMORY[0x1E696AD98];
          v193 = objc_msgSend_uniqueIdentifier(v191, v15, v16, v17, v18, v19);
          v198 = objc_msgSend_numberWithInteger_(v192, v194, v193, v195, v196, v197);
          v219 = objc_msgSend_objectForKeyedSubscript_(0, v199, v198, v200, v201, v202);

          v208 = objc_msgSend_mathResult(v219, v203, v204, v205, v206, v207);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v221, v225, 16, v19);
      }

      while (v14);
    }
  }

LABEL_39:

  return v220;
}

@end