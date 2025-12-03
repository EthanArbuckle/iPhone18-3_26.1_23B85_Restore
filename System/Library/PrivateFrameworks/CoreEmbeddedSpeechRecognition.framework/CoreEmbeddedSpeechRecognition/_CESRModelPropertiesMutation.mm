@interface _CESRModelPropertiesMutation
- (_CESRModelPropertiesMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _CESRModelPropertiesMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    if (*&self->_mutationFlags)
    {
      if ((*&self->_mutationFlags & 2) != 0)
      {
        modelVersion = self->_modelVersion;
      }

      else
      {
        modelVersion = [(CESRModelProperties *)baseModel modelVersion];
      }

      v7 = modelVersion;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        modelType = self->_modelType;
      }

      else
      {
        modelType = [(CESRModelProperties *)self->_baseModel modelType];
      }

      v9 = modelType;
      if ((*&self->_mutationFlags & 8) != 0)
      {
        modelRoot = self->_modelRoot;
      }

      else
      {
        modelRoot = [(CESRModelProperties *)self->_baseModel modelRoot];
      }

      v11 = modelRoot;
      v5 = [[CESRModelProperties alloc] initWithModelVersion:v7 modelType:v9 modelRoot:modelRoot];

      goto LABEL_16;
    }

    v4 = [(CESRModelProperties *)baseModel copy];
  }

  else
  {
    v4 = [[CESRModelProperties alloc] initWithModelVersion:self->_modelVersion modelType:self->_modelType modelRoot:self->_modelRoot];
  }

  v5 = v4;
LABEL_16:

  return v5;
}

- (_CESRModelPropertiesMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _CESRModelPropertiesMutation;
  v6 = [(_CESRModelPropertiesMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end