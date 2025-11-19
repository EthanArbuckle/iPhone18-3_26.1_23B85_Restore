@interface UIFocusUserDefaults
@end

@implementation UIFocusUserDefaults

uint64_t ___UIFocusUserDefaults_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.FocusEngine"];
  v1 = _MergedGlobals_5;
  _MergedGlobals_5 = v0;

  result = os_variant_has_internal_diagnostics();
  if (result)
  {
    v3 = _MergedGlobals_5;
    v4 = *MEMORY[0x277CCA018];

    return [v3 addSuiteNamed:v4];
  }

  return result;
}

@end