@interface FedStatsCategoricalTypeTokenizerFactory
+ (Class)stringToTokenizerClass:(id)class error:(id *)error;
+ (id)forVariant:(id)variant assetNamesInParameters:(id)parameters usingFieldValues:(id)values;
+ (id)forVariant:(id)variant mutateParameters:(id)parameters usingFieldValues:(id)values assetURLs:(id)ls error:(id *)error;
+ (id)forVariant:(id)variant requiredFieldsInParameters:(id)parameters;
+ (id)tokenizerForVariant:(id)variant parameters:(id)parameters error:(id *)error;
@end

@implementation FedStatsCategoricalTypeTokenizerFactory

+ (Class)stringToTokenizerClass:(id)class error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  classCopy = class;
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
  if ([v6 objectForKeyedSubscript:classCopy])
  {
    error = [v6 objectForKeyedSubscript:classCopy];
  }

  else if (error)
    v7 = {;
    *error = [FedStatsError errorWithCode:900 description:v7];

    error = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return error;
}

+ (id)tokenizerForVariant:(id)variant parameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v9 = [objc_msgSend(self stringToTokenizerClass:variant error:{error), "instanceWithParameters:error:", parametersCopy, error}];

  return v9;
}

+ (id)forVariant:(id)variant mutateParameters:(id)parameters usingFieldValues:(id)values assetURLs:(id)ls error:(id *)error
{
  lsCopy = ls;
  valuesCopy = values;
  parametersCopy = parameters;
  v15 = [objc_msgSend(self stringToTokenizerClass:variant error:{error), "mutateParameters:usingFieldValues:assetURLs:requiredFields:assetNames:error:", parametersCopy, valuesCopy, lsCopy, 0, 0, error}];

  return v15;
}

+ (id)forVariant:(id)variant assetNamesInParameters:(id)parameters usingFieldValues:(id)values
{
  parametersCopy = parameters;
  valuesCopy = values;
  v10 = [self stringToTokenizerClass:variant error:0];
  v15 = MEMORY[0x277CBEBF8];
  v11 = [v10 mutateParameters:parametersCopy usingFieldValues:valuesCopy assetURLs:0 requiredFields:0 assetNames:&v15 error:0];
  v12 = v15;
  v13 = v15;

  return v12;
}

+ (id)forVariant:(id)variant requiredFieldsInParameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [self stringToTokenizerClass:variant error:0];
  v12 = MEMORY[0x277CBEBF8];
  v8 = [v7 mutateParameters:parametersCopy usingFieldValues:0 assetURLs:0 requiredFields:&v12 assetNames:0 error:0];
  v9 = v12;
  v10 = v12;

  return v9;
}

@end