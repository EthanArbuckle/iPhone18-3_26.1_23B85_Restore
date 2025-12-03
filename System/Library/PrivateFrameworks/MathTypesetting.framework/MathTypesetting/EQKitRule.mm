@interface EQKitRule
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (EQKitRule)initWithHeight:(double)height depth:(double)depth width:(double)width cgColor:(CGColor *)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)renderIntoContext:(id)context offset:(CGPoint)offset;
@end

@implementation EQKitRule

- (EQKitRule)initWithHeight:(double)height depth:(double)depth width:(double)width cgColor:(CGColor *)color
{
  v14.receiver = self;
  v14.super_class = EQKitRule;
  v10 = [(EQKitRule *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_height = height;
    v10->_depth = depth;
    v10->_width = width;
    if (color)
    {
      v12 = CFRetain(color);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(EQKitRule *)self height];
  v6 = v5;
  [(EQKitRule *)self depth];
  v8 = v7;
  [(EQKitRule *)self width];
  cgColor = self->_cgColor;

  return [v4 initWithHeight:cgColor depth:v6 width:v8 cgColor:v9];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else if ([(EQKitRule *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
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

- (void)renderIntoContext:(id)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  contextCopy = context;
  cgContext = [contextCopy cgContext];
  if (cgContext)
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
          CGContextSaveGState(cgContext);
          CGContextSetFillColorWithColor(cgContext, self->_cgColor);
          if ([contextCopy rendersDebugRects])
          {
            CGContextSetStrokeColorWithColor(cgContext, self->_cgColor);
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

        if ([contextCopy rendersDebugRects])
        {
          CGContextSetAlpha(cgContext, 0.333);
          v21.origin.x = v15;
          v21.origin.y = v17;
          v21.size.width = v14;
          v21.size.height = v16;
          CGContextFillRect(cgContext, v21);
          CGContextSetAlpha(cgContext, 1.0);
          v18 = EQKitBox_ContextScale(cgContext);
          CGContextSetLineWidth(cgContext, 1.0 / v18);
          v22.origin.x = v15;
          v22.origin.y = v17;
          v22.size.width = v14;
          v22.size.height = v16;
          CGContextStrokeRect(cgContext, v22);
        }

        else
        {
          v23.origin.x = v15;
          v23.origin.y = v17;
          v23.size.width = v14;
          v23.size.height = v16;
          CGContextFillRect(cgContext, v23);
        }

        if (self->_cgColor)
        {
          CGContextRestoreGState(cgContext);
        }
      }
    }
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  v4 = *(spec + 6);
  if (v4 == 2)
  {
    offset.x = offset.x + self->_width;
  }

  else if (v4)
  {
    return 1;
  }

  EQKit::OpticalKern::Spec::appendEntry(spec, offset, self->_height);
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