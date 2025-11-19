@interface GKFixedSizeImageView
- (void)setImage:(id)a3;
@end

@implementation GKFixedSizeImageView

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_actualImage != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_actualImage, a3);
    v6 = [(UIImage *)self->_actualImage CGImage];
    v7 = [(GKFixedSizeImageView *)self layer];
    [v7 setContents:v6];

    [(UIView *)self _gkSetNeedsRender];
    v5 = v8;
  }
}

@end