@interface MLPConvolutionLayer
- (MLPConvolutionLayer)initWithName:(id)a3 inputLength:(unint64_t)a4 inputChannels:(unint64_t)a5 kernelWidth:(unint64_t)a6 kernelHeight:(unint64_t)a7 kernelStride:(unint64_t)a8 outputChannels:(unint64_t)a9 neuronType:(int)a10 neuronParams:(id)a11;
- (MLPConvolutionLayer)initWithName:(id)a3 parameters:(id *)a4;
- (MLPConvolutionLayer)initWithName:(id)a3 previousLayer:(id)a4 kernelWidth:(unint64_t)a5 kernelHeight:(unint64_t)a6 kernelStride:(unint64_t)a7 outputChannels:(unint64_t)a8 neuronType:(int)a9 neuronParams:(id)a10;
- (id)backward:(id)a3 inputGradient:(id)a4;
- (id)forward:(id)a3 input:(id)a4 labels:(id)a5 runInference:(BOOL)a6;
- (id)generateNode:(id)a3 model:(id)a4 weightIter:(unint64_t *)a5;
- (void)createKernel;
- (void)updatePrimaryCurrentState:(id)a3 index:(id)a4 inference:(BOOL)a5;
@end

@implementation MLPConvolutionLayer

- (MLPConvolutionLayer)initWithName:(id)a3 previousLayer:(id)a4 kernelWidth:(unint64_t)a5 kernelHeight:(unint64_t)a6 kernelStride:(unint64_t)a7 outputChannels:(unint64_t)a8 neuronType:(int)a9 neuronParams:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a10;
  v22 = objc_msgSend_outputLength(v17, v19, v20, v21);
  v26 = objc_msgSend_outputChannels(v17, v23, v24, v25);
  v28 = objc_msgSend_initWithName_inputLength_inputChannels_kernelWidth_kernelHeight_kernelStride_outputChannels_neuronType_neuronParams_(self, v27, v16, v22, v26, a5, a6, a7, a8, a9, v18);

  return v28;
}

- (MLPConvolutionLayer)initWithName:(id)a3 inputLength:(unint64_t)a4 inputChannels:(unint64_t)a5 kernelWidth:(unint64_t)a6 kernelHeight:(unint64_t)a7 kernelStride:(unint64_t)a8 outputChannels:(unint64_t)a9 neuronType:(int)a10 neuronParams:(id)a11
{
  v17 = a3;
  v18 = a11;
  v50.receiver = self;
  v50.super_class = MLPConvolutionLayer;
  v19 = [(MLPImageLayer *)&v50 initWithLayerType:3 name:v17 neuronType:a10 neuronParams:v18];
  v22 = v19;
  if (v19)
  {
    objc_msgSend_setInputLength_(v19, v20, a4, v21);
    objc_msgSend_setInputChannels_(v22, v23, a5, v24);
    objc_msgSend_setKernelWidth_(v22, v25, a6, v26);
    objc_msgSend_setKernelHeight_(v22, v27, a7, v28);
    objc_msgSend_setKernelStride_(v22, v29, a8, v30);
    objc_msgSend_setOutputChannels_(v22, v31, a9, v32);
    v36 = objc_msgSend_inputLength(v22, v33, v34, v35);
    v40 = objc_msgSend_kernelWidth(v22, v37, v38, v39);
    v44 = objc_msgSend_kernelStride(v22, v41, v42, v43);
    v46 = objc_msgSend_computeOutputLengthWithInputLength_kernelWidth_kernelStride_(v22, v45, v36, v40, v44);
    objc_msgSend_setOutputLength_(v22, v47, v46, v48);
  }

  return v22;
}

- (MLPConvolutionLayer)initWithName:(id)a3 parameters:(id *)a4
{
  v6 = a3;
  v42.receiver = self;
  v42.super_class = MLPConvolutionLayer;
  v7 = [(MLPImageLayer *)&v42 initWithLayerType:3 name:v6 parameters:a4];
  v10 = v7;
  if (v7)
  {
    objc_msgSend_setInputLength_(v7, v8, a4->var9[0][0], v9);
    objc_msgSend_setInputChannels_(v10, v11, a4->var9[0][2], v12);
    objc_msgSend_setKernelWidth_(v10, v13, a4->var11[0], v14);
    objc_msgSend_setKernelHeight_(v10, v15, a4->var11[1], v16);
    objc_msgSend_setKernelStride_(v10, v17, a4->var11[2], v18);
    objc_msgSend_setOutputChannels_(v10, v19, a4->var10[0][0], v20);
    v24 = objc_msgSend_inputLength(v10, v21, v22, v23);
    v28 = objc_msgSend_kernelWidth(v10, v25, v26, v27);
    v32 = objc_msgSend_kernelStride(v10, v29, v30, v31);
    v34 = objc_msgSend_computeOutputLengthWithInputLength_kernelWidth_kernelStride_(v10, v33, v24, v28, v32);
    objc_msgSend_setOutputLength_(v10, v35, v34, v36);
    objc_msgSend_setInitialWeights_(v10, v37, a4->var13[0], v38);
    objc_msgSend_setInitialBias_(v10, v39, a4->var14[0], v40);
  }

  return v10;
}

- (void)updatePrimaryCurrentState:(id)a3 index:(id)a4 inference:(BOOL)a5
{
  batch = a3;
  v8 = a4;
  if (a5)
  {
    MPSStateBatchIncrementReadCount(batch, -1);
  }

  else
  {
    MPSStateBatchIncrementReadCount(batch, 1);
    v12 = objc_msgSend_primaryCurrentStates(self, v9, v10, v11);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v13, batch, v8);
  }
}

- (void)createKernel
{
  v5 = objc_msgSend_network(self, a2, v2, v3);
  v9 = objc_msgSend_deviceHandler(v5, v6, v7, v8);
  v134 = objc_msgSend_device(v9, v10, v11, v12);

  objc_msgSend_layerType(self, v13, v14, v15);
  v132 = objc_opt_class();
  objc_msgSend_layerType(self, v16, v17, v18);
  v130 = objc_opt_class();
  v133 = objc_msgSend_paddingWithMethod_(MEMORY[0x1E6974A10], v19, 0, v20);
  v24 = objc_msgSend_network(self, v21, v22, v23);
  v28 = objc_msgSend_optimizerParams(v24, v25, v26, v27);
  objc_msgSend_learningRate(v28, v29, v30, v31);
  v33 = v32;

  v131 = [MLPModelConvolutionDataSource alloc];
  v129 = objc_msgSend_kernelWidth(self, v34, v35, v36);
  v40 = objc_msgSend_kernelHeight(self, v37, v38, v39);
  v44 = objc_msgSend_inputChannels(self, v41, v42, v43);
  v48 = objc_msgSend_outputChannels(self, v45, v46, v47);
  v52 = objc_msgSend_kernelStride(self, v49, v50, v51);
  v56 = objc_msgSend_name(self, v53, v54, v55);
  v60 = objc_msgSend_initialWeights(self, v57, v58, v59);
  v64 = objc_msgSend_initialBias(self, v61, v62, v63);
  v68 = objc_msgSend_network(self, v65, v66, v67);
  v72 = objc_msgSend_deviceHandler(v68, v69, v70, v71);
  v136 = 841731191;
  v135 = 0x3F7FBE773F666666;
  v137 = v33;
  v74 = objc_msgSend_initWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_stride_kernelParamsBinaryName_initialWeights_initialBias_deviceHandler_optimizerOptions_(v131, v73, v129, v40, v44, v48, v52, v56, v60, v64, v72, &v135);

  objc_msgSend_setDataSource_(self, v75, v74, v76);
  v77 = [v132 alloc];
  v79 = objc_msgSend_initWithDevice_weights_(v77, v78, v134, v74);
  objc_msgSend_setPadding_(v79, v80, v133, v81);
  objc_msgSend_setForwardKernel_(self, v82, v79, v83);
  v84 = [v130 alloc];
  v86 = objc_msgSend_initWithDevice_weights_(v84, v85, v134, v74);
  objc_msgSend_setPadding_(v86, v87, v133, v88);
  objc_msgSend_setPrimaryGradientKernel_(self, v89, v86, v90);
  if (objc_msgSend_neuronType(self, v91, v92, v93))
  {
    v97 = MEMORY[0x1E6974A28];
    v98 = objc_msgSend_neuronType(self, v94, v95, v96);
    objc_msgSend_neuronA(self, v99, v100, v101);
    v103 = v102;
    objc_msgSend_neuronB(self, v104, v105, v106);
    v108 = v107;
    objc_msgSend_neuronC(self, v109, v110, v111);
    LODWORD(v113) = v112;
    LODWORD(v114) = v103;
    LODWORD(v115) = v108;
    v118 = objc_msgSend_cnnNeuronDescriptorWithType_a_b_c_(v97, v116, v98, v117, v114, v115, v113);
    v119 = objc_alloc(MEMORY[0x1E6974950]);
    v121 = objc_msgSend_initWithDevice_neuronDescriptor_(v119, v120, v134, v118);
    objc_msgSend_setSecondaryForwardKernel_(self, v122, v121, v123);

    v124 = objc_alloc(MEMORY[0x1E6974960]);
    v126 = objc_msgSend_initWithDevice_neuronDescriptor_(v124, v125, v134, v118);
    objc_msgSend_setSecondaryGradientKernel_(self, v127, v126, v128);
  }
}

- (id)forward:(id)a3 input:(id)a4 labels:(id)a5 runInference:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v14 = objc_msgSend_forwardKernel(self, v11, v12, v13);
  v18 = objc_msgSend_secondaryForwardKernel(self, v15, v16, v17);
  objc_msgSend_updateInputToFirstKernel_inference_(self, v19, v10, v6);
  v33 = 0;
  v21 = objc_msgSend_encodeBatchToCommandBuffer_sourceImages_destinationStates_destinationStateIsTemporary_(v14, v20, v9, v10, &v33, 1);
  v22 = v33;
  objc_msgSend_updatePrimaryCurrentState_inference_(self, v23, v22, v6);
  v24 = v21;

  v26 = v24;
  if (v18)
  {
    v31 = v14;
    objc_msgSend_updateInputToSecondKernel_inference_(self, v25, v24, v6);
    v32 = 0;
    v26 = objc_msgSend_encodeBatchToCommandBuffer_sourceImages_destinationStates_destinationStateIsTemporary_(v18, v27, v9, v24, &v32, 1);
    v28 = v32;
    objc_msgSend_updateSecondaryCurrentState_inference_(self, v29, v28, v6);

    v14 = v31;
  }

  return v26;
}

- (id)backward:(id)a3 inputGradient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = objc_msgSend_secondaryGradientKernel(self, v8, v9, v10);
  v15 = v7;
  if (v14)
  {
    v16 = objc_msgSend_inputToSecondKernel(self, v11, v12, v13);
    v20 = objc_msgSend_secondaryCurrentState(self, v17, v18, v19);
    v15 = objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_gradientStates_(v14, v21, v6, v7, v16, v20);
  }

  v22 = objc_msgSend_forwardKernel(self, v11, v12, v13);
  v26 = objc_msgSend_primaryGradientKernel(self, v23, v24, v25);
  v30 = objc_msgSend_inputToFirstKernel(self, v27, v28, v29);
  v34 = objc_msgSend_primaryCurrentState(self, v31, v32, v33);
  v68 = objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_gradientStates_(v26, v35, v6, v15, v30, v34);

  v39 = objc_msgSend_primaryCurrentState(self, v36, v37, v38);
  v42 = objc_msgSend_objectAtIndex_(v39, v40, 0, v41);
  v46 = objc_msgSend_dataSource(self, v43, v44, v45);
  v48 = objc_msgSend_updateWithCommandBuffer_gradientState_(v46, v47, v6, v42);

  v52 = objc_msgSend_dataSource(self, v49, v50, v51);
  v56 = objc_msgSend_state(v52, v53, v54, v55);
  objc_msgSend_reloadWeightsAndBiasesWithCommandBuffer_state_(v22, v57, v6, v56);

  v61 = objc_msgSend_dataSource(self, v58, v59, v60);
  v65 = objc_msgSend_state(v61, v62, v63, v64);
  objc_msgSend_reloadWeightsAndBiasesWithCommandBuffer_state_(v26, v66, v6, v65);

  return v68;
}

- (id)generateNode:(id)a3 model:(id)a4 weightIter:(unint64_t *)a5
{
  v8 = a3;
  v9 = a4;
  bzero(v95, 0x2C0uLL);
  v96 = 0;
  v95[4] = 0;
  v95[5] = 0;
  v95[0] = 11;
  if (objc_msgSend_neuronType(self, v10, v11, v12) == 1)
  {
    v16 = 5;
  }

  else
  {
    if (objc_msgSend_neuronType(self, v13, v14, v15) != 3)
    {
      goto LABEL_6;
    }

    v16 = 1;
  }

  v96 = v16;
LABEL_6:
  v17 = objc_msgSend_dataSource(self, v13, v14, v15);
  v21 = objc_msgSend_weightsInWHIOOrder(v17, v18, v19, v20);

  v25 = objc_msgSend_dataSource(self, v22, v23, v24);
  v29 = objc_msgSend_sizeWeights(v25, v26, v27, v28);
  v30 = sub_19D4363B8(v29);

  v31 = v21;
  v35 = objc_msgSend_bytes(v31, v32, v33, v34);
  v39 = objc_msgSend_dataSource(self, v36, v37, v38);
  v43 = objc_msgSend_sizeWeights(v39, v40, v41, v42);
  memcpy(v30, v35, 4 * v43);

  v105 = v30;
  v47 = objc_msgSend_dataSource(self, v44, v45, v46);
  v51 = objc_msgSend_sizeBias(v47, v48, v49, v50);
  v52 = sub_19D4363B8(v51);

  v56 = objc_msgSend_dataSource(self, v53, v54, v55);
  v60 = objc_msgSend_biasBuffer(v56, v57, v58, v59);
  v61 = v60;
  v65 = objc_msgSend_contents(v61, v62, v63, v64);
  v69 = objc_msgSend_dataSource(self, v66, v67, v68);
  v73 = objc_msgSend_sizeBias(v69, v70, v71, v72);
  memcpy(v52, v65, 4 * v73);

  v106 = v52;
  v97 = objc_msgSend_inputLength(self, v74, v75, v76);
  v98 = 1;
  v99 = objc_msgSend_inputChannels(self, v77, v78, v79);
  v100 = objc_msgSend_outputChannels(self, v80, v81, v82);
  v101 = objc_msgSend_kernelWidth(self, v83, v84, v85);
  v102 = objc_msgSend_kernelHeight(self, v86, v87, v88);
  v103 = objc_msgSend_kernelStride(self, v89, v90, v91);
  v104 = 1;
  v93 = objc_msgSend_generateNode_model_weightIter_params_(self, v92, v8, v9, a5, v95);

  return v93;
}

@end