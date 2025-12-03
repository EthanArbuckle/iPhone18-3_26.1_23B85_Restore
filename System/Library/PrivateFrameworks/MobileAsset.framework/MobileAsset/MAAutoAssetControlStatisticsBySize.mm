@interface MAAutoAssetControlStatisticsBySize
- (MAAutoAssetControlStatisticsBySize)initWithCoder:(id)coder;
- (MAAutoAssetControlStatisticsBySize)initWithInitialValue:(int64_t)value;
- (id)copy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetControlStatisticsBySize

- (MAAutoAssetControlStatisticsBySize)initWithInitialValue:(int64_t)value
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetControlStatisticsBySize;
  result = [(MAAutoAssetControlStatisticsBySize *)&v5 init];
  if (result)
  {
    result->_patchedAssets = value;
    result->_patchedBytes = value;
    result->_fullAssets = value;
    result->_fullBytes = value;
  }

  return result;
}

- (MAAutoAssetControlStatisticsBySize)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MAAutoAssetControlStatisticsBySize;
  v5 = [(MAAutoAssetControlStatisticsBySize *)&v7 init];
  if (v5)
  {
    v5->_patchedAssets = [coderCopy decodeInt64ForKey:@"patchedAssets"];
    v5->_patchedBytes = [coderCopy decodeInt64ForKey:@"patchedBytes"];
    v5->_fullAssets = [coderCopy decodeInt64ForKey:@"fullAssets"];
    v5->_fullBytes = [coderCopy decodeInt64ForKey:@"fullBytes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsBySize patchedAssets](self forKey:{"patchedAssets"), @"patchedAssets"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsBySize patchedBytes](self forKey:{"patchedBytes"), @"patchedBytes"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsBySize fullAssets](self forKey:{"fullAssets"), @"fullAssets"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatisticsBySize fullBytes](self forKey:{"fullBytes"), @"fullBytes"}];
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