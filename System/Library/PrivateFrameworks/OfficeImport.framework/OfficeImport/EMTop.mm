@interface EMTop
- (Class)mapperClassForIndexing:(BOOL)indexing;
- (void)initializeClasses;
- (void)readFile:(id)file orData:(id)data dataFileName:(id)name format:(unint64_t)format archiver:(id)archiver forIndexing:(BOOL)indexing;
- (void)readerDidStartDocument:(id)document withElementCount:(int64_t)count;
@end

@implementation EMTop

- (Class)mapperClassForIndexing:(BOOL)indexing
{
  v3 = objc_opt_class();

  return v3;
}

- (void)initializeClasses
{
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  v3.receiver = self;
  v3.super_class = EMTop;
  [(QLTop *)&v3 initializeClasses];
}

- (void)readFile:(id)file orData:(id)data dataFileName:(id)name format:(unint64_t)format archiver:(id)archiver forIndexing:(BOOL)indexing
{
  indexingCopy = indexing;
  fileCopy = file;
  dataCopy = data;
  nameCopy = name;
  archiverCopy = archiver;
  [archiverCopy setAutoCommit:0];
  v18.receiver = self;
  v18.super_class = EMTop;
  [(QLTop *)&v18 readFile:fileCopy orData:dataCopy dataFileName:nameCopy format:format archiver:archiverCopy forIndexing:indexingCopy];
}

- (void)readerDidStartDocument:(id)document withElementCount:(int64_t)count
{
  documentCopy = document;
  v8.receiver = self;
  v8.super_class = EMTop;
  [(QLTop *)&v8 readerDidStartDocument:documentCopy withElementCount:count];
  mapper = [(QLTop *)self mapper];
  [mapper setElementCount:count];
}

@end