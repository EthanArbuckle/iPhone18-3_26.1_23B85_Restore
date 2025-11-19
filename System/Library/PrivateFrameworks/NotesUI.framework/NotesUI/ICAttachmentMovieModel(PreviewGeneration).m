@interface ICAttachmentMovieModel(PreviewGeneration)
- (uint64_t)generatePreviewsInOperation:()PreviewGeneration;
@end

@implementation ICAttachmentMovieModel(PreviewGeneration)

- (uint64_t)generatePreviewsInOperation:()PreviewGeneration
{
  v55 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__59;
  v46 = __Block_byref_object_dispose__59;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__59;
  v40 = __Block_byref_object_dispose__59;
  v41 = 0;
  v5 = [a1 attachment];
  v6 = [v5 managedObjectContext];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __73__ICAttachmentMovieModel_PreviewGeneration__generatePreviewsInOperation___block_invoke;
  v35[3] = &unk_1E8468FF8;
  v35[4] = a1;
  v35[5] = &v42;
  v35[6] = &v36;
  [v6 performBlockAndWait:v35];

  v7 = v37[5];
  if (!v7)
  {
    v21 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      v26 = v43[5];
      *buf = 138412802;
      v50 = v24;
      v51 = 2112;
      v52 = v25;
      v53 = 2112;
      v54 = v26;
      _os_log_debug_impl(&dword_1D4171000, v21, OS_LOG_TYPE_DEBUG, "%@ %@ %@ early return", buf, 0x20u);
    }

    goto LABEL_14;
  }

  v8 = [v7 newPreviewImageSource];
  if (!v8)
  {
LABEL_14:
    v20 = 0;
    goto LABEL_15;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = +[ICPreviewDeviceContext sharedContext];
  obj = [v9 deviceInfoScalable:1];

  v10 = [obj countByEnumeratingWithState:&v31 objects:v48 count:16];
  if (v10)
  {
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        [v13 imageSize];
        v15 = v14;
        v16 = [a1 attachment];
        v17 = [v16 managedObjectContext];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __73__ICAttachmentMovieModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_10;
        v30[3] = &unk_1E8469EE0;
        v30[5] = v13;
        v30[6] = v8;
        v30[7] = v15;
        v30[4] = a1;
        [v17 performBlockAndWait:v30];
      }

      v10 = [obj countByEnumeratingWithState:&v31 objects:v48 count:16];
    }

    while (v10);
  }

  v18 = [a1 attachment];
  v19 = [v18 managedObjectContext];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __73__ICAttachmentMovieModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2;
  v29[3] = &unk_1E8468BA0;
  v29[4] = a1;
  [v19 performBlockAndWait:v29];

  CFRelease(v8);
  v20 = 1;
LABEL_15:
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  return v20;
}

@end