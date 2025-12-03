@interface MFPImageBrush
- (MFPImageBrush)initWithPhoneImage:(id)image;
- (void)fillPath:(id)path;
@end

@implementation MFPImageBrush

- (MFPImageBrush)initWithPhoneImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    v12.receiver = self;
    v12.super_class = MFPImageBrush;
    v6 = [(MFPImageBrush *)&v12 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->mPhoneImage, image);
      v8 = [OITSUColor colorWithPatternImage:v7->mPhoneImage];
      mPhonePatternColor = v7->mPhonePatternColor;
      v7->mPhonePatternColor = v8;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)fillPath:(id)path
{
  pathCopy = path;
  mPhonePatternColor = self->mPhonePatternColor;
  if (mPhonePatternColor)
  {
    [(OITSUColor *)mPhonePatternColor set];
    [pathCopy fill];
  }
}

@end