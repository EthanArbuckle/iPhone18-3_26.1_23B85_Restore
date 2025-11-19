@interface SafariFormMetadataController
- (void)didFindSearchURLTemplateString:(id)a3 inFrame:(id)a4 pageController:(id)a5;
- (void)invalidate;
@end

@implementation SafariFormMetadataController

- (void)invalidate
{
  quickWebsiteSearchEventListener = self->_quickWebsiteSearchEventListener;
  self->_quickWebsiteSearchEventListener = 0;

  v4.receiver = self;
  v4.super_class = SafariFormMetadataController;
  [(_SFFormMetadataController *)&v4 invalidate];
}

- (void)didFindSearchURLTemplateString:(id)a3 inFrame:(id)a4 pageController:(id)a5
{
  v28 = a3;
  v11 = a4;
  quickWebsiteSearchEventListener = self->_quickWebsiteSearchEventListener;
  if (!quickWebsiteSearchEventListener)
  {
    v13 = MEMORY[0x277CE3898];
    v14 = a5;
    v17 = objc_msgSend_remoteObjectInterfaceWithProtocol_(v13, v15, &unk_286ADAD38, v16);
    v21 = objc_msgSend__remoteObjectRegistry(v14, v18, v19, v20);

    v24 = objc_msgSend_remoteObjectProxyWithInterface_(v21, v22, v17, v23);
    v25 = self->_quickWebsiteSearchEventListener;
    self->_quickWebsiteSearchEventListener = v24;

    quickWebsiteSearchEventListener = self->_quickWebsiteSearchEventListener;
  }

  v26 = objc_msgSend_URL(v11, v8, v9, v10);
  objc_msgSend_didAutoDetectSiteSpecificSearchProviderWithOriginatingURL_searchURLTemplate_(quickWebsiteSearchEventListener, v27, v26, v28);
}

@end