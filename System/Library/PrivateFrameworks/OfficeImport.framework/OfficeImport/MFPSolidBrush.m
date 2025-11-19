@interface MFPSolidBrush
- (MFPSolidBrush)initWithColor:(id)a3;
- (void)fillPath:(id)a3;
@end

@implementation MFPSolidBrush

- (MFPSolidBrush)initWithColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFPSolidBrush;
  v6 = [(MFPSolidBrush *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mColor, a3);
  }

  return v7;
}

- (void)fillPath:(id)a3
{
  v4 = a3;
  [(OITSUColor *)self->mColor set];
  [v4 fill];
}

@end