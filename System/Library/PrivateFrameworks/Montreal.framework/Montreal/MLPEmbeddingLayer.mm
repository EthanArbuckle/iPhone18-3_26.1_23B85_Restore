@interface MLPEmbeddingLayer
- (MLPEmbeddingLayer)initWithName:(id)name inputLength:(unint64_t)length vocabSize:(unint64_t)size embeddingDimension:(unint64_t)dimension;
- (MLPEmbeddingLayer)initWithName:(id)name parameters:(id *)parameters;
- (NSArray)mlpOptimizers;
- (id).cxx_construct;
- (id)forward:(id)forward input:(id)input labels:(id)labels runInference:(BOOL)inference;
- (id)generateNode:(id)node model:(id)model weightIter:(unint64_t *)iter;
- (id)seqBackward:(id)backward dataBatch:(id)batch inputGradient:(id)gradient;
- (id)seqForward:(id)forward input:(id)input dataBatch:(id)batch runInference:(BOOL)inference;
- (void)createKernel;
- (void)seqBackward:(id)backward inputGradientMatrix:(id)matrix matrixIter:(unint64_t)iter;
@end

@implementation MLPEmbeddingLayer

- (MLPEmbeddingLayer)initWithName:(id)name parameters:(id *)parameters
{
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = MLPEmbeddingLayer;
  v7 = [(MLPLayer *)&v24 initWithLayerType:7 name:nameCopy parameters:parameters];
  v10 = v7;
  if (v7)
  {
    objc_msgSend_setInputLength_(v7, v8, parameters->var9[0][0], v9);
    objc_msgSend_setInputChannels_(v10, v11, 1, v12);
    objc_msgSend_setOutputLength_(v10, v13, parameters->var9[0][0], v14);
    objc_msgSend_setOutputChannels_(v10, v15, parameters->var10[0][0] / parameters->var9[0][0], v16);
    objc_msgSend_setVocabSize_(v10, v17, parameters->var11[0], v18);
    objc_msgSend_setEmbeddingDimension_(v10, v19, parameters->var10[0][0] / parameters->var9[0][0], v20);
    objc_msgSend_setInitialWeights_(v10, v21, parameters->var13[0], v22);
  }

  return v10;
}

- (MLPEmbeddingLayer)initWithName:(id)name inputLength:(unint64_t)length vocabSize:(unint64_t)size embeddingDimension:(unint64_t)dimension
{
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = MLPEmbeddingLayer;
  v11 = [(MLPLayer *)&v26 initWithLayerType:7 name:nameCopy neuronType:0 neuronParams:0];
  v14 = v11;
  if (v11)
  {
    objc_msgSend_setInputLength_(v11, v12, length, v13);
    objc_msgSend_setInputChannels_(v14, v15, 1, v16);
    objc_msgSend_setOutputLength_(v14, v17, length, v18);
    objc_msgSend_setOutputChannels_(v14, v19, dimension, v20);
    objc_msgSend_setVocabSize_(v14, v21, size, v22);
    objc_msgSend_setEmbeddingDimension_(v14, v23, dimension, v24);
  }

  return v14;
}

- (NSArray)mlpOptimizers
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_optimizer(self, a2, v2, v3);
  v8[0] = v4;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, v8, 1);

  return v6;
}

- (void)createKernel
{
  v5 = objc_msgSend_network(self, a2, v2, v3);
  v9 = objc_msgSend_deviceHandler(v5, v6, v7, v8);
  v13 = objc_msgSend_device(v9, v10, v11, v12);

  v14 = objc_alloc(MEMORY[0x1E69749E8]);
  v17 = objc_msgSend_initWithDevice_(v14, v15, v13, v16);
  objc_msgSend_setForwardKernel_(self, v18, v17, v19);

  v23 = objc_msgSend_network(self, v20, v21, v22);
  v27 = objc_msgSend_deviceHandler(v23, v24, v25, v26);
  v31 = objc_msgSend_vocabSize(self, v28, v29, v30);
  v35 = objc_msgSend_embeddingDimension(self, v32, v33, v34);
  v39 = objc_msgSend_initialWeights(self, v36, v37, v38);
  LODWORD(v40) = 1017370378;
  v42 = objc_msgSend_weightMatrixWithRows_columns_stdDev_initialValues_columnMajor_(v27, v41, v31, v35, v39, 0, v40);
  objc_msgSend_setWeights_(self, v43, v42, v44);

  v48 = objc_msgSend_network(self, v45, v46, v47);
  v52 = objc_msgSend_deviceHandler(v48, v49, v50, v51);
  v56 = objc_msgSend_vocabSize(self, v53, v54, v55);
  v60 = objc_msgSend_embeddingDimension(self, v57, v58, v59);
  v62 = objc_msgSend_weightMatrixWithRows_columns_stdDev_initialValues_columnMajor_(v52, v61, v56, v60, 0, 0, 0.0);
  objc_msgSend_setWeightGradients_(self, v63, v62, v64);

  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = sub_19D392A38;
  v112[3] = &unk_1E7626AE8;
  v112[4] = self;
  v65 = MEMORY[0x19EAFAD10](v112);
  v69 = objc_msgSend_network(self, v66, v67, v68);
  v71 = objc_msgSend_optimizerWithNetwork_momentum_velocity_(MLPOptimizer, v70, v69, v65, v65);
  objc_msgSend_setOptimizer_(self, v72, v71, v73);

  v74 = objc_alloc(MEMORY[0x1E69749F8]);
  v77 = objc_msgSend_initWithDevice_(v74, v75, v13, v76);
  objc_msgSend_setZeroFilter_(self, v78, v77, v79);

  v83 = objc_msgSend_zeroFilter(self, v80, v81, v82);
  objc_msgSend_setNeuronType_parameterA_parameterB_parameterC_(v83, v84, 2, v85, 0.0, 0.0, 0.0);

  v86 = objc_alloc(MEMORY[0x1E6974658]);
  v90 = objc_msgSend_weights(self, v87, v88, v89);
  v94 = objc_msgSend_columns(v90, v91, v92, v93);
  v96 = objc_msgSend_initWithDevice_copyRows_copyColumns_sourcesAreTransposed_destinationsAreTransposed_(v86, v95, v13, 1, v94, 0, 0);
  objc_msgSend_setMatrixCopyFilter_(self, v97, v96, v98);

  v99 = objc_alloc(MEMORY[0x1E6974A08]);
  v103 = objc_msgSend_weights(self, v100, v101, v102);
  v107 = objc_msgSend_columns(v103, v104, v105, v106);
  v109 = objc_msgSend_initWithDevice_count_rows_columns_transpose_(v99, v108, v13, 2, 1, v107, 0);
  objc_msgSend_setSumFilter_(self, v110, v109, v111);
}

- (id)forward:(id)forward input:(id)input labels:(id)labels runInference:(BOOL)inference
{
  v145 = *MEMORY[0x1E69E9840];
  forwardCopy = forward;
  inputCopy = input;
  labelsCopy = labels;
  v12 = objc_msgSend_network(self, v9, v10, v11);
  v16 = objc_msgSend_deviceHandler(v12, v13, v14, v15);
  v135 = objc_msgSend_device(v16, v17, v18, v19);

  v23 = objc_msgSend_matrixCopy(self, v20, v21, v22);

  if (!v23)
  {
    v27 = objc_alloc(MEMORY[0x1E6974658]);
    v31 = objc_msgSend_embeddingDimension(self, v28, v29, v30);
    v33 = objc_msgSend_initWithDevice_copyRows_copyColumns_sourcesAreTransposed_destinationsAreTransposed_(v27, v32, v135, 1, v31, 0, 1);
    objc_msgSend_setMatrixCopy_(self, v34, v33, v35);
  }

  v36 = MEMORY[0x1E695DF70];
  v37 = objc_msgSend_count(inputCopy, v24, v25, v26);
  v134 = objc_msgSend_arrayWithCapacity_(v36, v38, v37, v39);
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = inputCopy;
  v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v140, v144, 16);
  if (v136)
  {
    v133 = *v141;
    do
    {
      for (i = 0; i != v136; ++i)
      {
        if (*v141 != v133)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v140 + 1) + 8 * i);
        v45 = objc_msgSend_width(v44, v41, v42, v43);
        v49 = objc_msgSend_height(v44, v46, v47, v48);
        v53 = objc_msgSend_featureChannels(v44, v50, v51, v52);
        v54 = objc_alloc(MEMORY[0x1E6974660]);
        v55 = v49 * v45 * v53;
        v60 = objc_msgSend_initWithDevice_count_(v54, v56, v135, v55);
        if (v55)
        {
          if (!(v55 >> 62))
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v61 = objc_msgSend_network(self, v57, v58, v59);
        v65 = objc_msgSend_deviceHandler(v61, v62, v63, v64);
        v69 = objc_msgSend_dataLayout(v65, v66, v67, v68);
        objc_msgSend_readBytes_dataLayout_imageIndex_(v44, v70, 0, v69, 0);

        v74 = objc_msgSend_network(self, v71, v72, v73);
        v78 = objc_msgSend_deviceHandler(v74, v75, v76, v77);
        v82 = objc_msgSend_embeddingDimension(self, v79, v80, v81);
        v84 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v78, v83, v82, 0, forwardCopy);

        v88 = objc_msgSend_matrixCopy(self, v85, v86, v87);
        objc_msgSend_encodeToCommandBuffer_copyDescriptor_(v88, v89, forwardCopy, v60);

        v90 = MEMORY[0x1E6974480];
        objc_msgSend_embeddingDimension(self, v91, v92, v93);
        objc_msgSend_embeddingDimension(self, v94, v95, v96);
        v137 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v90, v97, 1, 0, 0, 268435488);
        v98 = objc_alloc(MEMORY[0x1E6974478]);
        v102 = objc_msgSend_data(v84, v99, v100, v101);
        v104 = objc_msgSend_initWithBuffer_descriptor_(v98, v103, v102, v137);

        v108 = objc_msgSend_network(self, v105, v106, v107);
        v112 = objc_msgSend_deviceHandler(v108, v109, v110, v111);
        v116 = objc_msgSend_network(self, v113, v114, v115);
        v120 = objc_msgSend_m2iKernel(v116, v117, v118, v119);
        v124 = objc_msgSend_embeddingDimension(self, v121, v122, v123);
        v126 = objc_msgSend_imageFromMatrix_m2iKernel_cmdBuf_width_height_featureChannels_(v112, v125, v104, v120, forwardCopy, 0, 1, v124);

        objc_msgSend_addObject_(v134, v127, v126, v128);
      }

      v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v140, v144, 16);
    }

    while (v136);
  }

  return v134;
}

- (id)seqForward:(id)forward input:(id)input dataBatch:(id)batch runInference:(BOOL)inference
{
  forwardCopy = forward;
  inputCopy = input;
  batchCopy = batch;
  selfCopy = self;
  v12 = objc_msgSend_network(self, v9, v10, v11);
  v16 = objc_msgSend_deviceHandler(v12, v13, v14, v15);
  v99 = objc_msgSend_device(v16, v17, v18, v19);

  v23 = objc_msgSend_matrixCopy(selfCopy, v20, v21, v22);

  if (!v23)
  {
    v27 = objc_alloc(MEMORY[0x1E6974658]);
    v31 = objc_msgSend_embeddingDimension(selfCopy, v28, v29, v30);
    v33 = objc_msgSend_initWithDevice_copyRows_copyColumns_sourcesAreTransposed_destinationsAreTransposed_(v27, v32, v99, 1, v31, 0, 0);
    objc_msgSend_setMatrixCopy_(selfCopy, v34, v33, v35);
  }

  v36 = MEMORY[0x1E695DF70];
  v37 = objc_msgSend_count(inputCopy, v24, v25, v26);
  v98 = objc_msgSend_arrayWithCapacity_(v36, v38, v37, v39);
  p_wordIDRepetitions = &selfCopy->wordIDRepetitions;
  begin = selfCopy->wordIDRepetitions.__begin_;
  end = selfCopy->wordIDRepetitions.__end_;
  if (end != begin)
  {
    do
    {
      v46 = end - 24;
      sub_19D394DE8((end - 24), *(end - 2));
      end = v46;
    }

    while (v46 != begin);
  }

  selfCopy->wordIDRepetitions.__end_ = begin;
  v47 = objc_msgSend_count(inputCopy, v40, v41, v42);
  v50 = selfCopy->wordIDRepetitions.__end_;
  v51 = 0xAAAAAAAAAAAAAAABLL * (&v50[-*p_wordIDRepetitions] >> 3);
  v52 = (v47 - v51);
  if (v47 <= v51)
  {
    if (v47 < v51)
    {
      v53 = *p_wordIDRepetitions + 24 * v47;
      if (v50 != v53)
      {
        do
        {
          v54 = v50 - 24;
          sub_19D394DE8((v50 - 24), *(v50 - 2));
          v50 = v54;
        }

        while (v54 != v53);
      }

      selfCopy->wordIDRepetitions.__end_ = v53;
    }
  }

  else
  {
    sub_19D394E4C(p_wordIDRepetitions, v52);
  }

  for (i = 0; i < objc_msgSend_count(inputCopy, v52, v48, v49); ++i)
  {
    v102 = objc_msgSend_objectAtIndexedSubscript_(inputCopy, v56, i, v57);
    v61 = objc_msgSend_rows(v102, v58, v59, v60);
    v62 = objc_alloc(MEMORY[0x1E6974660]);
    v104 = objc_msgSend_initWithDevice_count_(v62, v63, v99, v61);
    v67 = objc_msgSend_data(v102, v64, v65, v66);
    v68 = v67;
    objc_msgSend_contents(v68, v69, v70, v71);

    v75 = objc_msgSend_rows(v102, v72, v73, v74);
    if (v75)
    {
      if ((v75 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v79 = objc_msgSend_network(selfCopy, v76, v77, v78);
    v83 = objc_msgSend_deviceHandler(v79, v80, v81, v82);
    v87 = objc_msgSend_embeddingDimension(selfCopy, v84, v85, v86);
    v103 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v83, v88, v61, v87, forwardCopy);

    v92 = objc_msgSend_matrixCopy(selfCopy, v89, v90, v91);
    objc_msgSend_encodeToCommandBuffer_copyDescriptor_(v92, v93, forwardCopy, v104);

    objc_msgSend_addObject_(v98, v94, v103, v95);
  }

  return v98;
}

- (id)seqBackward:(id)backward dataBatch:(id)batch inputGradient:(id)gradient
{
  backwardCopy = backward;
  batchCopy = batch;
  gradientCopy = gradient;
  for (i = 0; i < objc_msgSend_count(gradientCopy, v10, v11, v12); ++i)
  {
    v17 = objc_msgSend_objectAtIndexedSubscript_(gradientCopy, v15, i, v16);
    objc_msgSend_seqBackward_inputGradientMatrix_matrixIter_(self, v18, backwardCopy, v17, i);
  }

  return 0;
}

- (void)seqBackward:(id)backward inputGradientMatrix:(id)matrix matrixIter:(unint64_t)iter
{
  v189[2] = *MEMORY[0x1E69E9840];
  backwardCopy = backward;
  matrixCopy = matrix;
  selfCopy = self;
  v184 = matrixCopy;
  begin = self->wordIDRepetitions.__begin_;
  v14 = objc_msgSend_network(selfCopy, v11, v12, v13);
  v18 = objc_msgSend_deviceHandler(v14, v15, v16, v17);
  v180 = objc_msgSend_device(v18, v19, v20, v21);

  v25 = objc_msgSend_zeroFilter(selfCopy, v22, v23, v24);
  v29 = objc_msgSend_weights(selfCopy, v26, v27, v28);
  v33 = objc_msgSend_weightGradients(selfCopy, v30, v31, v32);
  objc_msgSend_encodeToCommandBuffer_inputMatrix_biasVector_resultMatrix_(v25, v34, backwardCopy, v29, 0, v33);
  v35 = &begin[24 * iter];

  v185 = v35;
  v41 = *v35;
  v40 = v35 + 8;
  v39 = v41;
  if (v41 != v40)
  {
    v42 = 0;
    v43 = 0;
    do
    {
      if (v39[6] - v39[5] == 4)
      {
        ++v42;
      }

      else
      {
        ++v43;
      }

      v44 = v39[1];
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = v39[2];
          v115 = *v45 == v39;
          v39 = v45;
        }

        while (!v115);
      }

      v39 = v45;
    }

    while (v45 != v40);
    v187 = selfCopy;
    if (v42)
    {
      v46 = objc_alloc(MEMORY[0x1E6974660]);
      v51 = objc_msgSend_initWithDevice_count_(v46, v47, v180, v42);
      v52 = *v185;
      if (*v185 != v40)
      {
        v53 = 0;
        do
        {
          v54 = v52[6];
          if (v54 - v52[5] == 4)
          {
            v55 = *(v52 + 8);
            v56 = *(v54 - 4);
            objc_msgSend_incrementReadCount(v184, v48, v49, v50);
            v57 = v184;
            v61 = objc_msgSend_weightGradients(v187, v58, v59, v60);
            objc_msgSend_setCopyOperationAtIndex_sourceMatrix_destinationMatrix_offsets_(v51, v62, v53++, v57, v61, v56, v55);
          }

          v63 = v52[1];
          if (v63)
          {
            do
            {
              v64 = v63;
              v63 = *v63;
            }

            while (v63);
          }

          else
          {
            do
            {
              v64 = v52[2];
              v115 = *v64 == v52;
              v52 = v64;
            }

            while (!v115);
          }

          v52 = v64;
        }

        while (v64 != v40);
      }

      selfCopy = v187;
      v65 = objc_msgSend_matrixCopyFilter(v187, v48, v49, v50);
      objc_msgSend_encodeToCommandBuffer_copyDescriptor_(v65, v66, backwardCopy, v51);
    }

    if (v43)
    {
      v67 = MEMORY[0x1E69744B8];
      v68 = objc_msgSend_rows(v184, v36, v37, v38);
      v178 = objc_msgSend_vectorDescriptorWithLength_dataType_(v67, v69, 4 * v68, 32);
      v70 = objc_alloc(MEMORY[0x1E69744B0]);
      v72 = objc_msgSend_initWithDevice_descriptor_(v70, v71, v180, v178);
      objc_msgSend_setOffsetVector_(selfCopy, v73, v72, v74);

      v78 = objc_msgSend_offsetVector(selfCopy, v75, v76, v77);
      v82 = objc_msgSend_data(v78, v79, v80, v81);
      v83 = v82;
      v87 = objc_msgSend_contents(v83, v84, v85, v86);

      v91 = objc_msgSend_offsetVector(selfCopy, v88, v89, v90);
      v95 = objc_msgSend_data(v91, v92, v93, v94);
      v99 = objc_msgSend_length(v95, v96, v97, v98);
      bzero(v87, v99);

      v100 = objc_alloc(MEMORY[0x1E6974A08]);
      v104 = objc_msgSend_columns(v184, v101, v102, v103);
      v106 = objc_msgSend_initWithDevice_count_rows_columns_transpose_(v100, v105, v180, 2, 1, v104, 0);
      objc_msgSend_setSumFilter_(selfCopy, v107, v106, v108);

      v112 = *v185;
      if (*v185 != v40)
      {
        v186 = 0;
        v179 = v87 + 8;
        v181 = v40;
        do
        {
          v114 = v112[5];
          v113 = v112[6];
          v115 = (v113 - v114) < 5 || v114 == v113;
          if (!v115)
          {
            v182 = v112[6];
            v116 = 2 * v186;
            v117 = &v179[16 * v186];
            do
            {
              *(v117 - 2) = *v114;
              v118 = *(v112 + 8);
              *v117 = v118;
              v119 = objc_msgSend_network(v187, v109, v110, v111);
              v123 = objc_msgSend_deviceHandler(v119, v120, v121, v122);
              v127 = objc_msgSend_offsetVector(v187, v124, v125, v126);
              v131 = objc_msgSend_data(v127, v128, v129, v130);
              objc_msgSend_sendDataToGPU_(v123, v132, v131, v133);

              v137 = objc_msgSend_sumFilter(v187, v134, v135, v136);
              v188[0] = v118;
              v188[1] = 0;
              v188[2] = 0;
              objc_msgSend_setResultMatrixOrigin_(v137, v138, v188, v139);

              v143 = objc_msgSend_sumFilter(v187, v140, v141, v142);
              objc_msgSend_incrementReadCount(v184, v144, v145, v146);
              v147 = v184;
              v189[0] = v147;
              v151 = objc_msgSend_weightGradients(v187, v148, v149, v150);
              v189[1] = v151;
              v153 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v152, v189, 2);
              v157 = objc_msgSend_weightGradients(v187, v154, v155, v156);
              v161 = objc_msgSend_offsetVector(v187, v158, v159, v160);
              objc_msgSend_encodeToCommandBuffer_sourceMatrices_resultMatrix_scaleVector_offsetVector_biasVector_startIndex_(v143, v162, backwardCopy, v153, v157, 0, v161, 0, v116);

              ++v186;
              v114 += 4;
              v117 += 16;
              v116 += 2;
            }

            while (v114 != v182);
          }

          v163 = v112[1];
          if (v163)
          {
            do
            {
              v164 = v163;
              v163 = *v163;
            }

            while (v163);
          }

          else
          {
            do
            {
              v164 = v112[2];
              v115 = *v164 == v112;
              v112 = v164;
            }

            while (!v115);
          }

          v112 = v164;
        }

        while (v164 != v181);
      }

      selfCopy = v187;
    }
  }

  v165 = objc_msgSend_optimizer(selfCopy, v36, v37, v38);
  v169 = objc_msgSend_weightGradients(selfCopy, v166, v167, v168);
  v173 = objc_msgSend_weights(selfCopy, v170, v171, v172);
  objc_msgSend_encodeToCommandBuffer_inputGradientMatrix_inputValuesMatrix_(v165, v174, backwardCopy, v169, v173);

  objc_msgSend_resetReadCount(v184, v175, v176, v177);
}

- (id)generateNode:(id)node model:(id)model weightIter:(unint64_t *)iter
{
  v162[1] = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  modelCopy = model;
  bzero(v154, 0x2C0uLL);
  v154[4] = 0;
  v154[5] = 0;
  v154[0] = 23;
  v11 = objc_msgSend_weights(self, v8, v9, v10);
  v15 = objc_msgSend_rows(v11, v12, v13, v14);
  v19 = objc_msgSend_weights(self, v16, v17, v18);
  v23 = objc_msgSend_columns(v19, v20, v21, v22);
  v24 = sub_19D4363B8(v23 * v15);

  v155 = objc_msgSend_inputLength(self, v25, v26, v27);
  LODWORD(v11) = objc_msgSend_outputLength(self, v28, v29, v30);
  v156 = objc_msgSend_embeddingDimension(self, v31, v32, v33) * v11;
  v37 = objc_msgSend_weights(self, v34, v35, v36);
  v41 = objc_msgSend_rows(v37, v38, v39, v40);

  v45 = objc_msgSend_weights(self, v42, v43, v44);
  v49 = objc_msgSend_columns(v45, v46, v47, v48);

  v53 = objc_msgSend_weights(self, v50, v51, v52);
  v57 = objc_msgSend_rowBytes(v53, v54, v55, v56);

  v61 = objc_msgSend_network(self, v58, v59, v60);
  v65 = objc_msgSend_deviceHandler(v61, v62, v63, v64);
  v149 = objc_msgSend_device(v65, v66, v67, v68);

  v72 = objc_msgSend_network(self, v69, v70, v71);
  v76 = objc_msgSend_deviceHandler(v72, v73, v74, v75);
  iterCopy = iter;
  v80 = objc_msgSend_commandQueue(v76, v77, v78, v79);

  v150 = v80;
  v84 = objc_msgSend_commandBuffer(v80, v81, v82, v83);
  v88 = objc_msgSend_network(self, v85, v86, v87);
  v92 = objc_msgSend_deviceHandler(v88, v89, v90, v91);
  v96 = objc_msgSend_weights(self, v93, v94, v95);
  v100 = objc_msgSend_data(v96, v97, v98, v99);
  objc_msgSend_importDataFromGPU_cmdBuf_(v92, v101, v100, v84);

  v153[0] = MEMORY[0x1E69E9820];
  v153[1] = 3221225472;
  v153[2] = sub_19D39486C;
  v153[3] = &unk_1E7626B10;
  v153[4] = self;
  v153[5] = v41;
  v153[6] = v49;
  v153[7] = v24;
  v153[8] = v57;
  objc_msgSend_addCompletedHandler_(v84, v102, v153, v103);
  objc_msgSend_commit(v84, v104, v105, v106);
  objc_msgSend_waitUntilCompleted(v84, v107, v108, v109);
  v158 = v24;
  v157 = objc_msgSend_vocabSize(self, v110, v111, v112);
  v161[0] = &unk_1F10C4FC8;
  v161[1] = &unk_1F10C4FC8;
  v113 = MEMORY[0x1E696AD98];
  v117 = objc_msgSend_inputLength(self, v114, v115, v116);
  v120 = objc_msgSend_numberWithUnsignedInteger_(v113, v118, v117, v119);
  v161[2] = v120;
  v122 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v121, v161, 3);
  v162[0] = v122;
  v124 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v123, v162, 1);

  v159[0] = &unk_1F10C4FC8;
  v125 = MEMORY[0x1E696AD98];
  v129 = objc_msgSend_outputLength(self, v126, v127, v128);
  v132 = objc_msgSend_numberWithUnsignedInteger_(v125, v130, v129, v131);
  v159[1] = v132;
  v133 = MEMORY[0x1E696AD98];
  v137 = objc_msgSend_embeddingDimension(self, v134, v135, v136);
  v140 = objc_msgSend_numberWithUnsignedInteger_(v133, v138, v137, v139);
  v159[2] = v140;
  v142 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v141, v159, 3);
  v160 = v142;
  v144 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v143, &v160, 1);

  v146 = objc_msgSend_generateNode_model_weightIter_params_inputChunks_outputChunks_(self, v145, nodeCopy, modelCopy, iterCopy, v154, v124, v144);

  return v146;
}

- (id).cxx_construct
{
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 17) = 0;
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 20) = 0;
  return self;
}

@end