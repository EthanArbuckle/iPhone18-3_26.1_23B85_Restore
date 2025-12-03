@interface ICGalleryAttachmentEditorController
+ (id)activityTypeOrder;
- (BOOL)documentCameraController:(id)controller canAddImages:(unint64_t)images;
- (BOOL)openEditorOnViewController:(id)controller pageIndex:(unint64_t)index sourceView:(id)view;
- (BOOL)shouldAllowEditing;
- (BOOL)updateDocumentViewControllerFromModel;
- (CGSize)extractedDocumentControllerImageSizeForDocument:(id)document;
- (ICGalleryAttachmentEditorController)initWithGalleryAttachment:(id)attachment browserMode:(BOOL)mode delegate:(id)delegate;
- (ICGalleryAttachmentEditorControllerDelegate)delegate;
- (ICNAEventReporter)eventReporter;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)documentCameraControllerCreateDataCryptorIfNecessary;
- (id)extractedDocumentControllerImageForDocument:(id)document;
- (id)extractedDocumentControllerMarkupModelDataForDocument:(id)document;
- (id)extractedDocumentControllerTitle;
- (id)extractedDocumentControllerUncroppedImageForDocument:(id)document;
- (id)extractedDocumentControllerUndoManager;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (id)scanDataDelegateWithIdentifier:(id)identifier;
- (void)applicationWillTerminate:(id)terminate;
- (void)attachmentDidLoad:(id)load;
- (void)attachmentTitleDidChange;
- (void)dealloc;
- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user;
- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user closeViewController:(BOOL)viewController;
- (void)documentCameraControllerDidCancel:(id)cancel;
- (void)documentCameraControllerDidCancelWithPresentingViewController:(id)controller;
- (void)documentCameraControllerDidRetake:(id)retake pageCount:(unint64_t)count;
- (void)documentCameraPresentingViewController:(id)controller didFinishWithInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user closeViewController:(BOOL)viewController;
- (void)eventReporterLostSession:(id)session;
- (void)extractedDocumentController:(id)controller didTapRecrop:(id)recrop index:(int64_t)index;
- (void)extractedDocumentController:(id)controller shareDocument:(id)document sender:(id)sender;
- (void)extractedDocumentController:(id)controller startMarkupOnDocument:(id)document inkStyle:(unint64_t)style startPresentBlock:(id)block dismissCompletionBlock:(id)completionBlock;
- (void)extractedDocumentControllerDidApplyFilter:(signed __int16)filter forDocument:(id)document;
- (void)extractedDocumentControllerDidChangeTitle:(id)title;
- (void)extractedDocumentControllerDidDeleteDocument:(id)document;
- (void)extractedDocumentControllerDidMovePageFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex forDocument:(id)document;
- (void)extractedDocumentControllerDidRotateDocument:(id)document;
- (void)extractedDocumentControllerDidSelectCopyFromMenuForDocument:(id)document;
- (void)extractedDocumentControllerDidSelectShareFromMenuForDocument:(id)document sourceRect:(CGRect)rect sourceView:(id)view;
- (void)extractedDocumentControllerDidTapAddImage;
- (void)extractedDocumentControllerDidTapDone:(unint64_t)done scanDataDelegate:(id)delegate;
- (void)extractedDocumentControllerDiscardMarkupModelDataForDocument:(id)document;
- (void)extractedDocumentControllerLoadThumbnailForDocument:(id)document size:(CGSize)size completionBlock:(id)block;
- (void)movePageFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)previewImageDidUpdate:(id)update;
- (void)remoteDocumentCameraController:(id)controller didFinishWithInfoCollection:(id)collection;
- (void)updateDocInfoForAttachment:(id)attachment;
@end

@implementation ICGalleryAttachmentEditorController

- (ICGalleryAttachmentEditorController)initWithGalleryAttachment:(id)attachment browserMode:(BOOL)mode delegate:(id)delegate
{
  modeCopy = mode;
  attachmentCopy = attachment;
  delegateCopy = delegate;
  v29.receiver = self;
  v29.super_class = ICGalleryAttachmentEditorController;
  v10 = [(ICGalleryAttachmentEditorController *)&v29 init];
  v11 = v10;
  if (v10)
  {
    [(ICGalleryAttachmentEditorController *)v10 setDelegate:delegateCopy];
    [(ICGalleryAttachmentEditorController *)v11 setGalleryAttachment:attachmentCopy];
    v12 = [[ICDocCamScannedDocumentEditor alloc] initWithGalleryAttachment:attachmentCopy];
    [(ICGalleryAttachmentEditorController *)v11 setEditor:v12];

    [(ICGalleryAttachmentEditorController *)v11 setBrowserMode:modeCopy];
    objc_opt_class();
    attachmentModel = [attachmentCopy attachmentModel];
    v14 = ICCheckedDynamicCast();

    if ([attachmentCopy isPasswordProtected])
    {
      v15 = objc_alloc(MEMORY[0x277D35E98]);
      identifier = [attachmentCopy identifier];
      v17 = [v15 initWithObjectIdentifier:identifier];
    }

    else
    {
      v17 = 0;
    }

    v18 = [objc_alloc(MEMORY[0x277D05D28]) initWithDataCryptorDelegate:v17];
    [(ICGalleryAttachmentEditorController *)v11 setImageCache:v18];

    v19 = objc_alloc_init(MEMORY[0x277D35E38]);
    [(ICGalleryAttachmentEditorController *)v11 setThumbnailCache:v19];

    v20 = objc_alloc_init(MEMORY[0x277D05D10]);
    [(ICGalleryAttachmentEditorController *)v11 setDocumentInfoCollection:v20];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __86__ICGalleryAttachmentEditorController_initWithGalleryAttachment_browserMode_delegate___block_invoke;
    v27[3] = &unk_2781AEA90;
    v21 = v11;
    v28 = v21;
    [v14 enumerateSubAttachmentsWithBlock:v27];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel_applicationWillTerminate_ name:*MEMORY[0x277D76770] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v21 selector:sel_previewImageDidUpdate_ name:*MEMORY[0x277D35BB8] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v21 selector:sel_attachmentDidLoad_ name:*MEMORY[0x277D35B88] object:0];

    galleryAttachment = [(ICGalleryAttachmentEditorController *)v21 galleryAttachment];
    [galleryAttachment ic_addObserver:v21 forKeyPath:@"mergeableData" context:&compoundliteral_4];
  }

  return v11;
}

void __86__ICGalleryAttachmentEditorController_initWithGalleryAttachment_browserMode_delegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v14 identifier];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D05D08]) initWithDelegate:*(a1 + 32)];
    [v8 setCurrentFilter:{objc_msgSend(v14, "imageFilterType")}];
    v9 = [v14 identifier];
    [v8 setScanDataDelegateIdentifier:v9];

    [v8 setCurrentOrientation:{objc_msgSend(v14, "orientation")}];
    v10 = [v14 croppingQuad];
    [v8 setImageQuad:v10];

    v11 = [*(a1 + 32) documentInfoCollection];
    v12 = [v11 docInfos];
    [v12 addObject:v8];
  }

  objc_autoreleasePoolPop(v6);
  v13 = [MEMORY[0x277D366B0] sharedGenerator];
  [v13 postProcessIfNeededForAttachment:v14];
}

- (void)dealloc
{
  [(ICAttachment *)self->_galleryAttachment ic_removeObserver:self forKeyPath:@"mergeableData" context:&compoundliteral_4];
  presentingViewController = [(ICDocCamExtractedDocumentViewController *)self->_extractedDocumentController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(ICDocCamImageCache *)self->_imageCache deleteAllImages];
  v5.receiver = self;
  v5.super_class = ICGalleryAttachmentEditorController;
  [(ICGalleryAttachmentEditorController *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  objectCopy = object;
  if (([(ICGalleryAttachmentEditorController *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/Common/TextAttachmentUI/iOS/ICGalleryAttachmentEditorController.m"]& 1) != 0)
  {
    v13 = [(ICGalleryAttachmentEditorController *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &compoundliteral_4 && (v13 & 1) == 0)
    {
      galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
      if ([galleryAttachment faultingState])
      {
      }

      else
      {
        v15 = [pathCopy isEqualToString:@"mergeableData"];

        if (v15)
        {
          [(ICGalleryAttachmentEditorController *)self updateDocumentViewControllerFromModel];
        }
      }
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = ICGalleryAttachmentEditorController;
    [(ICGalleryAttachmentEditorController *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)applicationWillTerminate:(id)terminate
{
  imageCache = [(ICGalleryAttachmentEditorController *)self imageCache];
  [imageCache deleteAllImages];
}

- (void)previewImageDidUpdate:(id)update
{
  updateCopy = update;
  objc_opt_class();
  object = [updateCopy object];

  v12 = ICCheckedDynamicCast();

  v6 = MEMORY[0x277D35E00];
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  managedObjectContext = [galleryAttachment managedObjectContext];
  v9 = [v6 ic_existingObjectWithID:v12 context:managedObjectContext];

  parentAttachment = [v9 parentAttachment];
  galleryAttachment2 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];

  if (parentAttachment == galleryAttachment2)
  {
    [(ICGalleryAttachmentEditorController *)self updateDocInfoForAttachment:v9];
  }
}

- (void)attachmentDidLoad:(id)load
{
  loadCopy = load;
  objc_opt_class();
  object = [loadCopy object];

  v12 = ICCheckedDynamicCast();

  v6 = MEMORY[0x277D35E00];
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  managedObjectContext = [galleryAttachment managedObjectContext];
  v9 = [v6 ic_existingObjectWithID:v12 context:managedObjectContext];

  parentAttachment = [v9 parentAttachment];
  galleryAttachment2 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];

  if (parentAttachment == galleryAttachment2)
  {
    [(ICGalleryAttachmentEditorController *)self updateDocInfoForAttachment:v9];
  }
}

- (void)updateDocInfoForAttachment:(id)attachment
{
  v23 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  identifier = [attachmentCopy identifier];
  if (identifier && ([attachmentCopy markedForDeletion] & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    documentInfoCollection = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
    docInfos = [documentInfoCollection docInfos];

    v8 = [docInfos countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(docInfos);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        scanDataDelegateIdentifier = [v12 scanDataDelegateIdentifier];
        v14 = [scanDataDelegateIdentifier isEqualToString:identifier];

        if (v14)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [docInfos countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v15 = v12;

      if (!v15)
      {
        goto LABEL_14;
      }

      [v15 setCroppedAndFilteredImageUUID:0];
      [v15 setCurrentFilter:{objc_msgSend(attachmentCopy, "imageFilterType")}];
      [v15 setCurrentOrientation:{objc_msgSend(attachmentCopy, "orientation")}];
      croppingQuad = [attachmentCopy croppingQuad];
      [v15 setImageQuad:croppingQuad];

      extractedDocumentController = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
      [extractedDocumentController didUpdateDocumentImage:v15];
    }

    else
    {
LABEL_11:

LABEL_14:
      [(ICGalleryAttachmentEditorController *)self updateDocumentViewControllerFromModel];
    }
  }
}

- (void)movePageFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  editor = [(ICGalleryAttachmentEditorController *)self editor];
  [editor movePageFromIndex:index toIndex:toIndex];
}

- (BOOL)updateDocumentViewControllerFromModel
{
  v55 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  attachmentModel = [galleryAttachment attachmentModel];
  v5 = ICCheckedDynamicCast();

  v6 = MEMORY[0x277CBEB38];
  documentInfoCollection = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v9 = [v6 dictionaryWithCapacity:{objc_msgSend(docInfos, "count")}];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  documentInfoCollection2 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
  docInfos2 = [documentInfoCollection2 docInfos];

  v12 = [docInfos2 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v51;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v51 != v14)
        {
          objc_enumerationMutation(docInfos2);
        }

        v16 = *(*(&v50 + 1) + 8 * i);
        scanDataDelegateIdentifier = [v16 scanDataDelegateIdentifier];

        if (scanDataDelegateIdentifier)
        {
          scanDataDelegateIdentifier2 = [v16 scanDataDelegateIdentifier];
          [v9 setObject:v16 forKeyedSubscript:scanDataDelegateIdentifier2];
        }
      }

      v13 = [docInfos2 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v13);
  }

  extractedDocumentController = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
  currentDocument = [extractedDocumentController currentDocument];

  v21 = objc_alloc_init(MEMORY[0x277D05D10]);
  v43 = MEMORY[0x277D85DD0];
  v44 = 3221225472;
  v45 = __76__ICGalleryAttachmentEditorController_updateDocumentViewControllerFromModel__block_invoke;
  v46 = &unk_2781AEAB8;
  v47 = v9;
  selfCopy = self;
  v22 = v21;
  v49 = v22;
  v23 = v9;
  [v5 enumerateSubAttachmentsWithBlock:&v43];
  docInfos3 = [v22 docInfos];
  v25 = [docInfos3 count];

  if (v25)
  {
    docInfos4 = [v22 docInfos];
    documentInfoCollection3 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
    docInfos5 = [documentInfoCollection3 docInfos];
    v29 = [docInfos4 isEqualToArray:docInfos5];

    if ((v29 & 1) == 0)
    {
      documentInfoCollection4 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
      docInfos6 = [documentInfoCollection4 docInfos];
      [docInfos6 removeAllObjects];

      documentInfoCollection5 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
      docInfos7 = [documentInfoCollection5 docInfos];
      docInfos8 = [v22 docInfos];
      [docInfos7 addObjectsFromArray:docInfos8];

      if (currentDocument)
      {
        documentInfoCollection6 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
        docInfos9 = [documentInfoCollection6 docInfos];
        if (![docInfos9 count])
        {
LABEL_16:

          goto LABEL_17;
        }

        documentInfoCollection7 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
        docInfos10 = [documentInfoCollection7 docInfos];
        v42 = [docInfos10 indexOfObject:currentDocument];

        if (v42 == 0x7FFFFFFFFFFFFFFFLL)
        {
          documentInfoCollection6 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
          docInfos9 = [documentInfoCollection6 docInfos];
          firstObject = [docInfos9 firstObject];

          currentDocument = firstObject;
          goto LABEL_16;
        }
      }

LABEL_17:
      v40 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController:v42];
      [v40 didUpdateDocumentInfoArrayNewCurrentDocument:currentDocument];
    }
  }

  return v25 != 0;
}

void __76__ICGalleryAttachmentEditorController_updateDocumentViewControllerFromModel__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277D05D08]) initWithDelegate:*(a1 + 40)];
      [v8 setScanDataDelegateIdentifier:v6];
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    if (v5)
    {
      [v8 setCurrentFilter:{objc_msgSend(v5, "imageFilterType")}];
      [v8 setCurrentOrientation:{objc_msgSend(v5, "orientation")}];
      v10 = [v5 croppingQuad];
      [v8 setImageQuad:v10];
    }

    v11 = [*(a1 + 48) docInfos];
    [v11 addObject:v8];
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __76__ICGalleryAttachmentEditorController_updateDocumentViewControllerFromModel__block_invoke_cold_1(v9);
    }
  }

LABEL_11:
}

- (BOOL)shouldAllowEditing
{
  if ([(ICGalleryAttachmentEditorController *)self browserMode])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    v3 = [galleryAttachment isReadOnly] ^ 1;
  }

  return v3;
}

- (BOOL)openEditorOnViewController:(id)controller pageIndex:(unint64_t)index sourceView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  delegate = [(ICGalleryAttachmentEditorController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(ICGalleryAttachmentEditorController *)self delegate];
    [delegate2 galleryAttachmentEditorControllerWillShow];
  }

  documentInfoCollection = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v15 = [docInfos count];

  if (v15 <= index)
  {
    v18 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ICGalleryAttachmentEditorController openEditorOnViewController:v18 pageIndex:? sourceView:?];
    }

    v22 = 0;
  }

  else
  {
    documentInfoCollection2 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
    docInfos2 = [documentInfoCollection2 docInfos];
    v18 = [docInfos2 objectAtIndexedSubscript:index];

    editor = [(ICGalleryAttachmentEditorController *)self editor];
    scanDataDelegateIdentifier = [v18 scanDataDelegateIdentifier];
    v21 = [editor subAttachmentWithIdentifier:scanDataDelegateIdentifier];

    v22 = v21 != 0;
    if (v21)
    {
      [MEMORY[0x277D05D50] setCachedItem:0];
      if ([(ICGalleryAttachmentEditorController *)self shouldAllowEditing])
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      v24 = controllerCopy;
      v25 = viewCopy;
      v26 = objc_alloc(MEMORY[0x277D05D18]);
      documentInfoCollection3 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
      imageCache = [(ICGalleryAttachmentEditorController *)self imageCache];
      v29 = v26;
      viewCopy = v25;
      controllerCopy = v24;
      v30 = [v29 initWithDelegate:self documentInfoCollection:documentInfoCollection3 imageCache:imageCache currentIndex:index mode:v23];

      [v30 setDelegate:self];
      [v30 setTransitioningDelegate:self];
      [v30 setModalPresentationStyle:4];
      [(ICGalleryAttachmentEditorController *)self setSourceViewForZoomTransition:viewCopy];
      objc_opt_class();
      topViewController = [v30 topViewController];
      v32 = ICCheckedDynamicCast();
      [(ICGalleryAttachmentEditorController *)self setExtractedDocumentController:v32];

      extractedDocumentController = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
      [extractedDocumentController setTransitioningDelegate:self];

      extractedDocumentController2 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
      [extractedDocumentController2 setModalPresentationStyle:4];

      presentedViewController = [v24 presentedViewController];

      if (presentedViewController)
      {
        presentedViewController2 = [v24 presentedViewController];
        [presentedViewController2 presentViewController:v30 animated:1 completion:0];
      }

      else
      {
        [v24 presentViewController:v30 animated:1 completion:0];
      }

      v22 = 1;
    }

    else
    {
      v37 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [ICGalleryAttachmentEditorController openEditorOnViewController:v18 pageIndex:v37 sourceView:?];
      }
    }
  }

  return v22;
}

- (void)attachmentTitleDidChange
{
  extractedDocumentController = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  title = [galleryAttachment title];
  [extractedDocumentController didUpdateDocumentTitle:title];
}

- (id)documentCameraControllerCreateDataCryptorIfNecessary
{
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  isPasswordProtected = [galleryAttachment isPasswordProtected];

  if (isPasswordProtected)
  {
    v5 = objc_alloc(MEMORY[0x277D35E98]);
    galleryAttachment2 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    identifier = [galleryAttachment2 identifier];
    v8 = [v5 initWithObjectIdentifier:identifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)extractedDocumentController:(id)controller didTapRecrop:(id)recrop index:(int64_t)index
{
  controllerCopy = controller;
  recropCopy = recrop;
  editor = [(ICGalleryAttachmentEditorController *)self editor];
  scanDataDelegateIdentifier = [recropCopy scanDataDelegateIdentifier];
  v12 = [editor subAttachmentWithIdentifier:scanDataDelegateIdentifier];

  if (v12)
  {
    unprocessedDocumentImage = [v12 unprocessedDocumentImage];
    croppingQuad = [v12 croppingQuad];
    orientation = [v12 orientation];
    v16 = objc_alloc(MEMORY[0x277D05D30]);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __86__ICGalleryAttachmentEditorController_extractedDocumentController_didTapRecrop_index___block_invoke;
    v40[3] = &unk_2781AEAE0;
    v37 = recropCopy;
    v17 = recropCopy;
    v41 = v17;
    selfCopy = self;
    v43 = v12;
    v44 = controllerCopy;
    indexCopy = index;
    indexCopy2 = index;
    v38 = croppingQuad;
    v18 = croppingQuad;
    v19 = v44;
    v20 = [v16 initWithImage:unprocessedDocumentImage quad:v18 scanDataDelegate:v43 orientation:orientation completionHandler:v40];
    [v20 setShowImageAsAspectFit:1];
    [(ICGalleryAttachmentEditorController *)self setUseCustomRecropTransition:1];
    navigationController = [v19 navigationController];
    [navigationController setDelegate:self];

    navigationController2 = [v20 navigationController];
    [navigationController2 setDelegate:self];

    croppedAndFilteredImageUUID = [v17 croppedAndFilteredImageUUID];

    if (croppedAndFilteredImageUUID)
    {
      imageCache = [(ICGalleryAttachmentEditorController *)self imageCache];
      croppedAndFilteredImageUUID2 = [v17 croppedAndFilteredImageUUID];
      v26 = [imageCache getImage:croppedAndFilteredImageUUID2];
    }

    else
    {
      v26 = [(ICGalleryAttachmentEditorController *)self extractedDocumentControllerImageForDocument:v17];
    }

    v39 = controllerCopy;
    croppedButNotFilteredImageUUID = [v17 croppedButNotFilteredImageUUID];

    if (croppedButNotFilteredImageUUID)
    {
      imageCache2 = [(ICGalleryAttachmentEditorController *)self imageCache];
      croppedButNotFilteredImageUUID2 = [v17 croppedButNotFilteredImageUUID];
      v32 = [imageCache2 getImage:croppedButNotFilteredImageUUID2];
    }

    else
    {
      v32 = [v19 croppedButNotFilteredImageForDocInfo:v17];
    }

    v33 = [MEMORY[0x277CCAA70] indexPathForItem:indexCopy2 inSection:0];
    [(ICGalleryAttachmentEditorController *)self setIndexPathForRecrop:v33];

    [(ICGalleryAttachmentEditorController *)self setFilteredImageForRecrop:v26];
    v34 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:objc_msgSend(v32 scale:"ic_CGImage") orientation:{objc_msgSend(v17, "currentOrientation"), 1.0}];
    [(ICGalleryAttachmentEditorController *)self setUnfilteredImageForRecrop:v34];

    -[ICGalleryAttachmentEditorController setOrientationForRecrop:](self, "setOrientationForRecrop:", [v17 currentOrientation]);
    navigationController3 = [v19 navigationController];
    [navigationController3 pushViewController:v20 animated:1];

    controllerCopy = v39;
    recropCopy = v37;
  }

  else
  {
    v27 = MEMORY[0x277D36198];
    scanDataDelegateIdentifier2 = [recropCopy scanDataDelegateIdentifier];
    [v27 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICGalleryAttachmentEditorController extractedDocumentController:didTapRecrop:index:]" simulateCrash:1 showAlert:0 format:{@"Trying to recrop attachment with identifier, but identifier is not sub-attachment of gallery: %@", scanDataDelegateIdentifier2}];
  }
}

void __86__ICGalleryAttachmentEditorController_extractedDocumentController_didTapRecrop_index___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v22 = a3;
  v7 = a4;
  if (a2)
  {
    [*(a1 + 32) setImageQuad:v7];
    v8 = [*(a1 + 40) editor];
    [v8 setQuad:v7 forAttachment:*(a1 + 48)];

    [*(a1 + 56) didUpdateDocumentImage:*(a1 + 32)];
  }

  v9 = [*(a1 + 32) croppedAndFilteredImageUUID];

  v10 = *(a1 + 40);
  if (v9)
  {
    v11 = [v10 imageCache];
    v12 = [*(a1 + 32) croppedAndFilteredImageUUID];
    v13 = [v11 getImage:v12];
  }

  else
  {
    v13 = [v10 extractedDocumentControllerImageForDocument:*(a1 + 32)];
  }

  v14 = [*(a1 + 32) croppedButNotFilteredImageUUID];

  if (v14)
  {
    v15 = [*(a1 + 40) imageCache];
    v16 = [*(a1 + 32) croppedButNotFilteredImageUUID];
    v17 = [v15 getImage:v16];
  }

  else
  {
    v17 = [*(a1 + 56) croppedButNotFilteredImageForDocInfo:*(a1 + 32)];
  }

  v18 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 64) inSection:0];
  [*(a1 + 40) setIndexPathForRecrop:v18];

  [*(a1 + 40) setFilteredImageForRecrop:v13];
  v19 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:objc_msgSend(v17 scale:"ic_CGImage") orientation:{objc_msgSend(*(a1 + 32), "currentOrientation"), 1.0}];
  [*(a1 + 40) setUnfilteredImageForRecrop:v19];

  [*(a1 + 40) setOrientationForRecrop:{objc_msgSend(*(a1 + 32), "currentOrientation")}];
  v20 = [*(a1 + 56) navigationController];
  v21 = [v20 popViewControllerAnimated:1];
}

- (void)extractedDocumentControllerDidTapAddImage
{
  if ([(ICGalleryAttachmentEditorController *)self documentCameraController:0 canAddImages:1])
  {
    v3 = objc_alloc(MEMORY[0x277D05D38]);
    imageCache = [(ICGalleryAttachmentEditorController *)self imageCache];
    extractedDocumentController2 = [v3 initWithImageCache:imageCache docCamDelegate:self remoteDocCamDelegate:self];

    [extractedDocumentController2 setModalTransitionStyle:2];
    extractedDocumentController = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
    navigationController = [extractedDocumentController navigationController];
    [navigationController presentViewController:extractedDocumentController2 animated:1 completion:0];

    eventReporter = [(ICGalleryAttachmentEditorController *)self eventReporter];
    galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    galleryModel = [galleryAttachment galleryModel];
    [eventReporter pushStartDocScanPageCountData:{objc_msgSend(galleryModel, "subAttachmentCount")}];

    eventReporter2 = [(ICGalleryAttachmentEditorController *)self eventReporter];
    galleryAttachment2 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    identifier = [galleryAttachment2 identifier];
    [eventReporter2 pushDocScanDataWithID:identifier actionType:3 stage:1];

    eventReporter3 = [(ICGalleryAttachmentEditorController *)self eventReporter];
    galleryAttachment3 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    note = [galleryAttachment3 note];
    galleryAttachment4 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    galleryModel2 = [galleryAttachment4 galleryModel];
    [eventReporter3 submitDocScanEventForNote:note pageCount:{objc_msgSend(galleryModel2, "subAttachmentCount")}];
  }

  else
  {
    v18 = MEMORY[0x277D05D60];
    extractedDocumentController2 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
    [v18 warnAboutMaxScansReachedForViewController:? completionHandler:?];
  }
}

- (void)extractedDocumentControllerDidTapDone:(unint64_t)done scanDataDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(ICGalleryAttachmentEditorController *)self delegate];
  ic_viewControllerManager = [delegate ic_viewControllerManager];

  objc_opt_class();
  v9 = ICDynamicCast();

  objc_opt_class();
  sourceViewForZoomTransition = [(ICGalleryAttachmentEditorController *)self sourceViewForZoomTransition];
  v11 = ICDynamicCast();

  if (v11)
  {
    v12 = [MEMORY[0x277CCAA70] indexPathForItem:done inSection:0];
    currentAttachmentPresenter = [ic_viewControllerManager currentAttachmentPresenter];
    [currentAttachmentPresenter scrollCollectionViewToIndexPath:v12];
    v14 = [currentAttachmentPresenter transitionViewForAttachment:v9 atIndexPath:v12];
    [(ICGalleryAttachmentEditorController *)self setSourceViewForZoomTransition:v14];
  }

  extractedDocumentController = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__ICGalleryAttachmentEditorController_extractedDocumentControllerDidTapDone_scanDataDelegate___block_invoke;
  v16[3] = &unk_2781ABCF8;
  v16[4] = self;
  [extractedDocumentController dismissViewControllerAnimated:1 completion:v16];
}

uint64_t __94__ICGalleryAttachmentEditorController_extractedDocumentControllerDidTapDone_scanDataDelegate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setExtractedDocumentController:0];
  v2 = [*(a1 + 32) delegate];
  [v2 galleryAttachmentEditorControllerDidDismiss];

  v3 = *(a1 + 32);

  return [v3 setSourceViewForZoomTransition:0];
}

- (void)extractedDocumentControllerDidRotateDocument:(id)document
{
  documentCopy = document;
  editor = [(ICGalleryAttachmentEditorController *)self editor];
  scanDataDelegateIdentifier = [documentCopy scanDataDelegateIdentifier];
  v6 = [editor indexForAttachmentWithIdentifier:scanDataDelegateIdentifier];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [editor setOrientation:objc_msgSend(documentCopy forAttachmentAtIndex:{"currentOrientation"), v6}];
  }
}

- (void)extractedDocumentControllerDidApplyFilter:(signed __int16)filter forDocument:(id)document
{
  documentCopy = document;
  editor = [(ICGalleryAttachmentEditorController *)self editor];
  scanDataDelegateIdentifier = [documentCopy scanDataDelegateIdentifier];
  v7 = [editor indexForAttachmentWithIdentifier:scanDataDelegateIdentifier];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [editor applyFilter:objc_msgSend(documentCopy forAttachmentAtIndex:{"currentFilter"), v7}];
  }
}

- (void)extractedDocumentControllerDidDeleteDocument:(id)document
{
  documentCopy = document;
  delegate = [(ICGalleryAttachmentEditorController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    galleryModel = [galleryAttachment galleryModel];
    subAttachmentCount = [galleryModel subAttachmentCount];

    editor = [(ICGalleryAttachmentEditorController *)self editor];
    scanDataDelegateIdentifier = [documentCopy scanDataDelegateIdentifier];
    v12 = [editor indexForAttachmentWithIdentifier:scanDataDelegateIdentifier];

    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_opt_class();
      galleryAttachment2 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
      attachmentModel = [galleryAttachment2 attachmentModel];
      v15 = ICCheckedDynamicCast();

      if (v12 || [v15 subAttachmentCount] != 1)
      {
        extractedDocumentController = [MEMORY[0x277CCAA78] indexSetWithIndex:v12];
        [editor deletePagesAtIndexes:extractedDocumentController];
      }

      else
      {
        extractedDocumentController = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __84__ICGalleryAttachmentEditorController_extractedDocumentControllerDidDeleteDocument___block_invoke;
        v26[3] = &unk_2781ABCF8;
        v26[4] = self;
        [extractedDocumentController dismissViewControllerAnimated:1 completion:v26];
      }
    }

    eventReporter = [(ICGalleryAttachmentEditorController *)self eventReporter];
    [eventReporter pushStartDocScanPageCountData:subAttachmentCount];

    eventReporter2 = [(ICGalleryAttachmentEditorController *)self eventReporter];
    galleryAttachment3 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    identifier = [galleryAttachment3 identifier];
    [eventReporter2 pushDocScanDataWithID:identifier actionType:4 stage:2];

    eventReporter3 = [(ICGalleryAttachmentEditorController *)self eventReporter];
    galleryAttachment4 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    note = [galleryAttachment4 note];
    galleryAttachment5 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    galleryModel2 = [galleryAttachment5 galleryModel];
    [eventReporter3 submitDocScanEventForNote:note pageCount:{objc_msgSend(galleryModel2, "subAttachmentCount")}];
  }
}

void __84__ICGalleryAttachmentEditorController_extractedDocumentControllerDidDeleteDocument___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 galleryAttachmentEditorControllerDeleteAttachment];
}

- (void)extractedDocumentControllerDidMovePageFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex forDocument:(id)document
{
  documentCopy = document;
  editor = [(ICGalleryAttachmentEditorController *)self editor];
  scanDataDelegateIdentifier = [documentCopy scanDataDelegateIdentifier];

  v10 = [editor indexForAttachmentWithIdentifier:scanDataDelegateIdentifier];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [editor movePageFromIndex:index toIndex:toIndex];
  }
}

- (id)extractedDocumentControllerTitle
{
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  title = [galleryAttachment title];
  v5 = [title length];
  galleryAttachment2 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v7 = galleryAttachment2;
  if (v5)
  {
    [galleryAttachment2 title];
  }

  else
  {
    [galleryAttachment2 defaultTitle];
  }
  v8 = ;

  return v8;
}

- (void)extractedDocumentControllerDidChangeTitle:(id)title
{
  titleCopy = title;
  editor = [(ICGalleryAttachmentEditorController *)self editor];
  [editor updateDocumentTitle:titleCopy isUserDefined:1];
}

- (void)extractedDocumentController:(id)controller shareDocument:(id)document sender:(id)sender
{
  v61[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  documentCopy = document;
  senderCopy = sender;
  editor = [(ICGalleryAttachmentEditorController *)self editor];
  scanDataDelegateIdentifier = [documentCopy scanDataDelegateIdentifier];
  v13 = [editor indexForAttachmentWithIdentifier:scanDataDelegateIdentifier];

  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_opt_class();
    scanDataDelegate = [documentCopy scanDataDelegate];
    v15 = ICDynamicCast();

    if (!v15)
    {
LABEL_22:

      goto LABEL_23;
    }

    v53 = v15;
    scanCollectionDataDelegate = [controllerCopy scanCollectionDataDelegate];
    activityItems = [scanCollectionDataDelegate activityItems];
    croppedAndFilteredImageUUID = [documentCopy croppedAndFilteredImageUUID];

    if (croppedAndFilteredImageUUID)
    {
      imageCache = [(ICGalleryAttachmentEditorController *)self imageCache];
      croppedAndFilteredImageUUID2 = [documentCopy croppedAndFilteredImageUUID];
      v21 = [imageCache getImage:croppedAndFilteredImageUUID2];

      v22 = v21;
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v22 = [(ICGalleryAttachmentEditorController *)self extractedDocumentControllerImageForDocument:documentCopy];
      if (!v22)
      {
LABEL_21:

        v15 = v53;
        goto LABEL_22;
      }
    }

    v52 = scanCollectionDataDelegate;
    v49 = v22;
    if ([(ICGalleryAttachmentEditorController *)self shouldAllowEditing])
    {
      currentImageView = [controllerCopy currentImageView];
      [v22 size];
      v24 = v23;
      v26 = v25;
      v27 = [ICMarkupActivity alloc];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __88__ICGalleryAttachmentEditorController_extractedDocumentController_shareDocument_sender___block_invoke;
      v58[3] = &__block_descriptor_48_e47__CGRect__CGPoint_dd__CGSize_dd__16__0__UIView_8l;
      v58[4] = v24;
      v58[5] = v26;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __88__ICGalleryAttachmentEditorController_extractedDocumentController_shareDocument_sender___block_invoke_2;
      v54[3] = &unk_2781AEB28;
      v55 = documentCopy;
      selfCopy = self;
      v57 = controllerCopy;
      v28 = [(ICMarkupActivity *)v27 initFromView:currentImageView presentingViewController:v57 frameBlock:v58 completionBlock:v54];
      [v28 setInkStyle:1];
      v61[0] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
      v30 = [[ICMarkupActivityItem alloc] initWithAttachment:v53];
      v31 = [activityItems arrayByAddingObject:v30];

      activityItems = v31;
    }

    else
    {
      v29 = 0;
    }

    if (+[ICDocCamArchiveExporter archiveExportingEnabled])
    {
      extractedDocumentController = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
      galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
      v34 = [ICDocCamArchiveExporter exportAsArchiveActivityWithBarButtonItem:senderCopy presentingVC:extractedDocumentController fromGalleryAttachment:galleryAttachment];

      v35 = [v29 ic_arrayByAddingNonNilObject:v34];

      v29 = v35;
    }

    v36 = [[ICAttachmentActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:v29];
    galleryAttachment2 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];

    if (!galleryAttachment2)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((self.galleryAttachment) != nil)" functionName:"-[ICGalleryAttachmentEditorController extractedDocumentController:shareDocument:sender:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.galleryAttachment"}];
    }

    v51 = activityItems;
    galleryAttachment3 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    if (galleryAttachment3)
    {
      galleryAttachment4 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
      v60 = galleryAttachment4;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
      [(ICAttachmentActivityViewController *)v36 setAttachments:v40];
    }

    else
    {
      [(ICAttachmentActivityViewController *)v36 setAttachments:MEMORY[0x277CBEBF8]];
    }

    galleryAttachment5 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    note = [galleryAttachment5 note];
    account = [note account];
    -[ICAttachmentActivityViewController setIsContentManaged:](v36, "setIsContentManaged:", [account isManaged]);

    v44 = *MEMORY[0x277D54730];
    v59[0] = *MEMORY[0x277D360F8];
    v59[1] = v44;
    v59[2] = *MEMORY[0x277D54790];
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
    [(ICAttachmentActivityViewController *)v36 setExcludedActivityTypes:v45];

    activityTypeOrder = [objc_opt_class() activityTypeOrder];
    [(ICAttachmentActivityViewController *)v36 setActivityTypeOrder:activityTypeOrder];

    if ([MEMORY[0x277D75418] ic_isVision])
    {
      v47 = -2;
    }

    else
    {
      v47 = 7;
    }

    [(ICAttachmentActivityViewController *)v36 setModalPresentationStyle:v47];
    [controllerCopy presentViewController:v36 animated:1 completion:0];
    popoverPresentationController = [(ICAttachmentActivityViewController *)v36 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:senderCopy];
    [popoverPresentationController setPermittedArrowDirections:3];

    activityItems = v51;
    scanCollectionDataDelegate = v52;
    v22 = v49;
    goto LABEL_21;
  }

LABEL_23:
}

uint64_t __88__ICGalleryAttachmentEditorController_extractedDocumentController_shareDocument_sender___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D755B8];
  [a2 bounds];

  return [v2 ic_aspectFitImageFrameForViewWithFrame:? imageSize:?];
}

void __88__ICGalleryAttachmentEditorController_extractedDocumentController_shareDocument_sender___block_invoke_2(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277D755B8] imageWithData:a2];
    if (v3)
    {
      v8 = v3;
      v4 = [a1[4] croppedAndFilteredImageUUID];

      v5 = [a1[5] imageCache];
      v6 = [a1[4] metaData];
      if (v4)
      {
        v7 = [a1[4] croppedAndFilteredImageUUID];
        [v5 replaceImage:v8 metaData:v6 uuid:v7];
      }

      else
      {
        v7 = [v5 setImage:v8 metaData:v6];
        [a1[4] setCroppedAndFilteredImageUUID:v7];
      }

      [a1[6] didUpdateDocumentImage:a1[4]];
      v3 = v8;
    }
  }
}

+ (id)activityTypeOrder
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D54730];
  v6[0] = @"com.apple.mobilenotes.markup";
  v6[1] = v2;
  v3 = *MEMORY[0x277D54720];
  v6[2] = *MEMORY[0x277D54778];
  v6[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];

  return v4;
}

- (void)extractedDocumentControllerDidSelectShareFromMenuForDocument:(id)document sourceRect:(CGRect)rect sourceView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v25[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  documentCopy = document;
  objc_opt_class();
  scanDataDelegate = [documentCopy scanDataDelegate];

  v14 = ICDynamicCast();

  v15 = [ICAttachmentActivityViewController alloc];
  activityItems = [v14 activityItems];
  v17 = [(ICAttachmentActivityViewController *)v15 initWithActivityItems:activityItems applicationActivities:0];

  if (v14)
  {
    galleryAttachment = v14;
LABEL_4:
    v25[0] = galleryAttachment;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [(ICAttachmentActivityViewController *)v17 setAttachments:v19];

    goto LABEL_5;
  }

  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  if (galleryAttachment)
  {
    goto LABEL_4;
  }

  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((attachment) != nil)" functionName:"-[ICGalleryAttachmentEditorController extractedDocumentControllerDidSelectShareFromMenuForDocument:sourceRect:sourceView:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "attachment"}];
  [(ICAttachmentActivityViewController *)v17 setAttachments:MEMORY[0x277CBEBF8]];
LABEL_5:
  note = [galleryAttachment note];
  account = [note account];
  -[ICAttachmentActivityViewController setIsContentManaged:](v17, "setIsContentManaged:", [account isManaged]);

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v22 = -2;
  }

  else
  {
    v22 = 7;
  }

  [(ICAttachmentActivityViewController *)v17 setModalPresentationStyle:v22];
  extractedDocumentController = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
  [extractedDocumentController presentViewController:v17 animated:1 completion:0];

  popoverPresentationController = [(ICAttachmentActivityViewController *)v17 popoverPresentationController];
  [popoverPresentationController setSourceRect:{x, y, width, height}];
  [popoverPresentationController setSourceView:viewCopy];

  [popoverPresentationController setPermittedArrowDirections:3];
}

- (void)extractedDocumentControllerDidSelectCopyFromMenuForDocument:(id)document
{
  scanDataDelegate = [document scanDataDelegate];
  image = [scanDataDelegate image];
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  [generalPasteboard setImage:image];
}

- (CGSize)extractedDocumentControllerImageSizeForDocument:(id)document
{
  documentCopy = document;
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  if (galleryAttachment && (v6 = galleryAttachment, v7 = MEMORY[0x277D35E00], [documentCopy scanDataDelegateIdentifier], v8 = objc_claimAutoreleasedReturnValue(), -[ICGalleryAttachmentEditorController galleryAttachment](self, "galleryAttachment"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "managedObjectContext"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "attachmentWithIdentifier:context:", v8, v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v6, v11))
  {
    [v11 sizeWidth];
    v13 = v12;
    [v11 sizeHeight];
    v15 = v14;
  }

  else
  {
    v13 = *MEMORY[0x277CBF3A8];
    v15 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)extractedDocumentControllerImageForDocument:(id)document
{
  documentCopy = document;
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  if (galleryAttachment)
  {
    v6 = MEMORY[0x277D35E00];
    scanDataDelegateIdentifier = [documentCopy scanDataDelegateIdentifier];
    galleryAttachment2 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    managedObjectContext = [galleryAttachment2 managedObjectContext];
    v10 = [v6 attachmentWithIdentifier:scanDataDelegateIdentifier context:managedObjectContext];

    if (v10)
    {
      galleryAttachment = [MEMORY[0x277D36798] imageForSubAttachment:v10];
    }

    else
    {
      galleryAttachment = 0;
    }
  }

  return galleryAttachment;
}

- (id)extractedDocumentControllerUncroppedImageForDocument:(id)document
{
  documentCopy = document;
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  if (!galleryAttachment)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v6 = galleryAttachment;
  v7 = MEMORY[0x277D35E00];
  scanDataDelegateIdentifier = [documentCopy scanDataDelegateIdentifier];
  galleryAttachment2 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  managedObjectContext = [galleryAttachment2 managedObjectContext];
  v11 = [v7 attachmentWithIdentifier:scanDataDelegateIdentifier context:managedObjectContext];

  if (!v11)
  {
LABEL_7:
    v18 = 0;
    goto LABEL_13;
  }

  media = [v11 media];
  isPasswordProtected = [media isPasswordProtected];

  media2 = [v11 media];
  v15 = media2;
  if (!isPasswordProtected)
  {
    mediaURL = [media2 mediaURL];

    if (mediaURL)
    {
      v17 = [MEMORY[0x277D755B8] ic_imageWithContentsOfURL:mediaURL];
      goto LABEL_10;
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  mediaURL = [media2 decryptedData];

  if (!mediaURL)
  {
    goto LABEL_11;
  }

  v17 = [MEMORY[0x277D755B8] imageWithData:mediaURL];
LABEL_10:
  v18 = v17;
LABEL_12:

LABEL_13:

  return v18;
}

- (void)extractedDocumentControllerLoadThumbnailForDocument:(id)document size:(CGSize)size completionBlock:(id)block
{
  height = size.height;
  width = size.width;
  documentCopy = document;
  blockCopy = block;
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  if (galleryAttachment && (v12 = galleryAttachment, v13 = MEMORY[0x277D35E00], [documentCopy scanDataDelegateIdentifier], v14 = objc_claimAutoreleasedReturnValue(), -[ICGalleryAttachmentEditorController galleryAttachment](self, "galleryAttachment"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "managedObjectContext"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "attachmentWithIdentifier:context:", v14, v16), v17 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v12, v17))
  {
    extractedDocumentController = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
    view = [extractedDocumentController view];
    ic_appearanceInfo = [view ic_appearanceInfo];
    thumbnailCache = [(ICGalleryAttachmentEditorController *)self thumbnailCache];
    objectID = [v17 objectID];
    uRIRepresentation = [objectID URIRepresentation];
    absoluteString = [uRIRepresentation absoluteString];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __112__ICGalleryAttachmentEditorController_extractedDocumentControllerLoadThumbnailForDocument_size_completionBlock___block_invoke;
    v25[3] = &unk_2781AEB50;
    v26 = blockCopy;
    [v17 fetchThumbnailImageWithMinSize:ic_appearanceInfo scale:thumbnailCache appearanceInfo:absoluteString cache:0 cacheKey:v25 processingBlock:0 completionBlock:width fallbackBlock:height aboutToLoadHandler:{1.0, 0}];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

- (id)extractedDocumentControllerMarkupModelDataForDocument:(id)document
{
  v4 = MEMORY[0x277D35E00];
  scanDataDelegateIdentifier = [document scanDataDelegateIdentifier];
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  managedObjectContext = [galleryAttachment managedObjectContext];
  v8 = [v4 attachmentWithIdentifier:scanDataDelegateIdentifier context:managedObjectContext];

  markupModelData = [v8 markupModelData];

  return markupModelData;
}

- (void)extractedDocumentController:(id)controller startMarkupOnDocument:(id)document inkStyle:(unint64_t)style startPresentBlock:(id)block dismissCompletionBlock:(id)completionBlock
{
  controllerCopy = controller;
  documentCopy = document;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v16 = MEMORY[0x277D35E00];
  scanDataDelegateIdentifier = [documentCopy scanDataDelegateIdentifier];
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  managedObjectContext = [galleryAttachment managedObjectContext];
  v20 = [v16 attachmentWithIdentifier:scanDataDelegateIdentifier context:managedObjectContext];

  if (v20)
  {
    styleCopy = style;
    currentImageView = [controllerCopy currentImageView];
    croppedAndFilteredImageUUID = [documentCopy croppedAndFilteredImageUUID];

    if (croppedAndFilteredImageUUID)
    {
      imageCache = [(ICGalleryAttachmentEditorController *)self imageCache];
      croppedAndFilteredImageUUID2 = [documentCopy croppedAndFilteredImageUUID];
      v25 = [imageCache getImage:croppedAndFilteredImageUUID2];
    }

    else
    {
      v25 = [(ICGalleryAttachmentEditorController *)self extractedDocumentControllerImageForDocument:documentCopy];
    }

    imageCache2 = [(ICGalleryAttachmentEditorController *)self imageCache];
    objc_initWeak(&location, imageCache2);

    if (v25)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __139__ICGalleryAttachmentEditorController_extractedDocumentController_startMarkupOnDocument_inkStyle_startPresentBlock_dismissCompletionBlock___block_invoke;
      v32[3] = &unk_2781AEB78;
      v33 = v25;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __139__ICGalleryAttachmentEditorController_extractedDocumentController_startMarkupOnDocument_inkStyle_startPresentBlock_dismissCompletionBlock___block_invoke_2;
      v28[3] = &unk_2781AEBA0;
      objc_copyWeak(&v31, &location);
      v29 = documentCopy;
      v30 = controllerCopy;
      [ICMarkupPresenter markupAttachment:v20 fromView:currentImageView presentingViewController:v30 inkStyle:styleCopy frameBlock:v32 startPresentBlock:blockCopy completionBlock:v28 dismissCompletionBlock:completionBlockCopy];

      objc_destroyWeak(&v31);
    }

    objc_destroyWeak(&location);
  }
}

uint64_t __139__ICGalleryAttachmentEditorController_extractedDocumentController_startMarkupOnDocument_inkStyle_startPresentBlock_dismissCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D755B8];
  [a2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(a1 + 32) size];

  return [v3 ic_aspectFitImageFrameForViewWithFrame:v5 imageSize:{v7, v9, v11, v12, v13}];
}

void __139__ICGalleryAttachmentEditorController_extractedDocumentController_startMarkupOnDocument_inkStyle_startPresentBlock_dismissCompletionBlock___block_invoke_2(id *a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v8)
  {
    v4 = [MEMORY[0x277D755B8] imageWithData:?];
    if (v4)
    {
      v5 = [a1[4] croppedAndFilteredImageUUID];

      v6 = [a1[4] metaData];
      if (v5)
      {
        v7 = [a1[4] croppedAndFilteredImageUUID];
        [WeakRetained replaceImage:v4 metaData:v6 uuid:v7];
      }

      else
      {
        v7 = [WeakRetained setImage:v4 metaData:v6];
        [a1[4] setCroppedAndFilteredImageUUID:v7];
      }

      [a1[5] didUpdateDocumentImage:a1[4]];
    }
  }
}

- (void)extractedDocumentControllerDiscardMarkupModelDataForDocument:(id)document
{
  documentCopy = document;
  v5 = MEMORY[0x277D35E00];
  v14 = documentCopy;
  scanDataDelegateIdentifier = [documentCopy scanDataDelegateIdentifier];
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  managedObjectContext = [galleryAttachment managedObjectContext];
  v9 = [v5 attachmentWithIdentifier:scanDataDelegateIdentifier context:managedObjectContext];

  markupModelData = [v9 markupModelData];
  v11 = [markupModelData length];

  if (v11)
  {
    editor = [(ICGalleryAttachmentEditorController *)self editor];
    scanDataDelegateIdentifier2 = [v14 scanDataDelegateIdentifier];
    [editor setMarkupData:0 forAttachmentWithIdentifier:scanDataDelegateIdentifier2];
  }
}

- (id)extractedDocumentControllerUndoManager
{
  editor = [(ICGalleryAttachmentEditorController *)self editor];
  undoManager = [editor undoManager];

  return undoManager;
}

- (void)documentCameraPresentingViewController:(id)controller didFinishWithInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user closeViewController:(BOOL)viewController
{
  userCopy = user;
  controllerCopy = controller;
  collectionCopy = collection;
  cacheCopy = cache;
  if (userCopy && !viewController)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"!(warnUser && !closeViewController)" functionName:"-[ICGalleryAttachmentEditorController documentCameraPresentingViewController:didFinishWithInfoCollection:imageCache:warnUser:closeViewController:]" simulateCrash:1 showAlert:0 format:@"Cannot warn user if not closing the view controller"];
  }

  viewControllerCopy = viewController;
  docInfos = [collectionCopy docInfos];
  v15 = [docInfos count];

  if (!v15)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"docInfoCollection.docInfos.count > 0" functionName:"-[ICGalleryAttachmentEditorController documentCameraPresentingViewController:didFinishWithInfoCollection:imageCache:warnUser:closeViewController:]" simulateCrash:1 showAlert:0 format:@"This should never be called with a count of 0."];
  }

  eventReporter = [(ICGalleryAttachmentEditorController *)self eventReporter];
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  identifier = [galleryAttachment identifier];
  [eventReporter pushDocScanDataWithID:identifier actionType:3 stage:2];

  eventReporter2 = [(ICGalleryAttachmentEditorController *)self eventReporter];
  galleryAttachment2 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  note = [galleryAttachment2 note];
  galleryAttachment3 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  galleryModel = [galleryAttachment3 galleryModel];
  subAttachmentCount = [galleryModel subAttachmentCount];
  docInfos2 = [collectionCopy docInfos];
  [eventReporter2 submitDocScanEventForNote:note pageCount:{objc_msgSend(docInfos2, "count") + subAttachmentCount}];

  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__14;
  v37[4] = __Block_byref_object_dispose__14;
  extractedDocumentController = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
  currentDocument = [extractedDocumentController currentDocument];

  v27 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __146__ICGalleryAttachmentEditorController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke;
  block[3] = &unk_2781AEBF0;
  block[4] = self;
  v33 = collectionCopy;
  v34 = cacheCopy;
  v35 = v37;
  v36 = viewControllerCopy;
  v28 = cacheCopy;
  v29 = collectionCopy;
  dispatch_async(v27, block);

  _Block_object_dispose(v37, 8);
}

void __146__ICGalleryAttachmentEditorController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D36798];
  v3 = [*(a1 + 32) galleryAttachment];
  v4 = [*(a1 + 40) docInfos];
  v5 = [v2 createAndAddSubAttachmentsToGalleryAttachment:v3 fromDocuments:v4 imageCache:*(a1 + 48) context:0];

  if ([v5 count])
  {
    v6 = [*(a1 + 32) galleryAttachment];
    v7 = [v6 managedObjectContext];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __146__ICGalleryAttachmentEditorController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_2;
    v12[3] = &unk_2781AEBC8;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v13 = v8;
    v14 = v9;
    v10 = *(a1 + 48);
    v17 = *(a1 + 56);
    v15 = v10;
    v16 = v5;
    [v7 performBlockAndWait:v12];
  }

  if (*(a1 + 64) == 1)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __146__ICGalleryAttachmentEditorController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_107;
    v11[3] = &unk_2781ABCF8;
    v11[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

void __146__ICGalleryAttachmentEditorController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_2(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  v3 = [*(a1 + 32) docInfos];
  v67 = [v2 arrayWithCapacity:{objc_msgSend(v3, "count")}];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = [*(a1 + 32) docInfos];
  v4 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v81;
    v66 = *v81;
    do
    {
      v7 = 0;
      v68 = v5;
      do
      {
        if (*v81 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v80 + 1) + 8 * v7);
        v9 = [v8 scanDataDelegateIdentifier];

        if (v9)
        {
          v10 = MEMORY[0x277D35E00];
          v11 = [v8 scanDataDelegateIdentifier];
          v12 = [*(a1 + 40) galleryAttachment];
          v13 = [v12 managedObjectContext];
          v14 = [v10 attachmentWithIdentifier:v11 context:v13];

          if (v14)
          {
            v70 = v14;
            v15 = [*(a1 + 40) documentInfoCollection];
            v16 = [v15 docInfos];
            v17 = [v16 count];

            if (v17)
            {
              v18 = 0;
              while (1)
              {
                v19 = [v8 scanDataDelegateIdentifier];
                v20 = [*(a1 + 40) documentInfoCollection];
                v21 = [v20 docInfos];
                v22 = [v21 objectAtIndexedSubscript:v18];
                v23 = [v22 scanDataDelegateIdentifier];
                v24 = [v19 isEqualToString:v23];

                if (v24)
                {
                  break;
                }

                ++v18;
                v25 = [*(a1 + 40) documentInfoCollection];
                v26 = [v25 docInfos];
                v27 = [v26 count];

                if (v27 <= v18)
                {
                  goto LABEL_12;
                }
              }

              v28 = [*(a1 + 40) documentInfoCollection];
              v29 = [v28 docInfos];
              [v29 replaceObjectAtIndex:v18 withObject:v8];
            }

            else
            {
LABEL_12:
              v28 = [*(a1 + 40) documentInfoCollection];
              v29 = [v28 docInfos];
              [v29 addObject:v8];
            }

            v5 = v68;

            objc_storeStrong((*(*(a1 + 64) + 8) + 40), v8);
            v32 = *(a1 + 48);
            v31 = [v8 croppedAndFilteredImageUUID];
            v30 = [v32 getImageURL:v31 async:0];
            [v67 ic_addNonNilObject:v30];
            v6 = v66;
            v14 = v70;
          }

          else
          {
            v30 = os_log_create("com.apple.notes", "UI");
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              __146__ICGalleryAttachmentEditorController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_2_cold_1(v86, v8, &v87, v30);
            }

            v31 = v30;
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
    }

    while (v5);
  }

  objc_opt_class();
  v33 = [MEMORY[0x277D36260] objectForKey:@"ICShouldSavePhotosAndVideosToCameraRollKey"];
  v34 = ICDynamicCast();
  v35 = [v34 BOOLValue];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v36 = v67;
  v37 = [v36 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = 0;
    v40 = *v77;
    v41 = *MEMORY[0x277CBE838];
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v77 != v40)
        {
          objc_enumerationMutation(v36);
        }

        v43 = *(*(&v76 + 1) + 8 * i);
        v75 = 0;
        [v43 getResourceValue:&v75 forKey:v41 error:0];
        if (v75)
        {
          v44 = [v75 unsignedIntegerValue];
          if (v39 <= v44)
          {
            v39 = v44;
          }
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v38);
  }

  else
  {
    v39 = 0;
  }

  v45 = [*(a1 + 40) galleryAttachment];
  v46 = [v45 note];

  v47 = [v46 canAddAttachment];
  v48 = [v46 attachmentExceedsMaxSizeAllowed:v39];
  if (![v46 isPasswordProtected] && ((v35 | v48 | v47 ^ 1) & 1) != 0)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v49 = v36;
    v50 = [v49 countByEnumeratingWithState:&v71 objects:v84 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v72;
      do
      {
        for (j = 0; j != v51; ++j)
        {
          if (*v72 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v71 + 1) + 8 * j);
          v55 = objc_autoreleasePoolPush();
          v56 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v54];
          UIImageDataWriteToSavedPhotosAlbum();

          objc_autoreleasePoolPop(v55);
        }

        v51 = [v49 countByEnumeratingWithState:&v71 objects:v84 count:16];
      }

      while (v51);
    }
  }

  v57 = [*(a1 + 40) extractedDocumentController];
  [v57 didUpdateDocumentInfoArrayNewCurrentDocument:*(*(*(a1 + 64) + 8) + 40)];

  v58 = MEMORY[0x277CCACA8];
  v59 = [MEMORY[0x277CCA8D8] mainBundle];
  v60 = [v59 localizedStringForKey:@"ADD_%lu_SCANNED_IMAGES" value:&stru_282757698 table:0];
  v61 = [v58 localizedStringWithFormat:v60, objc_msgSend(*(a1 + 56), "count")];

  v62 = [*(a1 + 40) editor];
  v63 = [v62 undoManager];
  v64 = [v63 prepareWithInvocationTarget:v62];
  [v64 undoablyDeleteSubAttachments:*(a1 + 56) actionName:v61];

  v65 = [v62 undoManager];
  [v65 setActionName:v61];
}

void __146__ICGalleryAttachmentEditorController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_107(uint64_t a1)
{
  v2 = [*(a1 + 32) extractedDocumentController];
  v3 = [v2 navigationController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __146__ICGalleryAttachmentEditorController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_2_108;
  v4[3] = &unk_2781ABCF8;
  v4[4] = *(a1 + 32);
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

void __146__ICGalleryAttachmentEditorController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_2_108(uint64_t a1)
{
  v1 = [*(a1 + 32) extractedDocumentController];
  [v1 becomeFirstResponder];
}

- (void)documentCameraControllerDidCancelWithPresentingViewController:(id)controller
{
  extractedDocumentController = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
  navigationController = [extractedDocumentController navigationController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __101__ICGalleryAttachmentEditorController_documentCameraControllerDidCancelWithPresentingViewController___block_invoke;
  v6[3] = &unk_2781ABCF8;
  v6[4] = self;
  [navigationController dismissViewControllerAnimated:1 completion:v6];
}

void __101__ICGalleryAttachmentEditorController_documentCameraControllerDidCancelWithPresentingViewController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) extractedDocumentController];
  [v1 becomeFirstResponder];
}

- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user
{
  userCopy = user;
  cacheCopy = cache;
  collectionCopy = collection;
  presentingViewController = [controller presentingViewController];
  [(ICGalleryAttachmentEditorController *)self documentCameraPresentingViewController:presentingViewController didFinishWithInfoCollection:collectionCopy imageCache:cacheCopy warnUser:userCopy closeViewController:1];
}

- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user closeViewController:(BOOL)viewController
{
  userCopy = user;
  cacheCopy = cache;
  collectionCopy = collection;
  presentingViewController = [controller presentingViewController];
  [(ICGalleryAttachmentEditorController *)self documentCameraPresentingViewController:presentingViewController didFinishWithInfoCollection:collectionCopy imageCache:cacheCopy warnUser:userCopy closeViewController:1];
}

- (void)documentCameraControllerDidCancel:(id)cancel
{
  presentingViewController = [cancel presentingViewController];
  [(ICGalleryAttachmentEditorController *)self documentCameraControllerDidCancelWithPresentingViewController:presentingViewController];
}

- (void)documentCameraControllerDidRetake:(id)retake pageCount:(unint64_t)count
{
  eventReporter = [(ICGalleryAttachmentEditorController *)self eventReporter];
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  identifier = [galleryAttachment identifier];
  [eventReporter pushDocScanDataWithID:identifier actionType:2 stage:1];

  eventReporter2 = [(ICGalleryAttachmentEditorController *)self eventReporter];
  galleryAttachment2 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  note = [galleryAttachment2 note];
  galleryAttachment3 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  galleryModel = [galleryAttachment3 galleryModel];
  [eventReporter2 submitDocScanEventForNote:note pageCount:{objc_msgSend(galleryModel, "subAttachmentCount") + count}];
}

- (BOOL)documentCameraController:(id)controller canAddImages:(unint64_t)images
{
  controllerCopy = controller;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  galleryAttachment = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  managedObjectContext = [galleryAttachment managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__ICGalleryAttachmentEditorController_documentCameraController_canAddImages___block_invoke;
  v10[3] = &unk_2781AEC18;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = images;
  [managedObjectContext performBlockAndWait:v10];

  LOBYTE(images) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return images;
}

void __77__ICGalleryAttachmentEditorController_documentCameraController_canAddImages___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) galleryAttachment];
  objc_opt_class();
  v2 = [v6 attachmentModel];
  v3 = ICCheckedDynamicCast();

  v4 = *(a1 + 48) + [v3 subAttachmentCount];
  v5 = [MEMORY[0x277D35E70] sharedConfiguration];
  *(*(*(a1 + 40) + 8) + 24) = v4 <= [v5 maxSubAttachmentsPerAttachment];
}

- (void)remoteDocumentCameraController:(id)controller didFinishWithInfoCollection:(id)collection
{
  collectionCopy = collection;
  controllerCopy = controller;
  presentingViewController = [controllerCopy presentingViewController];
  imageCache = [controllerCopy imageCache];

  [(ICGalleryAttachmentEditorController *)self documentCameraPresentingViewController:presentingViewController didFinishWithInfoCollection:collectionCopy imageCache:imageCache warnUser:1 closeViewController:1];
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  if ([(ICGalleryAttachmentEditorController *)self useCustomRecropTransition:controller])
  {
    v8 = objc_alloc(MEMORY[0x277D05D40]);
    filteredImageForRecrop = [(ICGalleryAttachmentEditorController *)self filteredImageForRecrop];
    unfilteredImageForRecrop = [(ICGalleryAttachmentEditorController *)self unfilteredImageForRecrop];
    orientationForRecrop = [(ICGalleryAttachmentEditorController *)self orientationForRecrop];
    indexPathForRecrop = [(ICGalleryAttachmentEditorController *)self indexPathForRecrop];
    v13 = [v8 initWithImage:filteredImageForRecrop unfilteredImage:unfilteredImageForRecrop orientation:orientationForRecrop indexPath:indexPathForRecrop duration:0 completion:0.65];

    [(ICGalleryAttachmentEditorController *)self setFilteredImageForRecrop:0];
    [(ICGalleryAttachmentEditorController *)self setUnfilteredImageForRecrop:0];
    [v13 setPresenting:operation == 1];
    if (([v13 presenting] & 1) == 0)
    {
      [(ICGalleryAttachmentEditorController *)self setUseCustomRecropTransition:0];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)scanDataDelegateWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D35E00];
  v4 = MEMORY[0x277D35F30];
  identifierCopy = identifier;
  sharedContext = [v4 sharedContext];
  managedObjectContext = [sharedContext managedObjectContext];
  v8 = [v3 attachmentWithIdentifier:identifierCopy context:managedObjectContext];

  return v8;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v8 = NSClassFromString(&cfstr_Icdoccamextrac.isa);
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[v8 alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  v9 = NSClassFromString(&cfstr_Icdoccamextrac_0.isa);
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 alloc];
    sourceViewForZoomTransition = [(ICGalleryAttachmentEditorController *)self sourceViewForZoomTransition];
    v13 = [v11 initWithPresentedController:controllerCopy presentingController:presentingControllerCopy thumbnailView:sourceViewForZoomTransition duration:1 isPresenting:0.25];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  v5 = NSClassFromString(&cfstr_Icdoccamextrac_0.isa);
  if (v5 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 alloc];
    sourceViewForZoomTransition = [(ICGalleryAttachmentEditorController *)self sourceViewForZoomTransition];
    v9 = [v7 initWithPresentedController:controllerCopy presentingController:0 thumbnailView:sourceViewForZoomTransition duration:0 isPresenting:0.25];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter)
  {
    if ([MEMORY[0x277D35978] isOptedInForAnalytics])
    {
      extractedDocumentController = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
      viewIfLoaded = [extractedDocumentController viewIfLoaded];

      if (viewIfLoaded)
      {
        v5 = objc_alloc(MEMORY[0x277D35978]);
        v6 = *MEMORY[0x277D35988];
        extractedDocumentController2 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
        view = [extractedDocumentController2 view];
        v9 = [v5 initWithSubTrackerName:v6 view:view];
        eventReporter = self->_eventReporter;
        self->_eventReporter = v9;

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
      }
    }
  }

  v12 = self->_eventReporter;

  return v12;
}

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D35958];
  object = [sessionCopy object];

  [defaultCenter removeObserver:self name:v6 object:object];
}

- (ICGalleryAttachmentEditorControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)openEditorOnViewController:(void *)a1 pageIndex:(NSObject *)a2 sourceView:.cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 scanDataDelegateIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_2151A1000, a2, OS_LOG_TYPE_DEBUG, "Unable to open gallery attachment editor since attachment was missing: %@", &v4, 0xCu);
}

void __146__ICGalleryAttachmentEditorController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_2_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 scanDataDelegateIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_2151A1000, a4, OS_LOG_TYPE_ERROR, "Unable to find attachment for retrieving image url: %@", a1, 0xCu);
}

@end