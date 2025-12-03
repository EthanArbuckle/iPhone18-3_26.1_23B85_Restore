@interface ICDocCamArchiveExporter
+ (BOOL)archiveExportingEnabled;
+ (id)archivableImageForSubAttachent:(id)attachent;
+ (id)archiveGalleryImagesFromGallery:(id)gallery toURL:(id)l;
+ (id)createZipArchiveOfImagesFromGalleryAttachment:(id)attachment;
+ (id)createZipArchiveOfImagesFromNote:(id)note;
+ (id)exportAsArchiveActivityWithBarButtonItem:(id)item presentingVC:(id)c fromGalleryAttachment:(id)attachment;
+ (id)exportAsArchiveActivityWithBarButtonItem:(id)item presentingVC:(id)c fromNote:(id)note;
+ (void)showActivityVCWithBarButtonItem:(id)item presentingVC:(id)c url:(id)url;
+ (void)showExportArchiveFromNote:(id)note presentingViewController:(id)controller presentingBarButtonItem:(id)item;
@end

@implementation ICDocCamArchiveExporter

+ (BOOL)archiveExportingEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D362C8]];

  return v3;
}

+ (id)exportAsArchiveActivityWithBarButtonItem:(id)item presentingVC:(id)c fromNote:(id)note
{
  itemCopy = item;
  cCopy = c;
  noteCopy = note;
  if ([self archiveExportingEnabled])
  {
    v11 = objc_alloc(MEMORY[0x277D36718]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __90__ICDocCamArchiveExporter_exportAsArchiveActivityWithBarButtonItem_presentingVC_fromNote___block_invoke;
    v14[3] = &unk_2781ADF40;
    selfCopy = self;
    v15 = noteCopy;
    v16 = itemCopy;
    v17 = cCopy;
    v12 = [v11 initWithTitle:@"Archive All Doc Cam Scans In Note" image:0 block:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __90__ICDocCamArchiveExporter_exportAsArchiveActivityWithBarButtonItem_presentingVC_fromNote___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 56) createZipArchiveOfImagesFromNote:*(a1 + 32)];
  [*(a1 + 56) showActivityVCWithBarButtonItem:*(a1 + 40) presentingVC:*(a1 + 48) url:v2];
}

+ (id)exportAsArchiveActivityWithBarButtonItem:(id)item presentingVC:(id)c fromGalleryAttachment:(id)attachment
{
  itemCopy = item;
  cCopy = c;
  attachmentCopy = attachment;
  if ([self archiveExportingEnabled])
  {
    v11 = objc_alloc(MEMORY[0x277D36718]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __103__ICDocCamArchiveExporter_exportAsArchiveActivityWithBarButtonItem_presentingVC_fromGalleryAttachment___block_invoke;
    v14[3] = &unk_2781ADF40;
    selfCopy = self;
    v15 = attachmentCopy;
    v16 = itemCopy;
    v17 = cCopy;
    v12 = [v11 initWithTitle:@"Create Zip Archive" image:0 block:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __103__ICDocCamArchiveExporter_exportAsArchiveActivityWithBarButtonItem_presentingVC_fromGalleryAttachment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 56) createZipArchiveOfImagesFromGalleryAttachment:*(a1 + 32)];
  [*(a1 + 56) showActivityVCWithBarButtonItem:*(a1 + 40) presentingVC:*(a1 + 48) url:v2];
}

+ (void)showActivityVCWithBarButtonItem:(id)item presentingVC:(id)c url:(id)url
{
  v18[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  cCopy = c;
  urlCopy = url;
  if ([urlCopy ic_isReachable])
  {
    v10 = objc_alloc(MEMORY[0x277D546D8]);
    v18[0] = urlCopy;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v12 = [v10 initWithActivityItems:v11 applicationActivities:0];

    v13 = *MEMORY[0x277D54790];
    v17[0] = *MEMORY[0x277D360F8];
    v17[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    [v12 setExcludedActivityTypes:v14];

    if ([MEMORY[0x277D75418] ic_isVision])
    {
      v15 = -2;
    }

    else
    {
      v15 = 7;
    }

    [cCopy setModalPresentationStyle:v15];
    [cCopy presentViewController:v12 animated:1 completion:0];
    popoverPresentationController = [v12 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:itemCopy];
    [popoverPresentationController setPermittedArrowDirections:3];
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamArchiveExporter showActivityVCWithBarButtonItem:v12 presentingVC:? url:?];
    }
  }
}

+ (void)showExportArchiveFromNote:(id)note presentingViewController:(id)controller presentingBarButtonItem:(id)item
{
  itemCopy = item;
  controllerCopy = controller;
  v10 = [ICDocCamArchiveExporter createZipArchiveOfImagesFromNote:note];
  [self showActivityVCWithBarButtonItem:itemCopy presentingVC:controllerCopy url:v10];
}

+ (id)createZipArchiveOfImagesFromNote:(id)note
{
  v57 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  visibleAttachments = [noteCopy visibleAttachments];
  v5 = [visibleAttachments objectsPassingTest:&__block_literal_global_18];
  allObjects = [v5 allObjects];

  v7 = [allObjects sortedArrayUsingComparator:&__block_literal_global_27];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([allObjects count])
  {
    firstObject = [allObjects firstObject];
    attachmentModel = [firstObject attachmentModel];

    v47 = noteCopy;
    title = [noteCopy title];
    ic_sanitizedFilenameString = [title ic_sanitizedFilenameString];

    v14 = [(__CFString *)ic_sanitizedFilenameString length];
    v15 = @"ScanArchive";
    if (v14)
    {
      v15 = ic_sanitizedFilenameString;
    }

    v16 = v15;

    v45 = attachmentModel;
    v17 = [attachmentModel generateTemporaryURLWithExtension:@"awks"];
    uRLByDeletingLastPathComponent = [v17 URLByDeletingLastPathComponent];

    v19 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v16 isDirectory:0];

    v20 = defaultManager;
    [defaultManager removeItemAtURL:v19 error:0];
    uRLByDeletingLastPathComponent2 = [v19 URLByDeletingLastPathComponent];
    uRLByDeletingLastPathComponent3 = [v19 URLByDeletingLastPathComponent];
    v44 = v16;
    v22 = [uRLByDeletingLastPathComponent3 URLByAppendingPathComponent:v16 isDirectory:0];

    v43 = [v22 URLByAppendingPathExtension:@"zip"];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v46 = allObjects;
    obj = allObjects;
    v23 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v53;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          v27 = v8;
          if (*v53 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v52 + 1) + 8 * i);
          title2 = [v28 title];
          ic_sanitizedFilenameString2 = [title2 ic_sanitizedFilenameString];
          v31 = ic_sanitizedFilenameString2;
          if (ic_sanitizedFilenameString2)
          {
            defaultTitle = ic_sanitizedFilenameString2;
          }

          else
          {
            defaultTitle = [v28 defaultTitle];
          }

          v33 = defaultTitle;

          v34 = [v19 URLByAppendingPathComponent:v33 isDirectory:1];
          ic_uniquedURL = [v34 ic_uniquedURL];

          [v20 createDirectoryAtURL:ic_uniquedURL withIntermediateDirectories:1 attributes:0 error:0];
          v36 = [self archiveGalleryImagesFromGallery:v28 toURL:ic_uniquedURL];
          v8 = v27;
          [v27 ic_addObjectsFromNonNilArray:v36];
        }

        v24 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v24);
    }

    v37 = v43;
    v38 = [objc_alloc(MEMORY[0x277D36190]) initWithDestinationURL:v43 baseURL:uRLByDeletingLastPathComponent2];
    [v38 setUsesCompression:0];
    if (v8)
    {
      v51 = 0;
      [v38 writeURLs:v8 error:&v51];
      v39 = v51;
    }

    else
    {
      v39 = 0;
    }

    v50 = v39;
    [v38 finish:&v50];
    v40 = v50;

    allObjects = v46;
    noteCopy = v47;
    defaultManager = v20;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

uint64_t __60__ICDocCamArchiveExporter_createZipArchiveOfImagesFromNote___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(a2, "rangeInNote")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 rangeInNote];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

+ (id)createZipArchiveOfImagesFromGalleryAttachment:(id)attachment
{
  v44 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  objc_opt_class();
  attachmentModel = [attachmentCopy attachmentModel];
  v6 = ICDynamicCast();

  if (!v6)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((galleryModel) != nil)" functionName:"+[ICDocCamArchiveExporter createZipArchiveOfImagesFromGalleryAttachment:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "galleryModel"}];
    v29 = 0;
    goto LABEL_16;
  }

  v7 = [v6 generateTemporaryURLWithExtension:@"awks"];
  uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];

  title = [attachmentCopy title];
  ic_sanitizedFilenameString = [title ic_sanitizedFilenameString];

  v11 = [(__CFString *)ic_sanitizedFilenameString length];
  v12 = @"ScanArchive";
  if (v11)
  {
    v12 = ic_sanitizedFilenameString;
  }

  v13 = v12;

  v14 = [(__CFString *)v13 stringByAppendingPathExtension:@"zip"];

  v33 = v14;
  v15 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v14 isDirectory:0];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __73__ICDocCamArchiveExporter_createZipArchiveOfImagesFromGalleryAttachment___block_invoke;
  v36[3] = &unk_2781AEE68;
  selfCopy = self;
  v37 = v6;
  v18 = uRLByDeletingLastPathComponent;
  v38 = v18;
  v19 = defaultManager;
  v39 = v19;
  v20 = v16;
  v40 = v20;
  [v37 enumerateSubAttachmentsWithBlock:v36];
  v21 = objc_alloc(MEMORY[0x277D36190]);
  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"not used but not nil"];
  v23 = [v21 initWithDestinationURL:v15 baseURL:v22];

  [v23 setUsesCompression:0];
  [v23 setFlatten:1];
  title2 = [attachmentCopy title];
  [v23 setFlattenFolderName:title2];

  v35 = 0;
  [v23 writeURLs:v20 error:&v35];
  v25 = v35;
  if (v25)
  {
    v26 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamArchiveExporter *)v25 createZipArchiveOfImagesFromGalleryAttachment:v26];
    }
  }

  v34 = 0;
  [v23 finish:&v34];
  v27 = v34;
  if (v27)
  {
    v28 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamArchiveExporter *)v27 createZipArchiveOfImagesFromGalleryAttachment:v28];
    }
  }

  else if (!v25)
  {
    v31 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      lastPathComponent = [0 lastPathComponent];
      *buf = 138412290;
      v43 = lastPathComponent;
      _os_log_impl(&dword_2151A1000, v31, OS_LOG_TYPE_INFO, "Succesfully wrote doc cam archive to path: %@", buf, 0xCu);
    }

    v29 = v15;
    goto LABEL_15;
  }

  v29 = 0;
LABEL_15:

LABEL_16:

  return v29;
}

void __73__ICDocCamArchiveExporter_createZipArchiveOfImagesFromGalleryAttachment___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  v6 = [*(a1 + 64) archivableImageForSubAttachent:?];
  if (v6)
  {
    v7 = [*(a1 + 32) titleForSubAttachment:v17];
    v8 = [v7 ic_sanitizedFilenameString];

    if (![v8 length])
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Image-%lu", a4 + 1];

      v8 = v9;
    }

    v10 = [*(a1 + 40) URLByAppendingPathComponent:v8 isDirectory:0];
    v11 = [v10 URLByAppendingPathExtension:@"png"];

    v12 = [v11 URLByDeletingLastPathComponent];
    v13 = [v12 ic_isReachable];

    if ((v13 & 1) == 0)
    {
      v14 = *(a1 + 48);
      v15 = [v11 URLByDeletingLastPathComponent];
      [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v16 = [v6 ic_PNGDataWithOrientation:{objc_msgSend(v6, "ic_imageOrientation")}];
    [v16 writeToURL:v11 atomically:1];

    [*(a1 + 56) ic_addNonNilObject:v11];
  }
}

+ (id)archiveGalleryImagesFromGallery:(id)gallery toURL:(id)l
{
  lCopy = l;
  v7 = MEMORY[0x277CBEB18];
  galleryCopy = gallery;
  v9 = objc_alloc_init(v7);
  objc_opt_class();
  attachmentModel = [galleryCopy attachmentModel];

  v11 = ICDynamicCast();

  if (!v11)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((galleryModel) != nil)" functionName:"+[ICDocCamArchiveExporter archiveGalleryImagesFromGallery:toURL:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "galleryModel"}];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__ICDocCamArchiveExporter_archiveGalleryImagesFromGallery_toURL___block_invoke;
  v18[3] = &unk_2781AEE90;
  selfCopy = self;
  v19 = v11;
  v20 = lCopy;
  v12 = v9;
  v21 = v12;
  v13 = lCopy;
  v14 = v11;
  [v14 enumerateSubAttachmentsWithBlock:v18];
  v15 = v21;
  v16 = v12;

  return v12;
}

void __65__ICDocCamArchiveExporter_archiveGalleryImagesFromGallery_toURL___block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v6 = [a1[7] archivableImageForSubAttachent:?];
  if (v6)
  {
    v7 = [a1[4] titleForSubAttachment:v14];
    v8 = [v7 ic_sanitizedFilenameString];

    if (![v8 length])
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Image-%lu", a4 + 1];

      v8 = v9;
    }

    v10 = [a1[5] URLByAppendingPathComponent:v8 isDirectory:0];
    v11 = [v10 URLByAppendingPathExtension:@"png"];

    v12 = [v11 ic_uniquedURL];

    v13 = [v6 ic_PNGDataWithOrientation:{objc_msgSend(v6, "ic_imageOrientation")}];
    [v13 writeToURL:v12 atomically:1];

    [a1[6] addObject:v12];
  }
}

+ (id)archivableImageForSubAttachent:(id)attachent
{
  attachentCopy = attachent;
  [attachentCopy sizeWidth];
  v5 = v4;
  [attachentCopy sizeHeight];
  v7 = v6;
  v8 = [attachentCopy attachmentPreviewImageWithMinSize:v5 scale:{v6, 1.0}];
  orientedImage = [v8 orientedImage];
  v10 = orientedImage;
  if (!orientedImage || (([orientedImage size], v5 == v12) ? (v13 = v7 == v11) : (v13 = 0), !v13))
  {
    v14 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(ICDocCamArchiveExporter *)attachentCopy archivableImageForSubAttachent:v14];
    }

    v15 = [MEMORY[0x277D36798] imageForSubAttachment:attachentCopy rotateForMacImageGallery:0 allowCached:0];

    v10 = v15;
  }

  return v10;
}

+ (void)createZipArchiveOfImagesFromGalleryAttachment:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Error writing doc cam archive.  %@", &v2, 0xCu);
}

+ (void)createZipArchiveOfImagesFromGalleryAttachment:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Error finalizing doc cam archive.  %@", &v2, 0xCu);
}

+ (void)archivableImageForSubAttachent:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_2151A1000, a2, OS_LOG_TYPE_DEBUG, "Either No image, or incorrect size image for OCR, falling back to creating a fresh image for attachment: %@", &v4, 0xCu);
}

@end