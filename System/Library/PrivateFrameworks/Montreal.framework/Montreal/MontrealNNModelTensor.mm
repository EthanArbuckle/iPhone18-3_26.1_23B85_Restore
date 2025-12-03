@interface MontrealNNModelTensor
+ (id)createInputs:(id *)inputs inputChunks:(id)chunks nodeName:(id)name;
+ (id)createOutputs:(id *)outputs outputChunks:(id)chunks nodeName:(id)name;
- (BOOL)isEqual:(id)equal;
- (MontrealNNModelTensor)initWithDictionary:(id)dictionary;
- (MontrealNNModelTensor)initWithName:(id)name dimension:(id)dimension;
- (id)checkForValidity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonDescription;
- (unint64_t)hash;
- (unint64_t)tensorSize;
- (void)description:(id)description indent:(id)indent;
@end

@implementation MontrealNNModelTensor

- (id)checkForValidity
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_name(self, a2, v2, v3);
  v13[0] = v5;
  v13[1] = @"name";
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v13, 2);
  v14[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v14, 1);
  objc_msgSend_checkForValidity_(self, v10, v9, v11);

  return self;
}

- (MontrealNNModelTensor)initWithName:(id)name dimension:(id)dimension
{
  nameCopy = name;
  dimensionCopy = dimension;
  v26.receiver = self;
  v26.super_class = MontrealNNModelTensor;
  v9 = [(MontrealNNModelTensor *)&v26 init];
  v13 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v13->_dimension, dimension);
    v17 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v14, v15, v16);
    asInput = v13->_asInput;
    v13->_asInput = v17;

    v22 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v19, v20, v21);
    asOutput = v13->_asOutput;
    v13->_asOutput = v22;
  }

  v24 = objc_msgSend_checkForValidity(v13, v10, v11, v12);

  return v24;
}

- (unint64_t)tensorSize
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = objc_msgSend_dimension(self, a2, v2, v3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v6)
  {
    v10 = v6;
    v11 = *v16;
    v12 = 1;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v12 *= objc_msgSend_unsignedIntegerValue(*(*(&v15 + 1) + 8 * v13++), v7, v8, v9);
      }

      while (v10 != v13);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v15, v19, 16);
    }

    while (v10);
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (MontrealNNModelTensor)initWithDictionary:(id)dictionary
{
  v4 = off_1EB013688;
  dictionaryCopy = dictionary;
  v8 = objc_msgSend_exMRL_stringForKey_(dictionaryCopy, v6, v4, v7);
  v11 = objc_msgSend_exMRL_arrayForKey_(dictionaryCopy, v9, off_1EB013690, v10);

  v13 = objc_msgSend_initWithName_dimension_(self, v12, v8, v11);
  return v13;
}

- (void)description:(id)description indent:(id)indent
{
  v84 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  indentCopy = indent;
  v11 = objc_msgSend_name(self, v8, v9, v10);
  objc_msgSend_appendFormat_(descriptionCopy, v12, @"\r %@ Name = %@", v13, indentCopy, v11);

  v17 = objc_msgSend_dimension(self, v14, v15, v16);
  v21 = objc_msgSend_exMRL_numberArrayDescription(v17, v18, v19, v20);
  objc_msgSend_appendFormat_(descriptionCopy, v22, @"\r %@ Dimension = %@", v23, indentCopy, v21);

  objc_msgSend_appendFormat_(descriptionCopy, v24, @"\r %@ As Input", v25, indentCopy);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v29 = objc_msgSend_asInput(self, v26, v27, v28);
  v33 = objc_msgSend_allObjects(v29, v30, v31, v32);

  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v78, v83, 16);
  if (v35)
  {
    v38 = v35;
    v39 = *v79;
    do
    {
      v40 = 0;
      do
      {
        if (*v79 != v39)
        {
          objc_enumerationMutation(v33);
        }

        v41 = *(*(&v78 + 1) + 8 * v40);
        v42 = objc_msgSend_indentByFactor_(indentCopy, v36, 1, v37);
        v46 = objc_msgSend_name(v41, v43, v44, v45);
        objc_msgSend_appendFormat_(descriptionCopy, v47, @"\r %@ %@", v48, v42, v46);

        ++v40;
      }

      while (v38 != v40);
      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v78, v83, 16);
    }

    while (v38);
  }

  objc_msgSend_appendFormat_(descriptionCopy, v49, @"\r %@ As Output", v50, indentCopy);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v54 = objc_msgSend_asOutput(self, v51, v52, v53);
  v58 = objc_msgSend_allObjects(v54, v55, v56, v57);

  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v74, v82, 16);
  if (v60)
  {
    v63 = v60;
    v64 = *v75;
    do
    {
      v65 = 0;
      do
      {
        if (*v75 != v64)
        {
          objc_enumerationMutation(v58);
        }

        v66 = *(*(&v74 + 1) + 8 * v65);
        v67 = objc_msgSend_indentByFactor_(indentCopy, v61, 1, v62);
        v71 = objc_msgSend_name(v66, v68, v69, v70);
        objc_msgSend_appendFormat_(descriptionCopy, v72, @"\r %@ %@", v73, v67, v71);

        ++v65;
      }

      while (v63 != v65);
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v74, v82, 16);
    }

    while (v63);
  }
}

- (id)jsonDescription
{
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  v9 = objc_msgSend_name(self, v6, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v10, v9, off_1EB013688);

  v14 = objc_msgSend_dimension(self, v11, v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v15, v14, off_1EB013690);

  v19 = objc_msgSend_copy(v5, v16, v17, v18);

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

+ (id)createInputs:(id *)inputs inputChunks:(id)chunks nodeName:(id)name
{
  v37 = *MEMORY[0x1E69E9840];
  chunksCopy = chunks;
  nameCopy = name;
  v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = chunksCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v32, v36, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v33;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        v20 = MEMORY[0x1E696AEC0];
        v21 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v14, 1, v15);
        v24 = objc_msgSend_stringWithFormat_(v20, v22, @"tensor_input_%@_%@", v23, nameCopy, v21);

        v25 = [MontrealNNModelTensor alloc];
        v27 = objc_msgSend_initWithName_dimension_(v25, v26, v24, v19);
        objc_msgSend_addObject_(v11, v28, v27, v29);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v32, v36, 16);
    }

    while (v16);
  }

  return v11;
}

+ (id)createOutputs:(id *)outputs outputChunks:(id)chunks nodeName:(id)name
{
  v37 = *MEMORY[0x1E69E9840];
  chunksCopy = chunks;
  nameCopy = name;
  v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = chunksCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v32, v36, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v33;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        v20 = MEMORY[0x1E696AEC0];
        v21 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v14, 1, v15);
        v24 = objc_msgSend_stringWithFormat_(v20, v22, @"tensor_output_%@_%@", v23, nameCopy, v21);

        v25 = [MontrealNNModelTensor alloc];
        v27 = objc_msgSend_initWithName_dimension_(v25, v26, v24, v19);
        objc_msgSend_addObject_(v11, v28, v27, v29);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v32, v36, 16);
    }

    while (v16);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_allocWithZone_(MontrealNNModelTensor, a2, zone, v3);
  v9 = objc_msgSend_name(self, v6, v7, v8);
  v13 = objc_msgSend_dimension(self, v10, v11, v12);
  v15 = objc_msgSend_initWithName_dimension_(v5, v14, v9, v13);

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v19 = objc_msgSend_asInput(self, v16, v17, v18);
  v23 = objc_msgSend_allObjects(v19, v20, v21, v22);

  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v61, v66, 16);
  if (v25)
  {
    v29 = v25;
    v30 = *v62;
    do
    {
      v31 = 0;
      do
      {
        if (*v62 != v30)
        {
          objc_enumerationMutation(v23);
        }

        v32 = *(*(&v61 + 1) + 8 * v31);
        v33 = objc_msgSend_asInput(v15, v26, v27, v28);
        objc_msgSend_addObject_(v33, v34, v32, v35);

        ++v31;
      }

      while (v29 != v31);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v61, v66, 16);
    }

    while (v29);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v39 = objc_msgSend_asOutput(self, v36, v37, v38, 0);
  v43 = objc_msgSend_allObjects(v39, v40, v41, v42);

  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v57, v65, 16);
  if (v45)
  {
    v49 = v45;
    v50 = *v58;
    do
    {
      v51 = 0;
      do
      {
        if (*v58 != v50)
        {
          objc_enumerationMutation(v43);
        }

        v52 = *(*(&v57 + 1) + 8 * v51);
        v53 = objc_msgSend_asOutput(v15, v46, v47, v48);
        objc_msgSend_addObject_(v53, v54, v52, v55);

        ++v51;
      }

      while (v49 != v51);
      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v46, &v57, v65, 16);
    }

    while (v49);
  }

  return v15;
}

@end