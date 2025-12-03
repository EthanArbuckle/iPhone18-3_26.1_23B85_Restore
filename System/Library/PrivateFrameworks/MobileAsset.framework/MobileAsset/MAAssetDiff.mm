@interface MAAssetDiff
+ (id)allowEverythingDifferent;
+ (id)requireSameAssetTypeAndAssetId;
+ (id)requireSameAssetTypeAndDownloadContent;
- (BOOL)hasOnlyAllowedDifferences:(id)differences;
- (MAAssetDiff)initWithCoder:(id)coder;
- (MAAssetDiff)initWithPlist:(id)plist;
- (id)encodeAsPlist;
- (id)initDifferentAssetType:(BOOL)type assetId:(BOOL)id attributes:(BOOL)attributes assetIdAttributes:(BOOL)idAttributes dynamicAssetId:(BOOL)assetId nonIdAttributes:(BOOL)nonIdAttributes content:(BOOL)content url:(BOOL)self0 policy:(BOOL)self1;
- (id)initFromDiff:(unint64_t)diff;
- (id)initFromInverseOfCategories:(unint64_t)categories;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAssetDiff

+ (id)requireSameAssetTypeAndAssetId
{
  v2 = categoryInverse(3);

  return allowableDiffFromCategories(v2);
}

+ (id)requireSameAssetTypeAndDownloadContent
{
  v2 = categoryInverse(33);

  return allowableDiffFromCategories(v2);
}

+ (id)allowEverythingDifferent
{
  v2 = categoryInverse(0);

  return allowableDiffFromCategories(v2);
}

- (MAAssetDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MAAssetDiff;
  v5 = [(MAAssetDiff *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diffBits"];
    v5->_diffRaw = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diffMask"];
    v5->_mask = [v7 unsignedIntegerValue];

    v5->_diff = v5->_mask & v5->_diffRaw;
  }

  return v5;
}

- (MAAssetDiff)initWithPlist:(id)plist
{
  plistCopy = plist;
  v9.receiver = self;
  v9.super_class = MAAssetDiff;
  v5 = [(MAAssetDiff *)&v9 init];
  if (v5)
  {
    v6 = getPlistNumber(plistCopy, @"diffBits");
    v5->_diffRaw = [v6 unsignedIntegerValue];

    v7 = getPlistNumber(plistCopy, @"diffMask");
    v5->_mask = [v7 unsignedIntegerValue];

    v5->_diff = v5->_mask & v5->_diffRaw;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  diff = self->_diff;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:diff];
  [coderCopy encodeObject:v7 forKey:@"diffBits"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_mask];
  [coderCopy encodeObject:v8 forKey:@"diffMask"];
}

- (id)encodeAsPlist
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_diff];
  [v3 setValue:v4 forKey:@"diffBits"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_mask];
  [v3 setValue:v5 forKey:@"diffMask"];

  return v3;
}

- (id)initDifferentAssetType:(BOOL)type assetId:(BOOL)id attributes:(BOOL)attributes assetIdAttributes:(BOOL)idAttributes dynamicAssetId:(BOOL)assetId nonIdAttributes:(BOOL)nonIdAttributes content:(BOOL)content url:(BOOL)self0 policy:(BOOL)self1
{
  nonIdAttributesCopy = nonIdAttributes;
  assetIdCopy = assetId;
  idAttributesCopy = idAttributes;
  attributesCopy = attributes;
  idCopy = id;
  if (!type)
  {
    v17 = 0;
    if (!id)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = categoryUnion(0, 1);
  if (idCopy)
  {
LABEL_5:
    v17 = categoryUnion(v17, 2);
  }

LABEL_6:
  if (attributesCopy)
  {
    v17 = categoryUnion(v17, 4);
    if (!idAttributesCopy)
    {
LABEL_8:
      if (!nonIdAttributesCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if (!idAttributesCopy)
  {
    goto LABEL_8;
  }

  v17 = categoryUnion(v17, 8);
  if (!nonIdAttributesCopy)
  {
LABEL_9:
    if (!content)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v17 = categoryUnion(v17, 16);
  if (!content)
  {
LABEL_10:
    if (!url)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v17 = categoryUnion(v17, 32);
  if (!url)
  {
LABEL_11:
    if (!policy)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v17 = categoryUnion(v17, 64);
  if (!policy)
  {
LABEL_12:
    if (!assetIdCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_22:
  v17 = categoryUnion(v17, 128);
  if (assetIdCopy)
  {
LABEL_13:
    v17 = categoryUnion(v17, 256);
  }

LABEL_14:

  return [(MAAssetDiff *)self initFromDiff:v17];
}

- (id)initFromDiff:(unint64_t)diff
{
  diffCopy = diff;
  v7.receiver = self;
  v7.super_class = MAAssetDiff;
  v4 = [(MAAssetDiff *)&v7 init];
  if (v4)
  {
    v5 = categoryClean(diffCopy);
    v4->_mask = 511;
    v4->_diffRaw = v5;
    v4->_diff = v5 & 0x1FF;
  }

  return v4;
}

- (id)initFromInverseOfCategories:(unint64_t)categories
{
  v4 = categoryInverse(categories);

  return [(MAAssetDiff *)self initFromDiff:v4];
}

- (BOOL)hasOnlyAllowedDifferences:(id)differences
{
  if (differences)
  {
    category = [differences category];
  }

  else
  {
    category = 0;
  }

  v5 = categoryInverse(category);
  v6 = categoryIntersection(self->_diff, v5);

  return isCategoryNone(v6);
}

@end