@interface SFQuickLookDocumentController
- (SFQuickLookDocumentController)init;
- (id)_actionTitleForType:(int64_t)type withActionCount:(unint64_t)count;
- (id)_supportedApplications;
- (id)itemProviderForQuickLookDocumentView:(id)view;
- (int64_t)dataOwnerForQuickLookDocumentView:(id)view;
- (void)_updateActionButtons;
- (void)presentDocumentInteractionControllerFromSource:(id)source;
- (void)quickLookDocumentView:(id)view didSelectActionAtIndex:(int64_t)index;
- (void)updateWithQuickLookDocument:(id)document;
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

- (void)updateWithQuickLookDocument:(id)document
{
  documentCopy = document;
  objc_storeStrong(&self->_quickLookDocument, document);
  [(SFQuickLookDocumentController *)self _updateActionButtons];
  savedURLWithProperExtension = [(SFQuickLookDocument *)self->_quickLookDocument savedURLWithProperExtension];
  if (savedURLWithProperExtension)
  {
    v7 = MEMORY[0x1E69CDA18];
    sourceURL = [documentCopy sourceURL];
    v9 = [v7 sf_interactionControllerWithDocumentURL:savedURLWithProperExtension sourceURL:sourceURL];
    documentInteractionController = self->_documentInteractionController;
    self->_documentInteractionController = v9;

    -[UIDocumentInteractionController setShouldUnzipDocument:](self->_documentInteractionController, "setShouldUnzipDocument:", [documentCopy shouldUnzipByUIDocumentInteractionController]);
    documentView = self->_documentView;
    icons = [(UIDocumentInteractionController *)self->_documentInteractionController icons];
    lastObject = [icons lastObject];
    [(SFQuickLookDocumentView *)documentView updateDocumentIcon:lastObject];

    v14 = self->_documentView;
    fileName = [(SFQuickLookDocument *)self->_quickLookDocument fileName];
    [(SFQuickLookDocumentView *)v14 updateDocumentFileName:fileName];

    v16 = self->_documentView;
    localizedType = [(SFQuickLookDocument *)self->_quickLookDocument localizedType];
    [(SFQuickLookDocumentView *)v16 updateDocumentFileType:localizedType];

    fileSize = [(SFQuickLookDocument *)self->_quickLookDocument fileSize];
    v19 = self->_documentView;
    v20 = objc_alloc_init(MEMORY[0x1E696AAF0]);
    [v20 setCountStyle:3];
    v21 = [v20 stringFromByteCount:fileSize];

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

- (void)presentDocumentInteractionControllerFromSource:(id)source
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
  _SFPopoverSourceInfoUnwrap(source, @"quick look document controller", v4, v3, &__block_literal_global_53);
}

- (void)_updateActionButtons
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _supportedApplications = [(SFQuickLookDocumentController *)self _supportedApplications];
  firstObject = [_supportedApplications firstObject];

  if (firstObject)
  {
    [v3 addObject:&unk_1EFF74180];
  }

  if (!-[UIDocumentInteractionController sourceIsManaged](self->_documentInteractionController, "sourceIsManaged") || [_supportedApplications count])
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
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  documentProxy = [(SFQuickLookDocument *)self->_quickLookDocument documentProxy];
  v5 = [defaultWorkspace applicationsAvailableForOpeningDocument:documentProxy];

  return v5;
}

- (id)_actionTitleForType:(int64_t)type withActionCount:(unint64_t)count
{
  _supportedApplications = [(SFQuickLookDocumentController *)self _supportedApplications];
  firstObject = [_supportedApplications firstObject];

  if (type == 1)
  {
    count = _WBSLocalizedString();
  }

  else if (!type)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = _WBSLocalizedString();
    localizedName = [firstObject localizedName];
    count = [v8 stringWithFormat:v9, localizedName];
  }

  return count;
}

- (void)quickLookDocumentView:(id)view didSelectActionAtIndex:(int64_t)index
{
  v6 = [(NSArray *)self->_buttonActions objectAtIndexedSubscript:index];
  integerValue = [v6 integerValue];

  if (integerValue)
  {
    if (integerValue == 1)
    {
      documentInteractionController = self->_documentInteractionController;
      [(SFQuickLookDocumentView *)self->_documentView frameForButtonAtIndex:index];
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

- (id)itemProviderForQuickLookDocumentView:(id)view
{
  v4 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  [v4 safari_registerFileRepresentationForQuickLookDocument:self->_quickLookDocument];

  return v4;
}

- (int64_t)dataOwnerForQuickLookDocumentView:(id)view
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  sourceURL = [(SFQuickLookDocument *)self->_quickLookDocument sourceURL];
  safari_URLByNormalizingBlobURL = [sourceURL safari_URLByNormalizingBlobURL];
  if ([mEMORY[0x1E69ADFB8] isURLManaged:safari_URLByNormalizingBlobURL])
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