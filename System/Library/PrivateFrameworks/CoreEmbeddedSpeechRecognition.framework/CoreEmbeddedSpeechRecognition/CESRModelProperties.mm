@interface CESRModelProperties
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (CESRModelProperties)initWithCoder:(id)coder;
- (CESRModelProperties)initWithModelVersion:(id)version modelType:(id)type modelRoot:(id)root;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CESRModelProperties

- (void)encodeWithCoder:(id)coder
{
  modelVersion = self->_modelVersion;
  coderCopy = coder;
  [coderCopy encodeObject:modelVersion forKey:@"CESRModelProperties::modelVersion"];
  [coderCopy encodeObject:self->_modelType forKey:@"CESRModelProperties::modelType"];
  [coderCopy encodeObject:self->_modelRoot forKey:@"CESRModelProperties::modelRoot"];
}

- (CESRModelProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRModelProperties::modelVersion"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRModelProperties::modelType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRModelProperties::modelRoot"];

  v8 = [(CESRModelProperties *)self initWithModelVersion:v5 modelType:v6 modelRoot:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      modelVersion = [(CESRModelProperties *)v5 modelVersion];
      modelVersion = self->_modelVersion;
      if (modelVersion == modelVersion || [(NSString *)modelVersion isEqual:modelVersion])
      {
        modelType = [(CESRModelProperties *)v5 modelType];
        modelType = self->_modelType;
        if (modelType == modelType || [(NSString *)modelType isEqual:modelType])
        {
          modelRoot = [(CESRModelProperties *)v5 modelRoot];
          modelRoot = self->_modelRoot;
          v12 = modelRoot == modelRoot || [(NSString *)modelRoot isEqual:modelRoot];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (CESRModelProperties)initWithModelVersion:(id)version modelType:(id)type modelRoot:(id)root
{
  versionCopy = version;
  typeCopy = type;
  rootCopy = root;
  v19.receiver = self;
  v19.super_class = CESRModelProperties;
  v11 = [(CESRModelProperties *)&v19 init];
  if (v11)
  {
    v12 = [versionCopy copy];
    modelVersion = v11->_modelVersion;
    v11->_modelVersion = v12;

    v14 = [typeCopy copy];
    modelType = v11->_modelType;
    v11->_modelType = v14;

    v16 = [rootCopy copy];
    modelRoot = v11->_modelRoot;
    v11->_modelRoot = v16;
  }

  return v11;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_CESRModelPropertiesMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_CESRModelPropertiesMutation *)v5 generate];
  }

  else
  {
    generate = [(CESRModelProperties *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_CESRModelPropertiesMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_CESRModelPropertiesMutation *)v4 generate];

  return generate;
}

@end