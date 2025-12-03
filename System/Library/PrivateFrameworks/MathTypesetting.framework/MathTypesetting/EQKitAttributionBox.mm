@interface EQKitAttributionBox
- (BOOL)isEqual:(id)equal;
- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant;
- (CGRect)erasableBounds;
- (EQKitAttributionBox)initWithBox:(id)box attribution:(id)attribution;
- (id)containedBoxes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)renderIntoContext:(id)context offset:(CGPoint)offset;
@end

@implementation EQKitAttributionBox

- (EQKitAttributionBox)initWithBox:(id)box attribution:(id)attribution
{
  boxCopy = box;
  attributionCopy = attribution;
  v12.receiver = self;
  v12.super_class = EQKitAttributionBox;
  v9 = [(EQKitAttributionBox *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_box, box);
    objc_storeStrong(&v10->_attribution, attribution);
  }

  return v10;
}

- (id)containedBoxes
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(EQKitAttributionBox *)self box];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (CGRect)erasableBounds
{
  [(EQKitBox *)self->_box erasableBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)renderIntoContext:(id)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = EQKitAttributionBox;
  [(EQKitBox *)&v8 renderIntoContext:contextCopy offset:x, y];
  [(EQKitBox *)self->_box renderIntoContext:contextCopy offset:x, y];
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
  v5 = [(EQKitAttributionBox *)self box];
  attribution = [(EQKitAttributionBox *)self attribution];
  v7 = [v4 initWithBox:v5 attribution:attribution];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if ([(EQKitAttributionBox *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = [(EQKitAttributionBox *)self box];
    v7 = [(EQKitAttributionBox *)v5 box];
    if ([v6 isEqual:v7])
    {
      attribution = [(EQKitAttributionBox *)self attribution];
      attribution2 = [(EQKitAttributionBox *)v5 attribution];
      v10 = [attribution isEqual:attribution2];
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
  v5 = [(EQKitAttributionBox *)self box];
  attribution = [(EQKitAttributionBox *)self attribution];
  source = [attribution source];
  attribution2 = [(EQKitAttributionBox *)self attribution];
  v13.location = [attribution2 range];
  v9 = NSStringFromRange(v13);
  v10 = [v3 stringWithFormat:@"<%@ %p>: box=%@ source='%@' range=%@", v4, self, v5, source, v9];

  return v10;
}

@end