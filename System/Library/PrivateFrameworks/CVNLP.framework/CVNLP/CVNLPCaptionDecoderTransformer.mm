@interface CVNLPCaptionDecoderTransformer
- (CVNLPCaptionDecoderTransformer)initWithOptions:(id)options runTimeParams:(id)params;
- (id)computeCaptionForImageWithInputs:(id)inputs genderOption:(int)option;
- (id)computeCaptionForImageWithInputsImpl:(id)impl genderOption:(int)option;
- (id)performanceResults;
- (void)_createBeamSearch:(id)search runTimeParams:(id)params;
- (void)_loadNetwork:(id)network options:(id)options runTimeParams:(id)params;
- (void)_loadVocabFile:(id)file;
- (void)dealloc;
@end

@implementation CVNLPCaptionDecoderTransformer

- (CVNLPCaptionDecoderTransformer)initWithOptions:(id)options runTimeParams:(id)params
{
  optionsCopy = options;
  paramsCopy = params;
  v18.receiver = self;
  v18.super_class = CVNLPCaptionDecoderTransformer;
  v8 = [(CVNLPCaptionModelBase *)&v18 initWithOptions:optionsCopy runTimeParams:paramsCopy];
  v11 = v8;
  if (v8)
  {
    v8->_startID = 0;
    v8->_endID = 0;
    v12 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v9, CVNLPCaptionModelPath, v10);
    objc_msgSend__loadVocabFile_(v11, v13, v12, v14);
    objc_msgSend__loadNetwork_options_runTimeParams_(v11, v15, v12, optionsCopy, paramsCopy);
    objc_msgSend__createBeamSearch_runTimeParams_(v11, v16, optionsCopy, paramsCopy);
    if (v11->_vocabSize != v11->_outputVocabSize)
    {
      sub_1D9DAAF1C(3u, "Mismatching vocab file and output vocab sizes");
    }
  }

  return v11;
}

- (void)_loadVocabFile:(id)file
{
  fileCopy = file;
  v7 = objc_msgSend_URLByAppendingPathComponent_(fileCopy, v5, @"vocab_reverse.json", v6);
  v8 = MEMORY[0x1E695DEF0];
  v12 = objc_msgSend_path(v7, v9, v10, v11);
  v15 = objc_msgSend_dataWithContentsOfFile_(v8, v13, v12, v14);

  v23 = 0;
  v17 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v16, v15, 0, &v23);
  v18 = v23;
  vocab = self->_vocab;
  self->_vocab = v17;

  self->_vocabSize = objc_msgSend_count(self->_vocab, v20, v21, v22) + 1;
}

- (void)_loadNetwork:(id)network options:(id)options runTimeParams:(id)params
{
  networkCopy = network;
  optionsCopy = options;
  paramsCopy = params;
  v14 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13);
  for (i = 0; ; ++i)
  {
    v16 = [CVNLPCaptionDecoderBlock alloc];
    v21 = objc_msgSend_initWithOptions_modelIndex_runTimeParams_(v16, v17, optionsCopy, i, paramsCopy);
    if (!v21)
    {
      break;
    }

    objc_msgSend_addObject_(v14, v18, v21, v20);
  }

  if (!objc_msgSend_count(v14, v18, v19, v20))
  {
    operator new();
  }

  v25 = objc_msgSend_copy(v14, v22, v23, v24);
  v26 = 0;
  decoderBlocks = self->_decoderBlocks;
  self->_decoderBlocks = v25;
  while (1)
  {

    if (v26 >= objc_msgSend_count(v14, v28, v29, v30) - 1)
    {
      break;
    }

    v34 = objc_msgSend_decoderBlocks(self, v31, v32, v33);
    decoderBlocks = objc_msgSend_objectAtIndexedSubscript_(v34, v35, v26, v36);

    v40 = objc_msgSend_decoderBlocks(self, v37, v38, v39);
    v43 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, v26 + 1, v42);

    objc_msgSend_setNextBlock_(decoderBlocks, v44, v43, v45);
    ++v26;
  }

  v46 = objc_msgSend_firstObject(v14, v31, v32, v33);
  v50 = objc_msgSend_lastObject(v14, v47, v48, v49);
  v54 = v50;
  if (!v46)
  {
    decoderBatchSize = 0;
    p_maxCaptionLen = &self->_maxCaptionLen;
    self->_maxCaptionLen = 0;
    self->_decoderBatchSize = 0;
    if (!v50)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  objc_msgSend_decoderInputNames(v46, v51, v52, v53);
  v58 = v94;
  v59 = 0xAAAAAAAAAAAAAAABLL * (v94 - v93);
  if (!v93)
  {
LABEL_13:
    if (v59 <= 4)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  if (v94 == v93)
  {
    operator delete(v93);
    goto LABEL_13;
  }

  do
  {
    v75 = *(v58 - 1);
    v58 -= 3;
    if (v75 < 0)
    {
      operator delete(*v58);
    }
  }

  while (v58 != v93);
  operator delete(v93);
  if (v59 < 5)
  {
LABEL_14:
    objc_msgSend_blockInput(v46, v55, v56, v57);
    objc_msgSend_blockInput(v46, v60, v61, v62);
    p_maxCaptionLen = &self->_maxCaptionLen;
    self->_maxCaptionLen = v92 * v95;
    objc_msgSend_blockInput(v46, v64, v65, v66);
    objc_msgSend_blockInput(v46, v67, v68, v69);
    objc_msgSend_blockInput(v46, v70, v71, v72);
    decoderBatchSize = v91 * v98 * v90;
    self->_decoderBatchSize = decoderBatchSize;
    if (!v54)
    {
LABEL_15:
      v74 = 0;
LABEL_21:
      v82 = v74 / (*p_maxCaptionLen * decoderBatchSize);
      goto LABEL_26;
    }

LABEL_20:
    objc_msgSend_blockOutput(v54, v51, v52, v53);
    objc_msgSend_blockOutput(v54, v76, v77, v78);
    objc_msgSend_blockOutput(v54, v79, v80, v81);
    decoderBatchSize = self->_decoderBatchSize;
    v74 = v91 * v95 * v89;
    goto LABEL_21;
  }

LABEL_23:
  objc_msgSend_blockInput(v46, v55, v56, v57);
  self->_maxCaptionLen = v98;
  objc_msgSend_blockInput(v46, v83, v84, v85);
  self->_decoderBatchSize = v97;
  if (v54)
  {
    objc_msgSend_blockOutput(v54, v86, v87, v88);
    v82 = v96;
  }

  else
  {
    v82 = 0;
  }

LABEL_26:
  self->_outputVocabSize = v82;
}

- (void)_createBeamSearch:(id)search runTimeParams:(id)params
{
  searchCopy = search;
  paramsCopy = params;
  v10 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(searchCopy, v11, CVNLPBeamSearchSize, v12);
  v17 = v13;
  if (v13)
  {
    v18 = objc_msgSend_unsignedIntegerValue(v13, v14, v15, v16);
  }

  else
  {
    v18 = 1;
  }

  self->_beamSize = v18;
  v19 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v14, v18, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v20, v19, CVNLPBeamSearchSize);

  v21 = MEMORY[0x1E696AD98];
  objc_msgSend_captionModelLengthNormalizationFactor(paramsCopy, v22, v23, v24);
  v28 = objc_msgSend_numberWithDouble_(v21, v25, v26, v27);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v29, v28, CVNLPBeamSearchLengthNormalizationFactor);

  v32 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v30, self->_endID, v31);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v33, v32, CVNLPBeamEndToken);

  v36 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v34, self->_vocabSize, v35);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v37, v36, CVNLPBeamSearchOutputVocabSize);

  objc_msgSend_setObject_forKeyedSubscript_(v10, v38, self->_vocab, CVNLPBeamSearchOutputVocabMap);
  v42 = objc_msgSend_blackListRules(paramsCopy, v39, v40, v41);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v43, v42, CVNLPBeamSearchBlacklistRules);

  objc_msgSend_setObject_forKeyedSubscript_(v10, v44, MEMORY[0x1E695E118], CVNLPBeamSearchIncludeLanguageModel);
  self->_beamSearch = CVNLPBeamSearchCreate(v10, 0);
  v48 = objc_msgSend_genderedTokens(paramsCopy, v45, v46, v47);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v49, v48, CVNLPBeamSearchOutputVocabFilterList);

  self->_filterBeamSearch = CVNLPBeamSearchCreate(v10, 0);
}

- (void)dealloc
{
  beamSearch = self->_beamSearch;
  if (beamSearch)
  {
    CFRelease(beamSearch);
  }

  filterBeamSearch = self->_filterBeamSearch;
  if (filterBeamSearch)
  {
    CFRelease(filterBeamSearch);
  }

  v5.receiver = self;
  v5.super_class = CVNLPCaptionDecoderTransformer;
  [(CVNLPCaptionDecoderTransformer *)&v5 dealloc];
}

- (id)computeCaptionForImageWithInputs:(id)inputs genderOption:(int)option
{
  inputsCopy = inputs;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1D9DD2168;
  v23 = sub_1D9DD2178;
  v24 = 0;
  v10 = objc_msgSend_perfResults(self, v7, v8, v9);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1D9DD2180;
  v15[3] = &unk_1E858E520;
  v17 = &v19;
  v15[4] = self;
  v11 = inputsCopy;
  v16 = v11;
  optionCopy = option;
  objc_msgSend_run_block_(v10, v12, @"Decode", v15);

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v13;
}

- (id)computeCaptionForImageWithInputsImpl:(id)impl genderOption:(int)option
{
  v216 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  implCopy = impl;
  v9 = 9;
  if (!option)
  {
    v9 = 10;
  }

  v167 = *(&self->super.super.super.super.isa + OBJC_IVAR___CVNLPCaptionDecoderTransformer__startID[v9]);
  v164 = implCopy;
  v169 = objc_msgSend_objectAtIndexedSubscript_(implCopy, v7, 0, v8);
  v13 = objc_msgSend_decoderBlocks(self, v10, v11, v12);
  v17 = objc_msgSend_firstObject(v13, v14, v15, v16);
  v21 = v17;
  if (!v17)
  {

    goto LABEL_15;
  }

  objc_msgSend_decoderInputNames(v17, v18, v19, v20);
  v22 = __p[1];
  v23 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
  if (!__p[0])
  {

    if (v23 >= 5)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  v24 = __p[0];
  if (__p[1] != __p[0])
  {
    do
    {
      v25 = *(v22 - 1);
      v22 -= 3;
      if (v25 < 0)
      {
        operator delete(*v22);
      }
    }

    while (v22 != __p[0]);
    v24 = __p[0];
  }

  __p[1] = __p[0];
  operator delete(v24);

  if (v23 < 5)
  {
LABEL_15:
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v29 = objc_msgSend_decoderBlocks(selfCopy, v26, v27, v28);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v206, v215, 16);
    if (v34)
    {
      v35 = *v207;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v207 != v35)
          {
            objc_enumerationMutation(v29);
          }

          v37 = *(*(&v206 + 1) + 8 * i);
          v38 = selfCopy;
          if (v37)
          {
            objc_msgSend_attFeatsPlaceholderBlob(v37, v31, v32, v33);
          }

          else
          {
            v205 = 0;
            v203 = 0u;
            v204 = 0u;
            v201 = 0u;
            v202 = 0u;
            v199 = 0u;
            v200 = 0u;
            v197 = 0u;
            v198 = 0u;
            *__p = 0u;
            v196 = 0u;
          }

          objc_msgSend__copy_data_to_blob_repeated_to_(v38, v31, v169, __p);
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v206, v215, 16);
      }

      while (v34);
    }
  }

LABEL_26:
  v39 = objc_msgSend_decoderBlocks(selfCopy, v26, v27, v28);
  v194 = objc_msgSend_firstObject(v39, v40, v41, v42);

  v46 = objc_msgSend_decoderBlocks(selfCopy, v43, v44, v45);
  v193 = objc_msgSend_lastObject(v46, v47, v48, v49);

  v165 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v50, v51, v52);
  v56 = objc_msgSend_maxCaptionLen(selfCopy, v53, v54, v55);
  if (v56)
  {
    if (!(v56 >> 62))
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v163 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v57, v58, v59);
  objc_msgSend_setObject_forKeyedSubscript_(v165, v60, v163, CVNLPBeamSearchNextTokenMetaData);
  v61 = MEMORY[0x1E696AD98];
  started = objc_msgSend_startID(selfCopy, v62, v63, v64);
  v68 = objc_msgSend_numberWithUnsignedInteger_(v61, v66, started, v67);
  objc_msgSend_setObject_forKeyedSubscript_(v165, v69, v68, CVNLPBeamSearchNextTokenID);

  __p[0] = 0;
  __p[1] = __p;
  *&v196 = 0x3032000000;
  *(&v196 + 1) = sub_1D9DD2168;
  *&v197 = sub_1D9DD2178;
  v214 = v165;
  *(&v197 + 1) = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v70, &v214, 1);
  v166 = v194;
  v74 = 0;
  do
  {
    if (v74 >= objc_msgSend_maxCaptionLen(selfCopy, v71, v72, v73))
    {
      break;
    }

    v78 = objc_msgSend_array(MEMORY[0x1E695DF70], v75, v76, v77);
    v82 = objc_msgSend_perfResults(selfCopy, v79, v80, v81);
    v181[0] = MEMORY[0x1E69E9820];
    v181[1] = 3321888768;
    v181[2] = sub_1D9DD2D08;
    v181[3] = &unk_1F554FD28;
    v182 = v194;
    v187 = v74;
    v183 = v169;
    v184 = selfCopy;
    v186 = __p;
    v188 = &selfCopy;
    v189 = v166;
    v190 = &selfCopy;
    v191 = &v193;
    v192 = &v194;
    v83 = v78;
    v185 = v83;
    objc_msgSend_run_block_(v82, v84, @"DecodeBlock", v181);

    v88 = objc_msgSend_perfResults(selfCopy, v85, v86, v87);
    v177[0] = MEMORY[0x1E69E9820];
    v177[1] = 3221225472;
    v177[2] = sub_1D9DD3F50;
    v177[3] = &unk_1E858E598;
    v179 = __p;
    v180 = v167;
    v89 = v83;
    v178 = v89;
    objc_msgSend_run_block_(v88, v90, @"OneStep", v177);

    LOBYTE(v78) = objc_msgSend_count(*(__p[1] + 5), v91, v92, v93) == 0;
    ++v74;
  }

  while ((v78 & 1) == 0);
  v162 = CVNLPBeamSearchCopyTopBeams(v167);
  v171 = objc_msgSend_array(MEMORY[0x1E695DF70], v94, v95, v96);
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  obj = v162;
  v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v97, &v173, v213, 16);
  if (v98)
  {
    v170 = *v174;
    do
    {
      v172 = v98;
      for (j = 0; j != v172; ++j)
      {
        if (*v174 != v170)
        {
          objc_enumerationMutation(obj);
        }

        v103 = *(*(&v173 + 1) + 8 * j);
        v104 = objc_msgSend_array(MEMORY[0x1E695DF70], v99, v100, v101);
        v107 = objc_msgSend_objectForKeyedSubscript_(v103, v105, CVNLPBeamTokens, v106);
        v110 = objc_msgSend_objectForKeyedSubscript_(v103, v108, CVNLPBeamScore, v109);
        if (objc_msgSend_count(v107, v111, v112, v113))
        {
          v117 = objc_msgSend_lastObject(v107, v114, v115, v116);
          v121 = objc_msgSend_unsignedIntegerValue(v117, v118, v119, v120);
          LODWORD(v121) = v121 == objc_msgSend_endID(selfCopy, v122, v123, v124);

          if (v121)
          {
            for (k = 0; k < objc_msgSend_count(v107, v114, v115, v116) - 1; ++k)
            {
              v126 = objc_msgSend_objectAtIndexedSubscript_(v107, v114, k, v116);
              v129 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v127, @"%@", v128, v126);
              v133 = objc_msgSend_vocab(selfCopy, v130, v131, v132);
              v136 = objc_msgSend_objectForKeyedSubscript_(v133, v134, v129, v135);
              objc_msgSend_addObject_(v104, v137, v136, v138);
            }
          }
        }

        objc_msgSend_floatValue(v110, v114, v115, v116);
        v140 = v139;
        v144 = objc_msgSend_runTimeParams(selfCopy, v141, v142, v143);
        objc_msgSend_captionModelMinimumConfidence(v144, v145, v146, v147);
        v149 = v148;

        v211[0] = CVNLPGeneratedCaption;
        v152 = objc_msgSend_componentsJoinedByString_(v104, v150, @" ", v151);
        v212[0] = v152;
        v212[1] = v110;
        v211[1] = CVNLPGeneratedCaptionScore;
        v211[2] = CVNLPGeneratedCaptionConfidenceLow;
        v155 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v153, v149 >= v140, v154);
        v212[2] = v155;
        v157 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v156, v212, v211, 3);

        objc_msgSend_addObject_(v171, v158, v157, v159);
      }

      v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v99, &v173, v213, 16);
    }

    while (v98);
  }

  sub_1D9D9AA4C((v167 + 16));
  _Block_object_dispose(__p, 8);

  v160 = *MEMORY[0x1E69E9840];

  return v171;
}

- (id)performanceResults
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  v33.receiver = self;
  v33.super_class = CVNLPCaptionDecoderTransformer;
  performanceResults = [(CVNLPModelBase *)&v33 performanceResults];
  objc_msgSend_addEntriesFromDictionary_(v5, v7, performanceResults, v8);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = objc_msgSend_decoderBlocks(self, v9, v10, v11, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v29, v34, 16);
  if (v17)
  {
    v18 = *v30;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = objc_msgSend_performanceResults(*(*(&v29 + 1) + 8 * i), v14, v15, v16);
        objc_msgSend_addEntriesFromDictionary_(v5, v21, v20, v22);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v29, v34, 16);
    }

    while (v17);
  }

  v26 = objc_msgSend_copy(v5, v23, v24, v25);
  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

@end