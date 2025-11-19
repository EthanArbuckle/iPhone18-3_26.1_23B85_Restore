@interface MAAbsoluteAssetId
- (BOOL)isEqual:(id)a3;
- (MAAbsoluteAssetId)initWithAssetId:(id)a3 forAssetType:(id)a4 attributes:(id)a5;
- (MAAbsoluteAssetId)initWithCoder:(id)a3;
- (MAAbsoluteAssetId)initWithPlist:(id)a3;
- (id)description;
- (id)diffFrom:(id)a3;
- (id)diffFromAsset:(id)a3;
- (id)diffFromAssetId:(id)a3 assetType:(id)a4 attributes:(id)a5;
- (id)encodeAsPlist;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAbsoluteAssetId

- (MAAbsoluteAssetId)initWithAssetId:(id)a3 forAssetType:(id)a4 attributes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v33.receiver = self;
  v33.super_class = MAAbsoluteAssetId;
  v12 = [(MAAbsoluteAssetId *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetType, a4);
    objc_storeStrong(&v13->_assetId, a3);
    v14 = getHashFromAttributesInSet(v10, v11, 0);
    allAttributesHash = v13->_allAttributesHash;
    v13->_allAttributesHash = v14;

    v16 = getHashFromAssetIdAttributes(v10, v11);
    assetIdHash = v13->_assetIdHash;
    v13->_assetIdHash = v16;

    v18 = getHashFromNonAssetIdAttributes(v10, v11);
    nonAssetIdHash = v13->_nonAssetIdHash;
    v13->_nonAssetIdHash = v18;

    v20 = attributesInDownloadContent();
    v21 = getHashFromAttributesInSet(v10, v11, v20);
    downloadContentHash = v13->_downloadContentHash;
    v13->_downloadContentHash = v21;

    v23 = attributesInDownloadUrl();
    v24 = getHashFromAttributesInSet(v10, v11, v23);
    downloadUrlHash = v13->_downloadUrlHash;
    v13->_downloadUrlHash = v24;

    v26 = attributesInDownloadPolicy();
    v27 = getHashFromAttributesInSet(v10, v11, v26);
    downloadPolicyHash = v13->_downloadPolicyHash;
    v13->_downloadPolicyHash = v27;

    v29 = attributesInPallasDynamicAssetId();
    v30 = getHashFromAttributesInSet(v10, v11, v29);
    pallasAssetIdHash = v13->_pallasAssetIdHash;
    v13->_pallasAssetIdHash = v30;
  }

  return v13;
}

- (MAAbsoluteAssetId)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MAAbsoluteAssetId;
  v5 = [(MAAbsoluteAssetId *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetId"];
    assetId = v5->_assetId;
    v5->_assetId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributesHash"];
    allAttributesHash = v5->_allAttributesHash;
    v5->_allAttributesHash = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetIdHash"];
    assetIdHash = v5->_assetIdHash;
    v5->_assetIdHash = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonIdHash"];
    nonAssetIdHash = v5->_nonAssetIdHash;
    v5->_nonAssetIdHash = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentHash"];
    downloadContentHash = v5->_downloadContentHash;
    v5->_downloadContentHash = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"urlHash"];
    downloadUrlHash = v5->_downloadUrlHash;
    v5->_downloadUrlHash = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"policyHash"];
    downloadPolicyHash = v5->_downloadPolicyHash;
    v5->_downloadPolicyHash = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pallasDynamicAssetIdHash"];
    pallasAssetIdHash = v5->_pallasAssetIdHash;
    v5->_pallasAssetIdHash = v22;
  }

  return v5;
}

- (MAAbsoluteAssetId)initWithPlist:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MAAbsoluteAssetId;
  v5 = [(MAAbsoluteAssetId *)&v25 init];
  if (v5)
  {
    v6 = getPlistString(v4, @"assetId");
    assetId = v5->_assetId;
    v5->_assetId = v6;

    v8 = getPlistString(v4, @"assetType");
    assetType = v5->_assetType;
    v5->_assetType = v8;

    v10 = getPlistString(v4, @"attributesHash");
    allAttributesHash = v5->_allAttributesHash;
    v5->_allAttributesHash = v10;

    v12 = getPlistString(v4, @"assetIdHash");
    assetIdHash = v5->_assetIdHash;
    v5->_assetIdHash = v12;

    v14 = getPlistString(v4, @"nonIdHash");
    nonAssetIdHash = v5->_nonAssetIdHash;
    v5->_nonAssetIdHash = v14;

    v16 = getPlistString(v4, @"contentHash");
    downloadContentHash = v5->_downloadContentHash;
    v5->_downloadContentHash = v16;

    v18 = getPlistString(v4, @"urlHash");
    downloadUrlHash = v5->_downloadUrlHash;
    v5->_downloadUrlHash = v18;

    v20 = getPlistString(v4, @"policyHash");
    downloadPolicyHash = v5->_downloadPolicyHash;
    v5->_downloadPolicyHash = v20;

    v22 = getPlistString(v4, @"pallasDynamicAssetIdHash");
    pallasAssetIdHash = v5->_pallasAssetIdHash;
    v5->_pallasAssetIdHash = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(MAAbsoluteAssetId *)self assetId];
  [v6 encodeObject:v4 forKey:@"assetId"];

  v5 = [(MAAbsoluteAssetId *)self assetType];
  [v6 encodeObject:v5 forKey:@"assetType"];

  [v6 encodeObject:self->_allAttributesHash forKey:@"attributesHash"];
  [v6 encodeObject:self->_assetIdHash forKey:@"assetIdHash"];
  [v6 encodeObject:self->_nonAssetIdHash forKey:@"nonIdHash"];
  [v6 encodeObject:self->_downloadContentHash forKey:@"contentHash"];
  [v6 encodeObject:self->_downloadUrlHash forKey:@"urlHash"];
  [v6 encodeObject:self->_downloadPolicyHash forKey:@"policyHash"];
  [v6 encodeObject:self->_pallasAssetIdHash forKey:@"pallasDynamicAssetIdHash"];
}

- (id)encodeAsPlist
{
  v3 = objc_opt_new();
  v4 = [(MAAbsoluteAssetId *)self assetId];
  [v3 setValue:v4 forKey:@"assetId"];

  v5 = [(MAAbsoluteAssetId *)self assetType];
  [v3 setValue:v5 forKey:@"assetType"];

  [v3 setValue:self->_allAttributesHash forKey:@"attributesHash"];
  [v3 setValue:self->_assetIdHash forKey:@"assetIdHash"];
  [v3 setValue:self->_nonAssetIdHash forKey:@"nonIdHash"];
  [v3 setValue:self->_downloadContentHash forKey:@"contentHash"];
  [v3 setValue:self->_downloadUrlHash forKey:@"urlHash"];
  [v3 setValue:self->_downloadPolicyHash forKey:@"policyHash"];
  [v3 setValue:self->_pallasAssetIdHash forKey:@"pallasDynamicAssetIdHash"];

  return v3;
}

- (id)diffFrom:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    assetType = self->_assetType;
    v6 = [v4 assetType];
    v29 = [(NSString *)assetType isEqual:v6];

    assetId = self->_assetId;
    v8 = [v4 assetId];
    v28 = [(NSString *)assetId isEqual:v8];

    allAttributesHash = self->_allAttributesHash;
    v10 = [v4 allAttributesHash];
    LODWORD(allAttributesHash) = [(NSString *)allAttributesHash isEqual:v10];

    assetIdHash = self->_assetIdHash;
    v12 = [v4 assetIdHash];
    LODWORD(assetIdHash) = [(NSString *)assetIdHash isEqual:v12];

    nonAssetIdHash = self->_nonAssetIdHash;
    v14 = [v4 nonIdHash];
    LODWORD(nonAssetIdHash) = [(NSString *)nonAssetIdHash isEqual:v14];

    downloadContentHash = self->_downloadContentHash;
    v16 = [v4 contentHash];
    v17 = [(NSString *)downloadContentHash isEqual:v16]^ 1;

    downloadUrlHash = self->_downloadUrlHash;
    v19 = [v4 urlHash];
    LOBYTE(assetType) = [(NSString *)downloadUrlHash isEqual:v19]^ 1;

    downloadPolicyHash = self->_downloadPolicyHash;
    v21 = [v4 policyHash];
    LOBYTE(assetId) = [(NSString *)downloadPolicyHash isEqual:v21]^ 1;

    pallasAssetIdHash = self->_pallasAssetIdHash;
    v23 = [v4 pallasDynamicAssetIdHash];
    LODWORD(pallasAssetIdHash) = [(NSString *)pallasAssetIdHash isEqual:v23];

    BYTE2(v27) = assetId;
    BYTE1(v27) = assetType;
    LOBYTE(v27) = v17;
    v24 = [MAAssetDiff initDifferentAssetType:"initDifferentAssetType:assetId:attributes:assetIdAttributes:dynamicAssetId:nonIdAttributes:content:url:policy:" assetId:v29 ^ 1u attributes:v28 ^ 1u assetIdAttributes:allAttributesHash ^ 1 dynamicAssetId:assetIdHash ^ 1 nonIdAttributes:pallasAssetIdHash ^ 1 content:nonAssetIdHash ^ 1 url:v27 policy:?];
  }

  else
  {
    v24 = +[MAAssetDiff allowEverythingDifferent];
  }

  v25 = v24;

  return v25;
}

- (id)diffFromAsset:(id)a3
{
  v4 = [a3 absoluteAssetId];
  v5 = [(MAAbsoluteAssetId *)self diffFrom:v4];

  return v5;
}

- (id)diffFromAssetId:(id)a3 assetType:(id)a4 attributes:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[MAAbsoluteAssetId alloc] initWithAssetId:v10 forAssetType:v9 attributes:v8];

  v12 = [(MAAbsoluteAssetId *)self diffFrom:v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MAAbsoluteAssetId *)v5 assetId];
      v7 = [(MAAbsoluteAssetId *)self assetId];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(MAAbsoluteAssetId *)v5 assetType];
        v9 = [(MAAbsoluteAssetId *)self assetType];
        v10 = [v8 isEqualToString:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)summary
{
  v3 = [(MAAbsoluteAssetId *)self hasOnlyAssetTypeAndId];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(MAAbsoluteAssetId *)self assetType];
  v6 = [(MAAbsoluteAssetId *)self assetId];
  v7 = v6;
  if (v3)
  {
    v8 = @"%@:%@";
  }

  else
  {
    v8 = @"%@:%@(+)";
  }

  v9 = [v4 stringWithFormat:v8, v5, v6];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAbsoluteAssetId *)self assetId];
  v5 = [(MAAbsoluteAssetId *)self assetType];
  v6 = [v3 stringWithFormat:@"(%@=%@ %@=%@ %@=%@ %@=%@ %@=%@ %@=%@ %@=%@ %@=%@ %@=%@)", @"assetId", v4, @"assetType", v5, @"attributesHash", self->_allAttributesHash, @"assetIdHash", self->_assetIdHash, @"nonIdHash", self->_nonAssetIdHash, @"pallasDynamicAssetIdHash", self->_pallasAssetIdHash, @"contentHash", self->_downloadContentHash, @"urlHash", self->_downloadUrlHash, @"policyHash", self->_downloadPolicyHash];

  return v6;
}

@end