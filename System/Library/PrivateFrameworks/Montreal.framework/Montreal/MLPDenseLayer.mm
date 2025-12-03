@interface MLPDenseLayer
- (MLPDenseLayer)initWithName:(id)name numInputs:(unint64_t)inputs numOutputs:(unint64_t)outputs neuronType:(int)type neuronParams:(id)params;
- (MLPDenseLayer)initWithName:(id)name parameters:(id *)parameters;
- (MLPDenseLayer)initWithName:(id)name previousLayer:(id)layer numOutputs:(unint64_t)outputs neuronType:(int)type neuronParams:(id)params;
- (NSArray)mlpOptimizers;
- (id)backward:(id)backward index:(id)index inputGradientMatrix:(id)matrix;
- (id)backward:(id)backward inputGradient:(id)gradient;
- (id)forward:(id)forward input:(id)input labels:(id)labels runInference:(BOOL)inference;
- (id)forward:(id)forward inputMatrix:(id)matrix index:(id)index runInference:(BOOL)inference;
- (id)generateNode:(id)node model:(id)model weightIter:(unint64_t *)iter;
- (id)seqBackward:(id)backward dataBatch:(id)batch inputGradient:(id)gradient;
- (id)seqForward:(id)forward input:(id)input dataBatch:(id)batch runInference:(BOOL)inference;
- (void)createKernel;
@end

@implementation MLPDenseLayer

- (MLPDenseLayer)initWithName:(id)name previousLayer:(id)layer numOutputs:(unint64_t)outputs neuronType:(int)type neuronParams:(id)params
{
  v8 = *&type;
  nameCopy = name;
  layerCopy = layer;
  paramsCopy = params;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = layerCopy;
    v19 = objc_msgSend_outputChannels(v15, v16, v17, v18);
    v23 = objc_msgSend_outputLength(v15, v20, v21, v22) * v19;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v25, *MEMORY[0x1E695D930], @"Could not extract info from previous layer", 0);
      objc_exception_throw(v30);
    }

    v23 = objc_msgSend_numOutputs(layerCopy, v25, v26, v27);
  }

  v28 = objc_msgSend_initWithName_numInputs_numOutputs_neuronType_neuronParams_(self, v24, nameCopy, v23, outputs, v8, paramsCopy);

  return v28;
}

- (MLPDenseLayer)initWithName:(id)name numInputs:(unint64_t)inputs numOutputs:(unint64_t)outputs neuronType:(int)type neuronParams:(id)params
{
  v8 = *&type;
  nameCopy = name;
  paramsCopy = params;
  v29.receiver = self;
  v29.super_class = MLPDenseLayer;
  v14 = [(MLPMatrixLayer *)&v29 initWithLayerType:6 name:nameCopy neuronType:v8 neuronParams:paramsCopy];
  v17 = v14;
  if (v14)
  {
    objc_msgSend_setNumInputs_(v14, v15, inputs, v16);
    objc_msgSend_setNumOutputs_(v17, v18, outputs, v19);
    objc_msgSend_setInputLength_(v17, v20, 1, v21);
    objc_msgSend_setInputChannels_(v17, v22, inputs, v23);
    objc_msgSend_setOutputLength_(v17, v24, 1, v25);
    objc_msgSend_setOutputChannels_(v17, v26, outputs, v27);
  }

  return v17;
}

- (MLPDenseLayer)initWithName:(id)name parameters:(id *)parameters
{
  nameCopy = name;
  v34.receiver = self;
  v34.super_class = MLPDenseLayer;
  v7 = [(MLPMatrixLayer *)&v34 initWithLayerType:6 name:nameCopy parameters:parameters];
  v10 = v7;
  if (v7)
  {
    objc_msgSend_setNumInputs_(v7, v8, parameters->var9[0][0], v9);
    objc_msgSend_setNumOutputs_(v10, v11, parameters->var10[0][0], v12);
    objc_msgSend_setInputLength_(v10, v13, 1, v14);
    v18 = objc_msgSend_numInputs(v10, v15, v16, v17);
    objc_msgSend_setInputChannels_(v10, v19, v18, v20);
    objc_msgSend_setOutputLength_(v10, v21, 1, v22);
    v26 = objc_msgSend_numOutputs(v10, v23, v24, v25);
    objc_msgSend_setOutputChannels_(v10, v27, v26, v28);
    objc_msgSend_setInitialWeights_(v10, v29, parameters->var13[0], v30);
    objc_msgSend_setInitialBias_(v10, v31, parameters->var14[0], v32);
  }

  return v10;
}

- (NSArray)mlpOptimizers
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_optimizerWeights(self, a2, v2, v3);
  v13[0] = v5;
  v9 = objc_msgSend_optimizerBiases(self, v6, v7, v8);
  v13[1] = v9;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v13, 2);

  return v11;
}

- (void)createKernel
{
  v5 = objc_msgSend_network(self, a2, v2, v3);
  v9 = objc_msgSend_deviceHandler(v5, v6, v7, v8);
  v13 = objc_msgSend_device(v9, v10, v11, v12);

  v14 = objc_alloc(MEMORY[0x1E69749E8]);
  v17 = objc_msgSend_initWithDevice_(v14, v15, v13, v16);
  objc_msgSend_setForwardKernel_(self, v18, v17, v19);

  v20 = objc_alloc(MEMORY[0x1E69749F0]);
  v23 = objc_msgSend_initWithDevice_(v20, v21, v13, v22);
  objc_msgSend_setPrimaryGradientKernel_(self, v24, v23, v25);

  v29 = objc_msgSend_network(self, v26, v27, v28);
  v33 = objc_msgSend_deviceHandler(v29, v30, v31, v32);
  v37 = objc_msgSend_numInputs(self, v34, v35, v36);
  v41 = objc_msgSend_numOutputs(self, v38, v39, v40);
  v45 = objc_msgSend_initialWeights(self, v42, v43, v44);
  LODWORD(v46) = 1017370378;
  v48 = objc_msgSend_weightMatrixWithRows_columns_stdDev_initialValues_columnMajor_(v33, v47, v37, v41, v45, 1, v46);
  objc_msgSend_setWeights_(self, v49, v48, v50);

  v54 = objc_msgSend_network(self, v51, v52, v53);
  v58 = objc_msgSend_deviceHandler(v54, v55, v56, v57);
  v62 = objc_msgSend_numOutputs(self, v59, v60, v61);
  v66 = objc_msgSend_initialBias(self, v63, v64, v65);
  v68 = objc_msgSend_biasVectorWithLength_stdDev_values_(v58, v67, v62, v66, 0.0);
  objc_msgSend_setBiasVector_(self, v69, v68, v70);

  v151[0] = MEMORY[0x1E69E9820];
  v151[1] = 3221225472;
  v151[2] = sub_19D452064;
  v151[3] = &unk_1E7626AE8;
  v151[4] = self;
  v71 = MEMORY[0x19EAFAD10](v151);
  v75 = objc_msgSend_network(self, v72, v73, v74);
  v77 = objc_msgSend_optimizerWithNetwork_momentum_velocity_(MLPOptimizer, v76, v75, v71, v71);
  objc_msgSend_setOptimizerWeights_(self, v78, v77, v79);

  v150[0] = MEMORY[0x1E69E9820];
  v150[1] = 3221225472;
  v150[2] = sub_19D452184;
  v150[3] = &unk_1E7626AE8;
  v150[4] = self;
  v80 = MEMORY[0x19EAFAD10](v150);
  v84 = objc_msgSend_network(self, v81, v82, v83);
  v86 = objc_msgSend_optimizerWithNetwork_momentum_velocity_(MLPOptimizer, v85, v84, v80, v80);
  objc_msgSend_setOptimizerBiases_(self, v87, v86, v88);

  if (objc_msgSend_neuronType(self, v89, v90, v91))
  {
    v92 = objc_alloc(MEMORY[0x1E69749F8]);
    v95 = objc_msgSend_initWithDevice_(v92, v93, v13, v94);
    objc_msgSend_setSecondaryForwardKernel_(self, v96, v95, v97);
    v101 = objc_msgSend_neuronType(self, v98, v99, v100);
    objc_msgSend_neuronA(self, v102, v103, v104);
    v106 = v105;
    objc_msgSend_neuronB(self, v107, v108, v109);
    v111 = v110;
    objc_msgSend_neuronC(self, v112, v113, v114);
    LODWORD(v116) = v115;
    LODWORD(v117) = v106;
    LODWORD(v118) = v111;
    objc_msgSend_setNeuronType_parameterA_parameterB_parameterC_(v95, v119, v101, v120, v117, v118, v116);
    v121 = objc_alloc(MEMORY[0x1E6974A00]);
    v124 = objc_msgSend_initWithDevice_(v121, v122, v13, v123);
    objc_msgSend_setSecondaryGradientKernel_(self, v125, v124, v126);
    v130 = objc_msgSend_neuronType(self, v127, v128, v129);
    objc_msgSend_neuronA(self, v131, v132, v133);
    v135 = v134;
    objc_msgSend_neuronB(self, v136, v137, v138);
    v140 = v139;
    objc_msgSend_neuronC(self, v141, v142, v143);
    LODWORD(v145) = v144;
    LODWORD(v146) = v135;
    LODWORD(v147) = v140;
    objc_msgSend_setNeuronType_parameterA_parameterB_parameterC_(v124, v148, v130, v149, v146, v147, v145);
  }
}

- (id)forward:(id)forward inputMatrix:(id)matrix index:(id)index runInference:(BOOL)inference
{
  inferenceCopy = inference;
  forwardCopy = forward;
  matrixCopy = matrix;
  indexCopy = index;
  v16 = objc_msgSend_forwardKernel(self, v13, v14, v15);
  objc_msgSend_updateInputMatrixToFirstKernel_index_inference_(self, v17, matrixCopy, indexCopy, inferenceCopy);
  v21 = objc_msgSend_network(self, v18, v19, v20);
  v25 = objc_msgSend_deviceHandler(v21, v22, v23, v24);
  v29 = objc_msgSend_rows(matrixCopy, v26, v27, v28);
  v33 = objc_msgSend_numOutputs(self, v30, v31, v32);
  v35 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v25, v34, v29, v33, forwardCopy);

  v39 = objc_msgSend_weights(self, v36, v37, v38);
  v43 = objc_msgSend_biasVector(self, v40, v41, v42);
  objc_msgSend_encodeToCommandBuffer_inputMatrix_weightMatrix_biasVector_resultMatrix_(v16, v44, forwardCopy, matrixCopy, v39, v43, v35);

  v49 = objc_msgSend_secondaryForwardKernel(self, v45, v46, v47);
  if (v49)
  {
    objc_msgSend_updateInputMatrixToSecondKernel_index_inference_(self, v48, v35, indexCopy, inferenceCopy);
    v53 = objc_msgSend_network(self, v50, v51, v52);
    v57 = objc_msgSend_deviceHandler(v53, v54, v55, v56);
    v61 = objc_msgSend_rows(matrixCopy, v58, v59, v60);
    v65 = objc_msgSend_numOutputs(self, v62, v63, v64);
    v67 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v57, v66, v61, v65, forwardCopy);

    objc_msgSend_encodeToCommandBuffer_inputMatrix_biasVector_resultMatrix_(v49, v68, forwardCopy, v35, 0, v67);
  }

  else
  {
    v67 = v35;
  }

  v69 = v67;

  return v67;
}

- (id)forward:(id)forward input:(id)input labels:(id)labels runInference:(BOOL)inference
{
  inferenceCopy = inference;
  forwardCopy = forward;
  inputCopy = input;
  v14 = objc_msgSend_network(self, v11, v12, v13);
  v18 = objc_msgSend_deviceHandler(v14, v15, v16, v17);
  v22 = objc_msgSend_network(self, v19, v20, v21);
  v26 = objc_msgSend_i2mKernel(v22, v23, v24, v25);
  v28 = objc_msgSend_tempMatrixFromImages_i2mKernel_cmdBuf_(v18, v27, inputCopy, v26, forwardCopy);

  v30 = objc_msgSend_forward_inputMatrix_index_runInference_(self, v29, forwardCopy, v28, &unk_1F10C5190, inferenceCopy);
  v34 = objc_msgSend_network(self, v31, v32, v33);
  v38 = objc_msgSend_deviceHandler(v34, v35, v36, v37);
  v42 = objc_msgSend_network(self, v39, v40, v41);
  v46 = objc_msgSend_m2iKernel(v42, v43, v44, v45);
  v50 = objc_msgSend_numOutputs(self, v47, v48, v49);
  v52 = objc_msgSend_imageBatchFromMatrix_m2iKernel_cmdBuf_width_height_channels_(v38, v51, v30, v46, forwardCopy, 1, 1, v50);

  return v52;
}

- (id)seqForward:(id)forward input:(id)input dataBatch:(id)batch runInference:(BOOL)inference
{
  inferenceCopy = inference;
  forwardCopy = forward;
  inputCopy = input;
  batchCopy = batch;
  v12 = MEMORY[0x1E695DF70];
  v16 = objc_msgSend_count(inputCopy, v13, v14, v15);
  v19 = objc_msgSend_arrayWithCapacity_(v12, v17, v16, v18);
  v23 = objc_msgSend_inputMatrixToSecondKernel(self, v20, v21, v22);
  objc_msgSend_removeAllObjects(v23, v24, v25, v26);

  v30 = objc_msgSend_inputMatrixToFirstKernel(self, v27, v28, v29);
  objc_msgSend_removeAllObjects(v30, v31, v32, v33);

  for (i = 0; i < objc_msgSend_count(inputCopy, v34, v35, v36); ++i)
  {
    v40 = objc_msgSend_objectAtIndexedSubscript_(inputCopy, v38, i, v39);
    v43 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v41, i, v42);
    v45 = objc_msgSend_forward_inputMatrix_index_runInference_(self, v44, forwardCopy, v40, v43, inferenceCopy);

    objc_msgSend_addObject_(v19, v46, v45, v47);
  }

  return v19;
}

- (id)backward:(id)backward index:(id)index inputGradientMatrix:(id)matrix
{
  v124[1] = *MEMORY[0x1E69E9840];
  backwardCopy = backward;
  indexCopy = index;
  matrixCopy = matrix;
  v13 = objc_msgSend_rows(matrixCopy, v10, v11, v12);
  v20 = objc_msgSend_secondaryGradientKernel(self, v14, v15, v16);
  if (v20)
  {
    v21 = objc_msgSend_network(self, v17, v18, v19);
    v25 = objc_msgSend_deviceHandler(v21, v22, v23, v24);
    v29 = objc_msgSend_numOutputs(self, v26, v27, v28);
    v31 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v25, v30, v13, v29, backwardCopy);

    v35 = objc_msgSend_inputMatrixToSecondKernel(self, v32, v33, v34);
    v38 = objc_msgSend_objectForKeyedSubscript_(v35, v36, indexCopy, v37);
    objc_msgSend_encodeToCommandBuffer_gradientMatrix_inputMatrix_biasVector_resultGradientForDataMatrix_resultGradientForBiasVector_(v20, v39, backwardCopy, matrixCopy, v38, 0, v31, 0);
  }

  else
  {
    v31 = matrixCopy;
  }

  v124[0] = v31;
  v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v17, v124, 1);
  sub_19D4362A4(v40);

  v44 = objc_msgSend_primaryGradientKernel(self, v41, v42, v43);
  v48 = objc_msgSend_network(self, v45, v46, v47);
  v52 = objc_msgSend_deviceHandler(v48, v49, v50, v51);
  v56 = objc_msgSend_numInputs(self, v53, v54, v55);
  v58 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v52, v57, v13, v56, backwardCopy);

  v62 = objc_msgSend_network(self, v59, v60, v61);
  v66 = objc_msgSend_deviceHandler(v62, v63, v64, v65);
  v70 = objc_msgSend_numInputs(self, v67, v68, v69);
  v74 = objc_msgSend_numOutputs(self, v71, v72, v73);
  v76 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v66, v75, v70, v74, backwardCopy);

  v80 = objc_msgSend_network(self, v77, v78, v79);
  v84 = objc_msgSend_deviceHandler(v80, v81, v82, v83);
  v88 = objc_msgSend_numOutputs(self, v85, v86, v87);
  v90 = objc_msgSend_vectorWithLength_cmdBuf_(v84, v89, v88, backwardCopy);

  v94 = objc_msgSend_weights(self, v91, v92, v93);
  objc_msgSend_encodeGradientForDataToCommandBuffer_gradientMatrix_weightMatrix_resultGradientForDataMatrix_(v44, v95, backwardCopy, v31, v94, v58);

  v99 = objc_msgSend_inputMatrixToFirstKernel(self, v96, v97, v98);
  v102 = objc_msgSend_objectForKeyedSubscript_(v99, v100, indexCopy, v101);
  objc_msgSend_encodeGradientForWeightsAndBiasToCommandBuffer_gradientMatrix_inputMatrix_resultGradientForWeightMatrix_resultGradientForBiasVector_(v44, v103, backwardCopy, v31, v102, v76, v90);

  v107 = objc_msgSend_optimizerBiases(self, v104, v105, v106);
  v111 = objc_msgSend_biasVector(self, v108, v109, v110);
  objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_(v107, v112, backwardCopy, v90, v111);

  v116 = objc_msgSend_optimizerWeights(self, v113, v114, v115);
  v120 = objc_msgSend_weights(self, v117, v118, v119);
  objc_msgSend_encodeToCommandBuffer_inputGradientMatrix_inputValuesMatrix_(v116, v121, backwardCopy, v76, v120);

  return v58;
}

- (id)backward:(id)backward inputGradient:(id)gradient
{
  backwardCopy = backward;
  gradientCopy = gradient;
  v10 = objc_msgSend_network(self, v7, v8, v9);
  v14 = objc_msgSend_deviceHandler(v10, v11, v12, v13);
  v18 = objc_msgSend_network(self, v15, v16, v17);
  v22 = objc_msgSend_i2mKernel(v18, v19, v20, v21);
  v24 = objc_msgSend_tempMatrixFromImages_i2mKernel_cmdBuf_(v14, v23, gradientCopy, v22, backwardCopy);

  v62 = v24;
  v26 = objc_msgSend_backward_index_inputGradientMatrix_(self, v25, backwardCopy, &unk_1F10C5190, v24);
  v30 = objc_msgSend_network(self, v27, v28, v29);
  v34 = objc_msgSend_deviceHandler(v30, v31, v32, v33);
  v38 = objc_msgSend_network(self, v35, v36, v37);
  v42 = objc_msgSend_m2iKernel(v38, v39, v40, v41);
  v46 = objc_msgSend_previousLayer(self, v43, v44, v45);
  v50 = objc_msgSend_outputLength(v46, v47, v48, v49);
  v54 = objc_msgSend_previousLayer(self, v51, v52, v53);
  v58 = objc_msgSend_outputChannels(v54, v55, v56, v57);
  v60 = objc_msgSend_imageBatchFromMatrix_m2iKernel_cmdBuf_width_height_channels_(v34, v59, v26, v42, backwardCopy, v50, 1, v58);

  return v60;
}

- (id)seqBackward:(id)backward dataBatch:(id)batch inputGradient:(id)gradient
{
  backwardCopy = backward;
  batchCopy = batch;
  gradientCopy = gradient;
  v11 = MEMORY[0x1E695DF70];
  v15 = objc_msgSend_count(gradientCopy, v12, v13, v14);
  v21 = objc_msgSend_arrayWithCapacity_(v11, v16, v15, v17);
  for (i = 0; i < objc_msgSend_count(gradientCopy, v18, v19, v20); ++i)
  {
    v25 = objc_msgSend_objectAtIndexedSubscript_(gradientCopy, v23, i, v24);
    v28 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v26, i, v27);
    v30 = objc_msgSend_backward_index_inputGradientMatrix_(self, v29, backwardCopy, v28, v25);

    objc_msgSend_addObject_(v21, v31, v30, v32);
  }

  return v21;
}

- (id)generateNode:(id)node model:(id)model weightIter:(unint64_t *)iter
{
  v179[1] = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  modelCopy = model;
  bzero(v171, 0x2C0uLL);
  v171[4] = 0;
  v171[5] = 0;
  v171[0] = 0;
  v11 = objc_msgSend_neuronType(self, v8, v9, v10);
  v171[7] = objc_msgSend_montrealTypeFromMPSNeuronType_(self, v12, v11, v13);
  v17 = objc_msgSend_weights(self, v14, v15, v16);
  v21 = objc_msgSend_rows(v17, v18, v19, v20);
  v25 = objc_msgSend_weights(self, v22, v23, v24);
  v29 = objc_msgSend_columns(v25, v26, v27, v28);
  v30 = sub_19D4363B8(v29 * v21);

  v34 = objc_msgSend_numOutputs(self, v31, v32, v33);
  v35 = sub_19D4363B8(v34);
  v172 = objc_msgSend_numInputs(self, v36, v37, v38);
  v173 = objc_msgSend_numOutputs(self, v39, v40, v41);
  v45 = objc_msgSend_weights(self, v42, v43, v44);
  v49 = objc_msgSend_rows(v45, v46, v47, v48);

  v53 = objc_msgSend_weights(self, v50, v51, v52);
  v167 = objc_msgSend_columns(v53, v54, v55, v56);

  v60 = objc_msgSend_weights(self, v57, v58, v59);
  v64 = objc_msgSend_rowBytes(v60, v61, v62, v63);

  v68 = objc_msgSend_network(self, v65, v66, v67);
  v72 = objc_msgSend_deviceHandler(v68, v69, v70, v71);
  v165 = objc_msgSend_device(v72, v73, v74, v75);

  v79 = objc_msgSend_network(self, v76, v77, v78);
  v83 = objc_msgSend_deviceHandler(v79, v80, v81, v82);
  iterCopy = iter;
  v87 = objc_msgSend_commandQueue(v83, v84, v85, v86);

  v166 = v87;
  v91 = objc_msgSend_commandBuffer(v87, v88, v89, v90);
  v95 = objc_msgSend_weights(self, v92, v93, v94);

  if (v95)
  {
    v99 = objc_msgSend_network(self, v96, v97, v98);
    v103 = objc_msgSend_deviceHandler(v99, v100, v101, v102);
    v107 = objc_msgSend_weights(self, v104, v105, v106);
    v111 = objc_msgSend_data(v107, v108, v109, v110);
    objc_msgSend_importDataFromGPU_cmdBuf_(v103, v112, v111, v91);
  }

  v113 = objc_msgSend_biasVector(self, v96, v97, v98);

  if (v113)
  {
    v117 = objc_msgSend_network(self, v114, v115, v116);
    v121 = objc_msgSend_deviceHandler(v117, v118, v119, v120);
    v125 = objc_msgSend_biasVector(self, v122, v123, v124);
    v129 = objc_msgSend_data(v125, v126, v127, v128);
    objc_msgSend_importDataFromGPU_cmdBuf_(v121, v130, v129, v91);
  }

  v170[0] = MEMORY[0x1E69E9820];
  v170[1] = 3221225472;
  v170[2] = sub_19D453824;
  v170[3] = &unk_1E7626FB8;
  v170[4] = self;
  v170[5] = v49;
  v170[6] = v167;
  v170[7] = v30;
  v170[8] = v64;
  v170[9] = v35;
  objc_msgSend_addCompletedHandler_(v91, v114, v170, v116);
  objc_msgSend_commit(v91, v131, v132, v133);
  objc_msgSend_waitUntilCompleted(v91, v134, v135, v136);
  v174 = v30;
  v175 = v35;
  v178[0] = &unk_1F10C51A8;
  v178[1] = &unk_1F10C51A8;
  v137 = MEMORY[0x1E696AD98];
  v141 = objc_msgSend_numInputs(self, v138, v139, v140);
  v144 = objc_msgSend_numberWithUnsignedInteger_(v137, v142, v141, v143);
  v178[2] = v144;
  v146 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v145, v178, 3);
  v179[0] = v146;
  v148 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v147, v179, 1);

  v176[0] = &unk_1F10C51A8;
  v176[1] = &unk_1F10C51A8;
  v149 = MEMORY[0x1E696AD98];
  v153 = objc_msgSend_numOutputs(self, v150, v151, v152);
  v156 = objc_msgSend_numberWithUnsignedInteger_(v149, v154, v153, v155);
  v176[2] = v156;
  v158 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v157, v176, 3);
  v177 = v158;
  v160 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v159, &v177, 1);

  v162 = objc_msgSend_generateNode_model_weightIter_params_inputChunks_outputChunks_(self, v161, nodeCopy, modelCopy, iterCopy, v171, v148, v160);

  return v162;
}

@end