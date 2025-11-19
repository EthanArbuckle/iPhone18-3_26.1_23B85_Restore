@interface CSUCaptionPostProcessingHandler
- (CSUCaptionPostProcessingHandler)initWithRuntimeParameters:(id)a3;
- (CSUCaptionRuntimeParameters)runtimeParameters;
- (id)_checkForBlockingTokens:(id)a3 blockingTokens:(id)a4;
- (id)_excludeGenderReplacements:(id)a3 genderOption:(int)a4 error:(id *)a5;
- (id)_excludeGenderTriggers:(id)a3 genderOption:(int)a4 error:(id *)a5;
- (id)_replacements:(id)a3 genderOption:(int)a4;
- (id)postProcessResults:(id)a3 genderOption:(int)a4 error:(id *)a5;
@end

@implementation CSUCaptionPostProcessingHandler

- (CSUCaptionPostProcessingHandler)initWithRuntimeParameters:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CSUCaptionPostProcessingHandler;
  v5 = [(CSUCaptionPostProcessingHandler *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_runtimeParameters, v4);
    v10 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v7, @" ", v8, v9);
    trimSet = v6->_trimSet;
    v6->_trimSet = v10;
  }

  return v6;
}

- (id)_excludeGenderReplacements:(id)a3 genderOption:(int)a4 error:(id *)a5
{
  v177 = *MEMORY[0x1E69E9840];
  v148 = a3;
  v156 = self;
  v11 = objc_msgSend_runtimeParameters(self, v7, v8, v9, v10);
  v16 = objc_msgSend_genderOption(v11, v12, v13, v14, v15);

  if (a4 != 1 || v16)
  {
    v141 = v148;
    v140 = v148;
  }

  else
  {
    v153 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18, v19, v20);
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    obj = v148;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v169, v176, 16);
    if (v22)
    {
      v151 = *v170;
      do
      {
        v154 = v22;
        for (i = 0; i != v154; ++i)
        {
          if (*v170 != v151)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v169 + 1) + 8 * i);
          v28 = objc_msgSend_objectForKeyedSubscript_(v27, v23, off_1EB54A2A8, v24, v25);
          v33 = objc_msgSend_stringWithSpaceAtEnds(v28, v29, v30, v31, v32);

          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          v38 = objc_msgSend_runtimeParameters(v156, v34, v35, v36, v37);
          v43 = objc_msgSend_excludeGenderReplacements(v38, v39, v40, v41, v42);

          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v165, v175, 16);
          if (v49)
          {
            v50 = *v166;
            do
            {
              v51 = 0;
              v52 = v33;
              do
              {
                if (*v166 != v50)
                {
                  objc_enumerationMutation(v43);
                }

                v53 = *(*(&v165 + 1) + 8 * v51);
                v54 = objc_msgSend_mutableCopy(v52, v45, v46, v47, v48);
                v59 = objc_msgSend_replacementKey(v53, v55, v56, v57, v58);
                v64 = objc_msgSend_replacementValue(v53, v60, v61, v62, v63);
                v69 = objc_msgSend_length(v52, v65, v66, v67, v68);
                objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v54, v70, v59, v64, 0, 0, v69);

                v33 = objc_msgSend_copy(v54, v71, v72, v73, v74);
                ++v51;
                v52 = v33;
              }

              while (v49 != v51);
              v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v45, &v165, v175, 16);
            }

            while (v49);
          }

          v79 = objc_msgSend_mutableCopy(v27, v75, v76, v77, v78);
          v84 = objc_msgSend_trimSet(v156, v80, v81, v82, v83);
          v88 = objc_msgSend_stringByTrimmingCharactersInSet_(v33, v85, v84, v86, v87);
          objc_msgSend_setObject_forKeyedSubscript_(v79, v89, v88, off_1EB54A2A8, v90);

          v95 = objc_msgSend_copy(v79, v91, v92, v93, v94);
          objc_msgSend_addObject_(v153, v96, v95, v97, v98);
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v169, v176, 16);
      }

      while (v22);
    }

    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    obja = v153;
    v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v99, &v161, v174, 16);
    if (v100)
    {
      v104 = *v162;
      v105 = &off_1EB54A2A8;
      do
      {
        v152 = v100;
        for (j = 0; j != v152; ++j)
        {
          if (*v162 != v104)
          {
            objc_enumerationMutation(obja);
          }

          v107 = objc_msgSend_objectForKeyedSubscript_(*(*(&v161 + 1) + 8 * j), v101, *v105, v102, v103);
          v155 = objc_msgSend_stringWithSpaceAtEnds(v107, v108, v109, v110, v111);

          v116 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v112, v113, v114, v115);
          v120 = objc_msgSend_componentsSeparatedByCharactersInSet_(v155, v117, v116, v118, v119);

          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          v125 = objc_msgSend_runtimeParameters(v156, v121, v122, v123, v124);
          v130 = objc_msgSend_genderedTokens(v125, v126, v127, v128, v129);

          v131 = v105;
          v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v132, &v157, v173, 16);
          if (v136)
          {
            v137 = *v158;
            while (2)
            {
              for (k = 0; k != v136; ++k)
              {
                if (*v158 != v137)
                {
                  objc_enumerationMutation(v130);
                }

                if (objc_msgSend_indexOfObject_(v120, v133, *(*(&v157 + 1) + 8 * k), v134, v135) != 0x7FFFFFFFFFFFFFFFLL)
                {

                  v142 = sub_1AC090E50();
                  if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
                  {
                    sub_1AC1221E8(v142);
                  }

                  if (a5)
                  {
                    *a5 = objc_msgSend_errorWithCode_message_(CSUError, v143, 2, @"Found gender token, reporting error multiple-gender-words", v144);
                  }

                  v140 = 0;
                  v139 = obja;
                  goto LABEL_39;
                }
              }

              v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v133, &v157, v173, 16);
              if (v136)
              {
                continue;
              }

              break;
            }
          }

          v105 = v131;
        }

        v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v101, &v161, v174, 16);
      }

      while (v100);
    }

    v139 = obja;
    v140 = obja;
LABEL_39:

    v141 = v148;
  }

  v145 = *MEMORY[0x1E69E9840];

  return v140;
}

- (id)_excludeGenderTriggers:(id)a3 genderOption:(int)a4 error:(id *)a5
{
  v110 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v91 = self;
  v13 = objc_msgSend_runtimeParameters(self, v9, v10, v11, v12);
  v18 = objc_msgSend_genderOption(v13, v14, v15, v16, v17);

  if (a4 == 1 && v18 == 1)
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v19 = v8;
    v90 = v19;
    v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v103, v109, 16);
    if (v85)
    {
      v88 = v8;
      v89 = *v104;
      v87 = a5;
      do
      {
        v24 = 0;
        do
        {
          if (*v104 != v89)
          {
            objc_enumerationMutation(v19);
          }

          v25 = objc_msgSend_objectForKeyedSubscript_(*(*(&v103 + 1) + 8 * v24), v21, off_1EB54A2A8, v22, v23, v85);
          v86 = v24;
          v92 = objc_msgSend_stringWithSpaceAtEnds(v25, v26, v27, v28, v29);

          v34 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v30, v31, v32, v33);
          v38 = objc_msgSend_componentsSeparatedByCharactersInSet_(v92, v35, v34, v36, v37);

          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v43 = objc_msgSend_runtimeParameters(v91, v39, v40, v41, v42);
          v48 = objc_msgSend_excludeGenderTriggers(v43, v44, v45, v46, v47);

          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v99, v108, 16);
          if (v54)
          {
            v55 = *v100;
            while (2)
            {
              for (i = 0; i != v54; ++i)
              {
                if (*v100 != v55)
                {
                  objc_enumerationMutation(v48);
                }

                v57 = *(*(&v99 + 1) + 8 * i);
                v58 = objc_msgSend_triggerTokens(v57, v50, v51, v52, v53);
                v63 = objc_msgSend_count(v58, v59, v60, v61, v62) == 0;

                if (v63)
                {
                  v68 = sub_1AC090E50();
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
                  {
                    sub_1AC122270(&buf, v98, v68);
                  }
                }

                else
                {
                  v95 = 0u;
                  v96 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  v68 = objc_msgSend_triggerTokens(v57, v64, v65, v66, v67);
                  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v93, v107, 16);
                  if (!v73)
                  {
LABEL_31:

                    v77 = sub_1AC090E50();
                    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                    {
                      sub_1AC12222C(v77);
                    }

                    v80 = objc_msgSend_errorWithCode_message_(CSUError, v78, 2, @"Found trigger tokens, reporting error: Found-exclude-gender-trigger", v79);
                    v81 = v80;
                    if (v87)
                    {
                      v82 = v80;
                      *v87 = v81;
                    }

                    v76 = 0;
                    v8 = v88;
                    goto LABEL_36;
                  }

                  v74 = *v94;
LABEL_16:
                  v75 = 0;
                  while (1)
                  {
                    if (*v94 != v74)
                    {
                      objc_enumerationMutation(v68);
                    }

                    if (objc_msgSend_indexOfObject_(v38, v70, *(*(&v93 + 1) + 8 * v75), v71, v72) == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      break;
                    }

                    if (v73 == ++v75)
                    {
                      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v93, v107, 16);
                      if (v73)
                      {
                        goto LABEL_16;
                      }

                      goto LABEL_31;
                    }
                  }
                }
              }

              v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v50, &v99, v108, 16);
              if (v54)
              {
                continue;
              }

              break;
            }
          }

          v24 = v86 + 1;
          v8 = v88;
          v19 = v90;
        }

        while (v86 + 1 != v85);
        v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v21, &v103, v109, 16);
      }

      while (v85);
    }
  }

  v76 = v8;
LABEL_36:

  v83 = *MEMORY[0x1E69E9840];

  return v76;
}

- (id)_replacements:(id)a3 genderOption:(int)a4
{
  v146 = *MEMORY[0x1E69E9840];
  v127 = a3;
  v130 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8);
  v135 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v9, v10, v11, v12);
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = v127;
  v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v140, v145, 16);
  if (v131)
  {
    v129 = *v141;
    v17 = a4;
    do
    {
      for (i = 0; i != v131; ++i)
      {
        if (*v141 != v129)
        {
          objc_enumerationMutation(obj);
        }

        v132 = *(*(&v140 + 1) + 8 * i);
        v18 = objc_msgSend_objectForKeyedSubscript_(v132, v14, off_1EB54A2A8, v15, v16);
        v23 = objc_msgSend_stringWithSpaceAtEnds(v18, v19, v20, v21, v22);

        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v28 = objc_msgSend_runtimeParameters(self, v24, v25, v26, v27);
        v33 = objc_msgSend_replacements(v28, v29, v30, v31, v32);

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v136, v144, 16);
        if (v39)
        {
          v40 = *v137;
LABEL_8:
          v41 = 0;
          while (1)
          {
            if (*v137 != v40)
            {
              objc_enumerationMutation(v33);
            }

            v42 = *(*(&v136 + 1) + 8 * v41);
            v43 = objc_msgSend_genderOption(v42, v35, v36, v37, v38);
            v44 = v43 == 0;

            if (!v44)
            {
              v49 = objc_msgSend_genderOption(v42, v45, v46, v47, v48);
              v54 = objc_msgSend_unsignedIntegerValue(v49, v50, v51, v52, v53) == v17;

              if (!v54)
              {
                break;
              }
            }

            v55 = objc_msgSend_replacementKey(v42, v45, v46, v47, v48);
            v59 = objc_msgSend_rangeOfString_(v23, v56, v55, v57, v58) == 0x7FFFFFFFFFFFFFFFLL;

            if (!v59)
            {
              v64 = objc_msgSend_objectForKey_(v135, v35, v42, v37, v38);
              if (!v64)
              {
                v65 = objc_msgSend_length(v23, v60, v61, v62, v63);
                srand(v65);
                v66 = rand();
                objc_msgSend_replacementProb(v42, v67, v68, v69, v70);
                v72 = MEMORY[0x1E695E110];
                if (v66 % 100 < (v71 * 100.0))
                {
                  v72 = MEMORY[0x1E695E118];
                }

                v64 = v72;
                objc_msgSend_setObject_forKey_(v135, v73, v64, v42, v74);
              }

              if (objc_msgSend_BOOLValue(v64, v60, v61, v62, v63))
              {
                v79 = objc_msgSend_mutableCopy(v23, v75, v76, v77, v78);
                v84 = objc_msgSend_replacementKey(v42, v80, v81, v82, v83);
                v89 = objc_msgSend_replacementValue(v42, v85, v86, v87, v88);
                v94 = objc_msgSend_length(v23, v90, v91, v92, v93);
                objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v79, v95, v84, v89, 0, 0, v94);

                v100 = objc_msgSend_copy(v79, v96, v97, v98, v99);
                v23 = v100;
              }
            }

            if (v39 == ++v41)
            {
              v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v136, v144, 16);
              if (v39)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }

        v105 = objc_msgSend_mutableCopy(v132, v101, v102, v103, v104);
        v110 = objc_msgSend_trimSet(self, v106, v107, v108, v109);
        v114 = objc_msgSend_stringByTrimmingCharactersInSet_(v23, v111, v110, v112, v113);
        objc_msgSend_setObject_forKeyedSubscript_(v105, v115, v114, off_1EB54A2A8, v116);

        v121 = objc_msgSend_copy(v105, v117, v118, v119, v120);
        objc_msgSend_addObject_(v130, v122, v121, v123, v124);
      }

      v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v140, v145, 16);
    }

    while (v131);
  }

  v125 = *MEMORY[0x1E69E9840];

  return v130;
}

- (id)_checkForBlockingTokens:(id)a3 blockingTokens:(id)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v56 = a3;
  v60 = a4;
  if (objc_msgSend_count(v60, v5, v6, v7, v8))
  {
    v57 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12);
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v56;
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v74, v82, 16);
    if (v61)
    {
      v59 = *v75;
      v17 = 0x1E696A000uLL;
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v75 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v62 = *(*(&v74 + 1) + 8 * i);
          v18 = objc_msgSend_objectForKeyedSubscript_(v62, v14, off_1EB54A2A8, v15, v16);
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v65 = v60;
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v19, &v70, v81, 16);
          if (v20)
          {
            v21 = *v71;
            while (2)
            {
              v22 = 0;
              v64 = v20;
              do
              {
                if (*v71 != v21)
                {
                  objc_enumerationMutation(v65);
                }

                v23 = *(*(&v70 + 1) + 8 * v22);
                v24 = *(v17 + 3776);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v25 = v23;
                }

                else
                {
                  v25 = 0;
                }

                v26 = v25;
                if (v26)
                {
                  v30 = v26;
                  if (objc_msgSend_rangeOfString_(v18, v27, v23, v28, v29) != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v47 = sub_1AC090E50();
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v80 = v23;
                      _os_log_debug_impl(&dword_1AC05D000, v47, OS_LOG_TYPE_DEBUG, "Found %@ in the caption", buf, 0xCu);
                    }

LABEL_42:

                    goto LABEL_43;
                  }
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v31 = v23;
                  }

                  else
                  {
                    v31 = 0;
                  }

                  v32 = v31;
                  v30 = v32;
                  if (v32)
                  {
                    v68 = 0u;
                    v69 = 0u;
                    v66 = 0u;
                    v67 = 0u;
                    v33 = v32;
                    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v66, v78, 16);
                    if (v38)
                    {
                      v39 = *v67;
                      while (2)
                      {
                        for (j = 0; j != v38; ++j)
                        {
                          if (*v67 != v39)
                          {
                            objc_enumerationMutation(v33);
                          }

                          v41 = *(*(&v66 + 1) + 8 * j);
                          if (objc_msgSend_rangeOfString_(v18, v35, v41, v36, v37) == 0x7FFFFFFFFFFFFFFFLL)
                          {
                            v42 = sub_1AC090E50();
                            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                            {
                              *buf = 138412290;
                              v80 = v41;
                              _os_log_debug_impl(&dword_1AC05D000, v42, OS_LOG_TYPE_DEBUG, "Did not find %@ in the caption", buf, 0xCu);
                            }

                            v17 = 0x1E696A000;
                            v20 = v64;

                            goto LABEL_34;
                          }
                        }

                        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v66, v78, 16);
                        if (v38)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v17 = 0x1E696A000;
                    v47 = sub_1AC090E50();
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v80 = v33;
                      _os_log_debug_impl(&dword_1AC05D000, v47, OS_LOG_TYPE_DEBUG, "Found all tokens %@ in the caption", buf, 0xCu);
                    }

                    v30 = v33;
                    goto LABEL_42;
                  }
                }

LABEL_34:

                ++v22;
              }

              while (v22 != v20);
              v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v43, &v70, v81, 16);
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          objc_msgSend_addObject_(v57, v44, v62, v45, v46);
LABEL_43:
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v74, v82, 16);
      }

      while (v61);
    }

    v53 = objc_msgSend_copy(v57, v49, v50, v51, v52);
  }

  else
  {
    v53 = v56;
  }

  v54 = *MEMORY[0x1E69E9840];

  return v53;
}

- (id)postProcessResults:(id)a3 genderOption:(int)a4 error:(id *)a5
{
  v93 = *MEMORY[0x1E69E9840];
  v71 = a3;
  v79 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = objc_msgSend_results(v71, v5, v6, v7, v8);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v85, v92, 16);
  if (v14)
  {
    v15 = *v86;
    v16 = MEMORY[0x1E695E110];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v86 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v85 + 1) + 8 * i);
        v90[0] = off_1EB54A2A8;
        v19 = objc_msgSend_caption(v18, v10, v11, v12, v13, v71);
        v91[0] = v19;
        v90[1] = off_1EB54A2B0;
        v20 = MEMORY[0x1E696AD98];
        objc_msgSend_score(v18, v21, v22, v23, v24);
        v29 = objc_msgSend_numberWithFloat_(v20, v25, v26, v27, v28);
        v90[2] = off_1EB54A2B8;
        v91[1] = v29;
        v91[2] = v16;
        v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v91, v90, 3);

        objc_msgSend_addObject_(v79, v32, v31, v33, v34);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v85, v92, 16);
    }

    while (v14);
  }

  v84 = 0;
  v74 = objc_msgSend_postProcessCaptions_genderOption_error_(self, v35, v79, a4, &v84);
  v36 = v84;
  v76 = v36;
  if (v36)
  {
    if (a5)
    {
      v37 = v36;
      v38 = 0;
      *a5 = v76;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v39 = objc_opt_new();
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obja = v74;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v40, &v80, v89, 16);
    if (v41)
    {
      v42 = *v81;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v81 != v42)
          {
            objc_enumerationMutation(obja);
          }

          v44 = *(*(&v80 + 1) + 8 * j);
          v45 = [CSUCaptionResult alloc];
          v49 = objc_msgSend_objectForKeyedSubscript_(v44, v46, off_1EB54A2A8, v47, v48);
          v53 = objc_msgSend_objectForKeyedSubscript_(v44, v50, off_1EB54A2B0, v51, v52);
          objc_msgSend_floatValue(v53, v54, v55, v56, v57);
          v61 = objc_msgSend_initWithCaption_score_(v45, v58, v49, v59, v60);

          objc_msgSend_addObject_(v39, v62, v61, v63, v64);
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v65, &v80, v89, 16);
      }

      while (v41);
    }

    v38 = objc_msgSend_createCaptionResultsWithResults_(CSUCaptionResults, v66, v39, v67, v68);
  }

  v69 = *MEMORY[0x1E69E9840];

  return v38;
}

- (CSUCaptionRuntimeParameters)runtimeParameters
{
  WeakRetained = objc_loadWeakRetained(&self->_runtimeParameters);

  return WeakRetained;
}

@end