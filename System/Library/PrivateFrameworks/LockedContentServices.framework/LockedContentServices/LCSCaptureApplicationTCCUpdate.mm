@interface LCSCaptureApplicationTCCUpdate
- (LCSCaptureApplicationTCCUpdate)initWithBundleIdentifier:(id)identifier status:(unint64_t)status;
@end

@implementation LCSCaptureApplicationTCCUpdate

- (LCSCaptureApplicationTCCUpdate)initWithBundleIdentifier:(id)identifier status:(unint64_t)status
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = LCSCaptureApplicationTCCUpdate;
  v7 = [(LCSCaptureApplicationTCCUpdate *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    v7->_tccStatus = status;
  }

  return v7;
}

@end