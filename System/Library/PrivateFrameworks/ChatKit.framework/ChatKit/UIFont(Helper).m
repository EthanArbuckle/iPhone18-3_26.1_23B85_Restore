@interface UIFont(Helper)
+ (CTFontRef)ck_lastResortFontOfSize:()Helper;
+ (id)ck_boldBalloonFont;
+ (id)ck_italicBalloonFont;
- (id)ck_fontByAddingSymbolicTrait:()Helper;
- (id)ck_fontByRemovingSymbolicTrait:()Helper;
- (id)ck_fontBySettingBoldEnabled:()Helper;
- (id)ck_fontBySettingItalicEnabled:()Helper;
- (uint64_t)ck_hasBoldTrait;
- (uint64_t)ck_hasItalicTrait;
- (uint64_t)ck_lastResortFont;
@end

@implementation UIFont(Helper)

+ (id)ck_italicBalloonFont
{
  v0 = +[CKUIBehavior sharedBehaviors];
  v1 = [v0 balloonTextFont];
  v2 = [v1 ck_fontByAddingSymbolicTrait:1];

  return v2;
}

+ (id)ck_boldBalloonFont
{
  v0 = +[CKUIBehavior sharedBehaviors];
  v1 = [v0 balloonTextFont];
  v2 = [v1 ck_fontByAddingSymbolicTrait:2];

  return v2;
}

- (id)ck_fontByAddingSymbolicTrait:()Helper
{
  v4 = [a1 fontDescriptor];
  v5 = [v4 ck_fontDescriptorByAddingSymbolicTrait:a3];

  v6 = [objc_opt_class() fontWithDescriptor:v5 size:0.0];

  return v6;
}

- (id)ck_fontByRemovingSymbolicTrait:()Helper
{
  v4 = [a1 fontDescriptor];
  v5 = [v4 ck_fontDescriptorByRemovingSymbolicTrait:a3];

  v6 = [objc_opt_class() fontWithDescriptor:v5 size:0.0];

  return v6;
}

- (id)ck_fontBySettingBoldEnabled:()Helper
{
  v4 = [a1 fontDescriptor];
  v5 = [v4 ck_fontDescriptorBySettingBoldEnabled:a3];

  v6 = [objc_opt_class() fontWithDescriptor:v5 size:0.0];

  return v6;
}

- (id)ck_fontBySettingItalicEnabled:()Helper
{
  v4 = [a1 fontDescriptor];
  v5 = [v4 ck_fontDescriptorBySettingItalicEnabled:a3];

  v6 = [objc_opt_class() fontWithDescriptor:v5 size:0.0];

  return v6;
}

- (uint64_t)ck_hasItalicTrait
{
  v2 = [a1 fontDescriptor];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 fontDescriptor];
  v4 = [v3 ck_hasItalicTrait];

  return v4;
}

- (uint64_t)ck_hasBoldTrait
{
  v2 = [a1 fontDescriptor];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 fontDescriptor];
  v4 = [v3 ck_hasBoldTrait];

  return v4;
}

- (uint64_t)ck_lastResortFont
{
  [a1 pointSize];
  v1 = MEMORY[0x1E69DB878];

  return [v1 ck_lastResortFontOfSize:?];
}

+ (CTFontRef)ck_lastResortFontOfSize:()Helper
{
  v1 = CTFontCreateWithNameAndOptions(@".LastResort", a1, 0, 0x20000uLL);

  return v1;
}

@end