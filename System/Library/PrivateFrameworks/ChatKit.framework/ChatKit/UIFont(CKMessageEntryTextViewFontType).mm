@interface UIFont(CKMessageEntryTextViewFontType)
+ (id)ck_fontWithMessageEntryTextViewFontType:()CKMessageEntryTextViewFontType;
@end

@implementation UIFont(CKMessageEntryTextViewFontType)

+ (id)ck_fontWithMessageEntryTextViewFontType:()CKMessageEntryTextViewFontType
{
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = v5;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      multipleBigEmojiFont = [v5 multipleBigEmojiFont];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      multipleBigEmojiFont = [v5 singleBigAssetFont];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    multipleBigEmojiFont = [v5 singleBigEmojiFont];
  }

  else
  {
    multipleBigEmojiFont = [v5 balloonTextFont];
  }

  v3 = multipleBigEmojiFont;
LABEL_11:

  return v3;
}

@end