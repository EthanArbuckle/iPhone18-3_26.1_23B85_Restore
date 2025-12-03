@interface EQKitOverlayBox
- (BOOL)isEqual:(id)equal;
- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant;
- (CGRect)erasableBounds;
- (EQKitOverlayBox)initWithBox:(id)box overlayBox:(id)overlayBox;
- (id)containedBoxes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)renderIntoContext:(id)context offset:(CGPoint)offset;
@end

@implementation EQKitOverlayBox

- (EQKitOverlayBox)initWithBox:(id)box overlayBox:(id)overlayBox
{
  boxCopy = box;
  overlayBoxCopy = overlayBox;
  v12.receiver = self;
  v12.super_class = EQKitOverlayBox;
  v9 = [(EQKitOverlayBox *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_box, box);
    objc_storeStrong(&v10->_overlayBox, overlayBox);
  }

  return v10;
}

- (id)containedBoxes
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [(EQKitOverlayBox *)self box];
  v7[0] = v3;
  overlayBox = [(EQKitOverlayBox *)self overlayBox];
  v7[1] = overlayBox;
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

- (void)renderIntoContext:(id)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = EQKitOverlayBox;
  [(EQKitBox *)&v8 renderIntoContext:contextCopy offset:x, y];
  [(EQKitBox *)self->_box renderIntoContext:contextCopy offset:x, y];
  [(EQKitBox *)self->_overlayBox renderIntoContext:contextCopy offset:x, y];
}

- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant
{
  descendantCopy = descendant;
  v7 = descendantCopy == self || [(EQKitBox *)self->_box p_getTransform:transform fromDescendant:descendantCopy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(EQKitOverlayBox *)self box];
  overlayBox = [(EQKitOverlayBox *)self overlayBox];
  v7 = [v4 initWithBox:v5 overlayBox:overlayBox];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if ([(EQKitOverlayBox *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = [(EQKitOverlayBox *)self box];
    v7 = [(EQKitOverlayBox *)v5 box];
    if ([v6 isEqual:v7])
    {
      overlayBox = [(EQKitOverlayBox *)self overlayBox];
      overlayBox2 = [(EQKitOverlayBox *)v5 overlayBox];
      v10 = [overlayBox isEqual:overlayBox2];
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
  overlayBox = [(EQKitOverlayBox *)self overlayBox];
  v13 = [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f box=%@ overlayBox=%@ ", v4, self, v6, v8, v10, v11, overlayBox];

  return v13;
}

@end