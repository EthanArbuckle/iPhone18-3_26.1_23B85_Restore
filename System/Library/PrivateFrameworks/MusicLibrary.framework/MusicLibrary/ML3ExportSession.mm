@interface ML3ExportSession
- (ML3ExportSession)initWithLibrary:(id)a3 outputStream:(id)a4;
@end

@implementation ML3ExportSession

- (ML3ExportSession)initWithLibrary:(id)a3 outputStream:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ML3ExportSession;
  v9 = [(ML3ExportSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_outputStream, a4);
    objc_storeStrong(&v10->_library, a3);
  }

  return v10;
}

@end