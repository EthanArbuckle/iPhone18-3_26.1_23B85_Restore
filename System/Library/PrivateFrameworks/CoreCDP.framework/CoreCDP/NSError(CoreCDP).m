@interface NSError(CoreCDP)
+ (id)cdp_errorWithCode:()CoreCDP underlyingError:;
- (BOOL)cdp_isCDPErrorWithCode:()CoreCDP;
@end

@implementation NSError(CoreCDP)

+ (id)cdp_errorWithCode:()CoreCDP underlyingError:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:a3 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)cdp_isCDPErrorWithCode:()CoreCDP
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:@"CDPStateError"])
  {
    v6 = [a1 code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end