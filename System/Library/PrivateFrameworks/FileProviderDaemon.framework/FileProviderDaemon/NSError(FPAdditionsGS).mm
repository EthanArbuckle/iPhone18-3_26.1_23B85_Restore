@interface NSError(FPAdditionsGS)
- (BOOL)fp_isGSErrorWithCode:()FPAdditionsGS;
@end

@implementation NSError(FPAdditionsGS)

- (BOOL)fp_isGSErrorWithCode:()FPAdditionsGS
{
  v5 = *MEMORY[0x1E69A07C8];
  v6 = [a1 domain];
  if ([v5 isEqualToString:v6])
  {
    v7 = [a1 code] == a3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end