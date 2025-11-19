@interface MIOSpecificationFileModel
- (BOOL)isEqual:(id)a3;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (MIOModelDescription)modelDescription;
- (MIOSpecificationFileModel)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (MIOSpecificationFileModel)initWithModel:(id)a3;
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
- (void)setModelDescription:(id)a3;
@end

@implementation MIOSpecificationFileModel

- (MIOSpecificationFileModel)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 copy];
  modelURL = self->_modelURL;
  self->_modelURL = v7;

  v9 = objc_alloc(MEMORY[0x1E695DEF0]);
  v10 = [v6 path];
  v11 = [v9 initWithContentsOfFile:v10 options:1 error:a4];

  if (v11)
  {
    v12 = [[MIOParserContext alloc] initWithModelSpecificationFileURL:v6];
    v13 = [[MIOSpecificationModel alloc] initWithSpecificationData:v11 parserContext:v12 error:a4];
    if (v13)
    {
      self = [(MIOSpecificationFileModel *)self initWithModel:v13];
      v14 = self;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (MIOSpecificationFileModel)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MIOSpecificationFileModel;
  v6 = [(MIOSpecificationFileModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specificationModel, a3);
  }

  return v7;
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIOSpecificationFileModel *)self specificationModel];
  LOBYTE(a4) = [v7 writeToURL:v6 error:a4];

  return a4;
}

- (MIOVersionInfo)specificationVersion
{
  v2 = [(MIOSpecificationFileModel *)self specificationModel];
  v3 = [v2 specificationVersion];

  return v3;
}

- (NSString)modelTypeName
{
  v2 = [(MIOSpecificationFileModel *)self specificationModel];
  v3 = [v2 modelTypeName];

  return v3;
}

- (MIOModelDescription)modelDescription
{
  v2 = [(MIOSpecificationFileModel *)self specificationModel];
  v3 = [v2 modelDescription];

  return v3;
}

- (void)setModelDescription:(id)a3
{
  v5 = a3;
  v4 = [(MIOSpecificationFileModel *)self specificationModel];
  [v4 setModelDescription:v5];
}

- (NSArray)layers
{
  v2 = [(MIOSpecificationFileModel *)self specificationModel];
  v3 = [v2 layers];

  return v3;
}

- (NSArray)subModels
{
  v2 = [(MIOSpecificationFileModel *)self specificationModel];
  v3 = [v2 subModels];

  return v3;
}

- (id)neuralNetworkLayerHistogramForFunctionNamed:(id)a3
{
  v4 = a3;
  v5 = [(MIOSpecificationFileModel *)self specificationModel];
  v6 = [v5 neuralNetworkLayerHistogramForFunctionNamed:v4];

  return v6;
}

- (id)programOperationHistogramForFunctionNamed:(id)a3
{
  v4 = a3;
  v5 = [(MIOSpecificationFileModel *)self specificationModel];
  v6 = [v5 programOperationHistogramForFunctionNamed:v4];

  return v6;
}

- (id)computePrecisionForFunctionNamed:(id)a3
{
  v4 = a3;
  v5 = [(MIOSpecificationFileModel *)self specificationModel];
  v6 = [v5 computePrecisionForFunctionNamed:v4];

  return v6;
}

- (id)storagePrecisionForFunctionNamed:(id)a3
{
  v4 = a3;
  v5 = [(MIOSpecificationFileModel *)self specificationModel];
  v6 = [v5 storagePrecisionForFunctionNamed:v4];

  return v6;
}

- (void)irProgram
{
  v2 = [(MIOSpecificationFileModel *)self specificationModel];
  v3 = [v2 irProgram];

  return v3;
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
      v5 = [(MIOSpecificationFileModel *)self specificationModel];
      v6 = [(MIOSpecificationFileModel *)v4 specificationModel];
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
  v2 = [(MIOSpecificationFileModel *)self specificationModel];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MIOSpecificationFileModel alloc];
  v5 = [(MIOSpecificationFileModel *)self specificationModel];
  v6 = [v5 copy];
  v7 = [(MIOSpecificationFileModel *)v4 initWithModel:v6];

  v8 = [(MIOSpecificationFileModel *)self modelURL];
  [(MIOSpecificationFileModel *)v7 setModelURL:v8];

  return v7;
}

@end