@interface UIApplication(MobileSafariFrameworkExtras)
- (uint64_t)safari_currentKeyboardInputIsRTL;
- (uint64_t)sf_currentKeyboardModifierFlags;
@end

@implementation UIApplication(MobileSafariFrameworkExtras)

- (uint64_t)safari_currentKeyboardInputIsRTL
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__UIApplication_MobileSafariFrameworkExtras__safari_currentKeyboardInputIsRTL__block_invoke;
  block[3] = &unk_1E721B400;
  block[4] = self;
  v3 = defaultCenter;
  v9 = v3;
  if (safari_currentKeyboardInputIsRTL_onceToken != -1)
  {
    dispatch_once(&safari_currentKeyboardInputIsRTL_onceToken, block);
  }

  if ((safari_currentKeyboardInputIsRTL_hasValidCache & 1) == 0)
  {
    if (safari_currentKeyboardInputIsRTL_useSafariAppDirectionality)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __78__UIApplication_MobileSafariFrameworkExtras__safari_currentKeyboardInputIsRTL__block_invoke_4;
      v6[3] = &unk_1E721B400;
      v6[4] = self;
      v7 = v3;
      dispatch_async(MEMORY[0x1E69E96A0], v6);
    }

    else
    {
      safari_currentKeyboardInputIsRTL_currentKeyboardUsesRTL = safari_currentKeyboardInputIsRTL_safariAppIsRTL;
    }
  }

  v4 = safari_currentKeyboardInputIsRTL_currentKeyboardUsesRTL;

  return v4;
}

- (uint64_t)sf_currentKeyboardModifierFlags
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [self currentKeyboardModifierFlags];
}

@end