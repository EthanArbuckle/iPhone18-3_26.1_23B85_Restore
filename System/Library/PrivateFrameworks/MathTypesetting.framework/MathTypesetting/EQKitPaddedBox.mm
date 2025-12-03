@interface EQKitPaddedBox
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant;
- (CGRect)erasableBounds;
- (EQKitPaddedBox)initWithBox:(id)box height:(double)height width:(double)width depth:(double)depth lspace:(double)lspace voffset:(double)voffset;
- (id)containedBoxes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)renderIntoContext:(id)context offset:(CGPoint)offset;
@end

@implementation EQKitPaddedBox

- (EQKitPaddedBox)initWithBox:(id)box height:(double)height width:(double)width depth:(double)depth lspace:(double)lspace voffset:(double)voffset
{
  boxCopy = box;
  v19.receiver = self;
  v19.super_class = EQKitPaddedBox;
  v16 = [(EQKitPaddedBox *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_box, box);
    v17->_height = height;
    v17->_width = width;
    v17->_depth = depth;
    v17->_lspace = lspace;
    v17->_voffset = voffset;
  }

  return v17;
}

- (id)containedBoxes
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(EQKitPaddedBox *)self box];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (CGRect)erasableBounds
{
  [(EQKitBox *)self->_box erasableBounds];
  lspace = self->_lspace;
  v8 = -self->_voffset;

  return CGRectOffset(*&v3, lspace, v8);
}

- (void)renderIntoContext:(id)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = EQKitPaddedBox;
  [(EQKitBox *)&v8 renderIntoContext:contextCopy offset:x, y];
  [(EQKitBox *)self->_box renderIntoContext:contextCopy offset:x + self->_lspace, y - self->_voffset];
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  v4 = *(spec + 6);
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return [(EQKitBox *)self->_box appendOpticalAlignToSpec:offset.x offset:offset.y];
      }

      goto LABEL_8;
    }

LABEL_7:
    offset.y = offset.y - self->_voffset;
    return [(EQKitBox *)self->_box appendOpticalAlignToSpec:offset.x offset:offset.y];
  }

  if (v4 == 3)
  {
LABEL_8:
    offset.x = offset.x + self->_lspace;
    return [(EQKitBox *)self->_box appendOpticalAlignToSpec:offset.x offset:offset.y];
  }

  if (v4 == 2)
  {
    goto LABEL_7;
  }

  return [(EQKitBox *)self->_box appendOpticalAlignToSpec:offset.x offset:offset.y];
}

- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant
{
  descendantCopy = descendant;
  if (descendantCopy != self)
  {
    if (![(EQKitBox *)self->_box p_getTransform:transform fromDescendant:descendantCopy])
    {
      v10 = 0;
      goto LABEL_6;
    }

    v7 = *&transform->c;
    *&v12.a = *&transform->a;
    *&v12.c = v7;
    lspace = self->_lspace;
    *&v12.tx = *&transform->tx;
    CGAffineTransformTranslate(&v13, &v12, lspace, -self->_voffset);
    v9 = *&v13.c;
    *&transform->a = *&v13.a;
    *&transform->c = v9;
    *&transform->tx = *&v13.tx;
  }

  v10 = 1;
LABEL_6:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(EQKitPaddedBox *)self box];
  [(EQKitPaddedBox *)self height];
  v7 = v6;
  [(EQKitPaddedBox *)self width];
  v9 = v8;
  [(EQKitPaddedBox *)self depth];
  v11 = v10;
  [(EQKitPaddedBox *)self lspace];
  v13 = v12;
  [(EQKitPaddedBox *)self voffset];
  v15 = [v4 initWithBox:v5 height:v7 width:v9 depth:v11 lspace:v13 voffset:v14];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else if ([(EQKitPaddedBox *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    [(EQKitPaddedBox *)self height];
    v7 = v6;
    [(EQKitPaddedBox *)v5 height];
    if (v7 == v8 && ([(EQKitPaddedBox *)self width], v10 = v9, [(EQKitPaddedBox *)v5 width], v10 == v11) && ([(EQKitPaddedBox *)self depth], v13 = v12, [(EQKitPaddedBox *)v5 depth], v13 == v14) && ([(EQKitPaddedBox *)self lspace], v16 = v15, [(EQKitPaddedBox *)v5 lspace], v16 == v17) && ([(EQKitPaddedBox *)self voffset], v19 = v18, [(EQKitPaddedBox *)v5 voffset], v19 == v20))
    {
      v21 = [(EQKitPaddedBox *)self box];
      v22 = [(EQKitPaddedBox *)v5 box];
      v23 = [v21 isEqual:v22];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitPaddedBox *)self height];
  v6 = v5;
  [(EQKitPaddedBox *)self depth];
  v8 = v7;
  [(EQKitPaddedBox *)self width];
  v10 = v9;
  [(EQKitPaddedBox *)self lspace];
  v12 = v11;
  [(EQKitPaddedBox *)self voffset];
  v14 = v13;
  v15 = [(EQKitPaddedBox *)self box];
  v16 = [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f lspace=%f voffset=%f box=%@ ", v4, self, v6, v8, v10, v12, v14, v15];

  return v16;
}

@end