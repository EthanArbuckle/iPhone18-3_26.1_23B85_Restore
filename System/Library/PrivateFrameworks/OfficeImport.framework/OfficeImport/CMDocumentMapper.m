@interface CMDocumentMapper
- (CMDocumentMapper)initWithDocument:(id)a3 archiver:(id)a4;
- (void)dealloc;
@end

@implementation CMDocumentMapper

- (CMDocumentMapper)initWithDocument:(id)a3 archiver:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = CMDocumentMapper;
  v9 = [(CMMapper *)&v11 initWithParent:0];
  if (v9)
  {
    +[CMGlobalCache initGlobalCache];
    objc_storeStrong(&v9->super._document, a3);
    objc_storeStrong(&v9->super.mArchiver, a4);
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