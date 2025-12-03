@interface VCPMAMLModel
+ (id)vcp_sharedModelWithModelName:(id)name;
- (VCPMAMLModel)initWithModelName:(id)name;
@end

@implementation VCPMAMLModel

- (VCPMAMLModel)initWithModelName:(id)name
{
  v65 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v54.receiver = self;
  v54.super_class = VCPMAMLModel;
  v5 = [(VCPMAMLModel *)&v54 init];
  if (!v5)
  {
    goto LABEL_57;
  }

  vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v7 = [vcp_mediaAnalysisBundle URLForResource:nameCopy withExtension:@"mlmodelc"];

  if (!v7)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v57 = nameCopy;
      v58 = 2112;
      v59 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@][MAMLModel] Failed to open model file at url %@", buf, 0x16u);
    }

    v9 = 0;
    goto LABEL_49;
  }

  v53 = 0;
  v8 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:v7 error:&v53];
  v9 = v53;
  model = v5->_model;
  v5->_model = v8;

  v11 = v5->_model;
  if (!v11)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = v5->_model;
      *buf = 138412802;
      v57 = nameCopy;
      v58 = 2112;
      v59 = v22;
      v60 = 2112;
      v61 = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@][MAMLModel] Failed to load compiled model (%@): %@", buf, 0x20u);
    }

    goto LABEL_49;
  }

  modelDescription = [(MLModel *)v11 modelDescription];
  inputDescriptionsByName = [modelDescription inputDescriptionsByName];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = inputDescriptionsByName;
  pixelsHigh2 = [v14 countByEnumeratingWithState:&v49 objects:v64 count:16];
  if (pixelsHigh2)
  {
    v43 = v9;
    v16 = *v50;
    while (2)
    {
      for (i = 0; i != pixelsHigh2; ++i)
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v49 + 1) + 8 * i);
        v19 = [v14 objectForKeyedSubscript:v18];
        if ([v19 type] == 4)
        {
          imageConstraint = [v19 imageConstraint];
          if (imageConstraint)
          {
            v23 = imageConstraint;
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              pixelsWide = [v23 pixelsWide];
              pixelsHigh = [v23 pixelsHigh];
              pixelFormatType = [v23 pixelFormatType];
              *buf = 138413058;
              v57 = v18;
              v58 = 2048;
              v59 = pixelsWide;
              v60 = 2048;
              v61 = pixelsHigh;
              v62 = 2048;
              v63 = pixelFormatType;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MAMLModel] Input feature %@ %ldx%ld %ld", buf, 0x2Au);
            }

            pixelsWide2 = [v23 pixelsWide];
            pixelsHigh2 = [v23 pixelsHigh];
            v5->_inputPixelFormat = [v23 pixelFormatType];
            v27 = [v18 copy];
            inputFeatureName = v5->_inputFeatureName;
            v5->_inputFeatureName = v27;

            goto LABEL_25;
          }
        }
      }

      pixelsHigh2 = [v14 countByEnumeratingWithState:&v49 objects:v64 count:16];
      if (pixelsHigh2)
      {
        continue;
      }

      break;
    }

    pixelsWide2 = 0;
LABEL_25:
    v9 = v43;
  }

  else
  {
    pixelsWide2 = 0;
  }

  if (!v5->_inputFeatureName || !v5->_inputPixelFormat || !pixelsWide2 || !pixelsHigh2)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 138412290;
    v57 = v14;
    v38 = MEMORY[0x1E69E9C10];
    v39 = "[MAMLModel] Missing inputImage feature description %@";
    v40 = 12;
    goto LABEL_44;
  }

  if (pixelsWide2 != pixelsHigh2)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 134218240;
    v57 = pixelsWide2;
    v58 = 2048;
    v59 = pixelsHigh2;
    v38 = MEMORY[0x1E69E9C10];
    v39 = "[MAMLModel] Mismatched inputImage width (%ld) and height (%ld)";
    v40 = 22;
LABEL_44:
    _os_log_impl(&dword_1C9B70000, v38, OS_LOG_TYPE_ERROR, v39, buf, v40);
LABEL_48:

LABEL_49:
    goto LABEL_50;
  }

  v44 = v9;
  v5->_inputSize = pixelsHigh2;
  modelDescription2 = [(MLModel *)v5->_model modelDescription];
  outputDescriptionsByName = [modelDescription2 outputDescriptionsByName];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v31 = outputDescriptionsByName;
  v32 = [v31 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v46;
    while (2)
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v45 + 1) + 8 * j);
        v37 = [v31 objectForKeyedSubscript:v36];
        if ([v37 type] == 5)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v57 = v36;
            v58 = 2112;
            v59 = v37;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MAMLModel] Output feature %@ %@", buf, 0x16u);
          }

          objc_storeStrong(&v5->_outputFeatureName, v36);

          goto LABEL_55;
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

LABEL_55:

  if (v5->_outputFeatureName)
  {

LABEL_57:
    v41 = v5;
    goto LABEL_58;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v57 = v31;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MAMLModel] Missing output feature %@", buf, 0xCu);
  }

LABEL_50:
  v41 = 0;
LABEL_58:

  return v41;
}

+ (id)vcp_sharedModelWithModelName:(id)name
{
  nameCopy = name;
  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPMAMLModel-%@", nameCopy];
  v5 = +[VCPSharedInstanceManager sharedManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__VCPMAMLModel_vcp_sharedModelWithModelName___block_invoke;
  v9[3] = &unk_1E8350EA0;
  v10 = nameCopy;
  v6 = nameCopy;
  v7 = [v5 sharedInstanceWithIdentifier:nameCopy andCreationBlock:v9];

  return v7;
}

VCPMAMLModel *__45__VCPMAMLModel_vcp_sharedModelWithModelName___block_invoke(uint64_t a1)
{
  v1 = [[VCPMAMLModel alloc] initWithModelName:*(a1 + 32)];

  return v1;
}

@end