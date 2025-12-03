@interface MLPSeqNetwork
- (MLPSeqNetwork)initWithLayers:(id)layers;
- (float)computeLoss:(id)loss;
- (id)computeInference:(id)inference;
- (unint64_t)runInference:(id)inference databatch:(id)databatch inferredResult:(id)result semaphore:(id)semaphore;
- (void)createLayerKernels;
- (void)decayHandler:(id)handler didUpdateLearningRate:(float)rate;
- (void)runTraining:(id)training databatch:(id)databatch iteration:(unint64_t)iteration lossCallback:(id)callback semaphore:(id)semaphore;
- (void)setOptimizerParams:(id)params;
@end

@implementation MLPSeqNetwork

- (MLPSeqNetwork)initWithLayers:(id)layers
{
  v4.receiver = self;
  v4.super_class = MLPSeqNetwork;
  return [(MLPNetwork *)&v4 initWithNetworkType:2 layers:layers];
}

- (void)setOptimizerParams:(id)params
{
  paramsCopy = params;
  if (!paramsCopy)
  {
    v8 = objc_msgSend_options(self, v4, v5, v6);
    v11 = objc_msgSend_exMRL_stringForKey_(v8, v9, MLPModelTrainerOptimizerAlgorithmKey, v10);

    if (v11)
    {
      if (objc_msgSend_isEqualToString_(v11, v12, MLPModelTrainerOptimizerAdam, v14))
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 2;
    }

    v16 = objc_msgSend_options(self, v12, v13, v14);
    v19 = objc_msgSend_exMRL_numberForKey_(v16, v17, MLPModelTrainerLearningRateKey, v18);
    objc_msgSend_floatValue(v19, v20, v21, v22);
    v24 = v23;

    v28 = objc_msgSend_options(self, v25, v26, v27);
    v31 = objc_msgSend_exMRL_numberForKey_(v28, v29, MLPModelTrainerOptimizerMomentumKey, v30);
    objc_msgSend_floatValue(v31, v32, v33, v34);
    v36 = v35;

    v40 = objc_msgSend_options(self, v37, v38, v39);
    v43 = objc_msgSend_exMRL_numberForKey_(v40, v41, MLPModelTrainerGradientClipMinimum, v42);

    v47 = objc_msgSend_options(self, v44, v45, v46);
    v50 = objc_msgSend_exMRL_numberForKey_(v47, v48, MLPModelTrainerGradientClipMaximum, v49);

    v51 = [MontrealNNModelOptimizerParam alloc];
    LODWORD(v52) = v24;
    LODWORD(v53) = v36;
    paramsCopy = objc_msgSend_initWithOptimizerType_learningRate_momentum_gradientClipMin_gradientClipMax_(v51, v54, v15, v43, v50, v52, v53);
  }

  v55.receiver = self;
  v55.super_class = MLPSeqNetwork;
  [(MLPNetwork *)&v55 setOptimizerParams:paramsCopy];
}

- (void)createLayerKernels
{
  v81 = *MEMORY[0x1E69E9840];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v5 = objc_msgSend_layers(self, a2, v2, v3, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v76, v80, 16);
  if (v10)
  {
    v11 = *v77;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v77 != v11)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_createKernel(*(*(&v76 + 1) + 8 * i), v7, v8, v9);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v76, v80, 16);
    }

    while (v10);
  }

  v16 = objc_msgSend_optimizerParams(self, v13, v14, v15);
  v20 = objc_msgSend_optimizerType(v16, v17, v18, v19) == 2;

  if (v20)
  {
    v24 = objc_msgSend_options(self, v21, v22, v23);
    v27 = objc_msgSend_exMRL_numberForKey_(v24, v25, MLPModelTrainerLearningRateDecayRateKey, v26);

    objc_msgSend_floatValue(v27, v28, v29, v30);
    if (v34 < 0.0)
    {
LABEL_18:

      return;
    }

    v35 = objc_msgSend_options(self, v31, v32, v33);
    v38 = objc_msgSend_exMRL_numberForKey_(v35, v36, MLPModelTrainerLearningRateDecayStepsKey, v37);

    v42 = objc_msgSend_options(self, v39, v40, v41);
    v45 = objc_msgSend_exMRL_numberForKey_(v42, v43, MLPModelTrainerLearningRateDecayRateKey, v44);

    v49 = objc_msgSend_options(self, v46, v47, v48);
    v52 = objc_msgSend_exMRL_numberForKey_(v49, v50, MLPModelTrainerLearningRateDecayStairCaseKey, v51);

    if (v38)
    {
      v56 = objc_msgSend_unsignedIntegerValue(v38, v53, v54, v55);
      if (v45)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v56 = 1000;
      if (v45)
      {
LABEL_12:
        objc_msgSend_floatValue(v45, v53, v54, v55);
        if (v52)
        {
LABEL_13:
          v57 = objc_msgSend_BOOLValue(v52, v53, v54, v55);
LABEL_17:
          v58 = [MLPLearningRateDecayHandler alloc];
          v62 = objc_msgSend_optimizerParams(self, v59, v60, v61);
          objc_msgSend_learningRate(v62, v63, v64, v65);
          v67 = objc_msgSend_initWithLearningRate_decaySteps_decayRate_stairCase_(v58, v66, v56, v57);
          objc_msgSend_setSeqLearningRateDecayHandler_(self, v68, v67, v69);

          v73 = objc_msgSend_seqLearningRateDecayHandler(self, v70, v71, v72);
          objc_msgSend_setDelegate_(v73, v74, self, v75);

          goto LABEL_18;
        }

LABEL_16:
        v57 = 1;
        goto LABEL_17;
      }
    }

    if (v52)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }
}

- (void)runTraining:(id)training databatch:(id)databatch iteration:(unint64_t)iteration lossCallback:(id)callback semaphore:(id)semaphore
{
  iterationCopy = iteration;
  v115 = *MEMORY[0x1E69E9840];
  trainingCopy = training;
  databatchCopy = databatch;
  callbackCopy = callback;
  semaphoreCopy = semaphore;
  v13 = databatchCopy;
  v20 = objc_msgSend_matrix(v13, v14, v15, v16);
  for (i = 0; ; ++i)
  {
    v22 = objc_msgSend_layers(self, v17, v18, v19, iterationCopy);
    v26 = objc_msgSend_count(v22, v23, v24, v25);

    if (i >= v26)
    {
      break;
    }

    v30 = objc_autoreleasePoolPush();
    v34 = objc_msgSend_layers(self, v31, v32, v33);
    v37 = objc_msgSend_objectAtIndexedSubscript_(v34, v35, i, v36);

    v39 = objc_msgSend_seqForward_input_dataBatch_runInference_(v37, v38, trainingCopy, v20, v13, 0);

    objc_autoreleasePoolPop(v30);
    v20 = v39;
  }

  v40 = objc_msgSend_combinedLossLabels(v13, v27, v28, v29);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v44 = objc_msgSend_largeReductionSumResult(v40, v41, v42, v43);
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v109, v114, 16);
  if (v48)
  {
    v49 = *v110;
    do
    {
      v50 = 0;
      do
      {
        if (*v110 != v49)
        {
          objc_enumerationMutation(v44);
        }

        objc_msgSend_synchronizeOnCommandBuffer_(*(*(&v109 + 1) + 8 * v50++), v46, trainingCopy, v47);
      }

      while (v48 != v50);
      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v46, &v109, v114, 16);
    }

    while (v48);
  }

  v108 = 0u;
  v106 = 0u;
  v107 = 0u;
  v105 = 0u;
  v54 = objc_msgSend_smallReductionSumResult(v40, v51, v52, v53);
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v105, v113, 16);
  if (v58)
  {
    v59 = *v106;
    do
    {
      v60 = 0;
      do
      {
        if (*v106 != v59)
        {
          objc_enumerationMutation(v54);
        }

        objc_msgSend_synchronizeOnCommandBuffer_(*(*(&v105 + 1) + 8 * v60++), v56, trainingCopy, v57);
      }

      while (v58 != v60);
      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v56, &v105, v113, 16);
    }

    while (v58);
  }

  v64 = 0;
  for (j = -1; ; --j)
  {
    v66 = objc_msgSend_layers(self, v61, v62, v63);
    v70 = v64 < objc_msgSend_count(v66, v67, v68, v69);

    if (!v70)
    {
      break;
    }

    v71 = objc_autoreleasePoolPush();
    v75 = objc_msgSend_layers(self, v72, v73, v74);
    v79 = objc_msgSend_count(v75, v76, v77, v78);

    v83 = objc_msgSend_layers(self, v80, v81, v82);
    v86 = objc_msgSend_objectAtIndexedSubscript_(v83, v84, j + v79, v85);

    v88 = objc_msgSend_seqBackward_dataBatch_inputGradient_(v86, v87, trainingCopy, v13, v20);

    objc_autoreleasePoolPop(v71);
    ++v64;
    v20 = v88;
  }

  objc_initWeak(&location, self);
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = sub_19D38ACDC;
  v98[3] = &unk_1E7626A28;
  objc_copyWeak(v103, &location);
  v89 = v40;
  v99 = v89;
  v90 = v13;
  v100 = v90;
  v91 = callbackCopy;
  v102 = v91;
  v103[1] = iterationCopy;
  v92 = semaphoreCopy;
  v101 = v92;
  objc_msgSend_addCompletedHandler_(trainingCopy, v93, v98, v94);

  objc_destroyWeak(v103);
  objc_destroyWeak(&location);
}

- (float)computeLoss:(id)loss
{
  v16 = 0.0;
  v4 = objc_msgSend_combinedLossLabels(loss, a2, loss, v3);
  v8 = objc_msgSend_largeReductionSumResult(v4, v5, v6, v7, &v16);
  sub_19D38AEB4(&v15, v8, 0x20uLL);

  v12 = objc_msgSend_smallReductionSumResult(v4, v9, v10, v11);
  sub_19D38AEB4(&v15, v12, 1uLL);

  v13 = v16;
  return v13;
}

- (unint64_t)runInference:(id)inference databatch:(id)databatch inferredResult:(id)result semaphore:(id)semaphore
{
  v122 = *MEMORY[0x1E69E9840];
  inferenceCopy = inference;
  databatchCopy = databatch;
  resultCopy = result;
  semaphoreCopy = semaphore;
  v12 = databatchCopy;
  v19 = objc_msgSend_matrix(v12, v13, v14, v15);
  for (i = 0; ; ++i)
  {
    v21 = objc_msgSend_layers(self, v16, v17, v18, resultCopy);
    v25 = objc_msgSend_count(v21, v22, v23, v24);

    if (i >= v25)
    {
      break;
    }

    v26 = objc_autoreleasePoolPush();
    v30 = objc_msgSend_layers(self, v27, v28, v29);
    v33 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, i, v32);

    v35 = objc_msgSend_seqForward_input_dataBatch_runInference_(v33, v34, inferenceCopy, v19, v12, 1);

    objc_autoreleasePoolPop(v26);
    v19 = v35;
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v36 = v19;
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v115, v121, 16);
  if (v38)
  {
    v39 = *v116;
    do
    {
      v40 = 0;
      do
      {
        if (*v116 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v115 + 1) + 8 * v40);
        v42 = objc_autoreleasePoolPush();
        v46 = objc_msgSend_deviceHandler(self, v43, v44, v45);
        v50 = objc_msgSend_data(v41, v47, v48, v49);
        objc_msgSend_importDataFromGPU_cmdBuf_(v46, v51, v50, inferenceCopy);

        objc_autoreleasePoolPop(v42);
        ++v40;
      }

      while (v38 != v40);
      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v52, &v115, v121, 16);
    }

    while (v38);
  }

  objc_msgSend_combinedLossLabels(v12, v53, v54, v55);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v98 = v112 = 0u;
  v59 = objc_msgSend_largeReductionSumResult(v98, v56, v57, v58);
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v111, v120, 16);
  if (v63)
  {
    v64 = *v112;
    do
    {
      v65 = 0;
      do
      {
        if (*v112 != v64)
        {
          objc_enumerationMutation(v59);
        }

        objc_msgSend_synchronizeOnCommandBuffer_(*(*(&v111 + 1) + 8 * v65++), v61, inferenceCopy, v62);
      }

      while (v63 != v65);
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v61, &v111, v120, 16);
    }

    while (v63);
  }

  v110 = 0u;
  v108 = 0u;
  v109 = 0u;
  v107 = 0u;
  v69 = objc_msgSend_smallReductionSumResult(v98, v66, v67, v68);
  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v107, v119, 16);
  if (v73)
  {
    v74 = *v108;
    do
    {
      v75 = 0;
      do
      {
        if (*v108 != v74)
        {
          objc_enumerationMutation(v69);
        }

        objc_msgSend_synchronizeOnCommandBuffer_(*(*(&v107 + 1) + 8 * v75++), v71, inferenceCopy, v72);
      }

      while (v73 != v75);
      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v71, &v107, v119, 16);
    }

    while (v73);
  }

  v79 = objc_msgSend_layers(self, v76, v77, v78);
  v83 = objc_msgSend_lastObject(v79, v80, v81, v82);

  objc_initWeak(&location, self);
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = sub_19D38B808;
  v99[3] = &unk_1E7626A50;
  objc_copyWeak(&v105, &location);
  v84 = v36;
  v100 = v84;
  v85 = v12;
  v101 = v85;
  v86 = v83;
  v102 = v86;
  v87 = resultCopy;
  v103 = v87;
  v88 = semaphoreCopy;
  v104 = v88;
  objc_msgSend_addCompletedHandler_(inferenceCopy, v89, v99, v90);
  v94 = objc_msgSend_labelsCount(v85, v91, v92, v93);

  objc_destroyWeak(&v105);
  objc_destroyWeak(&location);

  return v94;
}

- (id)computeInference:(id)inference
{
  v104 = *MEMORY[0x1E69E9840];
  inferenceCopy = inference;
  v7 = objc_msgSend_deviceHandler(self, v4, v5, v6);
  v82 = objc_msgSend_device(v7, v8, v9, v10);

  v14 = objc_msgSend_deviceHandler(self, v11, v12, v13);
  v18 = objc_msgSend_commandQueue(v14, v15, v16, v17);

  v83 = v18;
  v21 = objc_msgSend_commandBufferFromCommandQueue_(MEMORY[0x1E6974450], v19, v18, v20);
  v23 = objc_msgSend_dataBatch_batchSize_network_(MLPDataBatch, v22, inferenceCopy, 1, self);
  v30 = objc_msgSend_matrix(v23, v24, v25, v26);
  for (i = 0; ; ++i)
  {
    v32 = objc_msgSend_layers(self, v27, v28, v29, v82);
    v36 = objc_msgSend_count(v32, v33, v34, v35);

    if (i >= v36)
    {
      break;
    }

    v40 = objc_msgSend_layers(self, v37, v38, v39);
    v43 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, i, v42);

    v45 = objc_msgSend_seqForward_input_dataBatch_runInference_(v43, v44, v21, v30, v23, 1);

    v30 = v45;
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v46 = v30;
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v99, v103, 16);
  if (v51)
  {
    v52 = *v100;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v100 != v52)
        {
          objc_enumerationMutation(v46);
        }

        v54 = *(*(&v99 + 1) + 8 * j);
        v55 = objc_msgSend_deviceHandler(self, v48, v49, v50);
        v59 = objc_msgSend_data(v54, v56, v57, v58);
        objc_msgSend_importDataFromGPU_cmdBuf_(v55, v60, v59, v21);
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v48, &v99, v103, 16);
    }

    while (v51);
  }

  v64 = objc_msgSend_layers(self, v61, v62, v63);
  v68 = objc_msgSend_lastObject(v64, v65, v66, v67);

  v90 = 0;
  v91 = &v90;
  v92 = 0x4812000000;
  v93 = sub_19D38C1C8;
  v94 = sub_19D38C1EC;
  v95 = &unk_19D4828C1;
  v97 = 0;
  v98 = 0;
  __p = 0;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = sub_19D38C204;
  v85[3] = &unk_1E7626A78;
  v69 = v46;
  v86 = v69;
  v70 = v23;
  v87 = v70;
  v89 = &v90;
  v71 = v68;
  v88 = v71;
  objc_msgSend_addCompletedHandler_(v21, v72, v85, v73);
  objc_msgSend_commit(v21, v74, v75, v76);
  objc_msgSend_waitUntilCompleted(v21, v77, v78, v79);
  v80 = sub_19D38C918(v91 + 6);

  _Block_object_dispose(&v90, 8);
  if (__p)
  {
    v97 = __p;
    operator delete(__p);
  }

  return v80;
}

- (void)decayHandler:(id)handler didUpdateLearningRate:(float)rate
{
  v38 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = objc_msgSend_layers(self, a2, handler, v4);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v32, v37, 16);
  if (v10)
  {
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        if (objc_msgSend_conformsToProtocol_(v13, v8, &unk_1F10C8778, v9))
        {
          v14 = v13;
          v18 = objc_msgSend_mlpOptimizers(v14, v15, v16, v17);
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v19 = v18;
          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v28, v36, 16);
          if (v24)
          {
            v26 = *v29;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v29 != v26)
                {
                  objc_enumerationMutation(v19);
                }

                *&v25 = rate;
                objc_msgSend_updateLearningRate_(*(*(&v28 + 1) + 8 * j), v21, v22, v23, v25);
              }

              v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v28, v36, 16);
            }

            while (v24);
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v32, v37, 16);
    }

    while (v10);
  }
}

@end