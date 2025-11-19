@interface MAAutoAssetControlStatisticsBySize
- (MAAutoAssetControlStatisticsBySize)initWithCoder:(id)a3;
- (MAAutoAssetControlStatisticsBySize)initWithInitialValue:(int64_t)a3;
- (id)copy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetControlStatisticsBySize

- (MAAutoAssetControlStatisticsBySize)initWithInitialValue:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetControlStatisticsBySize;
  result = [(MAAutoAssetControlStatisticsBySize *)&v5 init];
  if (result)
  {
    result->_patchedAssets = a3;
    result->_patchedBytes = a3;
    result->_fullAssets = a3;
    result->_fullBytes = a3;
  }

  return result;
}

- (MAAutoAssetControlStatisticsBySize)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MAAutoAssetControlStatisticsBySize;
  v5 = [(MAAutoAssetControlStatisticsBySize *)&v7 init];
  if (v5)
  {
    v5->_patchedAssets = [v4 decodeInt64ForKey:@"patchedAssets"];
    v5->_patchedBytes = [v4 decodeInt64ForKey:@"patchedBytes"];
    v5->_fullAssets = [v4 decodeInt64ForKey:@"fullAssets"];
    v5->_fullBytes = [v4 decodeInt64ForKey:@"fullBytes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsBySize patchedAssets](self forKey:{"patchedAssets"), @"patchedAssets"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsBySize patchedBytes](self forKey:{"patchedBytes"), @"patchedBytes"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsBySize fullAssets](self forKey:{"fullAssets"), @"fullAssets"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsBySize fullBytes](self forKey:{"fullBytes"), @"fullBytes"}];
}

- (id)copy
{
  v3 = objc_alloc_init(MAAutoAssetControlStatisticsBySize);
  [(MAAutoAssetControlStatisticsBySize *)v3 setPatchedAssets:[(MAAutoAssetControlStatisticsBySize *)self patchedAssets]];
  [(MAAutoAssetControlStatisticsBySize *)v3 setPatchedBytes:[(MAAutoAssetControlStatisticsBySize *)self patchedBytes]];
  [(MAAutoAssetControlStatisticsBySize *)v3 setFullAssets:[(MAAutoAssetControlStatisticsBySize *)self fullAssets]];
  [(MAAutoAssetControlStatisticsBySize *)v3 setFullBytes:[(MAAutoAssetControlStatisticsBySize *)self fullBytes]];
  return v3;
}

@end