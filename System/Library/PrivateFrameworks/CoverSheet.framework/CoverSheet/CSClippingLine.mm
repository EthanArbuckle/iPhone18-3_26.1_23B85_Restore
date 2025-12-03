@interface CSClippingLine
- (CSClippingLine)initWithFrame:(CGRect)frame;
@end

@implementation CSClippingLine

- (CSClippingLine)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = CSClippingLine;
  v7 = [(CSClippingLine *)&v14 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
    realLine = v7->_realLine;
    v7->_realLine = v8;

    v10 = v7->_realLine;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v12 = [whiteColor colorWithAlphaComponent:0.25];
    [(UIView *)v10 setBackgroundColor:v12];

    [(UIView *)v7->_realLine setAlpha:0.0];
    [(UIView *)v7->_realLine setAutoresizingMask:18];
    [(CSClippingLine *)v7 addSubview:v7->_realLine];
  }

  return v7;
}

@end