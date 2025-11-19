@interface FedStatsPluginError
+ (id)errorWithCode:(int64_t)a3 description:(id)a4;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5;
+ (id)errorWithCode:(int64_t)a3 underlyingErrors:(id)a4 description:(id)a5;
@end

@implementation FedStatsPluginError

+ (id)errorWithCode:(int64_t)a3 description:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = a4;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = [v5 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8 = objc_alloc(MEMORY[0x277CCA9B8]);

  v9 = [v8 initWithDomain:@"com.apple.FedStats" code:a3 userInfo:v7];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = *MEMORY[0x277CCA7E8];
    v18[0] = *MEMORY[0x277CCA450];
    v18[1] = v7;
    v19[0] = a5;
    v19[1] = a4;
    v8 = MEMORY[0x277CBEAC0];
    v9 = a5;
    v10 = a4;
    v11 = [v8 dictionaryWithObjects:v19 forKeys:v18 count:2];
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);

    v13 = [v12 initWithDomain:@"com.apple.FedStats" code:a3 userInfo:v11];
  }

  else
  {
    v14 = a5;
    v15 = 0;
    v13 = [FedStatsPluginError errorWithCode:a3 description:v14];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)errorWithCode:(int64_t)a3 underlyingErrors:(id)a4 description:(id)a5
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = *MEMORY[0x277CCA578];
    v18[0] = *MEMORY[0x277CCA450];
    v18[1] = v7;
    v19[0] = a5;
    v19[1] = a4;
    v8 = MEMORY[0x277CBEAC0];
    v9 = a5;
    v10 = a4;
    v11 = [v8 dictionaryWithObjects:v19 forKeys:v18 count:2];
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);

    v13 = [v12 initWithDomain:@"com.apple.FedStats" code:a3 userInfo:v11];
  }

  else
  {
    v14 = a5;
    v15 = 0;
    v13 = [FedStatsPluginError errorWithCode:a3 description:v14];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

@end