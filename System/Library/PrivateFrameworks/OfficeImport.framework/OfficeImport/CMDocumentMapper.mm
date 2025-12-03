@interface CMDocumentMapper
- (CMDocumentMapper)initWithDocument:(id)document archiver:(id)archiver;
- (void)dealloc;
@end

@implementation CMDocumentMapper

- (CMDocumentMapper)initWithDocument:(id)document archiver:(id)archiver
{
  documentCopy = document;
  archiverCopy = archiver;
  v11.receiver = self;
  v11.super_class = CMDocumentMapper;
  v9 = [(CMMapper *)&v11 initWithParent:0];
  if (v9)
  {
    +[CMGlobalCache initGlobalCache];
    objc_storeStrong(&v9->super._document, document);
    objc_storeStrong(&v9->super.mArchiver, archiver);
  }

  return v9;
}

- (void)dealloc
{
  +[CMGlobalCache releaseGlobalCache];
  v3.receiver = self;
  v3.super_class = CMDocumentMapper;
  [(CMDocumentMapper *)&v3 dealloc];
}

@end