@interface ICAttachmentPDFModel(PreviewGeneration)
- (uint64_t)generatePreviewsInOperation:()PreviewGeneration;
@end

@implementation ICAttachmentPDFModel(PreviewGeneration)

- (uint64_t)generatePreviewsInOperation:()PreviewGeneration
{
  v76 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__15;
  v67 = __Block_byref_object_dispose__15;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__15;
  v61 = __Block_byref_object_dispose__15;
  v62 = 0;
  selfCopy = self;
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __71__ICAttachmentPDFModel_PreviewGeneration__generatePreviewsInOperation___block_invoke;
  v56[3] = &unk_1E8468FF8;
  v56[5] = &v63;
  v56[4] = selfCopy;
  v56[6] = &v57;
  [managedObjectContext performBlockAndWait:v56];

  v7 = v58[5];
  if (!v7)
  {
    v36 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = NSStringFromSelector(a2);
      v41 = v64[5];
      *buf = 138412802;
      v71 = v39;
      v72 = 2112;
      v73 = v40;
      v74 = 2112;
      v75 = v41;
      _os_log_debug_impl(&dword_1D4171000, v36, OS_LOG_TYPE_DEBUG, "%@ %@ %@ early return", buf, 0x20u);
    }

    goto LABEL_26;
  }

  v8 = CGPDFDocumentCreateWithURL(v7);
  if (!v8)
  {
LABEL_26:
    v35 = 0;
    goto LABEL_27;
  }

  document = v8;
  Page = CGPDFDocumentGetPage(v8, 1uLL);
  v10 = Page;
  if (!Page || (BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox), width = BoxRect.size.width, BoxRect.size.width <= 0.0) || (height = BoxRect.size.height, BoxRect.size.height <= 0.0))
  {
    CGPDFDocumentRelease(document);
    goto LABEL_26;
  }

  x = BoxRect.origin.x;
  y = BoxRect.origin.y;
  v45 = v10;
  if (BoxRect.size.width < BoxRect.size.height)
  {
    v15 = BoxRect.size.width / BoxRect.size.height;
  }

  else
  {
    v15 = 1.0;
  }

  if (BoxRect.size.width < BoxRect.size.height)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = BoxRect.size.height / BoxRect.size.width;
  }

  attachment2 = [selfCopy attachment];
  managedObjectContext2 = [attachment2 managedObjectContext];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __71__ICAttachmentPDFModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_10;
  v55[3] = &unk_1E8469FA8;
  v55[4] = selfCopy;
  *&v55[5] = x;
  *&v55[6] = y;
  *&v55[7] = width;
  *&v55[8] = height;
  [managedObjectContext2 performBlockAndWait:v55];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v19 = +[ICPreviewDeviceContext sharedContext];
  obj = [v19 deviceInfoScalable:0];

  v20 = [obj countByEnumeratingWithState:&v51 objects:v69 count:16];
  if (v20)
  {
    v21 = *v52;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v52 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v51 + 1) + 8 * i);
        [v23 imageSize];
        v25 = v24;
        [v23 imageSize];
        v27 = v26;
        defaultFormat = [MEMORY[0x1E69DCA80] defaultFormat];
        [v23 scale];
        [defaultFormat setScale:?];
        v29 = v15 * v25;
        v30 = v16 * v27;
        v31 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:defaultFormat format:{v29, v30}];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __71__ICAttachmentPDFModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2;
        v50[3] = &__block_descriptor_88_e40_v16__0__UIGraphicsImageRendererContext_8l;
        v50[4] = 0;
        v50[5] = 0;
        *&v50[6] = v29;
        *&v50[7] = v30;
        *&v50[8] = v29;
        *&v50[9] = v30;
        v50[10] = v45;
        v32 = [v31 imageWithActions:v50];
        if (v32)
        {
          attachment3 = [selfCopy attachment];
          managedObjectContext3 = [attachment3 managedObjectContext];
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __71__ICAttachmentPDFModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_3;
          v47[3] = &unk_1E8468D98;
          v47[4] = selfCopy;
          v48 = v32;
          v49 = v23;
          [managedObjectContext3 performBlockAndWait:v47];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v51 objects:v69 count:16];
    }

    while (v20);
  }

  CGPDFDocumentRelease(document);
  v35 = 1;
LABEL_27:
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);
  return v35;
}

@end