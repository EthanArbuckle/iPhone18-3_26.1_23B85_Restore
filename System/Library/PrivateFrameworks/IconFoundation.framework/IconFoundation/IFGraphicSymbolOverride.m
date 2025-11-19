@interface IFGraphicSymbolOverride
- (CGSize)offset;
- (IFGraphicSymbolOverride)initWithShape:(int64_t)a3 enclosureDimension:(int)a4;
- (id)description;
@end

@implementation IFGraphicSymbolOverride

- (IFGraphicSymbolOverride)initWithShape:(int64_t)a3 enclosureDimension:(int)a4
{
  v7.receiver = self;
  v7.super_class = IFGraphicSymbolOverride;
  result = [(IFGraphicSymbolOverride *)&v7 init];
  if (result)
  {
    result->_shape = a3;
    result->_enclosureDimension = a4;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = IFGraphicSymbolOverride;
  v4 = [(IFGraphicSymbolOverride *)&v16 description];
  v5 = [(IFGraphicSymbolOverride *)self shape];
  v6 = [(IFGraphicSymbolOverride *)self enclosureDimension];
  v7 = [(IFGraphicSymbolOverride *)self symbolWeight];
  v8 = [(IFGraphicSymbolOverride *)self symbolSize];
  [(IFGraphicSymbolOverride *)self pointSizeAdjuster];
  v10 = v9;
  [(IFGraphicSymbolOverride *)self offset];
  v12 = v11;
  [(IFGraphicSymbolOverride *)self offset];
  v14 = [v3 stringWithFormat:@"%@ - shape: %lu, dimension: %d :: weight: %lu, size: %lu, adjuster: %f, offset: (%f, %f)", v4, v5, v6, v7, v8, *&v10, v12, v13];

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