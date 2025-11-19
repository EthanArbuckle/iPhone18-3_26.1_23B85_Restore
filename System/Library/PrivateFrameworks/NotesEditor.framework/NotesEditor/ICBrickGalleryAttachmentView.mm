@interface ICBrickGalleryAttachmentView
- (void)didChangeAttachmentTitle;
- (void)didChangeMergeableData;
- (void)openAttachment;
@end

@implementation ICBrickGalleryAttachmentView

- (void)openAttachment
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_2151A1000, a2, OS_LOG_TYPE_DEBUG, "No sub attachments downloaded for %@", &v4, 0xCu);
}

- (void)didChangeAttachmentTitle
{
  v3 = [(ICBrickGalleryAttachmentView *)self galleryEditorController];
  [v3 attachmentTitleDidChange];

  [(ICBrickTextAttachmentView *)self requestAttachmentContentUpdate];
}

- (void)didChangeMergeableData
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ICBrickGalleryAttachmentView_didChangeMergeableData__block_invoke;
  block[3] = &unk_2781ABCF8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __54__ICBrickGalleryAttachmentView_didChangeMergeableData__block_invoke(uint64_t a1)
{
  [*(a1 + 32) requestAttachmentContentUpdate];
  v2 = [*(a1 + 32) galleryEditorController];
  v3 = [v2 updateDocumentViewControllerFromModel];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);

    [v4 setGalleryEditorController:0];
  }
}

@end