@interface MIOFunctionDescription
- (BOOL)isEqual:(id)a3;
- (MIOFunctionDescription)initWithSpecification:(const void *)a3 classLabels:(id)a4;
- (NSString)name;
- (NSString)predictedFeatureName;
- (NSString)predictedProbabilitiesName;
- (id)description;
- (unint64_t)hash;
@end

@implementation MIOFunctionDescription

- (MIOFunctionDescription)initWithSpecification:(const void *)a3 classLabels:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MIOFunctionDescription;
  v7 = [(MIOFunctionDescription *)&v12 init];
  v8 = v7;
  if (v7)
  {
    CoreML::Specification::FunctionDescription::CopyFrom(&v7->_functionDescriptionParams, a3);
    v9 = [v6 copy];
    classLabels = v8->_classLabels;
    v8->_classLabels = v9;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"MIOFunctionDescription (%p)\n", self];
  v4 = [(MIOFunctionDescription *)self inputDescriptions];
  v5 = [v4 componentsJoinedByString:@"\n    "];
  [v3 appendFormat:@"  inputDescriptions:\n    %@\n", v5];

  v6 = [(MIOFunctionDescription *)self outputDescriptions];
  v7 = [v6 componentsJoinedByString:@"\n    "];
  [v3 appendFormat:@"  outputDescriptions:\n    %@\n", v7];

  v8 = [(MIOFunctionDescription *)self predictedFeatureName];

  if (v8)
  {
    v9 = [(MIOFunctionDescription *)self predictedFeatureName];
    [v3 appendFormat:@"  predictedFeatureName: %@\n", v9];
  }

  v10 = [(MIOFunctionDescription *)self predictedProbabilitiesName];

  if (v10)
  {
    v11 = [(MIOFunctionDescription *)self predictedProbabilitiesName];
    [v3 appendFormat:@"  predictedProbabilitiesName: %@\n", v11];
  }

  v12 = [(MIOFunctionDescription *)self classLabels];

  if (v12)
  {
    v13 = [(MIOFunctionDescription *)self classLabels];
    [v3 appendFormat:@"  classLabels: %@\n", v13];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIOFunctionDescription *)self name];
      v7 = [(MIOFunctionDescription *)v5 name];
      v8 = [v6 isEqual:v7];

      if ((v8 & 1) == 0)
      {
        goto LABEL_10;
      }

      v9 = [(MIOFunctionDescription *)self inputDescriptions];
      v10 = [(MIOFunctionDescription *)v5 inputDescriptions];
      v11 = [v9 isEqual:v10];

      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }

      v12 = [(MIOFunctionDescription *)self outputDescriptions];
      v13 = [(MIOFunctionDescription *)v5 outputDescriptions];
      v14 = [v12 isEqual:v13];

      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }

      v15 = [(MIOFunctionDescription *)self predictedFeatureName];
      v16 = [(MIOFunctionDescription *)v5 predictedFeatureName];
      v17 = nullSafeEqual(v15, v16);

      if (v17)
      {
        v18 = [(MIOFunctionDescription *)self predictedProbabilitiesName];
        v19 = [(MIOFunctionDescription *)v5 predictedProbabilitiesName];
        v20 = nullSafeEqual(v18, v19);
      }

      else
      {
LABEL_10:
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (unint64_t)hash
{
  v2 = [(MIOFunctionDescription *)self name];
  v3 = [v2 hash];

  return v3;
}

- (NSString)name
{
  v2 = self->_functionDescriptionParams.name_.tagged_ptr_.ptr_ & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
}

- (NSString)predictedFeatureName
{
  v4 = self->_functionDescriptionParams.predictedfeaturename_.tagged_ptr_.ptr_ & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    if (!*(v4 + 8))
    {
      goto LABEL_9;
    }

    v4 = *v4;
  }

  else if (!*(v4 + 23))
  {
LABEL_9:
    v5 = 0;

    return v5;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v4, v2}];

  return v5;
}

- (NSString)predictedProbabilitiesName
{
  v4 = self->_functionDescriptionParams.predictedprobabilitiesname_.tagged_ptr_.ptr_ & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    if (!*(v4 + 8))
    {
      goto LABEL_9;
    }

    v4 = *v4;
  }

  else if (!*(v4 + 23))
  {
LABEL_9:
    v5 = 0;

    return v5;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v4, v2}];

  return v5;
}

@end