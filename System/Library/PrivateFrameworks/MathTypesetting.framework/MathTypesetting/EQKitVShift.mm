@interface EQKitVShift
- (BOOL)isEqual:(id)equal;
- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant;
- (CGRect)erasableBounds;
- (EQKitVShift)initWithBox:(id)box offset:(double)offset;
- (id)containedBoxes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)renderIntoContext:(id)context offset:(CGPoint)offset;
@end

@implementation EQKitVShift

- (EQKitVShift)initWithBox:(id)box offset:(double)offset
{
  boxCopy = box;
  v11.receiver = self;
  v11.super_class = EQKitVShift;
  v8 = [(EQKitVShift *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_box, box);
    v9->_offset = offset;
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

- (void)renderIntoContext:(id)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = EQKitVShift;
  [(EQKitBox *)&v8 renderIntoContext:contextCopy offset:x, y];
  [(EQKitBox *)self->_box renderIntoContext:contextCopy offset:x, y - self->_offset];
}

- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant
{
  descendantCopy = descendant;
  if (descendantCopy != self)
  {
    if (![(EQKitBox *)self->_box p_getTransform:transform fromDescendant:descendantCopy])
    {
      v9 = 0;
      goto LABEL_6;
    }

    v7 = *&transform->c;
    *&v11.a = *&transform->a;
    *&v11.c = v7;
    *&v11.tx = *&transform->tx;
    CGAffineTransformTranslate(&v12, &v11, 0.0, -self->_offset);
    v8 = *&v12.c;
    *&transform->a = *&v12.a;
    *&transform->c = v8;
    *&transform->tx = *&v12.tx;
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(EQKitVShift *)self box];
  [(EQKitVShift *)self offset];
  v6 = [v4 initWithBox:v5 offset:?];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(EQKitVShift *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
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