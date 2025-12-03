@interface MAAbsoluteAssetId
- (BOOL)isEqual:(id)equal;
- (MAAbsoluteAssetId)initWithAssetId:(id)id forAssetType:(id)type attributes:(id)attributes;
- (MAAbsoluteAssetId)initWithCoder:(id)coder;
- (MAAbsoluteAssetId)initWithPlist:(id)plist;
- (id)description;
- (id)diffFrom:(id)from;
- (id)diffFromAsset:(id)asset;
- (id)diffFromAssetId:(id)id assetType:(id)type attributes:(id)attributes;
- (id)encodeAsPlist;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAbsoluteAssetId

- (MAAbsoluteAssetId)initWithAssetId:(id)id forAssetType:(id)type attributes:(id)attributes
{
  idCopy = id;
  typeCopy = type;
  attributesCopy = attributes;
  v33.receiver = self;
  v33.super_class = MAAbsoluteAssetId;
  v12 = [(MAAbsoluteAssetId *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetType, type);
    objc_storeStrong(&v13->_assetId, id);
    v14 = getHashFromAttributesInSet(typeCopy, attributesCopy, 0);
    allAttributesHash = v13->_allAttributesHash;
    v13->_allAttributesHash = v14;

    v16 = getHashFromAssetIdAttributes(typeCopy, attributesCopy);
    assetIdHash = v13->_assetIdHash;
    v13->_assetIdHash = v16;

    v18 = getHashFromNonAssetIdAttributes(typeCopy, attributesCopy);
    nonAssetIdHash = v13->_nonAssetIdHash;
    v13->_nonAssetIdHash = v18;

    v20 = attributesInDownloadContent();
    v21 = getHashFromAttributesInSet(typeCopy, attributesCopy, v20);
    downloadContentHash = v13->_downloadContentHash;
    v13->_downloadContentHash = v21;

    v23 = attributesInDownloadUrl();
    v24 = getHashFromAttributesInSet(typeCopy, attributesCopy, v23);
    downloadUrlHash = v13->_downloadUrlHash;
    v13->_downloadUrlHash = v24;

    v26 = attributesInDownloadPolicy();
    v27 = getHashFromAttributesInSet(typeCopy, attributesCopy, v26);
    downloadPolicyHash = v13->_downloadPolicyHash;
    v13->_downloadPolicyHash = v27;

    v29 = attributesInPallasDynamicAssetId();
    v30 = getHashFromAttributesInSet(typeCopy, attributesCopy, v29);
    pallasAssetIdHash = v13->_pallasAssetIdHash;
    v13->_pallasAssetIdHash = v30;
  }

  return v13;
}

- (MAAbsoluteAssetId)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = MAAbsoluteAssetId;
  v5 = [(MAAbsoluteAssetId *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetId"];
    assetId = v5->_assetId;
    v5->_assetId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributesHash"];
    allAttributesHash = v5->_allAttributesHash;
    v5->_allAttributesHash = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetIdHash"];
    assetIdHash = v5->_assetIdHash;
    v5->_assetIdHash = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonIdHash"];
    nonAssetIdHash = v5->_nonAssetIdHash;
    v5->_nonAssetIdHash = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentHash"];
    downloadContentHash = v5->_downloadContentHash;
    v5->_downloadContentHash = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlHash"];
    downloadUrlHash = v5->_downloadUrlHash;
    v5->_downloadUrlHash = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"policyHash"];
    downloadPolicyHash = v5->_downloadPolicyHash;
    v5->_downloadPolicyHash = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pallasDynamicAssetIdHash"];
    pallasAssetIdHash = v5->_pallasAssetIdHash;
    v5->_pallasAssetIdHash = v22;
  }

  return v5;
}

- (MAAbsoluteAssetId)initWithPlist:(id)plist
{
  plistCopy = plist;
  v25.receiver = self;
  v25.super_class = MAAbsoluteAssetId;
  v5 = [(MAAbsoluteAssetId *)&v25 init];
  if (v5)
  {
    v6 = getPlistString(plistCopy, @"assetId");
    assetId = v5->_assetId;
    v5->_assetId = v6;

    v8 = getPlistString(plistCopy, @"assetType");
    assetType = v5->_assetType;
    v5->_assetType = v8;

    v10 = getPlistString(plistCopy, @"attributesHash");
    allAttributesHash = v5->_allAttributesHash;
    v5->_allAttributesHash = v10;

    v12 = getPlistString(plistCopy, @"assetIdHash");
    assetIdHash = v5->_assetIdHash;
    v5->_assetIdHash = v12;

    v14 = getPlistString(plistCopy, @"nonIdHash");
    nonAssetIdHash = v5->_nonAssetIdHash;
    v5->_nonAssetIdHash = v14;

    v16 = getPlistString(plistCopy, @"contentHash");
    downloadContentHash = v5->_downloadContentHash;
    v5->_downloadContentHash = v16;

    v18 = getPlistString(plistCopy, @"urlHash");
    downloadUrlHash = v5->_downloadUrlHash;
    v5->_downloadUrlHash = v18;

    v20 = getPlistString(plistCopy, @"policyHash");
    downloadPolicyHash = v5->_downloadPolicyHash;
    v5->_downloadPolicyHash = v20;

    v22 = getPlistString(plistCopy, @"pallasDynamicAssetIdHash");
    pallasAssetIdHash = v5->_pallasAssetIdHash;
    v5->_pallasAssetIdHash = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetId = [(MAAbsoluteAssetId *)self assetId];
  [coderCopy encodeObject:assetId forKey:@"assetId"];

  assetType = [(MAAbsoluteAssetId *)self assetType];
  [coderCopy encodeObject:assetType forKey:@"assetType"];

  [coderCopy encodeObject:self->_allAttributesHash forKey:@"attributesHash"];
  [coderCopy encodeObject:self->_assetIdHash forKey:@"assetIdHash"];
  [coderCopy encodeObject:self->_nonAssetIdHash forKey:@"nonIdHash"];
  [coderCopy encodeObject:self->_downloadContentHash forKey:@"contentHash"];
  [coderCopy encodeObject:self->_downloadUrlHash forKey:@"urlHash"];
  [coderCopy encodeObject:self->_downloadPolicyHash forKey:@"policyHash"];
  [coderCopy encodeObject:self->_pallasAssetIdHash forKey:@"pallasDynamicAssetIdHash"];
}

- (id)encodeAsPlist
{
  v3 = objc_opt_new();
  assetId = [(MAAbsoluteAssetId *)self assetId];
  [v3 setValue:assetId forKey:@"assetId"];

  assetType = [(MAAbsoluteAssetId *)self assetType];
  [v3 setValue:assetType forKey:@"assetType"];

  [v3 setValue:self->_allAttributesHash forKey:@"attributesHash"];
  [v3 setValue:self->_assetIdHash forKey:@"assetIdHash"];
  [v3 setValue:self->_nonAssetIdHash forKey:@"nonIdHash"];
  [v3 setValue:self->_downloadContentHash forKey:@"contentHash"];
  [v3 setValue:self->_downloadUrlHash forKey:@"urlHash"];
  [v3 setValue:self->_downloadPolicyHash forKey:@"policyHash"];
  [v3 setValue:self->_pallasAssetIdHash forKey:@"pallasDynamicAssetIdHash"];

  return v3;
}

- (id)diffFrom:(id)from
{
  fromCopy = from;
  if (fromCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    assetType = self->_assetType;
    assetType = [fromCopy assetType];
    v29 = [(NSString *)assetType isEqual:assetType];

    assetId = self->_assetId;
    assetId = [fromCopy assetId];
    v28 = [(NSString *)assetId isEqual:assetId];

    allAttributesHash = self->_allAttributesHash;
    allAttributesHash = [fromCopy allAttributesHash];
    LODWORD(allAttributesHash) = [(NSString *)allAttributesHash isEqual:allAttributesHash];

    assetIdHash = self->_assetIdHash;
    assetIdHash = [fromCopy assetIdHash];
    LODWORD(assetIdHash) = [(NSString *)assetIdHash isEqual:assetIdHash];

    nonAssetIdHash = self->_nonAssetIdHash;
    nonIdHash = [fromCopy nonIdHash];
    LODWORD(nonAssetIdHash) = [(NSString *)nonAssetIdHash isEqual:nonIdHash];

    downloadContentHash = self->_downloadContentHash;
    contentHash = [fromCopy contentHash];
    v17 = [(NSString *)downloadContentHash isEqual:contentHash]^ 1;

    downloadUrlHash = self->_downloadUrlHash;
    urlHash = [fromCopy urlHash];
    LOBYTE(assetType) = [(NSString *)downloadUrlHash isEqual:urlHash]^ 1;

    downloadPolicyHash = self->_downloadPolicyHash;
    policyHash = [fromCopy policyHash];
    LOBYTE(assetId) = [(NSString *)downloadPolicyHash isEqual:policyHash]^ 1;

    pallasAssetIdHash = self->_pallasAssetIdHash;
    pallasDynamicAssetIdHash = [fromCopy pallasDynamicAssetIdHash];
    LODWORD(pallasAssetIdHash) = [(NSString *)pallasAssetIdHash isEqual:pallasDynamicAssetIdHash];

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

- (id)diffFromAsset:(id)asset
{
  absoluteAssetId = [asset absoluteAssetId];
  v5 = [(MAAbsoluteAssetId *)self diffFrom:absoluteAssetId];

  return v5;
}

- (id)diffFromAssetId:(id)id assetType:(id)type attributes:(id)attributes
{
  attributesCopy = attributes;
  typeCopy = type;
  idCopy = id;
  v11 = [[MAAbsoluteAssetId alloc] initWithAssetId:idCopy forAssetType:typeCopy attributes:attributesCopy];

  v12 = [(MAAbsoluteAssetId *)self diffFrom:v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      assetId = [(MAAbsoluteAssetId *)v5 assetId];
      assetId2 = [(MAAbsoluteAssetId *)self assetId];
      if ([assetId isEqualToString:assetId2])
      {
        assetType = [(MAAbsoluteAssetId *)v5 assetType];
        assetType2 = [(MAAbsoluteAssetId *)self assetType];
        v10 = [assetType isEqualToString:assetType2];
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
  hasOnlyAssetTypeAndId = [(MAAbsoluteAssetId *)self hasOnlyAssetTypeAndId];
  v4 = MEMORY[0x1E696AEC0];
  assetType = [(MAAbsoluteAssetId *)self assetType];
  assetId = [(MAAbsoluteAssetId *)self assetId];
  v7 = assetId;
  if (hasOnlyAssetTypeAndId)
  {
    v8 = @"%@:%@";
  }

  else
  {
    v8 = @"%@:%@(+)";
  }

  v9 = [v4 stringWithFormat:v8, assetType, assetId];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  assetId = [(MAAbsoluteAssetId *)self assetId];
  assetType = [(MAAbsoluteAssetId *)self assetType];
  v6 = [v3 stringWithFormat:@"(%@=%@ %@=%@ %@=%@ %@=%@ %@=%@ %@=%@ %@=%@ %@=%@ %@=%@)", @"assetId", assetId, @"assetType", assetType, @"attributesHash", self->_allAttributesHash, @"assetIdHash", self->_assetIdHash, @"nonIdHash", self->_nonAssetIdHash, @"pallasDynamicAssetIdHash", self->_pallasAssetIdHash, @"contentHash", self->_downloadContentHash, @"urlHash", self->_downloadUrlHash, @"policyHash", self->_downloadPolicyHash];

  return v6;
}

@end