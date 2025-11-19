@interface _DPErrorUtilities
+ (BOOL)isCoreDataFatalError:(id)a3;
@end

@implementation _DPErrorUtilities

+ (BOOL)isCoreDataFatalError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:*MEMORY[0x277CBE2C8]];

  LOBYTE(v3) = [v4 isEqualToValue:&unk_283975FE8];
  return v3;
}

@end