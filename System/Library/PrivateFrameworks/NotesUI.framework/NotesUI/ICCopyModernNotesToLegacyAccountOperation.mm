@interface ICCopyModernNotesToLegacyAccountOperation
- (ICCopyModernNotesToLegacyAccountOperation)init;
- (ICCopyModernNotesToLegacyAccountOperation)initWithNotes:(id)notes toFolder:(id)folder legacyContext:(id)context didCopyBlock:(id)block;
- (id)copyNote:(id)note toFolder:(id)folder;
- (id)dataForAttachment:(id)attachment outFilename:(id *)filename outMimeType:(id *)type;
- (id)ensureLegacyFolderIsValid:(id)valid;
- (id)htmlAttributesForAttachment:(id)attachment legacyContentID:(id)d tagName:(id *)name;
- (void)main;
@end

@implementation ICCopyModernNotesToLegacyAccountOperation

- (ICCopyModernNotesToLegacyAccountOperation)init
{
  [(ICCopyModernNotesToLegacyAccountOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICCopyModernNotesToLegacyAccountOperation)initWithNotes:(id)notes toFolder:(id)folder legacyContext:(id)context didCopyBlock:(id)block
{
  notesCopy = notes;
  folderCopy = folder;
  contextCopy = context;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = ICCopyModernNotesToLegacyAccountOperation;
  v15 = [(ICCopyModernNotesToLegacyAccountOperation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sourceNotes, notes);
    objc_storeStrong(&v16->_destinationFolder, folder);
    objc_storeStrong(&v16->_legacyContext, context);
    v17 = _Block_copy(blockCopy);
    didCopyBlock = v16->_didCopyBlock;
    v16->_didCopyBlock = v17;
  }

  return v16;
}

- (void)main
{
  sourceNotes = [(ICCopyModernNotesToLegacyAccountOperation *)self sourceNotes];
  v4 = [sourceNotes mutableCopy];

  destinationFolder = [(ICCopyModernNotesToLegacyAccountOperation *)self destinationFolder];
  if (([(ICCopyModernNotesToLegacyAccountOperation *)self isCancelled]& 1) == 0)
  {
    do
    {
      if (![v4 count])
      {
        break;
      }

      lastObject = [v4 lastObject];
      [v4 removeLastObject];
      v8 = destinationFolder;
      v9 = lastObject;
      v7 = lastObject;
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

- (id)ensureLegacyFolderIsValid:(id)valid
{
  v15 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  managedObjectContext = [validCopy managedObjectContext];

  if (managedObjectContext)
  {
    v6 = validCopy;
  }

  else
  {
    objectID = [validCopy objectID];

    if (objectID)
    {
      legacyContext = [(ICCopyModernNotesToLegacyAccountOperation *)self legacyContext];
      managedObjectContext2 = [legacyContext managedObjectContext];
      objectID2 = [validCopy objectID];
      v6 = [managedObjectContext2 objectWithID:objectID2];
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

- (id)dataForAttachment:(id)attachment outFilename:(id *)filename outMimeType:(id *)type
{
  attachmentCopy = attachment;
  if ([attachmentCopy isUnsupported] && (objc_msgSend(attachmentCopy, "hasFallbackImage") & 1) != 0 || objc_msgSend(attachmentCopy, "attachmentType") == 10)
  {
    fallbackImageData = [attachmentCopy fallbackImageData];
    fallbackImageURL = [attachmentCopy fallbackImageURL];
    lastPathComponent = [fallbackImageURL lastPathComponent];

    fallbackImageUTI = [MEMORY[0x1E69B7680] fallbackImageUTI];
LABEL_7:
    orientedImage = 0;
    goto LABEL_8;
  }

  media = [attachmentCopy media];

  if (media)
  {
    media2 = [attachmentCopy media];
    fallbackImageData = [media2 data];
    lastPathComponent = [media2 filename];
    fallbackImageUTI = [attachmentCopy typeUTI];

    goto LABEL_7;
  }

  if ([attachmentCopy attachmentType] == 13)
  {
    currentInfo = [MEMORY[0x1E69B7678] currentInfo];
    orientedImage = [MEMORY[0x1E69B76C0] generateImageForAttachment:attachmentCopy fullResolution:1 appearanceInfo:currentInfo];

    fallbackImageUTI = 0;
    lastPathComponent = 0;
  }

  else
  {
    fallbackImageUTI = 0;
    lastPathComponent = 0;
    orientedImage = 0;
  }

  fallbackImageData = 0;
LABEL_8:
  if (!(fallbackImageData | orientedImage))
  {
    v15 = [attachmentCopy attachmentPreviewImageWithMinSize:1024.0 scale:{768.0, 1.0}];
    orientedImage = [v15 orientedImage];
  }

  if (orientedImage)
  {
    ic_PNGData = [orientedImage ic_PNGData];

    identifier = [*MEMORY[0x1E6982F28] identifier];

    fallbackImageUTI = identifier;
    fallbackImageData = ic_PNGData;
  }

  if (!lastPathComponent && fallbackImageUTI)
  {
    lastPathComponent = [MEMORY[0x1E69B7680] filenameFromUTI:fallbackImageUTI];
  }

  if (filename && lastPathComponent)
  {
    v18 = lastPathComponent;
    *filename = lastPathComponent;
  }

  if (type && fallbackImageUTI)
  {
    v19 = fallbackImageUTI;
    *type = fallbackImageUTI;
  }

  return fallbackImageData;
}

- (id)htmlAttributesForAttachment:(id)attachment legacyContentID:(id)d tagName:(id *)name
{
  attachmentCopy = attachment;
  dCopy = d;
  v9 = [attachmentCopy URL];
  if (v9)
  {
    if (name)
    {
      *name = @"a";
    }

    v10 = MEMORY[0x1E696AEC0];
    if (dCopy)
    {
      v11 = [MEMORY[0x1E69B77F0] htmlObjectAttributesForAttachmentWithContentID:dCopy];
      [v10 stringWithFormat:@" href=%@><object%@", v9, v11];
    }

    else
    {
      title = [attachmentCopy title];
      v11 = title;
      if (title)
      {
        v14 = title;
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
    if (name)
    {
      *name = @"object";
    }

    if (dCopy)
    {
      v12 = [MEMORY[0x1E69B77F0] htmlObjectAttributesForAttachmentWithContentID:dCopy];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyNote:(id)note toFolder:(id)folder
{
  noteCopy = note;
  folderCopy = folder;
  v8 = MEMORY[0x1E69B77B8];
  legacyContext = [(ICCopyModernNotesToLegacyAccountOperation *)self legacyContext];
  v10 = [v8 newNoteBasedOnModernNote:noteCopy inFolder:folderCopy context:legacyContext];

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __63__ICCopyModernNotesToLegacyAccountOperation_copyNote_toFolder___block_invoke;
  v22 = &unk_1E846BF88;
  v23 = folderCopy;
  v24 = noteCopy;
  selfCopy = self;
  v11 = v10;
  v26 = v11;
  v12 = noteCopy;
  v13 = folderCopy;
  v14 = [v12 htmlStringWithAttachmentConversionHandler:&v19];
  [v11 setHtmlString:{v14, v19, v20, v21, v22}];

  [v13 addNotesObject:v11];
  managedObjectContext = [v11 managedObjectContext];
  [managedObjectContext processPendingChanges];

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