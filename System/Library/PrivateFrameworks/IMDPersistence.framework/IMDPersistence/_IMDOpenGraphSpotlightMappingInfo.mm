@interface _IMDOpenGraphSpotlightMappingInfo
+ (id)infoForLinkMetadata:(id)metadata;
+ (id)infoForOGType:(id)type;
- (_IMDOpenGraphSpotlightMappingInfo)initWithOGType:(id)type indexer:(id)indexer;
- (_IMDOpenGraphSpotlightMappingInfo)initWithOGType:(id)type prefix:(id)prefix linkType:(id)linkType linkSubType:(id)subType;
@end

@implementation _IMDOpenGraphSpotlightMappingInfo

+ (id)infoForOGType:(id)type
{
  v3 = qword_1EBA54258;
  typeCopy = type;
  if (v3 != -1)
  {
    sub_1B7CFA8B8();
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(qword_1EBA54250, v4, typeCopy);

  return v6;
}

+ (id)infoForLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  v7 = objc_msgSend_itemType(metadataCopy, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_itemType(metadataCopy, v8, v9);
    v12 = objc_msgSend_infoForOGType_(self, v11, v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_IMDOpenGraphSpotlightMappingInfo)initWithOGType:(id)type indexer:(id)indexer
{
  indexerCopy = indexer;
  typeCopy = type;
  v10 = objc_msgSend_prefix(indexerCopy, v8, v9);
  v13 = objc_msgSend_linkType(indexerCopy, v11, v12);
  v16 = objc_msgSend_linkSubtype(indexerCopy, v14, v15);

  v18 = objc_msgSend_initWithOGType_prefix_linkType_linkSubType_(self, v17, typeCopy, v10, v13, v16);
  return v18;
}

- (_IMDOpenGraphSpotlightMappingInfo)initWithOGType:(id)type prefix:(id)prefix linkType:(id)linkType linkSubType:(id)subType
{
  typeCopy = type;
  prefixCopy = prefix;
  linkTypeCopy = linkType;
  subTypeCopy = subType;
  v18.receiver = self;
  v18.super_class = _IMDOpenGraphSpotlightMappingInfo;
  v15 = [(_IMDOpenGraphSpotlightMappingInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_ogType, type);
    objc_storeStrong(&v16->_prefix, prefix);
    objc_storeStrong(&v16->_linkType, linkType);
    objc_storeStrong(&v16->_linkSubType, subType);
  }

  return v16;
}

@end