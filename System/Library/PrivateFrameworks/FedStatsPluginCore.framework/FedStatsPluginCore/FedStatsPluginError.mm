@interface FedStatsPluginError
+ (id)errorWithCode:(int64_t)code description:(id)description;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
+ (id)errorWithCode:(int64_t)code underlyingErrors:(id)errors description:(id)description;
@end

@implementation FedStatsPluginError

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = description;
  v5 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v7 = [v5 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8 = objc_alloc(MEMORY[0x277CCA9B8]);

  v9 = [v8 initWithDomain:@"com.apple.FedStats" code:code userInfo:v7];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v7 = *MEMORY[0x277CCA7E8];
    v18[0] = *MEMORY[0x277CCA450];
    v18[1] = v7;
    v19[0] = description;
    v19[1] = error;
    v8 = MEMORY[0x277CBEAC0];
    descriptionCopy = description;
    errorCopy = error;
    v11 = [v8 dictionaryWithObjects:v19 forKeys:v18 count:2];
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);

    v13 = [v12 initWithDomain:@"com.apple.FedStats" code:code userInfo:v11];
  }

  else
  {
    descriptionCopy2 = description;
    v15 = 0;
    v13 = [FedStatsPluginError errorWithCode:code description:descriptionCopy2];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)errorWithCode:(int64_t)code underlyingErrors:(id)errors description:(id)description
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (errors)
  {
    v7 = *MEMORY[0x277CCA578];
    v18[0] = *MEMORY[0x277CCA450];
    v18[1] = v7;
    v19[0] = description;
    v19[1] = errors;
    v8 = MEMORY[0x277CBEAC0];
    descriptionCopy = description;
    errorsCopy = errors;
    v11 = [v8 dictionaryWithObjects:v19 forKeys:v18 count:2];
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);

    v13 = [v12 initWithDomain:@"com.apple.FedStats" code:code userInfo:v11];
  }

  else
  {
    descriptionCopy2 = description;
    v15 = 0;
    v13 = [FedStatsPluginError errorWithCode:code description:descriptionCopy2];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

@end