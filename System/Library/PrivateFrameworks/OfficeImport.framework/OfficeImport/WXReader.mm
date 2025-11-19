@interface WXReader
- (id)read;
@end

@implementation WXReader

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
  v6 = [(OCDReader *)self cancelDelegate];
  v10 = [WXDocument documentFrom:v5 reader:self cancel:v6 asThumbnail:[(OCDReader *)self isThumbnail]];

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