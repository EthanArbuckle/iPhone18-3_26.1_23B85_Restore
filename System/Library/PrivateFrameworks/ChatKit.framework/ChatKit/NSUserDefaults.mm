@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __62__NSUserDefaults_SendAnimation__ck_isSlowSendAnimationEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) BOOLForKey:@"SendAnimationSlowAnimationsEnabled"];
  ck_isSlowSendAnimationEnabled_result = result;
  return result;
}

uint64_t __66__NSUserDefaults_SendAnimation__ck_isVerySlowSendAnimationEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) BOOLForKey:@"SendAnimationVerySlowAnimationsEnabled"];
  ck_isVerySlowSendAnimationEnabled_result = result;
  return result;
}

uint64_t __70__NSUserDefaults_SendAnimation__ck_isVeryVerySlowSendAnimationEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) BOOLForKey:@"SendAnimationVeryVerySlowAnimationsEnabled"];
  ck_isVeryVerySlowSendAnimationEnabled_result = result;
  return result;
}

uint64_t __81__NSUserDefaults_SendAnimation__ck_isUsingSpecialGlassDuringSendAnimationEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) BOOLForKey:@"SendAnimationSpecialGlassDuringSendEnabled"];
  ck_isUsingSpecialGlassDuringSendAnimationEnabled_result = result;
  return result;
}

@end