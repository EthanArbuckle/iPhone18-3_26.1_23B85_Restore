@interface FedStatsCategoricalTypeFilterFactory
+ (id)filterForVariant:(id)variant parameters:(id)parameters error:(id *)error;
+ (id)forVariant:(id)variant assetNamesInParameters:(id)parameters usingFieldValues:(id)values;
+ (id)forVariant:(id)variant mutateParameters:(id)parameters usingFieldValues:(id)values assetURLs:(id)ls error:(id *)error;
+ (id)forVariant:(id)variant requiredFieldsInParameters:(id)parameters;
@end

@implementation FedStatsCategoricalTypeFilterFactory

+ (id)filterForVariant:(id)variant parameters:(id)parameters error:(id *)error
{
  variantCopy = variant;
  parametersCopy = parameters;
  if ([@"denyList" isEqual:variantCopy])
  {
    v9 = FedStatsCategoricalTypeDenyList;
LABEL_5:
    error = [(__objc2_class *)v9 instanceWithParameters:parametersCopy error:error];
    goto LABEL_6;
  }

  if ([@"bloom" isEqual:variantCopy])
  {
    v9 = FedStatsCategoricalTypeBloomFilter;
    goto LABEL_5;
  }

  if (error)
    v11 = {;
    *error = [FedStatsError errorWithCode:900 description:v11];

    error = 0;
  }

LABEL_6:

  return error;
}

+ (id)forVariant:(id)variant assetNamesInParameters:(id)parameters usingFieldValues:(id)values
{
  variantCopy = variant;
  parametersCopy = parameters;
  valuesCopy = values;
  if ([@"denyList" isEqual:variantCopy])
  {
    v10 = FedStatsCategoricalTypeDenyList;
    v19 = MEMORY[0x277CBEBF8];
    v11 = &v19;
    v12 = &v19;
LABEL_5:
    v15 = [(__objc2_class *)v10 mutateParameters:parametersCopy usingFieldValues:valuesCopy assetURLs:0 requiredFields:0 assetNames:v12 error:0, v18, v19];
    v16 = *v11;
    v14 = v16;
    goto LABEL_7;
  }

  v13 = [@"bloom" isEqual:variantCopy];
  v14 = MEMORY[0x277CBEBF8];
  if (v13)
  {
    v10 = FedStatsCategoricalTypeBloomFilter;
    v18 = MEMORY[0x277CBEBF8];
    v11 = &v18;
    v12 = &v18;
    goto LABEL_5;
  }

  v16 = 0;
LABEL_7:

  return v16;
}

+ (id)forVariant:(id)variant requiredFieldsInParameters:(id)parameters
{
  variantCopy = variant;
  parametersCopy = parameters;
  if ([@"denyList" isEqual:variantCopy])
  {
    v7 = FedStatsCategoricalTypeDenyList;
    v16 = MEMORY[0x277CBEBF8];
    v8 = &v16;
    v9 = &v16;
LABEL_5:
    v12 = [(__objc2_class *)v7 mutateParameters:parametersCopy usingFieldValues:0 assetURLs:0 requiredFields:v9 assetNames:0 error:0, v15, v16];
    v13 = *v8;
    v11 = v13;
    goto LABEL_7;
  }

  v10 = [@"bloom" isEqual:variantCopy];
  v11 = MEMORY[0x277CBEBF8];
  if (v10)
  {
    v7 = FedStatsCategoricalTypeBloomFilter;
    v15 = MEMORY[0x277CBEBF8];
    v8 = &v15;
    v9 = &v15;
    goto LABEL_5;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

+ (id)forVariant:(id)variant mutateParameters:(id)parameters usingFieldValues:(id)values assetURLs:(id)ls error:(id *)error
{
  variantCopy = variant;
  parametersCopy = parameters;
  valuesCopy = values;
  lsCopy = ls;
  if ([@"denyList" isEqual:variantCopy])
  {
    v15 = FedStatsCategoricalTypeDenyList;
LABEL_5:
    error = [(__objc2_class *)v15 mutateParameters:parametersCopy usingFieldValues:valuesCopy assetURLs:lsCopy requiredFields:0 assetNames:0 error:error];
    goto LABEL_6;
  }

  if ([@"bloom" isEqual:variantCopy])
  {
    v15 = FedStatsCategoricalTypeBloomFilter;
    goto LABEL_5;
  }

  if (error)
    v17 = {;
    *error = [FedStatsError errorWithCode:900 description:v17];

    error = 0;
  }

LABEL_6:

  return error;
}

@end