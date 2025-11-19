@interface ICCopyModernNotesToLegacyAccountOperation
- (ICCopyModernNotesToLegacyAccountOperation)init;
- (ICCopyModernNotesToLegacyAccountOperation)initWithNotes:(id)a3 toFolder:(id)a4 legacyContext:(id)a5 didCopyBlock:(id)a6;
- (id)copyNote:(id)a3 toFolder:(id)a4;
- (id)dataForAttachment:(id)a3 outFilename:(id *)a4 outMimeType:(id *)a5;
- (id)ensureLegacyFolderIsValid:(id)a3;
- (id)htmlAttributesForAttachment:(id)a3 legacyContentID:(id)a4 tagName:(id *)a5;
- (void)main;
@end

@implementation ICCopyModernNotesToLegacyAccountOperation

- (ICCopyModernNotesToLegacyAccountOperation)init
{
  [(ICCopyModernNotesToLegacyAccountOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICCopyModernNotesToLegacyAccountOperation)initWithNotes:(id)a3 toFolder:(id)a4 legacyContext:(id)a5 didCopyBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = ICCopyModernNotesToLegacyAccountOperation;
  v15 = [(ICCopyModernNotesToLegacyAccountOperation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sourceNotes, a3);
    objc_storeStrong(&v16->_destinationFolder, a4);
    objc_storeStrong(&v16->_legacyContext, a5);
    v17 = _Block_copy(v14);
    didCopyBlock = v16->_didCopyBlock;
    v16->_didCopyBlock = v17;
  }

  return v16;
}

- (void)main
{
  v3 = [(ICCopyModernNotesToLegacyAccountOperation *)self sourceNotes];
  v4 = [v3 mutableCopy];

  v5 = [(ICCopyModernNotesToLegacyAccountOperation *)self destinationFolder];
  if (([(ICCopyModernNotesToLegacyAccountOperation *)self isCancelled]& 1) == 0)
  {
    do
    {
      if (![v4 count])
      {
        break;
      }

      v6 = [v4 lastObject];
      [v4 removeLastObject];
      v8 = v5;
      v9 = v6;
      v7 = v6;
      performBlockOnMainThreadAndWait();
    }

    while (![(ICCopyModernNotesToLegacyAccountOperation *)self isCancelled]);
  }
}

void __49__ICCopyModernNotesToLegacyAccountOperation_main__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) ensureLegacyFolderIsValid:*(a1 + 40)];
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = [*(a1 + 48) managedObjectContext];
    if (v2)
    {
      v3 = v2;
      v4 = [*(a1 + 48) markedForDeletion];

      if ((v4 & 1) == 0)
      {
        if (v8)
        {
          v5 = [*(a1 + 32) copyNote:*(a1 + 48) toFolder:v8];
          if (v5)
          {
            v6 = [*(a1 + 32) didCopyBlock];

            if (v6)
            {
              v7 = [*(a1 + 32) didCopyBlock];
              (v7)[2](v7, *(a1 + 48), v5);
            }
          }
        }
      }
    }
  }
}

- (id)ensureLegacyFolderIsValid:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 managedObjectContext];

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v4 objectID];

    if (v7)
    {
      v8 = [(ICCopyModernNotesToLegacyAccountOperation *)self legacyContext];
      v9 = [v8 managedObjectContext];
      v10 = [v4 objectID];
      v6 = [v9 objectWithID:v10];
    }

    else
    {
      v11 = os_log_create("com.apple.notes", "Move");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[ICCopyModernNotesToLegacyAccountOperation ensureLegacyFolderIsValid:]";
        _os_log_impl(&dword_1D4171000, v11, OS_LOG_TYPE_INFO, "%s: Couldn't get a valid legacy folder", &v13, 0xCu);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (id)dataForAttachment:(id)a3 outFilename:(id *)a4 outMimeType:(id *)a5
{
  v7 = a3;
  if ([v7 isUnsupported] && (objc_msgSend(v7, "hasFallbackImage") & 1) != 0 || objc_msgSend(v7, "attachmentType") == 10)
  {
    v8 = [v7 fallbackImageData];
    v9 = [v7 fallbackImageURL];
    v10 = [v9 lastPathComponent];

    v11 = [MEMORY[0x1E69B7680] fallbackImageUTI];
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v12 = [v7 media];

  if (v12)
  {
    v13 = [v7 media];
    v8 = [v13 data];
    v10 = [v13 filename];
    v11 = [v7 typeUTI];

    goto LABEL_7;
  }

  if ([v7 attachmentType] == 13)
  {
    v21 = [MEMORY[0x1E69B7678] currentInfo];
    v14 = [MEMORY[0x1E69B76C0] generateImageForAttachment:v7 fullResolution:1 appearanceInfo:v21];

    v11 = 0;
    v10 = 0;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v14 = 0;
  }

  v8 = 0;
LABEL_8:
  if (!(v8 | v14))
  {
    v15 = [v7 attachmentPreviewImageWithMinSize:1024.0 scale:{768.0, 1.0}];
    v14 = [v15 orientedImage];
  }

  if (v14)
  {
    v16 = [v14 ic_PNGData];

    v17 = [*MEMORY[0x1E6982F28] identifier];

    v11 = v17;
    v8 = v16;
  }

  if (!v10 && v11)
  {
    v10 = [MEMORY[0x1E69B7680] filenameFromUTI:v11];
  }

  if (a4 && v10)
  {
    v18 = v10;
    *a4 = v10;
  }

  if (a5 && v11)
  {
    v19 = v11;
    *a5 = v11;
  }

  return v8;
}

- (id)htmlAttributesForAttachment:(id)a3 legacyContentID:(id)a4 tagName:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 URL];
  if (v9)
  {
    if (a5)
    {
      *a5 = @"a";
    }

    v10 = MEMORY[0x1E696AEC0];
    if (v8)
    {
      v11 = [MEMORY[0x1E69B77F0] htmlObjectAttributesForAttachmentWithContentID:v8];
      [v10 stringWithFormat:@" href=%@><object%@", v9, v11];
    }

    else
    {
      v13 = [v7 title];
      v11 = v13;
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v9;
      }

      [v10 stringWithFormat:@" href=%@><i>%@</i", v9, v14];
    }
    v12 = ;
  }

  else
  {
    if (a5)
    {
      *a5 = @"object";
    }

    if (v8)
    {
      v12 = [MEMORY[0x1E69B77F0] htmlObjectAttributesForAttachmentWithContentID:v8];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyNote:(id)a3 toFolder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E69B77B8];
  v9 = [(ICCopyModernNotesToLegacyAccountOperation *)self legacyContext];
  v10 = [v8 newNoteBasedOnModernNote:v6 inFolder:v7 context:v9];

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __63__ICCopyModernNotesToLegacyAccountOperation_copyNote_toFolder___block_invoke;
  v22 = &unk_1E846BF88;
  v23 = v7;
  v24 = v6;
  v25 = self;
  v11 = v10;
  v26 = v11;
  v12 = v6;
  v13 = v7;
  v14 = [v12 htmlStringWithAttachmentConversionHandler:&v19];
  [v11 setHtmlString:{v14, v19, v20, v21, v22}];

  [v13 addNotesObject:v11];
  v15 = [v11 managedObjectContext];
  [v15 processPendingChanges];

  v16 = v26;
  v17 = v11;

  return v17;
}

id __63__ICCopyModernNotesToLegacyAccountOperation_copyNote_toFolder___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (!v7 || ([*(a1 + 32) account], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "supportsAttachments"), v8, !v9))
  {
    v17 = 0;
    goto LABEL_29;
  }

  v10 = [*(a1 + 40) attachmentWithIdentifier:v7];
  if ([v10 attachmentType] == 11)
  {
    objc_opt_class();
    v11 = [v10 attachmentModel];
    v12 = ICDynamicCast();

    if (v12)
    {
      v32 = [v12 blockingGeneratePDFURL];
      v34 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v32];
      v33 = [*MEMORY[0x1E6982F10] preferredMIMEType];
      v13 = [v12 attachment];
      v14 = [v13 title];
      v15 = [v12 attachment];
      v16 = v15;
      if (v14)
      {
        [v15 title];
      }

      else
      {
        [v15 defaultTitle];
      }
      v22 = ;

      v19 = [v22 stringByAppendingPathExtension:@"pdf"];

      v20 = v33;
      v18 = v34;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
    }
  }

  else if ([v10 attachmentType] == 12)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = *(a1 + 48);
    v36 = 0;
    v37 = 0;
    v18 = [v21 dataForAttachment:v10 outFilename:&v37 outMimeType:&v36];
    v19 = v37;
    v20 = v36;
  }

  if ([v10 attachmentType] != 12)
  {
    v26 = [*(a1 + 56) createAttachmentWithName:v19];
    [v26 setMimeType:v20];
    if (v18)
    {
      v35 = 0;
      v27 = [v26 persistAttachmentData:v18 error:&v35];
      v28 = v35;
      if (v27)
      {
        v29 = *(a1 + 48);
        v30 = [v26 contentID];
        v17 = [v29 htmlAttributesForAttachment:v10 legacyContentID:v30 tagName:a3];
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      __63__ICCopyModernNotesToLegacyAccountOperation_copyNote_toFolder___block_invoke_cold_1(v26, v28, v30);
    }

    v17 = 0;
    goto LABEL_26;
  }

  v23 = v20;
  v24 = [v10 attachmentModel];
  v25 = [v24 canConvertToHTMLForSharing];

  if (v25)
  {
    v26 = [v10 attachmentModel];
    v17 = [v26 attributesForSharingHTMLWithTagName:a3 textContent:a4];
    v20 = v23;
LABEL_27:

    goto LABEL_28;
  }

  v17 = 0;
  v20 = v23;
LABEL_28:

LABEL_29:

  return v17;
}

void __63__ICCopyModernNotesToLegacyAccountOperation_copyNote_toFolder___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 contentID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1D4171000, a3, OS_LOG_TYPE_ERROR, "Couldn't persist attachment for id: %@, error: %@", &v6, 0x16u);
}

@end