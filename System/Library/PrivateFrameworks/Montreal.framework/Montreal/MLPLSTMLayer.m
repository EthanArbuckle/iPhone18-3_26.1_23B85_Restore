@interface MLPLSTMLayer
- (MLPLSTMLayer)initWithName:(id)a3 inputSize:(unint64_t)a4 outputSize:(unint64_t)a5 weightAttributes:(unint64_t)a6;
- (MLPLSTMLayer)initWithName:(id)a3 parameters:(id *)a4;
- (id)generateNode:(id)a3 model:(id)a4 weightIter:(unint64_t *)a5;
- (id)matrixIDToString:(unint64_t)a3;
- (id)seqBackward:(id)a3 dataBatch:(id)a4 inputGradient:(id)a5;
- (id)seqBackwardCombinedMatrix:(id)a3 inputGradient:(id)a4;
- (id)seqBackwardDifferentMatrices:(id)a3 inputGradient:(id)a4;
- (id)seqForward:(id)a3 input:(id)a4 dataBatch:(id)a5 runInference:(BOOL)a6;
- (id)seqForwardCombinedMatrix:(id)a3 input:(id)a4;
- (id)seqForwardDifferentMatrices:(id)a3 input:(id)a4;
- (void)createKernel;
- (void)exportWeightsWithWeightMatrix:(id)a3 weightID:(unint64_t)a4 destination:(float *)a5 recurrent:(BOOL)a6;
- (void)populateActivation:(int *)a3 montrealActivationType:(int64_t)a4;
- (void)updateSourceMatrix:(id)a3 inference:(BOOL)a4;
@end

@implementation MLPLSTMLayer

- (MLPLSTMLayer)initWithName:(id)a3 inputSize:(unint64_t)a4 outputSize:(unint64_t)a5 weightAttributes:(unint64_t)a6
{
  v10 = a3;
  v38.receiver = self;
  v38.super_class = MLPLSTMLayer;
  v11 = [(MLPLayer *)&v38 initWithLayerType:8 name:v10 neuronType:0 neuronParams:0];
  v14 = v11;
  if (v11)
  {
    objc_msgSend_setInputLength_(v11, v12, 1, v13);
    objc_msgSend_setInputSize_(v14, v15, a4, v16);
    objc_msgSend_setOutputLength_(v14, v17, 1, v18);
    objc_msgSend_setOutputSize_(v14, v19, a5, v20);
    objc_msgSend_setInputChannels_(v14, v21, a4, v22);
    objc_msgSend_setOutputChannels_(v14, v23, a5, v24);
    objc_msgSend_setWeightAttributes_(v14, v25, a6, v26);
    objc_msgSend_setInputGateActivation_(v14, v27, 3, v28);
    objc_msgSend_setForgetGateActivation_(v14, v29, 3, v30);
    objc_msgSend_setCellGateActivation_(v14, v31, 5, v32);
    objc_msgSend_setOutputGateActivation_(v14, v33, 3, v34);
    objc_msgSend_setCellToOutputActivation_(v14, v35, 5, v36);
  }

  return v14;
}

- (MLPLSTMLayer)initWithName:(id)a3 parameters:(id *)a4
{
  v6 = a3;
  v8 = objc_msgSend_initWithName_inputSize_outputSize_weightAttributes_(self, v7, v6, a4->var9[0][0], a4->var10[0][0], a4->var8);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setInitialWeights_0_(v8, v9, a4->var13[0], v10);
    objc_msgSend_setInitialWeights_1_(v11, v12, a4->var13[1], v13);
    objc_msgSend_setInitialBias_0_(v11, v14, a4->var14[0], v15);
    objc_msgSend_setInitialBias_1_(v11, v16, a4->var14[1], v17);
    objc_msgSend_populateActivation_montrealActivationType_(v11, v18, &v11->_inputGateActivation, a4->var7[0]);
    objc_msgSend_populateActivation_montrealActivationType_(v11, v19, &v11->_forgetGateActivation, a4->var7[1]);
    objc_msgSend_populateActivation_montrealActivationType_(v11, v20, &v11->_cellGateActivation, a4->var7[2]);
    objc_msgSend_populateActivation_montrealActivationType_(v11, v21, &v11->_outputGateActivation, a4->var7[3]);
    objc_msgSend_populateActivation_montrealActivationType_(v11, v22, &v11->_cellToOutputActivation, a4->var7[4]);
  }

  return v11;
}

- (void)populateActivation:(int *)a3 montrealActivationType:(int64_t)a4
{
  if (a4)
  {
    *a3 = objc_msgSend_mpsNeuronTypeFromMontrealType_(self, a2, a4, a4);
  }
}

- (void)createKernel
{
  v283 = self;
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3);
  objc_msgSend_setOptimizers_(self, v6, v5, v7);

  v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
  objc_msgSend_setWeights_(self, v12, v11, v13);

  v17 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15, v16);
  objc_msgSend_setWeightGradients_(v283, v18, v17, v19);

  v23 = objc_msgSend_array(MEMORY[0x1E695DF70], v20, v21, v22);
  objc_msgSend_setTrainingStates_(v283, v24, v23, v25);

  v29 = objc_msgSend_network(v283, v26, v27, v28);
  v33 = objc_msgSend_deviceHandler(v29, v30, v31, v32);
  v37 = objc_msgSend_device(v33, v34, v35, v36);

  v282 = &v283;
  v38 = MEMORY[0x1E69749E0];
  v42 = objc_msgSend_inputSize(v283, v39, v40, v41);
  v46 = objc_msgSend_outputSize(v283, v43, v44, v45);
  v48 = objc_msgSend_createLSTMDescriptorWithInputFeatureChannels_outputFeatureChannels_(v38, v47, v42, v46);
  objc_msgSend_setLstmDesc_(v283, v49, v48, v50);

  v54 = objc_msgSend_inputGateActivation(v283, v51, v52, v53);
  v58 = objc_msgSend_inputSize(v283, v55, v56, v57);
  v62 = objc_msgSend_outputSize(v283, v59, v60, v61);
  v63 = sub_19D43C270(&v282, 3, v54, v58, v62);
  v67 = objc_msgSend_lstmDesc(v283, v64, v65, v66);
  objc_msgSend_setInputGateInputWeights_(v67, v68, v63, v69);

  v73 = objc_msgSend_outputSize(v283, v70, v71, v72);
  v77 = objc_msgSend_outputSize(v283, v74, v75, v76);
  v78 = sub_19D43C270(&v282, 4, 0, v73, v77);
  v82 = objc_msgSend_lstmDesc(v283, v79, v80, v81);
  objc_msgSend_setInputGateRecurrentWeights_(v82, v83, v78, v84);

  v88 = objc_msgSend_forgetGateActivation(v283, v85, v86, v87);
  v92 = objc_msgSend_inputSize(v283, v89, v90, v91);
  v96 = objc_msgSend_outputSize(v283, v93, v94, v95);
  v97 = sub_19D43C270(&v282, 7, v88, v92, v96);
  v101 = objc_msgSend_lstmDesc(v283, v98, v99, v100);
  objc_msgSend_setForgetGateInputWeights_(v101, v102, v97, v103);

  v107 = objc_msgSend_outputSize(v283, v104, v105, v106);
  v111 = objc_msgSend_outputSize(v283, v108, v109, v110);
  v112 = sub_19D43C270(&v282, 8, 0, v107, v111);
  v116 = objc_msgSend_lstmDesc(v283, v113, v114, v115);
  objc_msgSend_setForgetGateRecurrentWeights_(v116, v117, v112, v118);

  v122 = objc_msgSend_cellGateActivation(v283, v119, v120, v121);
  v126 = objc_msgSend_inputSize(v283, v123, v124, v125);
  v130 = objc_msgSend_outputSize(v283, v127, v128, v129);
  v131 = sub_19D43C270(&v282, 11, v122, v126, v130);
  v135 = objc_msgSend_lstmDesc(v283, v132, v133, v134);
  objc_msgSend_setCellGateInputWeights_(v135, v136, v131, v137);

  v141 = objc_msgSend_outputSize(v283, v138, v139, v140);
  v145 = objc_msgSend_outputSize(v283, v142, v143, v144);
  v146 = sub_19D43C270(&v282, 12, 0, v141, v145);
  v150 = objc_msgSend_lstmDesc(v283, v147, v148, v149);
  objc_msgSend_setCellGateRecurrentWeights_(v150, v151, v146, v152);

  v156 = objc_msgSend_outputGateActivation(v283, v153, v154, v155);
  v160 = objc_msgSend_inputSize(v283, v157, v158, v159);
  v164 = objc_msgSend_outputSize(v283, v161, v162, v163);
  v165 = sub_19D43C270(&v282, 15, v156, v160, v164);
  v169 = objc_msgSend_lstmDesc(v283, v166, v167, v168);
  objc_msgSend_setOutputGateInputWeights_(v169, v170, v165, v171);

  v175 = objc_msgSend_outputSize(v283, v172, v173, v174);
  v179 = objc_msgSend_outputSize(v283, v176, v177, v178);
  v180 = sub_19D43C270(&v282, 16, 0, v175, v179);
  v184 = objc_msgSend_lstmDesc(v283, v181, v182, v183);
  objc_msgSend_setOutputGateRecurrentWeights_(v184, v185, v180, v186);

  v190 = objc_msgSend_cellToOutputActivation(v283, v187, v188, v189);
  v194 = objc_msgSend_lstmDesc(v283, v191, v192, v193);
  objc_msgSend_setCellToOutputNeuronType_(v194, v195, v190, v196);

  v200 = objc_msgSend_lstmDesc(v283, v197, v198, v199);
  objc_msgSend_setUseFloat32Weights_(v200, v201, 1, v202);

  v203 = objc_alloc(MEMORY[0x1E6974A50]);
  v207 = objc_msgSend_lstmDesc(v283, v204, v205, v206);
  v211 = objc_msgSend_weights(v283, v208, v209, v210);
  v213 = objc_msgSend_initWithDevice_rnnDescriptor_trainableWeights_(v203, v212, v37, v207, v211);
  objc_msgSend_setFilter_(v283, v214, v213, v215);

  v219 = objc_msgSend_array(MEMORY[0x1E695DF70], v216, v217, v218);
  v223 = objc_msgSend_array(MEMORY[0x1E695DF70], v220, v221, v222);
  v227 = objc_msgSend_filter(v283, v224, v225, v226);
  objc_msgSend_createWeightMatrices_(v227, v228, v219, v229);

  v279[0] = MEMORY[0x1E69E9820];
  v279[1] = 3221225472;
  v279[2] = sub_19D43C3F0;
  v279[3] = &unk_1E7626C98;
  v230 = v223;
  v280 = v230;
  v281 = v283;
  v269 = MEMORY[0x19EAFAD10](v279);
  v234 = objc_msgSend_filter(v283, v231, v232, v233);
  v238 = objc_msgSend_weightGradients(v283, v235, v236, v237);
  objc_msgSend_createWeightGradientMatrices_dataType_(v234, v239, v238, 268435488);

  v240 = objc_alloc(MEMORY[0x1E695DF70]);
  v244 = objc_msgSend_count(v219, v241, v242, v243);
  v247 = objc_msgSend_initWithCapacity_(v240, v245, v244, v246);
  objc_msgSend_setOptimizers_(v283, v248, v247, v249, v223);

  for (i = 0; i < objc_msgSend_count(v219, v250, v251, v252); ++i)
  {
    v278[0] = MEMORY[0x1E69E9820];
    v278[1] = 3221225472;
    v278[2] = sub_19D43C47C;
    v278[3] = &unk_1E7626CC0;
    v278[4] = v283;
    v254 = MEMORY[0x19EAFAD10](v278);
    v258 = objc_msgSend_network(v283, v255, v256, v257);
    v274[0] = MEMORY[0x1E69E9820];
    v274[1] = 3221225472;
    v274[2] = sub_19D43C59C;
    v274[3] = &unk_1E7626CE8;
    v259 = v254;
    v276 = v259;
    v275 = v219;
    v277 = i;
    v270[0] = MEMORY[0x1E69E9820];
    v270[1] = 3221225472;
    v270[2] = sub_19D43C5B4;
    v270[3] = &unk_1E7626D10;
    v271 = v269;
    v260 = v259;
    v272 = v260;
    v273 = i;
    v262 = objc_msgSend_optimizerWithNetwork_momentum_velocity_(MLPOptimizer, v261, v258, v274, v270);

    v266 = objc_msgSend_optimizers(v283, v263, v264, v265);
    objc_msgSend_addObject_(v266, v267, v262, v268);
  }
}

- (id)seqForward:(id)a3 input:(id)a4 dataBatch:(id)a5 runInference:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  objc_msgSend_updateSourceMatrix_inference_(self, v11, v10, v6);
  v15 = objc_msgSend_trainingStates(self, v12, v13, v14);
  objc_msgSend_removeAllObjects(v15, v16, v17, v18);

  v22 = objc_msgSend_nextLayer(self, v19, v20, v21);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_msgSend_seqForwardDifferentMatrices_input_(self, v24, v9, v10);
  }

  else
  {
    objc_msgSend_seqForwardCombinedMatrix_input_(self, v24, v9, v10);
  }
  v28 = ;
  if (v6)
  {
    v29 = objc_msgSend_trainingStates(self, v25, v26, v27);
    MPSStateBatchIncrementReadCount(v29, -1);

    v33 = objc_msgSend_trainingStates(self, v30, v31, v32);
    objc_msgSend_removeAllObjects(v33, v34, v35, v36);
  }

  return v28;
}

- (id)seqForwardDifferentMatrices:(id)a3 input:(id)a4
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695DF70];
  v72 = v7;
  v12 = objc_msgSend_count(v7, v9, v10, v11);
  v15 = objc_msgSend_arrayWithCapacity_(v8, v13, v12, v14);
  v19 = objc_msgSend_network(self, v16, v17, v18);
  v23 = objc_msgSend_deviceHandler(v19, v20, v21, v22);
  v71 = objc_msgSend_device(v23, v24, v25, v26);

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v27 = v72;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v73, v77, 16);
  if (v32)
  {
    v33 = *v74;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v74 != v33)
        {
          objc_enumerationMutation(v27);
        }

        v35 = *(*(&v73 + 1) + 8 * i);
        v36 = objc_msgSend_network(self, v29, v30, v31, v71);
        v40 = objc_msgSend_deviceHandler(v36, v37, v38, v39);
        v44 = objc_msgSend_rows(v35, v41, v42, v43);
        v48 = objc_msgSend_outputSize(self, v45, v46, v47);
        v50 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v40, v49, v44, v48, v6);

        objc_msgSend_addObject_(v15, v51, v50, v52);
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v73, v77, 16);
    }

    while (v32);
  }

  v56 = objc_msgSend_filter(self, v53, v54, v55);
  v60 = objc_msgSend_trainingStates(self, v57, v58, v59);
  v64 = objc_msgSend_weights(self, v61, v62, v63);
  objc_msgSend_encodeForwardSequenceToCommandBuffer_sourceMatrices_destinationMatrices_trainingStates_weights_(v56, v65, v6, v27, v15, v60, v64);

  v69 = objc_msgSend_copy(v15, v66, v67, v68);

  return v69;
}

- (id)seqForwardCombinedMatrix:(id)a3 input:(id)a4
{
  v85[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695DF70];
  v12 = objc_msgSend_count(v7, v9, v10, v11);
  v15 = objc_msgSend_arrayWithCapacity_(v8, v13, v12, v14);
  v19 = objc_msgSend_network(self, v16, v17, v18);
  v23 = objc_msgSend_deviceHandler(v19, v20, v21, v22);
  v27 = objc_msgSend_device(v23, v24, v25, v26);

  v31 = 0;
  for (i = 0; i < objc_msgSend_count(v7, v28, v29, v30); ++i)
  {
    v36 = objc_msgSend_objectAtIndexedSubscript_(v7, v33, i, v35);
    v31 += objc_msgSend_rows(v36, v37, v38, v39);
  }

  v40 = objc_msgSend_network(self, v33, v34, v35);
  v44 = objc_msgSend_deviceHandler(v40, v41, v42, v43);
  v48 = objc_msgSend_outputSize(self, v45, v46, v47);
  v50 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v44, v49, v31, v48, v6);

  v54 = objc_msgSend_count(v7, v51, v52, v53);
  if (v54)
  {
    if (!(v54 >> 61))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v58 = 0;
  for (j = 0; j < objc_msgSend_count(v7, v55, v56, v57); ++j)
  {
    objc_msgSend_addObject_(v15, v60, v50, v62);
    *(8 * j) = objc_msgSend_rowBytes(v50, v63, v64, v65) * v58;
    v68 = objc_msgSend_objectAtIndexedSubscript_(v7, v66, j, v67);
    v58 += objc_msgSend_rows(v68, v69, v70, v71);
  }

  v72 = objc_msgSend_filter(self, v60, v61, v62);
  v76 = objc_msgSend_trainingStates(self, v73, v74, v75);
  v80 = objc_msgSend_weights(self, v77, v78, v79);
  objc_msgSend_encodeForwardSequenceToCommandBuffer_sourceMatrices_sourceOffsets_destinationMatrices_destinationOffsets_trainingStates_recurrentInputState_recurrentOutputStates_weights_(v72, v81, v6, v7, 0, v15, 0, v76, 0, 0, v80);

  v85[0] = v50;
  v83 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v82, v85, 1);

  return v83;
}

- (id)seqBackward:(id)a3 dataBatch:(id)a4 inputGradient:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = objc_msgSend_nextLayer(self, v11, v12, v13);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_msgSend_seqBackwardDifferentMatrices_inputGradient_(self, v16, v8, v10);
  }

  else
  {
    objc_msgSend_seqBackwardCombinedMatrix_inputGradient_(self, v16, v8, v10);
  }
  v20 = ;
  for (i = 0; ; ++i)
  {
    v22 = objc_msgSend_weights(self, v17, v18, v19);
    v26 = objc_msgSend_count(v22, v23, v24, v25);

    if (i >= v26)
    {
      break;
    }

    v30 = objc_msgSend_weights(self, v27, v28, v29);
    v33 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, i, v32);

    v37 = objc_msgSend_weightGradients(self, v34, v35, v36);
    v40 = objc_msgSend_objectAtIndexedSubscript_(v37, v38, i, v39);

    v44 = objc_msgSend_optimizers(self, v41, v42, v43);
    v47 = objc_msgSend_objectAtIndexedSubscript_(v44, v45, i, v46);

    objc_msgSend_encodeToCommandBuffer_inputGradientMatrix_inputValuesMatrix_(v47, v48, v8, v40, v33);
  }

  return v20;
}

- (id)seqBackwardDifferentMatrices:(id)a3 inputGradient:(id)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695DF70];
  v76 = v7;
  v12 = objc_msgSend_count(v7, v9, v10, v11);
  v15 = objc_msgSend_arrayWithCapacity_(v8, v13, v12, v14);
  v19 = objc_msgSend_network(self, v16, v17, v18);
  v23 = objc_msgSend_deviceHandler(v19, v20, v21, v22);
  v75 = objc_msgSend_device(v23, v24, v25, v26);

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v27 = v76;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v77, v81, 16);
  if (v32)
  {
    v33 = *v78;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v78 != v33)
        {
          objc_enumerationMutation(v27);
        }

        v35 = *(*(&v77 + 1) + 8 * i);
        v36 = objc_msgSend_network(self, v29, v30, v31);
        v40 = objc_msgSend_deviceHandler(v36, v37, v38, v39);
        v44 = objc_msgSend_rows(v35, v41, v42, v43);
        v48 = objc_msgSend_inputSize(self, v45, v46, v47);
        v50 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v40, v49, v44, v48, v6);

        objc_msgSend_addObject_(v15, v51, v50, v52);
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v77, v81, 16);
    }

    while (v32);
  }

  v56 = objc_msgSend_filter(self, v53, v54, v55);
  v60 = objc_msgSend_srcMatrices(self, v57, v58, v59);
  v64 = objc_msgSend_weightGradients(self, v61, v62, v63);
  v68 = objc_msgSend_trainingStates(self, v65, v66, v67);
  v72 = objc_msgSend_weights(self, v69, v70, v71);
  objc_msgSend_encodeGradientSequenceToCommandBuffer_forwardSources_sourceGradients_destinationGradients_weightGradients_trainingStates_weights_(v56, v73, v6, v60, v27, v15, v64, v68, v72);

  return v15;
}

- (id)seqBackwardCombinedMatrix:(id)a3 inputGradient:(id)a4
{
  v162 = a3;
  v6 = a4;
  v164 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, 0, v8);
  v9 = MEMORY[0x1E695DF70];
  v13 = objc_msgSend_srcMatrices(self, v10, v11, v12);
  v17 = objc_msgSend_count(v13, v14, v15, v16);
  v163 = objc_msgSend_arrayWithCapacity_(v9, v18, v17, v19);

  v20 = MEMORY[0x1E695DF70];
  v24 = objc_msgSend_srcMatrices(self, v21, v22, v23);
  v28 = objc_msgSend_count(v24, v25, v26, v27);
  v161 = objc_msgSend_arrayWithCapacity_(v20, v29, v28, v30);

  v34 = objc_msgSend_network(self, v31, v32, v33);
  v38 = objc_msgSend_deviceHandler(v34, v35, v36, v37);
  v159 = objc_msgSend_device(v38, v39, v40, v41);

  v45 = objc_msgSend_srcMatrices(self, v42, v43, v44);
  v49 = objc_msgSend_count(v45, v46, v47, v48);
  if (v49)
  {
    if (!(v49 >> 61))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v50 = MEMORY[0x1E6974480];
  v54 = objc_msgSend_columns(v164, v51, v52, v53);
  v58 = objc_msgSend_rowBytes(v164, v55, v56, v57);
  v62 = objc_msgSend_dataType(v164, v59, v60, v61);
  v165 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v50, v63, 1, v54, v58, v62);
  v158 = v6;
  v160 = objc_msgSend_data(v164, v64, v65, v66);
  v166 = 0;
  for (i = 0; ; ++i)
  {
    v71 = objc_msgSend_srcMatrices(self, v67, v68, v69);
    v75 = objc_msgSend_count(v71, v72, v73, v74);

    if (i >= v75)
    {
      break;
    }

    *(8 * i) = v166;
    v79 = objc_msgSend_srcMatrices(self, v76, v77, v78);
    v82 = objc_msgSend_objectAtIndexedSubscript_(v79, v80, i, v81);
    v86 = objc_msgSend_rows(v82, v83, v84, v85);
    v90 = objc_msgSend_rowBytes(v164, v87, v88, v89);

    v94 = objc_msgSend_srcMatrices(self, v91, v92, v93);
    v97 = objc_msgSend_objectAtIndexedSubscript_(v94, v95, i, v96);
    v101 = objc_msgSend_rows(v97, v98, v99, v100);
    objc_msgSend_setRows_(v165, v102, v101, v103);

    v104 = objc_alloc(MEMORY[0x1E6974478]);
    v106 = objc_msgSend_initWithBuffer_descriptor_(v104, v105, v160, v165);
    objc_msgSend_addObject_(v163, v107, v106, v108);
    v112 = objc_msgSend_network(self, v109, v110, v111);
    v116 = objc_msgSend_deviceHandler(v112, v113, v114, v115);
    v120 = objc_msgSend_srcMatrices(self, v117, v118, v119);
    v123 = objc_msgSend_objectAtIndexedSubscript_(v120, v121, i, v122);
    v127 = objc_msgSend_rows(v123, v124, v125, v126);
    v131 = objc_msgSend_inputSize(self, v128, v129, v130);
    v133 = objc_msgSend_tempMatrixWithRows_columns_cmdBuf_(v116, v132, v127, v131, v162);

    objc_msgSend_addObject_(v161, v134, v133, v135);
    v166 += v90 * v86;
  }

  v136 = objc_msgSend_filter(self, v76, v77, v78);
  v140 = objc_msgSend_srcMatrices(self, v137, v138, v139);
  v144 = objc_msgSend_weightGradients(self, v141, v142, v143);
  v148 = objc_msgSend_trainingStates(self, v145, v146, v147);
  v152 = objc_msgSend_weights(self, v149, v150, v151);
  objc_msgSend_encodeGradientSequenceToCommandBuffer_forwardSources_forwardSourceOffsets_sourceGradients_sourceGradientOffsets_destinationGradients_destinationOffsets_weightGradients_trainingStates_recurrentInputState_recurrentOutputStates_weights_(v136, v153, v162, v140, 0, v163, 0, v161, 0, v144, v148, 0, 0, v152);

  objc_msgSend_decrementReadCount(v164, v154, v155, v156);

  return v161;
}

- (void)updateSourceMatrix:(id)a3 inference:(BOOL)a4
{
  v8 = a3;
  if (!a4)
  {
    sub_19D4362A4(v8);
    objc_msgSend_setSrcMatrices_(self, v6, v8, v7);
  }
}

- (id)generateNode:(id)a3 model:(id)a4 weightIter:(unint64_t *)a5
{
  v278 = *MEMORY[0x1E69E9840];
  v270 = self;
  a3;
  a4;
  v10 = objc_msgSend_network(self, v7, v8, v9);
  v14 = objc_msgSend_deviceHandler(v10, v11, v12, v13);
  objc_msgSend_device(v14, v15, v16, v17);
  objc_claimAutoreleasedReturnValue();

  v21 = objc_msgSend_network(v270, v18, v19, v20);
  v25 = objc_msgSend_deviceHandler(v21, v22, v23, v24);
  v29 = objc_msgSend_commandQueue(v25, v26, v27, v28);

  v269 = objc_msgSend_commandBuffer(v29, v30, v31, v32);
  bzero(v264, 0x2C0uLL);
  v264[5] = 0;
  v264[4] = 0;
  v264[0] = 5;
  v264[15] = objc_msgSend_weightAttributes(v270, v33, v34, v35) | 0x80;
  v36 = v270;
  v40 = objc_msgSend_inputGateActivation(v270, v37, v38, v39);
  v264[7] = objc_msgSend_montrealTypeFromMPSNeuronType_(v36, v41, v40, v42);
  v43 = v270;
  v47 = objc_msgSend_forgetGateActivation(v270, v44, v45, v46);
  v264[8] = objc_msgSend_montrealTypeFromMPSNeuronType_(v43, v48, v47, v49);
  v50 = v270;
  v54 = objc_msgSend_cellGateActivation(v270, v51, v52, v53);
  v264[9] = objc_msgSend_montrealTypeFromMPSNeuronType_(v50, v55, v54, v56);
  v57 = v270;
  v61 = objc_msgSend_outputGateActivation(v270, v58, v59, v60);
  v264[10] = objc_msgSend_montrealTypeFromMPSNeuronType_(v57, v62, v61, v63);
  v64 = v270;
  v68 = objc_msgSend_cellToOutputActivation(v270, v65, v66, v67);
  v264[11] = objc_msgSend_montrealTypeFromMPSNeuronType_(v64, v69, v68, v70);
  v265 = objc_msgSend_inputSize(v270, v71, v72, v73);
  v266 = objc_msgSend_outputSize(v270, v74, v75, v76);
  v80 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v77, v78, v79);
  v263[0] = &v270;
  v263[1] = &v269;
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  v262 = 0u;
  v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5218, v81, &v259, v277, 16);
  if (v85)
  {
    v86 = *v260;
    do
    {
      for (i = 0; i != v85; ++i)
      {
        if (*v260 != v86)
        {
          objc_enumerationMutation(&unk_1F10C5218);
        }

        v88 = *(*(&v259 + 1) + 8 * i);
        v89 = objc_msgSend_network(v270, v82, v83, v84);
        v93 = objc_msgSend_deviceHandler(v89, v90, v91, v92);
        v97 = objc_msgSend_outputSize(v270, v94, v95, v96);
        v101 = objc_msgSend_inputSize(v270, v98, v99, v100);
        v103 = objc_msgSend_weightMatrixFixedRowBytesWithRows_columns_(v93, v102, v97, v101);

        objc_msgSend_setObject_forKeyedSubscript_(v80, v104, v103, v88);
        sub_19D43E7E0(v263, v88, v103);
      }

      v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5218, v82, &v259, v277, 16);
    }

    while (v85);
  }

  v257 = 0u;
  v258 = 0u;
  v255 = 0u;
  v256 = 0u;
  v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5230, v82, &v255, v276, 16);
  if (v108)
  {
    v109 = *v256;
    do
    {
      for (j = 0; j != v108; ++j)
      {
        if (*v256 != v109)
        {
          objc_enumerationMutation(&unk_1F10C5230);
        }

        v111 = *(*(&v255 + 1) + 8 * j);
        v112 = objc_msgSend_network(v270, v105, v106, v107);
        v116 = objc_msgSend_deviceHandler(v112, v113, v114, v115);
        v120 = objc_msgSend_outputSize(v270, v117, v118, v119);
        v124 = objc_msgSend_outputSize(v270, v121, v122, v123);
        v126 = objc_msgSend_weightMatrixFixedRowBytesWithRows_columns_(v116, v125, v120, v124);

        objc_msgSend_setObject_forKeyedSubscript_(v80, v127, v126, v111);
        sub_19D43E7E0(v263, v111, v126);
      }

      v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5230, v105, &v255, v276, 16);
    }

    while (v108);
  }

  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5248, v105, &v251, v275, 16);
  if (v131)
  {
    v132 = *v252;
    do
    {
      for (k = 0; k != v131; ++k)
      {
        if (*v252 != v132)
        {
          objc_enumerationMutation(&unk_1F10C5248);
        }

        v134 = *(*(&v251 + 1) + 8 * k);
        v135 = objc_msgSend_network(v270, v128, v129, v130);
        v139 = objc_msgSend_deviceHandler(v135, v136, v137, v138);
        v143 = objc_msgSend_outputSize(v270, v140, v141, v142);
        v145 = objc_msgSend_weightMatrixFixedRowBytesWithRows_columns_(v139, v144, 1, v143);

        objc_msgSend_setObject_forKeyedSubscript_(v80, v146, v145, v134);
        sub_19D43E7E0(v263, v134, v145);
      }

      v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5248, v128, &v251, v275, 16);
    }

    while (v131);
  }

  objc_msgSend_commit(v269, v128, v129, v130);
  objc_msgSend_waitUntilCompleted(v269, v147, v148, v149);
  if ((objc_msgSend_weightAttributes(v270, v150, v151, v152) & 0x20) != 0)
  {
    v199 = objc_msgSend_outputSize(v270, v153, v154, v155);
    v203 = objc_msgSend_inputSize(v270, v200, v201, v202);
    v207 = objc_msgSend_outputSize(v270, v204, v205, v206);
    v208 = sub_19D4363B8(4 * v199 * (v207 + v203));
    v267 = v208;
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5218, v209, &v247, v274, 16);
    if (v212)
    {
      v213 = *v248;
      do
      {
        for (m = 0; m != v212; ++m)
        {
          if (*v248 != v213)
          {
            objc_enumerationMutation(&unk_1F10C5218);
          }

          v215 = *(*(&v247 + 1) + 8 * m);
          v216 = v270;
          v217 = objc_msgSend_objectForKeyedSubscript_(v80, v210, v215, v211);
          v221 = objc_msgSend_unsignedIntegerValue(v215, v218, v219, v220);
          objc_msgSend_exportWeightsWithWeightMatrix_weightID_destination_recurrent_(v216, v222, v217, v221, v208, 0);
        }

        v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5218, v210, &v247, v274, 16);
      }

      while (v212);
    }

    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v223 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5230, v210, &v243, v273, 16);
    if (v223)
    {
      v224 = *v244;
      do
      {
        for (n = 0; n != v223; ++n)
        {
          if (*v244 != v224)
          {
            objc_enumerationMutation(&unk_1F10C5230);
          }

          v226 = *(*(&v243 + 1) + 8 * n);
          v227 = v270;
          v228 = objc_msgSend_objectForKeyedSubscript_(v80, v185, v226, v187);
          v232 = objc_msgSend_unsignedIntegerValue(v226, v229, v230, v231);
          objc_msgSend_exportWeightsWithWeightMatrix_weightID_destination_recurrent_(v227, v233, v228, v232, v208, 1);
        }

        v223 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5230, v185, &v243, v273, 16);
      }

      while (v223);
    }
  }

  else
  {
    v156 = objc_msgSend_outputSize(v270, v153, v154, v155);
    v160 = objc_msgSend_inputSize(v270, v157, v158, v159);
    v161 = sub_19D4363B8(4 * v156 * v160);
    v165 = objc_msgSend_outputSize(v270, v162, v163, v164);
    v169 = objc_msgSend_outputSize(v270, v166, v167, v168);
    v170 = sub_19D4363B8(4 * v165 * v169);
    v267 = v161;
    v268 = v170;
    v239 = 0u;
    v240 = 0u;
    v241 = 0u;
    v242 = 0u;
    v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5218, v171, &v239, v272, 16);
    if (v174)
    {
      v175 = *v240;
      do
      {
        for (ii = 0; ii != v174; ++ii)
        {
          if (*v240 != v175)
          {
            objc_enumerationMutation(&unk_1F10C5218);
          }

          v177 = *(*(&v239 + 1) + 8 * ii);
          v178 = v270;
          v179 = objc_msgSend_objectForKeyedSubscript_(v80, v172, v177, v173);
          v183 = objc_msgSend_unsignedIntegerValue(v177, v180, v181, v182);
          objc_msgSend_exportWeightsWithWeightMatrix_weightID_destination_recurrent_(v178, v184, v179, v183, v161, 0);
        }

        v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5218, v172, &v239, v272, 16);
      }

      while (v174);
    }

    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v188 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5230, v172, &v235, v271, 16);
    if (v188)
    {
      v189 = *v236;
      do
      {
        for (jj = 0; jj != v188; ++jj)
        {
          if (*v236 != v189)
          {
            objc_enumerationMutation(&unk_1F10C5230);
          }

          v191 = *(*(&v235 + 1) + 8 * jj);
          v192 = v270;
          v193 = objc_msgSend_objectForKeyedSubscript_(v80, v185, v191, v187);
          v197 = objc_msgSend_unsignedIntegerValue(v191, v194, v195, v196);
          objc_msgSend_exportWeightsWithWeightMatrix_weightID_destination_recurrent_(v192, v198, v193, v197, v170, 1);
        }

        v188 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F10C5230, v185, &v235, v271, 16);
      }

      while (v188);
    }
  }

  objc_msgSend_outputSize(v270, v185, v186, v187);
  operator new[]();
}

- (void)exportWeightsWithWeightMatrix:(id)a3 weightID:(unint64_t)a4 destination:(float *)a5 recurrent:(BOOL)a6
{
  v559 = a3;
  v12 = objc_msgSend_data(v559, v9, v10, v11);
  v13 = v12;
  v17 = objc_msgSend_contents(v13, v14, v15, v16);

  v21 = objc_msgSend_weightAttributes(self, v18, v19, v20);
  v28 = objc_msgSend_weightAttributes(self, v22, v23, v24) & 0x10;
  if (a4 > 10)
  {
    if (a4 > 14)
    {
      switch(a4)
      {
        case 0xFuLL:
          if ((v21 & 0x20) != 0)
          {
            v371 = objc_msgSend_outputSize(self, v25, v26, v27);
            v375 = objc_msgSend_inputSize(self, v372, v373, v374);
            v379 = objc_msgSend_outputSize(self, v376, v377, v378);
            v383 = objc_msgSend_inputSize(self, v380, v381, v382);
            v387 = objc_msgSend_outputSize(self, v384, v385, v386);
            if (objc_msgSend_rows(v559, v388, v389, v390))
            {
              v394 = 0;
              v395 = 0;
              v396 = &a5[3 * v371 * (v379 + v375)];
              v397 = 4 * (v387 + v383);
              do
              {
                if (objc_msgSend_columns(v559, v391, v392, v393))
                {
                  v401 = 0;
                  do
                  {
                    v396[v401] = *(v17 + v394 * objc_msgSend_columns(v559, v398, v399, v400) + 4 * v401);
                    ++v401;
                  }

                  while (objc_msgSend_columns(v559, v402, v403, v404) > v401);
                }

                ++v395;
                v396 = (v396 + v397);
                v394 += 4;
              }

              while (objc_msgSend_rows(v559, v398, v399, v400) > v395);
            }
          }

          else
          {
            v140 = objc_msgSend_inputSize(self, v25, v26, v27);
            v144 = objc_msgSend_outputSize(self, v141, v142, v143);
            objc_msgSend_outputSize(self, v145, v146, v147);
            objc_msgSend_outputSize(self, v148, v149, v150);
            if (objc_msgSend_rows(v559, v151, v152, v153))
            {
              v157 = 0;
              v158 = 0;
              v159 = 3 * v140 * v144;
              do
              {
                if (objc_msgSend_columns(v559, v154, v155, v156))
                {
                  v163 = 0;
                  do
                  {
                    a5[v159 + v163] = *(v17 + v157 * objc_msgSend_columns(v559, v160, v161, v162) + 4 * v163);
                    ++v163;
                  }

                  while (objc_msgSend_columns(v559, v164, v165, v166) > v163);
                  v159 += v163;
                }

                ++v158;
                v157 += 4;
              }

              while (objc_msgSend_rows(v559, v160, v161, v162) > v158);
            }
          }

          break;
        case 0x10uLL:
          if ((v21 & 0x20) != 0)
          {
            v514 = objc_msgSend_outputSize(self, v25, v26, v27);
            v518 = objc_msgSend_inputSize(self, v515, v516, v517);
            v522 = objc_msgSend_outputSize(self, v519, v520, v521);
            v526 = objc_msgSend_inputSize(self, v523, v524, v525);
            v530 = objc_msgSend_inputSize(self, v527, v528, v529);
            v534 = objc_msgSend_outputSize(self, v531, v532, v533);
            if (objc_msgSend_rows(v559, v535, v536, v537))
            {
              v541 = 0;
              v542 = 0;
              v543 = &a5[3 * v514 * (v522 + v518) + v526];
              v544 = 4 * (v534 + v530);
              do
              {
                if (objc_msgSend_columns(v559, v538, v539, v540))
                {
                  v548 = 0;
                  do
                  {
                    v543[v548] = *(v17 + v541 * objc_msgSend_columns(v559, v545, v546, v547) + 4 * v548);
                    ++v548;
                  }

                  while (objc_msgSend_columns(v559, v549, v550, v551) > v548);
                }

                ++v542;
                v543 = (v543 + v544);
                v541 += 4;
              }

              while (objc_msgSend_rows(v559, v545, v546, v547) > v542);
            }
          }

          else
          {
            objc_msgSend_inputSize(self, v25, v26, v27);
            objc_msgSend_outputSize(self, v246, v247, v248);
            v252 = objc_msgSend_outputSize(self, v249, v250, v251);
            v256 = objc_msgSend_outputSize(self, v253, v254, v255);
            if (objc_msgSend_rows(v559, v257, v258, v259))
            {
              v263 = 0;
              v264 = 0;
              v265 = 3 * v252 * v256;
              do
              {
                if (objc_msgSend_columns(v559, v260, v261, v262))
                {
                  v269 = 0;
                  do
                  {
                    a5[v265 + v269] = *(v17 + v263 * objc_msgSend_columns(v559, v266, v267, v268) + 4 * v269);
                    ++v269;
                  }

                  while (objc_msgSend_columns(v559, v270, v271, v272) > v269);
                  v265 += v269;
                }

                ++v264;
                v263 += 4;
              }

              while (objc_msgSend_rows(v559, v266, v267, v268) > v264);
            }
          }

          break;
        case 0x12uLL:
          if (objc_msgSend_outputSize(self, v25, v26, v27))
          {
            v56 = 0;
            do
            {
              v57 = *(v17 + 4 * v56);
              a5[3 * objc_msgSend_outputSize(self, v53, v54, v55) + v56++] = v57;
            }

            while (objc_msgSend_outputSize(self, v58, v59, v60) > v56);
          }

          break;
        default:
          goto LABEL_162;
      }
    }

    else
    {
      switch(a4)
      {
        case 0xBuLL:
          if ((v21 & 0x20) != 0)
          {
            v303 = objc_msgSend_outputSize(self, v25, v26, v27);
            v307 = objc_msgSend_inputSize(self, v304, v305, v306);
            v311 = objc_msgSend_outputSize(self, v308, v309, v310);
            v315 = objc_msgSend_inputSize(self, v312, v313, v314);
            v319 = objc_msgSend_outputSize(self, v316, v317, v318);
            if (objc_msgSend_rows(v559, v320, v321, v322))
            {
              v326 = 0;
              v327 = 0;
              v328 = &a5[(v303 << ((v28 >> 4) ^ 1u)) * (v311 + v307)];
              v329 = 4 * (v319 + v315);
              do
              {
                if (objc_msgSend_columns(v559, v323, v324, v325))
                {
                  v333 = 0;
                  do
                  {
                    v328[v333] = *(v17 + v326 * objc_msgSend_columns(v559, v330, v331, v332) + 4 * v333);
                    ++v333;
                  }

                  while (objc_msgSend_columns(v559, v334, v335, v336) > v333);
                }

                ++v327;
                v328 = (v328 + v329);
                v326 += 4;
              }

              while (objc_msgSend_rows(v559, v330, v331, v332) > v327);
            }
          }

          else
          {
            v86 = objc_msgSend_inputSize(self, v25, v26, v27);
            v90 = objc_msgSend_outputSize(self, v87, v88, v89);
            objc_msgSend_outputSize(self, v91, v92, v93);
            objc_msgSend_outputSize(self, v94, v95, v96);
            if (objc_msgSend_rows(v559, v97, v98, v99))
            {
              v103 = 0;
              v104 = 0;
              v105 = v90 * (v86 << ((v28 >> 4) ^ 1u));
              do
              {
                if (objc_msgSend_columns(v559, v100, v101, v102))
                {
                  v109 = 0;
                  do
                  {
                    a5[v105 + v109] = *(v17 + v103 * objc_msgSend_columns(v559, v106, v107, v108) + 4 * v109);
                    ++v109;
                  }

                  while (objc_msgSend_columns(v559, v110, v111, v112) > v109);
                  v105 += v109;
                }

                ++v104;
                v103 += 4;
              }

              while (objc_msgSend_rows(v559, v106, v107, v108) > v104);
            }
          }

          break;
        case 0xCuLL:
          if ((v21 & 0x20) != 0)
          {
            v557 = objc_msgSend_outputSize(self, v25, v26, v27);
            v443 = objc_msgSend_inputSize(self, v440, v441, v442);
            v447 = objc_msgSend_outputSize(self, v444, v445, v446);
            v451 = objc_msgSend_inputSize(self, v448, v449, v450);
            v455 = objc_msgSend_inputSize(self, v452, v453, v454);
            v459 = objc_msgSend_outputSize(self, v456, v457, v458);
            if (objc_msgSend_rows(v559, v460, v461, v462))
            {
              v466 = 0;
              v467 = 0;
              v468 = &a5[(v557 << ((v28 >> 4) ^ 1u)) * (v447 + v443) + v451];
              v469 = 4 * (v459 + v455);
              do
              {
                if (objc_msgSend_columns(v559, v463, v464, v465))
                {
                  v473 = 0;
                  do
                  {
                    v468[v473] = *(v17 + v466 * objc_msgSend_columns(v559, v470, v471, v472) + 4 * v473);
                    ++v473;
                  }

                  while (objc_msgSend_columns(v559, v474, v475, v476) > v473);
                }

                ++v467;
                v468 = (v468 + v469);
                v466 += 4;
              }

              while (objc_msgSend_rows(v559, v470, v471, v472) > v467);
            }
          }

          else
          {
            objc_msgSend_inputSize(self, v25, v26, v27);
            objc_msgSend_outputSize(self, v192, v193, v194);
            v198 = objc_msgSend_outputSize(self, v195, v196, v197);
            v202 = objc_msgSend_outputSize(self, v199, v200, v201);
            if (objc_msgSend_rows(v559, v203, v204, v205))
            {
              v209 = 0;
              v210 = 0;
              v211 = v202 * (v198 << ((v28 >> 4) ^ 1u));
              do
              {
                if (objc_msgSend_columns(v559, v206, v207, v208))
                {
                  v215 = 0;
                  do
                  {
                    a5[v211 + v215] = *(v17 + v209 * objc_msgSend_columns(v559, v212, v213, v214) + 4 * v215);
                    ++v215;
                  }

                  while (objc_msgSend_columns(v559, v216, v217, v218) > v215);
                  v211 += v215;
                }

                ++v210;
                v209 += 4;
              }

              while (objc_msgSend_rows(v559, v212, v213, v214) > v210);
            }
          }

          break;
        case 0xEuLL:
          if (objc_msgSend_outputSize(self, v25, v26, v27))
          {
            v40 = 0;
            do
            {
              v41 = *(v17 + 4 * v40);
              a5[(objc_msgSend_outputSize(self, v37, v38, v39) << ((v28 >> 4) ^ 1u)) + v40++] = v41;
            }

            while (objc_msgSend_outputSize(self, v42, v43, v44) > v40);
          }

          break;
        default:
          goto LABEL_162;
      }
    }
  }

  else if (a4 > 6)
  {
    switch(a4)
    {
      case 7uLL:
        if ((v21 & 0x20) != 0)
        {
          v337 = objc_msgSend_outputSize(self, v25, v26, v27);
          v341 = objc_msgSend_inputSize(self, v338, v339, v340);
          v345 = objc_msgSend_outputSize(self, v342, v343, v344);
          v349 = objc_msgSend_inputSize(self, v346, v347, v348);
          v353 = objc_msgSend_outputSize(self, v350, v351, v352);
          if (objc_msgSend_rows(v559, v354, v355, v356))
          {
            v360 = 0;
            v361 = 0;
            v362 = &a5[(v337 << (v28 >> 4)) * (v345 + v341)];
            v363 = 4 * (v353 + v349);
            do
            {
              if (objc_msgSend_columns(v559, v357, v358, v359))
              {
                v367 = 0;
                do
                {
                  v362[v367] = *(v17 + v360 * objc_msgSend_columns(v559, v364, v365, v366) + 4 * v367);
                  ++v367;
                }

                while (objc_msgSend_columns(v559, v368, v369, v370) > v367);
              }

              ++v361;
              v362 = (v362 + v363);
              v360 += 4;
            }

            while (objc_msgSend_rows(v559, v364, v365, v366) > v361);
          }
        }

        else
        {
          v113 = objc_msgSend_inputSize(self, v25, v26, v27);
          v117 = objc_msgSend_outputSize(self, v114, v115, v116);
          objc_msgSend_outputSize(self, v118, v119, v120);
          objc_msgSend_outputSize(self, v121, v122, v123);
          if (objc_msgSend_rows(v559, v124, v125, v126))
          {
            v130 = 0;
            v131 = 0;
            v132 = v117 * (v113 << (v28 >> 4));
            do
            {
              if (objc_msgSend_columns(v559, v127, v128, v129))
              {
                v136 = 0;
                do
                {
                  a5[v132 + v136] = *(v17 + v130 * objc_msgSend_columns(v559, v133, v134, v135) + 4 * v136);
                  ++v136;
                }

                while (objc_msgSend_columns(v559, v137, v138, v139) > v136);
                v132 += v136;
              }

              ++v131;
              v130 += 4;
            }

            while (objc_msgSend_rows(v559, v133, v134, v135) > v131);
          }
        }

        break;
      case 8uLL:
        if ((v21 & 0x20) != 0)
        {
          v558 = objc_msgSend_outputSize(self, v25, v26, v27);
          v480 = objc_msgSend_inputSize(self, v477, v478, v479);
          v484 = objc_msgSend_outputSize(self, v481, v482, v483);
          v488 = objc_msgSend_inputSize(self, v485, v486, v487);
          v492 = objc_msgSend_inputSize(self, v489, v490, v491);
          v496 = objc_msgSend_outputSize(self, v493, v494, v495);
          if (objc_msgSend_rows(v559, v497, v498, v499))
          {
            v503 = 0;
            v504 = 0;
            v505 = &a5[(v558 << (v28 >> 4)) * (v484 + v480) + v488];
            v506 = 4 * (v496 + v492);
            do
            {
              if (objc_msgSend_columns(v559, v500, v501, v502))
              {
                v510 = 0;
                do
                {
                  v505[v510] = *(v17 + v503 * objc_msgSend_columns(v559, v507, v508, v509) + 4 * v510);
                  ++v510;
                }

                while (objc_msgSend_columns(v559, v511, v512, v513) > v510);
              }

              ++v504;
              v505 = (v505 + v506);
              v503 += 4;
            }

            while (objc_msgSend_rows(v559, v507, v508, v509) > v504);
          }
        }

        else
        {
          objc_msgSend_inputSize(self, v25, v26, v27);
          objc_msgSend_outputSize(self, v219, v220, v221);
          v225 = objc_msgSend_outputSize(self, v222, v223, v224);
          v229 = objc_msgSend_outputSize(self, v226, v227, v228);
          if (objc_msgSend_rows(v559, v230, v231, v232))
          {
            v236 = 0;
            v237 = 0;
            v238 = v229 * (v225 << (v28 >> 4));
            do
            {
              if (objc_msgSend_columns(v559, v233, v234, v235))
              {
                v242 = 0;
                do
                {
                  a5[v238 + v242] = *(v17 + v236 * objc_msgSend_columns(v559, v239, v240, v241) + 4 * v242);
                  ++v242;
                }

                while (objc_msgSend_columns(v559, v243, v244, v245) > v242);
                v238 += v242;
              }

              ++v237;
              v236 += 4;
            }

            while (objc_msgSend_rows(v559, v239, v240, v241) > v237);
          }
        }

        break;
      case 0xAuLL:
        if (objc_msgSend_outputSize(self, v25, v26, v27))
        {
          v48 = 0;
          do
          {
            v49 = *(v17 + 4 * v48);
            a5[(objc_msgSend_outputSize(self, v45, v46, v47) << (v28 >> 4)) + v48++] = v49;
          }

          while (objc_msgSend_outputSize(self, v50, v51, v52) > v48);
        }

        break;
      default:
        goto LABEL_162;
    }
  }

  else
  {
    switch(a4)
    {
      case 3uLL:
        if ((v21 & 0x20) != 0)
        {
          objc_msgSend_outputSize(self, v25, v26, v27);
          objc_msgSend_inputSize(self, v273, v274, v275);
          objc_msgSend_outputSize(self, v276, v277, v278);
          v282 = objc_msgSend_inputSize(self, v279, v280, v281);
          v286 = objc_msgSend_outputSize(self, v283, v284, v285);
          if (objc_msgSend_rows(v559, v287, v288, v289))
          {
            v293 = 0;
            v294 = 0;
            v295 = 4 * (v286 + v282);
            do
            {
              if (objc_msgSend_columns(v559, v290, v291, v292))
              {
                v299 = 0;
                do
                {
                  a5[v299] = *(v17 + v293 * objc_msgSend_columns(v559, v296, v297, v298) + 4 * v299);
                  ++v299;
                }

                while (objc_msgSend_columns(v559, v300, v301, v302) > v299);
              }

              ++v294;
              a5 = (a5 + v295);
              v293 += 4;
            }

            while (objc_msgSend_rows(v559, v296, v297, v298) > v294);
          }
        }

        else
        {
          objc_msgSend_inputSize(self, v25, v26, v27);
          objc_msgSend_outputSize(self, v61, v62, v63);
          objc_msgSend_outputSize(self, v64, v65, v66);
          objc_msgSend_outputSize(self, v67, v68, v69);
          if (objc_msgSend_rows(v559, v70, v71, v72))
          {
            v76 = 0;
            v77 = 0;
            v78 = 0;
            do
            {
              if (objc_msgSend_columns(v559, v73, v74, v75))
              {
                v82 = 0;
                do
                {
                  a5[v78 + v82] = *(v17 + v76 * objc_msgSend_columns(v559, v79, v80, v81) + 4 * v82);
                  ++v82;
                }

                while (objc_msgSend_columns(v559, v83, v84, v85) > v82);
                v78 += v82;
              }

              ++v77;
              v76 += 4;
            }

            while (objc_msgSend_rows(v559, v79, v80, v81) > v77);
          }
        }

        break;
      case 4uLL:
        if ((v21 & 0x20) != 0)
        {
          objc_msgSend_outputSize(self, v25, v26, v27);
          objc_msgSend_inputSize(self, v405, v406, v407);
          objc_msgSend_outputSize(self, v408, v409, v410);
          v414 = objc_msgSend_inputSize(self, v411, v412, v413);
          v418 = objc_msgSend_inputSize(self, v415, v416, v417);
          v422 = objc_msgSend_outputSize(self, v419, v420, v421);
          if (objc_msgSend_rows(v559, v423, v424, v425))
          {
            v429 = 0;
            v430 = 0;
            v431 = &a5[v414];
            v432 = 4 * (v422 + v418);
            do
            {
              if (objc_msgSend_columns(v559, v426, v427, v428))
              {
                v436 = 0;
                do
                {
                  v431[v436] = *(v17 + v429 * objc_msgSend_columns(v559, v433, v434, v435) + 4 * v436);
                  ++v436;
                }

                while (objc_msgSend_columns(v559, v437, v438, v439) > v436);
              }

              ++v430;
              v431 = (v431 + v432);
              v429 += 4;
            }

            while (objc_msgSend_rows(v559, v433, v434, v435) > v430);
          }
        }

        else
        {
          objc_msgSend_inputSize(self, v25, v26, v27);
          objc_msgSend_outputSize(self, v167, v168, v169);
          objc_msgSend_outputSize(self, v170, v171, v172);
          objc_msgSend_outputSize(self, v173, v174, v175);
          if (objc_msgSend_rows(v559, v176, v177, v178))
          {
            v182 = 0;
            v183 = 0;
            v184 = 0;
            do
            {
              if (objc_msgSend_columns(v559, v179, v180, v181))
              {
                v188 = 0;
                do
                {
                  a5[v184 + v188] = *(v17 + v182 * objc_msgSend_columns(v559, v185, v186, v187) + 4 * v188);
                  ++v188;
                }

                while (objc_msgSend_columns(v559, v189, v190, v191) > v188);
                v184 += v188;
              }

              ++v183;
              v182 += 4;
            }

            while (objc_msgSend_rows(v559, v185, v186, v187) > v183);
          }
        }

        break;
      case 6uLL:
        if (objc_msgSend_outputSize(self, v25, v26, v27))
        {
          v32 = 0;
          do
          {
            v33 = *(v17 + 4 * v32);
            objc_msgSend_outputSize(self, v29, v30, v31);
            a5[v32++] = v33;
          }

          while (objc_msgSend_outputSize(self, v34, v35, v36) > v32);
        }

        break;
      default:
LABEL_162:
        v552 = MEMORY[0x1E695DF30];
        v553 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, @"Unknown weight ID %tu", v27, a4);
        v555 = objc_msgSend_exceptionWithName_reason_userInfo_(v552, v554, *MEMORY[0x1E695D930], v553, 0);
        v556 = v555;

        objc_exception_throw(v555);
    }
  }
}

- (id)matrixIDToString:(unint64_t)a3
{
  if (a3 - 3 > 0xF)
  {
    return @"Unknown Matrix ID";
  }

  else
  {
    return off_1E7626D30[a3 - 3];
  }
}

@end