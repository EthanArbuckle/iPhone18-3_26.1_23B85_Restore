@interface EQKitOverlayBox
- (BOOL)isEqual:(id)a3;
- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4;
- (CGRect)erasableBounds;
- (EQKitOverlayBox)initWithBox:(id)a3 overlayBox:(id)a4;
- (id)containedBoxes;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4;
@end

@implementation EQKitOverlayBox

- (EQKitOverlayBox)initWithBox:(id)a3 overlayBox:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EQKitOverlayBox;
  v9 = [(EQKitOverlayBox *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_box, a3);
    objc_storeStrong(&v10->_overlayBox, a4);
  }

  return v10;
}

- (id)containedBoxes
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [(EQKitOverlayBox *)self box];
  v7[0] = v3;
  v4 = [(EQKitOverlayBox *)self overlayBox];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (CGRect)erasableBounds
{
  [(EQKitBox *)self->_box erasableBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(EQKitBox *)self->_overlayBox erasableBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v4;
  v20 = v6;
  v21 = v8;
  v22 = v10;

  return CGRectUnion(*&v19, *&v12);
}

- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8.receiver = self;
  v8.super_class = EQKitOverlayBox;
  [(EQKitBox *)&v8 renderIntoContext:v7 offset:x, y];
  [(EQKitBox *)self->_box renderIntoContext:v7 offset:x, y];
  [(EQKitBox *)self->_overlayBox renderIntoContext:v7 offset:x, y];
}

- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4
{
  v6 = a4;
  v7 = v6 == self || [(EQKitBox *)self->_box p_getTransform:a3 fromDescendant:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EQKitOverlayBox *)self box];
  v6 = [(EQKitOverlayBox *)self overlayBox];
  v7 = [v4 initWithBox:v5 overlayBox:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else if ([(EQKitOverlayBox *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(EQKitOverlayBox *)self box];
    v7 = [(EQKitOverlayBox *)v5 box];
    if ([v6 isEqual:v7])
    {
      v8 = [(EQKitOverlayBox *)self overlayBox];
      v9 = [(EQKitOverlayBox *)v5 overlayBox];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitOverlayBox *)self height];
  v6 = v5;
  [(EQKitOverlayBox *)self depth];
  v8 = v7;
  [(EQKitOverlayBox *)self width];
  v10 = v9;
  v11 = [(EQKitOverlayBox *)self box];
  v12 = [(EQKitOverlayBox *)self overlayBox];
  v13 = [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f box=%@ overlayBox=%@ ", v4, self, v6, v8, v10, v11, v12];

  return v13;
}

@end