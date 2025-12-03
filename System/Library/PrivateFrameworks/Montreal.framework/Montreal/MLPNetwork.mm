@interface MLPNetwork
+ (MLPNetwork)networkWithLayers:(id)layers inputLength:(unint64_t)length inputHeight:(unint64_t)height inputChannels:(unint64_t)channels batchSize:(unint64_t)size lossBatchSize:(unint64_t)batchSize options:(id)options deviceHandler:(id)self0 optimizerParams:(id)self1;
- (MLPNetwork)initWithLayers:(id)layers;
- (MLPNetwork)initWithNetworkType:(unint64_t)type layers:(id)layers;
- (id)computeInference:(id)inference;
- (unint64_t)runInference:(id)inference databatch:(id)databatch inferredResult:(id)result semaphore:(id)semaphore;
- (void)createLayerKernels;
- (void)generateModelContainer;
- (void)runTraining:(id)training databatch:(id)databatch iteration:(unint64_t)iteration lossCallback:(id)callback semaphore:(id)semaphore;
@end

@implementation MLPNetwork

+ (MLPNetwork)networkWithLayers:(id)layers inputLength:(unint64_t)length inputHeight:(unint64_t)height inputChannels:(unint64_t)channels batchSize:(unint64_t)size lossBatchSize:(unint64_t)batchSize options:(id)options deviceHandler:(id)self0 optimizerParams:(id)self1
{
  v205 = *MEMORY[0x1E69E9840];
  layersCopy = layers;
  optionsCopy = options;
  handlerCopy = handler;
  paramsCopy = params;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v17 = layersCopy;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v200, v204, 16);
  if (v22)
  {
    v23 = *v201;
LABEL_3:
    v24 = 0;
    while (1)
    {
      if (*v201 != v23)
      {
        objc_enumerationMutation(v17);
      }

      if (objc_msgSend_layerType(*(*(&v200 + 1) + 8 * v24), v19, v20, v21) == 8)
      {
        break;
      }

      if (v22 == ++v24)
      {
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v200, v204, 16);
        if (v22)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v25 = [MLPSeqNetwork alloc];
    v28 = objc_msgSend_initWithLayers_(v25, v26, v17, v27);

    if (v28)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v31 = [MLPCNNNetwork alloc];
  v28 = objc_msgSend_initWithLayers_(v31, v32, v17, v33);
LABEL_12:
  objc_msgSend_setOptions_(v28, v29, optionsCopy, v30);
  v36 = objc_msgSend_exMRL_BOOLForKey_(optionsCopy, v34, MLPModelTrainerComputeLossOnEvaluationKey, v35);
  objc_msgSend_setComputeLossOnInference_(v28, v37, v36, v38);
  objc_msgSend_setDeviceHandler_(v28, v39, handlerCopy, v40);
  v41 = objc_alloc(MEMORY[0x1E69745A0]);
  v45 = objc_msgSend_device(handlerCopy, v42, v43, v44);
  v49 = objc_msgSend_dataLayout(handlerCopy, v46, v47, v48);
  v51 = objc_msgSend_initWithDevice_dataLayout_(v41, v50, v45, v49);
  objc_msgSend_setI2mKernel_(v28, v52, v51, v53);

  v54 = objc_alloc(MEMORY[0x1E6974650]);
  v58 = objc_msgSend_device(handlerCopy, v55, v56, v57);
  v62 = objc_msgSend_dataLayout(handlerCopy, v59, v60, v61);
  v64 = objc_msgSend_initWithDevice_dataLayout_(v54, v63, v58, v62);
  objc_msgSend_setM2iKernel_(v28, v65, v64, v66);

  objc_msgSend_setOptimizerParams_(v28, v67, paramsCopy, v68);
  objc_msgSend_setInputLength_(v28, v69, length, v70);
  objc_msgSend_setInputHeight_(v28, v71, height, v72);
  objc_msgSend_setInputChannels_(v28, v73, channels, v74);
  objc_msgSend_setBatchSize_(v28, v75, size, v76);
  objc_msgSend_setLossBatchSize_(v28, v77, batchSize, v78);
  if (objc_msgSend_count(v17, v79, v80, v81))
  {
    if (objc_msgSend_count(v17, v82, v83, v84) == 1)
    {
      v87 = 0;
    }

    else
    {
      v87 = objc_msgSend_objectAtIndexedSubscript_(v17, v85, 1, v86);
    }

    v88 = objc_msgSend_objectAtIndexedSubscript_(v17, v85, 0, v86);
    objc_msgSend_updatePreviousLayer_nextLayer_network_(v88, v89, 0, v87, v28);
    if (!objc_msgSend_inputLength(v88, v90, v91, v92))
    {
      v96 = objc_msgSend_name(v88, v93, v94, v95);
      sub_19D2C78CC(@"Input length for layer %@ is 0", v97, v98, v99, v100, v101, v102, v103, v96);
    }

    if (!objc_msgSend_inputChannels(v88, v93, v94, v95))
    {
      v107 = objc_msgSend_name(v88, v104, v105, v106);
      sub_19D2C78CC(@"Input channels for layer %@ is 0", v108, v109, v110, v111, v112, v113, v114, v107);
    }

    if (!objc_msgSend_outputLength(v88, v104, v105, v106))
    {
      v118 = objc_msgSend_name(v88, v115, v116, v117);
      sub_19D2C78CC(@"Output length for layer %@ is 0", v119, v120, v121, v122, v123, v124, v125, v118);
    }

    if (!objc_msgSend_outputChannels(v88, v115, v116, v117))
    {
      v129 = objc_msgSend_name(v88, v126, v127, v128);
      sub_19D2C78CC(@"Output channels for layer %@ is 0", v130, v131, v132, v133, v134, v135, v136, v129);
    }

    for (i = 2; i - 1 < objc_msgSend_count(v17, v137, v138, v139); ++i)
    {
      if (i - 1 >= (objc_msgSend_count(v17, v82, v83, v84) - 1))
      {
        v143 = 0;
      }

      else
      {
        v143 = objc_msgSend_objectAtIndexedSubscript_(v17, v141, i, v142);
      }

      v144 = objc_msgSend_objectAtIndexedSubscript_(v17, v141, i - 2, v142);
      v147 = objc_msgSend_objectAtIndexedSubscript_(v17, v145, i - 1, v146);
      objc_msgSend_updatePreviousLayer_nextLayer_network_(v147, v148, v144, v143, v28);
      if (!objc_msgSend_inputLength(v147, v149, v150, v151))
      {
        v155 = objc_msgSend_name(v147, v152, v153, v154);
        sub_19D2C78CC(@"Input length for layer %@ is 0", v156, v157, v158, v159, v160, v161, v162, v155);
      }

      if (!objc_msgSend_inputChannels(v147, v152, v153, v154))
      {
        v166 = objc_msgSend_name(v147, v163, v164, v165);
        sub_19D2C78CC(@"Input channels for layer %@ is 0", v167, v168, v169, v170, v171, v172, v173, v166);
      }

      if (!objc_msgSend_outputLength(v147, v163, v164, v165))
      {
        v177 = objc_msgSend_name(v147, v174, v175, v176);
        sub_19D2C78CC(@"Output length for layer %@ is 0", v178, v179, v180, v181, v182, v183, v184, v177);
      }

      if (!objc_msgSend_outputChannels(v147, v174, v175, v176))
      {
        v188 = objc_msgSend_name(v147, v185, v186, v187);
        sub_19D2C78CC(@"Output channels for layer %@ is 0", v189, v190, v191, v192, v193, v194, v195, v188);
      }
    }
  }

  objc_msgSend_createLayerKernels(v28, v82, v83, v84);

  return v28;
}

- (MLPNetwork)initWithLayers:(id)layers
{
  layersCopy = layers;
  v5 = MEMORY[0x1E695DF30];
  v6 = MEMORY[0x1E696AEC0];
  v7 = NSStringFromSelector(a2);
  v10 = objc_msgSend_stringWithFormat_(v6, v8, @"%@ not implemented in a subclass", v9, v7);
  v12 = objc_msgSend_exceptionWithName_reason_userInfo_(v5, v11, *MEMORY[0x1E695D930], v10, 0);
  v13 = v12;

  objc_exception_throw(v12);
}

- (MLPNetwork)initWithNetworkType:(unint64_t)type layers:(id)layers
{
  layersCopy = layers;
  v14.receiver = self;
  v14.super_class = MLPNetwork;
  v10 = [(MLPNetwork *)&v14 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(layersCopy, v7, v8, v9);
    layers = v10->_layers;
    v10->_layers = v11;

    v10->_networkType = type;
  }

  return v10;
}

- (void)generateModelContainer
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_options(self, a2, v2, v3);
  v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, MLPModelGenerateFormatKey, v7);

  v82 = v8;
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, MLPModelGenerateFormatJSON, v10);
  v11 = [MontrealNNGenerateModel alloc];
  v14 = objc_msgSend_initWithWeightFormat_(v11, v12, isEqualToString, v13);
  v92 = 1;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = objc_msgSend_layers(self, v15, v16, v17);
  v19 = 0;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v88, v93, 16);
  if (v20)
  {
    v21 = *v89;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v89 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v88 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        v28 = objc_msgSend_name(v23, v25, v26, v27);
        v30 = objc_msgSend_generateNode_model_weightIter_(v23, v29, v28, v14, &v92);

        if (isEqualToString)
        {
          if (v30)
          {
            objc_msgSend_parameters(v30, v31, v32, v33);
            sub_19D2BCA7C(v86);
            objc_msgSend_parameters(v30, v34, v35, v36);
          }

          else
          {
            bzero(v85, 0x2C0uLL);
            sub_19D2BCA7C(v86);
            bzero(v85, 0x2C0uLL);
          }

          sub_19D2BCA7C(&v87);
        }

        if (v30)
        {
          objc_msgSend_merge_(v14, v31, v30, v33);
          if (v19)
          {
            v40 = objc_msgSend_node(v30, v37, v38, v39);
            v44 = objc_msgSend_inputs(v40, v41, v42, v43);
            v47 = objc_msgSend_objectAtIndex_(v44, v45, 0, v46);
            objc_msgSend_removeInput_(v14, v48, v47, v49);

            v53 = objc_msgSend_node(v19, v50, v51, v52);
            v57 = objc_msgSend_outputs(v53, v54, v55, v56);
            v60 = objc_msgSend_objectAtIndex_(v57, v58, 0, v59);
            objc_msgSend_removeOutput_(v14, v61, v60, v62);

            v66 = objc_msgSend_node(v19, v63, v64, v65);
            v70 = objc_msgSend_outputs(v66, v67, v68, v69);
            v73 = objc_msgSend_objectAtIndex_(v70, v71, 0, v72);
            objc_msgSend_setInput_inputIndex_(v30, v74, v73, 0);
          }

          v75 = v30;

          v19 = v75;
        }

        objc_autoreleasePoolPop(v24);
        if (!v30)
        {

          ModelContainer = 0;
          goto LABEL_20;
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v76, &v88, v93, 16);
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  ModelContainer = objc_msgSend_generateModelContainer(v14, v77, v78, v79);
LABEL_20:

  return ModelContainer;
}

- (void)runTraining:(id)training databatch:(id)databatch iteration:(unint64_t)iteration lossCallback:(id)callback semaphore:(id)semaphore
{
  trainingCopy = training;
  databatchCopy = databatch;
  callbackCopy = callback;
  semaphoreCopy = semaphore;
  v15 = MEMORY[0x1E695DF30];
  v16 = MEMORY[0x1E696AEC0];
  v17 = NSStringFromSelector(a2);
  v20 = objc_msgSend_stringWithFormat_(v16, v18, @"%@ not implemented in a subclass", v19, v17);
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v21, *MEMORY[0x1E695D930], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (unint64_t)runInference:(id)inference databatch:(id)databatch inferredResult:(id)result semaphore:(id)semaphore
{
  inferenceCopy = inference;
  databatchCopy = databatch;
  resultCopy = result;
  semaphoreCopy = semaphore;
  v14 = MEMORY[0x1E695DF30];
  v15 = MEMORY[0x1E696AEC0];
  v16 = NSStringFromSelector(a2);
  v19 = objc_msgSend_stringWithFormat_(v15, v17, @"%@ not implemented in a subclass", v18, v16);
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x1E695D930], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (id)computeInference:(id)inference
{
  inferenceCopy = inference;
  v5 = MEMORY[0x1E695DF30];
  v6 = MEMORY[0x1E696AEC0];
  v7 = NSStringFromSelector(a2);
  v10 = objc_msgSend_stringWithFormat_(v6, v8, @"%@ not implemented in a subclass", v9, v7);
  v12 = objc_msgSend_exceptionWithName_reason_userInfo_(v5, v11, *MEMORY[0x1E695D930], v10, 0);
  v13 = v12;

  objc_exception_throw(v12);
}

- (void)createLayerKernels
{
  v2 = MEMORY[0x1E695DF30];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(a2);
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ not implemented in a subclass", v6, v4);
  v9 = objc_msgSend_exceptionWithName_reason_userInfo_(v2, v8, *MEMORY[0x1E695D930], v7, 0);
  v10 = v9;

  objc_exception_throw(v9);
}

@end