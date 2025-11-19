@interface IXProgressHint
- (BOOL)isEqual:(id)a3;
- (BOOL)setPhaseProportionsForLoadingPhase:(id)a3 installingPhase:(id)a4 postProcessingPhase:(id)a5 error:(id *)a6;
- (IXProgressHint)init;
- (IXProgressHint)initWithCoder:(id)a3;
- (NSDictionary)progressProportionsDictionaryForLaunchServices;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXProgressHint

- (IXProgressHint)init
{
  v3.receiver = self;
  v3.super_class = IXProgressHint;
  return [(IXProgressHint *)&v3 init];
}

- (IXProgressHint)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = IXProgressHint;
  v5 = [(IXProgressHint *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compressedAppAssetSizeInBytes"];
    compressedAppAssetSizeInBytes = v5->_compressedAppAssetSizeInBytes;
    v5->_compressedAppAssetSizeInBytes = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uncompressedAppAssetSizeInBytes"];
    uncompressedAppAssetSizeInBytes = v5->_uncompressedAppAssetSizeInBytes;
    v5->_uncompressedAppAssetSizeInBytes = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filesInAppAssetCount"];
    filesInAppAssetCount = v5->_filesInAppAssetCount;
    v5->_filesInAppAssetCount = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalODRAssetSizeInBytes"];
    totalODRAssetSizeInBytes = v5->_totalODRAssetSizeInBytes;
    v5->_totalODRAssetSizeInBytes = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalExpectedEssentialAssetSizeInBytes"];
    totalExpectedEssentialAssetSizeInBytes = v5->_totalExpectedEssentialAssetSizeInBytes;
    v5->_totalExpectedEssentialAssetSizeInBytes = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalExpectedDataImportSizeInBytes"];
    totalExpectedDataImportSizeInBytes = v5->_totalExpectedDataImportSizeInBytes;
    v5->_totalExpectedDataImportSizeInBytes = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loadingPhaseProportion"];
    loadingPhaseProportion = v5->_loadingPhaseProportion;
    v5->_loadingPhaseProportion = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installingPhaseProportion"];
    installingPhaseProportion = v5->_installingPhaseProportion;
    v5->_installingPhaseProportion = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"postProcessingPhaseProportion"];
    postProcessingPhaseProportion = v5->_postProcessingPhaseProportion;
    v5->_postProcessingPhaseProportion = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXProgressHint *)self compressedAppAssetSizeInBytes];
  [v4 encodeObject:v5 forKey:@"compressedAppAssetSizeInBytes"];

  v6 = [(IXProgressHint *)self uncompressedAppAssetSizeInBytes];
  [v4 encodeObject:v6 forKey:@"uncompressedAppAssetSizeInBytes"];

  v7 = [(IXProgressHint *)self filesInAppAssetCount];
  [v4 encodeObject:v7 forKey:@"filesInAppAssetCount"];

  v8 = [(IXProgressHint *)self totalODRAssetSizeInBytes];
  [v4 encodeObject:v8 forKey:@"totalODRAssetSizeInBytes"];

  v9 = [(IXProgressHint *)self totalExpectedEssentialAssetSizeInBytes];
  [v4 encodeObject:v9 forKey:@"totalExpectedEssentialAssetSizeInBytes"];

  v10 = [(IXProgressHint *)self totalExpectedDataImportSizeInBytes];
  [v4 encodeObject:v10 forKey:@"totalExpectedDataImportSizeInBytes"];

  v11 = [(IXProgressHint *)self loadingPhaseProportion];
  [v4 encodeObject:v11 forKey:@"loadingPhaseProportion"];

  v12 = [(IXProgressHint *)self installingPhaseProportion];
  [v4 encodeObject:v12 forKey:@"installingPhaseProportion"];

  v13 = [(IXProgressHint *)self postProcessingPhaseProportion];
  [v4 encodeObject:v13 forKey:@"postProcessingPhaseProportion"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(IXProgressHint *)self compressedAppAssetSizeInBytes];
  [v4 setCompressedAppAssetSizeInBytes:v5];

  v6 = [(IXProgressHint *)self uncompressedAppAssetSizeInBytes];
  [v4 setUncompressedAppAssetSizeInBytes:v6];

  v7 = [(IXProgressHint *)self filesInAppAssetCount];
  [v4 setFilesInAppAssetCount:v7];

  v8 = [(IXProgressHint *)self totalODRAssetSizeInBytes];
  [v4 setTotalODRAssetSizeInBytes:v8];

  v9 = [(IXProgressHint *)self totalExpectedEssentialAssetSizeInBytes];
  [v4 setTotalExpectedEssentialAssetSizeInBytes:v9];

  v10 = [(IXProgressHint *)self totalExpectedDataImportSizeInBytes];
  [v4 setTotalExpectedDataImportSizeInBytes:v10];

  v11 = [(IXProgressHint *)self loadingPhaseProportion];
  v12 = [(IXProgressHint *)self installingPhaseProportion];
  v13 = [(IXProgressHint *)self postProcessingPhaseProportion];
  [v4 setPhaseProportionsForLoadingPhase:v11 installingPhase:v12 postProcessingPhase:v13 error:0];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
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

  v5 = v4;
  v6 = [(IXProgressHint *)self compressedAppAssetSizeInBytes];
  v7 = [(IXProgressHint *)v5 compressedAppAssetSizeInBytes];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if ((v8 != 0) != (v9 != 0) || v8 && v9 && ![v8 isEqual:v9])
  {
    goto LABEL_16;
  }

  v11 = [(IXProgressHint *)self uncompressedAppAssetSizeInBytes];
  v12 = [(IXProgressHint *)v5 uncompressedAppAssetSizeInBytes];
  v8 = v11;
  v13 = v12;
  v10 = v13;
  if ((v8 != 0) != (v13 != 0) || v8 && v13 && ![v8 isEqual:v13])
  {
    goto LABEL_16;
  }

  v14 = [(IXProgressHint *)self filesInAppAssetCount];
  v15 = [(IXProgressHint *)v5 filesInAppAssetCount];
  v8 = v14;
  v16 = v15;
  v10 = v16;
  if ((v8 != 0) != (v16 != 0) || v8 && v16 && ![v8 isEqual:v16])
  {
    goto LABEL_16;
  }

  v17 = [(IXProgressHint *)self totalODRAssetSizeInBytes];
  v18 = [(IXProgressHint *)v5 totalODRAssetSizeInBytes];
  v8 = v17;
  v19 = v18;
  v10 = v19;
  if ((v8 != 0) != (v19 != 0) || v8 && v19 && ![v8 isEqual:v19])
  {
LABEL_16:

    v20 = 0;
  }

  else
  {

    v22 = [(IXProgressHint *)self totalExpectedEssentialAssetSizeInBytes];
    v23 = [(IXProgressHint *)v5 totalExpectedEssentialAssetSizeInBytes];
    v24 = _CompareObjects(v22, v23);

    if (!v24)
    {
      goto LABEL_30;
    }

    v25 = [(IXProgressHint *)self totalExpectedDataImportSizeInBytes];
    v26 = [(IXProgressHint *)v5 totalExpectedDataImportSizeInBytes];
    v27 = _CompareObjects(v25, v26);

    if (!v27)
    {
      goto LABEL_30;
    }

    v28 = [(IXProgressHint *)self loadingPhaseProportion];
    v29 = [(IXProgressHint *)v5 loadingPhaseProportion];
    v30 = _CompareObjects(v28, v29);

    if (!v30 || ([(IXProgressHint *)self installingPhaseProportion], v31 = objc_claimAutoreleasedReturnValue(), [(IXProgressHint *)v5 installingPhaseProportion], v32 = objc_claimAutoreleasedReturnValue(), v33 = _CompareObjects(v31, v32), v32, v31, !v33))
    {
LABEL_30:
      v20 = 0;
      goto LABEL_18;
    }

    v8 = [(IXProgressHint *)self postProcessingPhaseProportion];
    v10 = [(IXProgressHint *)v5 postProcessingPhaseProportion];
    v20 = _CompareObjects(v8, v10);
  }

LABEL_18:
LABEL_21:

  return v20;
}

- (unint64_t)hash
{
  v3 = [(IXProgressHint *)self compressedAppAssetSizeInBytes];
  v4 = [v3 hash];

  v5 = [(IXProgressHint *)self uncompressedAppAssetSizeInBytes];
  v6 = [v5 hash] ^ v4;

  v7 = [(IXProgressHint *)self filesInAppAssetCount];
  v8 = [v7 hash];

  v9 = [(IXProgressHint *)self totalODRAssetSizeInBytes];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(IXProgressHint *)self totalExpectedEssentialAssetSizeInBytes];
  v12 = [v11 hash];

  v13 = [(IXProgressHint *)self totalExpectedDataImportSizeInBytes];
  v14 = v12 ^ [v13 hash];

  v15 = [(IXProgressHint *)self loadingPhaseProportion];
  v16 = v10 ^ v14 ^ [v15 hash];

  v17 = [(IXProgressHint *)self installingPhaseProportion];
  v18 = [v17 hash];

  v19 = [(IXProgressHint *)self postProcessingPhaseProportion];
  v20 = v18 ^ [v19 hash];

  return v16 ^ v20;
}

- (NSDictionary)progressProportionsDictionaryForLaunchServices
{
  v3 = objc_opt_new();
  v4 = [(IXProgressHint *)self loadingPhaseProportion];
  if (v4)
  {
    [v3 setObject:v4 forKey:&unk_1F56073B8];
  }

  v5 = [(IXProgressHint *)self installingPhaseProportion];
  if (v5)
  {
    [v3 setObject:v5 forKey:&unk_1F56073D0];
  }

  v6 = [(IXProgressHint *)self postProcessingPhaseProportion];
  if (v6)
  {
    [v3 setObject:v6 forKey:&unk_1F56073E8];
  }

  v7 = [v3 copy];

  return v7;
}

- (BOOL)setPhaseProportionsForLoadingPhase:(id)a3 installingPhase:(id)a4 postProcessingPhase:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  [a3 doubleValue];
  v13 = v12;
  [v11 doubleValue];
  v15 = v14;

  if (v10)
  {
    [v10 doubleValue];
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
  if (a6)
  {
    v25 = v25;
    v26 = 0;
    *a6 = v25;
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
  v6 = [(IXProgressHint *)self loadingPhaseProportion];
  v7 = [(IXProgressHint *)self installingPhaseProportion];
  v8 = [(IXProgressHint *)self postProcessingPhaseProportion];
  v9 = [v3 stringWithFormat:@"<%@ loading:%@ installing:%@ postprocessing:%@>", v5, v6, v7, v8];

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