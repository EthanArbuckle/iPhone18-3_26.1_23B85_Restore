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
  v13 = [v12 managedObjectContext];
  v14 = MEMORY[0x1E69B7760];
  v15 = [MEMORY[0x1E69B7800] sharedContext];
  v16 = [v15 managedObjectContext];
  v17 = [v14 defaultFolderInContext:v16];

  v38 = [MEMORY[0x1E69B77F0] newEmptyNoteInFolder:v17];
  objc_opt_class();
  v18 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"Note" inManagedObjectContext:v13];
  v19 = ICCheckedDynamicCast();

  objc_opt_class();
  v20 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"NoteBody" inManagedObjectContext:v13];
  v21 = ICCheckedDynamicCast();

  [v19 setBody:v21];
  v22 = [MEMORY[0x1E69B7140] generateGUID];
  [v19 setGuid:v22];

  v23 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [v38 setCreationDate:v23];
  [v38 setModificationDate:v23];
  [a1 importLegacyNoteFromWebArchive:v33 withContent:v34 intoLegacyNote:v19 context:v35];
  [ICLegacyNoteUtilities copyValuesFromLegacyNote:v19 toNote:v38 styler:v36 attachmentPreviewGenerator:v37];
  v24 = [v19 folder];

  if (v24)
  {
    v25 = MEMORY[0x1E69B7A38];
    v26 = [v19 identifier];
    [v25 handleFailedAssertWithCondition:"!legacyNote.folder" functionName:"+[NoteObject(AirDropDocumentUI) noteByImportingLegacyNoteFromWebArchive:withContent:context:styler:attachmentPreviewGenerator:]" simulateCrash:1 showAlert:0 format:{@"Temporary legacyNote should not have a folder %@", v26}];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v27 = [v19 attachments];
  v28 = [v27 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v28)
  {
    v29 = *v40;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(v27);
        }

        objc_opt_class();
        v31 = ICCheckedDynamicCast();
        if (v31)
        {
          [v13 deleteObject:v31];
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v28);
  }

  [v13 deleteObject:v19];
  [v13 deleteObject:v21];

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
  v12 = [v19 subresources];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
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

      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  v15 = [v10 webArchiveFromLegacyNoteDocument];
  if (v15)
  {
    v21 = v13;
    v16 = [MEMORY[0x1E69B77B8] contentStringFromWebArchive:v15];
    if (v16)
    {
      v17 = [v14 defaultStoreForNewNote];
      v18 = [v17 account];
      if ([MEMORY[0x1E69B7668] canAirDropImportIntoAccount:v18 context:v14])
      {
        v19 = [v14 newlyCreatedNoteFromDefaultStore];
        [a1 importLegacyNoteFromWebArchive:v15 withContent:v16 intoLegacyNote:v19 context:v14];
      }

      else
      {
        v19 = [a1 noteByImportingLegacyNoteFromWebArchive:v15 withContent:v16 context:v14 styler:v12 attachmentPreviewGenerator:v21];
      }
    }

    else
    {
      v19 = 0;
    }

    v13 = v21;
  }

  else
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"webArchive" functionName:"+[NoteObject(AirDropDocumentUI) newNoteForAirDropDocument:context:styler:attachmentPreviewGenerator:]" simulateCrash:1 showAlert:0 format:{@"Failed to get webArchive from AirDrop document %@", v10}];
    v19 = 0;
  }

  return v19;
}

@end