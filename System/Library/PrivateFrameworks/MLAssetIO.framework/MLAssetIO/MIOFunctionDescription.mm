@interface MIOFunctionDescription
- (BOOL)isEqual:(id)equal;
- (MIOFunctionDescription)initWithSpecification:(const void *)specification classLabels:(id)labels;
- (NSString)name;
- (NSString)predictedFeatureName;
- (NSString)predictedProbabilitiesName;
- (id)description;
- (unint64_t)hash;
@end

@implementation MIOFunctionDescription

- (MIOFunctionDescription)initWithSpecification:(const void *)specification classLabels:(id)labels
{
  labelsCopy = labels;
  v12.receiver = self;
  v12.super_class = MIOFunctionDescription;
  v7 = [(MIOFunctionDescription *)&v12 init];
  v8 = v7;
  if (v7)
  {
    CoreML::Specification::FunctionDescription::CopyFrom(&v7->_functionDescriptionParams, specification);
    v9 = [labelsCopy copy];
    classLabels = v8->_classLabels;
    v8->_classLabels = v9;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"MIOFunctionDescription (%p)\n", self];
  inputDescriptions = [(MIOFunctionDescription *)self inputDescriptions];
  v5 = [inputDescriptions componentsJoinedByString:@"\n    "];
  [v3 appendFormat:@"  inputDescriptions:\n    %@\n", v5];

  outputDescriptions = [(MIOFunctionDescription *)self outputDescriptions];
  v7 = [outputDescriptions componentsJoinedByString:@"\n    "];
  [v3 appendFormat:@"  outputDescriptions:\n    %@\n", v7];

  predictedFeatureName = [(MIOFunctionDescription *)self predictedFeatureName];

  if (predictedFeatureName)
  {
    predictedFeatureName2 = [(MIOFunctionDescription *)self predictedFeatureName];
    [v3 appendFormat:@"  predictedFeatureName: %@\n", predictedFeatureName2];
  }

  predictedProbabilitiesName = [(MIOFunctionDescription *)self predictedProbabilitiesName];

  if (predictedProbabilitiesName)
  {
    predictedProbabilitiesName2 = [(MIOFunctionDescription *)self predictedProbabilitiesName];
    [v3 appendFormat:@"  predictedProbabilitiesName: %@\n", predictedProbabilitiesName2];
  }

  classLabels = [(MIOFunctionDescription *)self classLabels];

  if (classLabels)
  {
    classLabels2 = [(MIOFunctionDescription *)self classLabels];
    [v3 appendFormat:@"  classLabels: %@\n", classLabels2];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(MIOFunctionDescription *)self name];
      name2 = [(MIOFunctionDescription *)v5 name];
      v8 = [name isEqual:name2];

      if ((v8 & 1) == 0)
      {
        goto LABEL_10;
      }

      inputDescriptions = [(MIOFunctionDescription *)self inputDescriptions];
      inputDescriptions2 = [(MIOFunctionDescription *)v5 inputDescriptions];
      v11 = [inputDescriptions isEqual:inputDescriptions2];

      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }

      outputDescriptions = [(MIOFunctionDescription *)self outputDescriptions];
      outputDescriptions2 = [(MIOFunctionDescription *)v5 outputDescriptions];
      v14 = [outputDescriptions isEqual:outputDescriptions2];

      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }

      predictedFeatureName = [(MIOFunctionDescription *)self predictedFeatureName];
      predictedFeatureName2 = [(MIOFunctionDescription *)v5 predictedFeatureName];
      v17 = nullSafeEqual(predictedFeatureName, predictedFeatureName2);

      if (v17)
      {
        predictedProbabilitiesName = [(MIOFunctionDescription *)self predictedProbabilitiesName];
        predictedProbabilitiesName2 = [(MIOFunctionDescription *)v5 predictedProbabilitiesName];
        v20 = nullSafeEqual(predictedProbabilitiesName, predictedProbabilitiesName2);
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
  name = [(MIOFunctionDescription *)self name];
  v3 = [name hash];

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