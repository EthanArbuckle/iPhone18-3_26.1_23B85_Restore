@interface CVNLPCaptionDecoderLSTM
- (CVNLPCaptionDecoderLSTM)initWithOptions:(id)a3 runTimeParams:(id)a4;
- (id)computeCaptionForImageWithInputs:(id)a3 genderOption:(int)a4;
- (id)packBeamID:(id)a3 tokenID:(id)a4 lstmAttnState:(id *)a5 lstmLangState:(id *)a6 softmax:(id *)a7;
- (void)dealloc;
- (void)extractBeamID:(id *)a3 tokenID:(id *)a4 lstmAttnState:(id *)a5 lstmLangState:(id *)a6 fromFollowup:(id)a7;
@end

@implementation CVNLPCaptionDecoderLSTM

- (CVNLPCaptionDecoderLSTM)initWithOptions:(id)a3 runTimeParams:(id)a4
{
  v6 = a3;
  v7 = a4;
  v127.receiver = self;
  v127.super_class = CVNLPCaptionDecoderLSTM;
  v8 = [(CVNLPCaptionModelBase *)&v127 initWithOptions:v6 runTimeParams:v7];
  v11 = v8;
  if (v8)
  {
    v8->startID = 0;
    v8->endID = 0;
    v8->maxCaptionLen = 16;
    v8->beamSize = 5;
    v8->meanFeaturesPresent = 0;
    v124 = objc_msgSend_objectForKeyedSubscript_(v6, v9, CVNLPCaptionModelPath, v10);
    v14 = objc_msgSend_URLByAppendingPathComponent_(v124, v12, @"vocab_reverse.json", v13);
    v15 = MEMORY[0x1E695DEF0];
    v123 = v14;
    v19 = objc_msgSend_path(v14, v16, v17, v18);
    v22 = objc_msgSend_dataWithContentsOfFile_(v15, v20, v19, v21);

    v126 = 0;
    v24 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v23, v22, 0, &v126);
    v122 = v126;
    vocab = v11->vocab;
    v11->vocab = v24;

    v125 = objc_msgSend_URLByAppendingPathComponent_(v124, v26, @"decoder_opt_pro.espresso.net", v27);
    v11->decoderCtx = espresso_create_context();
    v11->_decoderPlan = espresso_create_plan();
    v31 = objc_msgSend_path(v125, v28, v29, v30);
    v32 = v31;
    objc_msgSend_UTF8String(v32, v33, v34, v35);
    p_decoderNet = &v11->decoderNet;
    LODWORD(v24) = espresso_plan_add_network();

    if (v24)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      decoderPlan = v11->_decoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(exception, v85);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v37 = v11->_decoderPlan;
    if (espresso_plan_build())
    {
      v86 = __cxa_allocate_exception(0x10uLL);
      v87 = v11->_decoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v86, v88);
      __cxa_throw(v86, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    plan = p_decoderNet->plan;
    v39 = *&v11->decoderNet.network_index;
    if (c_network_get_input_names())
    {
      v89 = __cxa_allocate_exception(0x10uLL);
      v90 = v11->_decoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v89, v91);
      __cxa_throw(v89, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (v11->meanFeaturesPresent)
    {
      v40 = p_decoderNet->plan;
      v41 = *&v11->decoderNet.network_index;
      if (espresso_network_bind_buffer())
      {
        v119 = __cxa_allocate_exception(0x10uLL);
        v120 = v11->_decoderPlan;
        espresso_plan_get_error_info();
        std::runtime_error::runtime_error(v119, v121);
        __cxa_throw(v119, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v42 = p_decoderNet->plan;
    v43 = *&v11->decoderNet.network_index;
    if (espresso_network_bind_buffer())
    {
      v92 = __cxa_allocate_exception(0x10uLL);
      v93 = v11->_decoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v92, v94);
      __cxa_throw(v92, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v44 = p_decoderNet->plan;
    v45 = *&v11->decoderNet.network_index;
    if (espresso_network_bind_buffer())
    {
      v95 = __cxa_allocate_exception(0x10uLL);
      v96 = v11->_decoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v95, v97);
      __cxa_throw(v95, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v46 = p_decoderNet->plan;
    v47 = *&v11->decoderNet.network_index;
    if (espresso_network_bind_buffer())
    {
      v98 = __cxa_allocate_exception(0x10uLL);
      v99 = v11->_decoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v98, v100);
      __cxa_throw(v98, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v48 = p_decoderNet->plan;
    v49 = *&v11->decoderNet.network_index;
    if (espresso_network_bind_buffer())
    {
      v101 = __cxa_allocate_exception(0x10uLL);
      v102 = v11->_decoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v101, v103);
      __cxa_throw(v101, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v50 = p_decoderNet->plan;
    v51 = *&v11->decoderNet.network_index;
    if (espresso_network_bind_buffer())
    {
      v104 = __cxa_allocate_exception(0x10uLL);
      v105 = v11->_decoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v104, v106);
      __cxa_throw(v104, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v52 = p_decoderNet->plan;
    v53 = *&v11->decoderNet.network_index;
    if (espresso_network_bind_buffer())
    {
      v107 = __cxa_allocate_exception(0x10uLL);
      v108 = v11->_decoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v107, v109);
      __cxa_throw(v107, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v54 = p_decoderNet->plan;
    v55 = *&v11->decoderNet.network_index;
    if (espresso_network_bind_buffer())
    {
      v110 = __cxa_allocate_exception(0x10uLL);
      v111 = v11->_decoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v110, v112);
      __cxa_throw(v110, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v56 = p_decoderNet->plan;
    v57 = *&v11->decoderNet.network_index;
    if (espresso_network_bind_buffer())
    {
      v113 = __cxa_allocate_exception(0x10uLL);
      v114 = v11->_decoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v113, v115);
      __cxa_throw(v113, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v58 = p_decoderNet->plan;
    v59 = *&v11->decoderNet.network_index;
    if (espresso_network_bind_buffer())
    {
      v116 = __cxa_allocate_exception(0x10uLL);
      v117 = v11->_decoderPlan;
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v116, v118);
      __cxa_throw(v116, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v11->vocabSize = objc_msgSend_count(v11->vocab, v60, v61, v62);
    v66 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v63, v64, v65);
    v69 = objc_msgSend_objectForKeyedSubscript_(v6, v67, CVNLPBeamSearchSize, v68);
    v71 = v69;
    if (v69)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v66, v70, v69, CVNLPBeamSearchSize);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v66, v70, &unk_1F5554B50, CVNLPBeamSearchSize);
    }

    v74 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v72, v11->endID, v73);
    objc_msgSend_setObject_forKeyedSubscript_(v66, v75, v74, CVNLPBeamEndToken);

    v78 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v76, v11->vocabSize, v77);
    objc_msgSend_setObject_forKeyedSubscript_(v66, v79, v78, CVNLPBeamSearchOutputVocabSize);

    objc_msgSend_setObject_forKeyedSubscript_(v66, v80, v11->vocab, CVNLPBeamSearchOutputVocabMap);
    objc_msgSend_setObject_forKeyedSubscript_(v66, v81, MEMORY[0x1E695E118], CVNLPBeamSearchIncludeLanguageModel);
    v11->_beamSearch = CVNLPBeamSearchCreate(v66, 0);
  }

  return v11;
}

- (void)dealloc
{
  decoderPlan = self->_decoderPlan;
  espresso_plan_destroy();
  decoderCtx = self->decoderCtx;
  espresso_context_destroy();
  CFRelease(self->_beamSearch);
  v5.receiver = self;
  v5.super_class = CVNLPCaptionDecoderLSTM;
  [(CVNLPCaptionDecoderLSTM *)&v5 dealloc];
}

- (id)packBeamID:(id)a3 tokenID:(id)a4 lstmAttnState:(id *)a5 lstmLangState:(id *)a6 softmax:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v17 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v14, v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v17, v18, v12, CVNLPBeamSearchBeamID);
  objc_msgSend_setObject_forKeyedSubscript_(v17, v19, v13, CVNLPBeamSearchNextTokenID);
  if (a7)
  {
    v23 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v20, a7->var0, 4 * self->vocabSize);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v24, v23, CVNLPBeamSearchNextTokenSoftmaxValues);
  }

  v28 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v20, v21, v22);
  if (a5)
  {
    var0 = a5->var0;
    v30 = *&a5->var12;
    v60 = *&a5->var10;
    v61 = v30;
    v62 = *&a5->var14;
    v31 = *&a5->var4;
    v56 = *&a5->var3[2];
    v57 = v31;
    v32 = *&a5->var8;
    v58 = *&a5->var6;
    v59 = v32;
    v33 = *a5->var2;
    v52 = *&a5->var0;
    v53 = v33;
    v34 = *a5->var3;
    v54 = *&a5->var2[2];
    v55 = v34;
    v35 = objc_msgSend__blob_size_(self, v25, &v52, v27);
    v37 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v36, var0, 4 * v35);
    objc_msgSend_setObject_forKeyedSubscript_(v28, v38, v37, @"lstmAttnStateData");
  }

  if (a6)
  {
    v39 = a6->var0;
    v40 = *&a6->var12;
    v60 = *&a6->var10;
    v61 = v40;
    v62 = *&a6->var14;
    v41 = *&a6->var4;
    v56 = *&a6->var3[2];
    v57 = v41;
    v42 = *&a6->var8;
    v58 = *&a6->var6;
    v59 = v42;
    v43 = *a6->var2;
    v52 = *&a6->var0;
    v53 = v43;
    v44 = *a6->var3;
    v54 = *&a6->var2[2];
    v55 = v44;
    v45 = objc_msgSend__blob_size_(self, v25, &v52, v27);
    v47 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v46, v39, 4 * v45);
    objc_msgSend_setObject_forKeyedSubscript_(v28, v48, v47, @"lstmLangStateData");
  }

  v49 = objc_msgSend_copy(v28, v25, v26, v27);
  objc_msgSend_setObject_forKeyedSubscript_(v17, v50, v49, CVNLPBeamSearchNextTokenMetaData);

  return v17;
}

- (void)extractBeamID:(id *)a3 tokenID:(id *)a4 lstmAttnState:(id *)a5 lstmLangState:(id *)a6 fromFollowup:(id)a7
{
  v12 = a7;
  *a3 = objc_msgSend_objectForKeyedSubscript_(v12, v13, CVNLPBeamSearchBeamID, v14);
  *a4 = objc_msgSend_objectForKeyedSubscript_(v12, v15, CVNLPBeamSearchNextTokenID, v16);
  v19 = objc_msgSend_objectForKeyedSubscript_(v12, v17, CVNLPBeamSearchNextTokenMetaData, v18);
  v24 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"lstmAttnStateData", v21);
  if (v24)
  {
    var0 = a5->var0;
    v26 = *&a5->var12;
    v59 = *&a5->var10;
    v60 = v26;
    v61 = *&a5->var14;
    v27 = *&a5->var4;
    v55 = *&a5->var3[2];
    v56 = v27;
    v28 = *&a5->var8;
    v57 = *&a5->var6;
    v58 = v28;
    v29 = *a5->var2;
    v51 = *&a5->var0;
    v52 = v29;
    v30 = *a5->var3;
    v53 = *&a5->var2[2];
    v54 = v30;
    v31 = objc_msgSend__blob_size_(self, v22, &v51, v23);
    v32 = v24;
    v22 = objc_msgSend_bytes(v32, v33, v34, v35);
    if (v31)
    {
      memmove(var0, v22, 4 * v31);
    }
  }

  v38 = objc_msgSend_objectForKeyedSubscript_(v19, v22, @"lstmLangStateData", v23);
  if (v38)
  {
    v39 = a6->var0;
    v40 = *&a6->var12;
    v59 = *&a6->var10;
    v60 = v40;
    v61 = *&a6->var14;
    v41 = *&a6->var4;
    v55 = *&a6->var3[2];
    v56 = v41;
    v42 = *&a6->var8;
    v57 = *&a6->var6;
    v58 = v42;
    v43 = *a6->var2;
    v51 = *&a6->var0;
    v52 = v43;
    v44 = *a6->var3;
    v53 = *&a6->var2[2];
    v54 = v44;
    v45 = objc_msgSend__blob_size_(self, v36, &v51, v37);
    v46 = v38;
    v50 = objc_msgSend_bytes(v46, v47, v48, v49);
    if (v45)
    {
      memmove(v39, v50, 4 * v45);
    }
  }
}

- (id)computeCaptionForImageWithInputs:(id)a3 genderOption:(int)a4
{
  v184[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v147 = v5;
  if (self->meanFeaturesPresent)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, 0, v7);
    v9 = v8;
    v13 = objc_msgSend_bytes(v9, v10, v11, v12);
    v14 = *&self->meanFeatsPlaceholderBlob.stride_batch_number;
    v177 = *&self->meanFeatsPlaceholderBlob.stride_height;
    v178 = v14;
    v179 = *&self->meanFeatsPlaceholderBlob.storage_type;
    v15 = *&self->meanFeatsPlaceholderBlob.width;
    v173 = *&self->meanFeatsPlaceholderBlob.stride[2];
    v174 = v15;
    v16 = *&self->meanFeatsPlaceholderBlob.sequence_length;
    v175 = *&self->meanFeatsPlaceholderBlob.channels;
    v176 = v16;
    v17 = *self->meanFeatsPlaceholderBlob.dim;
    v169 = *&self->meanFeatsPlaceholderBlob.data;
    v170 = v17;
    v18 = *self->meanFeatsPlaceholderBlob.stride;
    v171 = *&self->meanFeatsPlaceholderBlob.dim[2];
    v172 = v18;
    objc_msgSend__copy_data_to_blob_to_(self, v19, v13, &v169);

    v5 = v147;
  }

  v145 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, 1, v7);
  v20 = v145;
  v24 = objc_msgSend_bytes(v145, v21, v22, v23);
  v25 = *&self->attFeatsPlaceholderBlob.stride_batch_number;
  v177 = *&self->attFeatsPlaceholderBlob.stride_height;
  v178 = v25;
  v179 = *&self->attFeatsPlaceholderBlob.storage_type;
  v26 = *&self->attFeatsPlaceholderBlob.width;
  v173 = *&self->attFeatsPlaceholderBlob.stride[2];
  v174 = v26;
  v27 = *&self->attFeatsPlaceholderBlob.sequence_length;
  v175 = *&self->attFeatsPlaceholderBlob.channels;
  v176 = v27;
  v28 = *self->attFeatsPlaceholderBlob.dim;
  v169 = *&self->attFeatsPlaceholderBlob.data;
  v170 = v28;
  v29 = *self->attFeatsPlaceholderBlob.stride;
  v171 = *&self->attFeatsPlaceholderBlob.dim[2];
  v172 = v29;
  objc_msgSend__copy_data_to_blob_to_(self, v30, v24, &v169);
  v146 = objc_msgSend_objectAtIndexedSubscript_(v147, v31, 2, v32);
  v33 = v146;
  v37 = objc_msgSend_bytes(v146, v34, v35, v36);
  v38 = *&self->pAttFeatsPlaceholderBlob.stride_batch_number;
  v177 = *&self->pAttFeatsPlaceholderBlob.stride_height;
  v178 = v38;
  v179 = *&self->pAttFeatsPlaceholderBlob.storage_type;
  v39 = *&self->pAttFeatsPlaceholderBlob.width;
  v173 = *&self->pAttFeatsPlaceholderBlob.stride[2];
  v174 = v39;
  v40 = *&self->pAttFeatsPlaceholderBlob.sequence_length;
  v175 = *&self->pAttFeatsPlaceholderBlob.channels;
  v176 = v40;
  v41 = *self->pAttFeatsPlaceholderBlob.dim;
  v169 = *&self->pAttFeatsPlaceholderBlob.data;
  v170 = v41;
  v42 = *self->pAttFeatsPlaceholderBlob.stride;
  v171 = *&self->pAttFeatsPlaceholderBlob.dim[2];
  v172 = v42;
  objc_msgSend__copy_data_to_blob_to_(self, v43, v37, &v169);
  v44 = *&self->lstmAttStateFeedBlob.stride_batch_number;
  v177 = *&self->lstmAttStateFeedBlob.stride_height;
  v178 = v44;
  v179 = *&self->lstmAttStateFeedBlob.storage_type;
  v45 = *&self->lstmAttStateFeedBlob.width;
  v173 = *&self->lstmAttStateFeedBlob.stride[2];
  v174 = v45;
  v46 = *&self->lstmAttStateFeedBlob.sequence_length;
  v175 = *&self->lstmAttStateFeedBlob.channels;
  v176 = v46;
  v47 = *self->lstmAttStateFeedBlob.dim;
  v169 = *&self->lstmAttStateFeedBlob.data;
  v170 = v47;
  v48 = *self->lstmAttStateFeedBlob.stride;
  v171 = *&self->lstmAttStateFeedBlob.dim[2];
  v172 = v48;
  objc_msgSend__fill_blob_data_with_(self, v49, &v169, v50, 0.0);
  v51 = *&self->lstmLangStateFeedBlob.stride_batch_number;
  v177 = *&self->lstmLangStateFeedBlob.stride_height;
  v178 = v51;
  v179 = *&self->lstmLangStateFeedBlob.storage_type;
  v52 = *&self->lstmLangStateFeedBlob.width;
  v173 = *&self->lstmLangStateFeedBlob.stride[2];
  v174 = v52;
  v53 = *&self->lstmLangStateFeedBlob.sequence_length;
  v175 = *&self->lstmLangStateFeedBlob.channels;
  v176 = v53;
  v54 = *self->lstmLangStateFeedBlob.dim;
  v169 = *&self->lstmLangStateFeedBlob.data;
  v170 = v54;
  v55 = *self->lstmLangStateFeedBlob.stride;
  v171 = *&self->lstmLangStateFeedBlob.dim[2];
  v172 = v55;
  objc_msgSend__fill_blob_data_with_(self, v56, &v169, v57, 0.0);
  v60 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v58, self->startID, v59);
  v62 = objc_msgSend_packBeamID_tokenID_lstmAttnState_lstmLangState_softmax_(self, v61, 0, v60, 0, 0, 0);
  v184[0] = v62;
  v150 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v63, v184, 1);

  v64 = 0;
  v65 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    theArray = objc_msgSend_array(MEMORY[0x1E695DF70], v66, v67, v68);
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    obj = v150;
    v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v69, &v165, v183, 16);
    if (v70)
    {
      v155 = *v166;
      do
      {
        v71 = 0;
        v72 = v64;
        v73 = v65;
        do
        {
          if (*v166 != v155)
          {
            objc_enumerationMutation(obj);
          }

          v74 = *(*(&v165 + 1) + 8 * v71);
          v75 = objc_autoreleasePoolPush();
          v163 = v72;
          v164 = v73;
          objc_msgSend_extractBeamID_tokenID_lstmAttnState_lstmLangState_fromFollowup_(self, v76, &v164, &v163, &self->lstmAttStateFeedBlob, &self->lstmLangStateFeedBlob, v74);
          v65 = v164;

          v64 = v163;
          v77 = *&self->inWordIDBlob.stride_batch_number;
          v177 = *&self->inWordIDBlob.stride_height;
          v178 = v77;
          v179 = *&self->inWordIDBlob.storage_type;
          v78 = *&self->inWordIDBlob.width;
          v173 = *&self->inWordIDBlob.stride[2];
          v174 = v78;
          v79 = *&self->inWordIDBlob.sequence_length;
          v175 = *&self->inWordIDBlob.channels;
          v176 = v79;
          v80 = *self->inWordIDBlob.dim;
          v169 = *&self->inWordIDBlob.data;
          v170 = v80;
          v81 = *self->inWordIDBlob.stride;
          v171 = *&self->inWordIDBlob.dim[2];
          v172 = v81;
          *&v85 = objc_msgSend_unsignedIntegerValue(v64, v82, v83, v84);
          objc_msgSend__fill_blob_data_with_(self, v86, &v169, v87, v85);
          decoderPlan = self->_decoderPlan;
          if (espresso_plan_execute_sync())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            v143 = self->_decoderPlan;
            espresso_plan_get_error_info();
            std::runtime_error::runtime_error(exception, v144);
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v90 = objc_msgSend_packBeamID_tokenID_lstmAttnState_lstmLangState_softmax_(self, v89, v65, v64, &self->newAttStateBlob, &self->newLangStateBlob, &self->langProbBlob);
          objc_msgSend_addObject_(theArray, v91, v90, v92);

          objc_autoreleasePoolPop(v75);
          ++v71;
          v72 = v64;
          v73 = v65;
        }

        while (v70 != v71);
        v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v93, &v165, v183, 16);
      }

      while (v70);
    }

    v150 = CVNLPBeamSearchOneStep(self->_beamSearch, theArray);
    objc_autoreleasePoolPop(context);
  }

  while (objc_msgSend_count(v150, v94, v95, v96));
  contexta = CVNLPBeamSearchCopyTopBeams(self->_beamSearch);
  v154 = objc_msgSend_array(MEMORY[0x1E695DF70], v97, v98, v99);
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  obja = contexta;
  v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v100, &v159, v182, 16);
  if (v101)
  {
    v153 = *v160;
    do
    {
      v156 = v101;
      for (i = 0; i != v156; ++i)
      {
        if (*v160 != v153)
        {
          objc_enumerationMutation(obja);
        }

        v106 = *(*(&v159 + 1) + 8 * i);
        v107 = objc_msgSend_array(MEMORY[0x1E695DF70], v102, v103, v104);
        v110 = objc_msgSend_objectForKeyedSubscript_(v106, v108, CVNLPBeamTokens, v109);
        theArraya = objc_msgSend_objectForKeyedSubscript_(v106, v111, CVNLPBeamScore, v112);
        if (objc_msgSend_count(v110, v113, v114, v115))
        {
          v119 = objc_msgSend_lastObject(v110, v116, v117, v118);
          v123 = objc_msgSend_unsignedIntegerValue(v119, v120, v121, v122) == self->endID;

          if (v123)
          {
            for (j = 0; j < objc_msgSend_count(v110, v116, v124, v118) - 1; ++j)
            {
              v126 = objc_msgSend_objectAtIndexedSubscript_(v110, v116, j, v118);
              v129 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v127, @"%@", v128, v126);
              v132 = objc_msgSend_objectForKeyedSubscript_(self->vocab, v130, v129, v131);
              objc_msgSend_addObject_(v107, v133, v132, v134);
            }
          }
        }

        v180[0] = CVNLPGeneratedCaption;
        v135 = objc_msgSend_componentsJoinedByString_(v107, v116, @" ", v118);
        v180[1] = CVNLPGeneratedCaptionScore;
        v181[0] = v135;
        v181[1] = theArraya;
        v137 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v136, v181, v180, 2);

        objc_msgSend_addObject_(v154, v138, v137, v139);
      }

      v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v102, &v159, v182, 16);
    }

    while (v101);
  }

  sub_1D9D9AA4C(self->_beamSearch + 2);
  v140 = *MEMORY[0x1E69E9840];

  return v154;
}

@end