@interface NSCollectionLayoutSize
+ (NSCollectionLayoutSize)sizeWithAbsoluteSize:(CGSize)a3;
+ (NSCollectionLayoutSize)sizeWithContainerSize;
+ (NSCollectionLayoutSize)sizeWithContainerWidthFactor:(double)a3 containerHeightFactor:(double)a4;
+ (NSCollectionLayoutSize)sizeWithSize:(CGSize)a3 widthSemantic:(int64_t)a4 heightSemantic:(int64_t)a5;
+ (NSCollectionLayoutSize)sizeWithWidth:(double)a3 widthSemantic:(int64_t)a4 height:(double)a5 heightSemantic:(int64_t)a6;
+ (NSCollectionLayoutSize)sizeWithWidthDimension:(NSCollectionLayoutDimension *)width heightDimension:(NSCollectionLayoutDimension *)height;
- (BOOL)_isEstimatedForAxis:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEstimated;
- (CGSize)_effectiveSizeForContainer:(id)a3 displayScale:(double)a4 ignoringInsets:(BOOL)a5;
- (CGSize)size;
- (NSCollectionLayoutSize)initWithSize:(CGSize)a3 widthSemantic:(int64_t)a4 heightSemantic:(int64_t)a5 width:(id)a6 height:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
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
  v5 = [[a1 alloc] initWithSize:objc_msgSend(v3 widthSemantic:"semantic") heightSemantic:objc_msgSend(v4 width:"semantic") height:{v3, v4, 1.0, 1.0}];

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

- (NSCollectionLayoutSize)initWithSize:(CGSize)a3 widthSemantic:(int64_t)a4 heightSemantic:(int64_t)a5 width:(id)a6 height:(id)a7
{
  height = a3.height;
  width = a3.width;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = NSCollectionLayoutSize;
  v16 = [(NSCollectionLayoutSize *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_size.width = width;
    v16->_size.height = height;
    v16->_widthSemantic = a4;
    v16->_heightSemantic = a5;
    objc_storeStrong(&v16->_widthDimension, a6);
    objc_storeStrong(&v17->_heightDimension, a7);
  }

  return v17;
}

+ (NSCollectionLayoutSize)sizeWithWidthDimension:(NSCollectionLayoutDimension *)width heightDimension:(NSCollectionLayoutDimension *)height
{
  v6 = height;
  v7 = width;
  v8 = [(NSCollectionLayoutDimension *)v7 semantic];
  v9 = [(NSCollectionLayoutDimension *)v6 semantic];
  [(NSCollectionLayoutDimension *)v7 dimension];
  v11 = v10;
  [(NSCollectionLayoutDimension *)v6 dimension];
  v13 = [[a1 alloc] initWithSize:v8 widthSemantic:v9 heightSemantic:v7 width:v6 height:{v11, v12}];

  return v13;
}

+ (NSCollectionLayoutSize)sizeWithAbsoluteSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [NSCollectionLayoutDimension _dimensionWithDimension:0 semantic:?];
  v7 = [NSCollectionLayoutDimension _dimensionWithDimension:0 semantic:height];
  v8 = [[a1 alloc] initWithSize:0 widthSemantic:0 heightSemantic:v6 width:v7 height:{width, height}];

  return v8;
}

+ (NSCollectionLayoutSize)sizeWithContainerWidthFactor:(double)a3 containerHeightFactor:(double)a4
{
  v7 = [NSCollectionLayoutDimension _dimensionWithDimension:1 semantic:?];
  v8 = [NSCollectionLayoutDimension _dimensionWithDimension:2 semantic:a4];
  v9 = [[a1 alloc] initWithSize:1 widthSemantic:2 heightSemantic:v7 width:v8 height:{a3, a4}];

  return v9;
}

+ (NSCollectionLayoutSize)sizeWithSize:(CGSize)a3 widthSemantic:(int64_t)a4 heightSemantic:(int64_t)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [NSCollectionLayoutDimension _dimensionWithDimension:1 semantic:?];
  v11 = [NSCollectionLayoutDimension _dimensionWithDimension:2 semantic:height];
  v12 = [[a1 alloc] initWithSize:a4 widthSemantic:a5 heightSemantic:v10 width:v11 height:{width, height}];

  return v12;
}

+ (NSCollectionLayoutSize)sizeWithWidth:(double)a3 widthSemantic:(int64_t)a4 height:(double)a5 heightSemantic:(int64_t)a6
{
  v11 = [NSCollectionLayoutDimension _dimensionWithDimension:1 semantic:?];
  v12 = [NSCollectionLayoutDimension _dimensionWithDimension:2 semantic:a5];
  v13 = [[a1 alloc] initWithSize:a4 widthSemantic:a6 heightSemantic:v11 width:v12 height:{a3, a5}];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(NSCollectionLayoutSize *)self size];
  v6 = v5;
  v8 = v7;
  v9 = [(NSCollectionLayoutSize *)self widthSemantic];
  v10 = [(NSCollectionLayoutSize *)self heightSemantic];
  v11 = [(NSCollectionLayoutSize *)self widthDimension];
  v12 = [(NSCollectionLayoutSize *)self heightDimension];
  v13 = [v4 initWithSize:v9 widthSemantic:v10 heightSemantic:v11 width:v12 height:{v6, v8}];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(NSCollectionLayoutSize *)self widthDimension], v5 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutSize *)v4 widthDimension], v6 = objc_claimAutoreleasedReturnValue(), v7 = __objectEqual(v5, v6), v6, v5, v7))
    {
      v8 = [(NSCollectionLayoutSize *)self heightDimension];
      v9 = [(NSCollectionLayoutSize *)v4 heightDimension];
      v10 = __objectEqual(v8, v9);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (CGSize)_effectiveSizeForContainer:(id)a3 displayScale:(double)a4 ignoringInsets:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  [v9 contentInsets];
  v14 = v12 + v13;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  *&v33[4] = a4;
  if (v5)
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
  if (v5)
  {
    v15 = 0.0;
  }

  v28 = self;
  v29 = v33;
  v30 = v15;
  v31 = v14;
  v32 = a2;
  v27 = v9;
  width = self->_size.width;
  widthSemantic = self->_widthSemantic;
  v18 = v9;
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

- (BOOL)_isEstimatedForAxis:(unint64_t)a3
{
  if (a3 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:2053 description:{@"Invalid parameter not satisfying: %@", @"axis == CVCAxisHorizontal || axis == CVCAxisVertical"}];

    goto LABEL_5;
  }

  if (a3 != 2)
  {
LABEL_5:
    v4 = [(NSCollectionLayoutSize *)self widthDimension];
    goto LABEL_6;
  }

  v4 = [(NSCollectionLayoutSize *)self heightDimension];
LABEL_6:
  v7 = v4;
  v8 = [v4 isEstimated];

  return v8;
}

@end