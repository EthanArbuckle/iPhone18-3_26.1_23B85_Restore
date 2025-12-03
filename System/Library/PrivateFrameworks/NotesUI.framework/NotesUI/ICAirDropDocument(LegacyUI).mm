@interface ICAirDropDocument(LegacyUI)
+ (id)legacyNoteAirDropDocumentWithWebArchive:()LegacyUI;
- (id)webArchiveFromLegacyNoteDocument;
@end

@implementation ICAirDropDocument(LegacyUI)

+ (id)legacyNoteAirDropDocumentWithWebArchive:()LegacyUI
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    data = [v4 data];
    if (data)
    {
      v7 = [self legacyNoteAirDropDocumentWithData:data];
    }

    else
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"data" functionName:"+[ICAirDropDocument(LegacyUI) legacyNoteAirDropDocumentWithWebArchive:]" simulateCrash:1 showAlert:0 format:{@"Failed to generate data from webArchive %@", v5}];
      v7 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"webArchive" functionName:"+[ICAirDropDocument(LegacyUI) legacyNoteAirDropDocumentWithWebArchive:]" simulateCrash:1 showAlert:0 format:@"webArchive is nil"];
    v7 = 0;
  }

  return v7;
}

- (id)webArchiveFromLegacyNoteDocument
{
  dataFromLegacyNoteDocument = [self dataFromLegacyNoteDocument];
  if (dataFromLegacyNoteDocument)
  {
    v2 = [objc_alloc(MEMORY[0x1E69E2F30]) initWithData:dataFromLegacyNoteDocument];
    if (!v2)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"webArchive" functionName:"-[ICAirDropDocument(LegacyUI) webArchiveFromLegacyNoteDocument]" simulateCrash:1 showAlert:0 format:{@"Failed to create WebArchive from data with length %lu", objc_msgSend(dataFromLegacyNoteDocument, "length")}];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end