@interface HDCachedQueryMetadata
- (BOOL)isEqual:(id)a3;
- (HDCachedQueryMetadata)initWithCachingIdentifier:(id)a3 sourceEntityPersistentID:(int64_t)a4 maxAnchor:(int64_t)a5 queryStartIndex:(id)a6 queryEndIndex:(id)a7 generationNumber:(int64_t)a8 buildVersion:(id)a9 anchorDate:(id)a10 intervalComponents:(id)a11;
@end

@implementation HDCachedQueryMetadata

- (HDCachedQueryMetadata)initWithCachingIdentifier:(id)a3 sourceEntityPersistentID:(int64_t)a4 maxAnchor:(int64_t)a5 queryStartIndex:(id)a6 queryEndIndex:(id)a7 generationNumber:(int64_t)a8 buildVersion:(id)a9 anchorDate:(id)a10 intervalComponents:(id)a11
{
  v17 = a3;
  v34 = a6;
  v33 = a7;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  if (!v17)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"HDCachedQueryMetadataEntity.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"cachingIdentifier != nil"}];
  }

  v35.receiver = self;
  v35.super_class = HDCachedQueryMetadata;
  v21 = [(HDCachedQueryMetadata *)&v35 init];
  if (v21)
  {
    v22 = [v17 copy];
    cachingIdentifier = v21->_cachingIdentifier;
    v21->_cachingIdentifier = v22;

    v21->_sourceEntityPersistentID = a4;
    v21->_maxAnchor = a5;
    objc_storeStrong(&v21->_queryStartIndex, a6);
    objc_storeStrong(&v21->_queryEndIndex, a7);
    v21->_generationNumber = a8;
    v24 = [v18 copy];
    buildVersion = v21->_buildVersion;
    v21->_buildVersion = v24;

    v26 = [v19 copy];
    anchorDate = v21->_anchorDate;
    v21->_anchorDate = v26;

    v28 = [v20 copy];
    intervalComponents = v21->_intervalComponents;
    v21->_intervalComponents = v28;
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HDCachedQueryMetadata *)self cachingIdentifier];
      v7 = [(HDCachedQueryMetadata *)v5 cachingIdentifier];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HDCachedQueryMetadata *)v5 cachingIdentifier];
        if (!v9)
        {
          goto LABEL_37;
        }

        v10 = v9;
        v11 = [(HDCachedQueryMetadata *)self cachingIdentifier];
        v12 = [(HDCachedQueryMetadata *)v5 cachingIdentifier];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_38;
        }
      }

      v15 = [(HDCachedQueryMetadata *)self sourceEntityPersistentID];
      if (v15 != [(HDCachedQueryMetadata *)v5 sourceEntityPersistentID])
      {
        goto LABEL_38;
      }

      v16 = [(HDCachedQueryMetadata *)self maxAnchor];
      if (v16 != [(HDCachedQueryMetadata *)v5 maxAnchor])
      {
        goto LABEL_38;
      }

      v6 = [(HDCachedQueryMetadata *)self queryStartIndex];
      v17 = [(HDCachedQueryMetadata *)v5 queryStartIndex];
      v8 = v17;
      if (v6 == v17)
      {
      }

      else
      {
        v18 = [(HDCachedQueryMetadata *)v5 queryStartIndex];
        if (!v18)
        {
          goto LABEL_37;
        }

        v19 = v18;
        v20 = [(HDCachedQueryMetadata *)self queryStartIndex];
        v21 = [(HDCachedQueryMetadata *)v5 queryStartIndex];
        v22 = [v20 isEqual:v21];

        if (!v22)
        {
          goto LABEL_38;
        }
      }

      v6 = [(HDCachedQueryMetadata *)self queryEndIndex];
      v23 = [(HDCachedQueryMetadata *)v5 queryEndIndex];
      v8 = v23;
      if (v6 == v23)
      {
      }

      else
      {
        v24 = [(HDCachedQueryMetadata *)v5 queryEndIndex];
        if (!v24)
        {
          goto LABEL_37;
        }

        v25 = v24;
        v26 = [(HDCachedQueryMetadata *)self queryEndIndex];
        v27 = [(HDCachedQueryMetadata *)v5 queryEndIndex];
        v28 = [v26 isEqual:v27];

        if (!v28)
        {
          goto LABEL_38;
        }
      }

      v29 = [(HDCachedQueryMetadata *)self generationNumber];
      if (v29 != [(HDCachedQueryMetadata *)v5 generationNumber])
      {
        goto LABEL_38;
      }

      v6 = [(HDCachedQueryMetadata *)self buildVersion];
      v30 = [(HDCachedQueryMetadata *)v5 buildVersion];
      v8 = v30;
      if (v6 == v30)
      {
      }

      else
      {
        v31 = [(HDCachedQueryMetadata *)v5 buildVersion];
        if (!v31)
        {
          goto LABEL_37;
        }

        v32 = v31;
        v33 = [(HDCachedQueryMetadata *)self buildVersion];
        v34 = [(HDCachedQueryMetadata *)v5 buildVersion];
        v35 = [v33 isEqualToString:v34];

        if (!v35)
        {
          goto LABEL_38;
        }
      }

      v6 = [(HDCachedQueryMetadata *)self anchorDate];
      v36 = [(HDCachedQueryMetadata *)v5 anchorDate];
      v8 = v36;
      if (v6 == v36)
      {
      }

      else
      {
        v37 = [(HDCachedQueryMetadata *)v5 anchorDate];
        if (!v37)
        {
          goto LABEL_37;
        }

        v38 = v37;
        v39 = [(HDCachedQueryMetadata *)self anchorDate];
        v40 = [(HDCachedQueryMetadata *)v5 anchorDate];
        v41 = [v39 isEqualToDate:v40];

        if (!v41)
        {
          goto LABEL_38;
        }
      }

      v6 = [(HDCachedQueryMetadata *)self intervalComponents];
      v42 = [(HDCachedQueryMetadata *)v5 intervalComponents];
      v8 = v42;
      if (v6 == v42)
      {

LABEL_42:
        v14 = 1;
        goto LABEL_39;
      }

      v43 = [(HDCachedQueryMetadata *)v5 intervalComponents];
      if (v43)
      {
        v44 = v43;
        v45 = [(HDCachedQueryMetadata *)self intervalComponents];
        v46 = [(HDCachedQueryMetadata *)v5 intervalComponents];
        v47 = [v45 isEqual:v46];

        if (v47)
        {
          goto LABEL_42;
        }

LABEL_38:
        v14 = 0;
LABEL_39:

        goto LABEL_40;
      }

LABEL_37:

      goto LABEL_38;
    }

    v14 = 0;
  }

LABEL_40:

  return v14;
}

@end