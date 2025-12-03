@interface NSCollectionLayoutSize
+ (NSCollectionLayoutSize)sizeWithAbsoluteSize:(CGSize)size;
+ (NSCollectionLayoutSize)sizeWithContainerSize;
+ (NSCollectionLayoutSize)sizeWithContainerWidthFactor:(double)factor containerHeightFactor:(double)heightFactor;
+ (NSCollectionLayoutSize)sizeWithSize:(CGSize)size widthSemantic:(int64_t)semantic heightSemantic:(int64_t)heightSemantic;
+ (NSCollectionLayoutSize)sizeWithWidth:(double)width widthSemantic:(int64_t)semantic height:(double)height heightSemantic:(int64_t)heightSemantic;
+ (NSCollectionLayoutSize)sizeWithWidthDimension:(NSCollectionLayoutDimension *)width heightDimension:(NSCollectionLayoutDimension *)height;
- (BOOL)_isEstimatedForAxis:(unint64_t)axis;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEstimated;
- (CGSize)_effectiveSizeForContainer:(id)container displayScale:(double)scale ignoringInsets:(BOOL)insets;
- (CGSize)size;
- (NSCollectionLayoutSize)initWithSize:(CGSize)size widthSemantic:(int64_t)semantic heightSemantic:(int64_t)heightSemantic width:(id)width height:(id)height;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)_axesUniformAcrossSiblings;
- (unint64_t)_containerSizeDependentAxes;
@end

@implementation NSCollectionLayoutSize

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)_axesUniformAcrossSiblings
{
  v2 = 2;
  if (self->_widthSemantic == 4)
  {
    v2 = 3;
  }

  if (self->_heightSemantic == 4)
  {
    return v2;
  }

  else
  {
    return self->_widthSemantic == 4;
  }
}

- (BOOL)isEstimated
{
  widthSemantic = self->_widthSemantic;
  if (widthSemantic == 3)
  {
    return 1;
  }

  return widthSemantic == 4 || (self->_heightSemantic - 3) < 2;
}

+ (NSCollectionLayoutSize)sizeWithContainerSize
{
  v3 = [NSCollectionLayoutDimension _dimensionWithDimension:1 semantic:1.0];
  v4 = [NSCollectionLayoutDimension _dimensionWithDimension:2 semantic:1.0];
  v5 = [[self alloc] initWithSize:objc_msgSend(v3 widthSemantic:"semantic") heightSemantic:objc_msgSend(v4 width:"semantic") height:{v3, v4, 1.0, 1.0}];

  return v5;
}

- (unint64_t)_containerSizeDependentAxes
{
  widthSemantic = self->_widthSemantic;
  heightSemantic = self->_heightSemantic;
  v4 = widthSemantic == 1 || heightSemantic == 1;
  v5 = v4;
  v6 = 2;
  if (v4)
  {
    v6 = 3;
  }

  if (heightSemantic == 2 || widthSemantic == 2)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (id)description
{
  widthSemantic = self->_widthSemantic;
  if (widthSemantic > 4)
  {
    v5 = &stru_2856CCCD0;
  }

  else
  {
    v5 = off_278DE5818[widthSemantic];
  }

  heightSemantic = self->_heightSemantic;
  if (heightSemantic > 4)
  {
    v7 = &stru_2856CCCD0;
  }

  else
  {
    v7 = off_278DE5818[heightSemantic];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"{%@(%g), %@(%g)}", v5, *&self->_size.width, v7, *&self->_size.height, v2, v3];
}

- (NSCollectionLayoutSize)initWithSize:(CGSize)size widthSemantic:(int64_t)semantic heightSemantic:(int64_t)heightSemantic width:(id)width height:(id)height
{
  height = size.height;
  width = size.width;
  widthCopy = width;
  heightCopy = height;
  v19.receiver = self;
  v19.super_class = NSCollectionLayoutSize;
  v16 = [(NSCollectionLayoutSize *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_size.width = width;
    v16->_size.height = height;
    v16->_widthSemantic = semantic;
    v16->_heightSemantic = heightSemantic;
    objc_storeStrong(&v16->_widthDimension, width);
    objc_storeStrong(&v17->_heightDimension, height);
  }

  return v17;
}

+ (NSCollectionLayoutSize)sizeWithWidthDimension:(NSCollectionLayoutDimension *)width heightDimension:(NSCollectionLayoutDimension *)height
{
  v6 = height;
  v7 = width;
  semantic = [(NSCollectionLayoutDimension *)v7 semantic];
  semantic2 = [(NSCollectionLayoutDimension *)v6 semantic];
  [(NSCollectionLayoutDimension *)v7 dimension];
  v11 = v10;
  [(NSCollectionLayoutDimension *)v6 dimension];
  v13 = [[self alloc] initWithSize:semantic widthSemantic:semantic2 heightSemantic:v7 width:v6 height:{v11, v12}];

  return v13;
}

+ (NSCollectionLayoutSize)sizeWithAbsoluteSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [NSCollectionLayoutDimension _dimensionWithDimension:0 semantic:?];
  v7 = [NSCollectionLayoutDimension _dimensionWithDimension:0 semantic:height];
  v8 = [[self alloc] initWithSize:0 widthSemantic:0 heightSemantic:v6 width:v7 height:{width, height}];

  return v8;
}

+ (NSCollectionLayoutSize)sizeWithContainerWidthFactor:(double)factor containerHeightFactor:(double)heightFactor
{
  v7 = [NSCollectionLayoutDimension _dimensionWithDimension:1 semantic:?];
  v8 = [NSCollectionLayoutDimension _dimensionWithDimension:2 semantic:heightFactor];
  v9 = [[self alloc] initWithSize:1 widthSemantic:2 heightSemantic:v7 width:v8 height:{factor, heightFactor}];

  return v9;
}

+ (NSCollectionLayoutSize)sizeWithSize:(CGSize)size widthSemantic:(int64_t)semantic heightSemantic:(int64_t)heightSemantic
{
  height = size.height;
  width = size.width;
  v10 = [NSCollectionLayoutDimension _dimensionWithDimension:1 semantic:?];
  v11 = [NSCollectionLayoutDimension _dimensionWithDimension:2 semantic:height];
  v12 = [[self alloc] initWithSize:semantic widthSemantic:heightSemantic heightSemantic:v10 width:v11 height:{width, height}];

  return v12;
}

+ (NSCollectionLayoutSize)sizeWithWidth:(double)width widthSemantic:(int64_t)semantic height:(double)height heightSemantic:(int64_t)heightSemantic
{
  v11 = [NSCollectionLayoutDimension _dimensionWithDimension:1 semantic:?];
  v12 = [NSCollectionLayoutDimension _dimensionWithDimension:2 semantic:height];
  v13 = [[self alloc] initWithSize:semantic widthSemantic:heightSemantic heightSemantic:v11 width:v12 height:{width, height}];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(NSCollectionLayoutSize *)self size];
  v6 = v5;
  v8 = v7;
  widthSemantic = [(NSCollectionLayoutSize *)self widthSemantic];
  heightSemantic = [(NSCollectionLayoutSize *)self heightSemantic];
  widthDimension = [(NSCollectionLayoutSize *)self widthDimension];
  heightDimension = [(NSCollectionLayoutSize *)self heightDimension];
  v13 = [v4 initWithSize:widthSemantic widthSemantic:heightSemantic heightSemantic:widthDimension width:heightDimension height:{v6, v8}];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(NSCollectionLayoutSize *)self widthDimension], v5 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutSize *)equalCopy widthDimension], v6 = objc_claimAutoreleasedReturnValue(), v7 = __objectEqual(v5, v6), v6, v5, v7))
    {
      heightDimension = [(NSCollectionLayoutSize *)self heightDimension];
      heightDimension2 = [(NSCollectionLayoutSize *)equalCopy heightDimension];
      v10 = __objectEqual(heightDimension, heightDimension2);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (CGSize)_effectiveSizeForContainer:(id)container displayScale:(double)scale ignoringInsets:(BOOL)insets
{
  insetsCopy = insets;
  containerCopy = container;
  [containerCopy contentInsets];
  v14 = v12 + v13;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  *&v33[4] = scale;
  if (insetsCopy)
  {
    v14 = 0.0;
  }

  v33[2] = __81__NSCollectionLayoutSize__effectiveSizeForContainer_displayScale_ignoringInsets___block_invoke;
  v33[3] = &__block_descriptor_40_e8_d16__0d8l;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v25 = __81__NSCollectionLayoutSize__effectiveSizeForContainer_displayScale_ignoringInsets___block_invoke_2;
  v26 = &unk_278DE5778;
  v15 = v10 + v11;
  if (insetsCopy)
  {
    v15 = 0.0;
  }

  selfCopy = self;
  v29 = v33;
  v30 = v15;
  v31 = v14;
  v32 = a2;
  v27 = containerCopy;
  width = self->_size.width;
  widthSemantic = self->_widthSemantic;
  v18 = containerCopy;
  __81__NSCollectionLayoutSize__effectiveSizeForContainer_displayScale_ignoringInsets___block_invoke_2(v24, widthSemantic, width);
  v20 = v19;
  v21 = (v25)(v24, self->_heightSemantic, self->_size.height);

  v22 = v20;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

double __81__NSCollectionLayoutSize__effectiveSizeForContainer_displayScale_ignoringInsets___block_invoke(uint64_t a1, double result)
{
  v2 = *(a1 + 32);
  if (v2 > 0.0)
  {
    return floor(v2 * result) / v2;
  }

  return result;
}

void __81__NSCollectionLayoutSize__effectiveSizeForContainer_displayScale_ignoringInsets___block_invoke_2(uint64_t a1, uint64_t a2, double a3)
{
  if (a2 > 2)
  {
    if ((a2 - 3) < 2)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!a2)
  {
    return;
  }

  if (a2 == 1)
  {
    v5 = *(a1 + 48);
    [*(a1 + 32) contentSize];
    v7.n128_f64[0] = v7.n128_f64[0] - *(a1 + 56);
    goto LABEL_10;
  }

  if (a2 != 2)
  {
LABEL_7:
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"NSCollectionLayoutItem.m" lineNumber:2033 description:@"Unhandled dimensionSemantic."];

    return;
  }

  v5 = *(a1 + 48);
  [*(a1 + 32) contentSize];
  v7.n128_f64[0] = v6 - *(a1 + 64);
LABEL_10:
  v7.n128_f64[0] = v7.n128_f64[0] * a3;
  v9 = *(v5 + 16);

  v9(v5, v7);
}

- (BOOL)_isEstimatedForAxis:(unint64_t)axis
{
  if (axis - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:2053 description:{@"Invalid parameter not satisfying: %@", @"axis == CVCAxisHorizontal || axis == CVCAxisVertical"}];

    goto LABEL_5;
  }

  if (axis != 2)
  {
LABEL_5:
    widthDimension = [(NSCollectionLayoutSize *)self widthDimension];
    goto LABEL_6;
  }

  widthDimension = [(NSCollectionLayoutSize *)self heightDimension];
LABEL_6:
  v7 = widthDimension;
  isEstimated = [widthDimension isEstimated];

  return isEstimated;
}

@end