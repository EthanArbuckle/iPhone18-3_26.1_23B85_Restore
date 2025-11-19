@interface UIResponder
@end

@implementation UIResponder

uint64_t __58__UIResponder__NTKResponderFix___ntk_becomeFirstResponder__block_invoke(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 32) becomeFirstResponder];
    *(*(*(v1 + 40) + 8) + 24) = result;
  }

  return result;
}

@end