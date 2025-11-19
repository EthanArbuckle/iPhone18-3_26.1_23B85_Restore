@interface ICAirDropDocument
+ (BOOL)canAirDropImportIntoAccount:(id)a3 context:(id)a4;
+ (id)documentAtURL:(id)a3;
+ (id)legacyNoteAirDropDocumentWithData:(id)a3;
- (ICAirDropDocument)initWithData:(id)a3;
- (id)dataFromLegacyNoteDocument;
@end

@implementation ICAirDropDocument

+ (id)documentAtURL:(id)a3
{
  v4 = a3;
  if (([v4 isFileURL] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"url.fileURL" functionName:"+[ICAirDropDocument documentAtURL:]" simulateCrash:1 showAlert:0 format:{@"Airdrop document is not a file url %@", v4}];
  }

  if ([v4 isFileURL])
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v4 path];
    v7 = [v5 contentsAtPath:v6];

    if (v7)
    {
      v8 = [[a1 alloc] initWithData:v7];
    }

    else
    {
      v9 = MEMORY[0x277D36198];
      v10 = [v4 path];
      [v9 handleFailedAssertWithCondition:"data" functionName:"+[ICAirDropDocument documentAtURL:]" simulateCrash:1 showAlert:0 format:{@"Failed to get data from path %@", v10}];

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ICAirDropDocument)initWithData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICAirDropDocument;
  v5 = [(ICAirDropDocument *)&v8 init];
  v6 = v5;
  if (v5 && (ICProtobufUtilitiesParseArchiveFromNSData<airdrop_document::Document>(&v5->_document, v4) & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAirDropDocument initWithData:]" simulateCrash:1 showAlert:0 format:{@"Failed to parse archive from data with length %lu", objc_msgSend(v4, "length")}];

    v6 = 0;
  }

  return v6;
}

+ (BOOL)canAirDropImportIntoAccount:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = ![ICLegacyAccountUtilities didChooseToMigrateAccount:v5 context:v6];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (id)legacyNoteAirDropDocumentWithData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ICAirDropDocument);
  v5 = [(ICAirDropDocument *)v4 document];
  *(v5 + 32) |= 2u;
  v6 = *(v5 + 48);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 32) |= 1u;
  v7 = *(v6 + 40);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 32) |= 1u;
  v8 = *(v7 + 40);
  if (!v8)
  {
    operator new();
  }

  v9 = [v3 bytes];
  v10 = [v3 length];
  *(v8 + 32) |= 1u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  v11 = v10;
  v12 = *(v8 + 40);
  if (v12 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::__assign_external(v12, v9, v11);

  return v4;
}

- (id)dataFromLegacyNoteDocument
{
  v2 = [(ICAirDropDocument *)self document];
  v3 = v2;
  if ((v2[32] & 2) == 0)
  {
    v2 = [MEMORY[0x277D36198] handleFailedAssertWithCondition:"document.has_legacynotedocument()" functionName:"-[ICAirDropDocument(Legacy) dataFromLegacyNoteDocument]" simulateCrash:1 showAlert:0 format:@"AirDrop document does not have legacy note document"];
    if ((v3[32] & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(v3 + 6);
  if (!v4)
  {
    v2 = airdrop_document::Document::default_instance(v2);
    v4 = *(v2 + 6);
  }

  if ((*(v4 + 32) & 1) == 0)
  {
    v2 = [MEMORY[0x277D36198] handleFailedAssertWithCondition:"legacyNoteDocument.has_version1_0()" functionName:"-[ICAirDropDocument(Legacy) dataFromLegacyNoteDocument]" simulateCrash:1 showAlert:0 format:@"Failed to find any legacy note document version"];
    if ((*(v4 + 32) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(v4 + 40);
  if (!v5)
  {
    v2 = airdrop_document::LegacyNoteDocument::default_instance(v2);
    v5 = *(v2 + 5);
  }

  if (*(v5 + 32) & 1) != 0 || (v2 = [MEMORY[0x277D36198] handleFailedAssertWithCondition:"version1_0.has_webarchive()" functionName:"-[ICAirDropDocument(Legacy) dataFromLegacyNoteDocument]" simulateCrash:1 showAlert:0 format:@"No archive found from legacy version 1.0 data"], (*(v5 + 32)))
  {
    v7 = *(v5 + 40);
    if (!v7)
    {
      v7 = *(airdrop_document::LegacyNoteDocument1_0::default_instance(v2) + 40);
    }

    v8 = *(v7 + 40);
    v9 = *(v8 + 23);
    if (v9 < 0)
    {
      v8 = *v8;
      v9 = *(*(v7 + 40) + 8);
    }

    v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v8 length:v9 freeWhenDone:0];
  }

  else
  {
LABEL_11:
    v6 = 0;
  }

  return v6;
}

@end