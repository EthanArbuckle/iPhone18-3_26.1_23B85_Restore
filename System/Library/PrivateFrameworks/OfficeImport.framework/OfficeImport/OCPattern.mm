@interface OCPattern
+ (id)blackAndWhiteImageDataWithPatternName:(id)name;
+ (id)colorizedImageDataWithBlackAndWhiteImageData:(id)data foregroundColor:(id)color backgroundColor:(id)backgroundColor;
+ (id)presetPatternHeader;
@end

@implementation OCPattern

+ (id)presetPatternHeader
{
  v2 = +[OCPattern presetPatternHeader]::thePresetPatternHeader;
  if (!+[OCPattern presetPatternHeader]::thePresetPatternHeader)
  {
    v3 = +[TCBundleResourceManager instance];
    v4 = [v3 dataForResource:@"patternHeader" ofType:@"bmp" inPackage:@"OAPatterns" cacheResult:1];
    v5 = +[OCPattern presetPatternHeader]::thePresetPatternHeader;
    +[OCPattern presetPatternHeader]::thePresetPatternHeader = v4;

    v2 = +[OCPattern presetPatternHeader]::thePresetPatternHeader;
  }

  return v2;
}

+ (id)blackAndWhiteImageDataWithPatternName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v4 = +[TCBundleResourceManager instance];
    v5 = [v4 dataForResource:nameCopy ofType:@"bmp" inPackage:@"OAPatterns" cacheResult:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)colorizedImageDataWithBlackAndWhiteImageData:(id)data foregroundColor:(id)color backgroundColor:(id)backgroundColor
{
  dataCopy = data;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  bytes = [dataCopy bytes];
  if ([dataCopy length] >= 0x3F && *bytes == 66 && *(bytes + 1) == 77 && *(bytes + 14) == 40 && *(bytes + 26) == 1 && *(bytes + 28) == 1 && !*(bytes + 30))
  {
    ttColor = [colorCopy ttColor];
    ttColor2 = [backgroundColorCopy ttColor];
    v11 = [dataCopy mutableCopy];
    mutableBytes = [v11 mutableBytes];
    mutableBytes[54] = BYTE2(ttColor);
    mutableBytes[55] = BYTE1(ttColor);
    mutableBytes[56] = ttColor;
    mutableBytes[57] = 0;
    mutableBytes[58] = BYTE2(ttColor2);
    mutableBytes[59] = BYTE1(ttColor2);
    mutableBytes[60] = ttColor2;
    mutableBytes[61] = 0;
  }

  else
  {
    v11 = dataCopy;
  }

  return v11;
}

@end