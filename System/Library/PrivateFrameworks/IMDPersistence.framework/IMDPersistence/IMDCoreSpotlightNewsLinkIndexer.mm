@interface IMDCoreSpotlightNewsLinkIndexer
- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes;
@end

@implementation IMDCoreSpotlightNewsLinkIndexer

- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes
{
  attributesCopy = attributes;
  metadataCopy = metadata;
  v10 = objc_msgSend_title(metadataCopy, v8, v9);
  objc_msgSend__insertLinkName_toAttributes_(self, v11, v10, attributesCopy);

  v14 = objc_msgSend_summary(metadataCopy, v12, v13);
  objc_msgSend_setContentDescription_(attributesCopy, v15, v14);

  v19 = objc_msgSend_title(metadataCopy, v16, v17);

  objc_msgSend_setUrlDescription_(attributesCopy, v18, v19);
}

@end