@interface PXReader
- (id)read;
@end

@implementation PXReader

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
  fileName = [(OCDReader *)self fileName];
  cancelDelegate = [(OCDReader *)self cancelDelegate];
  isThumbnail = [(OCDReader *)self isThumbnail];
  delegate = [(OCDReader *)self delegate];
  v13 = [PXPresentation readFromPackage:zipPackage2 fileName:fileName reader:self cancel:cancelDelegate isThumbnail:isThumbnail delegate:delegate];

  objc_autoreleasePoolPop(v3);
  v10 = v12;
  if (v12)
  {
    [v12 raise];
    v10 = v12;
  }

  return v13;
}

@end