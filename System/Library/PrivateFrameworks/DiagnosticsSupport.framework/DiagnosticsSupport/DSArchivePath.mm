@interface DSArchivePath
- (DSArchivePath)initWithSource:(id)source prefix:(id)prefix root:(BOOL)root;
@end

@implementation DSArchivePath

- (DSArchivePath)initWithSource:(id)source prefix:(id)prefix root:(BOOL)root
{
  sourceCopy = source;
  prefixCopy = prefix;
  v14.receiver = self;
  v14.super_class = DSArchivePath;
  v11 = [(DSArchivePath *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceUrl, source);
    objc_storeStrong(&v12->_prefix, prefix);
    v12->_root = root;
  }

  return v12;
}

@end