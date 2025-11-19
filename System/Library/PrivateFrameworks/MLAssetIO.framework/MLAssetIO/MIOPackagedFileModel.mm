@interface MIOPackagedFileModel
- (BOOL)isEqual:(id)a3;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (MIOPackagedFileModel)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (MIOPackagedFileModel)initWithModel:(id)a3;
- (MIOVersionInfo)specificationVersion;
- (NSArray)layers;
- (NSArray)subModels;
- (NSString)modelTypeName;
- (id)computePrecisionForFunctionNamed:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)neuralNetworkLayerHistogramForFunctionNamed:(id)a3;
- (id)programOperationHistogramForFunctionNamed:(id)a3;
- (id)storagePrecisionForFunctionNamed:(id)a3;
- (unint64_t)hash;
- (void)irProgram;
@end

@implementation MIOPackagedFileModel

- (MIOPackagedFileModel)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  __p[22] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v5 = [v8 copy];
  packageURL = self->_packageURL;
  self->_packageURL = v5;

  std::string::basic_string[abi:ne200100]<0>(__p, [v8 fileSystemRepresentation]);
  MPL::ModelPackage::ModelPackage();
}

- (MIOPackagedFileModel)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MIOPackagedFileModel;
  v6 = [(MIOPackagedFileModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specificationFileModel, a3);
  }

  return v7;
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  __p[29] = *MEMORY[0x1E69E9840];
  v22 = a3;
  v21 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [(MIOPackagedFileModel *)self packageURL];
  v24 = [v5 path];

  v23 = [v22 path];
  LOBYTE(v5) = [v21 copyItemAtPath:v24 toPath:? error:?];
  v20 = 0;
  if (v5)
  {
    v6 = v23;
    std::string::basic_string[abi:ne200100]<0>(__p, [v23 UTF8String]);
    MPL::ModelPackage::ModelPackage();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = v24;
    v8 = [v24 UTF8String];
    v9 = v23;
    -[MIOPackagedFileModel writeToURL:error:].cold.1(v8, [v23 UTF8String], __p);
  }

  if (a4)
  {
    v10 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v11 = MEMORY[0x1E696AEC0];
    v12 = v24;
    v13 = [v24 UTF8String];
    v14 = v23;
    v18 = [v11 stringWithFormat:@"Failed to copy model from %s to %s", v13, objc_msgSend(v23, "UTF8String")];
    v26 = v18;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *a4 = [v10 errorWithDomain:@"com.apple.mlassetio" code:2 userInfo:?];
  }

  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

- (MIOVersionInfo)specificationVersion
{
  v2 = [(MIOPackagedFileModel *)self specificationFileModel];
  v3 = [v2 specificationVersion];

  return v3;
}

- (NSString)modelTypeName
{
  v2 = [(MIOPackagedFileModel *)self specificationFileModel];
  v3 = [v2 modelTypeName];

  return v3;
}

- (NSArray)layers
{
  v2 = [(MIOPackagedFileModel *)self specificationFileModel];
  v3 = [v2 layers];

  return v3;
}

- (NSArray)subModels
{
  v2 = [(MIOPackagedFileModel *)self specificationFileModel];
  v3 = [v2 subModels];

  return v3;
}

- (id)neuralNetworkLayerHistogramForFunctionNamed:(id)a3
{
  v4 = a3;
  v5 = [(MIOPackagedFileModel *)self specificationFileModel];
  v6 = [v5 neuralNetworkLayerHistogramForFunctionNamed:v4];

  return v6;
}

- (id)programOperationHistogramForFunctionNamed:(id)a3
{
  v4 = a3;
  v5 = [(MIOPackagedFileModel *)self specificationFileModel];
  v6 = [v5 programOperationHistogramForFunctionNamed:v4];

  return v6;
}

- (id)computePrecisionForFunctionNamed:(id)a3
{
  v4 = a3;
  v5 = [(MIOPackagedFileModel *)self specificationFileModel];
  v6 = [v5 computePrecisionForFunctionNamed:v4];

  return v6;
}

- (id)storagePrecisionForFunctionNamed:(id)a3
{
  v4 = a3;
  v5 = [(MIOPackagedFileModel *)self specificationFileModel];
  v6 = [v5 storagePrecisionForFunctionNamed:v4];

  return v6;
}

- (void)irProgram
{
  v2 = [(MIOPackagedFileModel *)self specificationFileModel];
  v3 = [v2 irProgram];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (-[MIOPackagedFileModel modelDescription](self, "modelDescription"), v5 = objc_claimAutoreleasedReturnValue(), -[MIOPackagedFileModel modelDescription](v4, "modelDescription"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqual:v6], v6, v5, (v7))
    {
      v8 = [(MIOPackagedFileModel *)self specificationFileModel];
      v9 = [(MIOPackagedFileModel *)v4 specificationFileModel];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(MIOPackagedFileModel *)self specificationFileModel];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MIOPackagedFileModel alloc];
  v5 = [(MIOPackagedFileModel *)self specificationFileModel];
  v6 = [v5 copy];
  v7 = [(MIOPackagedFileModel *)v4 initWithModel:v6];

  v8 = [(MIOPackagedFileModel *)self packageURL];
  v9 = [v8 copy];
  [(MIOPackagedFileModel *)v7 setPackageURL:v9];

  v10 = [(MIOPackagedFileModel *)self modelDescription];
  v11 = [v10 copy];
  [(MIOPackagedFileModel *)v7 setModelDescription:v11];

  return v7;
}

- (void)initWithContentsOfURL:(uint64_t)a1 error:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(a1, a2);
  (*(v3 + 16))(v4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)initWithContentsOfURL:(uint64_t)a1 error:(uint64_t *)a2 .cold.2(uint64_t a1, uint64_t *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(a1, a2);
  (*(v3 + 16))(v4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)writeToURL:(uint8_t *)buf error:.cold.1(uint64_t a1, uint64_t a2, uint8_t *buf)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C1BCE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to copy model from %s to %s", buf, 0x16u);
}

- (void)writeToURL:(uint64_t)a1 error:(uint64_t *)a2 .cold.2(uint64_t a1, uint64_t *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(a1, a2);
  (*(v3 + 16))(v4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)writeToURL:(uint64_t)a1 error:.cold.3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)writeToURL:error:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)writeToURL:(uint64_t)a1 error:.cold.5(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)writeToURL:error:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end