@interface EQKitAttributionBox
- (BOOL)isEqual:(id)a3;
- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4;
- (CGRect)erasableBounds;
- (EQKitAttributionBox)initWithBox:(id)a3 attribution:(id)a4;
- (id)containedBoxes;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4;
@end

@implementation EQKitAttributionBox

- (EQKitAttributionBox)initWithBox:(id)a3 attribution:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EQKitAttributionBox;
  v9 = [(EQKitAttributionBox *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_box, a3);
    objc_storeStrong(&v10->_attribution, a4);
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

- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8.receiver = self;
  v8.super_class = EQKitAttributionBox;
  [(EQKitBox *)&v8 renderIntoContext:v7 offset:x, y];
  [(EQKitBox *)self->_box renderIntoContext:v7 offset:x, y];
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
  v5 = [(EQKitAttributionBox *)self box];
  v6 = [(EQKitAttributionBox *)self attribution];
  v7 = [v4 initWithBox:v5 attribution:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else if ([(EQKitAttributionBox *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(EQKitAttributionBox *)self box];
    v7 = [(EQKitAttributionBox *)v5 box];
    if ([v6 isEqual:v7])
    {
      v8 = [(EQKitAttributionBox *)self attribution];
      v9 = [(EQKitAttributionBox *)v5 attribution];
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
  v5 = [(EQKitAttributionBox *)self box];
  v6 = [(EQKitAttributionBox *)self attribution];
  v7 = [v6 source];
  v8 = [(EQKitAttributionBox *)self attribution];
  v13.location = [v8 range];
  v9 = NSStringFromRange(v13);
  v10 = [v3 stringWithFormat:@"<%@ %p>: box=%@ source='%@' range=%@", v4, self, v5, v7, v9];

  return v10;
}

@end