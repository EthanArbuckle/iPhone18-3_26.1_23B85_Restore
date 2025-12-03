@interface MFPHatchBrush
+ (id)bitmapNameForHatchStyle:(int)style;
- (MFPHatchBrush)initWithHatchStyle:(int)style foreColor:(id)color backColor:(id)backColor;
@end

@implementation MFPHatchBrush

+ (id)bitmapNameForHatchStyle:(int)style
{
  if (style > 0x34)
  {
    return 0;
  }

  else
  {
    return *(&off_2799CC7E8 + style);
  }
}

- (MFPHatchBrush)initWithHatchStyle:(int)style foreColor:(id)color backColor:(id)backColor
{
  v6 = *&style;
  colorCopy = color;
  backColorCopy = backColor;
  v10 = [MFPHatchBrush bitmapNameForHatchStyle:v6];
  if (v10)
  {
    v11 = +[TCBundleResourceManager instance];
    v12 = [v11 dataForResource:v10 ofType:@"bmp" inPackage:@"OAPatterns" cacheResult:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 mutableCopy];
  if (v13)
  {
    v14 = [[OITSUImage alloc] initWithData:v13];
    if (v14)
    {
      v16.receiver = self;
      v16.super_class = MFPHatchBrush;
      self = [(MFPImageBrush *)&v16 initWithPhoneImage:v14];
    }
  }

  return self;
}

@end