@interface SFQuickLookDocumentController
- (SFQuickLookDocumentController)init;
- (id)_actionTitleForType:(int64_t)a3 withActionCount:(unint64_t)a4;
- (id)_supportedApplications;
- (id)itemProviderForQuickLookDocumentView:(id)a3;
- (int64_t)dataOwnerForQuickLookDocumentView:(id)a3;
- (void)_updateActionButtons;
- (void)presentDocumentInteractionControllerFromSource:(id)a3;
- (void)quickLookDocumentView:(id)a3 didSelectActionAtIndex:(int64_t)a4;
- (void)updateWithQuickLookDocument:(id)a3;
@end

@implementation SFQuickLookDocumentController

- (SFQuickLookDocumentController)init
{
  v7.receiver = self;
  v7.super_class = SFQuickLookDocumentController;
  v2 = [(SFQuickLookDocumentController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(SFQuickLookDocumentView);
    documentView = v2->_documentView;
    v2->_documentView = v3;

    [(SFQuickLookDocumentView *)v2->_documentView setQuickLookDocumentViewDelegate:v2];
    v5 = v2;
  }

  return v2;
}

- (void)updateWithQuickLookDocument:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_quickLookDocument, a3);
  [(SFQuickLookDocumentController *)self _updateActionButtons];
  v6 = [(SFQuickLookDocument *)self->_quickLookDocument savedURLWithProperExtension];
  if (v6)
  {
    v7 = MEMORY[0x1E69CDA18];
    v8 = [v5 sourceURL];
    v9 = [v7 sf_interactionControllerWithDocumentURL:v6 sourceURL:v8];
    documentInteractionController = self->_documentInteractionController;
    self->_documentInteractionController = v9;

    -[UIDocumentInteractionController setShouldUnzipDocument:](self->_documentInteractionController, "setShouldUnzipDocument:", [v5 shouldUnzipByUIDocumentInteractionController]);
    documentView = self->_documentView;
    v12 = [(UIDocumentInteractionController *)self->_documentInteractionController icons];
    v13 = [v12 lastObject];
    [(SFQuickLookDocumentView *)documentView updateDocumentIcon:v13];

    v14 = self->_documentView;
    v15 = [(SFQuickLookDocument *)self->_quickLookDocument fileName];
    [(SFQuickLookDocumentView *)v14 updateDocumentFileName:v15];

    v16 = self->_documentView;
    v17 = [(SFQuickLookDocument *)self->_quickLookDocument localizedType];
    [(SFQuickLookDocumentView *)v16 updateDocumentFileType:v17];

    v18 = [(SFQuickLookDocument *)self->_quickLookDocument fileSize];
    v19 = self->_documentView;
    v20 = objc_alloc_init(MEMORY[0x1E696AAF0]);
    [v20 setCountStyle:3];
    v21 = [v20 stringFromByteCount:v18];

    [(SFQuickLookDocumentView *)v19 updateDocumentFileSize:v21];
  }

  else
  {
    v22 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SFQuickLookDocumentController updateWithQuickLookDocument:v22];
    }
  }
}

- (void)presentDocumentInteractionControllerFromSource:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__SFQuickLookDocumentController_presentDocumentInteractionControllerFromSource___block_invoke;
  v4[3] = &unk_1E721EA40;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__SFQuickLookDocumentController_presentDocumentInteractionControllerFromSource___block_invoke_2;
  v3[3] = &unk_1E721EA68;
  v3[4] = self;
  _SFPopoverSourceInfoUnwrap(a3, @"quick look document controller", v4, v3, &__block_literal_global_53);
}

- (void)_updateActionButtons
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(SFQuickLookDocumentController *)self _supportedApplications];
  v5 = [v4 firstObject];

  if (v5)
  {
    [v3 addObject:&unk_1EFF74180];
  }

  if (!-[UIDocumentInteractionController sourceIsManaged](self->_documentInteractionController, "sourceIsManaged") || [v4 count])
  {
    [v3 addObject:&unk_1EFF74198];
  }

  v6 = [v3 copy];
  buttonActions = self->_buttonActions;
  self->_buttonActions = v6;

  v8 = [(NSArray *)self->_buttonActions count];
  documentView = self->_documentView;
  v10 = self->_buttonActions;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__SFQuickLookDocumentController__updateActionButtons__block_invoke;
  v12[3] = &unk_1E721EAB0;
  v12[4] = self;
  v12[5] = v8;
  v11 = [(NSArray *)v10 safari_mapObjectsUsingBlock:v12];
  [(SFQuickLookDocumentView *)documentView updateActionTitles:v11];
}

uint64_t __53__SFQuickLookDocumentController__updateActionButtons__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _actionTitleForType:v3 withActionCount:v5];
}

- (id)_supportedApplications
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v4 = [(SFQuickLookDocument *)self->_quickLookDocument documentProxy];
  v5 = [v3 applicationsAvailableForOpeningDocument:v4];

  return v5;
}

- (id)_actionTitleForType:(int64_t)a3 withActionCount:(unint64_t)a4
{
  v6 = [(SFQuickLookDocumentController *)self _supportedApplications];
  v7 = [v6 firstObject];

  if (a3 == 1)
  {
    a4 = _WBSLocalizedString();
  }

  else if (!a3)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = _WBSLocalizedString();
    v10 = [v7 localizedName];
    a4 = [v8 stringWithFormat:v9, v10];
  }

  return a4;
}

- (void)quickLookDocumentView:(id)a3 didSelectActionAtIndex:(int64_t)a4
{
  v6 = [(NSArray *)self->_buttonActions objectAtIndexedSubscript:a4];
  v7 = [v6 integerValue];

  if (v7)
  {
    if (v7 == 1)
    {
      documentInteractionController = self->_documentInteractionController;
      [(SFQuickLookDocumentView *)self->_documentView frameForButtonAtIndex:a4];
      documentView = self->_documentView;

      [(UIDocumentInteractionController *)documentInteractionController presentOptionsMenuFromRect:documentView inView:1 animated:?];
    }
  }

  else
  {
    v10 = self->_documentInteractionController;

    [(UIDocumentInteractionController *)v10 openDocumentWithDefaultApplication];
  }
}

- (id)itemProviderForQuickLookDocumentView:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  [v4 safari_registerFileRepresentationForQuickLookDocument:self->_quickLookDocument];

  return v4;
}

- (int64_t)dataOwnerForQuickLookDocumentView:(id)a3
{
  v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v5 = [(SFQuickLookDocument *)self->_quickLookDocument sourceURL];
  v6 = [v5 safari_URLByNormalizingBlobURL];
  if ([v4 isURLManaged:v6])
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

@end