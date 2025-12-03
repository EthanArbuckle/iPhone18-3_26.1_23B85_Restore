@interface _DPErrorUtilities
+ (BOOL)isCoreDataFatalError:(id)error;
@end

@implementation _DPErrorUtilities

+ (BOOL)isCoreDataFatalError:(id)error
{
  userInfo = [error userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x277CBE2C8]];

  LOBYTE(userInfo) = [v4 isEqualToValue:&unk_283975FE8];
  return userInfo;
}

@end