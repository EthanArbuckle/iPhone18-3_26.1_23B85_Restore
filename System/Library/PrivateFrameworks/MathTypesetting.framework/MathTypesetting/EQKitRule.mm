@interface EQKitRule
- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4;
- (BOOL)isEqual:(id)a3;
- (EQKitRule)initWithHeight:(double)a3 depth:(double)a4 width:(double)a5 cgColor:(CGColor *)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4;
@end

@implementation EQKitRule

- (EQKitRule)initWithHeight:(double)a3 depth:(double)a4 width:(double)a5 cgColor:(CGColor *)a6
{
  v14.receiver = self;
  v14.super_class = EQKitRule;
  v10 = [(EQKitRule *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_height = a3;
    v10->_depth = a4;
    v10->_width = a5;
    if (a6)
    {
      v12 = CFRetain(a6);
    }

    else
    {
      v12 = 0;
    }

    v11->_cgColor = v12;
  }

  return v11;
}

- (void)dealloc
{
  CGColorRelease(self->_cgColor);
  v3.receiver = self;
  v3.super_class = EQKitRule;
  [(EQKitRule *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(EQKitRule *)self height];
  v6 = v5;
  [(EQKitRule *)self depth];
  v8 = v7;
  [(EQKitRule *)self width];
  cgColor = self->_cgColor;

  return [v4 initWithHeight:cgColor depth:v6 width:v8 cgColor:v9];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else if ([(EQKitRule *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    [(EQKitRule *)self height];
    v7 = v6;
    [(EQKitRule *)v5 height];
    v15 = v7 == v8 && ([(EQKitRule *)self depth], v10 = v9, [(EQKitRule *)v5 depth], v10 == v11) && ([(EQKitRule *)self width], v13 = v12, [(EQKitRule *)v5 width], v13 == v14) && CGColorEqualToColor([(EQKitRule *)self color], [(EQKitRule *)v5 color]);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = EQKitRule;
  return [(EQKitBox *)&v3 hash];
}

- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v19 = a3;
  v7 = [v19 cgContext];
  if (v7)
  {
    [(EQKitRule *)self width];
    v9 = v8;
    [(EQKitBox *)self vsize];
    if (v9 > 0.0)
    {
      v11 = v10;
      if (v10 > 0.0)
      {
        if (self->_cgColor)
        {
          CGContextSaveGState(v7);
          CGContextSetFillColorWithColor(v7, self->_cgColor);
          if ([v19 rendersDebugRects])
          {
            CGContextSetStrokeColorWithColor(v7, self->_cgColor);
          }
        }

        [(EQKitRule *)self height];
        v13 = y - v12;
        if (v9 >= 0.0)
        {
          v14 = v9;
        }

        else
        {
          v14 = -v9;
        }

        if (v9 >= 0.0)
        {
          v15 = x;
        }

        else
        {
          v15 = x + v9;
        }

        if (v11 >= 0.0)
        {
          v16 = v11;
        }

        else
        {
          v16 = -v11;
        }

        if (v11 >= 0.0)
        {
          v17 = v13;
        }

        else
        {
          v17 = v11 + v13;
        }

        if ([v19 rendersDebugRects])
        {
          CGContextSetAlpha(v7, 0.333);
          v21.origin.x = v15;
          v21.origin.y = v17;
          v21.size.width = v14;
          v21.size.height = v16;
          CGContextFillRect(v7, v21);
          CGContextSetAlpha(v7, 1.0);
          v18 = EQKitBox_ContextScale(v7);
          CGContextSetLineWidth(v7, 1.0 / v18);
          v22.origin.x = v15;
          v22.origin.y = v17;
          v22.size.width = v14;
          v22.size.height = v16;
          CGContextStrokeRect(v7, v22);
        }

        else
        {
          v23.origin.x = v15;
          v23.origin.y = v17;
          v23.size.width = v14;
          v23.size.height = v16;
          CGContextFillRect(v7, v23);
        }

        if (self->_cgColor)
        {
          CGContextRestoreGState(v7);
        }
      }
    }
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4
{
  v4 = *(a3 + 6);
  if (v4 == 2)
  {
    a4.x = a4.x + self->_width;
  }

  else if (v4)
  {
    return 1;
  }

  EQKit::OpticalKern::Spec::appendEntry(a3, a4, self->_height);
  return 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitRule *)self height];
  v6 = v5;
  [(EQKitRule *)self depth];
  v8 = v7;
  [(EQKitRule *)self width];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f", v4, self, v6, v8, v9];
}

@end