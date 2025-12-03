@interface QLTop
+ (id)metadataForBinaryOfficeFileAtURL:(id)l error:(id *)error;
+ (id)searchableAttributesForBinaryOfficeFileAtURL:(id)l error:(id *)error;
+ (void)fillHTMLArchiveForOfficeData:(id)data fileName:(id)name dataFormat:(unint64_t)format archiver:(id)archiver;
+ (void)fillHTMLArchiveForOfficeFile:(id)file dataFormat:(unint64_t)format archiver:(id)archiver;
+ (void)fillHTMLArchiveForOfficeFile:(id)file orData:(id)data dataFileName:(id)name dataFormat:(unint64_t)format archiver:(id)archiver;
- (Class)mapperClassForIndexing:(BOOL)indexing;
- (Class)readerClassForBinaryDocuments;
- (Class)readerClassForXMLDocuments;
- (Class)stateClass;
- (id)documentWithFile:(id)file orData:(id)data isXML:(BOOL)l archiver:(id)archiver;
- (void)initializeClasses;
- (void)readFile:(id)file orData:(id)data dataFileName:(id)name format:(unint64_t)format archiver:(id)archiver forIndexing:(BOOL)indexing;
- (void)readerDidEndDocument:(id)document;
- (void)readerDidStartDocument:(id)document withElementCount:(int64_t)count;
- (void)setupMappingStateWithDocument:(id)document;
@end

@implementation QLTop

- (void)initializeClasses
{
  objc_opt_class();

  objc_opt_class();
}

- (Class)stateClass
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:368 description:{@"Please override -[%@ %@]", v5, v6}];

  return 0;
}

- (Class)mapperClassForIndexing:(BOOL)indexing
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:374 description:{@"Please override -[%@ %@]", v6, v7}];

  return 0;
}

- (Class)readerClassForXMLDocuments
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:380 description:{@"Please override -[%@ %@]", v5, v6}];

  return 0;
}

- (Class)readerClassForBinaryDocuments
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:386 description:{@"Please override -[%@ %@]", v5, v6}];

  return 0;
}

- (void)setupMappingStateWithDocument:(id)document
{
  documentCopy = document;
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
  [(CMState *)self->_state setDocument:documentCopy];
  v6 = [objc_alloc(-[QLTop mapperClassForIndexing:](self mapperClassForIndexing:{self->_forIndexing)), "initWithDocument:archiver:", documentCopy, self->_archiver}];
  mapper = self->_mapper;
  self->_mapper = v6;

  [(CMMapper *)self->_mapper setFileName:self->_fileName];
}

- (void)readFile:(id)file orData:(id)data dataFileName:(id)name format:(unint64_t)format archiver:(id)archiver forIndexing:(BOOL)indexing
{
  fileCopy = file;
  dataCopy = data;
  nameCopy = name;
  archiverCopy = archiver;
  objc_storeStrong(&self->_archiver, archiver);
  self->_format = format;
  if (nameCopy)
  {
    lastPathComponent = nameCopy;
  }

  else
  {
    lastPathComponent = [fileCopy lastPathComponent];
  }

  fileName = self->_fileName;
  self->_fileName = lastPathComponent;

  self->_forIndexing = indexing;
  v19 = [(QLTop *)self documentWithFile:fileCopy orData:dataCopy isXML:(format & 0xFFFFFFFFFFFFFFF9) == 0 archiver:archiverCopy];
  document = self->_document;
  self->_document = v19;

  if (([objc_opt_class() supportsProgressiveMapping] & 1) == 0)
  {
    [(QLTop *)self setupMappingStateWithDocument:self->_document];
    [(CMMapper *)self->_mapper mapWithState:self->_state];
  }
}

+ (void)fillHTMLArchiveForOfficeFile:(id)file orData:(id)data dataFileName:(id)name dataFormat:(unint64_t)format archiver:(id)archiver
{
  fileCopy = file;
  dataCopy = data;
  nameCopy = name;
  archiverCopy = archiver;
  v15 = objc_alloc_init(self);
  v16 = objc_autoreleasePoolPush();
  [v15 readFile:fileCopy orData:dataCopy dataFileName:nameCopy format:format archiver:archiverCopy forIndexing:0];
  objc_autoreleasePoolPop(v16);
}

+ (void)fillHTMLArchiveForOfficeFile:(id)file dataFormat:(unint64_t)format archiver:(id)archiver
{
  fileCopy = file;
  archiverCopy = archiver;
  v8 = classForFormat(format);
  if (v8)
  {
    [v8 fillHTMLArchiveForOfficeFile:fileCopy orData:0 dataFileName:0 dataFormat:format archiver:archiverCopy];
  }

  else
  {
    [(QLTop *)WMTop fillHTMLArchiveForOfficeFile:fileCopy orData:0 dataFileName:0 dataFormat:format archiver:archiverCopy];
  }
}

+ (id)metadataForBinaryOfficeFileAtURL:(id)l error:(id *)error
{
  lCopy = l;
  path = [lCopy path];
  v8 = [CMFileManager getFileTypeFromPath:path];

  if ((v8 & 0xFFFFFFFFFFFFFFF9) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:492 description:{@"XML file import is implemented in OISpotlightImporter, not in QLTop"}];
  }

  v9 = classForFormat(v8);
  if (!v9)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    pathExtension = [lCopy pathExtension];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:495 description:{@"Missing importer class for file type %@", pathExtension}];
  }

  v10 = objc_alloc_init(v9);
  v11 = objc_autoreleasePoolPush();
  path2 = [lCopy path];
  [v10 readFile:path2 orData:0 dataFileName:0 format:v8 archiver:0 forIndexing:1];

  objc_autoreleasePoolPop(v11);
  metadata = [v10[2] metadata];

  return metadata;
}

+ (id)searchableAttributesForBinaryOfficeFileAtURL:(id)l error:(id *)error
{
  lCopy = l;
  path = [lCopy path];
  v8 = [CMFileManager getFileTypeFromPath:path];

  if ((v8 & 0xFFFFFFFFFFFFFFF9) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:522 description:{@"XML file import is implemented in OISpotlightImporter, not in QLTop"}];
  }

  v9 = classForFormat(v8);
  if (!v9)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    pathExtension = [lCopy pathExtension];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:525 description:{@"Missing importer class for file type %@", pathExtension}];
  }

  v10 = objc_alloc_init(v9);
  v11 = objc_autoreleasePoolPush();
  path2 = [lCopy path];
  [v10 readFile:path2 orData:0 dataFileName:0 format:v8 archiver:0 forIndexing:1];

  objc_autoreleasePoolPop(v11);
  searchableAttributes = [v10[2] searchableAttributes];

  return searchableAttributes;
}

+ (void)fillHTMLArchiveForOfficeData:(id)data fileName:(id)name dataFormat:(unint64_t)format archiver:(id)archiver
{
  dataCopy = data;
  nameCopy = name;
  archiverCopy = archiver;
  v11 = classForFormat(format);
  if (v11)
  {
    [v11 fillHTMLArchiveForOfficeFile:0 orData:dataCopy dataFileName:nameCopy dataFormat:format archiver:archiverCopy];
  }

  else
  {
    [(QLTop *)WMTop fillHTMLArchiveForOfficeFile:0 orData:dataCopy dataFileName:nameCopy dataFormat:format archiver:archiverCopy];
  }
}

- (id)documentWithFile:(id)file orData:(id)data isXML:(BOOL)l archiver:(id)archiver
{
  lCopy = l;
  fileCopy = file;
  dataCopy = data;
  archiverCopy = archiver;
  [(QLTop *)self initializeClasses];
  if (lCopy)
  {
    readerClassForXMLDocuments = [(QLTop *)self readerClassForXMLDocuments];
  }

  else
  {
    readerClassForXMLDocuments = [(QLTop *)self readerClassForBinaryDocuments];
  }

  v15 = readerClassForXMLDocuments;
  if (([(objc_class *)readerClassForXMLDocuments isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:580 description:@"reader class should be an OCDEncryptedReader"];
  }

  v16 = [[v15 alloc] initWithCancelDelegate:archiverCopy];
  [v16 setIsThumbnail:{objc_msgSend(archiverCopy, "isThumbnail")}];
  if (dataCopy)
  {
    [v16 setData:dataCopy];
  }

  else if (fileCopy)
  {
    [v16 setFileName:fileCopy];
  }

  else
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"QLTop.mm" lineNumber:593 description:@"No file Data or file path"];
  }

  [v16 setDelegate:self];
  if (![v16 start])
  {
    read = 0;
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

  decryptor = [v16 decryptor];
  isReadProtectedUsingDefaultPassphrase = [decryptor isReadProtectedUsingDefaultPassphrase];

  if ((isReadProtectedUsingDefaultPassphrase & 1) == 0)
  {
    passphrase = [archiverCopy passphrase];
    if (!passphrase || ([v16 decryptor], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "verifyPassphrase:", passphrase), v21, passphrase, (v22 & 1) == 0))
    {

      v24 = [MEMORY[0x277CBEAD8] exceptionWithName:kCMTopExceptionDocumentIsEncrypted reason:0 userInfo:0];
      [v24 raise];
      v16 = 0;
      goto LABEL_25;
    }
  }

  NSLog(@"The document was encrypted, but we decrypted it");
LABEL_26:
  read = [v16 read];
LABEL_27:

  return read;
}

- (void)readerDidStartDocument:(id)document withElementCount:(int64_t)count
{
  documentCopy = document;
  [(CMArchiveManager *)self->_archiver setPageCount:count];
  [(QLTop *)self setupMappingStateWithDocument:documentCopy];
  [(CMMapper *)self->_mapper startMappingWithState:self->_state];
}

- (void)readerDidEndDocument:(id)document
{
  [(CMMapper *)self->_mapper finishMappingWithState:self->_state];
  mapper = self->_mapper;
  self->_mapper = 0;

  document = self->_document;
  self->_document = 0;
}

@end