@interface UIFontDescriptor(Helper)
- (id)ck_fontDescriptorByAddingSymbolicTrait:()Helper;
- (id)ck_fontDescriptorByRemovingSymbolicTrait:()Helper;
- (id)ck_fontDescriptorBySettingBoldEnabled:()Helper;
- (id)ck_fontDescriptorBySettingItalicEnabled:()Helper;
@end

@implementation UIFontDescriptor(Helper)

- (id)ck_fontDescriptorByRemovingSymbolicTrait:()Helper
{
  if (([a1 symbolicTraits] & a3) != 0)
  {
    v5 = [a1 fontDescriptorWithSymbolicTraits:{objc_msgSend(a1, "symbolicTraits") & ~a3}];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (id)ck_fontDescriptorByAddingSymbolicTrait:()Helper
{
  if (([a1 symbolicTraits] & a3) != 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = [a1 fontDescriptorWithSymbolicTraits:{objc_msgSend(a1, "symbolicTraits") | a3}];
  }

  return v5;
}

- (id)ck_fontDescriptorBySettingBoldEnabled:()Helper
{
  if (a3)
  {
    [a1 ck_fontDescriptorByAddingSymbolicTrait:2];
  }

  else
  {
    [a1 ck_fontDescriptorByRemovingSymbolicTrait:2];
  }
  v3 = ;

  return v3;
}

- (id)ck_fontDescriptorBySettingItalicEnabled:()Helper
{
  if (a3)
  {
    [a1 ck_fontDescriptorByAddingSymbolicTrait:1];
  }

  else
  {
    [a1 ck_fontDescriptorByRemovingSymbolicTrait:1];
  }
  v3 = ;

  return v3;
}

@end