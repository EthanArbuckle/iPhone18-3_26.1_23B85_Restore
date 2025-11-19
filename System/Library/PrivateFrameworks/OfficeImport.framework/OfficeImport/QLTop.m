@interface QLTop
+ (id)metadataForBinaryOfficeFileAtURL:(id)a3 error:(id *)a4;
+ (id)searchableAttributesForBinaryOfficeFileAtURL:(id)a3 error:(id *)a4;
+ (void)fillHTMLArchiveForOfficeData:(id)a3 fileName:(id)a4 dataFormat:(unint64_t)a5 archiver:(id)a6;
+ (void)fillHTMLArchiveForOfficeFile:(id)a3 dataFormat:(unint64_t)a4 archiver:(id)a5;
+ (void)fillHTMLArchiveForOfficeFile:(id)a3 orData:(id)a4 dataFileName:(id)a5 dataFormat:(unint64_t)a6 archiver:(id)a7;
- (Class)mapperClassForIndexing:(BOOL)a3;
- (Class)readerClassForBinaryDocuments;
- (Class)readerClassForXMLDocuments;
- (Class)stateClass;
- (id)documentWithFile:(id)a3 orData:(id)a4 isXML:(BOOL)a5 archiver:(id)a6;
- (void)initializeClasses;
- (void)readFile:(id)a3 orData:(id)a4 dataFileName:(id)a5 format:(unint64_t)a6 archiver:(id)a7 forIndexing:(BOOL)a8;
- (void)readerDidEndDocument:(id)a3;
- (void)readerDidStartDocument:(id)a3 withElementCount:(int64_t)a4;
- (void)setupMappingStateWithDocument:(id)a3;
@end

@implementation QLTop

- (void)initializeClasses
{
  objc_opt_class();

  objc_opt_class();
}

- (Class)stateClass
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:368 description:{@"Please override -[%@ %@]", v5, v6}];

  return 0;
}

- (Class)mapperClassForIndexing:(BOOL)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:374 description:{@"Please override -[%@ %@]", v6, v7}];

  return 0;
}

- (Class)readerClassForXMLDocuments
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:380 description:{@"Please override -[%@ %@]", v5, v6}];

  return 0;
}

- (Class)readerClassForBinaryDocuments
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:386 description:{@"Please override -[%@ %@]", v5, v6}];

  return 0;
}

- (void)setupMappingStateWithDocument:(id)a3
{
  v8 = a3;
  if (self->_forIndexing)
  {
    v4 = objc_alloc_init(CMIndexingState);
  }

  else
  {
    v4 = objc_alloc_init([(QLTop *)self stateClass]);
  }

  state = self->_state;
  self->_state = &v4->super;

  [(CMState *)self->_state setIsOnPhone:[(CMArchiveManager *)self->_archiver isOnPhone]];
  [(CMState *)self->_state setSourceFormat:self->_format];
  [(CMState *)self->_state setIsThumbnail:[(CMArchiveManager *)self->_archiver isThumbnail]];
  [(CMState *)self->_state setDocument:v8];
  v6 = [objc_alloc(-[QLTop mapperClassForIndexing:](self mapperClassForIndexing:{self->_forIndexing)), "initWithDocument:archiver:", v8, self->_archiver}];
  mapper = self->_mapper;
  self->_mapper = v6;

  [(CMMapper *)self->_mapper setFileName:self->_fileName];
}

- (void)readFile:(id)a3 orData:(id)a4 dataFileName:(id)a5 format:(unint64_t)a6 archiver:(id)a7 forIndexing:(BOOL)a8
{
  v21 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  objc_storeStrong(&self->_archiver, a7);
  self->_format = a6;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [v21 lastPathComponent];
  }

  fileName = self->_fileName;
  self->_fileName = v17;

  self->_forIndexing = a8;
  v19 = [(QLTop *)self documentWithFile:v21 orData:v14 isXML:(a6 & 0xFFFFFFFFFFFFFFF9) == 0 archiver:v16];
  document = self->_document;
  self->_document = v19;

  if (([objc_opt_class() supportsProgressiveMapping] & 1) == 0)
  {
    [(QLTop *)self setupMappingStateWithDocument:self->_document];
    [(CMMapper *)self->_mapper mapWithState:self->_state];
  }
}

+ (void)fillHTMLArchiveForOfficeFile:(id)a3 orData:(id)a4 dataFileName:(id)a5 dataFormat:(unint64_t)a6 archiver:(id)a7
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = objc_alloc_init(a1);
  v16 = objc_autoreleasePoolPush();
  [v15 readFile:v17 orData:v12 dataFileName:v13 format:a6 archiver:v14 forIndexing:0];
  objc_autoreleasePoolPop(v16);
}

+ (void)fillHTMLArchiveForOfficeFile:(id)a3 dataFormat:(unint64_t)a4 archiver:(id)a5
{
  v9 = a3;
  v7 = a5;
  v8 = classForFormat(a4);
  if (v8)
  {
    [v8 fillHTMLArchiveForOfficeFile:v9 orData:0 dataFileName:0 dataFormat:a4 archiver:v7];
  }

  else
  {
    [(QLTop *)WMTop fillHTMLArchiveForOfficeFile:v9 orData:0 dataFileName:0 dataFormat:a4 archiver:v7];
  }
}

+ (id)metadataForBinaryOfficeFileAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 path];
  v8 = [CMFileManager getFileTypeFromPath:v7];

  if ((v8 & 0xFFFFFFFFFFFFFFF9) == 0)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"QLTop.mm" lineNumber:492 description:{@"XML file import is implemented in OISpotlightImporter, not in QLTop"}];
  }

  v9 = classForFormat(v8);
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [v6 pathExtension];
    [v16 handleFailureInMethod:a2 object:a1 file:@"QLTop.mm" lineNumber:495 description:{@"Missing importer class for file type %@", v17}];
  }

  v10 = objc_alloc_init(v9);
  v11 = objc_autoreleasePoolPush();
  v12 = [v6 path];
  [v10 readFile:v12 orData:0 dataFileName:0 format:v8 archiver:0 forIndexing:1];

  objc_autoreleasePoolPop(v11);
  v13 = [v10[2] metadata];

  return v13;
}

+ (id)searchableAttributesForBinaryOfficeFileAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 path];
  v8 = [CMFileManager getFileTypeFromPath:v7];

  if ((v8 & 0xFFFFFFFFFFFFFFF9) == 0)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"QLTop.mm" lineNumber:522 description:{@"XML file import is implemented in OISpotlightImporter, not in QLTop"}];
  }

  v9 = classForFormat(v8);
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [v6 pathExtension];
    [v16 handleFailureInMethod:a2 object:a1 file:@"QLTop.mm" lineNumber:525 description:{@"Missing importer class for file type %@", v17}];
  }

  v10 = objc_alloc_init(v9);
  v11 = objc_autoreleasePoolPush();
  v12 = [v6 path];
  [v10 readFile:v12 orData:0 dataFileName:0 format:v8 archiver:0 forIndexing:1];

  objc_autoreleasePoolPop(v11);
  v13 = [v10[2] searchableAttributes];

  return v13;
}

+ (void)fillHTMLArchiveForOfficeData:(id)a3 fileName:(id)a4 dataFormat:(unint64_t)a5 archiver:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a6;
  v11 = classForFormat(a5);
  if (v11)
  {
    [v11 fillHTMLArchiveForOfficeFile:0 orData:v12 dataFileName:v9 dataFormat:a5 archiver:v10];
  }

  else
  {
    [(QLTop *)WMTop fillHTMLArchiveForOfficeFile:0 orData:v12 dataFileName:v9 dataFormat:a5 archiver:v10];
  }
}

- (id)documentWithFile:(id)a3 orData:(id)a4 isXML:(BOOL)a5 archiver:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  [(QLTop *)self initializeClasses];
  if (v7)
  {
    v14 = [(QLTop *)self readerClassForXMLDocuments];
  }

  else
  {
    v14 = [(QLTop *)self readerClassForBinaryDocuments];
  }

  v15 = v14;
  if (([(objc_class *)v14 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:580 description:@"reader class should be an OCDEncryptedReader"];
  }

  v16 = [[v15 alloc] initWithCancelDelegate:v13];
  [v16 setIsThumbnail:{objc_msgSend(v13, "isThumbnail")}];
  if (v12)
  {
    [v16 setData:v12];
  }

  else if (v11)
  {
    [v16 setFileName:v11];
  }

  else
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:593 description:@"No file Data or file path"];
  }

  [v16 setDelegate:self];
  if (![v16 start])
  {
    v23 = 0;
    goto LABEL_27;
  }

  v27 = 8011;
  if (![v16 retainDecryptorWithErrorCode:&v27])
  {
    if (v27 == 8011)
    {
      goto LABEL_26;
    }

    if (v27 != 8003)
    {
      if (v27 != 8001)
      {
        NSLog(@"Unkown error when reading the document (%d)", v27);
        v24 = [MEMORY[0x277CBEAD8] exceptionWithName:@"kCMTopExceptionDocumentIsUnsupported" reason:0 userInfo:0];
        [v24 raise];
        goto LABEL_25;
      }

      if (![v16 isBinaryReader])
      {
        goto LABEL_26;
      }
    }

    NSLog(@"Unsupported encryption method");
    v24 = [MEMORY[0x277CBEAD8] exceptionWithName:@"kCMTopExceptionDocumentIsUnsupported" reason:0 userInfo:0];
    [v24 raise];
LABEL_25:

    goto LABEL_26;
  }

  v18 = [v16 decryptor];
  v19 = [v18 isReadProtectedUsingDefaultPassphrase];

  if ((v19 & 1) == 0)
  {
    v20 = [v13 passphrase];
    if (!v20 || ([v16 decryptor], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "verifyPassphrase:", v20), v21, v20, (v22 & 1) == 0))
    {

      v24 = [MEMORY[0x277CBEAD8] exceptionWithName:kCMTopExceptionDocumentIsEncrypted reason:0 userInfo:0];
      [v24 raise];
      v16 = 0;
      goto LABEL_25;
    }
  }

  NSLog(@"The document was encrypted, but we decrypted it");
LABEL_26:
  v23 = [v16 read];
LABEL_27:

  return v23;
}

- (void)readerDidStartDocument:(id)a3 withElementCount:(int64_t)a4
{
  v6 = a3;
  [(CMArchiveManager *)self->_archiver setPageCount:a4];
  [(QLTop *)self setupMappingStateWithDocument:v6];
  [(CMMapper *)self->_mapper startMappingWithState:self->_state];
}

- (void)readerDidEndDocument:(id)a3
{
  [(CMMapper *)self->_mapper finishMappingWithState:self->_state];
  mapper = self->_mapper;
  self->_mapper = 0;

  document = self->_document;
  self->_document = 0;
}

@end