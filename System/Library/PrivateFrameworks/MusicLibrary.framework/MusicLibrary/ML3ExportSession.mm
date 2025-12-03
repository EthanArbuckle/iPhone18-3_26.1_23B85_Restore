@interface ML3ExportSession
- (ML3ExportSession)initWithLibrary:(id)library outputStream:(id)stream;
@end

@implementation ML3ExportSession

- (ML3ExportSession)initWithLibrary:(id)library outputStream:(id)stream
{
  libraryCopy = library;
  streamCopy = stream;
  v12.receiver = self;
  v12.super_class = ML3ExportSession;
  v9 = [(ML3ExportSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_outputStream, stream);
    objc_storeStrong(&v10->_library, library);
  }

  return v10;
}

@end