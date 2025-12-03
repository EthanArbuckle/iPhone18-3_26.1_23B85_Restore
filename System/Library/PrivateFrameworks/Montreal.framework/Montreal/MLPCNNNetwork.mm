@interface MLPCNNNetwork
- (MLPCNNNetwork)initWithLayers:(id)layers;
- (float)computeLoss:(id)loss;
- (id)computeInference:(id)inference;
- (unint64_t)runInference:(id)inference databatch:(id)databatch inferredResult:(id)result semaphore:(id)semaphore;
- (void)createLayerKernels;
- (void)runTraining:(id)training databatch:(id)databatch iteration:(unint64_t)iteration lossCallback:(id)callback semaphore:(id)semaphore;
- (void)setOptimizerParams:(id)params;
@end

@implementation MLPCNNNetwork

- (MLPCNNNetwork)initWithLayers:(id)layers
{
  v4.receiver = self;
  v4.super_class = MLPCNNNetwork;
  return [(MLPNetwork *)&v4 initWithNetworkType:1 layers:layers];
}

- (void)setOptimizerParams:(id)params
{
  paramsCopy = params;
  if (!paramsCopy)
  {
    v8 = objc_msgSend_options(self, v4, v5, v6);
    v11 = objc_msgSend_exMRL_numberForKey_(v8, v9, MLPModelTrainerLearningRateKey, v10);
    objc_msgSend_floatValue(v11, v12, v13, v14);
    v16 = v15;

    v20 = objc_msgSend_options(self, v17, v18, v19);
    v23 = objc_msgSend_exMRL_numberForKey_(v20, v21, MLPModelTrainerGradientClipMinimum, v22);

    v27 = objc_msgSend_options(self, v24, v25, v26);
    v30 = objc_msgSend_exMRL_numberForKey_(v27, v28, MLPModelTrainerGradientClipMaximum, v29);

    v31 = [MontrealNNModelOptimizerParam alloc];
    LODWORD(v32) = 1.0;
    LODWORD(v33) = v16;
    paramsCopy = objc_msgSend_initWithOptimizerType_learningRate_momentum_gradientClipMin_gradientClipMax_(v31, v34, 1, v23, v30, v33, v32);
  }

  v35.receiver = self;
  v35.super_class = MLPCNNNetwork;
  [(MLPNetwork *)&v35 setOptimizerParams:paramsCopy];
}

- (void)createLayerKernels
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = objc_msgSend_layers(self, a2, v2, v3, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_createKernel(*(*(&v12 + 1) + 8 * v11++), v6, v7, v8);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v12, v16, 16);
    }

    while (v9);
  }
}

- (void)runTraining:(id)training databatch:(id)databatch iteration:(unint64_t)iteration lossCallback:(id)callback semaphore:(id)semaphore
{
  trainingCopy = training;
  databatchCopy = databatch;
  callbackCopy = callback;
  semaphoreCopy = semaphore;
  v14 = databatchCopy;
  v21 = objc_msgSend_images(v14, v15, v16, v17);
  for (i = 0; ; ++i)
  {
    v23 = objc_msgSend_layers(self, v18, v19, v20);
    v27 = objc_msgSend_count(v23, v24, v25, v26);

    if (i >= v27)
    {
      break;
    }

    v31 = objc_autoreleasePoolPush();
    v35 = objc_msgSend_layers(self, v32, v33, v34);
    v38 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, i, v37);

    v42 = objc_msgSend_lossLabels(v14, v39, v40, v41);
    v44 = objc_msgSend_forward_input_labels_runInference_(v38, v43, trainingCopy, v21, v42, 0);

    objc_autoreleasePoolPop(v31);
    v21 = v44;
  }

  for (j = 0; ; ++j)
  {
    v46 = objc_msgSend_labels(v14, v28, v29, v30);
    v50 = objc_msgSend_count(v46, v47, v48, v49);

    if (j >= v50)
    {
      break;
    }

    v54 = objc_autoreleasePoolPush();
    v58 = objc_msgSend_lossLabels(v14, v55, v56, v57);
    v61 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, j, v60);

    v65 = objc_msgSend_lossImage(v61, v62, v63, v64);
    objc_msgSend_synchronizeOnCommandBuffer_(v65, v66, trainingCopy, v67);

    objc_autoreleasePoolPop(v54);
  }

  iterationCopy = iteration;
  v68 = 0;
  for (k = -1; ; --k)
  {
    v70 = objc_msgSend_layers(self, v51, v52, v53);
    v74 = objc_msgSend_count(v70, v71, v72, v73);

    if (v68 >= v74)
    {
      break;
    }

    v75 = objc_autoreleasePoolPush();
    v79 = objc_msgSend_layers(self, v76, v77, v78);
    v83 = objc_msgSend_count(v79, v80, v81, v82);

    v87 = objc_msgSend_layers(self, v84, v85, v86);
    v90 = objc_msgSend_objectAtIndexedSubscript_(v87, v88, k + v83, v89);

    v92 = objc_msgSend_backward_inputGradient_(v90, v91, trainingCopy, v21);

    objc_autoreleasePoolPop(v75);
    ++v68;
    v21 = v92;
  }

  MPSImageBatchIncrementReadCount(v21, -1);
  objc_initWeak(&location, self);
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = sub_19D44DF6C;
  v101[3] = &unk_1E7626DE0;
  objc_copyWeak(v105, &location);
  v93 = v14;
  v102 = v93;
  v94 = callbackCopy;
  v104 = v94;
  v105[1] = iterationCopy;
  v95 = semaphoreCopy;
  v103 = v95;
  objc_msgSend_addCompletedHandler_(trainingCopy, v96, v101, v97);

  objc_destroyWeak(v105);
  objc_destroyWeak(&location);
}

- (float)computeLoss:(id)loss
{
  lossCopy = loss;
  v8 = 0;
  v9 = 0.0;
  while (1)
  {
    v10 = objc_msgSend_labels(lossCopy, v4, v5, v6);
    v14 = objc_msgSend_count(v10, v11, v12, v13);

    if (v8 >= v14)
    {
      break;
    }

    v18 = objc_msgSend_lossLabels(lossCopy, v15, v16, v17);
    v21 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, v8, v20);

    v25 = objc_msgSend_lossImage(v21, v22, v23, v24);
    v36[0] = 0;
    v36[1] = 0;
    v29 = objc_msgSend_deviceHandler(self, v26, v27, v28);
    v33 = objc_msgSend_dataLayout(v29, v30, v31, v32);
    objc_msgSend_readBytes_dataLayout_imageIndex_(v25, v34, v36, v33, 0);

    v9 = *v36 + v9;
    ++v8;
  }

  return v9;
}

- (unint64_t)runInference:(id)inference databatch:(id)databatch inferredResult:(id)result semaphore:(id)semaphore
{
  inferenceCopy = inference;
  databatchCopy = databatch;
  resultCopy = result;
  semaphoreCopy = semaphore;
  v12 = databatchCopy;
  v19 = objc_msgSend_images(v12, v13, v14, v15);
  v20 = 0;
  v112 = 0;
  while (1)
  {
    v21 = objc_msgSend_layers(self, v16, v17, v18);
    v25 = objc_msgSend_count(v21, v22, v23, v24);

    if (v20 >= v25)
    {
      break;
    }

    v29 = objc_autoreleasePoolPush();
    v33 = objc_msgSend_layers(self, v30, v31, v32);
    v37 = objc_msgSend_count(v33, v34, v35, v36);

    v41 = objc_msgSend_layers(self, v38, v39, v40);
    v44 = objc_msgSend_objectAtIndexedSubscript_(v41, v42, v20, v43);

    v48 = objc_msgSend_lossLabels(v12, v45, v46, v47);
    v50 = objc_msgSend_forward_input_labels_runInference_(v44, v49, inferenceCopy, v19, v48, 1);

    if (v20 == v37 - 1)
    {
      v54 = objc_msgSend_deviceHandler(self, v51, v52, v53);
      v58 = objc_msgSend_i2mKernel(self, v55, v56, v57);
      v60 = objc_msgSend_matrixFromImages_i2mKernel_cmdBuf_(v54, v59, v50, v58, inferenceCopy);

      v112 = v60;
    }

    objc_autoreleasePoolPop(v29);
    ++v20;
    v19 = v50;
  }

  for (i = 0; ; ++i)
  {
    v62 = objc_msgSend_labels(v12, v26, v27, v28);
    v66 = objc_msgSend_count(v62, v63, v64, v65);

    if (i >= v66)
    {
      break;
    }

    v70 = objc_autoreleasePoolPush();
    v74 = objc_msgSend_lossLabels(v12, v71, v72, v73);
    v77 = objc_msgSend_objectAtIndexedSubscript_(v74, v75, i, v76);

    v81 = objc_msgSend_lossImage(v77, v78, v79, v80);
    objc_msgSend_synchronizeOnCommandBuffer_(v81, v82, inferenceCopy, v83);

    objc_autoreleasePoolPop(v70);
  }

  if (v112)
  {
    v84 = objc_msgSend_deviceHandler(self, v67, v68, v69);
    v88 = objc_msgSend_data(v112, v85, v86, v87);
    objc_msgSend_importDataFromGPU_cmdBuf_(v84, v89, v88, inferenceCopy);
  }

  v90 = objc_msgSend_layers(self, v67, v68, v69);
  v94 = objc_msgSend_lastObject(v90, v91, v92, v93);

  objc_initWeak(&location, self);
  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 3221225472;
  v114[2] = sub_19D44E674;
  v114[3] = &unk_1E7626E08;
  objc_copyWeak(&v121, &location);
  v95 = v12;
  v115 = v95;
  v113 = v112;
  v116 = v113;
  v96 = v94;
  v117 = v96;
  v97 = resultCopy;
  v118 = v97;
  selfCopy = self;
  v98 = semaphoreCopy;
  v120 = v98;
  objc_msgSend_addCompletedHandler_(inferenceCopy, v99, v114, v100);
  v104 = objc_msgSend_images(v95, v101, v102, v103);
  v108 = objc_msgSend_count(v104, v105, v106, v107);

  objc_destroyWeak(&v121);
  objc_destroyWeak(&location);

  return v108;
}

- (id)computeInference:(id)inference
{
  inferenceCopy = inference;
  v8 = objc_msgSend_deviceHandler(self, v5, v6, v7);
  v12 = objc_msgSend_device(v8, v9, v10, v11);

  v16 = objc_msgSend_deviceHandler(self, v13, v14, v15);
  v20 = objc_msgSend_commandQueue(v16, v17, v18, v19);
  v90 = v12;

  v23 = objc_msgSend_commandBufferFromCommandQueue_(MEMORY[0x1E6974450], v21, v20, v22);
  v89 = inferenceCopy;
  v25 = objc_msgSend_dataBatch_batchSize_network_(MLPDataBatch, v24, inferenceCopy, 1, self);
  v88 = v20;
  v32 = objc_msgSend_images(v25, v26, v27, v28);
  v33 = 0;
  for (i = 0; ; ++i)
  {
    v35 = objc_msgSend_layers(self, v29, v30, v31);
    v39 = objc_msgSend_count(v35, v36, v37, v38);

    if (i >= v39)
    {
      break;
    }

    v43 = objc_msgSend_layers(self, v40, v41, v42);
    v46 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, i, v45);

    v50 = objc_msgSend_lossLabels(v25, v47, v48, v49);
    v52 = objc_msgSend_forward_input_labels_runInference_(v46, v51, v23, v32, v50, 1);

    v56 = objc_msgSend_layers(self, v53, v54, v55);
    v60 = objc_msgSend_count(v56, v57, v58, v59) - 1;

    if (i == v60)
    {
      v64 = objc_msgSend_deviceHandler(self, v61, v62, v63);
      v68 = objc_msgSend_i2mKernel(self, v65, v66, v67);
      v70 = objc_msgSend_matrixFromImages_i2mKernel_cmdBuf_(v64, v69, v52, v68, v23);

      v33 = v70;
    }

    v32 = v52;
  }

  if (v33)
  {
    v71 = objc_msgSend_deviceHandler(self, v40, v41, v42);
    v75 = objc_msgSend_data(v33, v72, v73, v74);
    objc_msgSend_importDataFromGPU_cmdBuf_(v71, v76, v75, v23);
  }

  v94 = 0;
  v95 = &v94;
  v96 = 0x4812000000;
  v97 = sub_19D44F02C;
  v98 = sub_19D44F050;
  v99 = &unk_19D4828C1;
  v101 = 0;
  v102 = 0;
  __p = 0;
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = sub_19D44F068;
  v91[3] = &unk_1E7626E30;
  v77 = v33;
  v92 = v77;
  v93 = &v94;
  objc_msgSend_addCompletedHandler_(v23, v78, v91, v79);
  objc_msgSend_commit(v23, v80, v81, v82);
  objc_msgSend_waitUntilCompleted(v23, v83, v84, v85);
  v86 = sub_19D38C918(v95 + 6);

  _Block_object_dispose(&v94, 8);
  if (__p)
  {
    v101 = __p;
    operator delete(__p);
  }

  return v86;
}

@end