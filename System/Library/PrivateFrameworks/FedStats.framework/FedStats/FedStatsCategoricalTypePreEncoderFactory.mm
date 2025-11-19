@interface FedStatsCategoricalTypePreEncoderFactory
+ (id)forVariant:(id)a3 assetNamesInParameters:(id)a4 usingFieldValues:(id)a5;
+ (id)forVariant:(id)a3 mutateParameters:(id)a4 usingFieldValues:(id)a5 assetURLs:(id)a6 error:(id *)a7;
+ (id)forVariant:(id)a3 requiredFieldsInParameters:(id)a4;
+ (id)preEncoderForVariant:(id)a3 parameters:(id)a4 error:(id *)a5;
@end

@implementation FedStatsCategoricalTypePreEncoderFactory

+ (id)preEncoderForVariant:(id)a3 parameters:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([@"huffman" isEqual:v7])
  {
    v9 = FedStatsCategoricalTypeHuffmanEncoder;
LABEL_7:
    a5 = [(__objc2_class *)v9 instanceWithParameters:v8 error:a5];
    goto LABEL_8;
  }

  if ([@"ipv4" isEqual:v7])
  {
    v9 = FedStatsCategoricalTypeIPv4Encoder;
    goto LABEL_7;
  }

  if ([@"ipv6" isEqual:v7])
  {
    v9 = FedStatsCategoricalTypeIPv6Encoder;
    goto LABEL_7;
  }

  if (a5)
    v11 = {;
    *a5 = [FedStatsError errorWithCode:900 description:v11];

    a5 = 0;
  }

LABEL_8:

  return a5;
}

+ (id)forVariant:(id)a3 mutateParameters:(id)a4 usingFieldValues:(id)a5 assetURLs:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([@"huffman" isEqual:v11])
  {
    v15 = FedStatsCategoricalTypeHuffmanEncoder;
LABEL_7:
    a7 = [(__objc2_class *)v15 mutateParameters:v12 usingFieldValues:v13 assetURLs:v14 requiredFields:0 assetNames:0 error:a7];
    goto LABEL_8;
  }

  if ([@"ipv4" isEqual:v11])
  {
    v15 = FedStatsCategoricalTypeIPv4Encoder;
    goto LABEL_7;
  }

  if ([@"ipv6" isEqual:v11])
  {
    v15 = FedStatsCategoricalTypeIPv6Encoder;
    goto LABEL_7;
  }

  if (a7)
    v17 = {;
    *a7 = [FedStatsError errorWithCode:900 description:v17];

    a7 = 0;
  }

LABEL_8:

  return a7;
}

+ (id)forVariant:(id)a3 assetNamesInParameters:(id)a4 usingFieldValues:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([@"huffman" isEqual:v7])
  {
    v10 = FedStatsCategoricalTypeHuffmanEncoder;
    v20 = MEMORY[0x277CBEBF8];
    v11 = &v20;
    v12 = &v20;
LABEL_7:
    v15 = [(__objc2_class *)v10 mutateParameters:v8 usingFieldValues:v9 assetURLs:0 requiredFields:0 assetNames:v12 error:0];
    v16 = *v11;
    v14 = v16;
    goto LABEL_8;
  }

  if ([@"ipv4" isEqual:v7])
  {
    v10 = FedStatsCategoricalTypeIPv4Encoder;
    v19 = MEMORY[0x277CBEBF8];
    v11 = &v19;
    v12 = &v19;
    goto LABEL_7;
  }

  v13 = [@"ipv6" isEqual:v7];
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

+ (id)forVariant:(id)a3 requiredFieldsInParameters:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([@"huffman" isEqual:v5])
  {
    v7 = FedStatsCategoricalTypeHuffmanEncoder;
    v17 = MEMORY[0x277CBEBF8];
    v8 = &v17;
    v9 = &v17;
LABEL_7:
    v12 = [(__objc2_class *)v7 mutateParameters:v6 usingFieldValues:0 assetURLs:0 requiredFields:v9 assetNames:0 error:0];
    v13 = *v8;
    v11 = v13;
    goto LABEL_8;
  }

  if ([@"ipv4" isEqual:v5])
  {
    v7 = FedStatsCategoricalTypeIPv4Encoder;
    v16 = MEMORY[0x277CBEBF8];
    v8 = &v16;
    v9 = &v16;
    goto LABEL_7;
  }

  v10 = [@"ipv6" isEqual:v5];
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