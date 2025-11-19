@interface IMDiMessagePipelineResources
- (IMDiMessagePipelineResources)initWithIMDAccount:(id)a3 service:(id)a4 messageStore:(id)a5 storageController:(id)a6 broadcaster:(id)a7 recentsController:(id)a8 chatRegistry:(id)a9 attachmentStore:(id)a10;
@end

@implementation IMDiMessagePipelineResources

- (IMDiMessagePipelineResources)initWithIMDAccount:(id)a3 service:(id)a4 messageStore:(id)a5 storageController:(id)a6 broadcaster:(id)a7 recentsController:(id)a8 chatRegistry:(id)a9 attachmentStore:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = IMDiMessagePipelineResources;
  v19 = [(IMDiMessagePipelineResources *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_imdAccount, a3);
    objc_storeStrong(&v20->_service, a4);
    objc_storeStrong(&v20->_messageStore, a5);
    objc_storeStrong(&v20->_storageController, a6);
    objc_storeStrong(&v20->_broadcaster, a7);
    objc_storeStrong(&v20->_recentsController, a8);
    objc_storeStrong(&v20->_chatRegistry, a9);
    objc_storeStrong(&v20->_attachmentStore, a10);
  }

  return v20;
}

@end