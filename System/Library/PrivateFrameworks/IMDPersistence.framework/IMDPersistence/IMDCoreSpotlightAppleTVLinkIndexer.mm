@interface IMDCoreSpotlightAppleTVLinkIndexer
- (void)_mapPropertiesFromMetadata:(id)a3 toAttributes:(id)a4;
@end

@implementation IMDCoreSpotlightAppleTVLinkIndexer

- (void)_mapPropertiesFromMetadata:(id)a3 toAttributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v24 = objc_msgSend_specialization(v7, v8, v9);
  v12 = objc_msgSend_title(v24, v10, v11);
  v14 = objc_msgSend__prefixFromMetadata_(self, v13, v7);
  objc_msgSend__insertLinkName_prefix_toAttributes_(self, v15, v12, v14, v6);

  v18 = objc_msgSend_summary(v7, v16, v17);
  objc_msgSend_setContentDescription_(v6, v19, v18);

  v22 = objc_msgSend_siteName(v7, v20, v21);

  objc_msgSend_setUrlDescription_(v6, v23, v22);
}

@end