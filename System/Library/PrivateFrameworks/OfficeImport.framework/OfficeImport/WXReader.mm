@interface WXReader
- (id)read;
@end

@implementation WXReader

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
  cancelDelegate = [(OCDReader *)self cancelDelegate];
  v10 = [WXDocument documentFrom:zipPackage2 reader:self cancel:cancelDelegate asThumbnail:[(OCDReader *)self isThumbnail]];

  objc_autoreleasePoolPop(v3);
  v7 = v9;
  if (v9)
  {
    [v9 raise];
    v7 = v9;
  }

  return v10;
}

@end