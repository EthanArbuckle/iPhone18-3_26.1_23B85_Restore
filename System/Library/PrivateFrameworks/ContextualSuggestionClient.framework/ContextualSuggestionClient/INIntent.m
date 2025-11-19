@interface INIntent
@end

@implementation INIntent

void __49__INIntent_IntentUtilities__atx_nonNilParameters__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObject:v7];
    }
  }
}

uint64_t __54__INIntent_IntentUtilities__atx_parameterValueForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"identifier"];
  v3 = [v2 isEqualToString:@"navigationLink"];

  return v3;
}

@end