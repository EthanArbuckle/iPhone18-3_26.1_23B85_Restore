@interface App
- (App)initWithBundleID:(id)d;
@end

@implementation App

- (App)initWithBundleID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = App;
  v5 = [(App *)&v10 init];
  if (v5)
  {
    v6 = [dCopy copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = v5;
  }

  return v5;
}

@end