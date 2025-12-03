@interface MLPPoolingLayer
- (MLPPoolingLayer)initWithName:(id)name inputLength:(unint64_t)length inputChannels:(unint64_t)channels kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height kernelStride:(unint64_t)stride;
- (MLPPoolingLayer)initWithName:(id)name parameters:(id *)parameters;
- (MLPPoolingLayer)initWithName:(id)name previousLayer:(id)layer kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height kernelStride:(unint64_t)stride;
- (id)backward:(id)backward inputGradient:(id)gradient;
- (id)forward:(id)forward input:(id)input labels:(id)labels runInference:(BOOL)inference;
- (id)generateNode:(id)node model:(id)model weightIter:(unint64_t *)iter;
- (void)createKernel;
@end

@implementation MLPPoolingLayer

- (MLPPoolingLayer)initWithName:(id)name previousLayer:(id)layer kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height kernelStride:(unint64_t)stride
{
  nameCopy = name;
  layerCopy = layer;
  v17 = objc_msgSend_outputLength(layerCopy, v14, v15, v16);
  v21 = objc_msgSend_outputChannels(layerCopy, v18, v19, v20);
  v23 = objc_msgSend_initWithName_inputLength_inputChannels_kernelWidth_kernelHeight_kernelStride_(self, v22, nameCopy, v17, v21, width, height, stride);

  return v23;
}

- (MLPPoolingLayer)initWithName:(id)name inputLength:(unint64_t)length inputChannels:(unint64_t)channels kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height kernelStride:(unint64_t)stride
{
  nameCopy = name;
  v46.receiver = self;
  v46.super_class = MLPPoolingLayer;
  v15 = [(MLPImageLayer *)&v46 initWithLayerType:5 name:nameCopy neuronType:0 neuronParams:0];
  v18 = v15;
  if (v15)
  {
    objc_msgSend_setInputLength_(v15, v16, length, v17);
    objc_msgSend_setInputChannels_(v18, v19, channels, v20);
    objc_msgSend_setKernelWidth_(v18, v21, width, v22);
    objc_msgSend_setKernelHeight_(v18, v23, height, v24);
    objc_msgSend_setKernelStride_(v18, v25, stride, v26);
    objc_msgSend_setOutputChannels_(v18, v27, channels, v28);
    v32 = objc_msgSend_inputLength(v18, v29, v30, v31);
    v36 = objc_msgSend_kernelWidth(v18, v33, v34, v35);
    v40 = objc_msgSend_kernelStride(v18, v37, v38, v39);
    v42 = objc_msgSend_computeOutputLengthWithInputLength_kernelWidth_kernelStride_(v18, v41, v32, v36, v40);
    objc_msgSend_setOutputLength_(v18, v43, v42, v44);
  }

  return v18;
}

- (MLPPoolingLayer)initWithName:(id)name parameters:(id *)parameters
{
  nameCopy = name;
  v38.receiver = self;
  v38.super_class = MLPPoolingLayer;
  v7 = [(MLPImageLayer *)&v38 initWithLayerType:5 name:nameCopy parameters:parameters];
  v10 = v7;
  if (v7)
  {
    objc_msgSend_setInputLength_(v7, v8, parameters->var9[0][0], v9);
    objc_msgSend_setInputChannels_(v10, v11, parameters->var9[0][2], v12);
    objc_msgSend_setKernelWidth_(v10, v13, parameters->var11[0], v14);
    objc_msgSend_setKernelHeight_(v10, v15, parameters->var11[1], v16);
    objc_msgSend_setKernelStride_(v10, v17, parameters->var11[2], v18);
    objc_msgSend_setOutputChannels_(v10, v19, parameters->var10[0][0], v20);
    v24 = objc_msgSend_inputLength(v10, v21, v22, v23);
    v28 = objc_msgSend_kernelWidth(v10, v25, v26, v27);
    v32 = objc_msgSend_kernelStride(v10, v29, v30, v31);
    v34 = objc_msgSend_computeOutputLengthWithInputLength_kernelWidth_kernelStride_(v10, v33, v24, v28, v32);
    objc_msgSend_setOutputLength_(v10, v35, v34, v36);
  }

  return v10;
}

- (void)createKernel
{
  v5 = objc_msgSend_network(self, a2, v2, v3);
  v9 = objc_msgSend_deviceHandler(v5, v6, v7, v8);
  v62 = objc_msgSend_device(v9, v10, v11, v12);

  v15 = objc_msgSend_paddingWithMethod_(MEMORY[0x1E6974A10], v13, 0, v14);
  v16 = objc_alloc(MEMORY[0x1E69749C0]);
  v20 = objc_msgSend_kernelWidth(self, v17, v18, v19);
  v24 = objc_msgSend_kernelHeight(self, v21, v22, v23);
  v28 = objc_msgSend_kernelStride(self, v25, v26, v27);
  v32 = objc_msgSend_kernelStride(self, v29, v30, v31);
  v34 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_(v16, v33, v62, v20, v24, v28, v32);
  objc_msgSend_setPadding_(v34, v35, v15, v36);
  objc_msgSend_setForwardKernel_(self, v37, v34, v38);
  v39 = objc_alloc(MEMORY[0x1E69749C8]);
  v43 = objc_msgSend_kernelWidth(self, v40, v41, v42);
  v47 = objc_msgSend_kernelHeight(self, v44, v45, v46);
  v51 = objc_msgSend_kernelStride(self, v48, v49, v50);
  v55 = objc_msgSend_kernelStride(self, v52, v53, v54);
  v57 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_(v39, v56, v62, v43, v47, v51, v55);
  objc_msgSend_setPadding_(v57, v58, v15, v59);
  objc_msgSend_setPrimaryGradientKernel_(self, v60, v57, v61);
}

- (id)forward:(id)forward input:(id)input labels:(id)labels runInference:(BOOL)inference
{
  inferenceCopy = inference;
  forwardCopy = forward;
  inputCopy = input;
  v14 = objc_msgSend_forwardKernel(self, v11, v12, v13);
  objc_msgSend_updateInputToFirstKernel_inference_(self, v15, inputCopy, inferenceCopy);
  v21 = 0;
  v17 = objc_msgSend_encodeBatchToCommandBuffer_sourceImages_destinationStates_destinationStateIsTemporary_(v14, v16, forwardCopy, inputCopy, &v21, 1);
  v18 = v21;
  objc_msgSend_updatePrimaryCurrentState_inference_(self, v19, v18, inferenceCopy);

  return v17;
}

- (id)backward:(id)backward inputGradient:(id)gradient
{
  backwardCopy = backward;
  gradientCopy = gradient;
  v11 = objc_msgSend_primaryGradientKernel(self, v8, v9, v10);
  v15 = objc_msgSend_inputToFirstKernel(self, v12, v13, v14);
  v19 = objc_msgSend_primaryCurrentState(self, v16, v17, v18);
  v21 = objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_gradientStates_(v11, v20, backwardCopy, gradientCopy, v15, v19);

  return v21;
}

- (id)generateNode:(id)node model:(id)model weightIter:(unint64_t *)iter
{
  nodeCopy = node;
  modelCopy = model;
  bzero(v31, 0x2C0uLL);
  v31[7] = 0;
  v31[4] = 0;
  v31[5] = 0;
  v32 = objc_msgSend_inputLength(self, v10, v11, v12, 12);
  v33 = 1;
  v34 = objc_msgSend_inputChannels(self, v13, v14, v15);
  v35 = objc_msgSend_outputChannels(self, v16, v17, v18);
  v36 = objc_msgSend_kernelWidth(self, v19, v20, v21);
  v37 = objc_msgSend_kernelHeight(self, v22, v23, v24);
  v38 = objc_msgSend_kernelStride(self, v25, v26, v27);
  v39 = 1;
  v29 = objc_msgSend_generateNode_model_weightIter_params_(self, v28, nodeCopy, modelCopy, iter, v31);

  return v29;
}

@end