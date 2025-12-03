@interface EQKitOffsetVBox
- (BOOL)isEqual:(id)equal;
- (EQKitOffsetVBox)initWithChildBoxes:(id)boxes pivotIndex:(unint64_t)index offset:(double)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width;
@end

@implementation EQKitOffsetVBox

- (EQKitOffsetVBox)initWithChildBoxes:(id)boxes pivotIndex:(unint64_t)index offset:(double)offset
{
  v7.receiver = self;
  v7.super_class = EQKitOffsetVBox;
  result = [(EQKitVBox *)&v7 initWithChildBoxes:boxes pivotIndex:index];
  if (result)
  {
    result->_offset = offset;
  }

  return result;
}

- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width
{
  v8.receiver = self;
  v8.super_class = EQKitOffsetVBox;
  [(EQKitVBox *)&v8 p_cacheDimensionsForHeight:height depth:depth width:width];
  *height = self->_offset + *height;
  *depth = *depth - self->_offset;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  pivotIndex = [(EQKitVBox *)self pivotIndex];
  [(EQKitOffsetVBox *)self offset];
  v7 = [v4 initWithChildBoxes:childBoxes pivotIndex:pivotIndex offset:?];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = EQKitOffsetVBox;
  if ([(EQKitVBox *)&v11 isEqual:equalCopy])
  {
    v5 = equalCopy;
    [(EQKitOffsetVBox *)self offset];
    v7 = v6;
    [v5 offset];
    v9 = v7 == v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
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
  pivotIndex = [(EQKitVBox *)self pivotIndex];
  [(EQKitOffsetVBox *)self offset];
  v14 = [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f childBoxes=%@ pivotIndex=%lu offset=%f", v4, self, v6, v8, v10, childBoxes, pivotIndex, v13];

  return v14;
}

@end