@interface ICGalleryAttachmentEditorController
+ (id)activityTypeOrder;
- (BOOL)documentCameraController:(id)a3 canAddImages:(unint64_t)a4;
- (BOOL)openEditorOnViewController:(id)a3 pageIndex:(unint64_t)a4 sourceView:(id)a5;
- (BOOL)shouldAllowEditing;
- (BOOL)updateDocumentViewControllerFromModel;
- (CGSize)extractedDocumentControllerImageSizeForDocument:(id)a3;
- (ICGalleryAttachmentEditorController)initWithGalleryAttachment:(id)a3 browserMode:(BOOL)a4 delegate:(id)a5;
- (ICGalleryAttachmentEditorControllerDelegate)delegate;
- (ICNAEventReporter)eventReporter;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)documentCameraControllerCreateDataCryptorIfNecessary;
- (id)extractedDocumentControllerImageForDocument:(id)a3;
- (id)extractedDocumentControllerMarkupModelDataForDocument:(id)a3;
- (id)extractedDocumentControllerTitle;
- (id)extractedDocumentControllerUncroppedImageForDocument:(id)a3;
- (id)extractedDocumentControllerUndoManager;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (id)scanDataDelegateWithIdentifier:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)attachmentDidLoad:(id)a3;
- (void)attachmentTitleDidChange;
- (void)dealloc;
- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6;
- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6 closeViewController:(BOOL)a7;
- (void)documentCameraControllerDidCancel:(id)a3;
- (void)documentCameraControllerDidCancelWithPresentingViewController:(id)a3;
- (void)documentCameraControllerDidRetake:(id)a3 pageCount:(unint64_t)a4;
- (void)documentCameraPresentingViewController:(id)a3 didFinishWithInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6 closeViewController:(BOOL)a7;
- (void)eventReporterLostSession:(id)a3;
- (void)extractedDocumentController:(id)a3 didTapRecrop:(id)a4 index:(int64_t)a5;
- (void)extractedDocumentController:(id)a3 shareDocument:(id)a4 sender:(id)a5;
- (void)extractedDocumentController:(id)a3 startMarkupOnDocument:(id)a4 inkStyle:(unint64_t)a5 startPresentBlock:(id)a6 dismissCompletionBlock:(id)a7;
- (void)extractedDocumentControllerDidApplyFilter:(signed __int16)a3 forDocument:(id)a4;
- (void)extractedDocumentControllerDidChangeTitle:(id)a3;
- (void)extractedDocumentControllerDidDeleteDocument:(id)a3;
- (void)extractedDocumentControllerDidMovePageFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4 forDocument:(id)a5;
- (void)extractedDocumentControllerDidRotateDocument:(id)a3;
- (void)extractedDocumentControllerDidSelectCopyFromMenuForDocument:(id)a3;
- (void)extractedDocumentControllerDidSelectShareFromMenuForDocument:(id)a3 sourceRect:(CGRect)a4 sourceView:(id)a5;
- (void)extractedDocumentControllerDidTapAddImage;
- (void)extractedDocumentControllerDidTapDone:(unint64_t)a3 scanDataDelegate:(id)a4;
- (void)extractedDocumentControllerDiscardMarkupModelDataForDocument:(id)a3;
- (void)extractedDocumentControllerLoadThumbnailForDocument:(id)a3 size:(CGSize)a4 completionBlock:(id)a5;
- (void)movePageFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)previewImageDidUpdate:(id)a3;
- (void)remoteDocumentCameraController:(id)a3 didFinishWithInfoCollection:(id)a4;
- (void)updateDocInfoForAttachment:(id)a3;
@end

@implementation ICGalleryAttachmentEditorController

- (ICGalleryAttachmentEditorController)initWithGalleryAttachment:(id)a3 browserMode:(BOOL)a4 delegate:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v29.receiver = self;
  v29.super_class = ICGalleryAttachmentEditorController;
  v10 = [(ICGalleryAttachmentEditorController *)&v29 init];
  v11 = v10;
  if (v10)
  {
    [(ICGalleryAttachmentEditorController *)v10 setDelegate:v9];
    [(ICGalleryAttachmentEditorController *)v11 setGalleryAttachment:v8];
    v12 = [[ICDocCamScannedDocumentEditor alloc] initWithGalleryAttachment:v8];
    [(ICGalleryAttachmentEditorController *)v11 setEditor:v12];

    [(ICGalleryAttachmentEditorController *)v11 setBrowserMode:v6];
    objc_opt_class();
    v13 = [v8 attachmentModel];
    v14 = ICCheckedDynamicCast();

    if ([v8 isPasswordProtected])
    {
      v15 = objc_alloc(MEMORY[0x277D35E98]);
      v16 = [v8 identifier];
      v17 = [v15 initWithObjectIdentifier:v16];
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
    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 addObserver:v21 selector:sel_applicationWillTerminate_ name:*MEMORY[0x277D76770] object:0];

    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 addObserver:v21 selector:sel_previewImageDidUpdate_ name:*MEMORY[0x277D35BB8] object:0];

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 addObserver:v21 selector:sel_attachmentDidLoad_ name:*MEMORY[0x277D35B88] object:0];

    v25 = [(ICGalleryAttachmentEditorController *)v21 galleryAttachment];
    [v25 ic_addObserver:v21 forKeyPath:@"mergeableData" context:&compoundliteral_4];
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
  v3 = [(ICDocCamExtractedDocumentViewController *)self->_extractedDocumentController presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  [(ICDocCamImageCache *)self->_imageCache deleteAllImages];
  v5.receiver = self;
  v5.super_class = ICGalleryAttachmentEditorController;
  [(ICGalleryAttachmentEditorController *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  if (([(ICGalleryAttachmentEditorController *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/Common/TextAttachmentUI/iOS/ICGalleryAttachmentEditorController.m"]& 1) != 0)
  {
    v13 = [(ICGalleryAttachmentEditorController *)self ic_shouldIgnoreObserveValue:v11 ofObject:v12 forKeyPath:v10];

    if (a6 == &compoundliteral_4 && (v13 & 1) == 0)
    {
      v14 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
      if ([v14 faultingState])
      {
      }

      else
      {
        v15 = [v10 isEqualToString:@"mergeableData"];

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
    [(ICGalleryAttachmentEditorController *)&v16 observeValueForKeyPath:v10 ofObject:v12 change:v11 context:a6];
  }
}

- (void)applicationWillTerminate:(id)a3
{
  v3 = [(ICGalleryAttachmentEditorController *)self imageCache];
  [v3 deleteAllImages];
}

- (void)previewImageDidUpdate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v12 = ICCheckedDynamicCast();

  v6 = MEMORY[0x277D35E00];
  v7 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v8 = [v7 managedObjectContext];
  v9 = [v6 ic_existingObjectWithID:v12 context:v8];

  v10 = [v9 parentAttachment];
  v11 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];

  if (v10 == v11)
  {
    [(ICGalleryAttachmentEditorController *)self updateDocInfoForAttachment:v9];
  }
}

- (void)attachmentDidLoad:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v12 = ICCheckedDynamicCast();

  v6 = MEMORY[0x277D35E00];
  v7 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v8 = [v7 managedObjectContext];
  v9 = [v6 ic_existingObjectWithID:v12 context:v8];

  v10 = [v9 parentAttachment];
  v11 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];

  if (v10 == v11)
  {
    [(ICGalleryAttachmentEditorController *)self updateDocInfoForAttachment:v9];
  }
}

- (void)updateDocInfoForAttachment:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  if (v5 && ([v4 markedForDeletion] & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
    v7 = [v6 docInfos];

    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = [v12 scanDataDelegateIdentifier];
        v14 = [v13 isEqualToString:v5];

        if (v14)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
      [v15 setCurrentFilter:{objc_msgSend(v4, "imageFilterType")}];
      [v15 setCurrentOrientation:{objc_msgSend(v4, "orientation")}];
      v16 = [v4 croppingQuad];
      [v15 setImageQuad:v16];

      v17 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
      [v17 didUpdateDocumentImage:v15];
    }

    else
    {
LABEL_11:

LABEL_14:
      [(ICGalleryAttachmentEditorController *)self updateDocumentViewControllerFromModel];
    }
  }
}

- (void)movePageFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v6 = [(ICGalleryAttachmentEditorController *)self editor];
  [v6 movePageFromIndex:a3 toIndex:a4];
}

- (BOOL)updateDocumentViewControllerFromModel
{
  v55 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v3 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v4 = [v3 attachmentModel];
  v5 = ICCheckedDynamicCast();

  v6 = MEMORY[0x277CBEB38];
  v7 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
  v8 = [v7 docInfos];
  v9 = [v6 dictionaryWithCapacity:{objc_msgSend(v8, "count")}];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
  v11 = [v10 docInfos];

  v12 = [v11 countByEnumeratingWithState:&v50 objects:v54 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v50 + 1) + 8 * i);
        v17 = [v16 scanDataDelegateIdentifier];

        if (v17)
        {
          v18 = [v16 scanDataDelegateIdentifier];
          [v9 setObject:v16 forKeyedSubscript:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v13);
  }

  v19 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
  v20 = [v19 currentDocument];

  v21 = objc_alloc_init(MEMORY[0x277D05D10]);
  v43 = MEMORY[0x277D85DD0];
  v44 = 3221225472;
  v45 = __76__ICGalleryAttachmentEditorController_updateDocumentViewControllerFromModel__block_invoke;
  v46 = &unk_2781AEAB8;
  v47 = v9;
  v48 = self;
  v22 = v21;
  v49 = v22;
  v23 = v9;
  [v5 enumerateSubAttachmentsWithBlock:&v43];
  v24 = [v22 docInfos];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [v22 docInfos];
    v27 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
    v28 = [v27 docInfos];
    v29 = [v26 isEqualToArray:v28];

    if ((v29 & 1) == 0)
    {
      v30 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
      v31 = [v30 docInfos];
      [v31 removeAllObjects];

      v32 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
      v33 = [v32 docInfos];
      v34 = [v22 docInfos];
      [v33 addObjectsFromArray:v34];

      if (v20)
      {
        v35 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
        v36 = [v35 docInfos];
        if (![v36 count])
        {
LABEL_16:

          goto LABEL_17;
        }

        v37 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
        v38 = [v37 docInfos];
        v42 = [v38 indexOfObject:v20];

        if (v42 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v35 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
          v36 = [v35 docInfos];
          v39 = [v36 firstObject];

          v20 = v39;
          goto LABEL_16;
        }
      }

LABEL_17:
      v40 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController:v42];
      [v40 didUpdateDocumentInfoArrayNewCurrentDocument:v20];
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
    v4 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    v3 = [v4 isReadOnly] ^ 1;
  }

  return v3;
}

- (BOOL)openEditorOnViewController:(id)a3 pageIndex:(unint64_t)a4 sourceView:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ICGalleryAttachmentEditorController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(ICGalleryAttachmentEditorController *)self delegate];
    [v12 galleryAttachmentEditorControllerWillShow];
  }

  v13 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
  v14 = [v13 docInfos];
  v15 = [v14 count];

  if (v15 <= a4)
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
    v16 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
    v17 = [v16 docInfos];
    v18 = [v17 objectAtIndexedSubscript:a4];

    v19 = [(ICGalleryAttachmentEditorController *)self editor];
    v20 = [v18 scanDataDelegateIdentifier];
    v21 = [v19 subAttachmentWithIdentifier:v20];

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

      v24 = v8;
      v25 = v9;
      v26 = objc_alloc(MEMORY[0x277D05D18]);
      v27 = [(ICGalleryAttachmentEditorController *)self documentInfoCollection];
      v28 = [(ICGalleryAttachmentEditorController *)self imageCache];
      v29 = v26;
      v9 = v25;
      v8 = v24;
      v30 = [v29 initWithDelegate:self documentInfoCollection:v27 imageCache:v28 currentIndex:a4 mode:v23];

      [v30 setDelegate:self];
      [v30 setTransitioningDelegate:self];
      [v30 setModalPresentationStyle:4];
      [(ICGalleryAttachmentEditorController *)self setSourceViewForZoomTransition:v9];
      objc_opt_class();
      v31 = [v30 topViewController];
      v32 = ICCheckedDynamicCast();
      [(ICGalleryAttachmentEditorController *)self setExtractedDocumentController:v32];

      v33 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
      [v33 setTransitioningDelegate:self];

      v34 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
      [v34 setModalPresentationStyle:4];

      v35 = [v24 presentedViewController];

      if (v35)
      {
        v36 = [v24 presentedViewController];
        [v36 presentViewController:v30 animated:1 completion:0];
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
  v5 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
  v3 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v4 = [v3 title];
  [v5 didUpdateDocumentTitle:v4];
}

- (id)documentCameraControllerCreateDataCryptorIfNecessary
{
  v3 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v4 = [v3 isPasswordProtected];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D35E98]);
    v6 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    v7 = [v6 identifier];
    v8 = [v5 initWithObjectIdentifier:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)extractedDocumentController:(id)a3 didTapRecrop:(id)a4 index:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(ICGalleryAttachmentEditorController *)self editor];
  v11 = [v9 scanDataDelegateIdentifier];
  v12 = [v10 subAttachmentWithIdentifier:v11];

  if (v12)
  {
    v13 = [v12 unprocessedDocumentImage];
    v14 = [v12 croppingQuad];
    v15 = [v12 orientation];
    v16 = objc_alloc(MEMORY[0x277D05D30]);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __86__ICGalleryAttachmentEditorController_extractedDocumentController_didTapRecrop_index___block_invoke;
    v40[3] = &unk_2781AEAE0;
    v37 = v9;
    v17 = v9;
    v41 = v17;
    v42 = self;
    v43 = v12;
    v44 = v8;
    v45 = a5;
    v36 = a5;
    v38 = v14;
    v18 = v14;
    v19 = v44;
    v20 = [v16 initWithImage:v13 quad:v18 scanDataDelegate:v43 orientation:v15 completionHandler:v40];
    [v20 setShowImageAsAspectFit:1];
    [(ICGalleryAttachmentEditorController *)self setUseCustomRecropTransition:1];
    v21 = [v19 navigationController];
    [v21 setDelegate:self];

    v22 = [v20 navigationController];
    [v22 setDelegate:self];

    v23 = [v17 croppedAndFilteredImageUUID];

    if (v23)
    {
      v24 = [(ICGalleryAttachmentEditorController *)self imageCache];
      v25 = [v17 croppedAndFilteredImageUUID];
      v26 = [v24 getImage:v25];
    }

    else
    {
      v26 = [(ICGalleryAttachmentEditorController *)self extractedDocumentControllerImageForDocument:v17];
    }

    v39 = v8;
    v29 = [v17 croppedButNotFilteredImageUUID];

    if (v29)
    {
      v30 = [(ICGalleryAttachmentEditorController *)self imageCache];
      v31 = [v17 croppedButNotFilteredImageUUID];
      v32 = [v30 getImage:v31];
    }

    else
    {
      v32 = [v19 croppedButNotFilteredImageForDocInfo:v17];
    }

    v33 = [MEMORY[0x277CCAA70] indexPathForItem:v36 inSection:0];
    [(ICGalleryAttachmentEditorController *)self setIndexPathForRecrop:v33];

    [(ICGalleryAttachmentEditorController *)self setFilteredImageForRecrop:v26];
    v34 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:objc_msgSend(v32 scale:"ic_CGImage") orientation:{objc_msgSend(v17, "currentOrientation"), 1.0}];
    [(ICGalleryAttachmentEditorController *)self setUnfilteredImageForRecrop:v34];

    -[ICGalleryAttachmentEditorController setOrientationForRecrop:](self, "setOrientationForRecrop:", [v17 currentOrientation]);
    v35 = [v19 navigationController];
    [v35 pushViewController:v20 animated:1];

    v8 = v39;
    v9 = v37;
  }

  else
  {
    v27 = MEMORY[0x277D36198];
    v28 = [v9 scanDataDelegateIdentifier];
    [v27 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICGalleryAttachmentEditorController extractedDocumentController:didTapRecrop:index:]" simulateCrash:1 showAlert:0 format:{@"Trying to recrop attachment with identifier, but identifier is not sub-attachment of gallery: %@", v28}];
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
    v4 = [(ICGalleryAttachmentEditorController *)self imageCache];
    v19 = [v3 initWithImageCache:v4 docCamDelegate:self remoteDocCamDelegate:self];

    [v19 setModalTransitionStyle:2];
    v5 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
    v6 = [v5 navigationController];
    [v6 presentViewController:v19 animated:1 completion:0];

    v7 = [(ICGalleryAttachmentEditorController *)self eventReporter];
    v8 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    v9 = [v8 galleryModel];
    [v7 pushStartDocScanPageCountData:{objc_msgSend(v9, "subAttachmentCount")}];

    v10 = [(ICGalleryAttachmentEditorController *)self eventReporter];
    v11 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    v12 = [v11 identifier];
    [v10 pushDocScanDataWithID:v12 actionType:3 stage:1];

    v13 = [(ICGalleryAttachmentEditorController *)self eventReporter];
    v14 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    v15 = [v14 note];
    v16 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    v17 = [v16 galleryModel];
    [v13 submitDocScanEventForNote:v15 pageCount:{objc_msgSend(v17, "subAttachmentCount")}];
  }

  else
  {
    v18 = MEMORY[0x277D05D60];
    v19 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
    [v18 warnAboutMaxScansReachedForViewController:? completionHandler:?];
  }
}

- (void)extractedDocumentControllerDidTapDone:(unint64_t)a3 scanDataDelegate:(id)a4
{
  v6 = a4;
  v7 = [(ICGalleryAttachmentEditorController *)self delegate];
  v8 = [v7 ic_viewControllerManager];

  objc_opt_class();
  v9 = ICDynamicCast();

  objc_opt_class();
  v10 = [(ICGalleryAttachmentEditorController *)self sourceViewForZoomTransition];
  v11 = ICDynamicCast();

  if (v11)
  {
    v12 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
    v13 = [v8 currentAttachmentPresenter];
    [v13 scrollCollectionViewToIndexPath:v12];
    v14 = [v13 transitionViewForAttachment:v9 atIndexPath:v12];
    [(ICGalleryAttachmentEditorController *)self setSourceViewForZoomTransition:v14];
  }

  v15 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__ICGalleryAttachmentEditorController_extractedDocumentControllerDidTapDone_scanDataDelegate___block_invoke;
  v16[3] = &unk_2781ABCF8;
  v16[4] = self;
  [v15 dismissViewControllerAnimated:1 completion:v16];
}

uint64_t __94__ICGalleryAttachmentEditorController_extractedDocumentControllerDidTapDone_scanDataDelegate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setExtractedDocumentController:0];
  v2 = [*(a1 + 32) delegate];
  [v2 galleryAttachmentEditorControllerDidDismiss];

  v3 = *(a1 + 32);

  return [v3 setSourceViewForZoomTransition:0];
}

- (void)extractedDocumentControllerDidRotateDocument:(id)a3
{
  v7 = a3;
  v4 = [(ICGalleryAttachmentEditorController *)self editor];
  v5 = [v7 scanDataDelegateIdentifier];
  v6 = [v4 indexForAttachmentWithIdentifier:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setOrientation:objc_msgSend(v7 forAttachmentAtIndex:{"currentOrientation"), v6}];
  }
}

- (void)extractedDocumentControllerDidApplyFilter:(signed __int16)a3 forDocument:(id)a4
{
  v8 = a4;
  v5 = [(ICGalleryAttachmentEditorController *)self editor];
  v6 = [v8 scanDataDelegateIdentifier];
  v7 = [v5 indexForAttachmentWithIdentifier:v6];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 applyFilter:objc_msgSend(v8 forAttachmentAtIndex:{"currentFilter"), v7}];
  }
}

- (void)extractedDocumentControllerDidDeleteDocument:(id)a3
{
  v4 = a3;
  v5 = [(ICGalleryAttachmentEditorController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    v8 = [v7 galleryModel];
    v9 = [v8 subAttachmentCount];

    v10 = [(ICGalleryAttachmentEditorController *)self editor];
    v11 = [v4 scanDataDelegateIdentifier];
    v12 = [v10 indexForAttachmentWithIdentifier:v11];

    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_opt_class();
      v13 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
      v14 = [v13 attachmentModel];
      v15 = ICCheckedDynamicCast();

      if (v12 || [v15 subAttachmentCount] != 1)
      {
        v16 = [MEMORY[0x277CCAA78] indexSetWithIndex:v12];
        [v10 deletePagesAtIndexes:v16];
      }

      else
      {
        v16 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __84__ICGalleryAttachmentEditorController_extractedDocumentControllerDidDeleteDocument___block_invoke;
        v26[3] = &unk_2781ABCF8;
        v26[4] = self;
        [v16 dismissViewControllerAnimated:1 completion:v26];
      }
    }

    v17 = [(ICGalleryAttachmentEditorController *)self eventReporter];
    [v17 pushStartDocScanPageCountData:v9];

    v18 = [(ICGalleryAttachmentEditorController *)self eventReporter];
    v19 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    v20 = [v19 identifier];
    [v18 pushDocScanDataWithID:v20 actionType:4 stage:2];

    v21 = [(ICGalleryAttachmentEditorController *)self eventReporter];
    v22 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    v23 = [v22 note];
    v24 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    v25 = [v24 galleryModel];
    [v21 submitDocScanEventForNote:v23 pageCount:{objc_msgSend(v25, "subAttachmentCount")}];
  }
}

void __84__ICGalleryAttachmentEditorController_extractedDocumentControllerDidDeleteDocument___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 galleryAttachmentEditorControllerDeleteAttachment];
}

- (void)extractedDocumentControllerDidMovePageFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4 forDocument:(id)a5
{
  v8 = a5;
  v11 = [(ICGalleryAttachmentEditorController *)self editor];
  v9 = [v8 scanDataDelegateIdentifier];

  v10 = [v11 indexForAttachmentWithIdentifier:v9];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v11 movePageFromIndex:a3 toIndex:a4];
  }
}

- (id)extractedDocumentControllerTitle
{
  v3 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v4 = [v3 title];
  v5 = [v4 length];
  v6 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v7 = v6;
  if (v5)
  {
    [v6 title];
  }

  else
  {
    [v6 defaultTitle];
  }
  v8 = ;

  return v8;
}

- (void)extractedDocumentControllerDidChangeTitle:(id)a3
{
  v4 = a3;
  v5 = [(ICGalleryAttachmentEditorController *)self editor];
  [v5 updateDocumentTitle:v4 isUserDefined:1];
}

- (void)extractedDocumentController:(id)a3 shareDocument:(id)a4 sender:(id)a5
{
  v61[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICGalleryAttachmentEditorController *)self editor];
  v12 = [v9 scanDataDelegateIdentifier];
  v13 = [v11 indexForAttachmentWithIdentifier:v12];

  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_opt_class();
    v14 = [v9 scanDataDelegate];
    v15 = ICDynamicCast();

    if (!v15)
    {
LABEL_22:

      goto LABEL_23;
    }

    v53 = v15;
    v16 = [v8 scanCollectionDataDelegate];
    v17 = [v16 activityItems];
    v18 = [v9 croppedAndFilteredImageUUID];

    if (v18)
    {
      v19 = [(ICGalleryAttachmentEditorController *)self imageCache];
      v20 = [v9 croppedAndFilteredImageUUID];
      v21 = [v19 getImage:v20];

      v22 = v21;
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v22 = [(ICGalleryAttachmentEditorController *)self extractedDocumentControllerImageForDocument:v9];
      if (!v22)
      {
LABEL_21:

        v15 = v53;
        goto LABEL_22;
      }
    }

    v52 = v16;
    v49 = v22;
    if ([(ICGalleryAttachmentEditorController *)self shouldAllowEditing])
    {
      v50 = [v8 currentImageView];
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
      v55 = v9;
      v56 = self;
      v57 = v8;
      v28 = [(ICMarkupActivity *)v27 initFromView:v50 presentingViewController:v57 frameBlock:v58 completionBlock:v54];
      [v28 setInkStyle:1];
      v61[0] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
      v30 = [[ICMarkupActivityItem alloc] initWithAttachment:v53];
      v31 = [v17 arrayByAddingObject:v30];

      v17 = v31;
    }

    else
    {
      v29 = 0;
    }

    if (+[ICDocCamArchiveExporter archiveExportingEnabled])
    {
      v32 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
      v33 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
      v34 = [ICDocCamArchiveExporter exportAsArchiveActivityWithBarButtonItem:v10 presentingVC:v32 fromGalleryAttachment:v33];

      v35 = [v29 ic_arrayByAddingNonNilObject:v34];

      v29 = v35;
    }

    v36 = [[ICAttachmentActivityViewController alloc] initWithActivityItems:v17 applicationActivities:v29];
    v37 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];

    if (!v37)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((self.galleryAttachment) != nil)" functionName:"-[ICGalleryAttachmentEditorController extractedDocumentController:shareDocument:sender:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.galleryAttachment"}];
    }

    v51 = v17;
    v38 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    if (v38)
    {
      v39 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
      v60 = v39;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
      [(ICAttachmentActivityViewController *)v36 setAttachments:v40];
    }

    else
    {
      [(ICAttachmentActivityViewController *)v36 setAttachments:MEMORY[0x277CBEBF8]];
    }

    v41 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    v42 = [v41 note];
    v43 = [v42 account];
    -[ICAttachmentActivityViewController setIsContentManaged:](v36, "setIsContentManaged:", [v43 isManaged]);

    v44 = *MEMORY[0x277D54730];
    v59[0] = *MEMORY[0x277D360F8];
    v59[1] = v44;
    v59[2] = *MEMORY[0x277D54790];
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
    [(ICAttachmentActivityViewController *)v36 setExcludedActivityTypes:v45];

    v46 = [objc_opt_class() activityTypeOrder];
    [(ICAttachmentActivityViewController *)v36 setActivityTypeOrder:v46];

    if ([MEMORY[0x277D75418] ic_isVision])
    {
      v47 = -2;
    }

    else
    {
      v47 = 7;
    }

    [(ICAttachmentActivityViewController *)v36 setModalPresentationStyle:v47];
    [v8 presentViewController:v36 animated:1 completion:0];
    v48 = [(ICAttachmentActivityViewController *)v36 popoverPresentationController];
    [v48 setBarButtonItem:v10];
    [v48 setPermittedArrowDirections:3];

    v17 = v51;
    v16 = v52;
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

- (void)extractedDocumentControllerDidSelectShareFromMenuForDocument:(id)a3 sourceRect:(CGRect)a4 sourceView:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v25[1] = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a3;
  objc_opt_class();
  v13 = [v12 scanDataDelegate];

  v14 = ICDynamicCast();

  v15 = [ICAttachmentActivityViewController alloc];
  v16 = [v14 activityItems];
  v17 = [(ICAttachmentActivityViewController *)v15 initWithActivityItems:v16 applicationActivities:0];

  if (v14)
  {
    v18 = v14;
LABEL_4:
    v25[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [(ICAttachmentActivityViewController *)v17 setAttachments:v19];

    goto LABEL_5;
  }

  v18 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  if (v18)
  {
    goto LABEL_4;
  }

  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((attachment) != nil)" functionName:"-[ICGalleryAttachmentEditorController extractedDocumentControllerDidSelectShareFromMenuForDocument:sourceRect:sourceView:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "attachment"}];
  [(ICAttachmentActivityViewController *)v17 setAttachments:MEMORY[0x277CBEBF8]];
LABEL_5:
  v20 = [v18 note];
  v21 = [v20 account];
  -[ICAttachmentActivityViewController setIsContentManaged:](v17, "setIsContentManaged:", [v21 isManaged]);

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v22 = -2;
  }

  else
  {
    v22 = 7;
  }

  [(ICAttachmentActivityViewController *)v17 setModalPresentationStyle:v22];
  v23 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
  [v23 presentViewController:v17 animated:1 completion:0];

  v24 = [(ICAttachmentActivityViewController *)v17 popoverPresentationController];
  [v24 setSourceRect:{x, y, width, height}];
  [v24 setSourceView:v11];

  [v24 setPermittedArrowDirections:3];
}

- (void)extractedDocumentControllerDidSelectCopyFromMenuForDocument:(id)a3
{
  v5 = [a3 scanDataDelegate];
  v3 = [v5 image];
  v4 = [MEMORY[0x277D75810] generalPasteboard];
  [v4 setImage:v3];
}

- (CGSize)extractedDocumentControllerImageSizeForDocument:(id)a3
{
  v4 = a3;
  v5 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  if (v5 && (v6 = v5, v7 = MEMORY[0x277D35E00], [v4 scanDataDelegateIdentifier], v8 = objc_claimAutoreleasedReturnValue(), -[ICGalleryAttachmentEditorController galleryAttachment](self, "galleryAttachment"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "managedObjectContext"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "attachmentWithIdentifier:context:", v8, v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v6, v11))
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

- (id)extractedDocumentControllerImageForDocument:(id)a3
{
  v4 = a3;
  v5 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  if (v5)
  {
    v6 = MEMORY[0x277D35E00];
    v7 = [v4 scanDataDelegateIdentifier];
    v8 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
    v9 = [v8 managedObjectContext];
    v10 = [v6 attachmentWithIdentifier:v7 context:v9];

    if (v10)
    {
      v5 = [MEMORY[0x277D36798] imageForSubAttachment:v10];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)extractedDocumentControllerUncroppedImageForDocument:(id)a3
{
  v4 = a3;
  v5 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  if (!v5)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v6 = v5;
  v7 = MEMORY[0x277D35E00];
  v8 = [v4 scanDataDelegateIdentifier];
  v9 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v10 = [v9 managedObjectContext];
  v11 = [v7 attachmentWithIdentifier:v8 context:v10];

  if (!v11)
  {
LABEL_7:
    v18 = 0;
    goto LABEL_13;
  }

  v12 = [v11 media];
  v13 = [v12 isPasswordProtected];

  v14 = [v11 media];
  v15 = v14;
  if (!v13)
  {
    v16 = [v14 mediaURL];

    if (v16)
    {
      v17 = [MEMORY[0x277D755B8] ic_imageWithContentsOfURL:v16];
      goto LABEL_10;
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v16 = [v14 decryptedData];

  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = [MEMORY[0x277D755B8] imageWithData:v16];
LABEL_10:
  v18 = v17;
LABEL_12:

LABEL_13:

  return v18;
}

- (void)extractedDocumentControllerLoadThumbnailForDocument:(id)a3 size:(CGSize)a4 completionBlock:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  if (v11 && (v12 = v11, v13 = MEMORY[0x277D35E00], [v9 scanDataDelegateIdentifier], v14 = objc_claimAutoreleasedReturnValue(), -[ICGalleryAttachmentEditorController galleryAttachment](self, "galleryAttachment"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "managedObjectContext"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "attachmentWithIdentifier:context:", v14, v16), v17 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v12, v17))
  {
    v18 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
    v19 = [v18 view];
    v20 = [v19 ic_appearanceInfo];
    v21 = [(ICGalleryAttachmentEditorController *)self thumbnailCache];
    v22 = [v17 objectID];
    v23 = [v22 URIRepresentation];
    v24 = [v23 absoluteString];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __112__ICGalleryAttachmentEditorController_extractedDocumentControllerLoadThumbnailForDocument_size_completionBlock___block_invoke;
    v25[3] = &unk_2781AEB50;
    v26 = v10;
    [v17 fetchThumbnailImageWithMinSize:v20 scale:v21 appearanceInfo:v24 cache:0 cacheKey:v25 processingBlock:0 completionBlock:width fallbackBlock:height aboutToLoadHandler:{1.0, 0}];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (id)extractedDocumentControllerMarkupModelDataForDocument:(id)a3
{
  v4 = MEMORY[0x277D35E00];
  v5 = [a3 scanDataDelegateIdentifier];
  v6 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v7 = [v6 managedObjectContext];
  v8 = [v4 attachmentWithIdentifier:v5 context:v7];

  v9 = [v8 markupModelData];

  return v9;
}

- (void)extractedDocumentController:(id)a3 startMarkupOnDocument:(id)a4 inkStyle:(unint64_t)a5 startPresentBlock:(id)a6 dismissCompletionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x277D35E00];
  v17 = [v13 scanDataDelegateIdentifier];
  v18 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v19 = [v18 managedObjectContext];
  v20 = [v16 attachmentWithIdentifier:v17 context:v19];

  if (v20)
  {
    v27 = a5;
    v21 = [v12 currentImageView];
    v22 = [v13 croppedAndFilteredImageUUID];

    if (v22)
    {
      v23 = [(ICGalleryAttachmentEditorController *)self imageCache];
      v24 = [v13 croppedAndFilteredImageUUID];
      v25 = [v23 getImage:v24];
    }

    else
    {
      v25 = [(ICGalleryAttachmentEditorController *)self extractedDocumentControllerImageForDocument:v13];
    }

    v26 = [(ICGalleryAttachmentEditorController *)self imageCache];
    objc_initWeak(&location, v26);

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
      v29 = v13;
      v30 = v12;
      [ICMarkupPresenter markupAttachment:v20 fromView:v21 presentingViewController:v30 inkStyle:v27 frameBlock:v32 startPresentBlock:v14 completionBlock:v28 dismissCompletionBlock:v15];

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

- (void)extractedDocumentControllerDiscardMarkupModelDataForDocument:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D35E00];
  v14 = v4;
  v6 = [v4 scanDataDelegateIdentifier];
  v7 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v8 = [v7 managedObjectContext];
  v9 = [v5 attachmentWithIdentifier:v6 context:v8];

  v10 = [v9 markupModelData];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(ICGalleryAttachmentEditorController *)self editor];
    v13 = [v14 scanDataDelegateIdentifier];
    [v12 setMarkupData:0 forAttachmentWithIdentifier:v13];
  }
}

- (id)extractedDocumentControllerUndoManager
{
  v2 = [(ICGalleryAttachmentEditorController *)self editor];
  v3 = [v2 undoManager];

  return v3;
}

- (void)documentCameraPresentingViewController:(id)a3 didFinishWithInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6 closeViewController:(BOOL)a7
{
  v8 = a6;
  v31 = a3;
  v12 = a4;
  v13 = a5;
  if (v8 && !a7)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"!(warnUser && !closeViewController)" functionName:"-[ICGalleryAttachmentEditorController documentCameraPresentingViewController:didFinishWithInfoCollection:imageCache:warnUser:closeViewController:]" simulateCrash:1 showAlert:0 format:@"Cannot warn user if not closing the view controller"];
  }

  v30 = a7;
  v14 = [v12 docInfos];
  v15 = [v14 count];

  if (!v15)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"docInfoCollection.docInfos.count > 0" functionName:"-[ICGalleryAttachmentEditorController documentCameraPresentingViewController:didFinishWithInfoCollection:imageCache:warnUser:closeViewController:]" simulateCrash:1 showAlert:0 format:@"This should never be called with a count of 0."];
  }

  v16 = [(ICGalleryAttachmentEditorController *)self eventReporter];
  v17 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v18 = [v17 identifier];
  [v16 pushDocScanDataWithID:v18 actionType:3 stage:2];

  v19 = [(ICGalleryAttachmentEditorController *)self eventReporter];
  v20 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v21 = [v20 note];
  v22 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v23 = [v22 galleryModel];
  v24 = [v23 subAttachmentCount];
  v25 = [v12 docInfos];
  [v19 submitDocScanEventForNote:v21 pageCount:{objc_msgSend(v25, "count") + v24}];

  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__14;
  v37[4] = __Block_byref_object_dispose__14;
  v26 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
  v38 = [v26 currentDocument];

  v27 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __146__ICGalleryAttachmentEditorController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke;
  block[3] = &unk_2781AEBF0;
  block[4] = self;
  v33 = v12;
  v34 = v13;
  v35 = v37;
  v36 = v30;
  v28 = v13;
  v29 = v12;
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

- (void)documentCameraControllerDidCancelWithPresentingViewController:(id)a3
{
  v4 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
  v5 = [v4 navigationController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __101__ICGalleryAttachmentEditorController_documentCameraControllerDidCancelWithPresentingViewController___block_invoke;
  v6[3] = &unk_2781ABCF8;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:1 completion:v6];
}

void __101__ICGalleryAttachmentEditorController_documentCameraControllerDidCancelWithPresentingViewController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) extractedDocumentController];
  [v1 becomeFirstResponder];
}

- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [a3 presentingViewController];
  [(ICGalleryAttachmentEditorController *)self documentCameraPresentingViewController:v12 didFinishWithInfoCollection:v11 imageCache:v10 warnUser:v6 closeViewController:1];
}

- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6 closeViewController:(BOOL)a7
{
  v7 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 presentingViewController];
  [(ICGalleryAttachmentEditorController *)self documentCameraPresentingViewController:v13 didFinishWithInfoCollection:v12 imageCache:v11 warnUser:v7 closeViewController:1];
}

- (void)documentCameraControllerDidCancel:(id)a3
{
  v4 = [a3 presentingViewController];
  [(ICGalleryAttachmentEditorController *)self documentCameraControllerDidCancelWithPresentingViewController:v4];
}

- (void)documentCameraControllerDidRetake:(id)a3 pageCount:(unint64_t)a4
{
  v6 = [(ICGalleryAttachmentEditorController *)self eventReporter];
  v7 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v8 = [v7 identifier];
  [v6 pushDocScanDataWithID:v8 actionType:2 stage:1];

  v13 = [(ICGalleryAttachmentEditorController *)self eventReporter];
  v9 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v10 = [v9 note];
  v11 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v12 = [v11 galleryModel];
  [v13 submitDocScanEventForNote:v10 pageCount:{objc_msgSend(v12, "subAttachmentCount") + a4}];
}

- (BOOL)documentCameraController:(id)a3 canAddImages:(unint64_t)a4
{
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [(ICGalleryAttachmentEditorController *)self galleryAttachment];
  v8 = [v7 managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__ICGalleryAttachmentEditorController_documentCameraController_canAddImages___block_invoke;
  v10[3] = &unk_2781AEC18;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = a4;
  [v8 performBlockAndWait:v10];

  LOBYTE(a4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return a4;
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

- (void)remoteDocumentCameraController:(id)a3 didFinishWithInfoCollection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 presentingViewController];
  v8 = [v7 imageCache];

  [(ICGalleryAttachmentEditorController *)self documentCameraPresentingViewController:v9 didFinishWithInfoCollection:v6 imageCache:v8 warnUser:1 closeViewController:1];
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  if ([(ICGalleryAttachmentEditorController *)self useCustomRecropTransition:a3])
  {
    v8 = objc_alloc(MEMORY[0x277D05D40]);
    v9 = [(ICGalleryAttachmentEditorController *)self filteredImageForRecrop];
    v10 = [(ICGalleryAttachmentEditorController *)self unfilteredImageForRecrop];
    v11 = [(ICGalleryAttachmentEditorController *)self orientationForRecrop];
    v12 = [(ICGalleryAttachmentEditorController *)self indexPathForRecrop];
    v13 = [v8 initWithImage:v9 unfilteredImage:v10 orientation:v11 indexPath:v12 duration:0 completion:0.65];

    [(ICGalleryAttachmentEditorController *)self setFilteredImageForRecrop:0];
    [(ICGalleryAttachmentEditorController *)self setUnfilteredImageForRecrop:0];
    [v13 setPresenting:a4 == 1];
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

- (id)scanDataDelegateWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277D35E00];
  v4 = MEMORY[0x277D35F30];
  v5 = a3;
  v6 = [v4 sharedContext];
  v7 = [v6 managedObjectContext];
  v8 = [v3 attachmentWithIdentifier:v5 context:v7];

  return v8;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = NSClassFromString(&cfstr_Icdoccamextrac.isa);
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[v8 alloc] initWithPresentedViewController:v6 presentingViewController:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = NSClassFromString(&cfstr_Icdoccamextrac_0.isa);
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 alloc];
    v12 = [(ICGalleryAttachmentEditorController *)self sourceViewForZoomTransition];
    v13 = [v11 initWithPresentedController:v7 presentingController:v8 thumbnailView:v12 duration:1 isPresenting:0.25];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = NSClassFromString(&cfstr_Icdoccamextrac_0.isa);
  if (v5 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 alloc];
    v8 = [(ICGalleryAttachmentEditorController *)self sourceViewForZoomTransition];
    v9 = [v7 initWithPresentedController:v4 presentingController:0 thumbnailView:v8 duration:0 isPresenting:0.25];
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
      v3 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
      v4 = [v3 viewIfLoaded];

      if (v4)
      {
        v5 = objc_alloc(MEMORY[0x277D35978]);
        v6 = *MEMORY[0x277D35988];
        v7 = [(ICGalleryAttachmentEditorController *)self extractedDocumentController];
        v8 = [v7 view];
        v9 = [v5 initWithSubTrackerName:v6 view:v8];
        eventReporter = self->_eventReporter;
        self->_eventReporter = v9;

        v11 = [MEMORY[0x277CCAB98] defaultCenter];
        [v11 addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
      }
    }
  }

  v12 = self->_eventReporter;

  return v12;
}

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D35958];
  v7 = [v5 object];

  [v8 removeObserver:self name:v6 object:v7];
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