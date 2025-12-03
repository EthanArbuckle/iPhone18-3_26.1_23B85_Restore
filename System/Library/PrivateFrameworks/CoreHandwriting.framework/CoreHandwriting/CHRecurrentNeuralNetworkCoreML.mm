@interface CHRecurrentNeuralNetworkCoreML
- (CHRecurrentNeuralNetworkCoreML)initWithModelName:(id)name;
- (void)dealloc;
@end

@implementation CHRecurrentNeuralNetworkCoreML

- (CHRecurrentNeuralNetworkCoreML)initWithModelName:(id)name
{
  v286 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v261 = nameCopy;
  if (self && (v281.receiver = self, v281.super_class = CHRecurrentNeuralNetworkCoreML, (v5 = [(CHRecurrentNeuralNetwork *)&v281 initWithModelName:nameCopy]) != 0))
  {
    v262 = v5;
    v6 = v261;
    v12 = objc_msgSend_UTF8String(v261, v7, v8, v9, v10, v11);
    v13 = sub_1837A3290(v12, 0, __s);
    v14 = strlen(__s);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_183688FF0();
    }

    v18 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v280 = v14;
    if (v14)
    {
      memcpy(&__dst, __s, v14);
    }

    *(&__dst + v18) = 0;
    if (v280 >= 0)
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v15, &__dst, 4, v16, v17);
    }

    else
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v15, __dst, 4, v16, v17);
    }
    v260 = ;
    objc_storeStrong(&v262->_resourcePath, v260);
    if (v260)
    {
      v23 = v13;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v24 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v19, v260, v20, v21, v22);
      v25 = objc_alloc(MEMORY[0x1E695FEB0]);
      v30 = objc_msgSend_initWithComputeUnits_(v25, v26, 0, v27, v28, v29);
      v278 = 0;
      v33 = objc_msgSend_modelWithContentsOfURL_configuration_error_(CHSingletonMLModel, v31, v24, v30, &v278, v32);
      v34 = v278;
      if (v33)
      {
        obj = v33;

        objc_storeStrong(&v262->_model, v33);
        v265 = objc_msgSend_array(MEMORY[0x1E695DF70], v35, v36, v37, v38, v39);
        objc_msgSend_dictionary(MEMORY[0x1E695DF90], v40, v41, v42, v43, v44);
        v276 = 0u;
        v277 = 0u;
        v274 = 0u;
        v264 = v275 = 0u;
        v50 = objc_msgSend_modelDescription(v33, v45, v46, v47, v48, v49);
        v56 = objc_msgSend_inputDescriptionsByName(v50, v51, v52, v53, v54, v55);
        v267 = objc_msgSend_allKeys(v56, v57, v58, v59, v60, v61);

        v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v267, v62, &v274, buf, 16, v63);
        if (v68)
        {
          v69 = *v275;
          do
          {
            for (i = 0; i != v68; ++i)
            {
              if (*v275 != v69)
              {
                objc_enumerationMutation(v267);
              }

              v71 = *(*(&v274 + 1) + 8 * i);
              if (objc_msgSend_hasPrefix_(v71, v64, @"input", v65, v66, v67))
              {
                objc_msgSend_addObject_(v265, v64, v71, v65, v66, v67);
                v77 = objc_msgSend_modelDescription(obj, v72, v73, v74, v75, v76);
                v83 = objc_msgSend_inputDescriptionsByName(v77, v78, v79, v80, v81, v82);
                v88 = objc_msgSend_objectForKeyedSubscript_(v83, v84, v71, v85, v86, v87);
                v94 = objc_msgSend_multiArrayConstraint(v88, v89, v90, v91, v92, v93);
                v100 = objc_msgSend_shape(v94, v95, v96, v97, v98, v99);
                v106 = objc_msgSend_count(v100, v101, v102, v103, v104, v105);

                v112 = objc_msgSend_modelDescription(obj, v107, v108, v109, v110, v111);
                v118 = objc_msgSend_inputDescriptionsByName(v112, v113, v114, v115, v116, v117);
                v123 = objc_msgSend_objectForKeyedSubscript_(v118, v119, v71, v120, v121, v122);
                v129 = objc_msgSend_multiArrayConstraint(v123, v124, v125, v126, v127, v128);
                v135 = objc_msgSend_shape(v129, v130, v131, v132, v133, v134);
                v140 = objc_msgSend_objectAtIndex_(v135, v136, v106 - 1, v137, v138, v139);

                objc_msgSend_setObject_forKey_(v264, v141, v140, v71, v142, v143);
              }
            }

            v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v267, v64, &v274, buf, 16, v67);
          }

          while (v68);
        }

        objc_storeStrong(&v262->_inputNames, v265);
        objc_storeStrong(&v262->_featureCounts, v264);
        v268 = objc_msgSend_array(MEMORY[0x1E695DF70], v144, v145, v146, v147, v148);
        v263 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v149, v150, v151, v152, v153);
        v272 = 0u;
        v273 = 0u;
        v270 = 0u;
        v271 = 0u;
        v159 = objc_msgSend_modelDescription(obj, v154, v155, v156, v157, v158);
        v165 = objc_msgSend_outputDescriptionsByName(v159, v160, v161, v162, v163, v164);
        v266 = objc_msgSend_allKeys(v165, v166, v167, v168, v169, v170);

        v177 = objc_msgSend_countByEnumeratingWithState_objects_count_(v266, v171, &v270, v282, 16, v172);
        if (v177)
        {
          v178 = *v271;
          do
          {
            for (j = 0; j != v177; ++j)
            {
              if (*v271 != v178)
              {
                objc_enumerationMutation(v266);
              }

              v180 = *(*(&v270 + 1) + 8 * j);
              if (objc_msgSend_hasPrefix_(v180, v173, @"output", v174, v175, v176))
              {
                objc_msgSend_addObject_(v268, v173, v180, v174, v175, v176);
                v186 = objc_msgSend_modelDescription(obj, v181, v182, v183, v184, v185);
                v192 = objc_msgSend_outputDescriptionsByName(v186, v187, v188, v189, v190, v191);
                v197 = objc_msgSend_objectForKeyedSubscript_(v192, v193, v180, v194, v195, v196);
                v203 = objc_msgSend_multiArrayConstraint(v197, v198, v199, v200, v201, v202);
                v209 = objc_msgSend_shape(v203, v204, v205, v206, v207, v208);
                v214 = objc_msgSend_objectAtIndex_(v209, v210, 0, v211, v212, v213);

                objc_msgSend_setObject_forKey_(v263, v215, v214, v180, v216, v217);
              }
            }

            v177 = objc_msgSend_countByEnumeratingWithState_objects_count_(v266, v173, &v270, v282, 16, v176);
          }

          while (v177);
        }

        objc_storeStrong(&v262->_outputNames, v268);
        objc_storeStrong(&v262->_classCounts, v263);
        v262->_mainOutputIndex = 0;
        for (k = 1; ; ++k)
        {
          if (k >= objc_msgSend_count(v268, v218, v219, v220, v221, v222))
          {

            v34 = v264;
            goto LABEL_58;
          }

          v228 = objc_msgSend_objectAtIndexedSubscript_(v268, v224, k, v225, v226, v227);
          if (objc_msgSend_isEqualToString_(v228, v229, @"output1", v230, v231, v232))
          {
            goto LABEL_38;
          }

          v237 = objc_msgSend_objectAtIndexedSubscript_(v268, v233, k, v234, v235, v236);
          if (objc_msgSend_isEqualToString_(v237, v238, @"output_log_softmax", v239, v240, v241))
          {
            break;
          }

          v246 = objc_msgSend_objectAtIndexedSubscript_(v268, v242, k, v243, v244, v245);
          isEqualToString = objc_msgSend_isEqualToString_(v246, v247, @"output_after_topk", v248, v249, v250);

          if (isEqualToString)
          {
            goto LABEL_39;
          }

LABEL_40:
          ;
        }

LABEL_38:
LABEL_39:
        v262->_mainOutputIndex = k;
        goto LABEL_40;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v252 = qword_1EA84DC58;
      if (os_log_type_enabled(v252, OS_LOG_TYPE_ERROR))
      {
        v258 = objc_msgSend_localizedDescription(v34, v253, v254, v255, v256, v257);
        *buf = 138412290;
        v284 = v258;
        _os_log_impl(&dword_18366B000, v252, OS_LOG_TYPE_ERROR, "An error occurred when loading a model: %@", buf, 0xCu);
      }

      obj = 0;
      v265 = v262;
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v34 = qword_1EA84DC58;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v284 = v261;
        _os_log_impl(&dword_18366B000, v34, OS_LOG_TYPE_ERROR, "Model not found (%@)", buf, 0xCu);
      }

      obj = 0;
      v265 = v262;
    }

    v262 = 0;
LABEL_58:

    if (v280 < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    v262 = 0;
  }

  return v262;
}

- (void)dealloc
{
  v7 = objc_msgSend_modelKey(self->_model, a2, v2, v3, v4, v5);
  objc_msgSend_releaseModelWithKey_(CHSingletonMLModel, v8, v7, v9, v10, v11);

  v12.receiver = self;
  v12.super_class = CHRecurrentNeuralNetworkCoreML;
  [(CHRecurrentNeuralNetworkCoreML *)&v12 dealloc];
}

@end