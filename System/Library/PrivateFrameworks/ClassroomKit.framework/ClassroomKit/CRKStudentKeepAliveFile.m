@interface CRKStudentKeepAliveFile
+ (id)fileURL;
- (BOOL)createWithError:(id *)a3;
- (BOOL)deleteWithError:(id *)a3;
- (BOOL)exists;
- (CRKStudentKeepAliveFile)init;
@end

@implementation CRKStudentKeepAliveFile

- (CRKStudentKeepAliveFile)init
{
  v8.receiver = self;
  v8.super_class = CRKStudentKeepAliveFile;
  v2 = [(CRKStudentKeepAliveFile *)&v8 init];
  if (v2)
  {
    v3 = [CRKFileBackedMarker alloc];
    v4 = [objc_opt_class() fileURL];
    v5 = [(CRKFileBackedMarker *)v3 initWithFileURL:v4];
    fileMarker = v2->_fileMarker;
    v2->_fileMarker = v5;
  }

  return v2;
}

- (BOOL)exists
{
  v2 = [(CRKStudentKeepAliveFile *)self fileMarker];
  v3 = [v2 exists];

  return v3;
}

- (BOOL)createWithError:(id *)a3
{
  v4 = [(CRKStudentKeepAliveFile *)self fileMarker];
  LOBYTE(a3) = [v4 createWithError:a3];

  return a3;
}

- (BOOL)deleteWithError:(id *)a3
{
  v4 = [(CRKStudentKeepAliveFile *)self fileMarker];
  LOBYTE(a3) = [v4 deleteWithError:a3];

  return a3;
}

+ (id)fileURL
{
  v2 = [MEMORY[0x277CCAA00] crk_nonContainerizedHomeDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"Library/studentd/isConnected"];

  return v3;
}

@end