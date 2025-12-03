@interface IFGraphicSymbolOverride
- (CGSize)offset;
- (IFGraphicSymbolOverride)initWithShape:(int64_t)shape enclosureDimension:(int)dimension;
- (id)description;
@end

@implementation IFGraphicSymbolOverride

- (IFGraphicSymbolOverride)initWithShape:(int64_t)shape enclosureDimension:(int)dimension
{
  v7.receiver = self;
  v7.super_class = IFGraphicSymbolOverride;
  result = [(IFGraphicSymbolOverride *)&v7 init];
  if (result)
  {
    result->_shape = shape;
    result->_enclosureDimension = dimension;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = IFGraphicSymbolOverride;
  v4 = [(IFGraphicSymbolOverride *)&v16 description];
  shape = [(IFGraphicSymbolOverride *)self shape];
  enclosureDimension = [(IFGraphicSymbolOverride *)self enclosureDimension];
  symbolWeight = [(IFGraphicSymbolOverride *)self symbolWeight];
  symbolSize = [(IFGraphicSymbolOverride *)self symbolSize];
  [(IFGraphicSymbolOverride *)self pointSizeAdjuster];
  v10 = v9;
  [(IFGraphicSymbolOverride *)self offset];
  v12 = v11;
  [(IFGraphicSymbolOverride *)self offset];
  v14 = [v3 stringWithFormat:@"%@ - shape: %lu, dimension: %d :: weight: %lu, size: %lu, adjuster: %f, offset: (%f, %f)", v4, shape, enclosureDimension, symbolWeight, symbolSize, *&v10, v12, v13];

  return v14;
}

- (CGSize)offset
{
  objc_copyStruct(v4, &self->_offset, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end