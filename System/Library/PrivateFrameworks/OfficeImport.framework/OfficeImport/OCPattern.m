@interface OCPattern
+ (id)blackAndWhiteImageDataWithPatternName:(id)a3;
+ (id)colorizedImageDataWithBlackAndWhiteImageData:(id)a3 foregroundColor:(id)a4 backgroundColor:(id)a5;
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

+ (id)blackAndWhiteImageDataWithPatternName:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[TCBundleResourceManager instance];
    v5 = [v4 dataForResource:v3 ofType:@"bmp" inPackage:@"OAPatterns" cacheResult:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)colorizedImageDataWithBlackAndWhiteImageData:(id)a3 foregroundColor:(id)a4 backgroundColor:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 bytes];
  if ([v7 length] >= 0x3F && *v10 == 66 && *(v10 + 1) == 77 && *(v10 + 14) == 40 && *(v10 + 26) == 1 && *(v10 + 28) == 1 && !*(v10 + 30))
  {
    v13 = [v8 ttColor];
    v14 = [v9 ttColor];
    v11 = [v7 mutableCopy];
    v15 = [v11 mutableBytes];
    v15[54] = BYTE2(v13);
    v15[55] = BYTE1(v13);
    v15[56] = v13;
    v15[57] = 0;
    v15[58] = BYTE2(v14);
    v15[59] = BYTE1(v14);
    v15[60] = v14;
    v15[61] = 0;
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

@end