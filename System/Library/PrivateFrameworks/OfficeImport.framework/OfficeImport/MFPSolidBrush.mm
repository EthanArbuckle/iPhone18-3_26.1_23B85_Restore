@interface MFPSolidBrush
- (MFPSolidBrush)initWithColor:(id)color;
- (void)fillPath:(id)path;
@end

@implementation MFPSolidBrush

- (MFPSolidBrush)initWithColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = MFPSolidBrush;
  v6 = [(MFPSolidBrush *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mColor, color);
  }

  return v7;
}

- (void)fillPath:(id)path
{
  pathCopy = path;
  [(OITSUColor *)self->mColor set];
  [pathCopy fill];
}

@end