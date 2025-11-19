@interface MontrealNNModelNode
- ($2F5DD3F8DC6DFA190B2787CD1D3A833E)parameters:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (MontrealNNModelNode)initWithDictionary:(id)a3 tensors:(id)a4 quantization:(id)a5 jsonDir:(id)a6;
- (MontrealNNModelNode)initWithName:(id)a3 nodeStr:(id)a4 activations:(id)a5 properties:(id)a6 weights:(id)a7;
- (id)auditAndUpdateTensors:(id)a3 dimensionTensors:(id)a4;
- (id)checkForValidity;
- (id)createDataContainer;
- (id)jsonDescription;
- (unint64_t)hash;
- (void)description:(id)a3 indent:(id)a4;
- (void)generateJSONAtPath:(id)a3;
- (void)keepTensors:(id)a3;
- (void)setInputs:(id)a3;
- (void)setOutputs:(id)a3;
@end

@implementation MontrealNNModelNode

- (id)checkForValidity
{
  v35[4] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_name(self, a2, v2, v3);
  v34[0] = v5;
  v34[1] = @"name";
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v34, 2);
  v35[0] = v7;
  v11 = objc_msgSend_nodeStr(self, v8, v9, v10);
  v33[0] = v11;
  v33[1] = @"nodeStr";
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v33, 2);
  v35[1] = v13;
  v17 = objc_msgSend_inputs(self, v14, v15, v16);
  v32[0] = v17;
  v32[1] = @"inputs";
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v32, 2);
  v35[2] = v19;
  v23 = objc_msgSend_outputs(self, v20, v21, v22);
  v31[0] = v23;
  v31[1] = @"outputs";
  v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, v31, 2);
  v35[3] = v25;
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, v35, 4);
  objc_msgSend_checkForValidity_(self, v28, v27, v29);

  return self;
}

- (MontrealNNModelNode)initWithName:(id)a3 nodeStr:(id)a4 activations:(id)a5 properties:(id)a6 weights:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v35.receiver = self;
  v35.super_class = MontrealNNModelNode;
  v18 = [(MontrealNNModelNode *)&v35 init];
  v22 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, a3);
    objc_storeStrong(&v22->_nodeStr, a4);
    v26 = objc_msgSend_copy(v15, v23, v24, v25);
    activations = v22->_activations;
    v22->_activations = v26;

    objc_storeStrong(&v22->_properties, a6);
    objc_storeStrong(&v22->_weights, a7);
    inputs = v22->_inputs;
    v29 = MEMORY[0x1E695E0F0];
    v22->_inputs = MEMORY[0x1E695E0F0];

    outputs = v22->_outputs;
    v22->_outputs = v29;

    inputsWithDimensions = v22->_inputsWithDimensions;
    v22->_inputsWithDimensions = v29;

    outputsWithDimensions = v22->_outputsWithDimensions;
    v22->_outputsWithDimensions = v29;

    bzero(&v22->_parameters, 0x2C0uLL);
  }

  v33 = objc_msgSend_checkForValidity(v22, v19, v20, v21);

  return v22;
}

- (MontrealNNModelNode)initWithDictionary:(id)a3 tensors:(id)a4 quantization:(id)a5 jsonDir:(id)a6
{
  v152[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v140 = a4;
  v11 = a5;
  v12 = a6;
  v149.receiver = self;
  v149.super_class = MontrealNNModelNode;
  v16 = [(MontrealNNModelNode *)&v149 init];
  if (v16)
  {
    v17 = objc_msgSend_exMRL_stringForKey_(v10, v13, off_1EB013418, v15);
    v18 = *(v16 + 16);
    *(v16 + 16) = v17;

    v21 = objc_msgSend_exMRL_arrayForKey_(v10, v19, off_1EB013420, v20);
    v22 = *(v16 + 24);
    *(v16 + 24) = v21;

    if (!*(v16 + 24))
    {
      v25 = objc_msgSend_exMRL_stringForKey_(v10, v23, off_1EB013420, v24);
      v27 = v25;
      if (v25)
      {
        v152[0] = v25;
        v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, v152, 1);
        v29 = *(v16 + 24);
        *(v16 + 24) = v28;
      }
    }

    v30 = objc_msgSend_exMRL_stringForKey_(v10, v23, off_1EB013430, v24);
    v31 = *(v16 + 32);
    *(v16 + 32) = v30;

    v34 = objc_msgSend_exMRL_dictionaryForKey_(v10, v32, off_1EB013448, v33);
    v35 = *(v16 + 40);
    *(v16 + 40) = v34;

    v36 = [MontrealNNModelQuantization alloc];
    v39 = objc_msgSend_initWithDictionary_(v36, v37, *(v16 + 40), v38);
    v40 = *(v16 + 88);
    *(v16 + 88) = v39;

    if (!*(v16 + 88))
    {
      objc_storeStrong((v16 + 88), a5);
    }

    v41 = sub_19D399430(v10, off_1EB013438);
    v42 = *(v16 + 48);
    *(v16 + 48) = v41;

    v43 = sub_19D399430(v10, off_1EB013440);
    v44 = *(v16 + 64);
    *(v16 + 64) = v43;

    v137 = v12;
    v138 = v11;
    v45 = sub_19D3995E0(v10, off_1EB013428, v11, v12);
    v46 = *(v16 + 80);
    *(v16 + 80) = v45;

    v47 = sub_19D399430(v10, off_1EB013438);
    v48 = *(v16 + 56);
    *(v16 + 56) = v47;

    v139 = v10;
    v49 = sub_19D399430(v10, off_1EB013440);
    v50 = *(v16 + 72);
    *(v16 + 72) = v49;

    objc_msgSend_addObjectsFromArray_(v140, v51, *(v16 + 48), v52);
    objc_msgSend_addObjectsFromArray_(v140, v53, *(v16 + 64), v54);
    v57 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v55, @"%@ == %%@", v56, off_1EB013688);
    v58 = MEMORY[0x1E695DF70];
    v62 = objc_msgSend_count(*(v16 + 48), v59, v60, v61);
    v65 = objc_msgSend_arrayWithCapacity_(v58, v63, v62, v64);
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v66 = *(v16 + 48);
    v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v145, v151, 16);
    if (v68)
    {
      v72 = v68;
      v73 = *v146;
      do
      {
        for (i = 0; i != v72; ++i)
        {
          if (*v146 != v73)
          {
            objc_enumerationMutation(v66);
          }

          v75 = MEMORY[0x1E696AE18];
          v76 = objc_msgSend_name(*(*(&v145 + 1) + 8 * i), v69, v70, v71);
          v79 = objc_msgSend_predicateWithFormat_(v75, v77, v57, v78, v76);

          v82 = objc_msgSend_filteredSetUsingPredicate_(v140, v80, v79, v81);
          v86 = objc_msgSend_anyObject(v82, v83, v84, v85);

          v90 = objc_msgSend_asInput(v86, v87, v88, v89);
          objc_msgSend_addObject_(v90, v91, v16, v92);

          objc_msgSend_addObject_(v65, v93, v86, v94);
        }

        v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v69, &v145, v151, 16);
      }

      while (v72);
    }

    v136 = v65;
    objc_storeStrong((v16 + 48), v65);
    v95 = MEMORY[0x1E695DF70];
    v99 = objc_msgSend_count(*(v16 + 64), v96, v97, v98);
    v102 = objc_msgSend_arrayWithCapacity_(v95, v100, v99, v101);
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v103 = v16;
    v104 = *(v16 + 64);
    v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v105, &v141, v150, 16);
    if (v106)
    {
      v110 = v106;
      v111 = *v142;
      do
      {
        for (j = 0; j != v110; ++j)
        {
          if (*v142 != v111)
          {
            objc_enumerationMutation(v104);
          }

          v113 = MEMORY[0x1E696AE18];
          v114 = objc_msgSend_name(*(*(&v141 + 1) + 8 * j), v107, v108, v109);
          v117 = objc_msgSend_predicateWithFormat_(v113, v115, v57, v116, v114);

          v120 = objc_msgSend_filteredSetUsingPredicate_(v140, v118, v117, v119);
          v124 = objc_msgSend_anyObject(v120, v121, v122, v123);

          v128 = objc_msgSend_asOutput(v124, v125, v126, v127);
          objc_msgSend_addObject_(v128, v129, v103, v130);

          objc_msgSend_addObject_(v102, v131, v124, v132);
        }

        v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v107, &v141, v150, 16);
      }

      while (v110);
    }

    v16 = v103;
    v133 = *(v103 + 64);
    *(v103 + 64) = v102;

    v11 = v138;
    v10 = v139;
    v12 = v137;
  }

  v134 = objc_msgSend_checkForValidity(v16, v13, v14, v15);

  return v134;
}

- (id)auditAndUpdateTensors:(id)a3 dimensionTensors:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = v5;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v33, v37, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v34;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        while (1)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v25 = *(*(&v33 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(v6, v14, v25, v15, v33) & 1) == 0)
          {
            break;
          }

          v19 = objc_msgSend_indexOfObject_(v6, v26, v25, v27);
          v22 = objc_msgSend_objectAtIndex_(v6, v20, v19, v21);
          objc_msgSend_addObject_(v10, v23, v22, v24);

          if (v16 == ++i)
          {
            goto LABEL_3;
          }
        }

        objc_msgSend_addObject_(v10, v26, v25, v27);
      }

LABEL_3:
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v33, v37, 16);
    }

    while (v16);
  }

  v31 = objc_msgSend_copy(v10, v28, v29, v30);

  return v31;
}

- (void)setInputs:(id)a3
{
  objc_storeStrong(&self->_inputs, a3);
  v5 = a3;
  v16 = objc_msgSend_inputs(self, v6, v7, v8);
  v12 = objc_msgSend_inputsWithDimensions(self, v9, v10, v11);
  v14 = objc_msgSend_auditAndUpdateTensors_dimensionTensors_(self, v13, v16, v12);
  inputsWithDimensions = self->_inputsWithDimensions;
  self->_inputsWithDimensions = v14;
}

- (void)setOutputs:(id)a3
{
  objc_storeStrong(&self->_outputs, a3);
  v5 = a3;
  v16 = objc_msgSend_outputs(self, v6, v7, v8);
  v12 = objc_msgSend_outputsWithDimensions(self, v9, v10, v11);
  v14 = objc_msgSend_auditAndUpdateTensors_dimensionTensors_(self, v13, v16, v12);
  outputsWithDimensions = self->_outputsWithDimensions;
  self->_outputsWithDimensions = v14;
}

- (void)keepTensors:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19D3742F4;
  v11[3] = &unk_1E76269C0;
  v12 = v4;
  v5 = v4;
  v6 = MEMORY[0x19EAFAD10](v11);
  v7 = (v6)[2](v6, self->_inputs);
  inputs = self->_inputs;
  self->_inputs = v7;

  v9 = (v6)[2](v6, self->_outputs);
  outputs = self->_outputs;
  self->_outputs = v9;
}

- ($2F5DD3F8DC6DFA190B2787CD1D3A833E)parameters:(SEL)a3
{
  if ((objc_msgSend_parametersSet(self, a3, a4, v4) & 1) == 0)
  {
    sub_19D44541C(self, a4, v11);
    memcpy(&self->_parameters, v11, sizeof(self->_parameters));
    objc_msgSend_setParametersSet_(self, v8, 1, v9);
  }

  return memcpy(retstr, &self->_parameters, sizeof($2F5DD3F8DC6DFA190B2787CD1D3A833E));
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_name(self, v8, v9, v10);
  objc_msgSend_appendFormat_(v7, v12, @"\r %@ Name = %@ ", v13, v6, v11);

  v17 = objc_msgSend_nodeStr(self, v14, v15, v16);
  objc_msgSend_appendFormat_(v7, v18, @"\r %@ Node Type = %@ ", v19, v6, v17);

  v23 = objc_msgSend_activations(self, v20, v21, v22);
  v24 = sub_19D398EBC(v23, v6);
  objc_msgSend_appendFormat_(v7, v25, @"\r %@ Activation Type = %@ ", v26, v6, v24);

  v30 = objc_msgSend_inputsWithDimensions(self, v27, v28, v29);
  v31 = sub_19D398EBC(v30, v6);
  objc_msgSend_appendFormat_(v7, v32, @"\r %@ Inputs With Dimensions = %@ ", v33, v6, v31);

  v37 = objc_msgSend_outputsWithDimensions(self, v34, v35, v36);
  v38 = sub_19D398EBC(v37, v6);
  objc_msgSend_appendFormat_(v7, v39, @"\r %@ Outputs With Dimension = %@ ", v40, v6, v38);

  v44 = objc_msgSend_inputs(self, v41, v42, v43);
  v45 = sub_19D398EBC(v44, v6);
  objc_msgSend_appendFormat_(v7, v46, @"\r %@ Inputs = %@ ", v47, v6, v45);

  v51 = objc_msgSend_outputs(self, v48, v49, v50);
  v52 = sub_19D398EBC(v51, v6);
  objc_msgSend_appendFormat_(v7, v53, @"\r %@ Outputs = %@ ", v54, v6, v52);

  v58 = objc_msgSend_weights(self, v55, v56, v57);
  v59 = sub_19D398EBC(v58, v6);
  objc_msgSend_appendFormat_(v7, v60, @"\r %@ Weights = %@ ", v61, v6, v59);

  v68 = objc_msgSend_properties(self, v62, v63, v64);
  v65 = sub_19D39912C(v68, v6);
  objc_msgSend_appendFormat_(v7, v66, @"\r %@ Properties = %@ ", v67, v6, v65);
}

- (id)jsonDescription
{
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  v9 = objc_msgSend_nodeStr(self, v6, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v10, v9, off_1EB013418);

  v14 = objc_msgSend_activations(self, v11, v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v15, v14, off_1EB013420);

  v19 = objc_msgSend_name(self, v16, v17, v18);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v20, v19, off_1EB013430);

  v24 = objc_msgSend_properties(self, v21, v22, v23);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v25, v24, off_1EB013448);

  v29 = objc_msgSend_weights(self, v26, v27, v28);
  v30 = sub_19D3997C4(v29);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v31, v30, off_1EB013428);

  v35 = objc_msgSend_inputsWithDimensions(self, v32, v33, v34);
  v36 = sub_19D3997C4(v35);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v37, v36, off_1EB013438);

  v41 = objc_msgSend_outputsWithDimensions(self, v38, v39, v40);
  v42 = sub_19D3997C4(v41);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v43, v42, off_1EB013440);

  v47 = objc_msgSend_copy(v5, v44, v45, v46);

  return v47;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v9 = objc_msgSend_name(self, v6, v7, v8);
    v13 = objc_msgSend_name(v5, v10, v11, v12);

    isEqual = objc_msgSend_isEqual_(v9, v14, v13, v15);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_name(self, a2, v2, v3);
  v8 = objc_msgSend_hash(v4, v5, v6, v7);

  return v8;
}

- (void)generateJSONAtPath:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = objc_msgSend_weights(self, v5, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_generateJSONAtPath_(*(*(&v16 + 1) + 8 * v15++), v11, v4, v12);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v20, 16);
    }

    while (v13);
  }
}

- (id)createDataContainer
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = objc_msgSend_weights(self, v6, v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v26, v30, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = objc_msgSend_createDataContainer(*(*(&v26 + 1) + 8 * i), v12, v13, v14);
        objc_msgSend_addEntriesFromDictionary_(v5, v19, v18, v20);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v26, v30, 16);
    }

    while (v15);
  }

  v24 = objc_msgSend_copy(v5, v21, v22, v23);

  return v24;
}

@end