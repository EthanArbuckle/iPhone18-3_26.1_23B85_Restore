@interface MontrealNNModelWeight
- (MontrealNNModelWeight)initWithDictionary:(id)a3 quantization:(id)a4 jsonDir:(id)a5;
- (MontrealNNModelWeight)initWithName:(id)a3 index:(id)a4 dimension:(id)a5;
- (MontrealNNModelWeight)initWithName:(id)a3 index:(id)a4 dimension:(id)a5 weightData:(id)a6;
- (MontrealNNModelWeight)initWithName:(id)a3 index:(id)a4 dimension:(id)a5 weightValues:(id)a6;
- (id)checkForValidity;
- (id)createConvertArrayToData:(id)a3 quantization:(id)a4;
- (id)createDataContainer;
- (id)createflattenWeightsFile:(id)a3;
- (id)createflattenWeightsHierarchy:(id)a3;
- (id)jsonDescription;
- (void)description:(id)a3 indent:(id)a4;
- (void)generateJSONAtPath:(id)a3;
@end

@implementation MontrealNNModelWeight

- (id)checkForValidity
{
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_name(self, a2, v2, v3);
  v20[0] = v5;
  v20[1] = @"name";
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v20, 2);
  v21[0] = v7;
  v11 = objc_msgSend_index(self, v8, v9, v10);
  v19[0] = v11;
  v19[1] = @"index";
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v19, 2);
  v21[1] = v13;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v21, 2);
  objc_msgSend_checkForValidity_(self, v16, v15, v17);

  return self;
}

- (MontrealNNModelWeight)initWithName:(id)a3 index:(id)a4 dimension:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MontrealNNModelWeight;
  v12 = [(MontrealNNModelWeight *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_index, a4);
    objc_storeStrong(&v13->_dimension, a5);
  }

  return v13;
}

- (MontrealNNModelWeight)initWithName:(id)a3 index:(id)a4 dimension:(id)a5 weightData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v15 = objc_msgSend_initWithName_index_dimension_(self, v14, v10, v11, v12);
  v19 = v15;
  if (v15)
  {
    objc_storeStrong((v15 + 40), a6);
  }

  v20 = objc_msgSend_checkForValidity(v19, v16, v17, v18);

  return v20;
}

- (MontrealNNModelWeight)initWithName:(id)a3 index:(id)a4 dimension:(id)a5 weightValues:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v15 = objc_msgSend_initWithName_index_dimension_(self, v14, v10, v11, v12);
  v19 = v15;
  if (v15)
  {
    objc_storeStrong((v15 + 32), a6);
  }

  v20 = objc_msgSend_checkForValidity(v19, v16, v17, v18);

  return v20;
}

- (MontrealNNModelWeight)initWithDictionary:(id)a3 quantization:(id)a4 jsonDir:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = MontrealNNModelWeight;
  v14 = [(MontrealNNModelWeight *)&v27 init];
  if (v14)
  {
    v15 = objc_msgSend_exMRL_stringForKey_(v8, v11, off_1EB013410, v13);
    name = v14->_name;
    v14->_name = v15;

    v19 = objc_msgSend_exMRL_arrayForKey_(v8, v17, off_1EB013408, v18);
    dimension = v14->_dimension;
    v14->_dimension = v19;

    v23 = objc_msgSend_exMRL_numberForKey_(v8, v21, off_1EB013400, v22);
    index = v14->_index;
    v14->_index = v23;

    objc_storeStrong(&v14->_quantization, a4);
    objc_storeStrong(&v14->_jsonDir, a5);
  }

  v25 = objc_msgSend_checkForValidity(v14, v11, v12, v13);

  return v25;
}

- (void)description:(id)a3 indent:(id)a4
{
  v29 = a3;
  v6 = a4;
  v10 = objc_msgSend_name(self, v7, v8, v9);
  objc_msgSend_appendFormat_(v29, v11, @"\r %@ Name = %@ ", v12, v6, v10);

  v16 = objc_msgSend_index(self, v13, v14, v15);
  objc_msgSend_appendFormat_(v29, v17, @"\r %@ Index = %@ ", v18, v6, v16);

  v22 = objc_msgSend_dimension(self, v19, v20, v21);
  v26 = objc_msgSend_exMRL_numberArrayDescription(v22, v23, v24, v25);
  objc_msgSend_appendFormat_(v29, v27, @"\r %@ Dimension = %@ ", v28, v6, v26);
}

- (id)jsonDescription
{
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  v9 = objc_msgSend_name(self, v6, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v10, v9, off_1EB013410);

  v14 = objc_msgSend_dimension(self, v11, v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v15, v14, off_1EB013690);

  v19 = objc_msgSend_index(self, v16, v17, v18);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v20, v19, off_1EB013400);

  v24 = objc_msgSend_copy(v5, v21, v22, v23);

  return v24;
}

- (void)generateJSONAtPath:(id)a3
{
  v67 = a3;
  v7 = objc_msgSend_jsonDir(self, v4, v5, v6);

  if (v7)
  {
    v11 = MEMORY[0x1E695DFF8];
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_msgSend_jsonDir(self, v8, v9, v10);
    v17 = objc_msgSend_index(self, v14, v15, v16);
    v20 = objc_msgSend_stringWithFormat_(v12, v18, @"%@/%@.json", v19, v13, v17);
    v23 = objc_msgSend_fileURLWithPath_(v11, v21, v20, v22);

    v24 = MEMORY[0x1E695DFF8];
    v25 = MEMORY[0x1E696AEC0];
    v29 = objc_msgSend_index(self, v26, v27, v28);
    v32 = objc_msgSend_stringWithFormat_(v25, v30, @"%@/%@.json", v31, v67, v29);
    v35 = objc_msgSend_fileURLWithPath_(v24, v33, v32, v34);

    v39 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v36, v37, v38);
    LOBYTE(v32) = objc_msgSend_copyItemAtURL_toURL_error_(v39, v40, v23, v35, 0);

    if ((v32 & 1) == 0)
    {
      sub_19D2C78CC(@"%@ Source file %@ doesn't exist", v41, v42, v43, v44, v45, v46, v47, self);
    }
  }

  else
  {
    v48 = objc_msgSend_weightValues(self, v8, v9, v10);

    if (!v48)
    {
      sub_19D2C78CC(@"%@ Cannot generate JSON weights file", v49, v50, v51, v52, v53, v54, v55, self);
    }

    v56 = MEMORY[0x1E696ACB0];
    v57 = objc_msgSend_weightValues(self, v49, v50, v51);
    v23 = objc_msgSend_dataWithJSONObject_options_error_(v56, v58, v57, 1, 0);

    v59 = MEMORY[0x1E696AEC0];
    v35 = objc_msgSend_index(self, v60, v61, v62);
    v65 = objc_msgSend_stringWithFormat_(v59, v63, @"%@/%@.json", v64, v67, v35);
    objc_msgSend_writeToFile_atomically_(v23, v66, v65, 1);
  }
}

- (id)createDataContainer
{
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  v6 = MEMORY[0x1E696AEC0];
  v10 = objc_msgSend_jsonDir(self, v7, v8, v9);
  v14 = objc_msgSend_index(self, v11, v12, v13);
  v17 = objc_msgSend_stringWithFormat_(v6, v15, @"%@/%@.json", v16, v10, v14);

  v21 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v18, v19, v20);
  LODWORD(v14) = objc_msgSend_fileExistsAtPath_(v21, v22, v17, v23);

  if (v14)
  {
    v27 = objc_msgSend_createflattenWeightsFile_(self, v24, v17, v26);
    v31 = objc_msgSend_quantization(self, v28, v29, v30);
    v33 = objc_msgSend_createConvertArrayToData_quantization_(self, v32, v27, v31);

    v37 = objc_msgSend_index(self, v34, v35, v36);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v38, v33, v37);
  }

  else
  {
    v39 = objc_msgSend_weightData(self, v24, v25, v26);

    if (!v39)
    {
      sub_19D2C78CC(@"%@ No weights file or data to add to data container", v40, v41, v42, v43, v44, v45, v46, self);
    }

    v27 = objc_msgSend_weightData(self, v40, v41, v42);
    v33 = objc_msgSend_index(self, v47, v48, v49);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v50, v27, v33);
  }

  v54 = objc_msgSend_copy(v5, v51, v52, v53);

  return v54;
}

- (id)createflattenWeightsFile:(id)a3
{
  v5 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], a2, a3, v3);
  v7 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v6, v5, 0, 0);
  v10 = objc_msgSend_createflattenWeightsHierarchy_(self, v8, v7, v9);

  return v10;
}

- (id)createflattenWeightsHierarchy:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v4;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v26, v30, 16);
  if (v11)
  {
    v12 = *v27;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_addObjectsFromArray_(v8, v15, v9, v16, v26);
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = objc_msgSend_createflattenWeightsHierarchy_(self, v17, v14, v18, v26);
          objc_msgSend_addObjectsFromArray_(v8, v20, v19, v21);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v17, &v26, v30, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v24 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v22, v8, v23);

  return v24;
}

- (id)createConvertArrayToData:(id)a3 quantization:(id)a4
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  sub_19D43B130(&v73, 4);
  v10 = objc_msgSend_count(v5, v7, v8, v9);
  if (v10)
  {
    if (!(v10 >> 62))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v11 = v5;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v69, v78, 16);
  if (v16)
  {
    v17 = 0;
    v18 = *v70;
    do
    {
      v19 = 0;
      v20 = v17;
      do
      {
        if (*v70 != v18)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_floatValue(*(*(&v69 + 1) + 8 * v19), v13, v14, v15);
        v17 = v20 + 1;
        *(4 * v20) = v21;
        ++v19;
        ++v20;
      }

      while (v16 != v19);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v69, v78, 16);
    }

    while (v16);
  }

  v25 = objc_msgSend_weightStorage(v6, v22, v23, v24);
  v29 = objc_msgSend_weightStorageRange(v6, v26, v27, v28);
  if (objc_msgSend_isEqualToString_(v25, v30, off_1EB013628, v31))
  {
    v35 = objc_msgSend_count(v11, v32, v33, v34);
    if (v35)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v46 = objc_msgSend_count(v11, v36, v37, v38);
    sub_19D42923C(0, 0, v46);
    objc_msgSend_count(v11, v47, v48, v49);
    std::ostream::write();
  }

  else if (objc_msgSend_isEqualToString_(v25, v32, off_1EB013630, v34))
  {
    v42 = objc_msgSend_count(v11, v39, v40, v41);
    if (v42)
    {
      if ((v42 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    objc_msgSend_floatValue(v29, v43, v44, v45);
    v51 = v50;
    v55 = objc_msgSend_count(v11, v52, v53, v54);
    sub_19D4292CC(0, 0, v55, v51);
    objc_msgSend_count(v11, v56, v57, v58);
    std::ostream::write();
  }

  else
  {
    objc_msgSend_count(v11, v39, v40, v41);
    std::ostream::write();
  }

  std::stringbuf::str();
  v59 = MEMORY[0x1E695DEF0];
  std::stringbuf::str();
  if (v65 >= 0)
  {
    v61 = &v64;
  }

  else
  {
    v61 = v64;
  }

  if ((v68 & 0x80u) == 0)
  {
    objc_msgSend_dataWithBytes_length_(v59, v60, v61, v68);
  }

  else
  {
    objc_msgSend_dataWithBytes_length_(v59, v60, v61, v67);
  }
  v62 = ;
  if (v65 < 0)
  {
    operator delete(v64);
    if ((v68 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  else if ((v68 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  operator delete(v66);
LABEL_30:

  v73 = *MEMORY[0x1E69E54E8];
  *(&v73 + *(v73 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v74 = MEMORY[0x1E69E5548] + 16;
  if (v76 < 0)
  {
    operator delete(v75[7].__locale_);
  }

  v74 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v75);
  std::ostream::~ostream();
  MEMORY[0x19EAFA410](&v77);

  return v62;
}

@end