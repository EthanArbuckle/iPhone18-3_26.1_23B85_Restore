@interface IMDCoreSpotlightAppleTVLinkIndexer
- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes;
@end

@implementation IMDCoreSpotlightAppleTVLinkIndexer

- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes
{
  attributesCopy = attributes;
  metadataCopy = metadata;
  v24 = objc_msgSend_specialization(metadataCopy, v8, v9);
  v12 = objc_msgSend_title(v24, v10, v11);
  v14 = objc_msgSend__prefixFromMetadata_(self, v13, metadataCopy);
  objc_msgSend__insertLinkName_prefix_toAttributes_(self, v15, v12, v14, attributesCopy);

  v18 = objc_msgSend_summary(metadataCopy, v16, v17);
  objc_msgSend_setContentDescription_(attributesCopy, v19, v18);

  v22 = objc_msgSend_siteName(metadataCopy, v20, v21);

  objc_msgSend_setUrlDescription_(attributesCopy, v23, v22);
}

@end