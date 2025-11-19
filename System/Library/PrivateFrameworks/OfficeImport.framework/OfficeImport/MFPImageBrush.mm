@interface MFPImageBrush
- (MFPImageBrush)initWithPhoneImage:(id)a3;
- (void)fillPath:(id)a3;
@end

@implementation MFPImageBrush

- (MFPImageBrush)initWithPhoneImage:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v12.receiver = self;
    v12.super_class = MFPImageBrush;
    v6 = [(MFPImageBrush *)&v12 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->mPhoneImage, a3);
      v8 = [OITSUColor colorWithPatternImage:v7->mPhoneImage];
      mPhonePatternColor = v7->mPhonePatternColor;
      v7->mPhonePatternColor = v8;
    }

    self = v7;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)fillPath:(id)a3
{
  v5 = a3;
  mPhonePatternColor = self->mPhonePatternColor;
  if (mPhonePatternColor)
  {
    [(OITSUColor *)mPhonePatternColor set];
    [v5 fill];
  }
}

@end