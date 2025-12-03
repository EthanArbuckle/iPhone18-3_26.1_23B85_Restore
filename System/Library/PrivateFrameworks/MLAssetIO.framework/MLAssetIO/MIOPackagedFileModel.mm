@interface MIOPackagedFileModel
- (BOOL)isEqual:(id)equal;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (MIOPackagedFileModel)initWithContentsOfURL:(id)l error:(id *)error;
- (MIOPackagedFileModel)initWithModel:(id)model;
- (MIOVersionInfo)specificationVersion;
- (NSArray)layers;
- (NSArray)subModels;
- (NSString)modelTypeName;
- (id)computePrecisionForFunctionNamed:(id)named;
- (id)copyWithZone:(_NSZone *)zone;
- (id)neuralNetworkLayerHistogramForFunctionNamed:(id)named;
- (id)programOperationHistogramForFunctionNamed:(id)named;
- (id)storagePrecisionForFunctionNamed:(id)named;
- (unint64_t)hash;
- (void)irProgram;
@end

@implementation MIOPackagedFileModel

- (MIOPackagedFileModel)initWithContentsOfURL:(id)l error:(id *)error
{
  __p[22] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = [lCopy copy];
  packageURL = self->_packageURL;
  self->_packageURL = v5;

  std::string::basic_string[abi:ne200100]<0>(__p, [lCopy fileSystemRepresentation]);
  MPL::ModelPackage::ModelPackage();
}

- (MIOPackagedFileModel)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = MIOPackagedFileModel;
  v6 = [(MIOPackagedFileModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specificationFileModel, model);
  }

  return v7;
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  __p[29] = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  packageURL = [(MIOPackagedFileModel *)self packageURL];
  path = [packageURL path];

  path2 = [lCopy path];
  LOBYTE(packageURL) = [defaultManager copyItemAtPath:path toPath:? error:?];
  v20 = 0;
  if (packageURL)
  {
    v6 = path2;
    std::string::basic_string[abi:ne200100]<0>(__p, [path2 UTF8String]);
    MPL::ModelPackage::ModelPackage();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = path;
    uTF8String = [path UTF8String];
    v9 = path2;
    -[MIOPackagedFileModel writeToURL:error:].cold.1(uTF8String, [path2 UTF8String], __p);
  }

  if (error)
  {
    v10 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v11 = MEMORY[0x1E696AEC0];
    v12 = path;
    uTF8String2 = [path UTF8String];
    v14 = path2;
    v18 = [v11 stringWithFormat:@"Failed to copy model from %s to %s", uTF8String2, objc_msgSend(path2, "UTF8String")];
    v26 = v18;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *error = [v10 errorWithDomain:@"com.apple.mlassetio" code:2 userInfo:?];
  }

  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

- (MIOVersionInfo)specificationVersion
{
  specificationFileModel = [(MIOPackagedFileModel *)self specificationFileModel];
  specificationVersion = [specificationFileModel specificationVersion];

  return specificationVersion;
}

- (NSString)modelTypeName
{
  specificationFileModel = [(MIOPackagedFileModel *)self specificationFileModel];
  modelTypeName = [specificationFileModel modelTypeName];

  return modelTypeName;
}

- (NSArray)layers
{
  specificationFileModel = [(MIOPackagedFileModel *)self specificationFileModel];
  layers = [specificationFileModel layers];

  return layers;
}

- (NSArray)subModels
{
  specificationFileModel = [(MIOPackagedFileModel *)self specificationFileModel];
  subModels = [specificationFileModel subModels];

  return subModels;
}

- (id)neuralNetworkLayerHistogramForFunctionNamed:(id)named
{
  namedCopy = named;
  specificationFileModel = [(MIOPackagedFileModel *)self specificationFileModel];
  v6 = [specificationFileModel neuralNetworkLayerHistogramForFunctionNamed:namedCopy];

  return v6;
}

- (id)programOperationHistogramForFunctionNamed:(id)named
{
  namedCopy = named;
  specificationFileModel = [(MIOPackagedFileModel *)self specificationFileModel];
  v6 = [specificationFileModel programOperationHistogramForFunctionNamed:namedCopy];

  return v6;
}

- (id)computePrecisionForFunctionNamed:(id)named
{
  namedCopy = named;
  specificationFileModel = [(MIOPackagedFileModel *)self specificationFileModel];
  v6 = [specificationFileModel computePrecisionForFunctionNamed:namedCopy];

  return v6;
}

- (id)storagePrecisionForFunctionNamed:(id)named
{
  namedCopy = named;
  specificationFileModel = [(MIOPackagedFileModel *)self specificationFileModel];
  v6 = [specificationFileModel storagePrecisionForFunctionNamed:namedCopy];

  return v6;
}

- (void)irProgram
{
  specificationFileModel = [(MIOPackagedFileModel *)self specificationFileModel];
  irProgram = [specificationFileModel irProgram];

  return irProgram;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (-[MIOPackagedFileModel modelDescription](self, "modelDescription"), v5 = objc_claimAutoreleasedReturnValue(), -[MIOPackagedFileModel modelDescription](equalCopy, "modelDescription"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqual:v6], v6, v5, (v7))
    {
      specificationFileModel = [(MIOPackagedFileModel *)self specificationFileModel];
      specificationFileModel2 = [(MIOPackagedFileModel *)equalCopy specificationFileModel];
      v10 = [specificationFileModel isEqual:specificationFileModel2];
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
  specificationFileModel = [(MIOPackagedFileModel *)self specificationFileModel];
  v3 = [specificationFileModel hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MIOPackagedFileModel alloc];
  specificationFileModel = [(MIOPackagedFileModel *)self specificationFileModel];
  v6 = [specificationFileModel copy];
  v7 = [(MIOPackagedFileModel *)v4 initWithModel:v6];

  packageURL = [(MIOPackagedFileModel *)self packageURL];
  v9 = [packageURL copy];
  [(MIOPackagedFileModel *)v7 setPackageURL:v9];

  modelDescription = [(MIOPackagedFileModel *)self modelDescription];
  v11 = [modelDescription copy];
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