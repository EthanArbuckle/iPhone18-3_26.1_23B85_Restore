@interface FedStatsCategoricalTypeTokenizerFactory
+ (Class)stringToTokenizerClass:(id)a3 error:(id *)a4;
+ (id)forVariant:(id)a3 assetNamesInParameters:(id)a4 usingFieldValues:(id)a5;
+ (id)forVariant:(id)a3 mutateParameters:(id)a4 usingFieldValues:(id)a5 assetURLs:(id)a6 error:(id *)a7;
+ (id)forVariant:(id)a3 requiredFieldsInParameters:(id)a4;
+ (id)tokenizerForVariant:(id)a3 parameters:(id)a4 error:(id *)a5;
@end

@implementation FedStatsCategoricalTypeTokenizerFactory

+ (Class)stringToTokenizerClass:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v10 = @"character";
  v15 = objc_opt_class();
  v11 = @"delimited";
  v16 = objc_opt_class();
  v12 = @"url";
  v17 = objc_opt_class();
  v13 = @"ngram";
  v18 = objc_opt_class();
  v14 = @"charactersFromUnknownSample";
  v19 = objc_opt_class();
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v10 count:5];
  if ([v6 objectForKeyedSubscript:v5])
  {
    a4 = [v6 objectForKeyedSubscript:v5];
  }

  else if (a4)
    v7 = {;
    *a4 = [FedStatsError errorWithCode:900 description:v7];

    a4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return a4;
}

+ (id)tokenizerForVariant:(id)a3 parameters:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [objc_msgSend(a1 stringToTokenizerClass:a3 error:{a5), "instanceWithParameters:error:", v8, a5}];

  return v9;
}

+ (id)forVariant:(id)a3 mutateParameters:(id)a4 usingFieldValues:(id)a5 assetURLs:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [objc_msgSend(a1 stringToTokenizerClass:a3 error:{a7), "mutateParameters:usingFieldValues:assetURLs:requiredFields:assetNames:error:", v14, v13, v12, 0, 0, a7}];

  return v15;
}

+ (id)forVariant:(id)a3 assetNamesInParameters:(id)a4 usingFieldValues:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a1 stringToTokenizerClass:a3 error:0];
  v15 = MEMORY[0x277CBEBF8];
  v11 = [v10 mutateParameters:v8 usingFieldValues:v9 assetURLs:0 requiredFields:0 assetNames:&v15 error:0];
  v12 = v15;
  v13 = v15;

  return v12;
}

+ (id)forVariant:(id)a3 requiredFieldsInParameters:(id)a4
{
  v6 = a4;
  v7 = [a1 stringToTokenizerClass:a3 error:0];
  v12 = MEMORY[0x277CBEBF8];
  v8 = [v7 mutateParameters:v6 usingFieldValues:0 assetURLs:0 requiredFields:&v12 assetNames:0 error:0];
  v9 = v12;
  v10 = v12;

  return v9;
}

@end