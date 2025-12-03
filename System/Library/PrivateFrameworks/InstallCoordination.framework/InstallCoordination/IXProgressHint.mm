@interface IXProgressHint
- (BOOL)isEqual:(id)equal;
- (BOOL)setPhaseProportionsForLoadingPhase:(id)phase installingPhase:(id)installingPhase postProcessingPhase:(id)processingPhase error:(id *)error;
- (IXProgressHint)init;
- (IXProgressHint)initWithCoder:(id)coder;
- (NSDictionary)progressProportionsDictionaryForLaunchServices;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXProgressHint

- (IXProgressHint)init
{
  v3.receiver = self;
  v3.super_class = IXProgressHint;
  return [(IXProgressHint *)&v3 init];
}

- (IXProgressHint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = IXProgressHint;
  v5 = [(IXProgressHint *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compressedAppAssetSizeInBytes"];
    compressedAppAssetSizeInBytes = v5->_compressedAppAssetSizeInBytes;
    v5->_compressedAppAssetSizeInBytes = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uncompressedAppAssetSizeInBytes"];
    uncompressedAppAssetSizeInBytes = v5->_uncompressedAppAssetSizeInBytes;
    v5->_uncompressedAppAssetSizeInBytes = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filesInAppAssetCount"];
    filesInAppAssetCount = v5->_filesInAppAssetCount;
    v5->_filesInAppAssetCount = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalODRAssetSizeInBytes"];
    totalODRAssetSizeInBytes = v5->_totalODRAssetSizeInBytes;
    v5->_totalODRAssetSizeInBytes = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalExpectedEssentialAssetSizeInBytes"];
    totalExpectedEssentialAssetSizeInBytes = v5->_totalExpectedEssentialAssetSizeInBytes;
    v5->_totalExpectedEssentialAssetSizeInBytes = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalExpectedDataImportSizeInBytes"];
    totalExpectedDataImportSizeInBytes = v5->_totalExpectedDataImportSizeInBytes;
    v5->_totalExpectedDataImportSizeInBytes = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loadingPhaseProportion"];
    loadingPhaseProportion = v5->_loadingPhaseProportion;
    v5->_loadingPhaseProportion = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installingPhaseProportion"];
    installingPhaseProportion = v5->_installingPhaseProportion;
    v5->_installingPhaseProportion = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postProcessingPhaseProportion"];
    postProcessingPhaseProportion = v5->_postProcessingPhaseProportion;
    v5->_postProcessingPhaseProportion = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  compressedAppAssetSizeInBytes = [(IXProgressHint *)self compressedAppAssetSizeInBytes];
  [coderCopy encodeObject:compressedAppAssetSizeInBytes forKey:@"compressedAppAssetSizeInBytes"];

  uncompressedAppAssetSizeInBytes = [(IXProgressHint *)self uncompressedAppAssetSizeInBytes];
  [coderCopy encodeObject:uncompressedAppAssetSizeInBytes forKey:@"uncompressedAppAssetSizeInBytes"];

  filesInAppAssetCount = [(IXProgressHint *)self filesInAppAssetCount];
  [coderCopy encodeObject:filesInAppAssetCount forKey:@"filesInAppAssetCount"];

  totalODRAssetSizeInBytes = [(IXProgressHint *)self totalODRAssetSizeInBytes];
  [coderCopy encodeObject:totalODRAssetSizeInBytes forKey:@"totalODRAssetSizeInBytes"];

  totalExpectedEssentialAssetSizeInBytes = [(IXProgressHint *)self totalExpectedEssentialAssetSizeInBytes];
  [coderCopy encodeObject:totalExpectedEssentialAssetSizeInBytes forKey:@"totalExpectedEssentialAssetSizeInBytes"];

  totalExpectedDataImportSizeInBytes = [(IXProgressHint *)self totalExpectedDataImportSizeInBytes];
  [coderCopy encodeObject:totalExpectedDataImportSizeInBytes forKey:@"totalExpectedDataImportSizeInBytes"];

  loadingPhaseProportion = [(IXProgressHint *)self loadingPhaseProportion];
  [coderCopy encodeObject:loadingPhaseProportion forKey:@"loadingPhaseProportion"];

  installingPhaseProportion = [(IXProgressHint *)self installingPhaseProportion];
  [coderCopy encodeObject:installingPhaseProportion forKey:@"installingPhaseProportion"];

  postProcessingPhaseProportion = [(IXProgressHint *)self postProcessingPhaseProportion];
  [coderCopy encodeObject:postProcessingPhaseProportion forKey:@"postProcessingPhaseProportion"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  compressedAppAssetSizeInBytes = [(IXProgressHint *)self compressedAppAssetSizeInBytes];
  [v4 setCompressedAppAssetSizeInBytes:compressedAppAssetSizeInBytes];

  uncompressedAppAssetSizeInBytes = [(IXProgressHint *)self uncompressedAppAssetSizeInBytes];
  [v4 setUncompressedAppAssetSizeInBytes:uncompressedAppAssetSizeInBytes];

  filesInAppAssetCount = [(IXProgressHint *)self filesInAppAssetCount];
  [v4 setFilesInAppAssetCount:filesInAppAssetCount];

  totalODRAssetSizeInBytes = [(IXProgressHint *)self totalODRAssetSizeInBytes];
  [v4 setTotalODRAssetSizeInBytes:totalODRAssetSizeInBytes];

  totalExpectedEssentialAssetSizeInBytes = [(IXProgressHint *)self totalExpectedEssentialAssetSizeInBytes];
  [v4 setTotalExpectedEssentialAssetSizeInBytes:totalExpectedEssentialAssetSizeInBytes];

  totalExpectedDataImportSizeInBytes = [(IXProgressHint *)self totalExpectedDataImportSizeInBytes];
  [v4 setTotalExpectedDataImportSizeInBytes:totalExpectedDataImportSizeInBytes];

  loadingPhaseProportion = [(IXProgressHint *)self loadingPhaseProportion];
  installingPhaseProportion = [(IXProgressHint *)self installingPhaseProportion];
  postProcessingPhaseProportion = [(IXProgressHint *)self postProcessingPhaseProportion];
  [v4 setPhaseProportionsForLoadingPhase:loadingPhaseProportion installingPhase:installingPhaseProportion postProcessingPhase:postProcessingPhaseProportion error:0];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v20 = 1;
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = 0;
    goto LABEL_21;
  }

  v5 = equalCopy;
  compressedAppAssetSizeInBytes = [(IXProgressHint *)self compressedAppAssetSizeInBytes];
  compressedAppAssetSizeInBytes2 = [(IXProgressHint *)v5 compressedAppAssetSizeInBytes];
  postProcessingPhaseProportion = compressedAppAssetSizeInBytes;
  v9 = compressedAppAssetSizeInBytes2;
  postProcessingPhaseProportion2 = v9;
  if ((postProcessingPhaseProportion != 0) != (v9 != 0) || postProcessingPhaseProportion && v9 && ![postProcessingPhaseProportion isEqual:v9])
  {
    goto LABEL_16;
  }

  uncompressedAppAssetSizeInBytes = [(IXProgressHint *)self uncompressedAppAssetSizeInBytes];
  uncompressedAppAssetSizeInBytes2 = [(IXProgressHint *)v5 uncompressedAppAssetSizeInBytes];
  postProcessingPhaseProportion = uncompressedAppAssetSizeInBytes;
  v13 = uncompressedAppAssetSizeInBytes2;
  postProcessingPhaseProportion2 = v13;
  if ((postProcessingPhaseProportion != 0) != (v13 != 0) || postProcessingPhaseProportion && v13 && ![postProcessingPhaseProportion isEqual:v13])
  {
    goto LABEL_16;
  }

  filesInAppAssetCount = [(IXProgressHint *)self filesInAppAssetCount];
  filesInAppAssetCount2 = [(IXProgressHint *)v5 filesInAppAssetCount];
  postProcessingPhaseProportion = filesInAppAssetCount;
  v16 = filesInAppAssetCount2;
  postProcessingPhaseProportion2 = v16;
  if ((postProcessingPhaseProportion != 0) != (v16 != 0) || postProcessingPhaseProportion && v16 && ![postProcessingPhaseProportion isEqual:v16])
  {
    goto LABEL_16;
  }

  totalODRAssetSizeInBytes = [(IXProgressHint *)self totalODRAssetSizeInBytes];
  totalODRAssetSizeInBytes2 = [(IXProgressHint *)v5 totalODRAssetSizeInBytes];
  postProcessingPhaseProportion = totalODRAssetSizeInBytes;
  v19 = totalODRAssetSizeInBytes2;
  postProcessingPhaseProportion2 = v19;
  if ((postProcessingPhaseProportion != 0) != (v19 != 0) || postProcessingPhaseProportion && v19 && ![postProcessingPhaseProportion isEqual:v19])
  {
LABEL_16:

    v20 = 0;
  }

  else
  {

    totalExpectedEssentialAssetSizeInBytes = [(IXProgressHint *)self totalExpectedEssentialAssetSizeInBytes];
    totalExpectedEssentialAssetSizeInBytes2 = [(IXProgressHint *)v5 totalExpectedEssentialAssetSizeInBytes];
    v24 = _CompareObjects(totalExpectedEssentialAssetSizeInBytes, totalExpectedEssentialAssetSizeInBytes2);

    if (!v24)
    {
      goto LABEL_30;
    }

    totalExpectedDataImportSizeInBytes = [(IXProgressHint *)self totalExpectedDataImportSizeInBytes];
    totalExpectedDataImportSizeInBytes2 = [(IXProgressHint *)v5 totalExpectedDataImportSizeInBytes];
    v27 = _CompareObjects(totalExpectedDataImportSizeInBytes, totalExpectedDataImportSizeInBytes2);

    if (!v27)
    {
      goto LABEL_30;
    }

    loadingPhaseProportion = [(IXProgressHint *)self loadingPhaseProportion];
    loadingPhaseProportion2 = [(IXProgressHint *)v5 loadingPhaseProportion];
    v30 = _CompareObjects(loadingPhaseProportion, loadingPhaseProportion2);

    if (!v30 || ([(IXProgressHint *)self installingPhaseProportion], v31 = objc_claimAutoreleasedReturnValue(), [(IXProgressHint *)v5 installingPhaseProportion], v32 = objc_claimAutoreleasedReturnValue(), v33 = _CompareObjects(v31, v32), v32, v31, !v33))
    {
LABEL_30:
      v20 = 0;
      goto LABEL_18;
    }

    postProcessingPhaseProportion = [(IXProgressHint *)self postProcessingPhaseProportion];
    postProcessingPhaseProportion2 = [(IXProgressHint *)v5 postProcessingPhaseProportion];
    v20 = _CompareObjects(postProcessingPhaseProportion, postProcessingPhaseProportion2);
  }

LABEL_18:
LABEL_21:

  return v20;
}

- (unint64_t)hash
{
  compressedAppAssetSizeInBytes = [(IXProgressHint *)self compressedAppAssetSizeInBytes];
  v4 = [compressedAppAssetSizeInBytes hash];

  uncompressedAppAssetSizeInBytes = [(IXProgressHint *)self uncompressedAppAssetSizeInBytes];
  v6 = [uncompressedAppAssetSizeInBytes hash] ^ v4;

  filesInAppAssetCount = [(IXProgressHint *)self filesInAppAssetCount];
  v8 = [filesInAppAssetCount hash];

  totalODRAssetSizeInBytes = [(IXProgressHint *)self totalODRAssetSizeInBytes];
  v10 = v6 ^ v8 ^ [totalODRAssetSizeInBytes hash];

  totalExpectedEssentialAssetSizeInBytes = [(IXProgressHint *)self totalExpectedEssentialAssetSizeInBytes];
  v12 = [totalExpectedEssentialAssetSizeInBytes hash];

  totalExpectedDataImportSizeInBytes = [(IXProgressHint *)self totalExpectedDataImportSizeInBytes];
  v14 = v12 ^ [totalExpectedDataImportSizeInBytes hash];

  loadingPhaseProportion = [(IXProgressHint *)self loadingPhaseProportion];
  v16 = v10 ^ v14 ^ [loadingPhaseProportion hash];

  installingPhaseProportion = [(IXProgressHint *)self installingPhaseProportion];
  v18 = [installingPhaseProportion hash];

  postProcessingPhaseProportion = [(IXProgressHint *)self postProcessingPhaseProportion];
  v20 = v18 ^ [postProcessingPhaseProportion hash];

  return v16 ^ v20;
}

- (NSDictionary)progressProportionsDictionaryForLaunchServices
{
  v3 = objc_opt_new();
  loadingPhaseProportion = [(IXProgressHint *)self loadingPhaseProportion];
  if (loadingPhaseProportion)
  {
    [v3 setObject:loadingPhaseProportion forKey:&unk_1F56073B8];
  }

  installingPhaseProportion = [(IXProgressHint *)self installingPhaseProportion];
  if (installingPhaseProportion)
  {
    [v3 setObject:installingPhaseProportion forKey:&unk_1F56073D0];
  }

  postProcessingPhaseProportion = [(IXProgressHint *)self postProcessingPhaseProportion];
  if (postProcessingPhaseProportion)
  {
    [v3 setObject:postProcessingPhaseProportion forKey:&unk_1F56073E8];
  }

  v7 = [v3 copy];

  return v7;
}

- (BOOL)setPhaseProportionsForLoadingPhase:(id)phase installingPhase:(id)installingPhase postProcessingPhase:(id)processingPhase error:(id *)error
{
  processingPhaseCopy = processingPhase;
  installingPhaseCopy = installingPhase;
  [phase doubleValue];
  v13 = v12;
  [installingPhaseCopy doubleValue];
  v15 = v14;

  if (processingPhaseCopy)
  {
    [processingPhaseCopy doubleValue];
  }

  else
  {
    v16 = 0.0;
  }

  if (v13 == 0.0)
  {
    v17 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [IXProgressHint setPhaseProportionsForLoadingPhase:installingPhase:postProcessingPhase:error:];
    }

    v19 = @"The loading phase is required and thus cannot be 0 percent of the total progress.";
    v20 = 181;
  }

  else if (v15 == 0.0)
  {
    v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [IXProgressHint setPhaseProportionsForLoadingPhase:installingPhase:postProcessingPhase:error:];
    }

    v19 = @"The installing phase is required and thus cannot be 0 percent of the total progress.";
    v20 = 185;
  }

  else if (v13 >= 0.0)
  {
    if (v15 >= 0.0)
    {
      if (v16 >= 0.0)
      {
        v28 = v13 + v15 + v16;
        v29 = v13 / v28;
        v30 = v15 / v28;
        v31 = v16 / v28;
        v32 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
        loadingPhaseProportion = self->_loadingPhaseProportion;
        self->_loadingPhaseProportion = v32;

        v34 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
        installingPhaseProportion = self->_installingPhaseProportion;
        self->_installingPhaseProportion = v34;

        v36 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
        postProcessingPhaseProportion = self->_postProcessingPhaseProportion;
        self->_postProcessingPhaseProportion = v36;

        v25 = 0;
        v26 = 1;
        goto LABEL_27;
      }

      v24 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [IXProgressHint setPhaseProportionsForLoadingPhase:installingPhase:postProcessingPhase:error:];
      }

      v19 = @"The post processing installation phase proportion cannot be negative.";
      v20 = 198;
    }

    else
    {
      v23 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [IXProgressHint setPhaseProportionsForLoadingPhase:installingPhase:postProcessingPhase:error:];
      }

      v19 = @"The installing installation phase proportion cannot be negative.";
      v20 = 194;
    }
  }

  else
  {
    v22 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [IXProgressHint setPhaseProportionsForLoadingPhase:installingPhase:postProcessingPhase:error:];
    }

    v19 = @"The loading installation phase proportion cannot be negative.";
    v20 = 190;
  }

  v25 = _CreateError("[IXProgressHint setPhaseProportionsForLoadingPhase:installingPhase:postProcessingPhase:error:]", v20, @"IXErrorDomain", 0x37uLL, 0, 0, v19, v18, v38);
  if (error)
  {
    v25 = v25;
    v26 = 0;
    *error = v25;
  }

  else
  {
    v26 = 0;
  }

LABEL_27:

  return v26;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  loadingPhaseProportion = [(IXProgressHint *)self loadingPhaseProportion];
  installingPhaseProportion = [(IXProgressHint *)self installingPhaseProportion];
  postProcessingPhaseProportion = [(IXProgressHint *)self postProcessingPhaseProportion];
  v9 = [v3 stringWithFormat:@"<%@ loading:%@ installing:%@ postprocessing:%@>", v5, loadingPhaseProportion, installingPhaseProportion, postProcessingPhaseProportion];

  return v9;
}

- (void)setPhaseProportionsForLoadingPhase:installingPhase:postProcessingPhase:error:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: The post processing installation phase proportion cannot be negative. : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setPhaseProportionsForLoadingPhase:installingPhase:postProcessingPhase:error:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: The installing installation phase proportion cannot be negative. : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setPhaseProportionsForLoadingPhase:installingPhase:postProcessingPhase:error:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: The loading installation phase proportion cannot be negative. : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setPhaseProportionsForLoadingPhase:installingPhase:postProcessingPhase:error:.cold.4()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: The installing phase is required and thus cannot be 0 percent of the total progress. : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setPhaseProportionsForLoadingPhase:installingPhase:postProcessingPhase:error:.cold.5()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: The loading phase is required and thus cannot be 0 percent of the total progress. : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end