@interface CSUCaptionRuntimeParameters
- (CSUCaptionRuntimeParameters)initWithOptions:(id)a3;
- (void)_loadRuntimeParameters:(id)a3;
@end

@implementation CSUCaptionRuntimeParameters

- (CSUCaptionRuntimeParameters)initWithOptions:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CSUCaptionRuntimeParameters;
  v5 = [(CSUCaptionRuntimeParameters *)&v11 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_captionModelMinimumConfidence = xmmword_1AC129B20;
    v5->_excludeGenderStrategy = 1;
    NSLog(&stru_1F20D4DC8.isa, v4);
    objc_msgSend__loadRuntimeParameters_(v6, v7, v4, v8, v9);
  }

  return v6;
}

- (void)_loadRuntimeParameters:(id)a3
{
  v250 = *MEMORY[0x1E69E9840];
  v247 = a3;
  v233 = v247;
  v6 = objc_msgSend_objectForKeyedSubscript_(v247, v3, @"captionModel", v4, v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(v247, v7, @"captionModel", v8, v9);

    if (v10)
    {
      v231 = v10;
      v14 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"minimumConfidence", v12, v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = objc_msgSend_objectForKeyedSubscript_(v10, v15, @"minimumConfidence", v16, v17);

        if (v18)
        {
          objc_msgSend_doubleValue(v18, v19, v20, v21, v22);
          self->_captionModelMinimumConfidence = v26;
          goto LABEL_14;
        }
      }

      else
      {
      }

      v34 = sub_1AC090E50();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_1AC11FC70(v34, v35, v36, v37, v38, v39, v40, v41);
      }

      v18 = 0;
LABEL_14:
      v42 = objc_msgSend_objectForKeyedSubscript_(v10, v23, @"lengthNormalizationFactor", v24, v25);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = objc_msgSend_objectForKeyedSubscript_(v10, v43, @"lengthNormalizationFactor", v44, v45);

        if (v46)
        {
          objc_msgSend_doubleValue(v46, v47, v48, v49, v50);
          self->_captionModelLengthNormalizationFactor = v54;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v55 = sub_1AC090E50();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        sub_1AC11FCE8(v55, v56, v57, v58, v59, v60, v61, v62);
      }

      v46 = 0;
LABEL_21:
      v63 = objc_msgSend_objectForKeyedSubscript_(v10, v51, @"excludeGenderStrategy", v52, v53);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v67 = objc_msgSend_objectForKeyedSubscript_(v231, v64, @"excludeGenderStrategy", v65, v66);

        if (v67)
        {
          self->_excludeGenderStrategy = objc_msgSend_unsignedIntegerValue(v67, v68, v69, v70, v71);
LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
      }

      v67 = sub_1AC090E50();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        sub_1AC11FD60(v67, v72, v73, v74, v75, v76, v77, v78);
      }

      goto LABEL_27;
    }
  }

  else
  {
  }

  v18 = sub_1AC090E50();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_1AC11FDD8(v18, v27, v28, v29, v30, v31, v32, v33);
  }

  v231 = 0;
LABEL_28:

  v246 = &v247;
  v79 = sub_1AC0A9A00(&v246, @"replacements");
  replacements = self->_replacements;
  self->_replacements = v79;

  v81 = sub_1AC0A9A00(&v246, @"excludeGenderReplacements");
  excludeGenderReplacements = self->_excludeGenderReplacements;
  self->_excludeGenderReplacements = v81;

  v86 = objc_msgSend_objectForKeyedSubscript_(v247, v83, @"excludeGenderTriggers", v84, v85);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v90 = objc_msgSend_objectForKeyedSubscript_(v247, v87, @"excludeGenderTriggers", v88, v89);

    if (v90)
    {
      v95 = objc_msgSend_array(MEMORY[0x1E695DF70], v91, v92, v93, v94);
      v244 = 0u;
      v245 = 0u;
      v242 = 0u;
      v243 = 0u;
      obj = v90;
      v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v96, &v242, v249, 16);
      if (v97)
      {
        v98 = *v243;
        do
        {
          for (i = 0; i != v97; ++i)
          {
            if (*v243 != v98)
            {
              objc_enumerationMutation(obj);
            }

            v100 = *(*(&v242 + 1) + 8 * i);
            v101 = [CSUCaptionRuntimeExcludeGenderTrigger alloc];
            v105 = objc_msgSend_initWithDictionary_(v101, v102, v100, v103, v104);
            objc_msgSend_addObject_(v95, v106, v105, v107, v108);
          }

          v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v109, &v242, v249, 16);
        }

        while (v97);
      }

      v114 = objc_msgSend_copy(v95, v110, v111, v112, v113);
      excludeGenderTriggers = self->_excludeGenderTriggers;
      self->_excludeGenderTriggers = v114;

      goto LABEL_42;
    }
  }

  else
  {
  }

  v95 = sub_1AC090E50();
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
  {
    sub_1AC11FE50(v95, v116, v117, v118, v119, v120, v121, v122);
  }

  obj = 0;
LABEL_42:

  v126 = objc_msgSend_objectForKeyedSubscript_(v233, v123, off_1EB54A2C0, v124, v125);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v230 = objc_msgSend_objectForKeyedSubscript_(v233, v127, off_1EB54A2C0, v128, v129);

    if (v230)
    {
      v134 = objc_msgSend_unsignedIntegerValue(v230, v130, v131, v132, v133);
      goto LABEL_47;
    }
  }

  else
  {
  }

  v230 = 0;
  v134 = 1;
LABEL_47:
  self->_genderOption = v134;
  v135 = sub_1AC090E50();
  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
  {
    sub_1AC11FEC8(&self->_genderOption, v135);
  }

  v139 = objc_msgSend_objectForKeyedSubscript_(v247, v136, @"filterTokens", v137, v138);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v232 = objc_msgSend_objectForKeyedSubscript_(v247, v140, @"filterTokens", v141, v142);

    if (v232)
    {
      v147 = objc_msgSend_array(MEMORY[0x1E695DF70], v143, v144, v145, v146);
      v151 = objc_msgSend_objectForKeyedSubscript_(v232, v148, @"gender", v149, v150);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v155 = objc_msgSend_objectForKeyedSubscript_(v232, v152, @"gender", v153, v154);

        if (v155)
        {
          objc_msgSend_addObjectsFromArray_(v147, v156, v155, v157, v158);
LABEL_62:
          v178 = objc_msgSend_copy(v147, v159, v160, v161, v162, v230, v231);
          genderedTokens = self->_genderedTokens;
          self->_genderedTokens = v178;

          goto LABEL_63;
        }
      }

      else
      {
      }

      v170 = sub_1AC090E50();
      if (os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
      {
        sub_1AC11FF44(v170, v171, v172, v173, v174, v175, v176, v177);
      }

      v155 = 0;
      goto LABEL_62;
    }
  }

  else
  {
  }

  v147 = sub_1AC090E50();
  if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
  {
    sub_1AC11FFBC(v147, v163, v164, v165, v166, v167, v168, v169);
  }

  v232 = 0;
LABEL_63:

  v183 = objc_msgSend_objectForKeyedSubscript_(v247, v180, @"blacklistTokens", v181, v182);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v234 = objc_msgSend_objectForKeyedSubscript_(v247, v184, @"blacklistTokens", v185, v186);
  }

  else
  {
    v234 = 0;
  }

  v195 = objc_msgSend_array(MEMORY[0x1E695DF70], v187, v188, v189, v190);
  if (v234)
  {
    v196 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v191, v192, v193, v194);
    v240 = 0u;
    v241 = 0u;
    v238 = 0u;
    v239 = 0u;
    v197 = v234;
    v202 = objc_msgSend_countByEnumeratingWithState_objects_count_(v197, v198, &v238, v248, 16);
    if (v202)
    {
      v203 = *v239;
      do
      {
        for (j = 0; j != v202; ++j)
        {
          if (*v239 != v203)
          {
            objc_enumerationMutation(v197);
          }

          v205 = objc_msgSend_stringByTrimmingCharactersInSet_(*(*(&v238 + 1) + 8 * j), v199, v196, v200, v201, v230);
          if (objc_msgSend_length(v205, v206, v207, v208, v209))
          {
            v237 = 0;
            v211 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], v210, v205, 1, &v237);
            v215 = v237;
            if (v211)
            {
              objc_msgSend_addObject_(v195, v212, v211, v213, v214);
            }
          }
        }

        v202 = objc_msgSend_countByEnumeratingWithState_objects_count_(v197, v199, &v238, v248, 16);
      }

      while (v202);
    }
  }

  else
  {
    v196 = sub_1AC090E50();
    if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
    {
      sub_1AC120034(v196, v216, v217, v218, v219, v220, v221, v222);
    }
  }

  v227 = objc_msgSend_copy(v195, v223, v224, v225, v226);
  blackListRules = self->_blackListRules;
  self->_blackListRules = v227;

  v229 = *MEMORY[0x1E69E9840];
}

@end