@interface HKStrokeStyle
+ (HKStrokeStyle)strokeStyleWithColor:(id)color lineWidth:(double)width;
- (HKStrokeStyle)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)applyToContext:(CGContext *)context dashPhase:(double)phase;
@end

@implementation HKStrokeStyle

+ (HKStrokeStyle)strokeStyleWithColor:(id)color lineWidth:(double)width
{
  colorCopy = color;
  v7 = objc_alloc_init(self);
  v8 = v7;
  if (colorCopy)
  {
    [v7 setStrokeColor:colorCopy];
  }

  else
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v8 setStrokeColor:clearColor];
  }

  [v8 setLineWidth:width];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(UIColor *)self->_strokeColor copy];
  v6 = *(v4 + 24);
  *(v4 + 24) = v5;

  *(v4 + 32) = self->_lineWidth;
  *(v4 + 8) = self->_lineCap;
  *(v4 + 12) = self->_lineJoin;
  *(v4 + 40) = self->_dashStyle;
  *(v4 + 16) = self->_blendMode;
  return v4;
}

- (HKStrokeStyle)init
{
  v7.receiver = self;
  v7.super_class = HKStrokeStyle;
  v2 = [(HKStrokeStyle *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_lineCap = 0x100000000;
    v2->_dashStyle = 0;
    v2->_blendMode = 0;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    strokeColor = v3->_strokeColor;
    v3->_strokeColor = clearColor;
  }

  return v3;
}

- (void)applyToContext:(CGContext *)context dashPhase:(double)phase
{
  CGContextSetStrokeColorWithColor(context, [(UIColor *)self->_strokeColor CGColor]);
  CGContextSetLineWidth(context, self->_lineWidth);
  CGContextSetLineCap(context, self->_lineCap);
  CGContextSetLineJoin(context, self->_lineJoin);
  CGContextSetBlendMode(context, self->_blendMode);
  v7 = self->_dashStyle - 1;
  if (v7 <= 3)
  {
    v8 = *(&off_1E81BB668 + v7);

    CGContextSetLineDash(context, phase, v8, 2uLL);
  }
}

@end