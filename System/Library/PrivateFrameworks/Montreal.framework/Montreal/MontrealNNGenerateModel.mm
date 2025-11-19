@interface MontrealNNGenerateModel
- (MontrealNNGenerateModel)initWithWeightFormat:(unint64_t)a3;
- (MontrealNeuralNetwork)nnObject;
- (id)modelContainerPath;
- (id)networkInputs;
- (id)networkOutputs;
- (void)addInputs:(id)a3;
- (void)addOutputs:(id)a3;
- (void)dealloc;
- (void)generateModelContainer;
- (void)merge:(id)a3;
- (void)removeInput:(id)a3;
- (void)removeOutput:(id)a3;
@end

@implementation MontrealNNGenerateModel

- (MontrealNNGenerateModel)initWithWeightFormat:(unint64_t)a3
{
  v19.receiver = self;
  v19.super_class = MontrealNNGenerateModel;
  v4 = [(MontrealNNGenerateModel *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_weightFormat = a3;
    v6 = objc_alloc_init(MontrealNNModelNetwork);
    network = v5->_network;
    v5->_network = v6;

    v11 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v8, v9, v10);
    inputs = v5->_inputs;
    v5->_inputs = v11;

    v16 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14, v15);
    outputs = v5->_outputs;
    v5->_outputs = v16;

    sub_19D362F00();
  }

  return v5;
}

- (void)dealloc
{
  nnObject = self->_nnObject;
  if (nnObject)
  {
    CFRelease(nnObject);
    self->_nnObject = 0;
  }

  v4.receiver = self;
  v4.super_class = MontrealNNGenerateModel;
  [(MontrealNNGenerateModel *)&v4 dealloc];
}

- (MontrealNeuralNetwork)nnObject
{
  result = self->_nnObject;
  if (!result)
  {
    result = MRLNeuralNetworkCreate(0);
    self->_nnObject = result;
  }

  return result;
}

- (void)merge:(id)a3
{
  v51 = a3;
  v7 = objc_msgSend_network(self, v4, v5, v6);
  v11 = objc_msgSend_nodes(v7, v8, v9, v10);
  v15 = objc_msgSend_node(v51, v12, v13, v14);
  v18 = objc_msgSend_containsObject_(v11, v16, v15, v17);

  if (v18)
  {
    sub_19D2C78CC(@"Failed to merge %@ to the network as there is one which already exists with the same name", v19, v20, v21, v22, v23, v24, v25, v51);
  }

  v26 = objc_msgSend_network(self, v19, v20, v21);
  v30 = objc_msgSend_nodes(v26, v27, v28, v29);
  v34 = objc_msgSend_mutableCopy(v30, v31, v32, v33);

  v38 = objc_msgSend_node(v51, v35, v36, v37);
  objc_msgSend_addObject_(v34, v39, v38, v40);

  v44 = objc_msgSend_copy(v34, v41, v42, v43);
  v48 = objc_msgSend_network(self, v45, v46, v47);
  objc_msgSend_setNodes_(v48, v49, v44, v50);
}

- (void)generateModelContainer
{
  v5 = objc_msgSend_weightFormat(self, a2, v2, v3);
  if (v5 == 1)
  {
    v35 = objc_msgSend_modelContainerPath(self, v6, v7, v8);
    v38 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v36, v35, v37);
    v39 = off_1EB014860(v38, 8, 0);

    return v39;
  }

  else if (v5)
  {
    return 0;
  }

  else
  {
    v9 = objc_msgSend_networkInputs(self, v6, v7, v8);
    v13 = objc_msgSend_network(self, v10, v11, v12);
    objc_msgSend_setInputs_(v13, v14, v9, v15);

    v19 = objc_msgSend_networkOutputs(self, v16, v17, v18);
    v23 = objc_msgSend_network(self, v20, v21, v22);
    objc_msgSend_setOutputs_(v23, v24, v19, v25);

    v29 = objc_msgSend_network(self, v26, v27, v28);
    ModelContainer = objc_msgSend_generateModelContainer(v29, v30, v31, v32);

    return ModelContainer;
  }
}

- (id)modelContainerPath
{
  v5 = objc_msgSend_networkInputs(self, a2, v2, v3);
  v9 = objc_msgSend_network(self, v6, v7, v8);
  objc_msgSend_setInputs_(v9, v10, v5, v11);

  v15 = objc_msgSend_networkOutputs(self, v12, v13, v14);
  v19 = objc_msgSend_network(self, v16, v17, v18);
  objc_msgSend_setOutputs_(v19, v20, v15, v21);

  v22 = NSTemporaryDirectory();
  v25 = objc_msgSend_stringByAppendingPathComponent_(v22, v23, @"model_generate.XXXXX", v24);

  v26 = v25;
  v30 = objc_msgSend_UTF8String(v26, v27, v28, v29);
  v31 = mkdtemp(v30);
  v35 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v32, v33, v34);
  v36 = strlen(v31);
  v38 = objc_msgSend_stringWithFileSystemRepresentation_length_(v35, v37, v31, v36);

  v42 = objc_msgSend_network(self, v39, v40, v41);
  objc_msgSend_generateJSONAtPath_(v42, v43, v38, v44);

  v47 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v45, v38, v46);
  ModelContainerWithJSON = MRLNeuralNetworkCreateModelContainerWithJSON(v47);
  v51 = objc_msgSend_stringByAppendingPathComponent_(v38, v49, @"model_container.nlmodel", v50);
  v54 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v52, v51, v53);
  off_1EB014838(ModelContainerWithJSON, v54, 1, 0);

  if (ModelContainerWithJSON)
  {
    CFRelease(ModelContainerWithJSON);
  }

  return v51;
}

- (void)addInputs:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v30, v34, 16);
  if (v8)
  {
    v9 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        v12 = MEMORY[0x1E696AD98];
        v13 = objc_msgSend_inputs(self, v5, v6, v7);
        v16 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v11, v15);
        v20 = objc_msgSend_unsignedIntegerValue(v16, v17, v18, v19);
        v23 = objc_msgSend_numberWithUnsignedInteger_(v12, v21, v20 + 1, v22);
        v27 = objc_msgSend_inputs(self, v24, v25, v26);
        objc_msgSend_setObject_forKeyedSubscript_(v27, v28, v23, v11);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v30, v34, 16);
    }

    while (v8);
  }
}

- (void)removeInput:(id)a3
{
  v24 = a3;
  v4 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_inputs(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v24, v10);
  v15 = objc_msgSend_unsignedIntegerValue(v11, v12, v13, v14);
  v18 = objc_msgSend_numberWithUnsignedInteger_(v4, v16, v15 - 1, v17);
  v22 = objc_msgSend_inputs(self, v19, v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v22, v23, v18, v24);
}

- (void)addOutputs:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v30, v34, 16);
  if (v8)
  {
    v9 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        v12 = MEMORY[0x1E696AD98];
        v13 = objc_msgSend_outputs(self, v5, v6, v7);
        v16 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v11, v15);
        v20 = objc_msgSend_unsignedIntegerValue(v16, v17, v18, v19);
        v23 = objc_msgSend_numberWithUnsignedInteger_(v12, v21, v20 + 1, v22);
        v27 = objc_msgSend_outputs(self, v24, v25, v26);
        objc_msgSend_setObject_forKeyedSubscript_(v27, v28, v23, v11);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v30, v34, 16);
    }

    while (v8);
  }
}

- (void)removeOutput:(id)a3
{
  v24 = a3;
  v4 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_outputs(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v24, v10);
  v15 = objc_msgSend_unsignedIntegerValue(v11, v12, v13, v14);
  v18 = objc_msgSend_numberWithUnsignedInteger_(v4, v16, v15 - 1, v17);
  v22 = objc_msgSend_outputs(self, v19, v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v22, v23, v18, v24);
}

- (id)networkInputs
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = objc_msgSend_inputs(self, v6, v7, v8, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v27, v31, 16);
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = objc_msgSend_inputs(self, v11, v12, v13);
        v21 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v17, v20);
        v25 = objc_msgSend_unsignedIntegerValue(v21, v22, v23, v24) == 1;

        if (v25)
        {
          objc_msgSend_addObject_(v5, v11, v17, v13);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v27, v31, 16);
    }

    while (v14);
  }

  return v5;
}

- (id)networkOutputs
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = objc_msgSend_outputs(self, v6, v7, v8, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v27, v31, 16);
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = objc_msgSend_outputs(self, v11, v12, v13);
        v21 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v17, v20);
        v25 = objc_msgSend_unsignedIntegerValue(v21, v22, v23, v24) == 1;

        if (v25)
        {
          objc_msgSend_addObject_(v5, v11, v17, v13);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v27, v31, 16);
    }

    while (v14);
  }

  return v5;
}

@end