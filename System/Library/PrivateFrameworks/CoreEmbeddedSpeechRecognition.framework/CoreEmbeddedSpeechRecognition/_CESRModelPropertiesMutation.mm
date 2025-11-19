@interface _CESRModelPropertiesMutation
- (_CESRModelPropertiesMutation)initWithBaseModel:(id)a3;
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
        v6 = self->_modelVersion;
      }

      else
      {
        v6 = [(CESRModelProperties *)baseModel modelVersion];
      }

      v7 = v6;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        v8 = self->_modelType;
      }

      else
      {
        v8 = [(CESRModelProperties *)self->_baseModel modelType];
      }

      v9 = v8;
      if ((*&self->_mutationFlags & 8) != 0)
      {
        v10 = self->_modelRoot;
      }

      else
      {
        v10 = [(CESRModelProperties *)self->_baseModel modelRoot];
      }

      v11 = v10;
      v5 = [[CESRModelProperties alloc] initWithModelVersion:v7 modelType:v9 modelRoot:v10];

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

- (_CESRModelPropertiesMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _CESRModelPropertiesMutation;
  v6 = [(_CESRModelPropertiesMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end