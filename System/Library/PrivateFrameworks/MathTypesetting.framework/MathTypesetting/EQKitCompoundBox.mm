@interface EQKitCompoundBox
- (BOOL)isEqual:(id)equal;
- (CGRect)erasableBounds;
- (CGRect)p_cacheErasableBounds;
- (EQKitCompoundBox)initWithChildBoxes:(id)boxes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width;
- (void)p_ensureDimensionsAreValid;
@end

@implementation EQKitCompoundBox

- (EQKitCompoundBox)initWithChildBoxes:(id)boxes
{
  boxesCopy = boxes;
  v9.receiver = self;
  v9.super_class = EQKitCompoundBox;
  v5 = [(EQKitCompoundBox *)&v9 init];
  if (v5)
  {
    v6 = [boxesCopy copy];
    childBoxes = v5->_childBoxes;
    v5->_childBoxes = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  v6 = [v4 initWithChildBoxes:childBoxes];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(EQKitCompoundBox *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    childBoxes = [(EQKitCompoundBox *)self childBoxes];
    childBoxes2 = [(EQKitCompoundBox *)v5 childBoxes];
    if (childBoxes == childBoxes2)
    {
      v8 = 1;
    }

    else
    {
      v8 = [childBoxes isEqual:childBoxes2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)p_ensureDimensionsAreValid
{
  if (!self->_dimensionsValid)
  {
    [(EQKitCompoundBox *)self p_cacheDimensionsForHeight:&self->_height depth:&self->_depth width:&self->_width];
    self->_dimensionsValid = 1;
  }
}

- (CGRect)erasableBounds
{
  if (self->_erasableBoundsValid)
  {
    x = self->_erasableBounds.origin.x;
    y = self->_erasableBounds.origin.y;
    width = self->_erasableBounds.size.width;
    height = self->_erasableBounds.size.height;
  }

  else
  {
    [(EQKitCompoundBox *)self p_cacheErasableBounds];
    self->_erasableBounds.origin.x = x;
    self->_erasableBounds.origin.y = y;
    self->_erasableBounds.size.width = width;
    self->_erasableBounds.size.height = height;
    self->_erasableBoundsValid = 1;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitCompoundBox *)self height];
  v6 = v5;
  [(EQKitCompoundBox *)self depth];
  v8 = v7;
  [(EQKitCompoundBox *)self width];
  v10 = v9;
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  v12 = [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f childBoxes=%@", v4, self, v6, v8, v10, childBoxes];

  return v12;
}

- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width
{
  *height = 0.0;
  *depth = 0.0;
  *width = 0.0;
}

- (CGRect)p_cacheErasableBounds
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end