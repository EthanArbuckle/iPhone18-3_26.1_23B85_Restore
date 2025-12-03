@interface ICAttachmentGalleryModel(PreviewGeneration)
- (BOOL)needToGeneratePreviews;
- (uint64_t)generatePreviewsInOperation:()PreviewGeneration;
@end

@implementation ICAttachmentGalleryModel(PreviewGeneration)

- (BOOL)needToGeneratePreviews
{
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = &off_1F5078E18;
  if (!objc_msgSendSuper2(&v22, sel_needToGeneratePreviews) || ![self subAttachmentCount])
  {
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = +[ICPreviewDeviceContext sharedContext];
  v3 = [v2 deviceInfoScalable:1];

  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        [v9 imageSize];
        v11 = v10;
        [v9 scale];
        v13 = v11 * v12;
        if (v7 < v13)
        {
          v7 = v13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  firstSubAttachment = [self firstSubAttachment];
  v16 = [firstSubAttachment attachmentPreviewImageWithMinSize:v7 scale:{v7, 1.0}];
  v14 = v16 != 0;

  return v14;
}

- (uint64_t)generatePreviewsInOperation:()PreviewGeneration
{
  v87 = *MEMORY[0x1E69E9840];
  v47 = a3;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__72;
  v77 = __Block_byref_object_dispose__72;
  v78 = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = __Block_byref_object_copy__72;
  v71[4] = __Block_byref_object_dispose__72;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__72;
  v69 = __Block_byref_object_dispose__72;
  v70 = 0;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v4 = +[ICPreviewDeviceContext sharedContext];
  v5 = [v4 deviceInfoScalable:1];

  v6 = [v5 countByEnumeratingWithState:&v61 objects:v86 count:16];
  if (v6)
  {
    v7 = *v62;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v62 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v61 + 1) + 8 * i);
        [v10 imageSize];
        v12 = v11;
        [v10 scale];
        v14 = v12 * v13;
        if (v8 < v14)
        {
          v8 = v14;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v61 objects:v86 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __75__ICAttachmentGalleryModel_PreviewGeneration__generatePreviewsInOperation___block_invoke;
  v60[3] = &unk_1E846DF20;
  *&v60[8] = v8;
  v60[4] = self;
  v60[5] = &v65;
  v60[6] = v71;
  v60[7] = &v73;
  [managedObjectContext performBlockAndWait:v60];

  v17 = v66[5];
  if (!v17)
  {
    v39 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = NSStringFromSelector(a2);
      v44 = v74[5];
      *buf = 138412802;
      v81 = v42;
      v82 = 2112;
      v83 = v43;
      v84 = 2112;
      v85 = v44;
      _os_log_debug_impl(&dword_1D4171000, v39, OS_LOG_TYPE_DEBUG, "%@ %@ %@ early return", buf, 0x20u);
    }

    ic_JPEGData = v39;
    goto LABEL_32;
  }

  if ([v17 ic_imageOrientation])
  {
    v18 = [MEMORY[0x1E699A320] imageWithRGBColorspaceFromImage:v66[5]];
    v19 = v66[5];
    v66[5] = v18;
  }

  ic_JPEGData = [v66[5] ic_JPEGData];
  v20 = CGImageSourceCreateWithData(ic_JPEGData, 0);
  if (v20)
  {
    cf = v20;
    v21 = CGImageSourceCopyPropertiesAtIndex(v20, 0, 0);
    v22 = v21;
    v45 = v21;
    if (v21)
    {
      v23 = [(__CFDictionary *)v21 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
      v24 = [(__CFDictionary *)v22 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
      v25 = v24;
      if (v23 && v24)
      {
        attachment2 = [self attachment];
        managedObjectContext2 = [attachment2 managedObjectContext];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __75__ICAttachmentGalleryModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_14;
        v57[3] = &unk_1E8468D98;
        v57[4] = self;
        v58 = v23;
        v59 = v25;
        [managedObjectContext2 performBlockAndWait:v57];
      }
    }

    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v53 = 0u;
    v28 = +[ICPreviewDeviceContext sharedContext];
    obj = [v28 deviceInfoScalable:1];

    v29 = [obj countByEnumeratingWithState:&v53 objects:v79 count:16];
    if (v29)
    {
      v30 = *v54;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v54 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v53 + 1) + 8 * j);
          [v32 imageSize];
          v34 = v33;
          attachment3 = [self attachment];
          managedObjectContext3 = [attachment3 managedObjectContext];
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __75__ICAttachmentGalleryModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2;
          v52[3] = &unk_1E846DF48;
          v52[8] = v34;
          v52[4] = self;
          v52[5] = v32;
          v52[6] = v71;
          v52[7] = cf;
          [managedObjectContext3 performBlockAndWait:v52];
        }

        v29 = [obj countByEnumeratingWithState:&v53 objects:v79 count:16];
      }

      while (v29);
    }

    attachment4 = [self attachment];
    managedObjectContext4 = [attachment4 managedObjectContext];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __75__ICAttachmentGalleryModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_3;
    v51[3] = &unk_1E8468FA8;
    v51[5] = v71;
    v51[4] = self;
    [managedObjectContext4 performBlockAndWait:v51];

    CFRelease(cf);
    v39 = v45;
LABEL_32:
  }

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(v71, 8);

  _Block_object_dispose(&v73, 8);
  return 1;
}

@end