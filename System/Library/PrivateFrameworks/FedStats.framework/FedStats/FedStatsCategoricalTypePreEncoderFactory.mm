@interface FedStatsCategoricalTypePreEncoderFactory
+ (id)forVariant:(id)variant assetNamesInParameters:(id)parameters usingFieldValues:(id)values;
+ (id)forVariant:(id)variant mutateParameters:(id)parameters usingFieldValues:(id)values assetURLs:(id)ls error:(id *)error;
+ (id)forVariant:(id)variant requiredFieldsInParameters:(id)parameters;
+ (id)preEncoderForVariant:(id)variant parameters:(id)parameters error:(id *)error;
@end

@implementation FedStatsCategoricalTypePreEncoderFactory

+ (id)preEncoderForVariant:(id)variant parameters:(id)parameters error:(id *)error
{
  variantCopy = variant;
  parametersCopy = parameters;
  if ([@"huffman" isEqual:variantCopy])
  {
    v9 = FedStatsCategoricalTypeHuffmanEncoder;
LABEL_7:
    error = [(__objc2_class *)v9 instanceWithParameters:parametersCopy error:error];
    goto LABEL_8;
  }

  if ([@"ipv4" isEqual:variantCopy])
  {
    v9 = FedStatsCategoricalTypeIPv4Encoder;
    goto LABEL_7;
  }

  if ([@"ipv6" isEqual:variantCopy])
  {
    v9 = FedStatsCategoricalTypeIPv6Encoder;
    goto LABEL_7;
  }

  if (error)
    v11 = {;
    *error = [FedStatsError errorWithCode:900 description:v11];

    error = 0;
  }

LABEL_8:

  return error;
}

+ (id)forVariant:(id)variant mutateParameters:(id)parameters usingFieldValues:(id)values assetURLs:(id)ls error:(id *)error
{
  variantCopy = variant;
  parametersCopy = parameters;
  valuesCopy = values;
  lsCopy = ls;
  if ([@"huffman" isEqual:variantCopy])
  {
    v15 = FedStatsCategoricalTypeHuffmanEncoder;
LABEL_7:
    error = [(__objc2_class *)v15 mutateParameters:parametersCopy usingFieldValues:valuesCopy assetURLs:lsCopy requiredFields:0 assetNames:0 error:error];
    goto LABEL_8;
  }

  if ([@"ipv4" isEqual:variantCopy])
  {
    v15 = FedStatsCategoricalTypeIPv4Encoder;
    goto LABEL_7;
  }

  if ([@"ipv6" isEqual:variantCopy])
  {
    v15 = FedStatsCategoricalTypeIPv6Encoder;
    goto LABEL_7;
  }

  if (error)
    v17 = {;
    *error = [FedStatsError errorWithCode:900 description:v17];

    error = 0;
  }

LABEL_8:

  return error;
}

+ (id)forVariant:(id)variant assetNamesInParameters:(id)parameters usingFieldValues:(id)values
{
  variantCopy = variant;
  parametersCopy = parameters;
  valuesCopy = values;
  if ([@"huffman" isEqual:variantCopy])
  {
    v10 = FedStatsCategoricalTypeHuffmanEncoder;
    v20 = MEMORY[0x277CBEBF8];
    v11 = &v20;
    v12 = &v20;
LABEL_7:
    v15 = [(__objc2_class *)v10 mutateParameters:parametersCopy usingFieldValues:valuesCopy assetURLs:0 requiredFields:0 assetNames:v12 error:0];
    v16 = *v11;
    v14 = v16;
    goto LABEL_8;
  }

  if ([@"ipv4" isEqual:variantCopy])
  {
    v10 = FedStatsCategoricalTypeIPv4Encoder;
    v19 = MEMORY[0x277CBEBF8];
    v11 = &v19;
    v12 = &v19;
    goto LABEL_7;
  }

  v13 = [@"ipv6" isEqual:variantCopy];
  v14 = MEMORY[0x277CBEBF8];
  if (v13)
  {
    v10 = FedStatsCategoricalTypeIPv6Encoder;
    v18 = MEMORY[0x277CBEBF8];
    v11 = &v18;
    v12 = &v18;
    goto LABEL_7;
  }

  v16 = 0;
LABEL_8:

  return v16;
}

+ (id)forVariant:(id)variant requiredFieldsInParameters:(id)parameters
{
  variantCopy = variant;
  parametersCopy = parameters;
  if ([@"huffman" isEqual:variantCopy])
  {
    v7 = FedStatsCategoricalTypeHuffmanEncoder;
    v17 = MEMORY[0x277CBEBF8];
    v8 = &v17;
    v9 = &v17;
LABEL_7:
    v12 = [(__objc2_class *)v7 mutateParameters:parametersCopy usingFieldValues:0 assetURLs:0 requiredFields:v9 assetNames:0 error:0];
    v13 = *v8;
    v11 = v13;
    goto LABEL_8;
  }

  if ([@"ipv4" isEqual:variantCopy])
  {
    v7 = FedStatsCategoricalTypeIPv4Encoder;
    v16 = MEMORY[0x277CBEBF8];
    v8 = &v16;
    v9 = &v16;
    goto LABEL_7;
  }

  v10 = [@"ipv6" isEqual:variantCopy];
  v11 = MEMORY[0x277CBEBF8];
  if (v10)
  {
    v7 = FedStatsCategoricalTypeIPv6Encoder;
    v15 = MEMORY[0x277CBEBF8];
    v8 = &v15;
    v9 = &v15;
    goto LABEL_7;
  }

  v13 = 0;
LABEL_8:

  return v13;
}

@end