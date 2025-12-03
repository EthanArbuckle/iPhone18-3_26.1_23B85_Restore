@interface CSFCoreMLComputeBackend
- (BOOL)_populateModelInterfaceParameters;
- (CSFCoreMLComputeBackend)initWithModelFile:(id)file error:(id *)error;
- (id)_convertDataBufferToMLMultiArray:(id)array error:(id *)error;
- (id)_convertInputToCoreMLInputs:(id)inputs error:(id *)error;
- (id)_convertOuputsToNSArrayWithCoreMLOutputs:(id)outputs error:(id *)error;
- (id)_fetchTensorPropertiesWithFeatDesc:(id)desc;
- (id)predictOutputWithInputs:(id)inputs errOut:(id *)out;
- (int64_t)_getMLMultiArrayDataTypeForComputeType:(unint64_t)type;
- (unint64_t)_getComputeDataTypeForMLType:(int64_t)type;
@end

@implementation CSFCoreMLComputeBackend

- (BOOL)_populateModelInterfaceParameters
{
  v20 = *MEMORY[0x1E69E9840];
  modelDescription = [(MLModel *)self->_coremlModel modelDescription];
  inputDescriptionsByName = [modelDescription inputDescriptionsByName];

  v5 = [(CSFCoreMLComputeBackend *)self _fetchTensorPropertiesWithFeatDesc:inputDescriptionsByName];
  inputSpecs = self->_inputSpecs;
  self->_inputSpecs = v5;

  v7 = [(NSDictionary *)self->_inputSpecs count];
  if (v7 == [inputDescriptionsByName count])
  {
    modelDescription2 = [(MLModel *)self->_coremlModel modelDescription];
    outputDescriptionsByName = [modelDescription2 outputDescriptionsByName];

    v10 = [(CSFCoreMLComputeBackend *)self _fetchTensorPropertiesWithFeatDesc:outputDescriptionsByName];
    outputSpecs = self->_outputSpecs;
    self->_outputSpecs = v10;

    v12 = [(NSDictionary *)self->_outputSpecs count];
    v13 = v12 == [outputDescriptionsByName count];
    if (!v13)
    {
      v14 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315138;
        v19 = "[CSFCoreMLComputeBackend _populateModelInterfaceParameters]";
        _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, "%s Unable to extract input tensor descriptors", &v18, 0xCu);
      }
    }
  }

  else
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[CSFCoreMLComputeBackend _populateModelInterfaceParameters]";
      _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, "%s Unable to extract input tensor descriptors", &v18, 0xCu);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (int64_t)_getMLMultiArrayDataTypeForComputeType:(unint64_t)type
{
  v3 = 65600;
  if (type == 1)
  {
    v3 = 65568;
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return 131104;
  }
}

- (unint64_t)_getComputeDataTypeForMLType:(int64_t)type
{
  v3 = 2;
  if (type == 131104)
  {
    v3 = 0;
  }

  if (type == 65600)
  {
    v3 = 1;
  }

  if (type == 65568)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (id)_convertOuputsToNSArrayWithCoreMLOutputs:(id)outputs error:(id *)error
{
  v81 = *MEMORY[0x1E69E9840];
  outputsCopy = outputs;
  v61 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = [outputsCopy featureNames];
  v63 = [obj countByEnumeratingWithState:&v73 objects:v80 count:16];
  v6 = 0;
  if (v63)
  {
    v62 = *v74;
    v56 = *MEMORY[0x1E696A578];
    errorCopy = error;
    v60 = outputsCopy;
LABEL_3:
    v7 = 0;
    while (1)
    {
      v67 = v6;
      if (*v74 != v62)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v73 + 1) + 8 * v7);
      v9 = [outputsCopy featureValueForName:{v8, v56}];
      multiArrayValue = [v9 multiArrayValue];
      shape = [multiArrayValue shape];
      v12 = +[CSFTensorProperties propertyWithShape:dataType:](CSFTensorProperties, "propertyWithShape:dataType:", shape, -[CSFCoreMLComputeBackend _getComputeDataTypeForMLType:](self, "_getComputeDataTypeForMLType:", [multiArrayValue dataType]));
      v69 = multiArrayValue;
      if ([shape count] == 1)
      {
        v65 = v9;
        v13 = v8;
        v14 = v61;
        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v16 = [shape objectAtIndexedSubscript:0];
        unsignedLongValue = [v16 unsignedLongValue];

        if (unsignedLongValue)
        {
          v18 = 0;
          do
          {
            v19 = [multiArrayValue objectAtIndexedSubscript:v18];
            [v15 addObject:v19];

            ++v18;
            v20 = [shape objectAtIndexedSubscript:0];
            unsignedLongValue2 = [v20 unsignedLongValue];
          }

          while (v18 < unsignedLongValue2);
        }

        v22 = [CSFComputeDataBuffer alloc];
        v23 = v67;
        v72 = v67;
        v24 = &v72;
        v66 = v12;
        v25 = [(CSFComputeDataBuffer *)v22 initWithInputArray:v15 name:v13 properties:v12 errOut:&v72];
        v26 = errorCopy;
        v27 = v60;
      }

      else
      {
        if ([shape count] != 2)
        {
          if (error)
          {
            v49 = MEMORY[0x1E696ABC0];
            v77 = v56;
            v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"output shape not supported"];
            v78 = v50;
            v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            *error = [v49 errorWithDomain:@"com.apple.corespeech" code:2455 userInfo:v51];
          }

          v47 = 0;
          v6 = v67;
          goto LABEL_28;
        }

        v57 = v8;
        v65 = v9;
        v66 = v12;
        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v28 = [shape objectAtIndexedSubscript:0];
        unsignedLongValue3 = [v28 unsignedLongValue];

        if (unsignedLongValue3)
        {
          v30 = 0;
          v68 = v15;
          do
          {
            v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v31 = [shape objectAtIndexedSubscript:1];
            unsignedLongValue4 = [v31 unsignedLongValue];

            v33 = shape;
            if (unsignedLongValue4)
            {
              v34 = 0;
              do
              {
                v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
                v79[0] = v35;
                v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
                v79[1] = v36;
                [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
                v38 = v37 = v33;
                v39 = [v69 objectForKeyedSubscript:v38];
                [v70 addObject:v39];

                v33 = v37;
                ++v34;
                v40 = [v37 objectAtIndexedSubscript:1];
                unsignedLongValue5 = [v40 unsignedLongValue];
              }

              while (v34 < unsignedLongValue5);
            }

            v42 = [v70 copy];
            v15 = v68;
            [v68 addObject:v42];

            ++v30;
            v43 = [v33 objectAtIndexedSubscript:0];
            unsignedLongValue6 = [v43 unsignedLongValue];

            shape = v33;
          }

          while (v30 < unsignedLongValue6);
        }

        v45 = [CSFComputeDataBuffer alloc];
        v23 = v67;
        v71 = v67;
        v24 = &v71;
        v13 = v57;
        v25 = [(CSFComputeDataBuffer *)v45 initWithInputArray:v15 name:v57 properties:v66 errOut:&v71];
        v27 = v60;
        v14 = v61;
        v26 = errorCopy;
      }

      v46 = *v24;

      [v14 setObject:v25 forKey:v13];
      v47 = 1;
      error = v26;
      if (v26)
      {
        outputsCopy = v27;
        if (v46)
        {
          v48 = v46;
          v47 = 0;
          *v26 = v46;
        }

        v6 = v46;
      }

      else
      {
        v6 = v46;
        outputsCopy = v27;
      }

      v9 = v65;
      v12 = v66;
LABEL_28:

      if (!v47)
      {

        v53 = 0;
        v52 = v61;
        goto LABEL_33;
      }

      if (++v7 == v63)
      {
        v63 = [obj countByEnumeratingWithState:&v73 objects:v80 count:16];
        if (v63)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v52 = v61;
  v53 = [v61 copy];
LABEL_33:

  v54 = *MEMORY[0x1E69E9840];

  return v53;
}

- (id)_convertDataBufferToMLMultiArray:(id)array error:(id *)error
{
  v21[2] = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  tensorProperties = [arrayCopy tensorProperties];
  shape = [tensorProperties shape];

  tensorProperties2 = [arrayCopy tensorProperties];
  v10 = -[CSFCoreMLComputeBackend _getMLMultiArrayDataTypeForComputeType:](self, "_getMLMultiArrayDataTypeForComputeType:", [tensorProperties2 dataType]);

  if ([shape count] == 1)
  {
    v11 = &unk_1F5916B38;
  }

  else
  {
    if ([shape count] != 2)
    {
      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2455 userInfo:0];
        *error = v15 = 0;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_8;
    }

    v12 = [shape objectAtIndexedSubscript:1];
    v21[0] = v12;
    v21[1] = &unk_1F5916A78;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  }

  v13 = objc_alloc(MEMORY[0x1E695FEC8]);
  data = [arrayCopy data];
  v20 = 0;
  v15 = [v13 initWithDataPointer:objc_msgSend(data shape:"bytes") dataType:shape strides:v10 deallocator:v11 error:{0, &v20}];
  v16 = v20;

  if (error)
  {
    v17 = v16;
    *error = v16;
  }

LABEL_8:
  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_convertInputToCoreMLInputs:(id)inputs error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = inputsCopy;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    errorCopy = error;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, errorCopy}];
        v14 = [(NSDictionary *)self->_inputSpecs objectForKeyedSubscript:v12];
        tensorProperties = [v13 tensorProperties];
        v16 = [v14 isEqual:tensorProperties];

        if ((v16 & 1) == 0)
        {
          v26 = MEMORY[0x1E696ABC0];
          v45 = *MEMORY[0x1E696A578];
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to read interface specs"];
          v46 = v27;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v22 = [v26 errorWithDomain:@"com.apple.corespeech" code:2455 userInfo:v28];

          if (errorCopy)
          {
            v29 = v22;
            *errorCopy = v22;
          }

          goto LABEL_25;
        }

        v36 = 0;
        v17 = [(CSFCoreMLComputeBackend *)self _convertDataBufferToMLMultiArray:v13 error:&v36];
        v18 = v36;
        if (v17)
        {
          v19 = v18 == 0;
        }

        else
        {
          v19 = 0;
        }

        if (!v19)
        {
          v22 = v18;
          if (errorCopy)
          {
            v30 = v18;
            *errorCopy = v22;
          }

LABEL_25:
          v25 = 0;
          v20 = v7;
          goto LABEL_26;
        }

        [v34 setObject:v17 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v37 objects:v47 count:16];
      error = errorCopy;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v35 = 0;
  v20 = [objc_alloc(MEMORY[0x1E695FE40]) initWithDictionary:v34 error:&v35];
  v21 = v35;
  v22 = v21;
  if (v21)
  {
    if (error)
    {
      v23 = v21;
      *error = v22;
    }

    v24 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[CSFCoreMLComputeBackend _convertInputToCoreMLInputs:error:]";
      v43 = 2112;
      v44 = v22;
      _os_log_impl(&dword_1DDA4B000, v24, OS_LOG_TYPE_DEFAULT, "%s features input conversion to MLDictionaryFeatureProvider with error: %@", buf, 0x16u);
    }

    v25 = 0;
  }

  else
  {
    v20 = v20;
    v25 = v20;
  }

LABEL_26:

  v31 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)predictOutputWithInputs:(id)inputs errOut:(id *)out
{
  v22 = 0;
  v6 = [(CSFCoreMLComputeBackend *)self _convertInputToCoreMLInputs:inputs error:&v22];
  v7 = v22;
  if (v7)
  {
    v8 = v7;
    if (out)
    {
      v9 = v7;
      v10 = 0;
      *out = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    coremlModel = self->_coremlModel;
    options = self->_options;
    v21 = 0;
    v13 = [(MLModel *)coremlModel predictionFromFeatures:v6 options:options error:&v21];
    v14 = v21;
    if (v14)
    {
      v8 = v14;
      if (out)
      {
        v15 = v14;
        v10 = 0;
        *out = v8;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v20 = 0;
      v16 = [(CSFCoreMLComputeBackend *)self _convertOuputsToNSArrayWithCoreMLOutputs:v13 error:&v20];
      v17 = v20;
      v8 = v17;
      if (v17)
      {
        if (out)
        {
          v18 = v17;
          v10 = 0;
          *out = v8;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = v16;
      }
    }
  }

  return v10;
}

- (id)_fetchTensorPropertiesWithFeatDesc:(id)desc
{
  v4 = MEMORY[0x1E695DF90];
  descCopy = desc;
  dictionary = [v4 dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CSFCoreMLComputeBackend__fetchTensorPropertiesWithFeatDesc___block_invoke;
  v11[3] = &unk_1E865C408;
  v11[4] = self;
  v7 = dictionary;
  v12 = v7;
  [descCopy enumerateKeysAndObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __62__CSFCoreMLComputeBackend__fetchTensorPropertiesWithFeatDesc___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = [v7 multiArrayConstraint];
  v9 = [v8 shape];

  v10 = *(a1 + 32);
  v11 = [v7 multiArrayConstraint];

  v12 = [v10 _getComputeDataTypeForMLType:{objc_msgSend(v11, "dataType")}];
  if (v12 == 2)
  {
    *a4 = 1;
  }

  else
  {
    v13 = [CSFTensorProperties propertyWithShape:v9 dataType:v12];
    [*(a1 + 40) setObject:v13 forKey:v14];
  }
}

- (CSFCoreMLComputeBackend)initWithModelFile:(id)file error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v23.receiver = self;
  v23.super_class = CSFCoreMLComputeBackend;
  v7 = [(CSFCoreMLComputeBackend *)&v23 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:fileCopy];
    v9 = objc_alloc_init(MEMORY[0x1E695FEB8]);
    [v9 setComputeUnits:0];
    v22 = 0;
    v10 = [MEMORY[0x1E695FE98] modelWithContentsOfURL:v8 configuration:v9 error:&v22];
    v11 = v22;
    coremlModel = v7->_coremlModel;
    v7->_coremlModel = v10;

    if (v11)
    {
      if (error)
      {
        v13 = v11;
        *error = v11;
      }

LABEL_10:

      v16 = 0;
      goto LABEL_11;
    }

    v14 = objc_alloc_init(MEMORY[0x1E695FF00]);
    options = v7->_options;
    v7->_options = v14;

    if (![(CSFCoreMLComputeBackend *)v7 _populateModelInterfaceParameters])
    {
      if (error)
      {
        v17 = MEMORY[0x1E696ABC0];
        v24 = *MEMORY[0x1E696A578];
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to read interface specs"];
        v25[0] = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        *error = [v17 errorWithDomain:@"com.apple.corespeech" code:2457 userInfo:v19];
      }

      goto LABEL_10;
    }
  }

  v16 = v7;
LABEL_11:

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

@end