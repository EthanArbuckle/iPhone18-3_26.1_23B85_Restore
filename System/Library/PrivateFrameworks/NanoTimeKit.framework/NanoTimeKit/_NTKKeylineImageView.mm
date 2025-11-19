@interface _NTKKeylineImageView
- (void)setColor:(id)a3;
@end

@implementation _NTKKeylineImageView

- (void)setColor:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _NTKKeylineImageView;
  [(CLKUIColoringImageView *)&v6 setColor:v4];
  colorizationBlock = self->_colorizationBlock;
  if (colorizationBlock)
  {
    colorizationBlock[2](colorizationBlock, v4);
  }
}

@end