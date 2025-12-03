@interface LACPolicyUtilities
+ (BOOL)isDTOPolicy:(int64_t)policy options:(id)options;
@end

@implementation LACPolicyUtilities

+ (BOOL)isDTOPolicy:(int64_t)policy options:(id)options
{
  optionsCopy = options;
  if (policy == 1025 || policy == 1026 || policy == 1028)
  {
    LOBYTE(policy) = 1;
  }

  else if (policy)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:1068];
    v9 = [optionsCopy objectForKeyedSubscript:v8];
    LOBYTE(policy) = [v9 BOOLValue];
  }

  return policy;
}

@end