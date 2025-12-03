@interface NTKSFCompactFontLoader
+ (id)_loadFontDescriptorForFontWithName:(id)name;
+ (id)sfCompactNumericFontDescriptor;
+ (id)sfCompactNumericRoundedFontDescriptor;
+ (id)sfCompactNumericSoftFontDescriptor;
@end

@implementation NTKSFCompactFontLoader

+ (id)sfCompactNumericFontDescriptor
{
  if (sfCompactNumericFontDescriptor_onceToken != -1)
  {
    +[NTKSFCompactFontLoader sfCompactNumericFontDescriptor];
  }

  v3 = sfCompactNumericFontDescriptor_descriptor;

  return v3;
}

void __56__NTKSFCompactFontLoader_sfCompactNumericFontDescriptor__block_invoke()
{
  v0 = [NTKSFCompactFontLoader _loadFontDescriptorForFontWithName:@"SFCompactNumeric"];
  v1 = sfCompactNumericFontDescriptor_descriptor;
  sfCompactNumericFontDescriptor_descriptor = v0;
}

+ (id)sfCompactNumericSoftFontDescriptor
{
  if (sfCompactNumericSoftFontDescriptor_onceToken != -1)
  {
    +[NTKSFCompactFontLoader sfCompactNumericSoftFontDescriptor];
  }

  v3 = sfCompactNumericSoftFontDescriptor_descriptor;

  return v3;
}

void __60__NTKSFCompactFontLoader_sfCompactNumericSoftFontDescriptor__block_invoke()
{
  v0 = [NTKSFCompactFontLoader _loadFontDescriptorForFontWithName:@"SFCompactSoft"];
  v1 = sfCompactNumericSoftFontDescriptor_descriptor;
  sfCompactNumericSoftFontDescriptor_descriptor = v0;
}

+ (id)sfCompactNumericRoundedFontDescriptor
{
  if (sfCompactNumericRoundedFontDescriptor_onceToken != -1)
  {
    +[NTKSFCompactFontLoader sfCompactNumericRoundedFontDescriptor];
  }

  v3 = sfCompactNumericRoundedFontDescriptor_descriptor;

  return v3;
}

void __63__NTKSFCompactFontLoader_sfCompactNumericRoundedFontDescriptor__block_invoke()
{
  v0 = [NTKSFCompactFontLoader _loadFontDescriptorForFontWithName:@"SFCompactRoundedNumeric"];
  v1 = sfCompactNumericRoundedFontDescriptor_descriptor;
  sfCompactNumericRoundedFontDescriptor_descriptor = v0;
}

+ (id)_loadFontDescriptorForFontWithName:(id)name
{
  v3 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:nameCopy withExtension:@"ttf"];

  if (v6)
  {
    v7 = v6;
    CTFontManagerRegisterFontsForURL(v7, kCTFontManagerScopeProcess, 0);
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7];
    FontDescriptorFromData = CTFontManagerCreateFontDescriptorFromData(v8);
    CFRelease(v8);
    CFRelease(v7);
  }

  else
  {
    FontDescriptorFromData = [MEMORY[0x277D74310] fontDescriptorWithName:@"SF Compact" size:12.0];
  }

  return FontDescriptorFromData;
}

@end