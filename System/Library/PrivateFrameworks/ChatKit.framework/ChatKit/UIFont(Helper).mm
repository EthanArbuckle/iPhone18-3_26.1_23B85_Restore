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
  balloonTextFont = [v0 balloonTextFont];
  v2 = [balloonTextFont ck_fontByAddingSymbolicTrait:1];

  return v2;
}

+ (id)ck_boldBalloonFont
{
  v0 = +[CKUIBehavior sharedBehaviors];
  balloonTextFont = [v0 balloonTextFont];
  v2 = [balloonTextFont ck_fontByAddingSymbolicTrait:2];

  return v2;
}

- (id)ck_fontByAddingSymbolicTrait:()Helper
{
  fontDescriptor = [self fontDescriptor];
  v5 = [fontDescriptor ck_fontDescriptorByAddingSymbolicTrait:a3];

  v6 = [objc_opt_class() fontWithDescriptor:v5 size:0.0];

  return v6;
}

- (id)ck_fontByRemovingSymbolicTrait:()Helper
{
  fontDescriptor = [self fontDescriptor];
  v5 = [fontDescriptor ck_fontDescriptorByRemovingSymbolicTrait:a3];

  v6 = [objc_opt_class() fontWithDescriptor:v5 size:0.0];

  return v6;
}

- (id)ck_fontBySettingBoldEnabled:()Helper
{
  fontDescriptor = [self fontDescriptor];
  v5 = [fontDescriptor ck_fontDescriptorBySettingBoldEnabled:a3];

  v6 = [objc_opt_class() fontWithDescriptor:v5 size:0.0];

  return v6;
}

- (id)ck_fontBySettingItalicEnabled:()Helper
{
  fontDescriptor = [self fontDescriptor];
  v5 = [fontDescriptor ck_fontDescriptorBySettingItalicEnabled:a3];

  v6 = [objc_opt_class() fontWithDescriptor:v5 size:0.0];

  return v6;
}

- (uint64_t)ck_hasItalicTrait
{
  fontDescriptor = [self fontDescriptor];

  if (!fontDescriptor)
  {
    return 0;
  }

  fontDescriptor2 = [self fontDescriptor];
  ck_hasItalicTrait = [fontDescriptor2 ck_hasItalicTrait];

  return ck_hasItalicTrait;
}

- (uint64_t)ck_hasBoldTrait
{
  fontDescriptor = [self fontDescriptor];

  if (!fontDescriptor)
  {
    return 0;
  }

  fontDescriptor2 = [self fontDescriptor];
  ck_hasBoldTrait = [fontDescriptor2 ck_hasBoldTrait];

  return ck_hasBoldTrait;
}

- (uint64_t)ck_lastResortFont
{
  [self pointSize];
  v1 = MEMORY[0x1E69DB878];

  return [v1 ck_lastResortFontOfSize:?];
}

+ (CTFontRef)ck_lastResortFontOfSize:()Helper
{
  v1 = CTFontCreateWithNameAndOptions(@".LastResort", self, 0, 0x20000uLL);

  return v1;
}

@end