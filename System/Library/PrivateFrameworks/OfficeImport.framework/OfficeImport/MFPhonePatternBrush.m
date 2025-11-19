@interface MFPhonePatternBrush
+ (id)patternBrushWithBitmap:(id)a3 usePaletteForBilevel:(BOOL)a4;
- (MFPhonePatternBrush)initWithBitmap:(id)a3 usePaletteForBilevel:(BOOL)a4;
- (void)fillPath:(id)a3 in_path:(id)a4;
@end

@implementation MFPhonePatternBrush

+ (id)patternBrushWithBitmap:(id)a3 usePaletteForBilevel:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[a1 alloc] initWithBitmap:v6 usePaletteForBilevel:v4];

  return v7;
}

- (MFPhonePatternBrush)initWithBitmap:(id)a3 usePaletteForBilevel:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MFPhonePatternBrush;
  v8 = [(MFPhonePatternBrush *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->m_pattern, a3);
    v9->m_usePaletteForBilevel = a4;
  }

  return v9;
}

- (void)fillPath:(id)a3 in_path:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(MFPhoneBrush *)self setPolyFillMode:v9 in_path:v6];
  if (![(MFPhoneBrush *)self fillWithROP:v9 in_path:v6])
  {
    if (!self->m_usePaletteForBilevel)
    {
      [(MFBitmap *)self->m_pattern setMonoPalette:v9];
    }

    v7 = [(MFPhoneBitmap *)self->m_pattern getImage];
    v8 = [OITSUColor colorWithPatternImage:v7];

    [v8 set];
    [v6 fill];
  }
}

@end