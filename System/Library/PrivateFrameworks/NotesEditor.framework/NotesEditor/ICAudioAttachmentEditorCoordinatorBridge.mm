@interface ICAudioAttachmentEditorCoordinatorBridge
+ (void)renameAttachment:(id)attachment presentingViewController:(id)controller;
@end

@implementation ICAudioAttachmentEditorCoordinatorBridge

+ (void)renameAttachment:(id)attachment presentingViewController:(id)controller
{
  attachmentCopy = attachment;
  v6 = MEMORY[0x277D05D48];
  controllerCopy = controller;
  v8 = [v6 alloc];
  title = [attachmentCopy title];
  v10 = [v8 initWithExistingTitle:title];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__ICAudioAttachmentEditorCoordinatorBridge_renameAttachment_presentingViewController___block_invoke;
  v12[3] = &unk_2781ACF08;
  v13 = attachmentCopy;
  v11 = attachmentCopy;
  [v10 showFromViewController:controllerCopy completion:v12];
}

void __86__ICAudioAttachmentEditorCoordinatorBridge_renameAttachment_presentingViewController___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[ICDocCamScannedDocumentEditor alloc] initWithGalleryAttachment:*(a1 + 32)];
    [(ICDocCamScannedDocumentEditor *)v4 updateDocumentTitle:v3 isUserDefined:1];
  }
}

@end