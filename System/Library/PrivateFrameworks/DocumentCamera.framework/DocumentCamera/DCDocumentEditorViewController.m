@interface DCDocumentEditorViewController
+ (BOOL)isAvailable;
+ (id)activityTypeOrder;
+ (id)docInfoCollectionFromScannedDocument:(id)a3 imageCache:(id)a4;
- (BOOL)documentCameraController:(id)a3 canAddImages:(unint64_t)a4;
- (DCDocumentEditorViewController)initWithDelegate:(id)a3 scannedDocument:(id)a4;
- (DCDocumentEditorViewControllerDelegate)docCamDelegate;
- (id)extractedDocumentControllerTitle;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (void)_autoDismiss;
- (void)didReceiveMemoryWarning;
- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6 closeViewController:(BOOL)a7;
- (void)documentCameraControllerDidCancel:(id)a3;
- (void)extractedDocumentController:(id)a3 didTapRecrop:(id)a4 index:(int64_t)a5;
- (void)extractedDocumentController:(id)a3 shareDocument:(id)a4 sender:(id)a5;
- (void)extractedDocumentControllerDidChangeTitle:(id)a3;
- (void)extractedDocumentControllerDidSelectCopyFromMenuForDocument:(id)a3;
- (void)extractedDocumentControllerDidSelectShareFromMenuForDocument:(id)a3 sourceRect:(CGRect)a4 sourceView:(id)a5;
- (void)extractedDocumentControllerDidTapAddImage;
- (void)extractedDocumentControllerDidTapDone:(unint64_t)a3;
- (void)extractedDocumentControllerDidTapDone:(unint64_t)a3 scanDataDelegate:(id)a4;
- (void)extractedDocumentControllerDiscardMarkupModelDataForDocument:(id)a3;
- (void)remoteDocumentCameraController:(id)a3 didFailWithError:(id)a4;
- (void)remoteDocumentCameraController:(id)a3 didFinishWithInfoCollection:(id)a4;
- (void)remoteDocumentCameraControllerDidCancel:(id)a3;
- (void)viewDidLoad;
@end

@implementation DCDocumentEditorViewController

+ (BOOL)isAvailable
{
  v2 = MGGetBoolAnswer();
  if (v2)
  {
    LOBYTE(v2) = MGGetBoolAnswer() ^ 1;
  }

  return v2;
}

+ (id)docInfoCollectionFromScannedDocument:(id)a3 imageCache:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v34 = a4;
  v6 = [v5 docInfos];
  v7 = objc_alloc_init(ICDocCamDocumentInfoCollection);
  v33 = [(ICDocCamDocumentInfoCollection *)v7 docInfos];
  v37 = v5;
  v8 = [v5 title];
  v31 = v7;
  [(ICDocCamDocumentInfoCollection *)v7 setTitle:v8];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v6;
  v36 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v36)
  {
    v10 = *v41;
    v32 = v9;
    while (2)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = [v12 croppedAndFilteredImageUUID];
        v14 = [v37 getImage:v13];
        v15 = [v12 fullImageUUID];
        v16 = [v37 getImage:v15];
        v17 = v16;
        if (v14)
        {
          v18 = v16 == 0;
        }

        else
        {
          v18 = 1;
        }

        v19 = !v18;
        if (v18)
        {
          v20 = os_log_create("com.apple.documentcamera", "");
          if (os_log_type_enabled(&v20->super, OS_LOG_TYPE_ERROR))
          {
            [(DCDocumentEditorViewController *)&buf docInfoCollectionFromScannedDocument:v39 imageCache:&v20->super];
          }
        }

        else
        {
          v20 = [[ICDocCamDocumentInfo alloc] initWithDelegate:0];
          [v12 metaData];
          v35 = v19;
          v22 = v21 = v10;
          v23 = [v22 copy];
          [(ICDocCamDocumentInfo *)v20 setMetaData:v23];

          v24 = [v12 imageQuad];
          v25 = [v24 copy];
          [(ICDocCamDocumentInfo *)v20 setImageQuad:v25];

          v26 = [v34 setImage:v14 metaData:0];
          [(ICDocCamDocumentInfo *)v20 setCroppedAndFilteredImageUUID:v26];

          [(ICDocCamDocumentInfo *)v20 setCroppedButNotFilteredImageUUID:0];
          v10 = v21;
          v19 = v35;
          v27 = [v34 setImage:v17 metaData:0];
          [(ICDocCamDocumentInfo *)v20 setFullImageUUID:v27];

          v9 = v32;
          [(ICDocCamDocumentInfo *)v20 setMeshAnimImageUUID:0];
          -[ICDocCamDocumentInfo setCurrentFilter:](v20, "setCurrentFilter:", [v12 currentFilter]);
          -[ICDocCamDocumentInfo setCurrentOrientation:](v20, "setCurrentOrientation:", [v12 currentOrientation]);
          [(ICDocCamDocumentInfo *)v20 setScanDataDelegateIdentifier:0];
          [v33 addObject:v20];
        }

        if (!v19)
        {

          v29 = 0;
          v28 = v31;
          goto LABEL_21;
        }
      }

      v36 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }
  }

  v28 = v31;
  v29 = v31;
LABEL_21:

  return v29;
}

- (DCDocumentEditorViewController)initWithDelegate:(id)a3 scannedDocument:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[ICDocCamImageCache alloc] initWithDataCryptorDelegate:0];
  v9 = [DCDocumentEditorViewController docInfoCollectionFromScannedDocument:v7 imageCache:v8];
  v10 = [[ICDocCamExtractedDocumentViewController alloc] initWithDelegate:self documentInfoCollection:v9 imageCache:v8 currentIndex:0 mode:1];
  v14.receiver = self;
  v14.super_class = DCDocumentEditorViewController;
  v11 = [(DCDocumentEditorViewController *)&v14 initWithRootViewController:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_extractedDocumentController, v10);
    objc_storeWeak(&v12->_docCamDelegate, v6);
    objc_storeStrong(&v12->_docInfoCollection, v9);
    objc_storeStrong(&v12->_imageCache, v8);
    objc_storeStrong(&v12->_scannedDocument, a4);
  }

  return v12;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = DCDocumentEditorViewController;
  [(DCDocumentEditorViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = DCDocumentEditorViewController;
  [(DCDocumentEditorViewController *)&v2 didReceiveMemoryWarning];
}

- (void)_autoDismiss
{
  v2 = [(DCDocumentEditorViewController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)extractedDocumentControllerDidTapDone:(unint64_t)a3 scanDataDelegate:(id)a4
{
  v5 = [(DCDocumentEditorViewController *)self docCamDelegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(DCDocumentEditorViewController *)self docInfoCollection];
    v8 = [v7 creationDate];
    v9 = [(DCDocumentEditorViewController *)self docInfoCollection];
    v10 = [v9 modificationDate];

    if (v8 != v10)
    {
      v11 = [(DCDocumentEditorViewController *)self scannedDocument];
      v12 = [(DCDocumentEditorViewController *)self docInfoCollection];
      v13 = [(DCDocumentEditorViewController *)self imageCache];
      [v11 replaceContentsWithDocInfoCollection:v12 imageCache:v13];
    }

    v14 = v8 != v10;
    v15 = [(DCDocumentEditorViewController *)self imageCache];
    [v15 deleteAllImages];

    +[DCDocCamPDFGenerator deleteAllDocCamPDFs];
    v17 = [(DCDocumentEditorViewController *)self docCamDelegate];
    v16 = [(DCDocumentEditorViewController *)self scannedDocument];
    [v17 documentEditorViewController:self didFinishWithDocument:v16 wasModified:v14];
  }

  else
  {

    [(DCDocumentEditorViewController *)self _autoDismiss];
  }
}

- (void)extractedDocumentControllerDidTapDone:(unint64_t)a3
{
  v3 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(DCDocumentEditorViewController *)v3 extractedDocumentControllerDidTapDone:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (void)extractedDocumentController:(id)a3 didTapRecrop:(id)a4 index:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [(DCDocumentEditorViewController *)self imageCache];
    v11 = [v9 fullImageUUID];
    v34 = v10;
    v12 = [v10 getImage:v11];

    v13 = [v9 imageQuad];
    v14 = [v9 currentOrientation];
    v15 = [ICDocCamImageQuadEditViewController alloc];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __81__DCDocumentEditorViewController_extractedDocumentController_didTapRecrop_index___block_invoke;
    v36[3] = &unk_278F934D0;
    v16 = v9;
    v37 = v16;
    v38 = self;
    v17 = v8;
    v39 = v17;
    v40 = a5;
    v32 = v13;
    v33 = v12;
    v18 = [(ICDocCamImageQuadEditViewController *)v15 initWithImage:v12 quad:v13 scanDataDelegate:0 orientation:v14 completionHandler:v36];
    [(ICDocCamImageQuadEditViewController *)v18 setShowImageAsAspectFit:1];
    [(DCDocumentEditorViewController *)self setUseCustomRecropTransition:1];
    v19 = [v17 navigationController];
    [v19 setDelegate:self];

    v20 = [(ICDocCamImageQuadEditViewController *)v18 navigationController];
    [v20 setDelegate:self];

    v21 = [v16 croppedAndFilteredImageUUID];

    if (v21)
    {
      v22 = [(DCDocumentEditorViewController *)self imageCache];
      v23 = [v16 croppedAndFilteredImageUUID];
      v24 = [v22 getImage:v23];
    }

    else
    {
      v24 = [(DCDocumentEditorViewController *)self extractedDocumentControllerImageForDocument:v16];
    }

    v35 = v8;
    v25 = [v16 croppedButNotFilteredImageUUID];

    if (v25)
    {
      v26 = [(DCDocumentEditorViewController *)self imageCache];
      v27 = [v16 croppedButNotFilteredImageUUID];
      v28 = [v26 getImage:v27];
    }

    else
    {
      v28 = [v17 croppedButNotFilteredImageForDocInfo:v16];
    }

    v29 = [MEMORY[0x277CCAA70] indexPathForItem:a5 inSection:0];
    [(DCDocumentEditorViewController *)self setIndexPathForRecrop:v29];

    [(DCDocumentEditorViewController *)self setFilteredImageForRecrop:v24];
    v30 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:objc_msgSend(v28 scale:"CGImage") orientation:{objc_msgSend(v16, "currentOrientation"), 1.0}];
    [(DCDocumentEditorViewController *)self setUnfilteredImageForRecrop:v30];

    -[DCDocumentEditorViewController setOrientationForRecrop:](self, "setOrientationForRecrop:", [v16 currentOrientation]);
    v31 = [v17 navigationController];
    [v31 pushViewController:v18 animated:1];

    v8 = v35;
  }
}

void __81__DCDocumentEditorViewController_extractedDocumentController_didTapRecrop_index___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v26 = a3;
  v7 = a4;
  if (a2)
  {
    [*(a1 + 32) setImageQuad:v7];
    v8 = [ICDocCamImageFilters perspectiveCorrectedImageFromImage:v26 normalizedImageQuad:v7];
    v9 = +[ICDocCamImageFilters filteredImage:orientation:imageFilterType:constantColor:](ICDocCamImageFilters, "filteredImage:orientation:imageFilterType:constantColor:", v8, [*(a1 + 32) currentOrientation], objc_msgSend(*(a1 + 32), "currentFilter"), objc_msgSend(*(a1 + 32), "constantColor"));
    v10 = [*(a1 + 40) imageCache];
    v11 = [*(a1 + 32) metaData];
    v12 = [*(a1 + 32) croppedAndFilteredImageUUID];
    [v10 replaceImage:v9 metaData:v11 uuid:v12];

    [*(a1 + 48) didUpdateDocumentImage:*(a1 + 32)];
  }

  v13 = [*(a1 + 32) croppedAndFilteredImageUUID];

  v14 = *(a1 + 40);
  if (v13)
  {
    v15 = [v14 imageCache];
    v16 = [*(a1 + 32) croppedAndFilteredImageUUID];
    v17 = [v15 getImage:v16];
  }

  else
  {
    v17 = [v14 extractedDocumentControllerImageForDocument:*(a1 + 32)];
  }

  v18 = [*(a1 + 32) croppedButNotFilteredImageUUID];

  if (v18)
  {
    v19 = [*(a1 + 40) imageCache];
    v20 = [*(a1 + 32) croppedButNotFilteredImageUUID];
    v21 = [v19 getImage:v20];
  }

  else
  {
    v21 = [*(a1 + 48) croppedButNotFilteredImageForDocInfo:*(a1 + 32)];
  }

  v22 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 56) inSection:0];
  [*(a1 + 40) setIndexPathForRecrop:v22];

  [*(a1 + 40) setFilteredImageForRecrop:v17];
  v23 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:objc_msgSend(v21 scale:"CGImage") orientation:{objc_msgSend(*(a1 + 32), "currentOrientation"), 1.0}];
  [*(a1 + 40) setUnfilteredImageForRecrop:v23];

  [*(a1 + 40) setOrientationForRecrop:{objc_msgSend(*(a1 + 32), "currentOrientation")}];
  v24 = [*(a1 + 48) navigationController];
  v25 = [v24 popViewControllerAnimated:1];
}

- (void)extractedDocumentControllerDidTapAddImage
{
  if ([(DCDocumentEditorViewController *)self documentCameraController:0 canAddImages:1])
  {
    v3 = [ICDocCamNavigationController alloc];
    v4 = [(DCDocumentEditorViewController *)self imageCache];
    v7 = [(ICDocCamNavigationController *)v3 initWithImageCache:v4 docCamDelegate:self remoteDocCamDelegate:self];

    [(ICDocCamNavigationController *)v7 setModalTransitionStyle:2];
    v5 = [(DCDocumentEditorViewController *)self extractedDocumentController];
    v6 = [v5 navigationController];
    [v6 presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    v7 = [(DCDocumentEditorViewController *)self extractedDocumentController];
    [ICDocCamViewController warnAboutMaxScansReachedForViewController:"warnAboutMaxScansReachedForViewController:completionHandler:" completionHandler:?];
  }
}

- (void)extractedDocumentController:(id)a3 shareDocument:(id)a4 sender:(id)a5
{
  v46[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEA60] array];
  v12 = [v9 croppedAndFilteredImageUUID];

  if (!v12)
  {
    v15 = [(DCDocumentEditorViewController *)self extractedDocumentControllerImageForDocument:v9];
    if (!v15)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = [(DCDocumentEditorViewController *)self imageCache];
  v14 = [v9 croppedAndFilteredImageUUID];
  v15 = [v13 getImage:v14];

  if (v15)
  {
LABEL_3:
    v39 = [v8 currentImageView];
    [v15 size];
    v17 = v16;
    v19 = v18;
    v20 = [DCMarkupActivity alloc];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __83__DCDocumentEditorViewController_extractedDocumentController_shareDocument_sender___block_invoke;
    v45[3] = &__block_descriptor_48_e47__CGRect__CGPoint_dd__CGSize_dd__16__0__UIView_8l;
    v45[4] = v17;
    v45[5] = v19;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __83__DCDocumentEditorViewController_extractedDocumentController_shareDocument_sender___block_invoke_2;
    v41[3] = &unk_278F93518;
    v21 = v9;
    v42 = v21;
    v43 = self;
    v22 = v8;
    v44 = v22;
    v40 = v8;
    v23 = [(DCMarkupActivity *)v20 initFromView:v39 presentingViewController:v22 frameBlock:v45 completionBlock:v41];
    [v23 setInkStyle:1];
    v46[0] = v23;
    [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    v24 = v38 = v15;
    v25 = [DCMarkupActivityItem alloc];
    [(DCDocumentEditorViewController *)self imageCache];
    v27 = v26 = v10;
    v37 = [(DCMarkupActivityItem *)v25 initWithDocumentInfo:v21 imageCache:v27];

    v28 = [v11 arrayByAddingObject:v37];

    v29 = [DCDocumentInfoCollectionActivityItemSource alloc];
    v30 = [(DCDocumentEditorViewController *)self docInfoCollection];
    v31 = [(DCActivityItemSource *)v29 initWithDocumentInfoCollection:v30];

    v11 = [v28 arrayByAddingObject:v31];

    v32 = [[DCActivityViewController alloc] initWithActivityItems:v11 applicationActivities:v24];
    v33 = [(DCDocumentEditorViewController *)self docInfoCollection];
    [(DCActivityViewController *)v32 setDocumentInfoCollection:v33];

    v34 = [(DCDocumentEditorViewController *)self imageCache];
    [(DCActivityViewController *)v32 setImageCache:v34];

    v10 = v26;
    [(DCActivityViewController *)v32 setCompletionWithItemsHandler:&__block_literal_global_5];
    v35 = [objc_opt_class() activityTypeOrder];
    [(DCActivityViewController *)v32 setActivityTypeOrder:v35];

    [(DCActivityViewController *)v32 setModalPresentationStyle:7];
    [v22 presentViewController:v32 animated:1 completion:0];
    v36 = [(DCActivityViewController *)v32 popoverPresentationController];
    [v36 setBarButtonItem:v26];
    [v36 setPermittedArrowDirections:3];

    v8 = v40;
    v15 = v38;
  }

LABEL_4:
}

uint64_t __83__DCDocumentEditorViewController_extractedDocumentController_shareDocument_sender___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D755B8];
  [a2 bounds];

  return [v2 dc_aspectFitImageFrameForViewWithFrame:? imageSize:?];
}

void __83__DCDocumentEditorViewController_extractedDocumentController_shareDocument_sender___block_invoke_2(id *a1, uint64_t a2)
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

void __83__DCDocumentEditorViewController_extractedDocumentController_shareDocument_sender___block_invoke_3(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v12 = a2;
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    NSLog(&cfstr_WeUsedActivity.isa, v12);
  }

  else
  {
    NSLog(&cfstr_WeDidnTWantToS.isa);
  }

  if (v9)
  {
    v10 = [v9 localizedDescription];
    v11 = [v9 localizedFailureReason];
    NSLog(&cfstr_AnErrorOccurre.isa, v10, v11);
  }
}

+ (id)activityTypeOrder
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D54730];
  v6[0] = @"com.apple.documentcamera.markup";
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
  v22[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = [v11 croppedAndFilteredImageUUID];

  if (!v13)
  {
    v16 = [(DCDocumentEditorViewController *)self extractedDocumentControllerImageForDocument:v11];
    if (!v16)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = [(DCDocumentEditorViewController *)self imageCache];
  v15 = [v11 croppedAndFilteredImageUUID];
  v16 = [v14 getImage:v15];

  if (v16)
  {
LABEL_3:
    v17 = objc_alloc(MEMORY[0x277D546D8]);
    v22[0] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v19 = [v17 initWithActivityItems:v18 applicationActivities:MEMORY[0x277CBEBF8]];

    [v19 setModalPresentationStyle:7];
    v20 = [(DCDocumentEditorViewController *)self extractedDocumentController];
    [v20 presentViewController:v19 animated:1 completion:0];

    v21 = [v19 popoverPresentationController];
    [v21 setSourceRect:{x, y, width, height}];
    [v21 setSourceView:v12];
    [v21 setPermittedArrowDirections:3];
  }

LABEL_4:
}

- (void)extractedDocumentControllerDidSelectCopyFromMenuForDocument:(id)a3
{
  v9 = a3;
  v4 = [v9 croppedAndFilteredImageUUID];

  if (v4)
  {
    v5 = [(DCDocumentEditorViewController *)self imageCache];
    v6 = [v9 croppedAndFilteredImageUUID];
    v7 = [v5 getImage:v6];

    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = [(DCDocumentEditorViewController *)self extractedDocumentControllerImageForDocument:v9];
  if (v7)
  {
LABEL_3:
    v8 = [MEMORY[0x277D75810] generalPasteboard];
    [v8 setImage:v7];
  }

LABEL_4:
}

- (id)extractedDocumentControllerTitle
{
  v3 = [(DCDocumentEditorViewController *)self docInfoCollection];
  v4 = [v3 title];

  if (v4)
  {
    v5 = [(DCDocumentEditorViewController *)self docInfoCollection];
    v6 = [v5 title];
  }

  else
  {
    v6 = [DCLocalization localizedStringForKey:@"Scanned Documents" value:@"Scanned Documents" table:@"Localizable"];
  }

  return v6;
}

- (void)extractedDocumentControllerDidChangeTitle:(id)a3
{
  v4 = a3;
  v5 = [(DCDocumentEditorViewController *)self docInfoCollection];
  [v5 setTitle:v4];
}

- (void)extractedDocumentControllerDiscardMarkupModelDataForDocument:(id)a3
{
  v21 = a3;
  [v21 setMarkupModelData:0];
  v4 = [v21 croppedAndFilteredImageUUID];

  if (v4)
  {
    v5 = [(DCDocumentEditorViewController *)self imageCache];
    v6 = [v21 fullImageUUID];
    v7 = [v5 getImage:v6];

    v8 = [v21 imageQuad];
    v9 = [ICDocCamImageFilters perspectiveCorrectedImageFromImage:v7 normalizedImageQuad:v8];

    v10 = +[ICDocCamImageFilters filteredImage:orientation:imageFilterType:constantColor:](ICDocCamImageFilters, "filteredImage:orientation:imageFilterType:constantColor:", v9, [v21 currentOrientation], objc_msgSend(v21, "currentFilter"), objc_msgSend(v21, "constantColor"));
    v11 = [(DCDocumentEditorViewController *)self imageCache];
    v12 = [v21 metaData];
    v13 = [v21 croppedAndFilteredImageUUID];
    [v11 replaceImage:v10 metaData:v12 uuid:v13];
  }

  v14 = [v21 croppedButNotFilteredImageUUID];

  if (v14)
  {
    v15 = [(DCDocumentEditorViewController *)self imageCache];
    v16 = [v21 croppedButNotFilteredImageUUID];
    [v15 deleteImage:v16];
  }

  v17 = [v21 meshAnimImageUUID];

  if (v17)
  {
    v18 = [(DCDocumentEditorViewController *)self imageCache];
    v19 = [v21 meshAnimImageUUID];
    [v18 deleteImage:v19];
  }

  v20 = [(DCDocumentEditorViewController *)self extractedDocumentController];
  [v20 didUpdateDocumentImage:v21];
}

- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6 closeViewController:(BOOL)a7
{
  v8 = a6;
  v50 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v12 = a4;
  v13 = a5;
  if (v8 && !a7)
  {
    v14 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(DCDocumentEditorViewController *)v14 documentCameraController:v15 didFinishWithDocInfoCollection:v16 imageCache:v17 warnUser:v18 closeViewController:v19, v20, v21];
    }
  }

  v22 = [v12 docInfos];
  v23 = [v22 count];

  if (!v23)
  {
    v24 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(DCDocumentEditorViewController *)v24 documentCameraController:v25 didFinishWithDocInfoCollection:v26 imageCache:v27 warnUser:v28 closeViewController:v29, v30, v31];
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v32 = [v12 docInfos];
  v33 = [v32 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v46;
    do
    {
      v36 = 0;
      do
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v45 + 1) + 8 * v36);
        v38 = [(DCDocumentEditorViewController *)self docInfoCollection];
        v39 = [v38 docInfos];
        [v39 addObject:v37];

        v40 = [(DCDocumentEditorViewController *)self extractedDocumentController];
        [v40 didUpdateDocumentInfoArrayNewCurrentDocument:v37];

        ++v36;
      }

      while (v34 != v36);
      v34 = [v32 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v34);
  }

  v41 = [(DCDocumentEditorViewController *)self docInfoCollection];
  [v41 bumpModificationDate];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __130__DCDocumentEditorViewController_documentCameraController_didFinishWithDocInfoCollection_imageCache_warnUser_closeViewController___block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __130__DCDocumentEditorViewController_documentCameraController_didFinishWithDocInfoCollection_imageCache_warnUser_closeViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) extractedDocumentController];
  v3 = [v2 navigationController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __130__DCDocumentEditorViewController_documentCameraController_didFinishWithDocInfoCollection_imageCache_warnUser_closeViewController___block_invoke_2;
  v4[3] = &unk_278F92C70;
  v4[4] = *(a1 + 32);
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

void __130__DCDocumentEditorViewController_documentCameraController_didFinishWithDocInfoCollection_imageCache_warnUser_closeViewController___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) extractedDocumentController];
  [v1 becomeFirstResponder];
}

- (void)documentCameraControllerDidCancel:(id)a3
{
  v4 = [(DCDocumentEditorViewController *)self extractedDocumentController];
  v5 = [v4 navigationController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__DCDocumentEditorViewController_documentCameraControllerDidCancel___block_invoke;
  v6[3] = &unk_278F92C70;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:1 completion:v6];
}

void __68__DCDocumentEditorViewController_documentCameraControllerDidCancel___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) extractedDocumentController];
  [v1 becomeFirstResponder];
}

- (BOOL)documentCameraController:(id)a3 canAddImages:(unint64_t)a4
{
  v5 = [(DCDocumentEditorViewController *)self docInfoCollection];
  v6 = [v5 docInfos];
  LOBYTE(a4) = [v6 count] + a4 < 0x19;

  return a4;
}

- (void)remoteDocumentCameraControllerDidCancel:(id)a3
{
  v4 = [(DCDocumentEditorViewController *)self extractedDocumentController];
  v5 = [v4 navigationController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__DCDocumentEditorViewController_remoteDocumentCameraControllerDidCancel___block_invoke;
  v6[3] = &unk_278F92C70;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:1 completion:v6];
}

void __74__DCDocumentEditorViewController_remoteDocumentCameraControllerDidCancel___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) extractedDocumentController];
  [v1 becomeFirstResponder];
}

- (void)remoteDocumentCameraController:(id)a3 didFinishWithInfoCollection:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a4 docInfos];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [(DCDocumentEditorViewController *)self docInfoCollection];
        v12 = [v11 docInfos];
        [v12 addObject:v10];

        v13 = [(DCDocumentEditorViewController *)self extractedDocumentController];
        [v13 didUpdateDocumentInfoArrayNewCurrentDocument:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [(DCDocumentEditorViewController *)self docInfoCollection];
  [v14 bumpModificationDate];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__DCDocumentEditorViewController_remoteDocumentCameraController_didFinishWithInfoCollection___block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __93__DCDocumentEditorViewController_remoteDocumentCameraController_didFinishWithInfoCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) extractedDocumentController];
  v3 = [v2 navigationController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __93__DCDocumentEditorViewController_remoteDocumentCameraController_didFinishWithInfoCollection___block_invoke_2;
  v4[3] = &unk_278F92C70;
  v4[4] = *(a1 + 32);
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

void __93__DCDocumentEditorViewController_remoteDocumentCameraController_didFinishWithInfoCollection___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) extractedDocumentController];
  [v1 becomeFirstResponder];
}

- (void)remoteDocumentCameraController:(id)a3 didFailWithError:(id)a4
{
  v5 = [(DCDocumentEditorViewController *)self extractedDocumentController:a3];
  v6 = [v5 navigationController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__DCDocumentEditorViewController_remoteDocumentCameraController_didFailWithError___block_invoke;
  v7[3] = &unk_278F92C70;
  v7[4] = self;
  [v6 dismissViewControllerAnimated:1 completion:v7];
}

void __82__DCDocumentEditorViewController_remoteDocumentCameraController_didFailWithError___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) extractedDocumentController];
  [v1 becomeFirstResponder];
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  if ([(DCDocumentEditorViewController *)self useCustomRecropTransition:a3])
  {
    v8 = [ICDocCamRecropTransitionAnimator alloc];
    v9 = [(DCDocumentEditorViewController *)self filteredImageForRecrop];
    v10 = [(DCDocumentEditorViewController *)self unfilteredImageForRecrop];
    v11 = [(DCDocumentEditorViewController *)self orientationForRecrop];
    v12 = [(DCDocumentEditorViewController *)self indexPathForRecrop];
    v13 = [(ICDocCamRecropTransitionAnimator *)v8 initWithImage:v9 unfilteredImage:v10 orientation:v11 indexPath:v12 duration:0 completion:0.65];

    [(DCDocumentEditorViewController *)self setFilteredImageForRecrop:0];
    [(DCDocumentEditorViewController *)self setUnfilteredImageForRecrop:0];
    [(ICDocCamRecropTransitionAnimator *)v13 setPresenting:a4 == 1];
    if (![(ICDocCamRecropTransitionAnimator *)v13 presenting])
    {
      [(DCDocumentEditorViewController *)self setUseCustomRecropTransition:0];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (DCDocumentEditorViewControllerDelegate)docCamDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_docCamDelegate);

  return WeakRetained;
}

+ (void)docInfoCollectionFromScannedDocument:(os_log_t)log imageCache:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "File missing", buf, 2u);
}

@end