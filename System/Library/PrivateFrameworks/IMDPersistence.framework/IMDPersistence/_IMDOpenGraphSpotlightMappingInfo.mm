@interface _IMDOpenGraphSpotlightMappingInfo
+ (id)infoForLinkMetadata:(id)a3;
+ (id)infoForOGType:(id)a3;
- (_IMDOpenGraphSpotlightMappingInfo)initWithOGType:(id)a3 indexer:(id)a4;
- (_IMDOpenGraphSpotlightMappingInfo)initWithOGType:(id)a3 prefix:(id)a4 linkType:(id)a5 linkSubType:(id)a6;
@end

@implementation _IMDOpenGraphSpotlightMappingInfo

+ (id)infoForOGType:(id)a3
{
  v3 = qword_1EBA54258;
  v5 = a3;
  if (v3 != -1)
  {
    sub_1B7CFA8B8();
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(qword_1EBA54250, v4, v5);

  return v6;
}

+ (id)infoForLinkMetadata:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_itemType(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_itemType(v4, v8, v9);
    v12 = objc_msgSend_infoForOGType_(a1, v11, v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_IMDOpenGraphSpotlightMappingInfo)initWithOGType:(id)a3 indexer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_msgSend_prefix(v6, v8, v9);
  v13 = objc_msgSend_linkType(v6, v11, v12);
  v16 = objc_msgSend_linkSubtype(v6, v14, v15);

  v18 = objc_msgSend_initWithOGType_prefix_linkType_linkSubType_(self, v17, v7, v10, v13, v16);
  return v18;
}

- (_IMDOpenGraphSpotlightMappingInfo)initWithOGType:(id)a3 prefix:(id)a4 linkType:(id)a5 linkSubType:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = _IMDOpenGraphSpotlightMappingInfo;
  v15 = [(_IMDOpenGraphSpotlightMappingInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_ogType, a3);
    objc_storeStrong(&v16->_prefix, a4);
    objc_storeStrong(&v16->_linkType, a5);
    objc_storeStrong(&v16->_linkSubType, a6);
  }

  return v16;
}

@end