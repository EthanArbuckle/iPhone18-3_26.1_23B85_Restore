@interface MontrealNNModelNetwork
- (MontrealNNModelNetwork)init;
- (MontrealNNModelNetwork)initWithDictionary:(id)a3 tensors:(id)a4 quantization:(id)a5 optimizerParams:(id)a6 jsonDir:(id)a7 optimization:(unint64_t)a8;
- (MontrealNNModelNetwork)initWithJSONDir:(id)a3;
- (MontrealNNModelNetwork)initWithModelContainer:(void *)a3 tensors:(id)a4;
- (id)checkForValidity;
- (id)createDataContainer;
- (id)jsonDescription;
- (void)collapseNodes;
- (void)collapsePackUnpack:(id)a3 nodesToRemove:(id)a4;
- (void)description:(id)a3 indent:(id)a4;
- (void)generateJSONAtPath:(id)a3;
- (void)generateModelContainer;
- (void)removeView:(id)a3 nodesToRemove:(id)a4;
- (void)validateNetworkTensors:(id)a3;
- (void)validateNodeTensors;
@end

@implementation MontrealNNModelNetwork

- (id)checkForValidity
{
  v28[3] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_nodes(self, a2, v2, v3);
  v27[0] = v5;
  v27[1] = @"nodes";
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v27, 2);
  v28[0] = v7;
  v11 = objc_msgSend_inputs(self, v8, v9, v10);
  v26[0] = v11;
  v26[1] = @"inputs";
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v26, 2);
  v28[1] = v13;
  v17 = objc_msgSend_outputs(self, v14, v15, v16);
  v25[0] = v17;
  v25[1] = @"outputs";
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v25, 2);
  v28[2] = v19;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v20, v28, 3);
  objc_msgSend_checkForValidity_(self, v22, v21, v23);

  return self;
}

- (MontrealNNModelNetwork)init
{
  v9.receiver = self;
  v9.super_class = MontrealNNModelNetwork;
  v2 = [(MontrealNNModelNetwork *)&v9 init];
  v3 = v2;
  if (v2)
  {
    nodes = v2->_nodes;
    v5 = MEMORY[0x1E695E0F0];
    v2->_nodes = MEMORY[0x1E695E0F0];

    inputs = v3->_inputs;
    v3->_inputs = v5;

    outputs = v3->_outputs;
    v3->_outputs = v5;
  }

  return v3;
}

- (MontrealNNModelNetwork)initWithJSONDir:(id)a3
{
  v4 = a3;
  v55.receiver = self;
  v55.super_class = MontrealNNModelNetwork;
  v8 = [(MontrealNNModelNetwork *)&v55 init];
  if (v8)
  {
    v9 = MEMORY[0x1E695DEF0];
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"%@/network.json", v7);
    v13 = objc_msgSend_dataWithContentsOfFile_(v9, v11, v10, v12);

    v54 = v13;
    v15 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v14, v13, 0, 0);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_19D2C78CC(@"Failed to extract network JSON", v16, v17, v18, v19, v20, v21, v22, v4);
    }

    v23 = MEMORY[0x1E695DEF0];
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"%@/description.json", v18);
    v27 = objc_msgSend_dataWithContentsOfFile_(v23, v25, v24, v26);

    v29 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v28, v27, 0, 0);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_19D2C78CC(@"Failed to extract description JSON", v30, v31, v32, v33, v34, v35, v36, v4);
    }

    v37 = v29;
    v38 = [MontrealNNModelQuantization alloc];
    v41 = objc_msgSend_initWithDictionary_(v38, v39, v37, v40);
    v42 = [MontrealNNModelOptimizerParam alloc];
    v45 = objc_msgSend_initWithDictionary_(v42, v43, v37, v44);
    v49 = objc_msgSend_set(MEMORY[0x1E695DFA8], v46, v47, v48);
    v51 = objc_msgSend_initWithDictionary_tensors_quantization_optimizerParams_jsonDir_optimization_(v8, v50, v15, v49, v41, v45, v4, 0);
  }

  else
  {
    v51 = 0;
  }

  v52 = objc_msgSend_checkForValidity(v51, v5, v6, v7);

  return v52;
}

- (MontrealNNModelNetwork)initWithModelContainer:(void *)a3 tensors:(id)a4
{
  v6 = a4;
  v7 = off_1EB014878(a3, 0);
  v9 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v8, v7, 0, 0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_19D2C78CC(@"Failed to extract network JSON from model container", v10, v11, v12, v13, v14, v15, v16, v33);
  }

  v17 = off_1EB014880(a3);
  v18 = [MontrealNNModelOptimizerParam alloc];
  v21 = objc_msgSend_initWithDictionary_(v18, v19, v17, v20);
  v24 = objc_msgSend_exMRL_numberForKey_(v17, v22, off_1EB013710, v23);
  v28 = objc_msgSend_unsignedIntegerValue(v24, v25, v26, v27);

  v29 = [MontrealNNModelNetwork alloc];
  v31 = objc_msgSend_initWithDictionary_tensors_quantization_optimizerParams_jsonDir_optimization_(v29, v30, v9, v6, 0, v21, 0, v28);

  return v31;
}

- (MontrealNNModelNetwork)initWithDictionary:(id)a3 tensors:(id)a4 quantization:(id)a5 optimizerParams:(id)a6 jsonDir:(id)a7 optimization:(unint64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v40.receiver = self;
  v40.super_class = MontrealNNModelNetwork;
  v18 = [(MontrealNNModelNetwork *)&v40 init];
  v22 = v18;
  if (v18)
  {
    v23 = v18;
    objc_storeStrong(&v18->_optimizerParams, a6);
    objc_storeStrong(&v23->_jsonDir, a7);
    v24 = sub_19D39991C(v13, off_1EB0136A0, v14, v15, v17);
    nodes = v22->_nodes;
    v22->_nodes = v24;

    v26 = sub_19D399430(v13, off_1EB013698);
    inputs = v22->_inputs;
    v22->_inputs = v26;

    v28 = sub_19D399430(v13, off_1EB013440);
    outputs = v22->_outputs;
    v22->_outputs = v28;

    objc_msgSend_validateNetworkTensors_(v22, v30, v14, v31);
    objc_msgSend_collapseNodes(v22, v32, v33, v34);
    objc_msgSend_validateNodeTensors(v22, v35, v36, v37);
  }

  v38 = objc_msgSend_checkForValidity(v22, v19, v20, v21);

  return v38;
}

- (void)validateNetworkTensors:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"%@ == %%@", v6, off_1EB013688);
  v13 = v4;
  v14 = v13;
  v8 = v7;
  v15 = v8;
  v9 = sub_19D424878(&v14, self->_inputs);
  inputs = self->_inputs;
  self->_inputs = v9;

  v11 = sub_19D424878(&v14, self->_outputs);
  outputs = self->_outputs;
  self->_outputs = v11;
}

- (void)collapseNodes
{
  v57 = *MEMORY[0x1E69E9840];
  do
  {
    v49 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = self->_nodes;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v52, v56, 16);
    if (v8)
    {
      v9 = *v53;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v52 + 1) + 8 * i);
          v12 = objc_msgSend_nodeStr(v11, v5, v6, v7);
          isEqualToString = objc_msgSend_isEqualToString_(v12, v13, off_1EB013520, v14);

          if (isEqualToString)
          {
            objc_msgSend_collapsePackUnpack_nodesToRemove_(self, v16, v11, v49);
            goto LABEL_21;
          }

          v19 = objc_msgSend_nodeStr(v11, v16, v17, v18);
          if (objc_msgSend_isEqualToString_(v19, v20, off_1EB013538, v21))
          {
            goto LABEL_19;
          }

          v25 = objc_msgSend_nodeStr(v11, v22, v23, v24);
          if (objc_msgSend_isEqualToString_(v25, v26, off_1EB013540, v27))
          {
            goto LABEL_18;
          }

          v31 = objc_msgSend_nodeStr(v11, v28, v29, v30);
          if (objc_msgSend_isEqualToString_(v31, v32, off_1EB013528, v33))
          {

LABEL_18:
LABEL_19:

LABEL_20:
            objc_msgSend_removeView_nodesToRemove_(self, v5, v11, v49);
LABEL_21:
            v41 = 1;
            goto LABEL_22;
          }

          v37 = objc_msgSend_nodeStr(v11, v34, v35, v36);
          v40 = objc_msgSend_isEqualToString_(v37, v38, off_1EB013530, v39);

          if (v40)
          {
            goto LABEL_20;
          }
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v52, v56, 16);
        v41 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v41 = 0;
    }

LABEL_22:

    v45 = objc_msgSend_mutableCopy(self->_nodes, v42, v43, v44);
    objc_msgSend_removeObjectsInArray_(v45, v46, v49, v47);
    nodes = self->_nodes;
    self->_nodes = v45;
  }

  while ((v41 & 1) != 0);
}

- (void)validateNodeTensors
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_mutableCopy(self->_nodes, a2, v2, v3);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v6 = self->_nodes;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v50, v54, 16);
  if (v11)
  {
    v12 = *v51;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v51 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v50 + 1) + 8 * i);
        v15 = objc_msgSend_inputs(v14, v8, v9, v10);
        v16 = sub_19D425010(v15);
        objc_msgSend_setInputs_(v14, v17, v16, v18);

        v22 = objc_msgSend_outputs(v14, v19, v20, v21);
        v23 = sub_19D425010(v22);
        objc_msgSend_setOutputs_(v14, v24, v23, v25);

        v29 = objc_msgSend_inputs(v14, v26, v27, v28);
        if (!objc_msgSend_count(v29, v30, v31, v32))
        {

LABEL_5:
          objc_msgSend_removeObject_(v5, v8, v14, v10);
          continue;
        }

        v36 = objc_msgSend_outputs(v14, v33, v34, v35);
        v40 = objc_msgSend_count(v36, v37, v38, v39) == 0;

        if (v40)
        {
          goto LABEL_5;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v50, v54, 16);
    }

    while (v11);
  }

  v44 = objc_msgSend_copy(v5, v41, v42, v43);
  nodes = self->_nodes;
  self->_nodes = v44;

  v46 = sub_19D425010(self->_inputs);
  inputs = self->_inputs;
  self->_inputs = v46;

  v48 = sub_19D425010(self->_outputs);
  outputs = self->_outputs;
  self->_outputs = v48;
}

- (void)collapsePackUnpack:(id)a3 nodesToRemove:(id)a4
{
  v130[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v10 = objc_msgSend_inputs(v5, v7, v8, v9);
  if (!objc_msgSend_count(v10, v11, v12, v13))
  {

    goto LABEL_5;
  }

  v17 = objc_msgSend_outputs(v5, v14, v15, v16);
  v21 = objc_msgSend_count(v17, v18, v19, v20);

  if (!v21)
  {
LABEL_5:
    sub_19D2C78CC(@"Node %@ contains empty inputs or outputs", v22, v23, v24, v25, v26, v27, v28, v5);
  }

  v29 = objc_msgSend_inputs(v5, v22, v23, v24);
  v32 = objc_msgSend_objectAtIndex_(v29, v30, 0, v31);

  v36 = objc_msgSend_outputs(v5, v33, v34, v35);
  v39 = objc_msgSend_objectAtIndex_(v36, v37, 0, v38);

  v43 = objc_msgSend_asInput(v39, v40, v41, v42);
  v47 = objc_msgSend_anyObject(v43, v44, v45, v46);

  if (!v47)
  {
    sub_19D2C78CC(@"Node %@ output is going nowhere?", v48, v49, v50, v51, v52, v53, v54, 0);
  }

  v55 = objc_msgSend_outputs(v47, v48, v49, v50);
  v59 = objc_msgSend_count(v55, v56, v57, v58);

  if (!v59)
  {
    sub_19D2C78CC(@"Node %@ contains empty outputs", v60, v61, v62, v63, v64, v65, v66, v47);
  }

  v67 = objc_msgSend_outputs(v47, v60, v61, v62);
  v70 = objc_msgSend_objectAtIndex_(v67, v68, 0, v69);

  v74 = objc_msgSend_asInput(v70, v71, v72, v73);
  v78 = objc_msgSend_anyObject(v74, v75, v76, v77);

  if (!v78)
  {
    sub_19D2C78CC(@"No unpack node?", v79, v80, v81, v82, v83, v84, v85, v128);
  }

  v86 = objc_msgSend_outputs(v78, v79, v80, v81);
  v89 = objc_msgSend_objectAtIndex_(v86, v87, 0, v88);

  v130[0] = v32;
  v91 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v90, v130, 1);
  objc_msgSend_setInputs_(v47, v92, v91, v93);

  v97 = objc_msgSend_asInput(v32, v94, v95, v96);
  objc_msgSend_removeAllObjects(v97, v98, v99, v100);

  v104 = objc_msgSend_asInput(v32, v101, v102, v103);
  objc_msgSend_addObject_(v104, v105, v47, v106);

  v129 = v89;
  v108 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v107, &v129, 1);
  objc_msgSend_setOutputs_(v47, v109, v108, v110);

  v114 = objc_msgSend_asOutput(v89, v111, v112, v113);
  objc_msgSend_removeAllObjects(v114, v115, v116, v117);

  v121 = objc_msgSend_asOutput(v89, v118, v119, v120);
  objc_msgSend_addObject_(v121, v122, v47, v123);

  objc_msgSend_addObject_(v6, v124, v5, v125);
  objc_msgSend_addObject_(v6, v126, v78, v127);
}

- (void)removeView:(id)a3 nodesToRemove:(id)a4
{
  v86 = a3;
  v5 = a4;
  v9 = objc_msgSend_inputs(v86, v6, v7, v8);
  if (!objc_msgSend_count(v9, v10, v11, v12))
  {

    goto LABEL_5;
  }

  v16 = objc_msgSend_outputs(v86, v13, v14, v15);
  v20 = objc_msgSend_count(v16, v17, v18, v19);

  if (!v20)
  {
LABEL_5:
    sub_19D2C78CC(@"Node %@ contains empty inputs or outputs", v21, v22, v23, v24, v25, v26, v27, v86);
  }

  v28 = objc_msgSend_inputs(v86, v21, v22, v23);
  v31 = objc_msgSend_objectAtIndex_(v28, v29, 0, v30);

  v35 = objc_msgSend_outputs(v86, v32, v33, v34);
  v38 = objc_msgSend_objectAtIndex_(v35, v36, 0, v37);

  v42 = objc_msgSend_asInput(v38, v39, v40, v41);
  v46 = objc_msgSend_anyObject(v42, v43, v44, v45);

  if (!v46)
  {
    sub_19D2C78CC(@"Node %@ output is going nowhere?", v47, v48, v49, v50, v51, v52, v53, v86);
  }

  v54 = objc_msgSend_inputs(v46, v47, v48, v49);
  v58 = objc_msgSend_mutableCopy(v54, v55, v56, v57);

  v61 = objc_msgSend_indexOfObject_(v58, v59, v38, v60);
  objc_msgSend_removeObjectAtIndex_(v58, v62, v61, v63);
  objc_msgSend_insertObject_atIndex_(v58, v64, v31, v61);
  v68 = objc_msgSend_copy(v58, v65, v66, v67);
  objc_msgSend_setInputs_(v46, v69, v68, v70);

  v74 = objc_msgSend_asInput(v31, v71, v72, v73);
  objc_msgSend_removeAllObjects(v74, v75, v76, v77);

  v81 = objc_msgSend_asInput(v31, v78, v79, v80);
  objc_msgSend_addObject_(v81, v82, v46, v83);

  objc_msgSend_addObject_(v5, v84, v86, v85);
}

- (void)description:(id)a3 indent:(id)a4
{
  v28 = a3;
  v6 = a4;
  v10 = objc_msgSend_inputs(self, v7, v8, v9);
  v11 = sub_19D398EBC(v10, v6);
  objc_msgSend_appendFormat_(v28, v12, @"\r %@ Inputs = %@ ", v13, v6, v11);

  v17 = objc_msgSend_outputs(self, v14, v15, v16);
  v18 = sub_19D398EBC(v17, v6);
  objc_msgSend_appendFormat_(v28, v19, @"\r %@ Outputs = %@ ", v20, v6, v18);

  v24 = objc_msgSend_nodes(self, v21, v22, v23);
  v25 = sub_19D398EBC(v24, v6);
  objc_msgSend_appendFormat_(v28, v26, @"\r %@ Nodes = %@ ", v27, v6, v25);
}

- (id)jsonDescription
{
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  v9 = objc_msgSend_nodes(self, v6, v7, v8);
  v10 = sub_19D3997C4(v9);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v11, v10, off_1EB0136A0);

  v15 = objc_msgSend_inputs(self, v12, v13, v14);
  v16 = sub_19D3997C4(v15);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v17, v16, off_1EB013438);

  v21 = objc_msgSend_outputs(self, v18, v19, v20);
  v22 = sub_19D3997C4(v21);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v23, v22, off_1EB013440);

  v27 = objc_msgSend_copy(v5, v24, v25, v26);

  return v27;
}

- (void)generateJSONAtPath:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = objc_msgSend_jsonDescription(self, v5, v6, v7);
  v38 = 0;
  v10 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v9, v8, 1, &v38);
  v11 = v38;
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"%@/network.json", v13, v4);
  objc_msgSend_writeToFile_atomically_(v10, v15, v14, 1);

  v37 = v11;
  v17 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v16, MEMORY[0x1E695E0F8], 1, &v37);
  v18 = v37;

  v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"%@/description.json", v20, v4);
  objc_msgSend_writeToFile_atomically_(v17, v22, v21, 1);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = objc_msgSend_nodes(self, v23, v24, v25);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v33, v39, 16);
  if (v30)
  {
    v31 = *v34;
    do
    {
      v32 = 0;
      do
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(v26);
        }

        objc_msgSend_generateJSONAtPath_(*(*(&v33 + 1) + 8 * v32++), v28, v4, v29);
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v33, v39, 16);
    }

    while (v30);
  }
}

- (id)createDataContainer
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = objc_msgSend_nodes(self, v6, v7, v8, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v25, v29, 16);
  if (v14)
  {
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = objc_msgSend_createDataContainer(*(*(&v25 + 1) + 8 * i), v11, v12, v13);
        objc_msgSend_addEntriesFromDictionary_(v5, v18, v17, v19);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v25, v29, 16);
    }

    while (v14);
  }

  v23 = objc_msgSend_copy(v5, v20, v21, v22);

  return v23;
}

- (void)generateModelContainer
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_jsonDescription(self, a2, v2, v3);
  v7 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v6, v5, 1, 0);
  v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
  objc_msgSend_addObject_(v11, v12, v7, v13);
  v20 = objc_msgSend_createDataContainer(self, v14, v15, v16);
  for (i = 1; objc_msgSend_count(v20, v17, v18, v19) >= i; ++i)
  {
    v24 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v22, i, v23);
    v27 = objc_msgSend_exMRL_dataForKey_(v20, v25, v24, v26);

    objc_msgSend_addObject_(v11, v28, v27, v29);
  }

  sub_19D362F00();
  v39 = off_1EB013710;
  v40[0] = &unk_1F10C5010;
  v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v40, &v39, 1);
  v32 = off_1EB014870;
  v36 = objc_msgSend_copy(v11, v33, v34, v35);
  v37 = v32(2, 7, 1, v31, v36, 0);

  return v37;
}

@end