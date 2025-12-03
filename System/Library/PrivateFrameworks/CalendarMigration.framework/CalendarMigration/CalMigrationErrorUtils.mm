@interface CalMigrationErrorUtils
+ (id)errorFromException:(id)exception;
@end

@implementation CalMigrationErrorUtils

+ (id)errorFromException:(id)exception
{
  v16[5] = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  v15[0] = @"ExceptionName";
  name = [exceptionCopy name];
  v16[0] = name;
  v15[1] = @"ExceptionReason";
  reason = [exceptionCopy reason];
  null = reason;
  if (!reason)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v16[1] = null;
  v15[2] = @"ExceptionCallStackReturnAddresses";
  callStackReturnAddresses = [exceptionCopy callStackReturnAddresses];
  v16[2] = callStackReturnAddresses;
  v15[3] = @"ExceptionCallStackSymbols";
  callStackSymbols = [exceptionCopy callStackSymbols];
  v16[3] = callStackSymbols;
  v15[4] = @"ExceptionUserInfo";
  userInfo = [exceptionCopy userInfo];
  null2 = userInfo;
  if (!userInfo)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v16[4] = null2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
  if (!userInfo)
  {
  }

  if (!reason)
  {
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.calendar.MigrationErrors" code:2 userInfo:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end