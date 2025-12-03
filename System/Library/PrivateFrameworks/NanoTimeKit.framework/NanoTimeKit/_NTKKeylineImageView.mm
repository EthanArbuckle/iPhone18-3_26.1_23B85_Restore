@interface _NTKKeylineImageView
- (void)setColor:(id)color;
@end

@implementation _NTKKeylineImageView

- (void)setColor:(id)color
{
  colorCopy = color;
  v6.receiver = self;
  v6.super_class = _NTKKeylineImageView;
  [(CLKUIColoringImageView *)&v6 setColor:colorCopy];
  colorizationBlock = self->_colorizationBlock;
  if (colorizationBlock)
  {
    colorizationBlock[2](colorizationBlock, colorCopy);
  }
}

@end