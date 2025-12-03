@interface MIOModel
- (BOOL)isEqual:(id)equal;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (MIOModel)initWithContentsOfURL:(id)l error:(id *)error;
- (MIOModel)initWithMessageStream:(CodedInputStream *)stream parserContext:(id)context error:(id *)error;
- (MIOModel)initWithModeling:(id)modeling error:(id *)error;
- (MIOModelDescription)modelDescription;
- (MIOVersionInfo)specificationVersion;
- (NSArray)layers;
- (NSArray)subModels;
- (NSString)modelTypeName;
- (id)computePrecisionForFunctionNamed:(id)named;
- (id)description;
- (id)layerHistogram;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)neuralNetworkLayerHistogramForFunctionNamed:(id)named;
- (id)programOperationHistogramForFunctionNamed:(id)named;
- (id)storagePrecisionForFunctionNamed:(id)named;
- (unint64_t)hash;
- (void)irProgram;
- (void)setModelDescription:(id)description;
@end

@implementation MIOModel

- (MIOModel)initWithContentsOfURL:(id)l error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v9 = [defaultManager fileExistsAtPath:path];

  if (v9)
  {
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    v11 = strlen(fileSystemRepresentation);
    if (v11 < 0x7FFFFFFFFFFFFFF8)
    {
      v12 = v11;
      if (v11 < 0x17)
      {
        *(&__p.__r_.__value_.__s + 23) = v11;
        if (v11)
        {
          memmove(&__p, fileSystemRepresentation, v11);
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

  if (error)
  {
    v13 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MIOModel instance must be initialized with an existing model file or package."];
    v20[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v13 errorWithDomain:@"com.apple.mlassetio" code:2 userInfo:v15];

    error = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return error;
}

- (MIOModel)initWithMessageStream:(CodedInputStream *)stream parserContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = [[MIOSpecificationModel alloc] initWithMessageStream:stream parserContext:contextCopy error:error];
  if (v9)
  {
    self = [(MIOModel *)self initWithModeling:v9 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MIOModel)initWithModeling:(id)modeling error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  modelingCopy = modeling;
  v19.receiver = self;
  v19.super_class = MIOModel;
  v8 = [(MIOModel *)&v19 init];
  if (!v8)
  {
    goto LABEL_8;
  }

  specificationVersion = [modelingCopy specificationVersion];
  v10 = [specificationVersion majorVersion] > 10;

  if (!v10)
  {
    objc_storeStrong(&v8->_modelImpl, modeling);
LABEL_8:
    error = v8;
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    specificationVersion2 = [modelingCopy specificationVersion];
    -[MIOModel initWithModeling:error:].cold.1(buf, [specificationVersion2 majorVersion], specificationVersion2);
  }

  if (error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v13 = MEMORY[0x1E696AEC0];
    specificationVersion3 = [modelingCopy specificationVersion];
    v15 = [v13 stringWithFormat:@"The model specification version (%zd) is greater than the maximum supported version (%d)", objc_msgSend(specificationVersion3, "majorVersion"), 10];
    v21 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *error = [v12 errorWithDomain:@"com.apple.mlassetio" code:1 userInfo:v16];

    error = 0;
  }

LABEL_9:

  v17 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [MIOModelUtils URLForNewlyCreatedWorkingDirectoryAppropriateForURL:lCopy error:error];
  if (v7)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    lastPathComponent = [lCopy lastPathComponent];
    v10 = [v7 URLByAppendingPathComponent:lastPathComponent];

    modelImpl = [(MIOModel *)self modelImpl];
    LOBYTE(lastPathComponent) = [modelImpl writeToURL:v10 error:error];

    if (lastPathComponent)
    {
      v12 = [defaultManager replaceItemAtURL:lCopy withItemAtURL:v10 backupItemName:0 options:0 resultingItemURL:0 error:error];
    }

    else
    {
      v12 = 0;
    }

    [defaultManager removeItemAtURL:v7 error:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (MIOVersionInfo)specificationVersion
{
  modelImpl = [(MIOModel *)self modelImpl];
  specificationVersion = [modelImpl specificationVersion];

  return specificationVersion;
}

- (NSString)modelTypeName
{
  modelImpl = [(MIOModel *)self modelImpl];
  modelTypeName = [modelImpl modelTypeName];

  return modelTypeName;
}

- (MIOModelDescription)modelDescription
{
  modelImpl = [(MIOModel *)self modelImpl];
  modelDescription = [modelImpl modelDescription];

  return modelDescription;
}

- (void)setModelDescription:(id)description
{
  descriptionCopy = description;
  modelImpl = [(MIOModel *)self modelImpl];
  [modelImpl setModelDescription:descriptionCopy];
}

- (NSArray)layers
{
  modelImpl = [(MIOModel *)self modelImpl];
  layers = [modelImpl layers];

  return layers;
}

- (NSArray)subModels
{
  modelImpl = [(MIOModel *)self modelImpl];
  subModels = [modelImpl subModels];

  return subModels;
}

- (id)neuralNetworkLayerHistogramForFunctionNamed:(id)named
{
  namedCopy = named;
  modelImpl = [(MIOModel *)self modelImpl];
  v6 = [modelImpl neuralNetworkLayerHistogramForFunctionNamed:namedCopy];

  return v6;
}

- (id)programOperationHistogramForFunctionNamed:(id)named
{
  namedCopy = named;
  modelImpl = [(MIOModel *)self modelImpl];
  v6 = [modelImpl programOperationHistogramForFunctionNamed:namedCopy];

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

- (id)computePrecisionForFunctionNamed:(id)named
{
  namedCopy = named;
  modelImpl = [(MIOModel *)self modelImpl];
  v6 = [modelImpl computePrecisionForFunctionNamed:namedCopy];

  return v6;
}

- (id)storagePrecisionForFunctionNamed:(id)named
{
  namedCopy = named;
  modelImpl = [(MIOModel *)self modelImpl];
  v6 = [modelImpl storagePrecisionForFunctionNamed:namedCopy];

  return v6;
}

- (void)irProgram
{
  modelImpl = [(MIOModel *)self modelImpl];
  irProgram = [modelImpl irProgram];

  return irProgram;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  modelTypeName = [(MIOModel *)self modelTypeName];
  v4 = [v2 stringWithFormat:@"MIOModel<%@>", modelTypeName];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      modelImpl = [(MIOModel *)self modelImpl];
      modelImpl2 = [(MIOModel *)equalCopy modelImpl];
      v7 = [modelImpl isEqual:modelImpl2];
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
  modelImpl = [(MIOModel *)self modelImpl];
  v3 = [modelImpl hash];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [MIOMutableModel alloc];
  modelImpl = [(MIOModel *)self modelImpl];
  v6 = [modelImpl copy];
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