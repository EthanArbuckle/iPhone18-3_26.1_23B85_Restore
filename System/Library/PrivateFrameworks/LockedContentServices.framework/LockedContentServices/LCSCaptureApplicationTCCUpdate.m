@interface LCSCaptureApplicationTCCUpdate
- (LCSCaptureApplicationTCCUpdate)initWithBundleIdentifier:(id)a3 status:(unint64_t)a4;
@end

@implementation LCSCaptureApplicationTCCUpdate

- (LCSCaptureApplicationTCCUpdate)initWithBundleIdentifier:(id)a3 status:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = LCSCaptureApplicationTCCUpdate;
  v7 = [(LCSCaptureApplicationTCCUpdate *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    v7->_tccStatus = a4;
  }

  return v7;
}

@end