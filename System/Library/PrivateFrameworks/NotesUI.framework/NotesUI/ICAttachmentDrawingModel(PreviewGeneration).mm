@interface ICAttachmentDrawingModel(PreviewGeneration)
- (BOOL)needToGeneratePreviews;
- (uint64_t)generatePreviewsInOperation:()PreviewGeneration;
- (void)needToGeneratePreviews;
@end

@implementation ICAttachmentDrawingModel(PreviewGeneration)

- (BOOL)needToGeneratePreviews
{
  v68 = *MEMORY[0x1E69E9840];
  attachment = [self attachment];
  mergeableData = [attachment mergeableData];

  if (mergeableData)
  {
    attachment2 = [self attachment];
    previewUpdateDate = [attachment2 previewUpdateDate];

    if (previewUpdateDate)
    {
      attachment3 = [self attachment];
      [MEMORY[0x1E69B7748] defaultPixelSize];
      v9 = [attachment3 attachmentPreviewImageWithMinSize:? scale:?];

      if (v9 && [v9 version] && (!objc_msgSend(v9, "versionOutOfDate") || (v10 = objc_msgSend(v9, "version"), objc_msgSend(MEMORY[0x1E69B7750], "serializationVersion") <= v10)))
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        attachment4 = [self attachment];
        previewImages = [attachment4 previewImages];

        v22 = [previewImages countByEnumeratingWithState:&v53 objects:v57 count:16];
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
                objc_enumerationMutation(previewImages);
              }

              v28 = *(*(&v53 + 1) + 8 * i);
              v25 |= [v28 appearanceType] == 0;
              v24 |= [v28 appearanceType] == 1;
            }

            v23 = [previewImages countByEnumeratingWithState:&v53 objects:v57 count:16];
          }

          while (v23);

          if (v25 & v24)
          {
            attachment5 = [self attachment];
            previewUpdateDate2 = [attachment5 previewUpdateDate];
            attachment6 = [self attachment];
            modificationDate = [attachment6 modificationDate];
            v33 = [previewUpdateDate2 compare:modificationDate];
            v19 = v33 == -1;

            v11 = os_log_create("com.apple.notes", "PreviewGeneration");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v51 = v33 == -1;
              v34 = objc_opt_class();
              v35 = NSStringFromClass(v34);
              v36 = NSStringFromSelector(a2);
              attachment7 = [self attachment];
              identifier = [attachment7 identifier];
              attachment8 = [self attachment];
              previewUpdateDate3 = [attachment8 previewUpdateDate];
              attachment9 = [self attachment];
              modificationDate2 = [attachment9 modificationDate];
              *buf = 138413570;
              v59 = v35;
              v60 = 2112;
              v61 = v36;
              v62 = 2112;
              v63 = identifier;
              v64 = 1024;
              *v65 = v51;
              *&v65[4] = 2112;
              *&v65[6] = previewUpdateDate3;
              v66 = 2112;
              *v67 = modificationDate2;
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
          attachment10 = [self attachment];
          identifier2 = [attachment10 identifier];
          attachment11 = [self attachment];
          previewImages2 = [attachment11 previewImages];
          v50 = [previewImages2 count];
          *buf = 138413570;
          v59 = v44;
          v60 = 2112;
          v61 = v45;
          v62 = 2112;
          v63 = identifier2;
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
          attachment12 = [self attachment];
          identifier3 = [attachment12 identifier];
          if (v9)
          {
            version = [v9 version];
            versionOutOfDate = [v9 versionOutOfDate];
          }

          else
          {
            version = 0;
            versionOutOfDate = 0;
          }

          *buf = 138413826;
          v59 = v13;
          v60 = 2112;
          v61 = v14;
          v62 = 2112;
          v63 = identifier3;
          v64 = 2048;
          *v65 = v9;
          *&v65[8] = 1024;
          *&v65[10] = version;
          v66 = 1024;
          *v67 = versionOutOfDate;
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
      [(ICAttachmentDrawingModel(PreviewGeneration) *)self needToGeneratePreviews];
    }

    v19 = 1;
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(ICAttachmentDrawingModel(PreviewGeneration) *)self needToGeneratePreviews];
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
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__ICAttachmentDrawingModel_PreviewGeneration__generatePreviewsInOperation___block_invoke;
  v10[3] = &unk_1E846B1D8;
  v10[4] = self;
  v10[5] = &v11;
  [managedObjectContext performBlockAndWait:v10];

  v7 = MEMORY[0x1E69B76A0];
  attachment2 = [self attachment];
  [v7 generatePreviewsForAttachment:attachment2 fromDrawing:v12[5]];

  _Block_object_dispose(&v11, 8);
  return 1;
}

- (void)needToGeneratePreviews
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  attachment = [self attachment];
  identifier = [attachment identifier];
  OUTLINED_FUNCTION_0_6();
  v14 = v8;
  v15 = v11;
  v16 = v12;
  _os_log_debug_impl(&dword_1D4171000, a3, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return 0 mergableData", v13, 0x20u);
}

@end