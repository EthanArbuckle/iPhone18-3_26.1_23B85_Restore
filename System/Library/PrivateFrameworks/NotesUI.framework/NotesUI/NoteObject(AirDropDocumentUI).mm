@interface NoteObject(AirDropDocumentUI)
+ (id)noteByImportingLegacyNoteFromWebArchive:()AirDropDocumentUI withContent:context:styler:attachmentPreviewGenerator:;
+ (uint64_t)newNoteForAirDropDocument:()AirDropDocumentUI context:styler:attachmentPreviewGenerator:;
+ (void)importLegacyNoteFromWebArchive:()AirDropDocumentUI withContent:intoLegacyNote:context:;
@end

@implementation NoteObject(AirDropDocumentUI)

+ (id)noteByImportingLegacyNoteFromWebArchive:()AirDropDocumentUI withContent:context:styler:attachmentPreviewGenerator:
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v34 = a4;
  v12 = a5;
  v36 = a6;
  v37 = a7;
  v35 = v12;
  managedObjectContext = [v12 managedObjectContext];
  v14 = MEMORY[0x1E69B7760];
  mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
  managedObjectContext2 = [mEMORY[0x1E69B7800] managedObjectContext];
  v17 = [v14 defaultFolderInContext:managedObjectContext2];

  v38 = [MEMORY[0x1E69B77F0] newEmptyNoteInFolder:v17];
  objc_opt_class();
  v18 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"Note" inManagedObjectContext:managedObjectContext];
  v19 = ICCheckedDynamicCast();

  objc_opt_class();
  v20 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"NoteBody" inManagedObjectContext:managedObjectContext];
  v21 = ICCheckedDynamicCast();

  [v19 setBody:v21];
  generateGUID = [MEMORY[0x1E69B7140] generateGUID];
  [v19 setGuid:generateGUID];

  v23 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [v38 setCreationDate:v23];
  [v38 setModificationDate:v23];
  [self importLegacyNoteFromWebArchive:v33 withContent:v34 intoLegacyNote:v19 context:v35];
  [ICLegacyNoteUtilities copyValuesFromLegacyNote:v19 toNote:v38 styler:v36 attachmentPreviewGenerator:v37];
  folder = [v19 folder];

  if (folder)
  {
    v25 = MEMORY[0x1E69B7A38];
    identifier = [v19 identifier];
    [v25 handleFailedAssertWithCondition:"!legacyNote.folder" functionName:"+[NoteObject(AirDropDocumentUI) noteByImportingLegacyNoteFromWebArchive:withContent:context:styler:attachmentPreviewGenerator:]" simulateCrash:1 showAlert:0 format:{@"Temporary legacyNote should not have a folder %@", identifier}];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  attachments = [v19 attachments];
  v28 = [attachments countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v28)
  {
    v29 = *v40;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(attachments);
        }

        objc_opt_class();
        v31 = ICCheckedDynamicCast();
        if (v31)
        {
          [managedObjectContext deleteObject:v31];
        }
      }

      v28 = [attachments countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v28);
  }

  [managedObjectContext deleteObject:v19];
  [managedObjectContext deleteObject:v21];

  return v38;
}

+ (void)importLegacyNoteFromWebArchive:()AirDropDocumentUI withContent:intoLegacyNote:context:
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v9 = a5;
  v10 = a6;
  v18 = v9;
  [v9 setContent:a4];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  subresources = [v19 subresources];
  v13 = [subresources countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(subresources);
        }

        v16 = [MEMORY[0x1E69B77B8] createAttachmentFromWebResource:*(*(&v20 + 1) + 8 * i) inContext:v10];
        if (v16)
        {
          [v11 addObject:v16];
        }

        else
        {
          [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"attachmentObject" functionName:"+[NoteObject(AirDropDocumentUI) importLegacyNoteFromWebArchive:withContent:intoLegacyNote:context:]" simulateCrash:1 showAlert:0 format:@"Failed to create attachmentObject from resource"];
        }
      }

      v13 = [subresources countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v11];
  [v18 addAttachments:v17];
}

+ (uint64_t)newNoteForAirDropDocument:()AirDropDocumentUI context:styler:attachmentPreviewGenerator:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  v14 = ICCheckedDynamicCast();
  webArchiveFromLegacyNoteDocument = [v10 webArchiveFromLegacyNoteDocument];
  if (webArchiveFromLegacyNoteDocument)
  {
    v21 = v13;
    v16 = [MEMORY[0x1E69B77B8] contentStringFromWebArchive:webArchiveFromLegacyNoteDocument];
    if (v16)
    {
      defaultStoreForNewNote = [v14 defaultStoreForNewNote];
      account = [defaultStoreForNewNote account];
      if ([MEMORY[0x1E69B7668] canAirDropImportIntoAccount:account context:v14])
      {
        newlyCreatedNoteFromDefaultStore = [v14 newlyCreatedNoteFromDefaultStore];
        [self importLegacyNoteFromWebArchive:webArchiveFromLegacyNoteDocument withContent:v16 intoLegacyNote:newlyCreatedNoteFromDefaultStore context:v14];
      }

      else
      {
        newlyCreatedNoteFromDefaultStore = [self noteByImportingLegacyNoteFromWebArchive:webArchiveFromLegacyNoteDocument withContent:v16 context:v14 styler:v12 attachmentPreviewGenerator:v21];
      }
    }

    else
    {
      newlyCreatedNoteFromDefaultStore = 0;
    }

    v13 = v21;
  }

  else
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"webArchive" functionName:"+[NoteObject(AirDropDocumentUI) newNoteForAirDropDocument:context:styler:attachmentPreviewGenerator:]" simulateCrash:1 showAlert:0 format:{@"Failed to get webArchive from AirDrop document %@", v10}];
    newlyCreatedNoteFromDefaultStore = 0;
  }

  return newlyCreatedNoteFromDefaultStore;
}

@end