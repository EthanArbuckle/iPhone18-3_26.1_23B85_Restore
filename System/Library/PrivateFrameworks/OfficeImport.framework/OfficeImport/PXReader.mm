@interface PXReader
- (id)read;
@end

@implementation PXReader

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
  v6 = [(OCDReader *)self fileName];
  v7 = [(OCDReader *)self cancelDelegate];
  v8 = [(OCDReader *)self isThumbnail];
  v9 = [(OCDReader *)self delegate];
  v13 = [PXPresentation readFromPackage:v5 fileName:v6 reader:self cancel:v7 isThumbnail:v8 delegate:v9];

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