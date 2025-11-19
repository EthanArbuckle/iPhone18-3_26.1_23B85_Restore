@interface MFPhoneBitmap
- (id)getImage;
@end

@implementation MFPhoneBitmap

- (id)getImage
{
  if (!self->m_image && ![(MFBitmap *)self isEmpty])
  {
    v3 = [[OITSUImage alloc] initWithData:self->super.m_bmpData];
    m_image = self->m_image;
    self->m_image = v3;
  }

  v5 = self->m_image;

  return v5;
}

@end