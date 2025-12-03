@interface CVNLPCaptionRuntimeParameters
- (CVNLPCaptionRuntimeParameters)initWithOptions:(id)options;
- (void)_loadRuntimeParameters:(id)parameters;
@end

@implementation CVNLPCaptionRuntimeParameters

- (CVNLPCaptionRuntimeParameters)initWithOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = CVNLPCaptionRuntimeParameters;
  v5 = [(CVNLPCaptionRuntimeParameters *)&v10 init];
  v8 = v5;
  if (v5)
  {
    *&v5->_captionModelMinimumConfidence = xmmword_1D9DDE7E0;
    v5->_excludeGenderStrategy = 1;
    objc_msgSend__loadRuntimeParameters_(v5, v6, optionsCopy, v7);
  }

  return v8;
}

- (void)_loadRuntimeParameters:(id)parameters
{
  v243 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v209 = objc_msgSend_objectForKeyedSubscript_(parametersCopy, v3, CVNLPCaptionModelPath, v4);
  v7 = objc_msgSend_URLByAppendingPathComponent_(v209, v5, @"runtime_parameters.json", v6);
  v8 = MEMORY[0x1E695DEF0];
  v211 = v7;
  v12 = objc_msgSend_path(v7, v9, v10, v11);
  v15 = objc_msgSend_dataWithContentsOfFile_(v8, v13, v12, v14);

  v210 = v15;
  if (v15)
  {
    location = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v16, v15, 0, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = location;
    }

    else
    {
      v17 = 0;
    }

    objc_storeStrong(&location, v17);
    if (!v17)
    {
      if (qword_1ECB71C28 != -1)
      {
        dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
      }

      log = qword_1ECB71C30;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v237 = v211;
        _os_log_error_impl(&dword_1D9D0A000, log, OS_LOG_TYPE_ERROR, "Could not load the contents of file at %@ as dictionary", buf, 0xCu);
      }

      goto LABEL_120;
    }

    v20 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"captionModel", v19);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      log = 0;
LABEL_33:

LABEL_34:
      v49 = objc_msgSend_objectForKeyedSubscript_(location, v24, @"classifiers", v25);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = objc_msgSend_objectForKeyedSubscript_(location, v50, @"classifiers", v51);

        if (v52)
        {
          v207 = v52;
          v55 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"revisions", v54);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = objc_msgSend_objectForKeyedSubscript_(v52, v56, @"revisions", v57);
          }

          else
          {
            v58 = 0;
          }

          classifierRevisions = self->_classifierRevisions;
          self->_classifierRevisions = v58;

          v62 = objc_msgSend_objectForKeyedSubscript_(v52, v60, @"blockingTokens", v61);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v218 = objc_msgSend_objectForKeyedSubscript_(v52, v63, @"blockingTokens", v64);
          }

          else
          {
            v218 = 0;
          }

          v67 = objc_msgSend_objectForKeyedSubscript_(v52, v65, @"categories", v66);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v70 = objc_msgSend_objectForKeyedSubscript_(v52, v68, @"categories", v69);

            if (v70)
            {
              v216 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v71, v72, v73);
              v233 = 0u;
              v234 = 0u;
              v231 = 0u;
              v232 = 0u;
              obj = objc_msgSend_allKeys(v70, v74, v75, v76);
              v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v77, &v231, v242, 16);
              if (v78)
              {
                v79 = *v232;
                do
                {
                  for (i = 0; i != v78; ++i)
                  {
                    if (*v232 != v79)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v81 = *(*(&v231 + 1) + 8 * i);
                    v84 = objc_msgSend_objectForKeyedSubscript_(v70, v82, v81, v83);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v87 = objc_msgSend_objectForKeyedSubscript_(v70, v85, v81, v86);
                    }

                    else
                    {
                      v87 = 0;
                    }

                    v90 = objc_msgSend_objectForKeyedSubscript_(v87, v88, @"minimumConfidence", v89);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v93 = objc_msgSend_objectForKeyedSubscript_(v87, v91, @"minimumConfidence", v92);
                    }

                    else
                    {
                      v93 = 0;
                    }

                    v96 = objc_msgSend_objectForKeyedSubscript_(v87, v94, @"blockingTokens", v95);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v99 = objc_msgSend_objectForKeyedSubscript_(v87, v97, @"blockingTokens", v98);
                    }

                    else
                    {
                      v99 = 0;
                    }

                    v102 = objc_msgSend_objectForKeyedSubscript_(v87, v100, @"blockingTokensAnnex", v101);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v105 = objc_msgSend_objectForKeyedSubscript_(v87, v103, @"blockingTokensAnnex", v104);
                    }

                    else
                    {
                      v105 = 0;
                    }

                    if (v93)
                    {
                      v106 = [CVNLPCaptionSensitiveImageParameters alloc];
                      objc_msgSend_doubleValue(v93, v107, v108, v109);
                      v111 = objc_msgSend_initWithVisionIdentifier_minConfidence_commonBlockingTokens_categoryBlockingTokens_categoryBlockingTokensAnnex_(v106, v110, v81, v218, v99, v105);
                      objc_msgSend_setObject_forKeyedSubscript_(v216, v112, v111, v81);
                    }
                  }

                  v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v113, &v231, v242, 16);
                }

                while (v78);
              }

              v117 = objc_msgSend_copy(v216, v114, v115, v116);
              sensitiveImageParameters = self->_sensitiveImageParameters;
              self->_sensitiveImageParameters = v117;
            }
          }

          else
          {
          }

LABEL_70:
          p_location = &location;
          v119 = sub_1D9D9CCA8(&p_location, @"replacements");
          replacements = self->_replacements;
          self->_replacements = v119;

          v121 = sub_1D9D9CCA8(&p_location, @"excludeGenderReplacements");
          excludeGenderReplacements = self->_excludeGenderReplacements;
          self->_excludeGenderReplacements = v121;

          v125 = objc_msgSend_objectForKeyedSubscript_(location, v123, @"excludeGenderTriggers", v124);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v219 = objc_msgSend_objectForKeyedSubscript_(location, v126, @"excludeGenderTriggers", v127);

            if (!v219)
            {
              v220 = 0;
LABEL_82:
              v148 = objc_msgSend_objectForKeyedSubscript_(parametersCopy, v128, CVNLPCaptionEnableGenderedCaptions, v130);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v206 = objc_msgSend_objectForKeyedSubscript_(parametersCopy, v149, CVNLPCaptionEnableGenderedCaptions, v150);

                if (v206)
                {
                  v154 = objc_msgSend_unsignedIntegerValue(v206, v151, v152, v153);
                  goto LABEL_87;
                }
              }

              else
              {
              }

              v206 = 0;
              v154 = 1;
LABEL_87:
              self->_genderOption = v154;
              v155 = objc_msgSend_objectForKeyedSubscript_(location, v151, @"filterTokens", v153);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                obja = objc_msgSend_objectForKeyedSubscript_(location, v156, @"filterTokens", v157);

                if (!obja)
                {
                  obja = 0;
                  goto LABEL_98;
                }

                v155 = objc_msgSend_array(MEMORY[0x1E695DF70], v158, v159, v160);
                v163 = objc_msgSend_objectForKeyedSubscript_(obja, v161, @"gender", v162);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v166 = objc_msgSend_objectForKeyedSubscript_(obja, v164, @"gender", v165);

                  if (v166)
                  {
                    objc_msgSend_addObjectsFromArray_(v155, v167, v166, v169);
                  }
                }

                else
                {

                  v166 = 0;
                }

                v170 = objc_msgSend_copy(v155, v167, v168, v169);
                genderedTokens = self->_genderedTokens;
                self->_genderedTokens = v170;
              }

              else
              {
                obja = 0;
              }

LABEL_98:
              v172 = objc_msgSend_objectForKeyedSubscript_(location, v158, @"blacklistTokens", v160);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v205 = objc_msgSend_objectForKeyedSubscript_(location, v173, @"blacklistTokens", v174);

                if (!v205)
                {
LABEL_119:

LABEL_120:
                  goto LABEL_121;
                }

                v217 = objc_msgSend_array(MEMORY[0x1E695DF70], v175, v176, v177);
                v181 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v178, v179, v180);
                v224 = 0u;
                v225 = 0u;
                v222 = 0u;
                v223 = 0u;
                v172 = v205;
                v185 = objc_msgSend_countByEnumeratingWithState_objects_count_(v172, v182, &v222, v240, 16);
                if (v185)
                {
                  v186 = *v223;
                  do
                  {
                    v187 = 0;
                    do
                    {
                      if (*v223 != v186)
                      {
                        objc_enumerationMutation(v172);
                      }

                      v188 = objc_msgSend_stringByTrimmingCharactersInSet_(*(*(&v222 + 1) + 8 * v187), v183, v181, v184);
                      if (objc_msgSend_length(v188, v189, v190, v191))
                      {
                        v221 = 0;
                        v193 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], v192, v188, 1, &v221);
                        v194 = v221;
                        v197 = v194;
                        if (v193)
                        {
                          objc_msgSend_addObject_(v217, v195, v193, v196);
                        }

                        else if (v194)
                        {
                          if (qword_1ECB71C28 != -1)
                          {
                            dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
                          }

                          v198 = qword_1ECB71C30;
                          if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412546;
                            v237 = v188;
                            v238 = 2112;
                            v239 = v197;
                            _os_log_error_impl(&dword_1D9D0A000, v198, OS_LOG_TYPE_ERROR, "Error adding caption rules-file line: %@. Error: %@", buf, 0x16u);
                          }
                        }
                      }

                      ++v187;
                    }

                    while (v185 != v187);
                    v185 = objc_msgSend_countByEnumeratingWithState_objects_count_(v172, v183, &v222, v240, 16);
                  }

                  while (v185);
                }

                v202 = objc_msgSend_copy(v217, v199, v200, v201);
                blackListRules = self->_blackListRules;
                self->_blackListRules = v202;
              }

              goto LABEL_119;
            }

            v125 = objc_msgSend_array(MEMORY[0x1E695DF70], v128, v129, v130);
            v228 = 0u;
            v229 = 0u;
            v226 = 0u;
            v227 = 0u;
            v220 = v219;
            v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v220, v131, &v226, v241, 16);
            if (v132)
            {
              v133 = *v227;
              do
              {
                for (j = 0; j != v132; ++j)
                {
                  if (*v227 != v133)
                  {
                    objc_enumerationMutation(v220);
                  }

                  v135 = *(*(&v226 + 1) + 8 * j);
                  v136 = [CVNLPCaptionRuntimeExcludeGenderTrigger alloc];
                  v139 = objc_msgSend_initWithDictionary_(v136, v137, v135, v138);
                  objc_msgSend_addObject_(v125, v140, v139, v141);
                }

                v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v220, v142, &v226, v241, 16);
              }

              while (v132);
            }

            v146 = objc_msgSend_copy(v125, v143, v144, v145);
            excludeGenderTriggers = self->_excludeGenderTriggers;
            self->_excludeGenderTriggers = v146;
          }

          else
          {
            v220 = 0;
          }

          goto LABEL_82;
        }
      }

      else
      {
      }

      v207 = 0;
      goto LABEL_70;
    }

    v23 = objc_msgSend_objectForKeyedSubscript_(location, v21, @"captionModel", v22);

    if (!v23)
    {
      log = 0;
      goto LABEL_34;
    }

    log = v23;
    v26 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"minimumConfidence", v25);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = objc_msgSend_objectForKeyedSubscript_(log, v27, @"minimumConfidence", v28);

      if (v20)
      {
        objc_msgSend_doubleValue(v20, v29, v30, v31);
        self->_captionModelMinimumConfidence = v32;
      }
    }

    else
    {

      v20 = 0;
    }

    v34 = objc_msgSend_objectForKeyedSubscript_(log, v29, @"lengthNormalizationFactor", v31);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = objc_msgSend_objectForKeyedSubscript_(log, v35, @"lengthNormalizationFactor", v36);

      if (v37)
      {
        objc_msgSend_doubleValue(v37, v38, v39, v40);
        self->_captionModelLengthNormalizationFactor = v41;
      }
    }

    else
    {

      v37 = 0;
    }

    v42 = objc_msgSend_objectForKeyedSubscript_(log, v38, @"excludeGenderStrategy", v40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = objc_msgSend_objectForKeyedSubscript_(log, v43, @"excludeGenderStrategy", v44);

      if (!v45)
      {
LABEL_32:

        goto LABEL_33;
      }

      self->_excludeGenderStrategy = objc_msgSend_unsignedIntegerValue(v45, v46, v47, v48);
    }

    else
    {
      v45 = v42;
    }

    goto LABEL_32;
  }

  if (qword_1ECB71C28 != -1)
  {
    dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
  }

  v33 = qword_1ECB71C30;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v237 = v211;
    _os_log_error_impl(&dword_1D9D0A000, v33, OS_LOG_TYPE_ERROR, "Could not load the contents of file at %@", buf, 0xCu);
  }

LABEL_121:
  v204 = *MEMORY[0x1E69E9840];
}

@end