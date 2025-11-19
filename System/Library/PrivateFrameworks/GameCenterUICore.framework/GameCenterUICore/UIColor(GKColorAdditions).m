@interface UIColor(GKColorAdditions)
- (double)_gkLuminance;
@end

@implementation UIColor(GKColorAdditions)

- (double)_gkLuminance
{
  ColorSpace = CGColorGetColorSpace([a1 CGColor]);
  if (!ColorSpace)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKColorPalette.m"];
    v6 = [v5 lastPathComponent];
    v7 = [v3 stringWithFormat:@"%@ (colorSpace != ((void*)0))\n[%s (%s:%d)]", v4, "-[UIColor(GKColorAdditions) _gkLuminance]", objc_msgSend(v6, "UTF8String"), 253];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  }

  v14 = 0.0;
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelRGB)
  {
    v12 = 0.0;
    v13 = 0.0;
    v10 = 0;
    v11 = 0.0;
    [a1 getRed:&v13 green:&v12 blue:&v11 alpha:&v10];
    return v12 * 0.7152 + v13 * 0.2126 + v11 * 0.0722;
  }

  else
  {
    result = 0.0;
    if (Model == kCGColorSpaceModelMonochrome)
    {
      v13 = 0.0;
      [a1 getWhite:&v14 alpha:{&v13, 0.0}];
      return v14;
    }
  }

  return result;
}

@end