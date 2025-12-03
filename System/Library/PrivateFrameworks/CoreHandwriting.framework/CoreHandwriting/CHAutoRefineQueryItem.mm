@interface CHAutoRefineQueryItem
- (CGRect)rotatedColumnBounds:(int64_t)bounds;
- (CHAutoRefineQueryItem)initWithAutoRefineResult:(id)result;
- (NSLocale)locale;
- (double)writingOrientationAngleAtColumn:(int64_t)column;
- (id)debugDescription;
@end

@implementation CHAutoRefineQueryItem

- (CHAutoRefineQueryItem)initWithAutoRefineResult:(id)result
{
  v267 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v264.receiver = self;
  v264.super_class = CHAutoRefineQueryItem;
  v237 = [(CHAutoRefineQueryItem *)&v264 init];
  if (v237)
  {
    objc_storeStrong(&v237->_autoRefineResult, result);
    v10 = objc_msgSend_refinedTokenColumns(resultCopy, v5, v6, v7, v8, v9);
    refinedTokenColumns = v237->_refinedTokenColumns;
    v237->_refinedTokenColumns = v10;

    v17 = objc_msgSend_strokeGroup(resultCopy, v12, v13, v14, v15, v16);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v238 = objc_msgSend_strokeGroup(resultCopy, v19, v20, v21, v22, v23);
      v240 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v24, v25, v26, v27, v28);
      v239 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v29, v30, v31, v32, v33);
      v39 = objc_msgSend_textResult(resultCopy, v34, v35, v36, v37, v38);
      v45 = objc_msgSend_tokenColumnCount(v39, v40, v41, v42, v43, v44) > 0;

      if (v45)
      {
        v246 = 0;
        v242 = *(MEMORY[0x1E695F050] + 8);
        v243 = *MEMORY[0x1E695F050];
        v51 = *(MEMORY[0x1E695F050] + 24);
        v241 = *(MEMORY[0x1E695F050] + 16);
        do
        {
          v52 = objc_msgSend_textResult(resultCopy, v46, v47, v48, v49, v50);
          v245 = objc_msgSend_strokeIndexesForColumnsInRange_(v52, v53, v246, 1, v54, v55);

          v56 = MEMORY[0x1E695DFD8];
          v62 = objc_msgSend_strokeGroupResult(resultCopy, v57, v58, v59, v60, v61);
          v68 = objc_msgSend_inputStrokeIdentifiers(v62, v63, v64, v65, v66, v67);
          v73 = objc_msgSend_objectsAtIndexes_(v68, v69, v245, v70, v71, v72);
          v78 = objc_msgSend_setWithArray_(v56, v74, v73, v75, v76, v77);

          v258 = 0;
          v259 = &v258;
          v260 = 0x3010000000;
          v261 = &unk_183A5AC72;
          v262 = 0;
          v263 = 0;
          v255[0] = MEMORY[0x1E69E9820];
          v255[1] = 3221225472;
          v255[2] = sub_1837BCB74;
          v255[3] = &unk_1E6DDE350;
          v79 = v238;
          v256 = v79;
          v257 = &v258;
          objc_msgSend_enumerateIndexesUsingBlock_(v245, v80, v255, v81, v82, v83);
          if (objc_msgSend_count(v245, v84, v85, v86, v87, v88))
          {
            v94 = objc_msgSend_count(v245, v89, v90, v91, v92, v93);
            v259[4] = v259[4] / v94;
            v100 = objc_msgSend_count(v245, v95, v96, v97, v98, v99);
            v101 = v259;
            v102 = v259[5] / v100;
            v259[5] = v102;
          }

          else
          {
            v101 = v259;
            v102 = v259[5];
          }

          v103 = atan2(v102, v101[4]);
          v109 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v104, v105, v106, v107, v108);
          v114 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v110, v246, v111, v112, v113);
          objc_msgSend_setObject_forKeyedSubscript_(v240, v115, v109, v114, v116, v117);

          v253 = 0u;
          v254 = 0u;
          v251 = 0u;
          v252 = 0u;
          v123 = objc_msgSend_writingDirectionSortedSubstrokes(v79, v118, v119, v120, v121, v122);
          v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v123, v124, &v251, v266, 16, v125);
          height = v51;
          width = v241;
          y = v242;
          x = v243;
          if (v131)
          {
            v136 = *v252;
            height = v51;
            width = v241;
            y = v242;
            x = v243;
            do
            {
              for (i = 0; i != v131; ++i)
              {
                if (*v252 != v136)
                {
                  objc_enumerationMutation(v123);
                }

                v138 = *(*(&v251 + 1) + 8 * i);
                v139 = objc_msgSend_substroke(v138, v126, v127, v128, v129, v130);
                v145 = objc_msgSend_strokeIdentifier(v139, v140, v141, v142, v143, v144);
                v150 = objc_msgSend_containsObject_(v78, v146, v145, v147, v148, v149);

                if (v150)
                {
                  v151 = objc_msgSend_substroke(v138, v126, v127, v128, v129, v130);
                  objc_msgSend_bounds(v151, v152, v153, v154, v155, v156);
                  v274.origin.x = v157;
                  v274.origin.y = v158;
                  v274.size.width = v159;
                  v274.size.height = v160;
                  v268.origin.x = x;
                  v268.origin.y = y;
                  v268.size.width = width;
                  v268.size.height = height;
                  v269 = CGRectUnion(v268, v274);
                  x = v269.origin.x;
                  y = v269.origin.y;
                  width = v269.size.width;
                  height = v269.size.height;
                }
              }

              v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v123, v126, &v251, v266, 16, v130);
            }

            while (v131);
          }

          v270.origin.x = x;
          v270.origin.y = y;
          v270.size.width = width;
          v270.size.height = height;
          MidX = CGRectGetMidX(v270);
          v271.origin.x = x;
          v271.origin.y = y;
          v271.size.width = width;
          v271.size.height = height;
          MaxY = CGRectGetMaxY(v271);
          v249 = 0u;
          v250 = 0u;
          v247 = 0u;
          v248 = 0u;
          v168 = objc_msgSend_writingDirectionSortedSubstrokes(v79, v163, v164, v165, v166, v167);
          v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v169, &v247, v265, 16, v170);
          v178 = v242;
          v177 = v243;
          v179 = v241;
          v180 = v51;
          if (v176)
          {
            v181 = *v248;
            v182 = -v103;
            v178 = v242;
            v177 = v243;
            v179 = v241;
            v180 = v51;
            do
            {
              for (j = 0; j != v176; ++j)
              {
                if (*v248 != v181)
                {
                  objc_enumerationMutation(v168);
                }

                v184 = *(*(&v247 + 1) + 8 * j);
                v185 = objc_msgSend_substroke(v184, v171, v172, v173, v174, v175);
                v191 = objc_msgSend_strokeIdentifier(v185, v186, v187, v188, v189, v190);
                v196 = objc_msgSend_containsObject_(v78, v192, v191, v193, v194, v195);

                if (v196)
                {
                  objc_msgSend_boundsRotatedAroundPoint_byAngle_(v184, v171, v172, v173, v174, v175, MidX, MaxY, v182);
                  v275.origin.x = v197;
                  v275.origin.y = v198;
                  v275.size.width = v199;
                  v275.size.height = v200;
                  v272.origin.x = v177;
                  v272.origin.y = v178;
                  v272.size.width = v179;
                  v272.size.height = v180;
                  v273 = CGRectUnion(v272, v275);
                  v177 = v273.origin.x;
                  v178 = v273.origin.y;
                  v179 = v273.size.width;
                  v180 = v273.size.height;
                }
              }

              v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v171, &v247, v265, 16, v175);
            }

            while (v176);
          }

          v206 = objc_msgSend_ch_valueWithCGRect_(MEMORY[0x1E696B098], v201, v202, v203, v204, v205, v177, v178, v179, v180);
          v211 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v207, v246, v208, v209, v210);
          objc_msgSend_setObject_forKeyedSubscript_(v239, v212, v206, v211, v213, v214);

          _Block_object_dispose(&v258, 8);
          v220 = objc_msgSend_textResult(resultCopy, v215, v216, v217, v218, v219);
          v226 = objc_msgSend_tokenColumnCount(v220, v221, v222, v223, v224, v225);

          ++v246;
        }

        while (v246 < v226);
      }

      v227 = objc_msgSend_copy(v240, v46, v47, v48, v49, v50);
      orientationAnglePerColumn = v237->_orientationAnglePerColumn;
      v237->_orientationAnglePerColumn = v227;

      v234 = objc_msgSend_copy(v239, v229, v230, v231, v232, v233);
      rotatedBoundsPerColumn = v237->_rotatedBoundsPerColumn;
      v237->_rotatedBoundsPerColumn = v234;
    }
  }

  return v237;
}

- (NSLocale)locale
{
  v6 = objc_msgSend_textResult(self->_autoRefineResult, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_locale(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (double)writingOrientationAngleAtColumn:(int64_t)column
{
  orientationAnglePerColumn = self->_orientationAnglePerColumn;
  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, column, v3, v4, v5);
  v14 = objc_msgSend_objectForKeyedSubscript_(orientationAnglePerColumn, v10, v9, v11, v12, v13);

  if (!v14)
  {
    return 0.0;
  }

  v19 = self->_orientationAnglePerColumn;
  v20 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v15, column, v16, v17, v18);
  v25 = objc_msgSend_objectForKeyedSubscript_(v19, v21, v20, v22, v23, v24);
  objc_msgSend_floatValue(v25, v26, v27, v28, v29, v30);
  v32 = v31;

  return v32;
}

- (CGRect)rotatedColumnBounds:(int64_t)bounds
{
  rotatedBoundsPerColumn = self->_rotatedBoundsPerColumn;
  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, bounds, v3, v4, v5);
  v14 = objc_msgSend_objectForKeyedSubscript_(rotatedBoundsPerColumn, v10, v9, v11, v12, v13);

  if (v14)
  {
    v19 = self->_rotatedBoundsPerColumn;
    v20 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v15, bounds, v16, v17, v18);
    v25 = objc_msgSend_objectForKeyedSubscript_(v19, v21, v20, v22, v23, v24);
    objc_msgSend_ch_CGRectValue(v25, v26, v27, v28, v29, v30);
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
  }

  else
  {
    v32 = *MEMORY[0x1E695F050];
    v34 = *(MEMORY[0x1E695F050] + 8);
    v36 = *(MEMORY[0x1E695F050] + 16);
    v38 = *(MEMORY[0x1E695F050] + 24);
  }

  v39 = v32;
  v40 = v34;
  v41 = v36;
  v42 = v38;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (id)debugDescription
{
  v7 = objc_msgSend_strokeIdentifiers(self, a2, v2, v3, v4, v5);
  v8 = MEMORY[0x1E696AEC0];
  v14 = objc_msgSend_count(v7, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_textResult(self, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_topTranscription(v20, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_textResult(self, v27, v28, v29, v30, v31);
  v38 = objc_msgSend_tokenColumnCount(v32, v33, v34, v35, v36, v37);
  v43 = objc_msgSend_stringWithFormat_(v8, v39, @"AutoRefineItem with %ld strokes, transcription = %@ across %ld token columns", v40, v41, v42, v14, v26, v38);

  return v43;
}

@end