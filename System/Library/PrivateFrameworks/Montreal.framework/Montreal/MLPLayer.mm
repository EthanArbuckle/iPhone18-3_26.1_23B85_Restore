@interface MLPLayer
+ (id)layerWithMontrealNode:(id)node modelContainer:(void *)container;
- (MLPLayer)initWithLayerType:(unint64_t)type name:(id)name neuronType:(int)neuronType neuronParams:(id)params;
- (MLPLayer)initWithLayerType:(unint64_t)type name:(id)name parameters:(id *)parameters;
- (MLPLayer)initWithName:(id)name parameters:(id *)parameters;
- (MLPLayer)nextLayer;
- (MLPLayer)previousLayer;
- (MLPNetwork)network;
- (id)backward:(id)backward inputGradient:(id)gradient;
- (id)forward:(id)forward input:(id)input labels:(id)labels runInference:(BOOL)inference;
- (id)generateNode:(id)node model:(id)model weightIter:(unint64_t *)iter;
- (id)generateNode:(id)node model:(id)model weightIter:(unint64_t *)iter params:(id *)params inputChunks:(id)chunks outputChunks:(id)outputChunks;
- (id)seqBackward:(id)backward dataBatch:(id)batch inputGradient:(id)gradient;
- (id)seqForward:(id)forward input:(id)input dataBatch:(id)batch runInference:(BOOL)inference;
- (int)mpsNeuronTypeFromMontrealType:(int64_t)type;
- (int64_t)montrealTypeFromMPSNeuronType:(int)type;
- (void)createKernel;
- (void)printMatrix:(id)matrix name:(id)name cmdBuf:(id)buf;
- (void)updatePreviousLayer:(id)layer nextLayer:(id)nextLayer network:(id)network;
@end

@implementation MLPLayer

- (MLPLayer)initWithLayerType:(unint64_t)type name:(id)name neuronType:(int)neuronType neuronParams:(id)params
{
  nameCopy = name;
  paramsCopy = params;
  v42.receiver = self;
  v42.super_class = MLPLayer;
  v13 = [(MLPLayer *)&v42 init];
  v14 = v13;
  if (v13)
  {
    v13->_layerType = type;
    objc_storeStrong(&v13->_name, name);
    v14->_neuronType = neuronType;
    if (objc_msgSend_count(paramsCopy, v15, v16, v17))
    {
      v21 = objc_msgSend_objectAtIndexedSubscript_(paramsCopy, v18, 0, v20);
      objc_msgSend_floatValue(v21, v22, v23, v24);
      v14->_neuronA = v25;
    }

    if (objc_msgSend_count(paramsCopy, v18, v19, v20) >= 2)
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(paramsCopy, v26, 1, v28);
      objc_msgSend_floatValue(v29, v30, v31, v32);
      v14->_neuronB = v33;
    }

    if (objc_msgSend_count(paramsCopy, v26, v27, v28) >= 3)
    {
      v36 = objc_msgSend_objectAtIndexedSubscript_(paramsCopy, v34, 2, v35);
      objc_msgSend_floatValue(v36, v37, v38, v39);
      v14->_neuronC = v40;
    }
  }

  return v14;
}

- (MLPLayer)initWithLayerType:(unint64_t)type name:(id)name parameters:(id *)parameters
{
  nameCopy = name;
  v11 = objc_msgSend_mpsNeuronTypeFromMontrealType_(self, v9, parameters->var7[0], v10);
  v13 = objc_msgSend_initWithLayerType_name_neuronType_neuronParams_(self, v12, type, nameCopy, v11, 0);

  return v13;
}

- (MLPLayer)initWithName:(id)name parameters:(id *)parameters
{
  nameCopy = name;
  v6 = MEMORY[0x1E695DF30];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v11 = objc_msgSend_stringWithFormat_(v7, v9, @"You must override %@ in a subclass", v10, v8);
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v12, *MEMORY[0x1E695D930], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

+ (id)layerWithMontrealNode:(id)node modelContainer:(void *)container
{
  nodeCopy = node;
  v8 = nodeCopy;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  memset(v50, 0, sizeof(v50));
  if (!nodeCopy)
  {
    bzero(v50, 0x2C0uLL);
    goto LABEL_8;
  }

  objc_msgSend_parameters_(nodeCopy, v6, container, v7);
  v9 = 0;
  if (*&v50[0] <= 4)
  {
    if (*&v50[0])
    {
      if (*&v50[0] == 2)
      {
        if (*(&v51 + 1) == 6)
        {
          v42 = [MLPDropoutLayer alloc];
          v14 = objc_msgSend_name(v8, v43, v44, v45);
          v16 = objc_msgSend_initWithName_parameters_(v42, v46, v14, v50);
        }

        else
        {
          if (*(&v51 + 1) != 4)
          {
            v9 = 0;
            goto LABEL_24;
          }

          v37 = [MLPLossLayer alloc];
          v14 = objc_msgSend_name(v8, v38, v39, v40);
          v16 = objc_msgSend_initWithName_parameters_(v37, v41, v14, v50);
        }

        goto LABEL_22;
      }

      if (*&v50[0] != 4)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

LABEL_8:
    v17 = [MLPDenseLayer alloc];
    v14 = objc_msgSend_name(v8, v18, v19, v20);
    v16 = objc_msgSend_initWithName_parameters_(v17, v21, v14, v50);
    goto LABEL_22;
  }

  if (*&v50[0] <= 11)
  {
    if (*&v50[0] == 5)
    {
      v27 = [MLPLSTMLayer alloc];
      v14 = objc_msgSend_name(v8, v28, v29, v30);
      v16 = objc_msgSend_initWithName_parameters_(v27, v31, v14, v50);
    }

    else
    {
      if (*&v50[0] != 11)
      {
        goto LABEL_24;
      }

      v10 = [MLPConvolutionLayer alloc];
      v14 = objc_msgSend_name(v8, v11, v12, v13);
      v16 = objc_msgSend_initWithName_parameters_(v10, v15, v14, v50);
    }

    goto LABEL_22;
  }

  if (*&v50[0] != 12)
  {
    if (*&v50[0] != 23)
    {
      goto LABEL_24;
    }

LABEL_15:
    v22 = [MLPEmbeddingLayer alloc];
    v14 = objc_msgSend_name(v8, v23, v24, v25);
    v16 = objc_msgSend_initWithName_parameters_(v22, v26, v14, v50);
    goto LABEL_22;
  }

  v32 = [MLPPoolingLayer alloc];
  v14 = objc_msgSend_name(v8, v33, v34, v35);
  v16 = objc_msgSend_initWithName_parameters_(v32, v36, v14, v50);
LABEL_22:
  v9 = v16;

  if (v9)
  {
    objc_msgSend_setNode_(v9, v47, v8, v48);
  }

LABEL_24:

  return v9;
}

- (id)forward:(id)forward input:(id)input labels:(id)labels runInference:(BOOL)inference
{
  forwardCopy = forward;
  inputCopy = input;
  labelsCopy = labels;
  v12 = MEMORY[0x1E695DF30];
  v13 = MEMORY[0x1E696AEC0];
  v14 = NSStringFromSelector(a2);
  v17 = objc_msgSend_stringWithFormat_(v13, v15, @"You must override %@ in a subclass", v16, v14);
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v18, *MEMORY[0x1E695D930], v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (id)backward:(id)backward inputGradient:(id)gradient
{
  backwardCopy = backward;
  gradientCopy = gradient;
  v8 = MEMORY[0x1E695DF30];
  v9 = MEMORY[0x1E696AEC0];
  v10 = NSStringFromSelector(a2);
  v13 = objc_msgSend_stringWithFormat_(v9, v11, @"You must override %@ in a subclass", v12, v10);
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v8, v14, *MEMORY[0x1E695D930], v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (id)seqForward:(id)forward input:(id)input dataBatch:(id)batch runInference:(BOOL)inference
{
  forwardCopy = forward;
  inputCopy = input;
  batchCopy = batch;
  v12 = MEMORY[0x1E695DF30];
  v13 = MEMORY[0x1E696AEC0];
  v14 = NSStringFromSelector(a2);
  v17 = objc_msgSend_stringWithFormat_(v13, v15, @"You must override %@ in a subclass", v16, v14);
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v18, *MEMORY[0x1E695D930], v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (id)seqBackward:(id)backward dataBatch:(id)batch inputGradient:(id)gradient
{
  backwardCopy = backward;
  batchCopy = batch;
  gradientCopy = gradient;
  v11 = MEMORY[0x1E695DF30];
  v12 = MEMORY[0x1E696AEC0];
  v13 = NSStringFromSelector(a2);
  v16 = objc_msgSend_stringWithFormat_(v12, v14, @"You must override %@ in a subclass", v15, v13);
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x1E695D930], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (id)generateNode:(id)node model:(id)model weightIter:(unint64_t *)iter
{
  nodeCopy = node;
  modelCopy = model;
  v9 = MEMORY[0x1E695DF30];
  v10 = MEMORY[0x1E696AEC0];
  v11 = NSStringFromSelector(a2);
  v14 = objc_msgSend_stringWithFormat_(v10, v12, @"You must override %@ in a subclass", v13, v11);
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v15, *MEMORY[0x1E695D930], v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (id)generateNode:(id)node model:(id)model weightIter:(unint64_t *)iter params:(id *)params inputChunks:(id)chunks outputChunks:(id)outputChunks
{
  nodeCopy = node;
  modelCopy = model;
  chunksCopy = chunks;
  outputChunksCopy = outputChunks;
  v18 = [MontrealNNGenerateNode alloc];
  v22 = objc_msgSend_weightFormat(modelCopy, v19, v20, v21);
  v24 = objc_msgSend_initWithParameters_weightDataFormat_(v18, v23, params, v22);
  v26 = objc_msgSend_createInputs_inputChunks_nodeName_(MontrealNNModelTensor, v25, params, chunksCopy, nodeCopy);
  v28 = objc_msgSend_createOutputs_outputChunks_nodeName_(MontrealNNModelTensor, v27, params, outputChunksCopy, nodeCopy);
  objc_msgSend_addInputs_(modelCopy, v29, v26, v30);
  objc_msgSend_addOutputs_(modelCopy, v31, v28, v32);
  v36 = objc_msgSend_node(self, v33, v34, v35);
  *iter = objc_msgSend_generateNode_node_weightIter_inputs_outputs_(v24, v37, nodeCopy, v36, *iter, v26, v28);

  return v24;
}

- (void)createKernel
{
  v2 = MEMORY[0x1E695DF30];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(a2);
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"You must override %@ in a subclass", v6, v4);
  v9 = objc_msgSend_exceptionWithName_reason_userInfo_(v2, v8, *MEMORY[0x1E695D930], v7, 0);
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)updatePreviousLayer:(id)layer nextLayer:(id)nextLayer network:(id)network
{
  layerCopy = layer;
  nextLayerCopy = nextLayer;
  networkCopy = network;
  objc_msgSend_setPreviousLayer_(self, v10, layerCopy, v11);
  objc_msgSend_setNextLayer_(self, v12, nextLayerCopy, v13);
  objc_msgSend_setNetwork_(self, v14, networkCopy, v15);
}

- (void)printMatrix:(id)matrix name:(id)name cmdBuf:(id)buf
{
  matrixCopy = matrix;
  nameCopy = name;
  bufCopy = buf;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = objc_msgSend_network(self, v11, v12, v13);
    v18 = objc_msgSend_deviceHandler(v14, v15, v16, v17);
    v22 = objc_msgSend_data(matrixCopy, v19, v20, v21);
    objc_msgSend_importDataFromGPU_cmdBuf_(v18, v23, v22, bufCopy);

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19D391EE0;
    v26[3] = &unk_1E7626AC0;
    v27 = matrixCopy;
    v28 = nameCopy;
    objc_msgSend_addCompletedHandler_(bufCopy, v24, v26, v25);
  }
}

- (int)mpsNeuronTypeFromMontrealType:(int64_t)type
{
  if (type >= 9 || ((0x177u >> type) & 1) == 0)
  {
    sub_19D2C78CC(@"Cannot translate Montreal Activation type to MPS: %tu", a2, type, v3, v4, v5, v6, v7, type);
  }

  return dword_19D475B30[type];
}

- (int64_t)montrealTypeFromMPSNeuronType:(int)type
{
  if (type >= 6 || ((0x3Bu >> type) & 1) == 0)
  {
    sub_19D2C78CC(@"Cannot translate MPS Activation type to Montreal: %d", a2, *&type, v3, v4, v5, v6, v7, *&type);
  }

  return qword_19D475B58[type];
}

- (MLPLayer)previousLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_previousLayer);

  return WeakRetained;
}

- (MLPLayer)nextLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_nextLayer);

  return WeakRetained;
}

- (MLPNetwork)network
{
  WeakRetained = objc_loadWeakRetained(&self->_network);

  return WeakRetained;
}

@end