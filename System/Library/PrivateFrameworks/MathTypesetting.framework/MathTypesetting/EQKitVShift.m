@interface EQKitVShift
- (BOOL)isEqual:(id)a3;
- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4;
- (CGRect)erasableBounds;
- (EQKitVShift)initWithBox:(id)a3 offset:(double)a4;
- (id)containedBoxes;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4;
@end

@implementation EQKitVShift

- (EQKitVShift)initWithBox:(id)a3 offset:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = EQKitVShift;
  v8 = [(EQKitVShift *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_box, a3);
    v9->_offset = a4;
  }

  return v9;
}

- (id)containedBoxes
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(EQKitVShift *)self box];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (CGRect)erasableBounds
{
  [(EQKitBox *)self->_box erasableBounds];
  v7 = -self->_offset;

  return CGRectOffset(*&v3, 0.0, v7);
}

- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8.receiver = self;
  v8.super_class = EQKitVShift;
  [(EQKitBox *)&v8 renderIntoContext:v7 offset:x, y];
  [(EQKitBox *)self->_box renderIntoContext:v7 offset:x, y - self->_offset];
}

- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4
{
  v6 = a4;
  if (v6 != self)
  {
    if (![(EQKitBox *)self->_box p_getTransform:a3 fromDescendant:v6])
    {
      v9 = 0;
      goto LABEL_6;
    }

    v7 = *&a3->c;
    *&v11.a = *&a3->a;
    *&v11.c = v7;
    *&v11.tx = *&a3->tx;
    CGAffineTransformTranslate(&v12, &v11, 0.0, -self->_offset);
    v8 = *&v12.c;
    *&a3->a = *&v12.a;
    *&a3->c = v8;
    *&a3->tx = *&v12.tx;
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EQKitVShift *)self box];
  [(EQKitVShift *)self offset];
  v6 = [v4 initWithBox:v5 offset:?];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(EQKitVShift *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    [(EQKitVShift *)self offset];
    v7 = v6;
    [(EQKitVShift *)v5 offset];
    if (v7 == v8)
    {
      v9 = [(EQKitVShift *)self box];
      v10 = [(EQKitVShift *)v5 box];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitVShift *)self height];
  v6 = v5;
  [(EQKitVShift *)self depth];
  v8 = v7;
  [(EQKitVShift *)self width];
  v10 = v9;
  [(EQKitVShift *)self offset];
  v12 = v11;
  v13 = [(EQKitVShift *)self box];
  v14 = [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f offset=%f box=%@ ", v4, self, v6, v8, v10, v12, v13];

  return v14;
}

@end