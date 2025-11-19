@interface ICAudioAttachmentEditorCoordinatorBridge
+ (void)renameAttachment:(id)a3 presentingViewController:(id)a4;
@end

@implementation ICAudioAttachmentEditorCoordinatorBridge

+ (void)renameAttachment:(id)a3 presentingViewController:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277D05D48];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = [v5 title];
  v10 = [v8 initWithExistingTitle:v9];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__ICAudioAttachmentEditorCoordinatorBridge_renameAttachment_presentingViewController___block_invoke;
  v12[3] = &unk_2781ACF08;
  v13 = v5;
  v11 = v5;
  [v10 showFromViewController:v7 completion:v12];
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