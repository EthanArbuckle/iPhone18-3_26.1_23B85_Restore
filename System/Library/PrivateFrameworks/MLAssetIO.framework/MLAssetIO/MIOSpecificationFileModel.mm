@interface MIOSpecificationFileModel
- (BOOL)isEqual:(id)equal;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (MIOModelDescription)modelDescription;
- (MIOSpecificationFileModel)initWithContentsOfURL:(id)l error:(id *)error;
- (MIOSpecificationFileModel)initWithModel:(id)model;
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
- (void)setModelDescription:(id)description;
@end

@implementation MIOSpecificationFileModel

- (MIOSpecificationFileModel)initWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [lCopy copy];
  modelURL = self->_modelURL;
  self->_modelURL = v7;

  v9 = objc_alloc(MEMORY[0x1E695DEF0]);
  path = [lCopy path];
  v11 = [v9 initWithContentsOfFile:path options:1 error:error];

  if (v11)
  {
    v12 = [[MIOParserContext alloc] initWithModelSpecificationFileURL:lCopy];
    v13 = [[MIOSpecificationModel alloc] initWithSpecificationData:v11 parserContext:v12 error:error];
    if (v13)
    {
      self = [(MIOSpecificationFileModel *)self initWithModel:v13];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MIOSpecificationFileModel)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = MIOSpecificationFileModel;
  v6 = [(MIOSpecificationFileModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specificationModel, model);
  }

  return v7;
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  lCopy = l;
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  LOBYTE(error) = [specificationModel writeToURL:lCopy error:error];

  return error;
}

- (MIOVersionInfo)specificationVersion
{
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  specificationVersion = [specificationModel specificationVersion];

  return specificationVersion;
}

- (NSString)modelTypeName
{
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  modelTypeName = [specificationModel modelTypeName];

  return modelTypeName;
}

- (MIOModelDescription)modelDescription
{
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  modelDescription = [specificationModel modelDescription];

  return modelDescription;
}

- (void)setModelDescription:(id)description
{
  descriptionCopy = description;
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  [specificationModel setModelDescription:descriptionCopy];
}

- (NSArray)layers
{
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  layers = [specificationModel layers];

  return layers;
}

- (NSArray)subModels
{
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  subModels = [specificationModel subModels];

  return subModels;
}

- (id)neuralNetworkLayerHistogramForFunctionNamed:(id)named
{
  namedCopy = named;
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  v6 = [specificationModel neuralNetworkLayerHistogramForFunctionNamed:namedCopy];

  return v6;
}

- (id)programOperationHistogramForFunctionNamed:(id)named
{
  namedCopy = named;
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  v6 = [specificationModel programOperationHistogramForFunctionNamed:namedCopy];

  return v6;
}

- (id)computePrecisionForFunctionNamed:(id)named
{
  namedCopy = named;
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  v6 = [specificationModel computePrecisionForFunctionNamed:namedCopy];

  return v6;
}

- (id)storagePrecisionForFunctionNamed:(id)named
{
  namedCopy = named;
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  v6 = [specificationModel storagePrecisionForFunctionNamed:namedCopy];

  return v6;
}

- (void)irProgram
{
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  irProgram = [specificationModel irProgram];

  return irProgram;
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
      specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
      specificationModel2 = [(MIOSpecificationFileModel *)equalCopy specificationModel];
      v7 = [specificationModel isEqual:specificationModel2];
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
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  v3 = [specificationModel hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MIOSpecificationFileModel alloc];
  specificationModel = [(MIOSpecificationFileModel *)self specificationModel];
  v6 = [specificationModel copy];
  v7 = [(MIOSpecificationFileModel *)v4 initWithModel:v6];

  modelURL = [(MIOSpecificationFileModel *)self modelURL];
  [(MIOSpecificationFileModel *)v7 setModelURL:modelURL];

  return v7;
}

@end