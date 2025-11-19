@interface HKStrokeStyle
+ (HKStrokeStyle)strokeStyleWithColor:(id)a3 lineWidth:(double)a4;
- (HKStrokeStyle)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyToContext:(CGContext *)a3 dashPhase:(double)a4;
@end

@implementation HKStrokeStyle

+ (HKStrokeStyle)strokeStyleWithColor:(id)a3 lineWidth:(double)a4
{
  v6 = a3;
  v7 = objc_alloc_init(a1);
  v8 = v7;
  if (v6)
  {
    [v7 setStrokeColor:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E69DC888] clearColor];
    [v8 setStrokeColor:v9];
  }

  [v8 setLineWidth:a4];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
    v4 = [MEMORY[0x1E69DC888] clearColor];
    strokeColor = v3->_strokeColor;
    v3->_strokeColor = v4;
  }

  return v3;
}

- (void)applyToContext:(CGContext *)a3 dashPhase:(double)a4
{
  CGContextSetStrokeColorWithColor(a3, [(UIColor *)self->_strokeColor CGColor]);
  CGContextSetLineWidth(a3, self->_lineWidth);
  CGContextSetLineCap(a3, self->_lineCap);
  CGContextSetLineJoin(a3, self->_lineJoin);
  CGContextSetBlendMode(a3, self->_blendMode);
  v7 = self->_dashStyle - 1;
  if (v7 <= 3)
  {
    v8 = *(&off_1E81BB668 + v7);

    CGContextSetLineDash(a3, a4, v8, 2uLL);
  }
}

@end