@interface MAAssetDiff
+ (id)allowEverythingDifferent;
+ (id)requireSameAssetTypeAndAssetId;
+ (id)requireSameAssetTypeAndDownloadContent;
- (BOOL)hasOnlyAllowedDifferences:(id)a3;
- (MAAssetDiff)initWithCoder:(id)a3;
- (MAAssetDiff)initWithPlist:(id)a3;
- (id)encodeAsPlist;
- (id)initDifferentAssetType:(BOOL)a3 assetId:(BOOL)a4 attributes:(BOOL)a5 assetIdAttributes:(BOOL)a6 dynamicAssetId:(BOOL)a7 nonIdAttributes:(BOOL)a8 content:(BOOL)a9 url:(BOOL)a10 policy:(BOOL)a11;
- (id)initFromDiff:(unint64_t)a3;
- (id)initFromInverseOfCategories:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
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

- (MAAssetDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MAAssetDiff;
  v5 = [(MAAssetDiff *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diffBits"];
    v5->_diffRaw = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diffMask"];
    v5->_mask = [v7 unsignedIntegerValue];

    v5->_diff = v5->_mask & v5->_diffRaw;
  }

  return v5;
}

- (MAAssetDiff)initWithPlist:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MAAssetDiff;
  v5 = [(MAAssetDiff *)&v9 init];
  if (v5)
  {
    v6 = getPlistNumber(v4, @"diffBits");
    v5->_diffRaw = [v6 unsignedIntegerValue];

    v7 = getPlistNumber(v4, @"diffMask");
    v5->_mask = [v7 unsignedIntegerValue];

    v5->_diff = v5->_mask & v5->_diffRaw;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  diff = self->_diff;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:diff];
  [v6 encodeObject:v7 forKey:@"diffBits"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_mask];
  [v6 encodeObject:v8 forKey:@"diffMask"];
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

- (id)initDifferentAssetType:(BOOL)a3 assetId:(BOOL)a4 attributes:(BOOL)a5 assetIdAttributes:(BOOL)a6 dynamicAssetId:(BOOL)a7 nonIdAttributes:(BOOL)a8 content:(BOOL)a9 url:(BOOL)a10 policy:(BOOL)a11
{
  v11 = a8;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  if (!a3)
  {
    v17 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = categoryUnion(0, 1);
  if (v15)
  {
LABEL_5:
    v17 = categoryUnion(v17, 2);
  }

LABEL_6:
  if (v14)
  {
    v17 = categoryUnion(v17, 4);
    if (!v13)
    {
LABEL_8:
      if (!v11)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if (!v13)
  {
    goto LABEL_8;
  }

  v17 = categoryUnion(v17, 8);
  if (!v11)
  {
LABEL_9:
    if (!a9)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v17 = categoryUnion(v17, 16);
  if (!a9)
  {
LABEL_10:
    if (!a10)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v17 = categoryUnion(v17, 32);
  if (!a10)
  {
LABEL_11:
    if (!a11)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v17 = categoryUnion(v17, 64);
  if (!a11)
  {
LABEL_12:
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_22:
  v17 = categoryUnion(v17, 128);
  if (v12)
  {
LABEL_13:
    v17 = categoryUnion(v17, 256);
  }

LABEL_14:

  return [(MAAssetDiff *)self initFromDiff:v17];
}

- (id)initFromDiff:(unint64_t)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MAAssetDiff;
  v4 = [(MAAssetDiff *)&v7 init];
  if (v4)
  {
    v5 = categoryClean(v3);
    v4->_mask = 511;
    v4->_diffRaw = v5;
    v4->_diff = v5 & 0x1FF;
  }

  return v4;
}

- (id)initFromInverseOfCategories:(unint64_t)a3
{
  v4 = categoryInverse(a3);

  return [(MAAssetDiff *)self initFromDiff:v4];
}

- (BOOL)hasOnlyAllowedDifferences:(id)a3
{
  if (a3)
  {
    v4 = [a3 category];
  }

  else
  {
    v4 = 0;
  }

  v5 = categoryInverse(v4);
  v6 = categoryIntersection(self->_diff, v5);

  return isCategoryNone(v6);
}

@end