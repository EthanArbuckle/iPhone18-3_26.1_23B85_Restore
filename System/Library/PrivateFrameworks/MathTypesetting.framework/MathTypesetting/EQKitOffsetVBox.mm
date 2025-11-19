@interface EQKitOffsetVBox
- (BOOL)isEqual:(id)a3;
- (EQKitOffsetVBox)initWithChildBoxes:(id)a3 pivotIndex:(unint64_t)a4 offset:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5;
@end

@implementation EQKitOffsetVBox

- (EQKitOffsetVBox)initWithChildBoxes:(id)a3 pivotIndex:(unint64_t)a4 offset:(double)a5
{
  v7.receiver = self;
  v7.super_class = EQKitOffsetVBox;
  result = [(EQKitVBox *)&v7 initWithChildBoxes:a3 pivotIndex:a4];
  if (result)
  {
    result->_offset = a5;
  }

  return result;
}

- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5
{
  v8.receiver = self;
  v8.super_class = EQKitOffsetVBox;
  [(EQKitVBox *)&v8 p_cacheDimensionsForHeight:a3 depth:a4 width:a5];
  *a3 = self->_offset + *a3;
  *a4 = *a4 - self->_offset;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EQKitCompoundBox *)self childBoxes];
  v6 = [(EQKitVBox *)self pivotIndex];
  [(EQKitOffsetVBox *)self offset];
  v7 = [v4 initWithChildBoxes:v5 pivotIndex:v6 offset:?];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EQKitOffsetVBox;
  if ([(EQKitVBox *)&v11 isEqual:v4])
  {
    v5 = v4;
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
  v11 = [(EQKitCompoundBox *)self childBoxes];
  v12 = [(EQKitVBox *)self pivotIndex];
  [(EQKitOffsetVBox *)self offset];
  v14 = [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f childBoxes=%@ pivotIndex=%lu offset=%f", v4, self, v6, v8, v10, v11, v12, v13];

  return v14;
}

@end