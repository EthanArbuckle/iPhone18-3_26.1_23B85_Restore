@interface HDCachedQueryMetadata
- (BOOL)isEqual:(id)equal;
- (HDCachedQueryMetadata)initWithCachingIdentifier:(id)identifier sourceEntityPersistentID:(int64_t)d maxAnchor:(int64_t)anchor queryStartIndex:(id)index queryEndIndex:(id)endIndex generationNumber:(int64_t)number buildVersion:(id)version anchorDate:(id)self0 intervalComponents:(id)self1;
@end

@implementation HDCachedQueryMetadata

- (HDCachedQueryMetadata)initWithCachingIdentifier:(id)identifier sourceEntityPersistentID:(int64_t)d maxAnchor:(int64_t)anchor queryStartIndex:(id)index queryEndIndex:(id)endIndex generationNumber:(int64_t)number buildVersion:(id)version anchorDate:(id)self0 intervalComponents:(id)self1
{
  identifierCopy = identifier;
  indexCopy = index;
  endIndexCopy = endIndex;
  versionCopy = version;
  dateCopy = date;
  componentsCopy = components;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCachedQueryMetadataEntity.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"cachingIdentifier != nil"}];
  }

  v35.receiver = self;
  v35.super_class = HDCachedQueryMetadata;
  v21 = [(HDCachedQueryMetadata *)&v35 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    cachingIdentifier = v21->_cachingIdentifier;
    v21->_cachingIdentifier = v22;

    v21->_sourceEntityPersistentID = d;
    v21->_maxAnchor = anchor;
    objc_storeStrong(&v21->_queryStartIndex, index);
    objc_storeStrong(&v21->_queryEndIndex, endIndex);
    v21->_generationNumber = number;
    v24 = [versionCopy copy];
    buildVersion = v21->_buildVersion;
    v21->_buildVersion = v24;

    v26 = [dateCopy copy];
    anchorDate = v21->_anchorDate;
    v21->_anchorDate = v26;

    v28 = [componentsCopy copy];
    intervalComponents = v21->_intervalComponents;
    v21->_intervalComponents = v28;
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      cachingIdentifier = [(HDCachedQueryMetadata *)self cachingIdentifier];
      cachingIdentifier2 = [(HDCachedQueryMetadata *)v5 cachingIdentifier];
      v8 = cachingIdentifier2;
      if (cachingIdentifier == cachingIdentifier2)
      {
      }

      else
      {
        cachingIdentifier3 = [(HDCachedQueryMetadata *)v5 cachingIdentifier];
        if (!cachingIdentifier3)
        {
          goto LABEL_37;
        }

        v10 = cachingIdentifier3;
        cachingIdentifier4 = [(HDCachedQueryMetadata *)self cachingIdentifier];
        cachingIdentifier5 = [(HDCachedQueryMetadata *)v5 cachingIdentifier];
        v13 = [cachingIdentifier4 isEqual:cachingIdentifier5];

        if (!v13)
        {
          goto LABEL_38;
        }
      }

      sourceEntityPersistentID = [(HDCachedQueryMetadata *)self sourceEntityPersistentID];
      if (sourceEntityPersistentID != [(HDCachedQueryMetadata *)v5 sourceEntityPersistentID])
      {
        goto LABEL_38;
      }

      maxAnchor = [(HDCachedQueryMetadata *)self maxAnchor];
      if (maxAnchor != [(HDCachedQueryMetadata *)v5 maxAnchor])
      {
        goto LABEL_38;
      }

      cachingIdentifier = [(HDCachedQueryMetadata *)self queryStartIndex];
      queryStartIndex = [(HDCachedQueryMetadata *)v5 queryStartIndex];
      v8 = queryStartIndex;
      if (cachingIdentifier == queryStartIndex)
      {
      }

      else
      {
        queryStartIndex2 = [(HDCachedQueryMetadata *)v5 queryStartIndex];
        if (!queryStartIndex2)
        {
          goto LABEL_37;
        }

        v19 = queryStartIndex2;
        queryStartIndex3 = [(HDCachedQueryMetadata *)self queryStartIndex];
        queryStartIndex4 = [(HDCachedQueryMetadata *)v5 queryStartIndex];
        v22 = [queryStartIndex3 isEqual:queryStartIndex4];

        if (!v22)
        {
          goto LABEL_38;
        }
      }

      cachingIdentifier = [(HDCachedQueryMetadata *)self queryEndIndex];
      queryEndIndex = [(HDCachedQueryMetadata *)v5 queryEndIndex];
      v8 = queryEndIndex;
      if (cachingIdentifier == queryEndIndex)
      {
      }

      else
      {
        queryEndIndex2 = [(HDCachedQueryMetadata *)v5 queryEndIndex];
        if (!queryEndIndex2)
        {
          goto LABEL_37;
        }

        v25 = queryEndIndex2;
        queryEndIndex3 = [(HDCachedQueryMetadata *)self queryEndIndex];
        queryEndIndex4 = [(HDCachedQueryMetadata *)v5 queryEndIndex];
        v28 = [queryEndIndex3 isEqual:queryEndIndex4];

        if (!v28)
        {
          goto LABEL_38;
        }
      }

      generationNumber = [(HDCachedQueryMetadata *)self generationNumber];
      if (generationNumber != [(HDCachedQueryMetadata *)v5 generationNumber])
      {
        goto LABEL_38;
      }

      cachingIdentifier = [(HDCachedQueryMetadata *)self buildVersion];
      buildVersion = [(HDCachedQueryMetadata *)v5 buildVersion];
      v8 = buildVersion;
      if (cachingIdentifier == buildVersion)
      {
      }

      else
      {
        buildVersion2 = [(HDCachedQueryMetadata *)v5 buildVersion];
        if (!buildVersion2)
        {
          goto LABEL_37;
        }

        v32 = buildVersion2;
        buildVersion3 = [(HDCachedQueryMetadata *)self buildVersion];
        buildVersion4 = [(HDCachedQueryMetadata *)v5 buildVersion];
        v35 = [buildVersion3 isEqualToString:buildVersion4];

        if (!v35)
        {
          goto LABEL_38;
        }
      }

      cachingIdentifier = [(HDCachedQueryMetadata *)self anchorDate];
      anchorDate = [(HDCachedQueryMetadata *)v5 anchorDate];
      v8 = anchorDate;
      if (cachingIdentifier == anchorDate)
      {
      }

      else
      {
        anchorDate2 = [(HDCachedQueryMetadata *)v5 anchorDate];
        if (!anchorDate2)
        {
          goto LABEL_37;
        }

        v38 = anchorDate2;
        anchorDate3 = [(HDCachedQueryMetadata *)self anchorDate];
        anchorDate4 = [(HDCachedQueryMetadata *)v5 anchorDate];
        v41 = [anchorDate3 isEqualToDate:anchorDate4];

        if (!v41)
        {
          goto LABEL_38;
        }
      }

      cachingIdentifier = [(HDCachedQueryMetadata *)self intervalComponents];
      intervalComponents = [(HDCachedQueryMetadata *)v5 intervalComponents];
      v8 = intervalComponents;
      if (cachingIdentifier == intervalComponents)
      {

LABEL_42:
        v14 = 1;
        goto LABEL_39;
      }

      intervalComponents2 = [(HDCachedQueryMetadata *)v5 intervalComponents];
      if (intervalComponents2)
      {
        v44 = intervalComponents2;
        intervalComponents3 = [(HDCachedQueryMetadata *)self intervalComponents];
        intervalComponents4 = [(HDCachedQueryMetadata *)v5 intervalComponents];
        v47 = [intervalComponents3 isEqual:intervalComponents4];

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