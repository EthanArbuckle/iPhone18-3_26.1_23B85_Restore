@interface LACPolicyUtilities
+ (BOOL)isDTOPolicy:(int64_t)a3 options:(id)a4;
@end

@implementation LACPolicyUtilities

+ (BOOL)isDTOPolicy:(int64_t)a3 options:(id)a4
{
  v5 = a4;
  if (a3 == 1025 || a3 == 1026 || a3 == 1028)
  {
    LOBYTE(a3) = 1;
  }

  else if (a3)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:1068];
    v9 = [v5 objectForKeyedSubscript:v8];
    LOBYTE(a3) = [v9 BOOLValue];
  }

  return a3;
}

@end