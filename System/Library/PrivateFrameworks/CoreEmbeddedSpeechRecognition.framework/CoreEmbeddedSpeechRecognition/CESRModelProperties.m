@interface CESRModelProperties
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CESRModelProperties)initWithCoder:(id)a3;
- (CESRModelProperties)initWithModelVersion:(id)a3 modelType:(id)a4 modelRoot:(id)a5;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CESRModelProperties

- (void)encodeWithCoder:(id)a3
{
  modelVersion = self->_modelVersion;
  v5 = a3;
  [v5 encodeObject:modelVersion forKey:@"CESRModelProperties::modelVersion"];
  [v5 encodeObject:self->_modelType forKey:@"CESRModelProperties::modelType"];
  [v5 encodeObject:self->_modelRoot forKey:@"CESRModelProperties::modelRoot"];
}

- (CESRModelProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CESRModelProperties::modelVersion"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CESRModelProperties::modelType"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CESRModelProperties::modelRoot"];

  v8 = [(CESRModelProperties *)self initWithModelVersion:v5 modelType:v6 modelRoot:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CESRModelProperties *)v5 modelVersion];
      modelVersion = self->_modelVersion;
      if (modelVersion == v6 || [(NSString *)modelVersion isEqual:v6])
      {
        v8 = [(CESRModelProperties *)v5 modelType];
        modelType = self->_modelType;
        if (modelType == v8 || [(NSString *)modelType isEqual:v8])
        {
          v10 = [(CESRModelProperties *)v5 modelRoot];
          modelRoot = self->_modelRoot;
          v12 = modelRoot == v10 || [(NSString *)modelRoot isEqual:v10];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modelVersion hash];
  v4 = [(NSString *)self->_modelType hash]^ v3;
  return v4 ^ [(NSString *)self->_modelRoot hash];
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v21[3] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v20.receiver = self;
  v20.super_class = CESRModelProperties;
  v5 = [(CESRModelProperties *)&v20 description];
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [(NSString *)self->_modelVersion description];
  v8 = [v6 initWithFormat:@"modelVersion = %@", v7];
  v21[0] = v8;
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = [(NSString *)self->_modelType description];
  v11 = [v9 initWithFormat:@"modelType = %@", v10];
  v21[1] = v11;
  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = [(NSString *)self->_modelRoot description];
  v14 = [v12 initWithFormat:@"modelRoot = %@", v13];
  v21[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v16 = [v15 componentsJoinedByString:{@", "}];
  v17 = [v4 initWithFormat:@"%@ {%@}", v5, v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (CESRModelProperties)initWithModelVersion:(id)a3 modelType:(id)a4 modelRoot:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CESRModelProperties;
  v11 = [(CESRModelProperties *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    modelVersion = v11->_modelVersion;
    v11->_modelVersion = v12;

    v14 = [v9 copy];
    modelType = v11->_modelType;
    v11->_modelType = v14;

    v16 = [v10 copy];
    modelRoot = v11->_modelRoot;
    v11->_modelRoot = v16;
  }

  return v11;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_CESRModelPropertiesMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_CESRModelPropertiesMutation *)v5 generate];
  }

  else
  {
    v6 = [(CESRModelProperties *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_CESRModelPropertiesMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_CESRModelPropertiesMutation *)v4 generate];

  return v5;
}

@end