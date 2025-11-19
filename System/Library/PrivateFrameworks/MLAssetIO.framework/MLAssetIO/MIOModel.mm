@interface MIOModel
- (BOOL)isEqual:(id)a3;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (MIOModel)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (MIOModel)initWithMessageStream:(CodedInputStream *)a3 parserContext:(id)a4 error:(id *)a5;
- (MIOModel)initWithModeling:(id)a3 error:(id *)a4;
- (MIOModelDescription)modelDescription;
- (MIOVersionInfo)specificationVersion;
- (NSArray)layers;
- (NSArray)subModels;
- (NSString)modelTypeName;
- (id)computePrecisionForFunctionNamed:(id)a3;
- (id)description;
- (id)layerHistogram;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)neuralNetworkLayerHistogramForFunctionNamed:(id)a3;
- (id)programOperationHistogramForFunctionNamed:(id)a3;
- (id)storagePrecisionForFunctionNamed:(id)a3;
- (unint64_t)hash;
- (void)irProgram;
- (void)setModelDescription:(id)a3;
@end

@implementation MIOModel

- (MIOModel)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8];

  if (v9)
  {
    v10 = [v6 fileSystemRepresentation];
    v11 = strlen(v10);
    if (v11 < 0x7FFFFFFFFFFFFFF8)
    {
      v12 = v11;
      if (v11 < 0x17)
      {
        *(&__p.__r_.__value_.__s + 23) = v11;
        if (v11)
        {
          memmove(&__p, v10, v11);
        }

        __p.__r_.__value_.__s.__data_[v12] = 0;
        MPL::ModelPackage::isValid(&__p);
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MIOModel initWithContentsOfURL:error:];
  }

  if (a4)
  {
    v13 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MIOModel instance must be initialized with an existing model file or package."];
    v20[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a4 = [v13 errorWithDomain:@"com.apple.mlassetio" code:2 userInfo:v15];

    a4 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return a4;
}

- (MIOModel)initWithMessageStream:(CodedInputStream *)a3 parserContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [[MIOSpecificationModel alloc] initWithMessageStream:a3 parserContext:v8 error:a5];
  if (v9)
  {
    self = [(MIOModel *)self initWithModeling:v9 error:a5];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MIOModel)initWithModeling:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v19.receiver = self;
  v19.super_class = MIOModel;
  v8 = [(MIOModel *)&v19 init];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [v7 specificationVersion];
  v10 = [v9 majorVersion] > 10;

  if (!v10)
  {
    objc_storeStrong(&v8->_modelImpl, a3);
LABEL_8:
    a4 = v8;
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [v7 specificationVersion];
    -[MIOModel initWithModeling:error:].cold.1(buf, [v11 majorVersion], v11);
  }

  if (a4)
  {
    v12 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v13 = MEMORY[0x1E696AEC0];
    v14 = [v7 specificationVersion];
    v15 = [v13 stringWithFormat:@"The model specification version (%zd) is greater than the maximum supported version (%d)", objc_msgSend(v14, "majorVersion"), 10];
    v21 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *a4 = [v12 errorWithDomain:@"com.apple.mlassetio" code:1 userInfo:v16];

    a4 = 0;
  }

LABEL_9:

  v17 = *MEMORY[0x1E69E9840];
  return a4;
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MIOModelUtils URLForNewlyCreatedWorkingDirectoryAppropriateForURL:v6 error:a4];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v6 lastPathComponent];
    v10 = [v7 URLByAppendingPathComponent:v9];

    v11 = [(MIOModel *)self modelImpl];
    LOBYTE(v9) = [v11 writeToURL:v10 error:a4];

    if (v9)
    {
      v12 = [v8 replaceItemAtURL:v6 withItemAtURL:v10 backupItemName:0 options:0 resultingItemURL:0 error:a4];
    }

    else
    {
      v12 = 0;
    }

    [v8 removeItemAtURL:v7 error:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (MIOVersionInfo)specificationVersion
{
  v2 = [(MIOModel *)self modelImpl];
  v3 = [v2 specificationVersion];

  return v3;
}

- (NSString)modelTypeName
{
  v2 = [(MIOModel *)self modelImpl];
  v3 = [v2 modelTypeName];

  return v3;
}

- (MIOModelDescription)modelDescription
{
  v2 = [(MIOModel *)self modelImpl];
  v3 = [v2 modelDescription];

  return v3;
}

- (void)setModelDescription:(id)a3
{
  v5 = a3;
  v4 = [(MIOModel *)self modelImpl];
  [v4 setModelDescription:v5];
}

- (NSArray)layers
{
  v2 = [(MIOModel *)self modelImpl];
  v3 = [v2 layers];

  return v3;
}

- (NSArray)subModels
{
  v2 = [(MIOModel *)self modelImpl];
  v3 = [v2 subModels];

  return v3;
}

- (id)neuralNetworkLayerHistogramForFunctionNamed:(id)a3
{
  v4 = a3;
  v5 = [(MIOModel *)self modelImpl];
  v6 = [v5 neuralNetworkLayerHistogramForFunctionNamed:v4];

  return v6;
}

- (id)programOperationHistogramForFunctionNamed:(id)a3
{
  v4 = a3;
  v5 = [(MIOModel *)self modelImpl];
  v6 = [v5 programOperationHistogramForFunctionNamed:v4];

  return v6;
}

- (id)layerHistogram
{
  v23 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v15 = [(MIOModel *)self neuralNetworkLayerHistogramForFunctionNamed:0];
  v3 = [(MIOModel *)self programOperationHistogramForFunctionNamed:0];
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  v5 = v4;
  if (v15)
  {
    [v4 addObject:v15];
  }

  if (v3)
  {
    [v5 addObject:v3];
  }

  v6 = [MEMORY[0x1E695E0F8] mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __26__MIOModel_layerHistogram__block_invoke;
        v16[3] = &unk_1E814D7E0;
        v17 = v6;
        [v11 enumerateKeysAndObjectsUsingBlock:v16];
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);
  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

void __26__MIOModel_layerHistogram__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v9];
  v8 = [v6 numberWithInteger:{objc_msgSend(v5, "integerValue") + objc_msgSend(v7, "integerValue")}];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
}

- (id)computePrecisionForFunctionNamed:(id)a3
{
  v4 = a3;
  v5 = [(MIOModel *)self modelImpl];
  v6 = [v5 computePrecisionForFunctionNamed:v4];

  return v6;
}

- (id)storagePrecisionForFunctionNamed:(id)a3
{
  v4 = a3;
  v5 = [(MIOModel *)self modelImpl];
  v6 = [v5 storagePrecisionForFunctionNamed:v4];

  return v6;
}

- (void)irProgram
{
  v2 = [(MIOModel *)self modelImpl];
  v3 = [v2 irProgram];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(MIOModel *)self modelTypeName];
  v4 = [v2 stringWithFormat:@"MIOModel<%@>", v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MIOModel *)self modelImpl];
      v6 = [(MIOModel *)v4 modelImpl];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(MIOModel *)self modelImpl];
  v3 = [v2 hash];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MIOMutableModel alloc];
  v5 = [(MIOModel *)self modelImpl];
  v6 = [v5 copy];
  v7 = [(MIOModel *)v4 initWithModeling:v6 error:0];

  return v7;
}

- (void)initWithModeling:(void *)a3 error:.cold.1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 1024;
  *(buf + 14) = 10;
  _os_log_error_impl(&dword_1C1BCE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "The model specification version (%zd) is greater than the maximum supported version (%d)", buf, 0x12u);
}

@end