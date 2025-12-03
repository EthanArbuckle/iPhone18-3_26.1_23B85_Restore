@interface BMContextualActionParameter
- (BMContextualActionParameter)initWithCoder:(id)coder;
- (BMContextualActionParameter)initWithType:(id)type metadata:(id)metadata;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMContextualActionParameter

- (BMContextualActionParameter)initWithType:(id)type metadata:(id)metadata
{
  typeCopy = type;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = BMContextualActionParameter;
  v9 = [(BMContextualActionParameter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parameterType, type);
    objc_storeStrong(&v10->_parameterMetadata, metadata);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  parameterType = self->_parameterType;
  coderCopy = coder;
  [coderCopy encodeObject:parameterType forKey:@"parameterType"];
  [coderCopy encodeObject:self->_parameterMetadata forKey:@"parameterMetadata"];
}

- (BMContextualActionParameter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterType"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"parameterMetadata"];

  v14 = [(BMContextualActionParameter *)self initWithType:v5 metadata:v13];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    parameterType = [(BMContextualActionParameter *)self parameterType];
    if (parameterType || ([v6 parameterType], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      parameterType2 = [(BMContextualActionParameter *)self parameterType];
      parameterType3 = [v6 parameterType];
      v10 = [parameterType2 isEqual:parameterType3];

      if (parameterType)
      {
LABEL_9:

        parameterMetadata = [(BMContextualActionParameter *)self parameterMetadata];
        if (parameterMetadata || ([v6 parameterMetadata], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          parameterMetadata2 = [(BMContextualActionParameter *)self parameterMetadata];
          parameterMetadata3 = [v6 parameterMetadata];
          v15 = [parameterMetadata2 isEqualToDictionary:parameterMetadata3];

          if (parameterMetadata)
          {
LABEL_15:

            v11 = v10 & v15;
            goto LABEL_16;
          }
        }

        else
        {
          v15 = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

@end