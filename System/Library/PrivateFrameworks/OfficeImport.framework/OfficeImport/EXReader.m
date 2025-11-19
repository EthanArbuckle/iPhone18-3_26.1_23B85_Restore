@interface EXReader
- (id)read;
@end

@implementation EXReader

- (id)read
{
  v3 = objc_autoreleasePoolPush();
  [(OCDEncryptedReader *)self useUnencryptedDocument];
  v4 = [(OCXReader *)self zipPackage];

  if (!v4)
  {
    [(OCXReader *)self verifyFileFormat];
  }

  v5 = [(OCXReader *)self zipPackage];
  v6 = [v5 mainDocumentPart];

  if (!v6)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v7 = [EXReadState alloc];
  v8 = [(OCDReader *)self cancelDelegate];
  v9 = [(EXReadState *)v7 initWithWorkbookPart:v6 cancelDelegate:v8];

  v10 = [(OCXReader *)self zipPackage];
  v11 = [(OCDReader *)self fileName];
  v12 = [(EXReader *)self temporaryDirectory];
  v13 = [(OCDReader *)self delegate];
  LOBYTE(v15) = [(OCDReader *)self isThumbnail];
  v16 = [EXWorkbook edWorkbookFromState:v9 package:v10 reader:self fileName:v11 temporaryDirectory:v12 delegate:v13 forThumbnail:v15];

  objc_autoreleasePoolPop(v3);

  return v16;
}

@end