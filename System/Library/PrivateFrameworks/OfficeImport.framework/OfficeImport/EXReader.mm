@interface EXReader
- (id)read;
@end

@implementation EXReader

- (id)read
{
  v3 = objc_autoreleasePoolPush();
  [(OCDEncryptedReader *)self useUnencryptedDocument];
  zipPackage = [(OCXReader *)self zipPackage];

  if (!zipPackage)
  {
    [(OCXReader *)self verifyFileFormat];
  }

  zipPackage2 = [(OCXReader *)self zipPackage];
  mainDocumentPart = [zipPackage2 mainDocumentPart];

  if (!mainDocumentPart)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v7 = [EXReadState alloc];
  cancelDelegate = [(OCDReader *)self cancelDelegate];
  v9 = [(EXReadState *)v7 initWithWorkbookPart:mainDocumentPart cancelDelegate:cancelDelegate];

  zipPackage3 = [(OCXReader *)self zipPackage];
  fileName = [(OCDReader *)self fileName];
  temporaryDirectory = [(EXReader *)self temporaryDirectory];
  delegate = [(OCDReader *)self delegate];
  LOBYTE(v15) = [(OCDReader *)self isThumbnail];
  v16 = [EXWorkbook edWorkbookFromState:v9 package:zipPackage3 reader:self fileName:fileName temporaryDirectory:temporaryDirectory delegate:delegate forThumbnail:v15];

  objc_autoreleasePoolPop(v3);

  return v16;
}

@end