@interface NSUserDefaults(SendAnimation)
- (uint64_t)ck_isSlowSendAnimationEnabled;
- (uint64_t)ck_isUsingSpecialGlassDuringSendAnimationEnabled;
- (uint64_t)ck_isVerySlowSendAnimationEnabled;
- (uint64_t)ck_isVeryVerySlowSendAnimationEnabled;
@end

@implementation NSUserDefaults(SendAnimation)

- (uint64_t)ck_isSlowSendAnimationEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__NSUserDefaults_SendAnimation__ck_isSlowSendAnimationEnabled__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (ck_isSlowSendAnimationEnabled_onceToken != -1)
  {
    dispatch_once(&ck_isSlowSendAnimationEnabled_onceToken, block);
  }

  return ck_isSlowSendAnimationEnabled_result;
}

- (uint64_t)ck_isVerySlowSendAnimationEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__NSUserDefaults_SendAnimation__ck_isVerySlowSendAnimationEnabled__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (ck_isVerySlowSendAnimationEnabled_onceToken != -1)
  {
    dispatch_once(&ck_isVerySlowSendAnimationEnabled_onceToken, block);
  }

  return ck_isVerySlowSendAnimationEnabled_result;
}

- (uint64_t)ck_isVeryVerySlowSendAnimationEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__NSUserDefaults_SendAnimation__ck_isVeryVerySlowSendAnimationEnabled__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (ck_isVeryVerySlowSendAnimationEnabled_onceToken != -1)
  {
    dispatch_once(&ck_isVeryVerySlowSendAnimationEnabled_onceToken, block);
  }

  return ck_isVeryVerySlowSendAnimationEnabled_result;
}

- (uint64_t)ck_isUsingSpecialGlassDuringSendAnimationEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__NSUserDefaults_SendAnimation__ck_isUsingSpecialGlassDuringSendAnimationEnabled__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (ck_isUsingSpecialGlassDuringSendAnimationEnabled_onceToken != -1)
  {
    dispatch_once(&ck_isUsingSpecialGlassDuringSendAnimationEnabled_onceToken, block);
  }

  return ck_isUsingSpecialGlassDuringSendAnimationEnabled_result;
}

@end