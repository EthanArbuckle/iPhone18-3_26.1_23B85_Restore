@interface CHDiffusionModelE5ML
+ (id)defaultURLOfModelInThisBundle;
+ (id)inputNames;
+ (id)outputNames;
- (CHDiffusionModelE5ML)initWithProgramLibrary:(id)library functionName:(id)name error:(id *)error;
- (CHDiffusionModelE5ML)initWithProgramLibrary:(id)library width:(unint64_t)width;
- (id)createExecutionContext;
@end

@implementation CHDiffusionModelE5ML

+ (id)defaultURLOfModelInThisBundle
{
  v2 = objc_alloc_init(CHModelCatalog);
  v10 = objc_msgSend_getModelURL_(v2, v3, 0, v4, v5, v6);
  if (v10)
  {
    v11 = objc_msgSend_URLWithString_relativeToURL_(MEMORY[0x1E695DFF8], v7, @"diffusion_latn_denoiser.bundle", v10, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
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

- (CHDiffusionModelE5ML)initWithProgramLibrary:(id)library width:(unint64_t)width
{
  libraryCopy = library;
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"main_%zu", v8, v9, v10, width);
  v14 = objc_msgSend_initWithProgramLibrary_functionName_error_(self, v12, libraryCopy, v11, 0, v13);

  return v14;
}

- (CHDiffusionModelE5ML)initWithProgramLibrary:(id)library functionName:(id)name error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  nameCopy = name;
  v57.receiver = self;
  v57.super_class = CHDiffusionModelE5ML;
  v10 = [(CHDiffusionModelE5ML *)&v57 init];
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = nameCopy;
  v12 = libraryCopy;
  objc_opt_self();
  v18 = objc_msgSend_visionCoreProgramLibrary(v12, v13, v14, v15, v16, v17);
  v22 = objc_msgSend_functionNamed_error_(v18, v19, v11, error, v20, v21);

  if (!v22)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v33 = qword_1EA84DC98;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v59 = v11;
      _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_ERROR, "Failed to load function named '%@'.", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v23 = objc_opt_class();
  v29 = objc_msgSend_inputNames(v23, v24, v25, v26, v27, v28);
  v33 = objc_msgSend_descriptorsForInputs_error_(v22, v30, v29, error, v31, v32);

  if (!v33)
  {
LABEL_10:
    v53 = 0;
    goto LABEL_13;
  }

  v34 = objc_opt_class();
  v40 = objc_msgSend_outputNames(v34, v35, v36, v37, v38, v39);
  v44 = objc_msgSend_descriptorsForOutputs_error_(v22, v41, v40, error, v42, v43);

  if (v44)
  {
    v45 = objc_alloc(MEMORY[0x1E69DF970]);
    v50 = objc_msgSend_initWithMajor_(v45, v46, 1, v47, v48, v49);
    v51 = objc_alloc(MEMORY[0x1E69DF8E0]);
    v53 = objc_msgSend_initWithFunction_inputDescriptors_inputImageDescriptors_outputDescriptors_confidencesOutputDescriptors_networkVersion_(v51, v52, v22, v33, MEMORY[0x1E695E0F0], v44, 0, v50);
  }

  else
  {
    v53 = 0;
  }

LABEL_13:
  functionDescriptor = v10->_functionDescriptor;
  v10->_functionDescriptor = v53;

  if (!v10->_functionDescriptor)
  {
LABEL_15:
    v55 = 0;
    goto LABEL_16;
  }

  v55 = v10;
LABEL_16:

  return v55;
}

- (id)createExecutionContext
{
  v3 = [CHDiffusionModelE5MLExecutionContext alloc];
  v8 = objc_msgSend_initWithFunction_(v3, v4, self->_functionDescriptor, v5, v6, v7);

  return v8;
}

@end