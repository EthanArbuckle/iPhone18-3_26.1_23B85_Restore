@interface CUIKAttachmentDownloadController
+ (BOOL)_attachmentIsViewable:(id)viewable;
+ (id)_keyForAttachment:(id)attachment;
- (CUIKAttachmentDownloadController)initWithAttachment:(id)attachment;
- (CUIKAttachmentDownloadControllerDelegate)delegate;
- (id)attachmentFilename;
- (id)attachmentIdentifier;
- (id)event;
- (void)cellSelected;
- (void)setDelegate:(id)delegate;
- (void)startAttachmentDownload;
- (void)tearDown;
@end

@implementation CUIKAttachmentDownloadController

+ (BOOL)_attachmentIsViewable:(id)viewable
{
  viewableCopy = viewable;
  uUID = [viewableCopy UUID];
  if (uUID)
  {
  }

  else
  {
    uRLForPendingFileCopy = [viewableCopy URLForPendingFileCopy];

    if (!uRLForPendingFileCopy)
    {
      goto LABEL_7;
    }
  }

  localURL = [viewableCopy localURL];

  if (localURL || ([viewableCopy URL], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    LOBYTE(uRLForPendingFileCopy) = 1;
  }

  else
  {
    uRLForPendingFileCopy2 = [viewableCopy URLForPendingFileCopy];
    uRLForPendingFileCopy = uRLForPendingFileCopy2 != 0;
  }

LABEL_7:

  return uRLForPendingFileCopy;
}

+ (id)_keyForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  uUID = [attachmentCopy UUID];

  if (uUID)
  {
    uUID2 = [attachmentCopy UUID];
  }

  else
  {
    uUID2 = [attachmentCopy URLForPendingFileCopy];

    if (uUID2)
    {
      uRLForPendingFileCopy = [attachmentCopy URLForPendingFileCopy];
      uUID2 = [uRLForPendingFileCopy absoluteString];
    }
  }

  return uUID2;
}

- (CUIKAttachmentDownloadController)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v8.receiver = self;
  v8.super_class = CUIKAttachmentDownloadController;
  v5 = [(CUIKAttachmentDownloadController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CUIKAttachmentDownloadController *)v5 setAttachment:attachmentCopy];
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  obj = delegateCopy;
  if (!delegateCopy)
  {
    [(CUIKAttachmentDownloadController *)self tearDown];
    delegateCopy = 0;
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (void)tearDown
{
  downloadID = self->_downloadID;
  if (downloadID)
  {
    v4 = downloadID;
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__CUIKAttachmentDownloadController_tearDown__block_invoke;
    block[3] = &unk_1E8399BD8;
    v8 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    [(CUIKAttachmentDownloadController *)self _clearDownloadID];
  }
}

void __44__CUIKAttachmentDownloadController_tearDown__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E69998A8] sharedConnection];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKAttachmentDomain" code:1 userInfo:0];
  [v4 cancelDownloadingAttachmentWithDownloadID:v2 error:v3];
}

- (id)attachmentFilename
{
  fileName = [(EKAttachment *)self->_attachment fileName];
  v3 = fileName;
  if (fileName)
  {
    v4 = fileName;
  }

  else
  {
    v5 = CUIKBundle();
    v4 = [v5 localizedStringForKey:@"Untitled Attachment" value:&stru_1F4AA8958 table:0];
  }

  return v4;
}

- (id)attachmentIdentifier
{
  v3 = objc_opt_class();
  attachment = self->_attachment;

  return [v3 _keyForAttachment:attachment];
}

- (id)event
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 owningEventForAttachmentDownloadController:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)cellSelected
{
  localURL = [(EKAttachment *)self->_attachment localURL];
  attachment = self->_attachment;
  if (localURL)
  {
    [(EKAttachment *)attachment localURL];
  }

  else
  {
    [(EKAttachment *)attachment URLForPendingFileCopy];
  }
  v5 = ;

  if (v5)
  {
    scheme = [v5 scheme];

    if (!scheme)
    {
      v7 = MEMORY[0x1E695DFF8];
      path = [v5 path];
      v9 = [v7 fileURLWithPath:path];

      v5 = v9;
    }
  }

  attachmentFilename = [(CUIKAttachmentDownloadController *)self attachmentFilename];
  pathExtension = [attachmentFilename pathExtension];
  uUID = [(EKAttachment *)self->_attachment UUID];
  event = [(CUIKAttachmentDownloadController *)self event];
  calendar = [event calendar];
  source = [calendar source];
  constraints = [source constraints];
  requiresOpeningAttachmentAsLink = [constraints requiresOpeningAttachmentAsLink];

  if (requiresOpeningAttachmentAsLink)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v19 = [(EKAttachment *)self->_attachment URL];
    [WeakRetained openExternalAttachmentURLInBrowser:v19];

LABEL_17:
    goto LABEL_18;
  }

  pathExtension2 = [v5 pathExtension];
  if ([pathExtension2 isEqualToString:@"zip"])
  {
    v21 = [pathExtension isEqualToString:@"zip"];

    if ((v21 & 1) == 0)
    {
      WeakRetained = [MEMORY[0x1E6966960] createTempDestinationURLWithExtension:pathExtension];
      path2 = [v5 path];
      path3 = [WeakRetained path];
      v24 = UnzipArchive();

      if (v24)
      {
        v25 = objc_loadWeakRetained(&self->_delegate);
        [v25 presentPreviewWithURL:WeakRetained fileName:attachmentFilename ekAttachment:self->_attachment];
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained presentPreviewWithURL:v5 fileName:attachmentFilename ekAttachment:self->_attachment];
    goto LABEL_17;
  }

  if (uUID)
  {
    v26 = [(EKAttachment *)self->_attachment URL];
    if (v26)
    {
      downloadID = self->_downloadID;

      if (!downloadID)
      {
        calendar2 = [event calendar];
        source2 = [calendar2 source];
        externalID = [source2 externalID];

        calendar3 = [event calendar];
        LODWORD(source2) = [calendar3 isSubscribed];

        if (source2)
        {
          v32 = [externalID compare:@"Subscribed Calendars"] == 0;
        }

        else
        {
          v32 = 0;
        }

        if (!externalID || v32)
        {
          calendar4 = [event calendar];
          eventStore = [calendar4 eventStore];
          [eventStore defaultCalendarForNewEvents];
          v34 = v51 = externalID;
          source3 = [v34 source];
          externalID2 = [source3 externalID];

          externalID = externalID2;
          if (!externalID2)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __48__CUIKAttachmentDownloadController_cellSelected__block_invoke;
            block[3] = &unk_1E8399BD8;
            block[4] = self;
            dispatch_async(MEMORY[0x1E69E96A0], block);
            goto LABEL_18;
          }
        }

        calendar5 = [event calendar];
        source4 = [calendar5 source];

        if ([source4 sourceType] == 1)
        {
          v39 = 0;
          v40 = 0;
        }

        else
        {
          v52 = externalID;
          v50 = [(EKAttachment *)self->_attachment URL];
          serverUsesSSL = [source4 serverUsesSSL];
          serverHost = [source4 serverHost];
          v43 = objc_alloc_init(MEMORY[0x1E696AF20]);
          v44 = v43;
          if (serverUsesSSL)
          {
            v45 = @"https";
          }

          else
          {
            v45 = @"http";
          }

          [v43 setScheme:v45];
          [v44 setHost:serverHost];
          v40 = [v44 URL];

          v39 = v50;
          if (![MEMORY[0x1E6992F10] attachmentURL:v50 matchesServerURL:v40])
          {
            v48 = objc_loadWeakRetained(&self->_delegate);
            v46 = [(EKAttachment *)self->_attachment URL];
            host = [v46 host];
            v53[0] = MEMORY[0x1E69E9820];
            v53[1] = 3221225472;
            v53[2] = __48__CUIKAttachmentDownloadController_cellSelected__block_invoke_2;
            v53[3] = &unk_1E8399BD8;
            v53[4] = self;
            [v48 promptToDownloadAttachmentFromHost:host promptToDownloadCallBack:v53];

            v39 = v50;
            externalID = v52;
            goto LABEL_37;
          }

          externalID = v52;
        }

        [(CUIKAttachmentDownloadController *)self startAttachmentDownload];
LABEL_37:
      }
    }
  }

LABEL_18:
}

void __48__CUIKAttachmentDownloadController_cellSelected__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 attachmentDownloadErrorWithIsSubscribedCalendar:0];
}

- (void)startAttachmentDownload
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  attachmentIdentifier = [(CUIKAttachmentDownloadController *)self attachmentIdentifier];
  [WeakRetained updateAttachmentStatusWithIdentifier:attachmentIdentifier isLoading:1];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__CUIKAttachmentDownloadController_startAttachmentDownload__block_invoke;
  aBlock[3] = &unk_1E8399C00;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  event = [(CUIKAttachmentDownloadController *)self event];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__CUIKAttachmentDownloadController_startAttachmentDownload__block_invoke_2;
  v17[3] = &unk_1E8399C28;
  v17[4] = self;
  v18 = event;
  v7 = event;
  v8 = _Block_copy(v17);
  calendar = [v7 calendar];
  source = [calendar source];
  externalID = [source externalID];

  mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
  uUID = [(EKAttachment *)self->_attachment UUID];
  v14 = dispatch_get_global_queue(0, 0);
  v15 = [mEMORY[0x1E69998A8] beginDownloadingAttachmentWithUUID:uUID accountID:externalID queue:v14 progressBlock:v5 completionBlock:v8];
  downloadID = self->_downloadID;
  self->_downloadID = v15;
}

void __59__CUIKAttachmentDownloadController_startAttachmentDownload__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [*(a1 + 32) delegate];
  v8 = [*(a1 + 32) attachmentIdentifier];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
  [v11 updateAttachmentDownloadProgressWithIdentifier:v8 downloadedBytes:v9 outOfTotalBytes:v10];
}

void __59__CUIKAttachmentDownloadController_startAttachmentDownload__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = [v9 delegate];
    v11 = [*(a1 + 32) attachmentIdentifier];
    [v10 updateAttachmentStatusWithIdentifier:v11 isLoading:0];

    v12 = [v8 domain];
    LOBYTE(v11) = [v12 isEqualToString:@"EKAttachmentDomain"];

    if (v11)
    {
      goto LABEL_8;
    }

    v13 = [*(a1 + 32) delegate];
    v14 = [*(a1 + 40) calendar];
    [v13 attachmentDownloadErrorWithIsSubscribedCalendar:{objc_msgSend(v14, "isSubscribed")}];
    goto LABEL_6;
  }

  [v9[2] refresh];
  v13 = [*(*(a1 + 32) + 16) localURL];
  if (v13)
  {
    v15 = [*(a1 + 32) delegate];
    v16 = [*(a1 + 32) attachmentIdentifier];
    [v15 updateAttachmentStatusWithIdentifier:v16 isLoading:0];

    v14 = [*(a1 + 32) delegate];
    v17 = [*(a1 + 32) attachmentFilename];
    v18 = [*(a1 + 32) attachment];
    [v14 presentPreviewWithURL:v13 fileName:v17 ekAttachment:v18];

LABEL_6:
  }

LABEL_8:
  [*(a1 + 32) _clearDownloadID];
}

- (CUIKAttachmentDownloadControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end