@interface UITraitCollection(ForCoreChatController)
- (BOOL)ck_chatItemLayoutNeedsInvalidationForPreviousTraitCollection:()ForCoreChatController;
@end

@implementation UITraitCollection(ForCoreChatController)

- (BOOL)ck_chatItemLayoutNeedsInvalidationForPreviousTraitCollection:()ForCoreChatController
{
  v4 = a3;
  if (([a1 hasDifferentColorAppearanceComparedToTraitCollection:v4] & 1) == 0 && (v5 = objc_msgSend(a1, "isTranscriptBackgroundActive"), v5 == objc_msgSend(v4, "isTranscriptBackgroundActive")))
  {
    if ([a1 userInterfaceStyle] == 1)
    {
      v6 = 0;
    }

    else
    {
      v8 = [a1 userInterfaceLevel];
      v6 = v8 != [v4 userInterfaceLevel];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end