@interface NSError(HomeKitCoreData)
+ (id)hmd_validationErrorWithDescription:()HomeKitCoreData;
+ (id)hmd_validationErrorWithDescription:()HomeKitCoreData managedObject:attributeName:;
@end

@implementation NSError(HomeKitCoreData)

+ (id)hmd_validationErrorWithDescription:()HomeKitCoreData managedObject:attributeName:
{
  v17[3] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBE320];
  v16[0] = *MEMORY[0x277CCA450];
  v16[1] = v7;
  v17[0] = a3;
  v17[1] = a4;
  v16[2] = *MEMORY[0x277CBE318];
  v17[2] = a5;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v17 forKeys:v16 count:3];
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:1550 userInfo:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)hmd_validationErrorWithDescription:()HomeKitCoreData
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA050];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v3 errorWithDomain:v4 code:1550 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end