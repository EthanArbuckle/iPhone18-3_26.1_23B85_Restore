@interface ICAttachmentDrawingModel(PreviewGeneration)
- (BOOL)needToGeneratePreviews;
- (uint64_t)generatePreviewsInOperation:()PreviewGeneration;
- (void)needToGeneratePreviews;
@end

@implementation ICAttachmentDrawingModel(PreviewGeneration)

- (BOOL)needToGeneratePreviews
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = [a1 attachment];
  v5 = [v4 mergeableData];

  if (v5)
  {
    v6 = [a1 attachment];
    v7 = [v6 previewUpdateDate];

    if (v7)
    {
      v8 = [a1 attachment];
      [MEMORY[0x1E69B7748] defaultPixelSize];
      v9 = [v8 attachmentPreviewImageWithMinSize:? scale:?];

      if (v9 && [v9 version] && (!objc_msgSend(v9, "versionOutOfDate") || (v10 = objc_msgSend(v9, "version"), objc_msgSend(MEMORY[0x1E69B7750], "serializationVersion") <= v10)))
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v20 = [a1 attachment];
        v21 = [v20 previewImages];

        v22 = [v21 countByEnumeratingWithState:&v53 objects:v57 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = 0;
          v25 = 0;
          v26 = *v54;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v54 != v26)
              {
                objc_enumerationMutation(v21);
              }

              v28 = *(*(&v53 + 1) + 8 * i);
              v25 |= [v28 appearanceType] == 0;
              v24 |= [v28 appearanceType] == 1;
            }

            v23 = [v21 countByEnumeratingWithState:&v53 objects:v57 count:16];
          }

          while (v23);

          if (v25 & v24)
          {
            v29 = [a1 attachment];
            v30 = [v29 previewUpdateDate];
            v31 = [a1 attachment];
            v32 = [v31 modificationDate];
            v33 = [v30 compare:v32];
            v19 = v33 == -1;

            v11 = os_log_create("com.apple.notes", "PreviewGeneration");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v51 = v33 == -1;
              v34 = objc_opt_class();
              v35 = NSStringFromClass(v34);
              v36 = NSStringFromSelector(a2);
              v52 = [a1 attachment];
              v37 = [v52 identifier];
              v38 = [a1 attachment];
              v39 = [v38 previewUpdateDate];
              v40 = [a1 attachment];
              v41 = [v40 modificationDate];
              *buf = 138413570;
              v59 = v35;
              v60 = 2112;
              v61 = v36;
              v62 = 2112;
              v63 = v37;
              v64 = 1024;
              *v65 = v51;
              *&v65[4] = 2112;
              *&v65[6] = v39;
              v66 = 2112;
              *v67 = v41;
              _os_log_debug_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return %d self.attachment.previewUpdateDate %@ self.attachment.modificationDate %@", buf, 0x3Au);
            }

            goto LABEL_31;
          }
        }

        else
        {

          LOBYTE(v25) = 0;
          LOBYTE(v24) = 0;
        }

        v11 = os_log_create("com.apple.notes", "PreviewGeneration");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          v45 = NSStringFromSelector(a2);
          v46 = [a1 attachment];
          v47 = [v46 identifier];
          v48 = [a1 attachment];
          v49 = [v48 previewImages];
          v50 = [v49 count];
          *buf = 138413570;
          v59 = v44;
          v60 = 2112;
          v61 = v45;
          v62 = 2112;
          v63 = v47;
          v64 = 2048;
          *v65 = v50;
          *&v65[8] = 1024;
          *&v65[10] = v25 & 1;
          v66 = 1024;
          *v67 = v24 & 1;
          _os_log_debug_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return 1 previewImages.count %lu hasDefault %d hasDark %d", buf, 0x36u);
        }
      }

      else
      {
        v11 = os_log_create("com.apple.notes", "PreviewGeneration");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = NSStringFromSelector(a2);
          v15 = [a1 attachment];
          v16 = [v15 identifier];
          if (v9)
          {
            v17 = [v9 version];
            v18 = [v9 versionOutOfDate];
          }

          else
          {
            v17 = 0;
            v18 = 0;
          }

          *buf = 138413826;
          v59 = v13;
          v60 = 2112;
          v61 = v14;
          v62 = 2112;
          v63 = v16;
          v64 = 2048;
          *v65 = v9;
          *&v65[8] = 1024;
          *&v65[10] = v17;
          v66 = 1024;
          *v67 = v18;
          *&v67[4] = 1024;
          *&v67[6] = [MEMORY[0x1E69B7750] serializationVersion];
          _os_log_debug_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return 1 img %p img.version %d img.versionOutOfDate %d [ICDrawingVersionedDocument serializationVersion] %d", buf, 0x3Cu);
        }
      }

      v19 = 1;
LABEL_31:

      goto LABEL_32;
    }

    v11 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(ICAttachmentDrawingModel(PreviewGeneration) *)a1 needToGeneratePreviews];
    }

    v19 = 1;
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(ICAttachmentDrawingModel(PreviewGeneration) *)a1 needToGeneratePreviews];
    }

    v19 = 0;
  }

  v9 = v11;
LABEL_32:

  return v19;
}

- (uint64_t)generatePreviewsInOperation:()PreviewGeneration
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__52;
  v15 = __Block_byref_object_dispose__52;
  v16 = 0;
  v5 = [a1 attachment];
  v6 = [v5 managedObjectContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__ICAttachmentDrawingModel_PreviewGeneration__generatePreviewsInOperation___block_invoke;
  v10[3] = &unk_1E846B1D8;
  v10[4] = a1;
  v10[5] = &v11;
  [v6 performBlockAndWait:v10];

  v7 = MEMORY[0x1E69B76A0];
  v8 = [a1 attachment];
  [v7 generatePreviewsForAttachment:v8 fromDrawing:v12[5]];

  _Block_object_dispose(&v11, 8);
  return 1;
}

- (void)needToGeneratePreviews
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [a1 attachment];
  v10 = [v9 identifier];
  OUTLINED_FUNCTION_0_6();
  v14 = v8;
  v15 = v11;
  v16 = v12;
  _os_log_debug_impl(&dword_1D4171000, a3, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return 0 mergableData", v13, 0x20u);
}

@end