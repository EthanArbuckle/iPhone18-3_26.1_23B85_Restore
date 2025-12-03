@interface IMDiMessagePipelineResources
- (IMDiMessagePipelineResources)initWithIMDAccount:(id)account service:(id)service messageStore:(id)store storageController:(id)controller broadcaster:(id)broadcaster recentsController:(id)recentsController chatRegistry:(id)registry attachmentStore:(id)self0;
@end

@implementation IMDiMessagePipelineResources

- (IMDiMessagePipelineResources)initWithIMDAccount:(id)account service:(id)service messageStore:(id)store storageController:(id)controller broadcaster:(id)broadcaster recentsController:(id)recentsController chatRegistry:(id)registry attachmentStore:(id)self0
{
  accountCopy = account;
  serviceCopy = service;
  storeCopy = store;
  controllerCopy = controller;
  broadcasterCopy = broadcaster;
  recentsControllerCopy = recentsController;
  registryCopy = registry;
  attachmentStoreCopy = attachmentStore;
  v28.receiver = self;
  v28.super_class = IMDiMessagePipelineResources;
  v19 = [(IMDiMessagePipelineResources *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_imdAccount, account);
    objc_storeStrong(&v20->_service, service);
    objc_storeStrong(&v20->_messageStore, store);
    objc_storeStrong(&v20->_storageController, controller);
    objc_storeStrong(&v20->_broadcaster, broadcaster);
    objc_storeStrong(&v20->_recentsController, recentsController);
    objc_storeStrong(&v20->_chatRegistry, registry);
    objc_storeStrong(&v20->_attachmentStore, attachmentStore);
  }

  return v20;
}

@end