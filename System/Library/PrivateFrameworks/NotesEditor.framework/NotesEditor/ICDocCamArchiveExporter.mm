@interface ICDocCamArchiveExporter
+ (BOOL)archiveExportingEnabled;
+ (id)archivableImageForSubAttachent:(id)a3;
+ (id)archiveGalleryImagesFromGallery:(id)a3 toURL:(id)a4;
+ (id)createZipArchiveOfImagesFromGalleryAttachment:(id)a3;
+ (id)createZipArchiveOfImagesFromNote:(id)a3;
+ (id)exportAsArchiveActivityWithBarButtonItem:(id)a3 presentingVC:(id)a4 fromGalleryAttachment:(id)a5;
+ (id)exportAsArchiveActivityWithBarButtonItem:(id)a3 presentingVC:(id)a4 fromNote:(id)a5;
+ (void)showActivityVCWithBarButtonItem:(id)a3 presentingVC:(id)a4 url:(id)a5;
+ (void)showExportArchiveFromNote:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5;
@end

@implementation ICDocCamArchiveExporter

+ (BOOL)archiveExportingEnabled
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D362C8]];

  return v3;
}

+ (id)exportAsArchiveActivityWithBarButtonItem:(id)a3 presentingVC:(id)a4 fromNote:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 archiveExportingEnabled])
  {
    v11 = objc_alloc(MEMORY[0x277D36718]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __90__ICDocCamArchiveExporter_exportAsArchiveActivityWithBarButtonItem_presentingVC_fromNote___block_invoke;
    v14[3] = &unk_2781ADF40;
    v18 = a1;
    v15 = v10;
    v16 = v8;
    v17 = v9;
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

+ (id)exportAsArchiveActivityWithBarButtonItem:(id)a3 presentingVC:(id)a4 fromGalleryAttachment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 archiveExportingEnabled])
  {
    v11 = objc_alloc(MEMORY[0x277D36718]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __103__ICDocCamArchiveExporter_exportAsArchiveActivityWithBarButtonItem_presentingVC_fromGalleryAttachment___block_invoke;
    v14[3] = &unk_2781ADF40;
    v18 = a1;
    v15 = v10;
    v16 = v8;
    v17 = v9;
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

+ (void)showActivityVCWithBarButtonItem:(id)a3 presentingVC:(id)a4 url:(id)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 ic_isReachable])
  {
    v10 = objc_alloc(MEMORY[0x277D546D8]);
    v18[0] = v9;
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

    [v8 setModalPresentationStyle:v15];
    [v8 presentViewController:v12 animated:1 completion:0];
    v16 = [v12 popoverPresentationController];
    [v16 setBarButtonItem:v7];
    [v16 setPermittedArrowDirections:3];
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

+ (void)showExportArchiveFromNote:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [ICDocCamArchiveExporter createZipArchiveOfImagesFromNote:a3];
  [a1 showActivityVCWithBarButtonItem:v8 presentingVC:v9 url:v10];
}

+ (id)createZipArchiveOfImagesFromNote:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 visibleAttachments];
  v5 = [v4 objectsPassingTest:&__block_literal_global_18];
  v6 = [v5 allObjects];

  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_27];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v6 count])
  {
    v10 = [v6 firstObject];
    v11 = [v10 attachmentModel];

    v47 = v3;
    v12 = [v3 title];
    v13 = [v12 ic_sanitizedFilenameString];

    v14 = [(__CFString *)v13 length];
    v15 = @"ScanArchive";
    if (v14)
    {
      v15 = v13;
    }

    v16 = v15;

    v45 = v11;
    v17 = [v11 generateTemporaryURLWithExtension:@"awks"];
    v18 = [v17 URLByDeletingLastPathComponent];

    v19 = [v18 URLByAppendingPathComponent:v16 isDirectory:0];

    v20 = v9;
    [v9 removeItemAtURL:v19 error:0];
    v42 = [v19 URLByDeletingLastPathComponent];
    v21 = [v19 URLByDeletingLastPathComponent];
    v44 = v16;
    v22 = [v21 URLByAppendingPathComponent:v16 isDirectory:0];

    v43 = [v22 URLByAppendingPathExtension:@"zip"];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v46 = v6;
    obj = v6;
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
          v29 = [v28 title];
          v30 = [v29 ic_sanitizedFilenameString];
          v31 = v30;
          if (v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = [v28 defaultTitle];
          }

          v33 = v32;

          v34 = [v19 URLByAppendingPathComponent:v33 isDirectory:1];
          v35 = [v34 ic_uniquedURL];

          [v20 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:0];
          v36 = [a1 archiveGalleryImagesFromGallery:v28 toURL:v35];
          v8 = v27;
          [v27 ic_addObjectsFromNonNilArray:v36];
        }

        v24 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v24);
    }

    v37 = v43;
    v38 = [objc_alloc(MEMORY[0x277D36190]) initWithDestinationURL:v43 baseURL:v42];
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

    v6 = v46;
    v3 = v47;
    v9 = v20;
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

+ (id)createZipArchiveOfImagesFromGalleryAttachment:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = [v4 attachmentModel];
  v6 = ICDynamicCast();

  if (!v6)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((galleryModel) != nil)" functionName:"+[ICDocCamArchiveExporter createZipArchiveOfImagesFromGalleryAttachment:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "galleryModel"}];
    v29 = 0;
    goto LABEL_16;
  }

  v7 = [v6 generateTemporaryURLWithExtension:@"awks"];
  v8 = [v7 URLByDeletingLastPathComponent];

  v9 = [v4 title];
  v10 = [v9 ic_sanitizedFilenameString];

  v11 = [(__CFString *)v10 length];
  v12 = @"ScanArchive";
  if (v11)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [(__CFString *)v13 stringByAppendingPathExtension:@"zip"];

  v33 = v14;
  v15 = [v8 URLByAppendingPathComponent:v14 isDirectory:0];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __73__ICDocCamArchiveExporter_createZipArchiveOfImagesFromGalleryAttachment___block_invoke;
  v36[3] = &unk_2781AEE68;
  v41 = a1;
  v37 = v6;
  v18 = v8;
  v38 = v18;
  v19 = v17;
  v39 = v19;
  v20 = v16;
  v40 = v20;
  [v37 enumerateSubAttachmentsWithBlock:v36];
  v21 = objc_alloc(MEMORY[0x277D36190]);
  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"not used but not nil"];
  v23 = [v21 initWithDestinationURL:v15 baseURL:v22];

  [v23 setUsesCompression:0];
  [v23 setFlatten:1];
  v24 = [v4 title];
  [v23 setFlattenFolderName:v24];

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
      v32 = [0 lastPathComponent];
      *buf = 138412290;
      v43 = v32;
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

+ (id)archiveGalleryImagesFromGallery:(id)a3 toURL:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB18];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  objc_opt_class();
  v10 = [v8 attachmentModel];

  v11 = ICDynamicCast();

  if (!v11)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((galleryModel) != nil)" functionName:"+[ICDocCamArchiveExporter archiveGalleryImagesFromGallery:toURL:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "galleryModel"}];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__ICDocCamArchiveExporter_archiveGalleryImagesFromGallery_toURL___block_invoke;
  v18[3] = &unk_2781AEE90;
  v22 = a1;
  v19 = v11;
  v20 = v6;
  v12 = v9;
  v21 = v12;
  v13 = v6;
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

+ (id)archivableImageForSubAttachent:(id)a3
{
  v3 = a3;
  [v3 sizeWidth];
  v5 = v4;
  [v3 sizeHeight];
  v7 = v6;
  v8 = [v3 attachmentPreviewImageWithMinSize:v5 scale:{v6, 1.0}];
  v9 = [v8 orientedImage];
  v10 = v9;
  if (!v9 || (([v9 size], v5 == v12) ? (v13 = v7 == v11) : (v13 = 0), !v13))
  {
    v14 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(ICDocCamArchiveExporter *)v3 archivableImageForSubAttachent:v14];
    }

    v15 = [MEMORY[0x277D36798] imageForSubAttachment:v3 rotateForMacImageGallery:0 allowCached:0];

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