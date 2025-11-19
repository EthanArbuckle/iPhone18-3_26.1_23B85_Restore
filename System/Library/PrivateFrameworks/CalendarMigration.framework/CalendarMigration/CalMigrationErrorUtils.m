@interface CalMigrationErrorUtils
+ (id)errorFromException:(id)a3;
@end

@implementation CalMigrationErrorUtils

+ (id)errorFromException:(id)a3
{
  v16[5] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15[0] = @"ExceptionName";
  v4 = [v3 name];
  v16[0] = v4;
  v15[1] = @"ExceptionReason";
  v5 = [v3 reason];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v16[1] = v6;
  v15[2] = @"ExceptionCallStackReturnAddresses";
  v7 = [v3 callStackReturnAddresses];
  v16[2] = v7;
  v15[3] = @"ExceptionCallStackSymbols";
  v8 = [v3 callStackSymbols];
  v16[3] = v8;
  v15[4] = @"ExceptionUserInfo";
  v9 = [v3 userInfo];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v16[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
  if (!v9)
  {
  }

  if (!v5)
  {
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.calendar.MigrationErrors" code:2 userInfo:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end