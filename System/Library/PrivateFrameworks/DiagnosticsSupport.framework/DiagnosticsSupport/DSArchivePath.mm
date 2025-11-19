@interface DSArchivePath
- (DSArchivePath)initWithSource:(id)a3 prefix:(id)a4 root:(BOOL)a5;
@end

@implementation DSArchivePath

- (DSArchivePath)initWithSource:(id)a3 prefix:(id)a4 root:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = DSArchivePath;
  v11 = [(DSArchivePath *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceUrl, a3);
    objc_storeStrong(&v12->_prefix, a4);
    v12->_root = a5;
  }

  return v12;
}

@end