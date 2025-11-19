@interface CHDiffusionModelZHJAE5ML
+ (id)E5RTFunctionDescriptorForFunction:(id)a3 inProgramLibrary:(id)a4 error:(id *)a5;
+ (id)defaultURLOfModelInThisBundle;
+ (id)inputNames;
+ (id)outputNames;
- (CHDiffusionModelZHJAE5ML)initWithProgramLibrary:(id)a3 functionName:(id)a4 error:(id *)a5;
- (CHDiffusionModelZHJAE5ML)initWithProgramLibrary:(id)a3 width:(unint64_t)a4;
- (id)createExecutionContext;
@end

@implementation CHDiffusionModelZHJAE5ML

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
    v25[1] = @"diffusion_zhja_denoiser.bundle";
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v25, 2, v16, v17);
    v23 = objc_msgSend_fileURLWithPathComponents_(v13, v19, v18, v20, v21, v22);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)inputNames
{
  v6[6] = *MEMORY[0x1E69E9840];
  v6[0] = @"input_diffusion_x_timestep";
  v6[1] = @"input_diffusion_timestep";
  v6[2] = @"input_labels";
  v6[3] = @"input_labels_length";
  v6[4] = @"input_length";
  v6[5] = @"input_diffusion_style_encoding";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v6, 6, v2, v3);

  return v4;
}

+ (id)outputNames
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"pred_noise";
  v6[1] = @"pred_penup";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v6, 2, v2, v3);

  return v4;
}

+ (id)E5RTFunctionDescriptorForFunction:(id)a3 inProgramLibrary:(id)a4 error:(id *)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v13 = objc_msgSend_visionCoreProgramLibrary(a4, v8, v9, v10, v11, v12);
  v17 = objc_msgSend_functionNamed_error_(v13, v14, v7, a5, v15, v16);

  if (v17)
  {
    v18 = objc_opt_class();
    v24 = objc_msgSend_inputNames(v18, v19, v20, v21, v22, v23);
    v28 = objc_msgSend_descriptorsForInputs_error_(v17, v25, v24, a5, v26, v27);

    if (v28)
    {
      v29 = objc_opt_class();
      v35 = objc_msgSend_outputNames(v29, v30, v31, v32, v33, v34);
      v39 = objc_msgSend_descriptorsForOutputs_error_(v17, v36, v35, a5, v37, v38);

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
      v52 = v7;
      _os_log_impl(&dword_18366B000, v49, OS_LOG_TYPE_ERROR, "Failed to load function named '%@'.", &v51, 0xCu);
    }

    v48 = 0;
  }

  return v48;
}

- (CHDiffusionModelZHJAE5ML)initWithProgramLibrary:(id)a3 width:(unint64_t)a4
{
  v6 = a3;
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"main_%zu", v8, v9, v10, a4);
  v14 = objc_msgSend_initWithProgramLibrary_functionName_error_(self, v12, v6, v11, 0, v13);

  return v14;
}

- (CHDiffusionModelZHJAE5ML)initWithProgramLibrary:(id)a3 functionName:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = CHDiffusionModelZHJAE5ML;
  v12 = [(CHDiffusionModelZHJAE5ML *)&v17 init];
  if (v12 && (objc_msgSend_E5RTFunctionDescriptorForFunction_inProgramLibrary_error_(CHDiffusionModelZHJAE5ML, v10, v9, v8, a5, v11), v13 = objc_claimAutoreleasedReturnValue(), functionDescriptor = v12->_functionDescriptor, v12->_functionDescriptor = v13, functionDescriptor, v12->_functionDescriptor))
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