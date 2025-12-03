@interface MFPhonePatternBrush
+ (id)patternBrushWithBitmap:(id)bitmap usePaletteForBilevel:(BOOL)bilevel;
- (MFPhonePatternBrush)initWithBitmap:(id)bitmap usePaletteForBilevel:(BOOL)bilevel;
- (void)fillPath:(id)path in_path:(id)in_path;
@end

@implementation MFPhonePatternBrush

+ (id)patternBrushWithBitmap:(id)bitmap usePaletteForBilevel:(BOOL)bilevel
{
  bilevelCopy = bilevel;
  bitmapCopy = bitmap;
  v7 = [[self alloc] initWithBitmap:bitmapCopy usePaletteForBilevel:bilevelCopy];

  return v7;
}

- (MFPhonePatternBrush)initWithBitmap:(id)bitmap usePaletteForBilevel:(BOOL)bilevel
{
  bitmapCopy = bitmap;
  v11.receiver = self;
  v11.super_class = MFPhonePatternBrush;
  v8 = [(MFPhonePatternBrush *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->m_pattern, bitmap);
    v9->m_usePaletteForBilevel = bilevel;
  }

  return v9;
}

- (void)fillPath:(id)path in_path:(id)in_path
{
  pathCopy = path;
  in_pathCopy = in_path;
  [(MFPhoneBrush *)self setPolyFillMode:pathCopy in_path:in_pathCopy];
  if (![(MFPhoneBrush *)self fillWithROP:pathCopy in_path:in_pathCopy])
  {
    if (!self->m_usePaletteForBilevel)
    {
      [(MFBitmap *)self->m_pattern setMonoPalette:pathCopy];
    }

    getImage = [(MFPhoneBitmap *)self->m_pattern getImage];
    v8 = [OITSUColor colorWithPatternImage:getImage];

    [v8 set];
    [in_pathCopy fill];
  }
}

@end