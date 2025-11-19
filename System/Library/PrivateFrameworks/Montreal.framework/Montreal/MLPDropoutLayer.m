@interface MLPDropoutLayer
- (MLPDropoutLayer)initWithName:(id)a3 inputLength:(unint64_t)a4 inputChannels:(unint64_t)a5 dropoutRatio:(float)a6;
- (MLPDropoutLayer)initWithName:(id)a3 parameters:(id *)a4;
- (MLPDropoutLayer)initWithName:(id)a3 previousLayer:(id)a4 dropoutRatio:(float)a5;
- (id)backward:(id)a3 index:(id)a4 inputGradient:(id)a5;
- (id)backward:(id)a3 inputGradient:(id)a4;
- (id)forward:(id)a3 input:(id)a4 index:(id)a5 runInference:(BOOL)a6;
- (id)forward:(id)a3 input:(id)a4 labels:(id)a5 runInference:(BOOL)a6;
- (id)generateNode:(id)a3 model:(id)a4 weightIter:(unint64_t *)a5;
- (id)seqBackward:(id)a3 dataBatch:(id)a4 inputGradient:(id)a5;
- (id)seqForward:(id)a3 input:(id)a4 dataBatch:(id)a5 runInference:(BOOL)a6;
- (void)createKernel;
- (void)updatePreviousLayer:(id)a3 nextLayer:(id)a4 network:(id)a5;
@end

@implementation MLPDropoutLayer

- (MLPDropoutLayer)initWithName:(id)a3 previousLayer:(id)a4 dropoutRatio:(float)a5
{
  v8 = a3;
  v9 = a4;
  v13 = objc_msgSend_outputLength(v9, v10, v11, v12);
  v17 = objc_msgSend_outputChannels(v9, v14, v15, v16);
  *&v18 = a5;
  v20 = objc_msgSend_initWithName_inputLength_inputChannels_dropoutRatio_(self, v19, v8, v13, v17, v18);

  return v20;
}

- (MLPDropoutLayer)initWithName:(id)a3 inputLength:(unint64_t)a4 inputChannels:(unint64_t)a5 dropoutRatio:(float)a6
{
  v10 = a3;
  v22.receiver = self;
  v22.super_class = MLPDropoutLayer;
  v11 = [(MLPImageLayer *)&v22 initWithLayerType:1 name:v10 neuronType:0 neuronParams:0];
  v14 = v11;
  if (v11)
  {
    v11->_dropoutRatio = a6;
    objc_msgSend_setInputLength_(v11, v12, a4, v13);
    objc_msgSend_setOutputLength_(v14, v15, a4, v16);
    objc_msgSend_setInputChannels_(v14, v17, a5, v18);
    objc_msgSend_setOutputChannels_(v14, v19, a5, v20);
  }

  return v14;
}

- (MLPDropoutLayer)initWithName:(id)a3 parameters:(id *)a4
{
  v6.receiver = self;
  v6.super_class = MLPDropoutLayer;
  result = [(MLPImageLayer *)&v6 initWithLayerType:1 name:a3 parameters:a4];
  if (result)
  {
    result->_dropoutRatio = a4->var12[0];
  }

  return result;
}

- (void)updatePreviousLayer:(id)a3 nextLayer:(id)a4 network:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v60.receiver = self;
  v60.super_class = MLPDropoutLayer;
  [(MLPLayer *)&v60 updatePreviousLayer:v8 nextLayer:v9 network:v10];
  v14 = objc_msgSend_previousLayer(self, v11, v12, v13);

  if (v14)
  {
    v18 = objc_msgSend_previousLayer(self, v15, v16, v17);
    v22 = objc_msgSend_outputLength(v18, v19, v20, v21);
    objc_msgSend_setInputLength_(self, v23, v22, v24);

    v28 = objc_msgSend_previousLayer(self, v25, v26, v27);
    v32 = objc_msgSend_outputChannels(v28, v29, v30, v31);
  }

  else
  {
    v35 = objc_msgSend_network(self, v15, v16, v17);
    v39 = objc_msgSend_inputLength(v35, v36, v37, v38);
    objc_msgSend_setInputLength_(self, v40, v39, v41);

    v28 = objc_msgSend_network(self, v42, v43, v44);
    v32 = objc_msgSend_inputChannels(v28, v45, v46, v47);
  }

  objc_msgSend_setInputChannels_(self, v33, v32, v34);

  v51 = objc_msgSend_inputLength(self, v48, v49, v50);
  objc_msgSend_setOutputLength_(self, v52, v51, v53);
  v57 = objc_msgSend_inputChannels(self, v54, v55, v56);
  objc_msgSend_setOutputChannels_(self, v58, v57, v59);
}

- (void)createKernel
{
  v5 = objc_msgSend_network(self, a2, v2, v3);
  v9 = objc_msgSend_deviceHandler(v5, v6, v7, v8);
  v13 = objc_msgSend_device(v9, v10, v11, v12);

  v17 = objc_msgSend_network(self, v14, v15, v16);
  v21 = objc_msgSend_deviceHandler(v17, v18, v19, v20);
  LODWORD(v22) = 1232348160;
  objc_msgSend_uniformRandWithParamA_paramB_(v21, v23, v24, v25, 0.0, v22);
  v27 = v26;

  v28 = objc_alloc(MEMORY[0x1E6974918]);
  objc_msgSend_dropoutRatio(self, v29, v30, v31);
  *&v33 = 1.0 - v32;
  v48 = vdupq_n_s64(1uLL);
  v49 = 1;
  v35 = objc_msgSend_initWithDevice_keepProbability_seed_maskStrideInPixels_(v28, v34, v13, v27, &v48, v33);
  v36 = objc_alloc(MEMORY[0x1E6974920]);
  objc_msgSend_dropoutRatio(self, v37, v38, v39);
  *&v41 = 1.0 - v40;
  v48 = vdupq_n_s64(1uLL);
  v49 = 1;
  v43 = objc_msgSend_initWithDevice_keepProbability_seed_maskStrideInPixels_(v36, v42, v13, v27, &v48, v41);
  objc_msgSend_setForwardKernel_(self, v44, v35, v45);
  objc_msgSend_setPrimaryGradientKernel_(self, v46, v43, v47);
}

- (id)forward:(id)a3 input:(id)a4 index:(id)a5 runInference:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v11;
  v17 = v13;
  if (v6)
  {
    v18 = v13;
  }

  else
  {
    v19 = objc_msgSend_forwardKernel(self, v14, v15, v16);
    objc_msgSend_updateInputToFirstKernel_index_inference_(self, v20, v17, v12, 0);
    v26 = 0;
    v22 = objc_msgSend_encodeBatchToCommandBuffer_sourceImages_destinationStates_destinationStateIsTemporary_(v19, v21, v10, v17, &v26, 1);
    v23 = v26;
    v18 = v22;

    objc_msgSend_updatePrimaryCurrentState_index_inference_(self, v24, v23, v12, 0);
  }

  return v18;
}

- (id)forward:(id)a3 input:(id)a4 labels:(id)a5 runInference:(BOOL)a6
{
  v6 = objc_msgSend_forward_input_index_runInference_(self, a2, a3, a4, &unk_1F10C4FE0, a6);

  return v6;
}

- (id)seqForward:(id)a3 input:(id)a4 dataBatch:(id)a5 runInference:(BOOL)a6
{
  v6 = a6;
  v89 = a3;
  v10 = a4;
  v86 = a5;
  if (v6)
  {
    v14 = v10;
  }

  else
  {
    v14 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13);
    v18 = objc_msgSend_network(self, v15, v16, v17);
    v88 = v14;
    v22 = objc_msgSend_deviceHandler(v18, v19, v20, v21);
    v85 = objc_msgSend_device(v22, v23, v24, v25);

    v26 = 0;
    v87 = v10;
    for (i = objc_msgSend_count(v10, v27, v28, v29); v26 < i; i = objc_msgSend_count(v87, v81, v82, v83))
    {
      v33 = objc_msgSend_objectAtIndexedSubscript_(v10, v31, v26, v32);
      v37 = objc_msgSend_network(self, v34, v35, v36);
      v41 = objc_msgSend_deviceHandler(v37, v38, v39, v40);
      v45 = objc_msgSend_network(self, v42, v43, v44);
      v49 = objc_msgSend_m2iKernel(v45, v46, v47, v48);
      v53 = objc_msgSend_outputChannels(self, v50, v51, v52);
      v55 = objc_msgSend_imageBatchFromMatrix_m2iKernel_cmdBuf_width_height_channels_(v41, v54, v33, v49, v89, 1, 1, v53);

      v58 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v56, v26, v57);
      v60 = objc_msgSend_forward_input_index_runInference_(self, v59, v89, v55, v58, 0);

      v64 = objc_msgSend_network(self, v61, v62, v63);
      v68 = objc_msgSend_deviceHandler(v64, v65, v66, v67);
      v72 = objc_msgSend_network(self, v69, v70, v71);
      v76 = objc_msgSend_i2mKernel(v72, v73, v74, v75);
      v78 = objc_msgSend_tempMatrixFromImages_i2mKernel_cmdBuf_(v68, v77, v60, v76, v89);

      objc_msgSend_addObject_(v88, v79, v78, v80);
      ++v26;
      v10 = v87;
      v14 = v88;
    }
  }

  return v14;
}

- (id)backward:(id)a3 index:(id)a4 inputGradient:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = objc_msgSend_primaryGradientKernel(self, v11, v12, v13);
  v18 = objc_msgSend_inputImagesToFirstKernel(self, v15, v16, v17);
  v21 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v9, v20);
  v25 = objc_msgSend_primaryCurrentStates(self, v22, v23, v24);
  v28 = objc_msgSend_objectForKeyedSubscript_(v25, v26, v9, v27);
  v30 = objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_gradientStates_(v14, v29, v8, v10, v21, v28);

  return v30;
}

- (id)backward:(id)a3 inputGradient:(id)a4
{
  v4 = objc_msgSend_backward_index_inputGradient_(self, a2, a3, &unk_1F10C4FE0, a4);

  return v4;
}

- (id)seqBackward:(id)a3 dataBatch:(id)a4 inputGradient:(id)a5
{
  v79 = a3;
  v75 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E695DF70];
  v13 = objc_msgSend_count(v8, v10, v11, v12);
  v78 = objc_msgSend_arrayWithCapacity_(v9, v14, v13, v15);
  v16 = 0;
  v77 = v8;
  for (i = objc_msgSend_count(v8, v17, v18, v19, v75); v16 < i; i = objc_msgSend_count(v77, v71, v72, v73, v76))
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(v8, v21, v16, v22);
    v27 = objc_msgSend_network(self, v24, v25, v26);
    v31 = objc_msgSend_deviceHandler(v27, v28, v29, v30);
    v35 = objc_msgSend_network(self, v32, v33, v34);
    v39 = objc_msgSend_m2iKernel(v35, v36, v37, v38);
    v43 = objc_msgSend_outputChannels(self, v40, v41, v42);
    v45 = objc_msgSend_imageBatchFromMatrix_m2iKernel_cmdBuf_width_height_channels_(v31, v44, v23, v39, v79, 1, 1, v43);

    v48 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v46, v16, v47);
    v50 = objc_msgSend_backward_index_inputGradient_(self, v49, v79, v48, v45);

    v54 = objc_msgSend_network(self, v51, v52, v53);
    v58 = objc_msgSend_deviceHandler(v54, v55, v56, v57);
    v62 = objc_msgSend_network(self, v59, v60, v61);
    v66 = objc_msgSend_i2mKernel(v62, v63, v64, v65);
    v68 = objc_msgSend_tempMatrixFromImages_i2mKernel_cmdBuf_(v58, v67, v50, v66, v79);

    objc_msgSend_addObject_(v78, v69, v68, v70);
    ++v16;
    v8 = v77;
  }

  return v78;
}

- (id)generateNode:(id)a3 model:(id)a4 weightIter:(unint64_t *)a5
{
  v8 = a3;
  v9 = a4;
  bzero(v17, 0x2C0uLL);
  v17[4] = 0;
  v17[5] = 0;
  v17[7] = 6;
  objc_msgSend_dropoutRatio(self, v10, v11, v12, 2);
  v18 = v13;
  v15 = objc_msgSend_generateNode_model_weightIter_params_(self, v14, v8, v9, a5, v17);

  return v15;
}

@end