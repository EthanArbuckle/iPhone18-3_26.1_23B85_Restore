@interface MLPModelConvolutionDataSource
- (BOOL)load;
- (MLPModelConvolutionDataSource)initWithKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 inputFeatureChannels:(unint64_t)a5 outputFeatureChannels:(unint64_t)a6 stride:(unint64_t)a7 kernelParamsBinaryName:(id)a8 initialWeights:(const void *)a9 initialBias:(const void *)a10 deviceHandler:(id)a11 optimizerOptions:(MLPModelOptimizerOptions)a12;
- (MLPModelOptimizerOptions)optimizerOptions;
- (NSData)weightsInWHIOOrder;
- (float)biasTerms;
- (id)updateWithCommandBuffer:(id)a3 gradientState:(id)a4;
- (id)updateWithCommandBuffer:(id)a3 gradientState:(id)a4 sourceState:(id)a5;
- (void)bootstrapBias:(id *)a3 length:(unint64_t)a4 device:(id)a5 stdDev:(float)a6 values:(const void *)a7;
- (void)bootstrapBuffer:(id)a3 length:(unint64_t)a4 device:(id)a5 stdDev:(float)a6;
- (void)bootstrapWeights:(id *)a3 length:(unint64_t)a4 device:(id)a5 stdDev:(float)a6 values:(const void *)a7;
- (void)weights;
@end

@implementation MLPModelConvolutionDataSource

- (MLPModelConvolutionDataSource)initWithKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 inputFeatureChannels:(unint64_t)a5 outputFeatureChannels:(unint64_t)a6 stride:(unint64_t)a7 kernelParamsBinaryName:(id)a8 initialWeights:(const void *)a9 initialBias:(const void *)a10 deviceHandler:(id)a11 optimizerOptions:(MLPModelOptimizerOptions)a12
{
  v19 = a8;
  v113 = a11;
  v114.receiver = self;
  v114.super_class = MLPModelConvolutionDataSource;
  v20 = [(MLPModelConvolutionDataSource *)&v114 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_deviceHandler, a11);
    v21->_optimizerOptions = *v115;
    v21->_outputFeatureChannels = a6;
    v21->_inputFeatureChannels = a5;
    v21->_kernelHeight = a4;
    v21->_kernelWidth = a3;
    objc_storeStrong(&v21->_kernelParamsBinaryName, a8);
    v21->_initialWeights = a9;
    v21->_initialBias = a10;
    v23 = objc_msgSend_cnnConvolutionDescriptorWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(MEMORY[0x1E69748E8], v22, a3, a4, a5, a6);
    convDesc = v21->_convDesc;
    v21->_convDesc = v23;

    objc_msgSend_setStrideInPixelsX_(v21->_convDesc, v25, a7, v26);
    objc_msgSend_setStrideInPixelsY_(v21->_convDesc, v27, 1, v28);
    outputFeatureChannels = v21->_outputFeatureChannels;
    v30 = v21->_inputFeatureChannels * outputFeatureChannels * v21->_kernelHeight * v21->_kernelWidth;
    v21->_sizeBias = outputFeatureChannels;
    v21->_sizeWeights = v30;
    *&v31 = v21->_optimizerOptions.learningRate;
    LODWORD(v32) = 925353388;
    LODWORD(v33) = 1.0;
    v36 = objc_msgSend_optimizerDescriptorWithLearningRate_gradientRescale_regularizationType_regularizationScale_(MEMORY[0x1E6974A38], v34, 0, v35, v31, v33, v32);
    v37 = objc_alloc(MEMORY[0x1E6974A30]);
    v41 = objc_msgSend_deviceHandler(v21, v38, v39, v40);
    v45 = objc_msgSend_device(v41, v42, v43, v44);
    *&v46 = v21->_optimizerOptions.adamEpsilon;
    v48 = objc_msgSend_initWithDevice_beta1_beta2_epsilon_timeStep_optimizerDescriptor_(v37, v47, v45, 0, v36, v21->_optimizerOptions.adamBeta1, v21->_optimizerOptions.adamBeta2, v46);
    optimizer = v21->_optimizer;
    v21->_optimizer = v48;

    sizeWeights = v21->_sizeWeights;
    v54 = objc_msgSend_deviceHandler(v21, v51, v52, v53);
    v58 = objc_msgSend_device(v54, v55, v56, v57);
    v62 = objc_msgSend_initialWeights(v21, v59, v60, v61);
    LODWORD(v63) = 1017370378;
    objc_msgSend_bootstrapWeights_length_device_stdDev_values_(v21, v64, &v21->_weightBuffer, sizeWeights, v58, v62, v63);

    sizeBias = v21->_sizeBias;
    v69 = objc_msgSend_deviceHandler(v21, v66, v67, v68);
    v73 = objc_msgSend_device(v69, v70, v71, v72);
    v77 = objc_msgSend_initialBias(v21, v74, v75, v76);
    objc_msgSend_bootstrapBias_length_device_stdDev_values_(v21, v78, &v21->_biasBuffer, sizeBias, v73, v77, 0.0);

    v79 = objc_alloc(MEMORY[0x1E6974900]);
    v81 = objc_msgSend_initWithWeights_biases_(v79, v80, v21->_weightBuffer, v21->_biasBuffer);
    state = v21->_state;
    v21->_state = v81;

    v86 = objc_msgSend_deviceHandler(v21, v83, v84, v85);
    v88 = objc_msgSend_biasVectorWithLength_stdDev_values_(v86, v87, v21->_sizeWeights, 0, 0.0);
    weightMomentumVector = v21->_weightMomentumVector;
    v21->_weightMomentumVector = v88;

    v93 = objc_msgSend_deviceHandler(v21, v90, v91, v92);
    v95 = objc_msgSend_biasVectorWithLength_stdDev_values_(v93, v94, v21->_sizeWeights, 0, 0.0);
    weightVelocityVector = v21->_weightVelocityVector;
    v21->_weightVelocityVector = v95;

    v100 = objc_msgSend_deviceHandler(v21, v97, v98, v99);
    v102 = objc_msgSend_biasVectorWithLength_stdDev_values_(v100, v101, v21->_sizeBias, 0, 0.0);
    biasMomentumVector = v21->_biasMomentumVector;
    v21->_biasMomentumVector = v102;

    v107 = objc_msgSend_deviceHandler(v21, v104, v105, v106);
    v109 = objc_msgSend_biasVectorWithLength_stdDev_values_(v107, v108, v21->_sizeBias, 0, 0.0);
    biasVelocityVector = v21->_biasVelocityVector;
    v21->_biasVelocityVector = v109;

    v111 = v21;
  }

  return v21;
}

- (void)weights
{
  v4 = objc_msgSend_weightBuffer(self, a2, v2, v3);
  v5 = v4;
  v9 = objc_msgSend_contents(v5, v6, v7, v8);

  return v9;
}

- (void)bootstrapBuffer:(id)a3 length:(unint64_t)a4 device:(id)a5 stdDev:(float)a6
{
  v9 = a3;
  v10 = v9;
  v17 = objc_msgSend_contents(v10, v11, v12, v13);
  if (a6 <= 0.0)
  {
    v20 = objc_msgSend_length(v9, v14, v15, v16);
    bzero(v17, v20);
  }

  else
  {
    LODWORD(v21) = 0;
    *(&v21 + 1) = a6;
    for (i = 0; a4; --a4)
    {
      v18 = objc_msgSend_deviceHandler(self, v14, v15, v16, v21);
      v19 = sub_19D36472C(&v21, v18 + 8, &v21);

      *v17++ = v19;
    }
  }
}

- (void)bootstrapWeights:(id *)a3 length:(unint64_t)a4 device:(id)a5 stdDev:(float)a6 values:(const void *)a7
{
  v36 = a5;
  v13 = objc_msgSend_newBufferWithLength_options_(v36, v12, 4 * a4, 0);
  v14 = *a3;
  *a3 = v13;

  v15 = *a3;
  v19 = objc_msgSend_contents(v15, v16, v17, v18);
  if (a7)
  {
    outputFeatureChannels = self->_outputFeatureChannels;
    if (outputFeatureChannels)
    {
      kernelHeight = self->_kernelHeight;
      if (kernelHeight)
      {
        kernelWidth = self->_kernelWidth;
        if (kernelWidth)
        {
          inputFeatureChannels = self->_inputFeatureChannels;
          if (inputFeatureChannels)
          {
            for (i = 0; i != outputFeatureChannels; ++i)
            {
              v27 = 0;
              v28 = a7;
              v29 = v19;
              do
              {
                v30 = 0;
                v31 = v28;
                v32 = v29;
                do
                {
                  v33 = v31;
                  v34 = v32;
                  v35 = inputFeatureChannels;
                  do
                  {
                    *v34++ = *v33;
                    v33 += kernelHeight * kernelWidth;
                    --v35;
                  }

                  while (v35);
                  ++v30;
                  v32 += inputFeatureChannels;
                  ++v31;
                }

                while (v30 != kernelWidth);
                ++v27;
                v29 += 4 * kernelWidth * inputFeatureChannels;
                v28 += 4 * kernelWidth;
              }

              while (v27 != kernelHeight);
              v19 += 4 * kernelWidth * inputFeatureChannels * kernelHeight;
              a7 = a7 + 4 * kernelHeight * kernelWidth * inputFeatureChannels;
            }
          }
        }
      }
    }
  }

  else
  {
    *&v21 = a6;
    objc_msgSend_bootstrapBuffer_length_device_stdDev_(self, v20, *a3, a4, v36, v21);
  }
}

- (void)bootstrapBias:(id *)a3 length:(unint64_t)a4 device:(id)a5 stdDev:(float)a6 values:(const void *)a7
{
  v26 = a5;
  v13 = objc_msgSend_newBufferWithLength_options_(v26, v12, 4 * a4, 0);
  v14 = *a3;
  *a3 = v13;

  v15 = *a3;
  v19 = objc_msgSend_contents(v15, v16, v17, v18);
  v23 = *a3;
  if (a7)
  {
    v24 = v19;
    v25 = objc_msgSend_length(*a3, v20, v23, v21);
    memcpy(v24, a7, v25);
  }

  else
  {
    *&v22 = a6;
    objc_msgSend_bootstrapBuffer_length_device_stdDev_(self, v20, v23, a4, v26, v22);
  }
}

- (NSData)weightsInWHIOOrder
{
  v5 = objc_msgSend_sizeWeights(self, a2, v2, v3);
  if (v5)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  objc_msgSend_load(self, v6, v7, v8);
  v12 = objc_msgSend_weights(self, v9, v10, v11);
  outputFeatureChannels = self->_outputFeatureChannels;
  if (outputFeatureChannels)
  {
    kernelHeight = self->_kernelHeight;
    if (kernelHeight)
    {
      kernelWidth = self->_kernelWidth;
      if (kernelWidth)
      {
        inputFeatureChannels = self->_inputFeatureChannels;
        if (inputFeatureChannels)
        {
          v18 = 0;
          v13 = (4 * inputFeatureChannels);
          v19 = 0;
          do
          {
            v20 = 0;
            v21 = v12;
            v22 = v19;
            do
            {
              v23 = 0;
              v24 = v21;
              v25 = v22;
              do
              {
                v26 = v24;
                v27 = v25;
                v28 = inputFeatureChannels;
                do
                {
                  v29 = *v26++;
                  *v27 = v29;
                  v27 += kernelHeight * kernelWidth;
                  --v28;
                }

                while (v28);
                ++v23;
                ++v25;
                v24 += v13;
              }

              while (v23 != kernelWidth);
              ++v20;
              v22 += kernelWidth;
              v21 += 4 * kernelWidth * inputFeatureChannels;
            }

            while (v20 != kernelHeight);
            ++v18;
            v19 += kernelHeight * kernelWidth * inputFeatureChannels;
            v12 += 4 * kernelWidth * inputFeatureChannels * kernelHeight;
          }

          while (v18 != outputFeatureChannels);
        }
      }
    }
  }

  v30 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v13, 0, 0);

  return v30;
}

- (float)biasTerms
{
  v4 = objc_msgSend_biasBuffer(self, a2, v2, v3);
  v5 = v4;
  v9 = objc_msgSend_contents(v5, v6, v7, v8);

  return v9;
}

- (BOOL)load
{
  v5 = objc_msgSend_deviceHandler(self, a2, v2, v3);
  v9 = objc_msgSend_commandQueue(v5, v6, v7, v8);
  objc_msgSend_checkpointWithCommandQueue_(self, v10, v9, v11);

  return 1;
}

- (id)updateWithCommandBuffer:(id)a3 gradientState:(id)a4
{
  v47[2] = *MEMORY[0x1E69E9840];
  v44 = a3;
  v45 = a4;
  v9 = objc_msgSend_optimizer(self, v6, v7, v8);
  v13 = objc_msgSend_state(self, v10, v11, v12);
  v17 = objc_msgSend_weightMomentumVector(self, v14, v15, v16);
  v47[0] = v17;
  v21 = objc_msgSend_biasMomentumVector(self, v18, v19, v20);
  v47[1] = v21;
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v22, v47, 2);
  v27 = objc_msgSend_weightVelocityVector(self, v24, v25, v26);
  v46[0] = v27;
  v31 = objc_msgSend_biasVelocityVector(self, v28, v29, v30);
  v46[1] = v31;
  v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v32, v46, 2);
  v37 = objc_msgSend_state(self, v34, v35, v36);
  objc_msgSend_encodeToCommandBuffer_convolutionGradientState_convolutionSourceState_inputMomentumVectors_inputVelocityVectors_resultState_(v9, v38, v44, v45, v13, v23, v33, v37);

  v42 = objc_msgSend_state(self, v39, v40, v41);

  return v42;
}

- (id)updateWithCommandBuffer:(id)a3 gradientState:(id)a4 sourceState:(id)a5
{
  v5 = objc_msgSend_updateWithCommandBuffer_gradientState_(self, a2, a3, a4, a5);

  return v5;
}

- (MLPModelOptimizerOptions)optimizerOptions
{
  objc_copyCppObjectAtomic(v2, &self->_optimizerOptions, sub_19D4352AC);
  result.learningRate = v6;
  result.adamEpsilon = v5;
  result.adamBeta2 = v4;
  result.adamBeta1 = v3;
  return result;
}

@end