@interface MLPLossLayer
- (MLPLossLayer)initWithName:(id)name inputLength:(unint64_t)length inputChannels:(unint64_t)channels neuronType:(int)type neuronParams:(id)params;
- (MLPLossLayer)initWithName:(id)name parameters:(id *)parameters;
- (MLPLossLayer)initWithName:(id)name previousLayer:(id)layer neuronType:(int)type neuronParams:(id)params;
- (id)forward:(id)forward input:(id)input labels:(id)labels runInference:(BOOL)inference;
- (id)generateNode:(id)node model:(id)model weightIter:(unint64_t *)iter;
- (id)imageInferenceForward:(id)forward input:(id)input lossLabels:(id)labels;
- (id)imageTrainingForward:(id)forward input:(id)input lossLabels:(id)labels;
- (id)seqForward:(id)forward input:(id)input dataBatch:(id)batch runInference:(BOOL)inference;
- (id)seqForward:(id)forward inputMatrix:(id)matrix dataBatch:(id)batch runInference:(BOOL)inference;
- (id)seqInferenceForward:(id)forward inputMatrix:(id)matrix dataBatch:(id)batch;
- (id)seqTrainingForward:(id)forward inputMatrix:(id)matrix dataBatch:(id)batch computeLossGradient:(BOOL)gradient;
- (id)seqTrainingForward:(id)forward subMatrix:(id)matrix reductionSumResults:(id)results alphaVec:(id)vec labels:(id)labels rowOffset:(unint64_t)offset computeNRows:(unint64_t)rows computeLossGradient:(BOOL)self0;
- (void)createKernel;
- (void)updatePreviousLayer:(id)layer nextLayer:(id)nextLayer network:(id)network;
@end

@implementation MLPLossLayer

- (MLPLossLayer)initWithName:(id)name previousLayer:(id)layer neuronType:(int)type neuronParams:(id)params
{
  v7 = *&type;
  nameCopy = name;
  layerCopy = layer;
  paramsCopy = params;
  v16 = objc_msgSend_outputLength(layerCopy, v13, v14, v15);
  v20 = objc_msgSend_outputChannels(layerCopy, v17, v18, v19);
  v22 = objc_msgSend_initWithName_inputLength_inputChannels_neuronType_neuronParams_(self, v21, nameCopy, v16, v20, v7, paramsCopy);

  return v22;
}

- (MLPLossLayer)initWithName:(id)name inputLength:(unint64_t)length inputChannels:(unint64_t)channels neuronType:(int)type neuronParams:(id)params
{
  v8 = *&type;
  nameCopy = name;
  paramsCopy = params;
  v25.receiver = self;
  v25.super_class = MLPLossLayer;
  v14 = [(MLPImageLayer *)&v25 initWithLayerType:2 name:nameCopy neuronType:v8 neuronParams:paramsCopy];
  v17 = v14;
  if (v14)
  {
    objc_msgSend_setInputLength_(v14, v15, length, v16);
    objc_msgSend_setOutputLength_(v17, v18, length, v19);
    objc_msgSend_setInputChannels_(v17, v20, channels, v21);
    objc_msgSend_setOutputChannels_(v17, v22, channels, v23);
  }

  return v17;
}

- (MLPLossLayer)initWithName:(id)name parameters:(id *)parameters
{
  v5.receiver = self;
  v5.super_class = MLPLossLayer;
  return [(MLPImageLayer *)&v5 initWithLayerType:2 name:name parameters:parameters];
}

- (void)updatePreviousLayer:(id)layer nextLayer:(id)nextLayer network:(id)network
{
  layerCopy = layer;
  nextLayerCopy = nextLayer;
  networkCopy = network;
  v51.receiver = self;
  v51.super_class = MLPLossLayer;
  [(MLPLayer *)&v51 updatePreviousLayer:layerCopy nextLayer:nextLayerCopy network:networkCopy];
  v14 = objc_msgSend_previousLayer(self, v11, v12, v13);
  v18 = objc_msgSend_outputLength(v14, v15, v16, v17);
  objc_msgSend_setInputLength_(self, v19, v18, v20);

  v24 = objc_msgSend_previousLayer(self, v21, v22, v23);
  v28 = objc_msgSend_outputLength(v24, v25, v26, v27);
  objc_msgSend_setOutputLength_(self, v29, v28, v30);

  v34 = objc_msgSend_previousLayer(self, v31, v32, v33);
  v38 = objc_msgSend_outputChannels(v34, v35, v36, v37);
  objc_msgSend_setInputChannels_(self, v39, v38, v40);

  v44 = objc_msgSend_previousLayer(self, v41, v42, v43);
  v48 = objc_msgSend_outputChannels(v44, v45, v46, v47);
  objc_msgSend_setOutputChannels_(self, v49, v48, v50);
}

- (void)createKernel
{
  v5 = objc_msgSend_network(self, a2, v2, v3);
  v9 = objc_msgSend_deviceHandler(v5, v6, v7, v8);
  v116 = objc_msgSend_device(v9, v10, v11, v12);

  v16 = objc_msgSend_network(self, v13, v14, v15);
  v20 = objc_msgSend_networkType(v16, v17, v18, v19);

  if (v20 == 1)
  {
    v22 = objc_msgSend_cnnLossDescriptorWithType_reductionType_(MEMORY[0x1E6974940], v21, 2, 1);
    v26 = objc_msgSend_network(self, v23, v24, v25);
    *&v30 = 1.0 / objc_msgSend_batchSize(v26, v27, v28, v29);
    objc_msgSend_setWeight_(v22, v31, v32, v33, v30);

    v34 = objc_alloc(MEMORY[0x1E6974938]);
    v36 = objc_msgSend_initWithDevice_lossDescriptor_(v34, v35, v116, v22);
    objc_msgSend_setForwardKernel_(self, v37, v36, v38);
    v39 = objc_alloc(MEMORY[0x1E69749D0]);
    v42 = objc_msgSend_initWithDevice_(v39, v40, v116, v41);
    objc_msgSend_setSecondaryForwardKernel_(self, v43, v42, v44);
  }

  else
  {
    v45 = objc_alloc(MEMORY[0x1E6974670]);
    v48 = objc_msgSend_initWithDevice_(v45, v46, v116, v47);
    objc_msgSend_setMatrixSoftMax_(self, v49, v48, v50);

    v51 = objc_alloc(MEMORY[0x1E6974668]);
    v54 = objc_msgSend_initWithDevice_(v51, v52, v116, v53);
    objc_msgSend_setMatrixLogSoftMax_(self, v55, v54, v56);

    v57 = objc_alloc(MEMORY[0x1E69747B0]);
    v60 = objc_msgSend_initWithDevice_(v57, v58, v116, v59);
    objc_msgSend_setMultiplication_(self, v61, v60, v62);

    v63 = objc_alloc(MEMORY[0x1E6974848]);
    v65 = objc_msgSend_initWithDevice_axis_(v63, v64, v116, 0);
    objc_msgSend_setReductionSum_(self, v66, v65, v67);

    v71 = objc_msgSend_defaultAllocator(MEMORY[0x1E6974488], v68, v69, v70);
    v75 = objc_msgSend_reductionSum(self, v72, v73, v74);
    objc_msgSend_setDestinationArrayAllocator_(v75, v76, v71, v77);

    v78 = objc_alloc(MEMORY[0x1E69749F8]);
    v81 = objc_msgSend_initWithDevice_(v78, v79, v116, v80);
    objc_msgSend_setNegativeNeuron_(self, v82, v81, v83);

    v87 = objc_msgSend_negativeNeuron(self, v84, v85, v86);
    LODWORD(v88) = -1.0;
    objc_msgSend_setNeuronType_parameterA_parameterB_parameterC_(v87, v89, 2, v90, v88, 0.0, 0.0);

    v91 = objc_alloc(MEMORY[0x1E6974658]);
    v95 = objc_msgSend_network(self, v92, v93, v94);
    v99 = objc_msgSend_lossBatchSize(v95, v96, v97, v98);
    v103 = objc_msgSend_inputChannels(self, v100, v101, v102);
    v105 = objc_msgSend_initWithDevice_copyRows_copyColumns_sourcesAreTransposed_destinationsAreTransposed_(v91, v104, v116, v99, v103, 0, 0);
    objc_msgSend_setMatrixLargeCopyFilter_(self, v106, v105, v107);

    v108 = objc_alloc(MEMORY[0x1E6974658]);
    v112 = objc_msgSend_inputChannels(self, v109, v110, v111);
    v22 = objc_msgSend_initWithDevice_copyRows_copyColumns_sourcesAreTransposed_destinationsAreTransposed_(v108, v113, v116, 1, v112, 0, 0);
    objc_msgSend_setMatrixSingleCopyFilter_(self, v114, v22, v115);
  }
}

- (id)forward:(id)forward input:(id)input labels:(id)labels runInference:(BOOL)inference
{
  inferenceCopy = inference;
  forwardCopy = forward;
  inputCopy = input;
  labelsCopy = labels;
  if (inferenceCopy)
  {
    objc_msgSend_imageInferenceForward_input_lossLabels_(self, v12, forwardCopy, inputCopy, labelsCopy);
  }

  else
  {
    objc_msgSend_imageTrainingForward_input_lossLabels_(self, v12, forwardCopy, inputCopy, labelsCopy);
  }
  v14 = ;

  return v14;
}

- (id)imageTrainingForward:(id)forward input:(id)input lossLabels:(id)labels
{
  forwardCopy = forward;
  inputCopy = input;
  labelsCopy = labels;
  v14 = objc_msgSend_network(self, v11, v12, v13);
  v18 = objc_msgSend_deviceHandler(v14, v15, v16, v17);
  v22 = objc_msgSend_device(v18, v19, v20, v21);

  v23 = inputCopy;
  v27 = objc_msgSend_forwardKernel(self, v24, v25, v26);
  v29 = objc_msgSend_encodeBatchToCommandBuffer_sourceImages_labels_(v27, v28, forwardCopy, v23, labelsCopy);

  return v29;
}

- (id)imageInferenceForward:(id)forward input:(id)input lossLabels:(id)labels
{
  forwardCopy = forward;
  inputCopy = input;
  labelsCopy = labels;
  v14 = objc_msgSend_network(self, v11, v12, v13);
  v18 = objc_msgSend_computeLossOnInference(v14, v15, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_objectAtIndex_(inputCopy, v19, 0, v20);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      MPSImageBatchIncrementReadCount(inputCopy, 1);
    }

    v24 = objc_msgSend_imageTrainingForward_input_lossLabels_(self, v23, forwardCopy, inputCopy, labelsCopy);
  }

  v25 = inputCopy;
  v29 = objc_msgSend_secondaryForwardKernel(self, v26, v27, v28);
  v31 = objc_msgSend_encodeBatchToCommandBuffer_sourceImages_(v29, v30, forwardCopy, v25);

  return v31;
}

- (id)seqForward:(id)forward inputMatrix:(id)matrix dataBatch:(id)batch runInference:(BOOL)inference
{
  inferenceCopy = inference;
  forwardCopy = forward;
  matrixCopy = matrix;
  batchCopy = batch;
  if (inferenceCopy)
  {
    objc_msgSend_seqInferenceForward_inputMatrix_dataBatch_(self, v12, forwardCopy, matrixCopy, batchCopy);
  }

  else
  {
    objc_msgSend_seqTrainingForward_inputMatrix_dataBatch_computeLossGradient_(self, v12, forwardCopy, matrixCopy, batchCopy, 1);
  }
  v14 = ;

  return v14;
}

- (id)seqTrainingForward:(id)forward inputMatrix:(id)matrix dataBatch:(id)batch computeLossGradient:(BOOL)gradient
{
  forward;
  matrixCopy = matrix;
  batchCopy = batch;
  v12 = objc_msgSend_network(self, v9, v10, v11);
  v16 = objc_msgSend_deviceHandler(v12, v13, v14, v15);
  objc_msgSend_device(v16, v17, v18, v19);
  objc_claimAutoreleasedReturnValue();

  objc_msgSend_data(matrixCopy, v20, v21, v22);
  objc_claimAutoreleasedReturnValue();
  objc_msgSend_rows(matrixCopy, v23, v24, v25);
  objc_msgSend_combinedLossLabels(batchCopy, v26, v27, v28);
  v47[0] = 0;
  v47[1] = v47;
  v48 = 0;
  v45 = v47[2] = 0x2020000000;
  v32 = objc_msgSend_labels(v45, v29, v30, v31);
  objc_msgSend_count(v32, v33, v34, v35);
  v39 = objc_msgSend_labels(v45, v36, v37, v38);
  objc_msgSend_count(v39, v40, v41, v42);
  operator new();
}

- (id)seqTrainingForward:(id)forward subMatrix:(id)matrix reductionSumResults:(id)results alphaVec:(id)vec labels:(id)labels rowOffset:(unint64_t)offset computeNRows:(unint64_t)rows computeLossGradient:(BOOL)self0
{
  v224[2] = *MEMORY[0x1E69E9840];
  forwardCopy = forward;
  matrixCopy = matrix;
  resultsCopy = results;
  vecCopy = vec;
  labelsCopy = labels;
  v217 = matrixCopy;
  v207 = objc_msgSend_columns(matrixCopy, v18, v19, v20);
  v204 = objc_msgSend_rowBytes(matrixCopy, v21, v22, v23);
  v27 = objc_msgSend_network(self, v24, v25, v26);
  v31 = objc_msgSend_deviceHandler(v27, v28, v29, v30);
  v214 = objc_msgSend_device(v31, v32, v33, v34);

  v35 = objc_alloc(MEMORY[0x1E6974A08]);
  v39 = objc_msgSend_outputChannels(self, v36, v37, v38);
  v210 = objc_msgSend_initWithDevice_count_rows_columns_transpose_(v35, v40, v214, 2, rows, v39, 0);
  v44 = objc_msgSend_network(self, v41, v42, v43);
  v48 = objc_msgSend_deviceHandler(v44, v45, v46, v47);
  v52 = objc_msgSend_outputChannels(self, v49, v50, v51);
  v215 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v48, v53, rows, v52, forwardCopy);

  v57 = objc_msgSend_network(self, v54, v55, v56);
  v61 = objc_msgSend_deviceHandler(v57, v58, v59, v60);
  v65 = objc_msgSend_outputChannels(self, v62, v63, v64);
  v216 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v61, v66, rows, v65, forwardCopy);

  v70 = objc_msgSend_network(self, v67, v68, v69);
  v74 = objc_msgSend_deviceHandler(v70, v71, v72, v73);
  v78 = objc_msgSend_outputChannels(self, v75, v76, v77);
  v218 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v74, v79, rows, v78, forwardCopy);

  objc_msgSend_incrementReadCount(v217, v80, v81, v82);
  v86 = objc_msgSend_matrixSoftMax(self, v83, v84, v85);
  v221 = 0;
  v222 = 0;
  offsetCopy2 = offset;
  objc_msgSend_setSourceMatrixOrigin_(v86, v87, &offsetCopy2, v88);

  v92 = objc_msgSend_matrixLogSoftMax(self, v89, v90, v91);
  v221 = 0;
  v222 = 0;
  offsetCopy2 = offset;
  objc_msgSend_setSourceMatrixOrigin_(v92, v93, &offsetCopy2, v94);

  v98 = objc_msgSend_matrixSoftMax(self, v95, v96, v97);
  objc_msgSend_setSourceRows_(v98, v99, rows, v100);

  v104 = objc_msgSend_matrixLogSoftMax(self, v101, v102, v103);
  objc_msgSend_setSourceRows_(v104, v105, rows, v106);

  v110 = objc_msgSend_matrixSoftMax(self, v107, v108, v109);
  objc_msgSend_encodeToCommandBuffer_inputMatrix_resultMatrix_(v110, v111, forwardCopy, v217, v215);

  v115 = objc_msgSend_matrixLogSoftMax(self, v112, v113, v114);
  objc_msgSend_encodeToCommandBuffer_inputMatrix_resultMatrix_(v115, v116, forwardCopy, v217, v216);

  v120 = objc_msgSend_negativeNeuron(self, v117, v118, v119);
  objc_msgSend_encodeToCommandBuffer_inputMatrix_biasVector_resultMatrix_(v120, v121, forwardCopy, v216, 0, v218);

  v128 = objc_msgSend_outputChannels(self, v122, v123, v124) * rows;
  if (v128)
  {
    if (!(v128 >> 62))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  if (rows)
  {
    for (i = 0; i != rows; ++i)
    {
      v130 = objc_msgSend_outputChannels(self, v125, v126, v127);
      v133 = objc_msgSend_objectAtIndexedSubscript_(labelsCopy, v131, i, v132);
      *(4 * (objc_msgSend_unsignedIntegerValue(v133, v134, v135, v136) + v130 * i)) = 1065353216;
    }
  }

  v137 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v125, rows, v127);
  v224[0] = v137;
  v138 = MEMORY[0x1E696AD98];
  v142 = objc_msgSend_outputChannels(self, v139, v140, v141);
  v145 = objc_msgSend_numberWithUnsignedInteger_(v138, v143, v142, v144);
  v224[1] = v145;
  v212 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v146, v224, 2);

  v206 = objc_msgSend_descriptorWithDataType_shape_(MEMORY[0x1E6974490], v147, 268435488, v212);
  v148 = objc_alloc(MEMORY[0x1E6974488]);
  v150 = objc_msgSend_initWithDevice_descriptor_(v148, v149, v214, v206);
  objc_msgSend_writeBytes_strideBytes_(v150, v151, 0, 0);
  v152 = MEMORY[0x1E6974490];
  v156 = objc_msgSend_columns(v218, v153, v154, v155);
  v160 = objc_msgSend_rows(v218, v157, v158, v159);
  v205 = objc_msgSend_descriptorWithDataType_dimensionSizes_(v152, v161, 268435488, v156, v160, 0);
  v211 = objc_msgSend_ndArrayWithCommandBuffer_descriptor_aliasing_(v218, v162, forwardCopy, v205, 2);
  v166 = objc_msgSend_multiplication(self, v163, v164, v165);
  v168 = objc_msgSend_encodeToCommandBuffer_primarySourceArray_secondarySourceArray_(v166, v167, forwardCopy, v211, v150);

  v172 = objc_msgSend_reductionSum(self, v169, v170, v171);
  v174 = objc_msgSend_encodeToCommandBuffer_sourceArray_(v172, v173, forwardCopy, v168);

  objc_msgSend_addObject_(resultsCopy, v175, v174, v176);
  if (gradient)
  {
    v208 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x1E6974480], v177, rows, v207, v204, 268435488);
    v181 = objc_msgSend_matrixWithCommandBuffer_descriptor_aliasing_(v150, v180, forwardCopy, v208, 0);
    v185 = objc_msgSend_network(self, v182, v183, v184);
    v189 = objc_msgSend_deviceHandler(v185, v186, v187, v188);
    v191 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v189, v190, rows, v207, forwardCopy);

    v223[0] = v215;
    v223[1] = v181;
    v193 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v192, v223, 2);
    objc_msgSend_encodeToCommandBuffer_sourceMatrices_resultMatrix_scaleVector_offsetVector_biasVector_startIndex_(v210, v194, forwardCopy, v193, v191, vecCopy, 0, 0, 0);
  }

  else
  {
    v191 = 0;
  }

  objc_msgSend_resetReadCount(v215, v177, v178, v179);
  objc_msgSend_resetReadCount(v216, v195, v196, v197);
  objc_msgSend_resetReadCount(v218, v198, v199, v200);
  objc_msgSend_setReadCount_(v168, v201, 0, v202);

  return v191;
}

- (id)seqInferenceForward:(id)forward inputMatrix:(id)matrix dataBatch:(id)batch
{
  forwardCopy = forward;
  matrixCopy = matrix;
  batchCopy = batch;
  v14 = objc_msgSend_network(self, v11, v12, v13);
  v18 = objc_msgSend_computeLossOnInference(v14, v15, v16, v17);

  if (v18)
  {
    objc_msgSend_incrementReadCount(matrixCopy, v19, v20, v21);
    v23 = objc_msgSend_seqTrainingForward_inputMatrix_dataBatch_computeLossGradient_(self, v22, forwardCopy, matrixCopy, batchCopy, 0);
  }

  v24 = objc_msgSend_matrixSoftMax(self, v19, v20, v21);
  memset(v69, 0, sizeof(v69));
  objc_msgSend_setSourceMatrixOrigin_(v24, v25, v69, v26);

  v30 = objc_msgSend_matrixSoftMax(self, v27, v28, v29);
  objc_msgSend_setSourceRows_(v30, v31, -1, v32);

  v36 = objc_msgSend_network(self, v33, v34, v35);
  v40 = objc_msgSend_deviceHandler(v36, v37, v38, v39);
  v44 = objc_msgSend_device(v40, v41, v42, v43);

  v48 = objc_msgSend_network(self, v45, v46, v47);
  v52 = objc_msgSend_deviceHandler(v48, v49, v50, v51);
  v56 = objc_msgSend_rows(matrixCopy, v53, v54, v55);
  v60 = objc_msgSend_columns(matrixCopy, v57, v58, v59);
  v62 = objc_msgSend_matrixWithRows_columns_cmdBuf_(v52, v61, v56, v60, forwardCopy);

  v66 = objc_msgSend_matrixSoftMax(self, v63, v64, v65);
  objc_msgSend_encodeToCommandBuffer_inputMatrix_resultMatrix_(v66, v67, forwardCopy, matrixCopy, v62);

  return v62;
}

- (id)seqForward:(id)forward input:(id)input dataBatch:(id)batch runInference:(BOOL)inference
{
  inferenceCopy = inference;
  forwardCopy = forward;
  inputCopy = input;
  batchCopy = batch;
  v16 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15);
  v19 = objc_msgSend_objectAtIndexedSubscript_(inputCopy, v17, 0, v18);
  v21 = objc_msgSend_seqForward_inputMatrix_dataBatch_runInference_(self, v20, forwardCopy, v19, batchCopy, inferenceCopy);

  objc_msgSend_addObject_(v16, v22, v21, v23);

  return v16;
}

- (id)generateNode:(id)node model:(id)model weightIter:(unint64_t *)iter
{
  bzero(v12, 0x2C0uLL);
  v12[4] = 0;
  v12[5] = 0;
  v12[0] = 2;
  v12[7] = 4;
  v10 = objc_msgSend_generateNode_model_weightIter_params_(self, v9, node, model, iter, v12);

  return v10;
}

@end