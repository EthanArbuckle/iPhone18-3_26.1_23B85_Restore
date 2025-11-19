@interface FedStatsCategoricalTypeFilterFactory
+ (id)filterForVariant:(id)a3 parameters:(id)a4 error:(id *)a5;
+ (id)forVariant:(id)a3 assetNamesInParameters:(id)a4 usingFieldValues:(id)a5;
+ (id)forVariant:(id)a3 mutateParameters:(id)a4 usingFieldValues:(id)a5 assetURLs:(id)a6 error:(id *)a7;
+ (id)forVariant:(id)a3 requiredFieldsInParameters:(id)a4;
@end

@implementation FedStatsCategoricalTypeFilterFactory

+ (id)filterForVariant:(id)a3 parameters:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([@"denyList" isEqual:v7])
  {
    v9 = FedStatsCategoricalTypeDenyList;
LABEL_5:
    a5 = [(__objc2_class *)v9 instanceWithParameters:v8 error:a5];
    goto LABEL_6;
  }

  if ([@"bloom" isEqual:v7])
  {
    v9 = FedStatsCategoricalTypeBloomFilter;
    goto LABEL_5;
  }

  if (a5)
    v11 = {;
    *a5 = [FedStatsError errorWithCode:900 description:v11];

    a5 = 0;
  }

LABEL_6:

  return a5;
}

+ (id)forVariant:(id)a3 assetNamesInParameters:(id)a4 usingFieldValues:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([@"denyList" isEqual:v7])
  {
    v10 = FedStatsCategoricalTypeDenyList;
    v19 = MEMORY[0x277CBEBF8];
    v11 = &v19;
    v12 = &v19;
LABEL_5:
    v15 = [(__objc2_class *)v10 mutateParameters:v8 usingFieldValues:v9 assetURLs:0 requiredFields:0 assetNames:v12 error:0, v18, v19];
    v16 = *v11;
    v14 = v16;
    goto LABEL_7;
  }

  v13 = [@"bloom" isEqual:v7];
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

+ (id)forVariant:(id)a3 requiredFieldsInParameters:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([@"denyList" isEqual:v5])
  {
    v7 = FedStatsCategoricalTypeDenyList;
    v16 = MEMORY[0x277CBEBF8];
    v8 = &v16;
    v9 = &v16;
LABEL_5:
    v12 = [(__objc2_class *)v7 mutateParameters:v6 usingFieldValues:0 assetURLs:0 requiredFields:v9 assetNames:0 error:0, v15, v16];
    v13 = *v8;
    v11 = v13;
    goto LABEL_7;
  }

  v10 = [@"bloom" isEqual:v5];
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

+ (id)forVariant:(id)a3 mutateParameters:(id)a4 usingFieldValues:(id)a5 assetURLs:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([@"denyList" isEqual:v11])
  {
    v15 = FedStatsCategoricalTypeDenyList;
LABEL_5:
    a7 = [(__objc2_class *)v15 mutateParameters:v12 usingFieldValues:v13 assetURLs:v14 requiredFields:0 assetNames:0 error:a7];
    goto LABEL_6;
  }

  if ([@"bloom" isEqual:v11])
  {
    v15 = FedStatsCategoricalTypeBloomFilter;
    goto LABEL_5;
  }

  if (a7)
    v17 = {;
    *a7 = [FedStatsError errorWithCode:900 description:v17];

    a7 = 0;
  }

LABEL_6:

  return a7;
}

@end