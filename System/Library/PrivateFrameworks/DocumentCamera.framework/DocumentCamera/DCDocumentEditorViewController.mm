@interface DCDocumentEditorViewController
+ (BOOL)isAvailable;
+ (id)activityTypeOrder;
+ (id)docInfoCollectionFromScannedDocument:(id)document imageCache:(id)cache;
- (BOOL)documentCameraController:(id)controller canAddImages:(unint64_t)images;
- (DCDocumentEditorViewController)initWithDelegate:(id)delegate scannedDocument:(id)document;
- (DCDocumentEditorViewControllerDelegate)docCamDelegate;
- (id)extractedDocumentControllerTitle;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (void)_autoDismiss;
- (void)didReceiveMemoryWarning;
- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user closeViewController:(BOOL)viewController;
- (void)documentCameraControllerDidCancel:(id)cancel;
- (void)extractedDocumentController:(id)controller didTapRecrop:(id)recrop index:(int64_t)index;
- (void)extractedDocumentController:(id)controller shareDocument:(id)document sender:(id)sender;
- (void)extractedDocumentControllerDidChangeTitle:(id)title;
- (void)extractedDocumentControllerDidSelectCopyFromMenuForDocument:(id)document;
- (void)extractedDocumentControllerDidSelectShareFromMenuForDocument:(id)document sourceRect:(CGRect)rect sourceView:(id)view;
- (void)extractedDocumentControllerDidTapAddImage;
- (void)extractedDocumentControllerDidTapDone:(unint64_t)done;
- (void)extractedDocumentControllerDidTapDone:(unint64_t)done scanDataDelegate:(id)delegate;
- (void)extractedDocumentControllerDiscardMarkupModelDataForDocument:(id)document;
- (void)remoteDocumentCameraController:(id)controller didFailWithError:(id)error;
- (void)remoteDocumentCameraController:(id)controller didFinishWithInfoCollection:(id)collection;
- (void)remoteDocumentCameraControllerDidCancel:(id)cancel;
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

+ (id)docInfoCollectionFromScannedDocument:(id)document imageCache:(id)cache
{
  v45 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  cacheCopy = cache;
  docInfos = [documentCopy docInfos];
  v7 = objc_alloc_init(ICDocCamDocumentInfoCollection);
  docInfos2 = [(ICDocCamDocumentInfoCollection *)v7 docInfos];
  v37 = documentCopy;
  title = [documentCopy title];
  v31 = v7;
  [(ICDocCamDocumentInfoCollection *)v7 setTitle:title];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = docInfos;
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
        croppedAndFilteredImageUUID = [v12 croppedAndFilteredImageUUID];
        v14 = [v37 getImage:croppedAndFilteredImageUUID];
        fullImageUUID = [v12 fullImageUUID];
        v16 = [v37 getImage:fullImageUUID];
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

          imageQuad = [v12 imageQuad];
          v25 = [imageQuad copy];
          [(ICDocCamDocumentInfo *)v20 setImageQuad:v25];

          v26 = [cacheCopy setImage:v14 metaData:0];
          [(ICDocCamDocumentInfo *)v20 setCroppedAndFilteredImageUUID:v26];

          [(ICDocCamDocumentInfo *)v20 setCroppedButNotFilteredImageUUID:0];
          v10 = v21;
          v19 = v35;
          v27 = [cacheCopy setImage:v17 metaData:0];
          [(ICDocCamDocumentInfo *)v20 setFullImageUUID:v27];

          v9 = v32;
          [(ICDocCamDocumentInfo *)v20 setMeshAnimImageUUID:0];
          -[ICDocCamDocumentInfo setCurrentFilter:](v20, "setCurrentFilter:", [v12 currentFilter]);
          -[ICDocCamDocumentInfo setCurrentOrientation:](v20, "setCurrentOrientation:", [v12 currentOrientation]);
          [(ICDocCamDocumentInfo *)v20 setScanDataDelegateIdentifier:0];
          [docInfos2 addObject:v20];
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

- (DCDocumentEditorViewController)initWithDelegate:(id)delegate scannedDocument:(id)document
{
  delegateCopy = delegate;
  documentCopy = document;
  v8 = [[ICDocCamImageCache alloc] initWithDataCryptorDelegate:0];
  v9 = [DCDocumentEditorViewController docInfoCollectionFromScannedDocument:documentCopy imageCache:v8];
  v10 = [[ICDocCamExtractedDocumentViewController alloc] initWithDelegate:self documentInfoCollection:v9 imageCache:v8 currentIndex:0 mode:1];
  v14.receiver = self;
  v14.super_class = DCDocumentEditorViewController;
  v11 = [(DCDocumentEditorViewController *)&v14 initWithRootViewController:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_extractedDocumentController, v10);
    objc_storeWeak(&v12->_docCamDelegate, delegateCopy);
    objc_storeStrong(&v12->_docInfoCollection, v9);
    objc_storeStrong(&v12->_imageCache, v8);
    objc_storeStrong(&v12->_scannedDocument, document);
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
  presentingViewController = [(DCDocumentEditorViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)extractedDocumentControllerDidTapDone:(unint64_t)done scanDataDelegate:(id)delegate
{
  v5 = [(DCDocumentEditorViewController *)self docCamDelegate:done];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    docInfoCollection = [(DCDocumentEditorViewController *)self docInfoCollection];
    creationDate = [docInfoCollection creationDate];
    docInfoCollection2 = [(DCDocumentEditorViewController *)self docInfoCollection];
    modificationDate = [docInfoCollection2 modificationDate];

    if (creationDate != modificationDate)
    {
      scannedDocument = [(DCDocumentEditorViewController *)self scannedDocument];
      docInfoCollection3 = [(DCDocumentEditorViewController *)self docInfoCollection];
      imageCache = [(DCDocumentEditorViewController *)self imageCache];
      [scannedDocument replaceContentsWithDocInfoCollection:docInfoCollection3 imageCache:imageCache];
    }

    v14 = creationDate != modificationDate;
    imageCache2 = [(DCDocumentEditorViewController *)self imageCache];
    [imageCache2 deleteAllImages];

    +[DCDocCamPDFGenerator deleteAllDocCamPDFs];
    docCamDelegate = [(DCDocumentEditorViewController *)self docCamDelegate];
    scannedDocument2 = [(DCDocumentEditorViewController *)self scannedDocument];
    [docCamDelegate documentEditorViewController:self didFinishWithDocument:scannedDocument2 wasModified:v14];
  }

  else
  {

    [(DCDocumentEditorViewController *)self _autoDismiss];
  }
}

- (void)extractedDocumentControllerDidTapDone:(unint64_t)done
{
  v3 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(DCDocumentEditorViewController *)v3 extractedDocumentControllerDidTapDone:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (void)extractedDocumentController:(id)controller didTapRecrop:(id)recrop index:(int64_t)index
{
  controllerCopy = controller;
  recropCopy = recrop;
  if (recropCopy)
  {
    imageCache = [(DCDocumentEditorViewController *)self imageCache];
    fullImageUUID = [recropCopy fullImageUUID];
    v34 = imageCache;
    v12 = [imageCache getImage:fullImageUUID];

    imageQuad = [recropCopy imageQuad];
    currentOrientation = [recropCopy currentOrientation];
    v15 = [ICDocCamImageQuadEditViewController alloc];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __81__DCDocumentEditorViewController_extractedDocumentController_didTapRecrop_index___block_invoke;
    v36[3] = &unk_278F934D0;
    v16 = recropCopy;
    v37 = v16;
    selfCopy = self;
    v17 = controllerCopy;
    v39 = v17;
    indexCopy = index;
    v32 = imageQuad;
    v33 = v12;
    v18 = [(ICDocCamImageQuadEditViewController *)v15 initWithImage:v12 quad:imageQuad scanDataDelegate:0 orientation:currentOrientation completionHandler:v36];
    [(ICDocCamImageQuadEditViewController *)v18 setShowImageAsAspectFit:1];
    [(DCDocumentEditorViewController *)self setUseCustomRecropTransition:1];
    navigationController = [v17 navigationController];
    [navigationController setDelegate:self];

    navigationController2 = [(ICDocCamImageQuadEditViewController *)v18 navigationController];
    [navigationController2 setDelegate:self];

    croppedAndFilteredImageUUID = [v16 croppedAndFilteredImageUUID];

    if (croppedAndFilteredImageUUID)
    {
      imageCache2 = [(DCDocumentEditorViewController *)self imageCache];
      croppedAndFilteredImageUUID2 = [v16 croppedAndFilteredImageUUID];
      v24 = [imageCache2 getImage:croppedAndFilteredImageUUID2];
    }

    else
    {
      v24 = [(DCDocumentEditorViewController *)self extractedDocumentControllerImageForDocument:v16];
    }

    v35 = controllerCopy;
    croppedButNotFilteredImageUUID = [v16 croppedButNotFilteredImageUUID];

    if (croppedButNotFilteredImageUUID)
    {
      imageCache3 = [(DCDocumentEditorViewController *)self imageCache];
      croppedButNotFilteredImageUUID2 = [v16 croppedButNotFilteredImageUUID];
      v28 = [imageCache3 getImage:croppedButNotFilteredImageUUID2];
    }

    else
    {
      v28 = [v17 croppedButNotFilteredImageForDocInfo:v16];
    }

    v29 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
    [(DCDocumentEditorViewController *)self setIndexPathForRecrop:v29];

    [(DCDocumentEditorViewController *)self setFilteredImageForRecrop:v24];
    v30 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:objc_msgSend(v28 scale:"CGImage") orientation:{objc_msgSend(v16, "currentOrientation"), 1.0}];
    [(DCDocumentEditorViewController *)self setUnfilteredImageForRecrop:v30];

    -[DCDocumentEditorViewController setOrientationForRecrop:](self, "setOrientationForRecrop:", [v16 currentOrientation]);
    navigationController3 = [v17 navigationController];
    [navigationController3 pushViewController:v18 animated:1];

    controllerCopy = v35;
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
    imageCache = [(DCDocumentEditorViewController *)self imageCache];
    extractedDocumentController2 = [(ICDocCamNavigationController *)v3 initWithImageCache:imageCache docCamDelegate:self remoteDocCamDelegate:self];

    [(ICDocCamNavigationController *)extractedDocumentController2 setModalTransitionStyle:2];
    extractedDocumentController = [(DCDocumentEditorViewController *)self extractedDocumentController];
    navigationController = [extractedDocumentController navigationController];
    [navigationController presentViewController:extractedDocumentController2 animated:1 completion:0];
  }

  else
  {
    extractedDocumentController2 = [(DCDocumentEditorViewController *)self extractedDocumentController];
    [ICDocCamViewController warnAboutMaxScansReachedForViewController:"warnAboutMaxScansReachedForViewController:completionHandler:" completionHandler:?];
  }
}

- (void)extractedDocumentController:(id)controller shareDocument:(id)document sender:(id)sender
{
  v46[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  documentCopy = document;
  senderCopy = sender;
  array = [MEMORY[0x277CBEA60] array];
  croppedAndFilteredImageUUID = [documentCopy croppedAndFilteredImageUUID];

  if (!croppedAndFilteredImageUUID)
  {
    v15 = [(DCDocumentEditorViewController *)self extractedDocumentControllerImageForDocument:documentCopy];
    if (!v15)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  imageCache = [(DCDocumentEditorViewController *)self imageCache];
  croppedAndFilteredImageUUID2 = [documentCopy croppedAndFilteredImageUUID];
  v15 = [imageCache getImage:croppedAndFilteredImageUUID2];

  if (v15)
  {
LABEL_3:
    currentImageView = [controllerCopy currentImageView];
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
    v21 = documentCopy;
    v42 = v21;
    selfCopy = self;
    v22 = controllerCopy;
    v44 = v22;
    v40 = controllerCopy;
    v23 = [(DCMarkupActivity *)v20 initFromView:currentImageView presentingViewController:v22 frameBlock:v45 completionBlock:v41];
    [v23 setInkStyle:1];
    v46[0] = v23;
    [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    v24 = v38 = v15;
    v25 = [DCMarkupActivityItem alloc];
    [(DCDocumentEditorViewController *)self imageCache];
    v27 = v26 = senderCopy;
    v37 = [(DCMarkupActivityItem *)v25 initWithDocumentInfo:v21 imageCache:v27];

    v28 = [array arrayByAddingObject:v37];

    v29 = [DCDocumentInfoCollectionActivityItemSource alloc];
    docInfoCollection = [(DCDocumentEditorViewController *)self docInfoCollection];
    v31 = [(DCActivityItemSource *)v29 initWithDocumentInfoCollection:docInfoCollection];

    array = [v28 arrayByAddingObject:v31];

    v32 = [[DCActivityViewController alloc] initWithActivityItems:array applicationActivities:v24];
    docInfoCollection2 = [(DCDocumentEditorViewController *)self docInfoCollection];
    [(DCActivityViewController *)v32 setDocumentInfoCollection:docInfoCollection2];

    imageCache2 = [(DCDocumentEditorViewController *)self imageCache];
    [(DCActivityViewController *)v32 setImageCache:imageCache2];

    senderCopy = v26;
    [(DCActivityViewController *)v32 setCompletionWithItemsHandler:&__block_literal_global_5];
    activityTypeOrder = [objc_opt_class() activityTypeOrder];
    [(DCActivityViewController *)v32 setActivityTypeOrder:activityTypeOrder];

    [(DCActivityViewController *)v32 setModalPresentationStyle:7];
    [v22 presentViewController:v32 animated:1 completion:0];
    popoverPresentationController = [(DCActivityViewController *)v32 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:v26];
    [popoverPresentationController setPermittedArrowDirections:3];

    controllerCopy = v40;
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

- (void)extractedDocumentControllerDidSelectShareFromMenuForDocument:(id)document sourceRect:(CGRect)rect sourceView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v22[1] = *MEMORY[0x277D85DE8];
  documentCopy = document;
  viewCopy = view;
  croppedAndFilteredImageUUID = [documentCopy croppedAndFilteredImageUUID];

  if (!croppedAndFilteredImageUUID)
  {
    v16 = [(DCDocumentEditorViewController *)self extractedDocumentControllerImageForDocument:documentCopy];
    if (!v16)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  imageCache = [(DCDocumentEditorViewController *)self imageCache];
  croppedAndFilteredImageUUID2 = [documentCopy croppedAndFilteredImageUUID];
  v16 = [imageCache getImage:croppedAndFilteredImageUUID2];

  if (v16)
  {
LABEL_3:
    v17 = objc_alloc(MEMORY[0x277D546D8]);
    v22[0] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v19 = [v17 initWithActivityItems:v18 applicationActivities:MEMORY[0x277CBEBF8]];

    [v19 setModalPresentationStyle:7];
    extractedDocumentController = [(DCDocumentEditorViewController *)self extractedDocumentController];
    [extractedDocumentController presentViewController:v19 animated:1 completion:0];

    popoverPresentationController = [v19 popoverPresentationController];
    [popoverPresentationController setSourceRect:{x, y, width, height}];
    [popoverPresentationController setSourceView:viewCopy];
    [popoverPresentationController setPermittedArrowDirections:3];
  }

LABEL_4:
}

- (void)extractedDocumentControllerDidSelectCopyFromMenuForDocument:(id)document
{
  documentCopy = document;
  croppedAndFilteredImageUUID = [documentCopy croppedAndFilteredImageUUID];

  if (croppedAndFilteredImageUUID)
  {
    imageCache = [(DCDocumentEditorViewController *)self imageCache];
    croppedAndFilteredImageUUID2 = [documentCopy croppedAndFilteredImageUUID];
    v7 = [imageCache getImage:croppedAndFilteredImageUUID2];

    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = [(DCDocumentEditorViewController *)self extractedDocumentControllerImageForDocument:documentCopy];
  if (v7)
  {
LABEL_3:
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    [generalPasteboard setImage:v7];
  }

LABEL_4:
}

- (id)extractedDocumentControllerTitle
{
  docInfoCollection = [(DCDocumentEditorViewController *)self docInfoCollection];
  title = [docInfoCollection title];

  if (title)
  {
    docInfoCollection2 = [(DCDocumentEditorViewController *)self docInfoCollection];
    title2 = [docInfoCollection2 title];
  }

  else
  {
    title2 = [DCLocalization localizedStringForKey:@"Scanned Documents" value:@"Scanned Documents" table:@"Localizable"];
  }

  return title2;
}

- (void)extractedDocumentControllerDidChangeTitle:(id)title
{
  titleCopy = title;
  docInfoCollection = [(DCDocumentEditorViewController *)self docInfoCollection];
  [docInfoCollection setTitle:titleCopy];
}

- (void)extractedDocumentControllerDiscardMarkupModelDataForDocument:(id)document
{
  documentCopy = document;
  [documentCopy setMarkupModelData:0];
  croppedAndFilteredImageUUID = [documentCopy croppedAndFilteredImageUUID];

  if (croppedAndFilteredImageUUID)
  {
    imageCache = [(DCDocumentEditorViewController *)self imageCache];
    fullImageUUID = [documentCopy fullImageUUID];
    v7 = [imageCache getImage:fullImageUUID];

    imageQuad = [documentCopy imageQuad];
    v9 = [ICDocCamImageFilters perspectiveCorrectedImageFromImage:v7 normalizedImageQuad:imageQuad];

    v10 = +[ICDocCamImageFilters filteredImage:orientation:imageFilterType:constantColor:](ICDocCamImageFilters, "filteredImage:orientation:imageFilterType:constantColor:", v9, [documentCopy currentOrientation], objc_msgSend(documentCopy, "currentFilter"), objc_msgSend(documentCopy, "constantColor"));
    imageCache2 = [(DCDocumentEditorViewController *)self imageCache];
    metaData = [documentCopy metaData];
    croppedAndFilteredImageUUID2 = [documentCopy croppedAndFilteredImageUUID];
    [imageCache2 replaceImage:v10 metaData:metaData uuid:croppedAndFilteredImageUUID2];
  }

  croppedButNotFilteredImageUUID = [documentCopy croppedButNotFilteredImageUUID];

  if (croppedButNotFilteredImageUUID)
  {
    imageCache3 = [(DCDocumentEditorViewController *)self imageCache];
    croppedButNotFilteredImageUUID2 = [documentCopy croppedButNotFilteredImageUUID];
    [imageCache3 deleteImage:croppedButNotFilteredImageUUID2];
  }

  meshAnimImageUUID = [documentCopy meshAnimImageUUID];

  if (meshAnimImageUUID)
  {
    imageCache4 = [(DCDocumentEditorViewController *)self imageCache];
    meshAnimImageUUID2 = [documentCopy meshAnimImageUUID];
    [imageCache4 deleteImage:meshAnimImageUUID2];
  }

  extractedDocumentController = [(DCDocumentEditorViewController *)self extractedDocumentController];
  [extractedDocumentController didUpdateDocumentImage:documentCopy];
}

- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user closeViewController:(BOOL)viewController
{
  userCopy = user;
  v50 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  collectionCopy = collection;
  cacheCopy = cache;
  if (userCopy && !viewController)
  {
    v14 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(DCDocumentEditorViewController *)v14 documentCameraController:v15 didFinishWithDocInfoCollection:v16 imageCache:v17 warnUser:v18 closeViewController:v19, v20, v21];
    }
  }

  docInfos = [collectionCopy docInfos];
  v23 = [docInfos count];

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
  docInfos2 = [collectionCopy docInfos];
  v33 = [docInfos2 countByEnumeratingWithState:&v45 objects:v49 count:16];
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
          objc_enumerationMutation(docInfos2);
        }

        v37 = *(*(&v45 + 1) + 8 * v36);
        docInfoCollection = [(DCDocumentEditorViewController *)self docInfoCollection];
        docInfos3 = [docInfoCollection docInfos];
        [docInfos3 addObject:v37];

        extractedDocumentController = [(DCDocumentEditorViewController *)self extractedDocumentController];
        [extractedDocumentController didUpdateDocumentInfoArrayNewCurrentDocument:v37];

        ++v36;
      }

      while (v34 != v36);
      v34 = [docInfos2 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v34);
  }

  docInfoCollection2 = [(DCDocumentEditorViewController *)self docInfoCollection];
  [docInfoCollection2 bumpModificationDate];

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

- (void)documentCameraControllerDidCancel:(id)cancel
{
  extractedDocumentController = [(DCDocumentEditorViewController *)self extractedDocumentController];
  navigationController = [extractedDocumentController navigationController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__DCDocumentEditorViewController_documentCameraControllerDidCancel___block_invoke;
  v6[3] = &unk_278F92C70;
  v6[4] = self;
  [navigationController dismissViewControllerAnimated:1 completion:v6];
}

void __68__DCDocumentEditorViewController_documentCameraControllerDidCancel___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) extractedDocumentController];
  [v1 becomeFirstResponder];
}

- (BOOL)documentCameraController:(id)controller canAddImages:(unint64_t)images
{
  docInfoCollection = [(DCDocumentEditorViewController *)self docInfoCollection];
  docInfos = [docInfoCollection docInfos];
  LOBYTE(images) = [docInfos count] + images < 0x19;

  return images;
}

- (void)remoteDocumentCameraControllerDidCancel:(id)cancel
{
  extractedDocumentController = [(DCDocumentEditorViewController *)self extractedDocumentController];
  navigationController = [extractedDocumentController navigationController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__DCDocumentEditorViewController_remoteDocumentCameraControllerDidCancel___block_invoke;
  v6[3] = &unk_278F92C70;
  v6[4] = self;
  [navigationController dismissViewControllerAnimated:1 completion:v6];
}

void __74__DCDocumentEditorViewController_remoteDocumentCameraControllerDidCancel___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) extractedDocumentController];
  [v1 becomeFirstResponder];
}

- (void)remoteDocumentCameraController:(id)controller didFinishWithInfoCollection:(id)collection
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  docInfos = [collection docInfos];
  v6 = [docInfos countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(docInfos);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        docInfoCollection = [(DCDocumentEditorViewController *)self docInfoCollection];
        docInfos2 = [docInfoCollection docInfos];
        [docInfos2 addObject:v10];

        extractedDocumentController = [(DCDocumentEditorViewController *)self extractedDocumentController];
        [extractedDocumentController didUpdateDocumentInfoArrayNewCurrentDocument:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [docInfos countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  docInfoCollection2 = [(DCDocumentEditorViewController *)self docInfoCollection];
  [docInfoCollection2 bumpModificationDate];

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

- (void)remoteDocumentCameraController:(id)controller didFailWithError:(id)error
{
  v5 = [(DCDocumentEditorViewController *)self extractedDocumentController:controller];
  navigationController = [v5 navigationController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__DCDocumentEditorViewController_remoteDocumentCameraController_didFailWithError___block_invoke;
  v7[3] = &unk_278F92C70;
  v7[4] = self;
  [navigationController dismissViewControllerAnimated:1 completion:v7];
}

void __82__DCDocumentEditorViewController_remoteDocumentCameraController_didFailWithError___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) extractedDocumentController];
  [v1 becomeFirstResponder];
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  if ([(DCDocumentEditorViewController *)self useCustomRecropTransition:controller])
  {
    v8 = [ICDocCamRecropTransitionAnimator alloc];
    filteredImageForRecrop = [(DCDocumentEditorViewController *)self filteredImageForRecrop];
    unfilteredImageForRecrop = [(DCDocumentEditorViewController *)self unfilteredImageForRecrop];
    orientationForRecrop = [(DCDocumentEditorViewController *)self orientationForRecrop];
    indexPathForRecrop = [(DCDocumentEditorViewController *)self indexPathForRecrop];
    v13 = [(ICDocCamRecropTransitionAnimator *)v8 initWithImage:filteredImageForRecrop unfilteredImage:unfilteredImageForRecrop orientation:orientationForRecrop indexPath:indexPathForRecrop duration:0 completion:0.65];

    [(DCDocumentEditorViewController *)self setFilteredImageForRecrop:0];
    [(DCDocumentEditorViewController *)self setUnfilteredImageForRecrop:0];
    [(ICDocCamRecropTransitionAnimator *)v13 setPresenting:operation == 1];
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