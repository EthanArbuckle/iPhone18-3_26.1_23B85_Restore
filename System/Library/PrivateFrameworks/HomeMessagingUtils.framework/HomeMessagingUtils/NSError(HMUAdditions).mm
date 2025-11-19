@interface NSError(HMUAdditions)
+ (id)hmu_errorWithDomain:()HMUAdditions code:description:;
@end

@implementation NSError(HMUAdditions)

+ (id)hmu_errorWithDomain:()HMUAdditions code:description:
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277CCA450];
  v16[0] = a5;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a3;
  v11 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v7 errorWithDomain:v10 code:a4 userInfo:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end