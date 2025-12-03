@interface UITraitCollection(ForCoreChatController)
- (BOOL)ck_chatItemLayoutNeedsInvalidationForPreviousTraitCollection:()ForCoreChatController;
@end

@implementation UITraitCollection(ForCoreChatController)

- (BOOL)ck_chatItemLayoutNeedsInvalidationForPreviousTraitCollection:()ForCoreChatController
{
  v4 = a3;
  if (([self hasDifferentColorAppearanceComparedToTraitCollection:v4] & 1) == 0 && (v5 = objc_msgSend(self, "isTranscriptBackgroundActive"), v5 == objc_msgSend(v4, "isTranscriptBackgroundActive")))
  {
    if ([self userInterfaceStyle] == 1)
    {
      v6 = 0;
    }

    else
    {
      userInterfaceLevel = [self userInterfaceLevel];
      v6 = userInterfaceLevel != [v4 userInterfaceLevel];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end