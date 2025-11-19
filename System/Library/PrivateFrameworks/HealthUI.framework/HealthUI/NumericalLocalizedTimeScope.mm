@interface NumericalLocalizedTimeScope
@end

@implementation NumericalLocalizedTimeScope

uint64_t ___NumericalLocalizedTimeScope_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _NumericalLocalizedTimeScope_numericalTimeScopeFormatter;
  _NumericalLocalizedTimeScope_numericalTimeScopeFormatter = v0;

  v2 = _NumericalLocalizedTimeScope_numericalTimeScopeFormatter;

  return [v2 setNumberStyle:0];
}

@end