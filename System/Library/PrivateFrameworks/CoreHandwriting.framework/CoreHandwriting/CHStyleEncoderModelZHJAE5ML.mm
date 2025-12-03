@interface CHStyleEncoderModelZHJAE5ML
+ (id)E5RTFunctionDescriptorForFunction:(id)function inProgramLibrary:(id)library error:(id *)error;
+ (id)defaultURLOfModelInThisBundle;
+ (id)inputNames;
+ (id)modelHash;
+ (id)outputNames;
- (CHStyleEncoderModelZHJAE5ML)initWithProgramLibrary:(id)library functionName:(id)name error:(id *)error;
- (CHStyleEncoderModelZHJAE5ML)initWithProgramLibrary:(id)library width:(unint64_t)width;
- (id)createExecutionContext;
@end

@implementation CHStyleEncoderModelZHJAE5ML

+ (id)inputNames
{
  v6[9] = *MEMORY[0x1E69E9840];
  v6[0] = @"input_labels";
  v6[1] = @"input_labels_length";
  v6[2] = @"input_length";
  v6[3] = @"input_style_labels_len";
  v6[4] = @"input_style_labels";
  v6[5] = @"input_style_features";
  v6[6] = @"input_style_features_len";
  v6[7] = @"input_decomposed_labels";
  v6[8] = @"input_decomposed_labels_length";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v6, 9, v2, v3);

  return v4;
}

+ (id)outputNames
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"diffusion_pooled_style_encoding";
  v6[1] = @"diffusion_style_encoding";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v6, 2, v2, v3);

  return v4;
}

+ (id)defaultURLOfModelInThisBundle
{
  v25[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CHModelCatalog);
  v6 = objc_msgSend_getModelURL_variant_(v2, v3, 0, 2, v4, v5);
  v12 = v6;
  if (v6)
  {
    v13 = MEMORY[0x1E695DFF8];
    v14 = objc_msgSend_absoluteString(v6, v7, v8, v9, v10, v11);
    v25[0] = v14;
    v25[1] = @"diffusion_zhja_style_encoder.bundle";
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v25, 2, v16, v17);
    v23 = objc_msgSend_fileURLWithPathComponents_(v13, v19, v18, v20, v21, v22);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)modelHash
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_183991CEC;
  block[3] = &unk_1E6DDC0E0;
  block[4] = self;
  if (qword_1EA84D2F0 == -1)
  {
    v2 = qword_1EA84D2E8;
  }

  else
  {
    dispatch_once(&qword_1EA84D2F0, block);
    v2 = qword_1EA84D2E8;
  }

  return v2;
}

+ (id)E5RTFunctionDescriptorForFunction:(id)function inProgramLibrary:(id)library error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  v13 = objc_msgSend_visionCoreProgramLibrary(library, v8, v9, v10, v11, v12);
  v17 = objc_msgSend_functionNamed_error_(v13, v14, functionCopy, error, v15, v16);

  if (v17)
  {
    v18 = objc_opt_class();
    v24 = objc_msgSend_inputNames(v18, v19, v20, v21, v22, v23);
    v28 = objc_msgSend_descriptorsForInputs_error_(v17, v25, v24, error, v26, v27);

    if (v28)
    {
      v29 = objc_opt_class();
      v35 = objc_msgSend_outputNames(v29, v30, v31, v32, v33, v34);
      v39 = objc_msgSend_descriptorsForOutputs_error_(v17, v36, v35, error, v37, v38);

      if (v39)
      {
        v40 = objc_alloc(MEMORY[0x1E69DF970]);
        v45 = objc_msgSend_initWithMajor_(v40, v41, 1, v42, v43, v44);
        v46 = objc_alloc(MEMORY[0x1E69DF8E0]);
        v48 = objc_msgSend_initWithFunction_inputDescriptors_inputImageDescriptors_outputDescriptors_confidencesOutputDescriptors_networkVersion_(v46, v47, v17, v28, MEMORY[0x1E695E0F0], v39, 0, v45);
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v49 = qword_1EA84DC98;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v51 = 138412290;
      v52 = functionCopy;
      _os_log_impl(&dword_18366B000, v49, OS_LOG_TYPE_ERROR, "Failed to load function named '%@'.", &v51, 0xCu);
    }

    v48 = 0;
  }

  return v48;
}

- (CHStyleEncoderModelZHJAE5ML)initWithProgramLibrary:(id)library width:(unint64_t)width
{
  libraryCopy = library;
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"main_%zu", v8, v9, v10, width);
  v14 = objc_msgSend_initWithProgramLibrary_functionName_error_(self, v12, libraryCopy, v11, 0, v13);

  return v14;
}

- (CHStyleEncoderModelZHJAE5ML)initWithProgramLibrary:(id)library functionName:(id)name error:(id *)error
{
  libraryCopy = library;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = CHStyleEncoderModelZHJAE5ML;
  v12 = [(CHStyleEncoderModelZHJAE5ML *)&v17 init];
  if (v12 && (objc_msgSend_E5RTFunctionDescriptorForFunction_inProgramLibrary_error_(CHStyleEncoderModelZHJAE5ML, v10, nameCopy, libraryCopy, error, v11), v13 = objc_claimAutoreleasedReturnValue(), functionDescriptor = v12->_functionDescriptor, v12->_functionDescriptor = v13, functionDescriptor, v12->_functionDescriptor))
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)createExecutionContext
{
  v3 = [CHDiffusionModelE5MLExecutionContext alloc];
  v8 = objc_msgSend_initWithFunction_(v3, v4, self->_functionDescriptor, v5, v6, v7);

  return v8;
}

@end