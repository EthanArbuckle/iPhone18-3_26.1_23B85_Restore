@interface GKFixedSizeImageView
- (void)setImage:(id)image;
@end

@implementation GKFixedSizeImageView

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_actualImage != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_actualImage, image);
    cGImage = [(UIImage *)self->_actualImage CGImage];
    layer = [(GKFixedSizeImageView *)self layer];
    [layer setContents:cGImage];

    [(UIView *)self _gkSetNeedsRender];
    imageCopy = v8;
  }
}

@end