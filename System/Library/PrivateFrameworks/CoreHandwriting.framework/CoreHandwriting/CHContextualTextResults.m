@interface CHContextualTextResults
- (BOOL)isMathForContextLookup;
- (CGRect)bounds;
- (CHContextualTextResults)initWithTextResults:(id)a3;
- (id)majorityScriptId;
- (id)rawTranscription;
- (id)textResultToIndexMappingFromTopTranscriptionWithCharacterRange:(_NSRange)a3 intersectionRanges:(id *)a4;
- (id)tokenSupportRangesForNonTextStrokes:(id)a3 initialStrokes:(id)a4 strokeProvider:(id)a5;
- (id)topTranscription;
- (void)enumerateGroupsCoveredByStringRange:(_NSRange)a3 block:(id)a4;
@end

@implementation CHContextualTextResults

- (CHContextualTextResults)initWithTextResults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHContextualTextResults;
  v6 = [(CHContextualTextResults *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textResults, a3);
  }

  return v7;
}

- (id)topTranscription
{
  v65 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3, v4, v5);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v8 = self->_textResults;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v60, v64, 16, v10);
  if (v11)
  {
    v17 = v11;
    v18 = *v61;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        while (1)
        {
          if (*v61 != v18)
          {
            objc_enumerationMutation(v8);
          }

          v31 = *(*(&v60 + 1) + 8 * i);
          v32 = objc_msgSend_textResult(v31, v12, v13, v14, v15, v16, v60);
          v38 = objc_msgSend_topTranscription(v32, v33, v34, v35, v36, v37);

          objc_msgSend_appendString_(v7, v39, v38, v40, v41, v42);
          v48 = objc_msgSend_terminatingSpecialCharacter(v31, v43, v44, v45, v46, v47);

          if (v48)
          {
            break;
          }

          v20 = objc_msgSend_textResult(v31, v49, v50, v51, v52, v53);
          v26 = objc_msgSend_precedingSeparatorForTopTranscriptionPath(v20, v21, v22, v23, v24, v25);
          objc_msgSend_appendString_(v7, v27, v26, v28, v29, v30);

          if (v17 == ++i)
          {
            goto LABEL_3;
          }
        }

        v54 = objc_msgSend_terminatingSpecialCharacter(v31, v49, v50, v51, v52, v53);
        objc_msgSend_appendString_(v7, v55, v54, v56, v57, v58);
      }

LABEL_3:
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v12, &v60, v64, 16, v16);
    }

    while (v17);
  }

  return v7;
}

- (CGRect)bounds
{
  v37 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = self->_textResults;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v32, v36, 16, v8);
  if (v9)
  {
    v15 = v9;
    v16 = *v33;
    do
    {
      v17 = 0;
      do
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v6);
        }

        v18 = objc_msgSend_strokeGroup(*(*(&v32 + 1) + 8 * v17), v10, v11, v12, v13, v14, v32);
        objc_msgSend_bounds(v18, v19, v20, v21, v22, v23);
        v41.origin.x = v24;
        v41.origin.y = v25;
        v41.size.width = v26;
        v41.size.height = v27;
        v38.origin.x = x;
        v38.origin.y = y;
        v38.size.width = width;
        v38.size.height = height;
        v39 = CGRectUnion(v38, v41);
        x = v39.origin.x;
        y = v39.origin.y;
        width = v39.size.width;
        height = v39.size.height;

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v10, &v32, v36, 16, v14);
    }

    while (v15);
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (id)rawTranscription
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3, v4, v5);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v8 = self->_textResults;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v65, v69, 16, v10);
  if (v11)
  {
    v17 = v11;
    v18 = *v66;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v66 != v18)
        {
          objc_enumerationMutation(v8);
        }

        v20 = *(*(&v65 + 1) + 8 * i);
        v21 = objc_msgSend_textResult(v20, v12, v13, v14, v15, v16, v65);
        v27 = objc_msgSend_precedingSeparatorForRawTranscriptionPath(v21, v22, v23, v24, v25, v26);
        objc_msgSend_appendString_(v7, v28, v27, v29, v30, v31);

        v37 = objc_msgSend_textResult(v20, v32, v33, v34, v35, v36);
        v43 = objc_msgSend_rawTranscription(v37, v38, v39, v40, v41, v42);

        objc_msgSend_appendString_(v7, v44, v43, v45, v46, v47);
        v53 = objc_msgSend_terminatingSpecialCharacter(v20, v48, v49, v50, v51, v52);

        if (v53)
        {
          v59 = objc_msgSend_terminatingSpecialCharacter(v20, v54, v55, v56, v57, v58);
          objc_msgSend_appendString_(v7, v60, v59, v61, v62, v63);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v12, &v65, v69, 16, v16);
    }

    while (v17);
  }

  return v7;
}

- (void)enumerateGroupsCoveredByStringRange:(_NSRange)a3 block:(id)a4
{
  range1 = a3.length;
  location = a3.location;
  v157 = *MEMORY[0x1E69E9840];
  v136 = a4;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  obj = self->_textResults;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v151, v156, 16, v7);
  if (v8)
  {
    v14 = v8;
    v15 = 0;
    v16 = *v152;
    v133 = *v152;
    v17 = location + range1;
    v134 = location;
    v132 = location + range1;
LABEL_3:
    v18 = 0;
    v135 = v14;
    while (1)
    {
      if (*v152 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v151 + 1) + 8 * v18);
      v20 = objc_msgSend_textResult(v19, v9, v10, v11, v12, v13, v132);
      v26 = objc_msgSend_rawTranscriptionPath(v20, v21, v22, v23, v24, v25);

      v32 = objc_msgSend_textResult(v19, v27, v28, v29, v30, v31);
      v38 = objc_msgSend_length(v26, v33, v34, v35, v36, v37);
      v40 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v32, v39, v26, 0, v38, 0);

      v144 = v40;
      v46 = objc_msgSend_length(v40, v41, v42, v43, v44, v45);
      v52 = objc_msgSend_terminatingSpecialCharacter(v19, v47, v48, v49, v50, v51);
      v58 = objc_msgSend_length(v52, v53, v54, v55, v56, v57) + v46;

      v158.location = location;
      v158.length = range1;
      v159.location = v15;
      v143 = v58;
      v159.length = v58;
      v63 = NSIntersectionRange(v158, v159);
      if (v63.length)
      {
        v64 = objc_msgSend_textResult(v19, v63.length, v59, v60, v61, v62);
        v65 = v26;
        v66 = v64;
        v142 = v65;
        v69 = objc_msgSend_tokensFromTranscriptionPath_characterRange_(v64, v67, v65, v63.location - v15, v63.length, v68);

        v75 = objc_msgSend_strokeGroupResult(v19, v70, v71, v72, v73, v74);

        if (v75)
        {
          v81 = v19;
          v139 = v18;
          v140 = v15;
          v146 = objc_msgSend_array(MEMORY[0x1E695DF70], v76, v77, v78, v79, v80);
          v87 = objc_msgSend_array(MEMORY[0x1E695DF70], v82, v83, v84, v85, v86);
          v147 = 0u;
          v148 = 0u;
          v149 = 0u;
          v150 = 0u;
          v138 = v69;
          v145 = v69;
          v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v145, v88, &v147, v155, 16, v89);
          if (v90)
          {
            v96 = v90;
            v97 = *v148;
            do
            {
              for (i = 0; i != v96; ++i)
              {
                if (*v148 != v97)
                {
                  objc_enumerationMutation(v145);
                }

                v99 = *(*(&v147 + 1) + 8 * i);
                v100 = objc_msgSend_strokeGroupResult(v81, v91, v92, v93, v94, v95);
                v106 = objc_msgSend_inputStrokeIdentifiers(v100, v101, v102, v103, v104, v105);
                v112 = objc_msgSend_strokeIndexes(v99, v107, v108, v109, v110, v111);
                v117 = objc_msgSend_objectsAtIndexes_(v106, v113, v112, v114, v115, v116);

                objc_msgSend_addObject_(v87, v118, v117, v119, v120, v121);
                objc_msgSend_addObject_(v146, v122, v99, v123, v124, v125);
              }

              v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v145, v91, &v147, v155, 16, v95);
            }

            while (v96);
          }

          v131 = objc_msgSend_strokeGroup(v81, v126, v127, v128, v129, v130);
          v136[2](v136, v131, v146, v87);

          v16 = v133;
          location = v134;
          v18 = v139;
          v15 = v140;
          v14 = v135;
          v17 = v132;
          v69 = v138;
        }

        v26 = v142;
      }

      v15 += v143;

      if (v15 >= v17)
      {
        break;
      }

      if (++v18 == v14)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v151, v156, 16, v13);
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)textResultToIndexMappingFromTopTranscriptionWithCharacterRange:(_NSRange)a3 intersectionRanges:(id *)a4
{
  v98 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3.location, a3.length, a4, v4);
  v97 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7, v8, v9, v10);
  if (objc_msgSend_count(self->_textResults, v11, v12, v13, v14, v15))
  {
    v20 = 0;
    v21 = 0;
    v99 = self;
    objc_msgSend_objectAtIndexedSubscript_(self->_textResults, v16, 0, v17, v18, v19);
    while (1)
      v31 = {;
      v37 = objc_msgSend_textResult(v31, v32, v33, v34, v35, v36);
      v43 = objc_msgSend_topTranscription(v37, v38, v39, v40, v41, v42);
      v49 = objc_msgSend_length(v43, v44, v45, v46, v47, v48);

      v102.location = v20;
      v102.length = v49;
      v50 = NSIntersectionRange(a3, v102);
      v55 = objc_msgSend_topTranscription(v37, v50.length, v51, v52, v53, v54);
      v61 = objc_msgSend_length(v55, v56, v57, v58, v59, v60);
      v67 = objc_msgSend_terminatingSpecialCharacter(v31, v62, v63, v64, v65, v66);
      v73 = objc_msgSend_length(v67, v68, v69, v70, v71, v72);

      if (v50.length)
      {
        v78 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v74, v21, v75, v76, v77);
        objc_msgSend_setObject_forKey_(v98, v79, v78, v37, v80, v81);

        v85 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v82, v50.location - v20, v50.length, v83, v84);
        v90 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v86, v21, v87, v88, v89);
        objc_msgSend_setObject_forKey_(v97, v91, v85, v90, v92, v93);
      }

      v20 += v61 + v73;

      if (++v21 >= objc_msgSend_count(v99->_textResults, v22, v23, v24, v25, v26))
      {
        break;
      }

      objc_msgSend_objectAtIndexedSubscript_(v99->_textResults, v27, v21, v28, v29, v30);
    }
  }

  v94 = v97;
  if (a4)
  {
    v94 = v97;
    *a4 = v94;
  }

  return v98;
}

- (id)tokenSupportRangesForNonTextStrokes:(id)a3 initialStrokes:(id)a4 strokeProvider:(id)a5
{
  v248 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v221 = a4;
  v226 = a5;
  v219 = v8;
  if (objc_msgSend_count(v8, v9, v10, v11, v12, v13))
  {
    v19 = MEMORY[0x1E695DF70];
    v20 = objc_msgSend_count(v8, v14, v15, v16, v17, v18);
    v224 = objc_msgSend_arrayWithCapacity_(v19, v21, v20, v22, v23, v24);
    v244 = 0u;
    v245 = 0u;
    v242 = 0u;
    v243 = 0u;
    obj = v8;
    v225 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v242, v247, 16, v26);
    if (v225)
    {
      v223 = *v243;
      v220 = v229;
      do
      {
        v227 = 0;
        do
        {
          if (*v243 != v223)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v242 + 1) + 8 * v227);
          if (v32)
          {
            v33 = objc_msgSend_allKeys(*(v32 + 8), v27, v28, v29, v30, v31);
            v39 = objc_msgSend_mutableCopy(v33, v34, v35, v36, v37, v38, v219, v220);
          }

          else
          {
            v33 = 0;
            v39 = objc_msgSend_mutableCopy(0, v27, v28, v29, v30, v31, v219, v220);
          }

          v40 = v39;

          v46 = objc_msgSend_textResults(self, v41, v42, v43, v44, v45);
          v52 = objc_msgSend_count(v46, v47, v48, v49, v50, v51) == 0;

          if (v52)
          {
            v59 = 0x7FFFFFFFFFFFFFFFLL;
            v60 = -1.79769313e308;
          }

          else
          {
            v58 = 0;
            v59 = 0x7FFFFFFFFFFFFFFFLL;
            v60 = -1.79769313e308;
            do
            {
              v61 = objc_msgSend_textResults(self, v53, v54, v55, v56, v57);
              v66 = objc_msgSend_objectAtIndexedSubscript_(v61, v62, v58, v63, v64, v65);
              v72 = objc_msgSend_strokeGroup(v66, v67, v68, v69, v70, v71);
              v78 = objc_msgSend_strokeIdentifiers(v72, v73, v74, v75, v76, v77);
              v84 = objc_msgSend_allObjects(v78, v79, v80, v81, v82, v83);

              v85 = sub_183730D74(v32, v84);
              v90 = sub_183730F0C(v32, v84);
              if (v85 > v60)
              {
                if (v32)
                {
                  v91 = *(v32 + 40) == 7;
                }

                else
                {
                  v91 = 0;
                }

                if (v90 >= 0.1)
                {
                  v91 = 1;
                }

                if (v91)
                {
                  v59 = v58;
                  v60 = v85;
                }
              }

              objc_msgSend_removeObjectsInArray_(v40, v86, v84, v87, v88, v89);

              v97 = objc_msgSend_textResults(self, v92, v93, v94, v95, v96);
              v103 = objc_msgSend_count(v97, v98, v99, v100, v101, v102);

              ++v58;
            }

            while (v58 < v103);
          }

          v108 = sub_183730D74(v32, v40);
          v237 = 0;
          v238 = &v237;
          v239 = 0x3010000000;
          v240 = &unk_183A5AC72;
          v241 = xmmword_1839D0630;
          if (v59 == 0x7FFFFFFFFFFFFFFFLL || (v108 = fmax(v108, 0.0), v60 <= v108))
          {
            objc_msgSend_addObject_(v224, v104, &unk_1EF1EC6D0, v105, v106, v107, v108);
          }

          else
          {
            v109 = objc_opt_class();
            if (v32)
            {
              v110 = *(v32 + 88);
            }

            else
            {
              v110 = 0;
            }

            v111 = v110;
            v115 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v109, v112, v111, v226, v113, v114);
            objc_msgSend_bounds(v115, v116, v117, v118, v119, v120);
            v122 = v121;
            v124 = v123;
            v126 = v125;
            v128 = v127;

            v134 = objc_msgSend_textResults(self, v129, v130, v131, v132, v133);
            v139 = objc_msgSend_objectAtIndexedSubscript_(v134, v135, v59, v136, v137, v138);
            v145 = objc_msgSend_textResult(v139, v140, v141, v142, v143, v144);
            v151 = objc_msgSend_inputStrokeIdentifiers(v145, v146, v147, v148, v149, v150);

            v157 = objc_msgSend_textResults(self, v152, v153, v154, v155, v156);
            v162 = objc_msgSend_objectAtIndexedSubscript_(v157, v158, v59, v159, v160, v161);
            v168 = objc_msgSend_textResult(v162, v163, v164, v165, v166, v167);

            v174 = objc_msgSend_locale(v168, v169, v170, v171, v172, v173);
            if (objc_msgSend_shouldUseOriginalTokensForLocale_(CHRecognizerConfiguration, v175, v174, v176, v177, v178))
            {
              objc_msgSend_refinableTranscriptionPath(v168, v179, v180, v181, v182, v183);
            }

            else
            {
              objc_msgSend_topModelTranscriptionPath(v168, v179, v180, v181, v182, v183);
            }
            v184 = ;

            v187 = objc_msgSend_tokensAlignedWithStrokes_transcriptionPath_strokeProvider_(v168, v185, v221, v184, v226, v186);
            v228[0] = MEMORY[0x1E69E9820];
            v228[1] = 3221225472;
            v229[0] = sub_1838C1600;
            v229[1] = &unk_1E6DDF7D0;
            v188 = v151;
            v230 = v188;
            v189 = v226;
            v233 = v122;
            v234 = v124;
            v235 = v126;
            v236 = v128;
            v231 = v189;
            v232 = &v237;
            objc_msgSend_enumerateObjectsUsingBlock_(v187, v190, v228, v191, v192, v193);
            if (v238[4] == 0x7FFFFFFFFFFFFFFFLL)
            {
              objc_msgSend_addObject_(v224, v194, &unk_1EF1EC6B8, v195, v196, v197);
            }

            else
            {
              v198 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v194, v59, v195, v196, v197);
              v246[0] = v198;
              v203 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v199, v238[4], v200, v201, v202);
              v246[1] = v203;
              v208 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v204, v238[5], v205, v206, v207);
              v246[2] = v208;
              v212 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v209, v246, 3, v210, v211);
              objc_msgSend_addObject_(v224, v213, v212, v214, v215, v216);
            }
          }

          _Block_object_dispose(&v237, 8);

          ++v227;
        }

        while (v227 != v225);
        v217 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v242, v247, 16, v31);
        v225 = v217;
      }

      while (v217);
    }
  }

  else
  {
    v224 = MEMORY[0x1E695E0F0];
  }

  return v224;
}

- (BOOL)isMathForContextLookup
{
  if (objc_msgSend_count(self->_textResults, a2, v2, v3, v4, v5) != 1)
  {
    return 0;
  }

  v11 = objc_msgSend_objectAtIndexedSubscript_(self->_textResults, v7, 0, v8, v9, v10);
  isMathForContextLookup = objc_msgSend_isMathForContextLookup(v11, v12, v13, v14, v15, v16);

  return isMathForContextLookup;
}

- (id)majorityScriptId
{
  v6 = objc_msgSend_topTranscription(self, a2, v2, v3, v4, v5);
  v10 = objc_msgSend_majorityScriptIdForString_invalidCodes_(CHTextScriptUtilities, v7, v6, MEMORY[0x1E695E0F0], v8, v9);

  return v10;
}

@end