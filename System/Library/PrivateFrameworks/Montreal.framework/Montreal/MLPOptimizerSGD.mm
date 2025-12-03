@interface MLPOptimizerSGD
- (MLPOptimizerSGD)initWithNetwork:(id)network momentum:(id)momentum;
- (void)encodeToCommandBuffer:(id)buffer inputGradientVector:(id)vector inputValuesVector:(id)valuesVector;
- (void)updateLearningRate:(float)rate;
@end

@implementation MLPOptimizerSGD

- (MLPOptimizerSGD)initWithNetwork:(id)network momentum:(id)momentum
{
  networkCopy = network;
  momentumCopy = momentum;
  v11 = objc_msgSend_deviceHandler(networkCopy, v8, v9, v10);
  v15 = objc_msgSend_device(v11, v12, v13, v14);

  v19 = objc_msgSend_optimizerParams(networkCopy, v16, v17, v18);
  v20 = MEMORY[0x1E6974A38];
  v24 = objc_msgSend_optimizerParams(networkCopy, v21, v22, v23);
  objc_msgSend_learningRate(v24, v25, v26, v27);
  v30 = objc_msgSend_optimizerDescriptorWithLearningRate_gradientRescale_regularizationType_regularizationScale_(v20, v28, 0, v29);

  v37 = objc_msgSend_gradientClipMin(v19, v31, v32, v33);
  if (v37)
  {
    v38 = objc_msgSend_gradientClipMax(v19, v34, v35, v36);

    if (v38)
    {
      objc_msgSend_setApplyGradientClipping_(v30, v39, 1, v40);
      v44 = objc_msgSend_gradientClipMin(v19, v41, v42, v43);
      objc_msgSend_floatValue(v44, v45, v46, v47);
      objc_msgSend_setGradientClipMin_(v30, v48, v49, v50);

      v54 = objc_msgSend_gradientClipMax(v19, v51, v52, v53);
      objc_msgSend_floatValue(v54, v55, v56, v57);
      objc_msgSend_setGradientClipMax_(v30, v58, v59, v60);
    }
  }

  v61 = objc_alloc(MEMORY[0x1E6974A40]);
  v65 = objc_msgSend_optimizerParams(networkCopy, v62, v63, v64);
  objc_msgSend_momentum(v65, v66, v67, v68);
  v70 = objc_msgSend_initWithDevice_momentumScale_useNestrovMomentum_optimizerDescriptor_(v61, v69, v15, 0, v30);

  v84.receiver = self;
  v84.super_class = MLPOptimizerSGD;
  v74 = [(MLPOptimizer *)&v84 initWithNetwork:networkCopy mpsOptimizer:v70];
  if (v74)
  {
    v75 = objc_msgSend_optimizerParams(networkCopy, v71, v72, v73);
    objc_msgSend_momentum(v75, v76, v77, v78);
    v80 = v79;

    if (v80 > 0.0)
    {
      v81 = momentumCopy[2](momentumCopy);
      momentum = v74->_momentum;
      v74->_momentum = v81;
    }
  }

  return v74;
}

- (void)encodeToCommandBuffer:(id)buffer inputGradientVector:(id)vector inputValuesVector:(id)valuesVector
{
  bufferCopy = buffer;
  vectorCopy = vector;
  valuesVectorCopy = valuesVector;
  v13 = objc_msgSend_mpsOptimizer(self, v10, v11, v12);
  v17 = objc_msgSend_momentum(self, v14, v15, v16);
  objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_resultValuesVector_(v13, v18, bufferCopy, vectorCopy, valuesVectorCopy, v17, valuesVectorCopy);
}

- (void)updateLearningRate:(float)rate
{
  v10 = objc_msgSend_mpsOptimizer(self, a2, v3, v4);
  *&v6 = rate;
  objc_msgSend_setLearningRate_(v10, v7, v8, v9, v6);
}

@end