@interface NSError(FPAdditionsGS)
- (BOOL)fp_isGSErrorWithCode:()FPAdditionsGS;
@end

@implementation NSError(FPAdditionsGS)

- (BOOL)fp_isGSErrorWithCode:()FPAdditionsGS
{
  v5 = *MEMORY[0x1E69A07C8];
  domain = [self domain];
  if ([v5 isEqualToString:domain])
  {
    v7 = [self code] == a3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end