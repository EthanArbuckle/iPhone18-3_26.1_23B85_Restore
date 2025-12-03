@interface UIFontDescriptor(Helper)
- (id)ck_fontDescriptorByAddingSymbolicTrait:()Helper;
- (id)ck_fontDescriptorByRemovingSymbolicTrait:()Helper;
- (id)ck_fontDescriptorBySettingBoldEnabled:()Helper;
- (id)ck_fontDescriptorBySettingItalicEnabled:()Helper;
@end

@implementation UIFontDescriptor(Helper)

- (id)ck_fontDescriptorByRemovingSymbolicTrait:()Helper
{
  if (([self symbolicTraits] & a3) != 0)
  {
    selfCopy = [self fontDescriptorWithSymbolicTraits:{objc_msgSend(self, "symbolicTraits") & ~a3}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)ck_fontDescriptorByAddingSymbolicTrait:()Helper
{
  if (([self symbolicTraits] & a3) != 0)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self fontDescriptorWithSymbolicTraits:{objc_msgSend(self, "symbolicTraits") | a3}];
  }

  return selfCopy;
}

- (id)ck_fontDescriptorBySettingBoldEnabled:()Helper
{
  if (a3)
  {
    [self ck_fontDescriptorByAddingSymbolicTrait:2];
  }

  else
  {
    [self ck_fontDescriptorByRemovingSymbolicTrait:2];
  }
  v3 = ;

  return v3;
}

- (id)ck_fontDescriptorBySettingItalicEnabled:()Helper
{
  if (a3)
  {
    [self ck_fontDescriptorByAddingSymbolicTrait:1];
  }

  else
  {
    [self ck_fontDescriptorByRemovingSymbolicTrait:1];
  }
  v3 = ;

  return v3;
}

@end