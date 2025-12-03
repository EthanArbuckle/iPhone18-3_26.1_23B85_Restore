@interface CRKStudentKeepAliveFile
+ (id)fileURL;
- (BOOL)createWithError:(id *)error;
- (BOOL)deleteWithError:(id *)error;
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
    fileURL = [objc_opt_class() fileURL];
    v5 = [(CRKFileBackedMarker *)v3 initWithFileURL:fileURL];
    fileMarker = v2->_fileMarker;
    v2->_fileMarker = v5;
  }

  return v2;
}

- (BOOL)exists
{
  fileMarker = [(CRKStudentKeepAliveFile *)self fileMarker];
  exists = [fileMarker exists];

  return exists;
}

- (BOOL)createWithError:(id *)error
{
  fileMarker = [(CRKStudentKeepAliveFile *)self fileMarker];
  LOBYTE(error) = [fileMarker createWithError:error];

  return error;
}

- (BOOL)deleteWithError:(id *)error
{
  fileMarker = [(CRKStudentKeepAliveFile *)self fileMarker];
  LOBYTE(error) = [fileMarker deleteWithError:error];

  return error;
}

+ (id)fileURL
{
  crk_nonContainerizedHomeDirectoryURL = [MEMORY[0x277CCAA00] crk_nonContainerizedHomeDirectoryURL];
  v3 = [crk_nonContainerizedHomeDirectoryURL URLByAppendingPathComponent:@"Library/studentd/isConnected"];

  return v3;
}

@end