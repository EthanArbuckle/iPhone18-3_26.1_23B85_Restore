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
    v6 = [v4 data];
    if (v6)
    {
      v7 = [a1 legacyNoteAirDropDocumentWithData:v6];
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
  v1 = [a1 dataFromLegacyNoteDocument];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E69E2F30]) initWithData:v1];
    if (!v2)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"webArchive" functionName:"-[ICAirDropDocument(LegacyUI) webArchiveFromLegacyNoteDocument]" simulateCrash:1 showAlert:0 format:{@"Failed to create WebArchive from data with length %lu", objc_msgSend(v1, "length")}];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end