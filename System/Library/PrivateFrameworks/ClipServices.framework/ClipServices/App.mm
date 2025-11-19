@interface App
- (App)initWithBundleID:(id)a3;
@end

@implementation App

- (App)initWithBundleID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = App;
  v5 = [(App *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = v5;
  }

  return v5;
}

@end