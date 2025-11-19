@interface IMDCoreSpotlightNewsLinkIndexer
- (void)_mapPropertiesFromMetadata:(id)a3 toAttributes:(id)a4;
@end

@implementation IMDCoreSpotlightNewsLinkIndexer

- (void)_mapPropertiesFromMetadata:(id)a3 toAttributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_msgSend_title(v7, v8, v9);
  objc_msgSend__insertLinkName_toAttributes_(self, v11, v10, v6);

  v14 = objc_msgSend_summary(v7, v12, v13);
  objc_msgSend_setContentDescription_(v6, v15, v14);

  v19 = objc_msgSend_title(v7, v16, v17);

  objc_msgSend_setUrlDescription_(v6, v18, v19);
}

@end