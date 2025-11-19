@interface NSCollectionLayoutDimension
+ (NSCollectionLayoutDimension)absoluteDimension:(CGFloat)absoluteDimension;
+ (NSCollectionLayoutDimension)estimatedDimension:(CGFloat)estimatedDimension;
+ (NSCollectionLayoutDimension)fractionalHeightDimension:(CGFloat)fractionalHeight;
+ (NSCollectionLayoutDimension)fractionalWidthDimension:(CGFloat)fractionalWidth;
+ (NSCollectionLayoutDimension)uniformAcrossSiblingsWithEstimate:(CGFloat)estimatedDimension;
+ (id)_dimensionWithDimension:(double)a3 semantic:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (NSCollectionLayoutDimension)initWithDimension:(double)a3 semantic:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NSCollectionLayoutDimension

- (NSCollectionLayoutDimension)initWithDimension:(double)a3 semantic:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = NSCollectionLayoutDimension;
  result = [(NSCollectionLayoutDimension *)&v7 init];
  if (result)
  {
    result->_dimension = a3;
    result->_semantic = a4;
  }

  return result;
}

+ (NSCollectionLayoutDimension)fractionalWidthDimension:(CGFloat)fractionalWidth
{
  if (fractionalWidth <= 0.0)
  {
    v6 = _compLayoutLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_243B9B000, v6, OS_LOG_TYPE_ERROR, "Invalid fractional width dimension, must be > 0.0. NOTE: This will be a hard-assert soon, please update your call site.", buf, 2u);
    }
  }

  if ((*&fractionalWidth & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:1811 description:{@"Invalid fractional width: %g. The fraction must be a finite value.", *&fractionalWidth}];
  }

  v7 = [[a1 alloc] initWithDimension:1 semantic:fractionalWidth];

  return v7;
}

+ (NSCollectionLayoutDimension)fractionalHeightDimension:(CGFloat)fractionalHeight
{
  if (fractionalHeight <= 0.0)
  {
    v6 = _compLayoutLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_243B9B000, v6, OS_LOG_TYPE_ERROR, "Invalid fractional height dimension, must be > 0.0. NOTE: This will be a hard-assert soon, please update your call site.", buf, 2u);
    }
  }

  if ((*&fractionalHeight & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:1819 description:{@"Invalid fractional height: %g. The fraction must be a finite value.", *&fractionalHeight}];
  }

  v7 = [[a1 alloc] initWithDimension:2 semantic:fractionalHeight];

  return v7;
}

+ (NSCollectionLayoutDimension)absoluteDimension:(CGFloat)absoluteDimension
{
  if (absoluteDimension <= 0.0)
  {
    v6 = _compLayoutLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_243B9B000, v6, OS_LOG_TYPE_ERROR, "Invalid absolute dimension, must be > 0.0. NOTE: This will be a hard-assert soon, please update your call site.", buf, 2u);
    }
  }

  if ((*&absoluteDimension & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:1827 description:{@"Invalid absolute dimension: %g. The dimension must be a finite value.", *&absoluteDimension}];
  }

  v7 = [[a1 alloc] initWithDimension:0 semantic:absoluteDimension];

  return v7;
}

+ (NSCollectionLayoutDimension)estimatedDimension:(CGFloat)estimatedDimension
{
  if (estimatedDimension <= 0.0)
  {
    v6 = _compLayoutLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_243B9B000, v6, OS_LOG_TYPE_ERROR, "Invalid estimated dimension, must be > 0. NOTE: This will be a hard-assert soon, please update your call site.", buf, 2u);
    }
  }

  if ((*&estimatedDimension & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:1835 description:{@"Invalid estimated dimension: %g. The dimension must be a finite value.", *&estimatedDimension}];
  }

  v7 = [[a1 alloc] initWithDimension:3 semantic:estimatedDimension];

  return v7;
}

+ (NSCollectionLayoutDimension)uniformAcrossSiblingsWithEstimate:(CGFloat)estimatedDimension
{
  if (estimatedDimension <= 0.0)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:1840 description:{@"Invalid estimated dimension (%g), must be > 0", *&estimatedDimension}];
  }

  if ((*&estimatedDimension & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:1841 description:{@"Invalid estimated dimension: %g. The dimension must be a finite value.", *&estimatedDimension}];
  }

  v6 = [[a1 alloc] initWithDimension:4 semantic:estimatedDimension];

  return v6;
}

+ (id)_dimensionWithDimension:(double)a3 semantic:(int64_t)a4
{
  v4 = [[a1 alloc] initWithDimension:a4 semantic:a3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(NSCollectionLayoutDimension *)self semantic], v5 == [(NSCollectionLayoutDimension *)v4 semantic]))
    {
      [(NSCollectionLayoutDimension *)self dimension];
      v7 = v6;
      [(NSCollectionLayoutDimension *)v4 dimension];
      v9 = vabdd_f64(v7, v8) <= 0.00001;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  [(NSCollectionLayoutDimension *)self dimension];
  v6 = v5;
  v7 = [(NSCollectionLayoutDimension *)self semantic];

  return [v4 initWithDimension:v7 semantic:v6];
}

@end