@interface NSSUsageApp
- (NSSUsageApp)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSUsageApp

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
  [coderCopy encodeInt64:self->_staticSize forKey:@"staticSize"];
  [coderCopy encodeInt64:self->_dynamicSize forKey:@"dynamicSize"];
  [coderCopy encodeInt64:self->_sharedSize forKey:@"sharedSize"];
}

- (NSSUsageApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NSSUsageApp;
  v5 = [(NSSUsageApp *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v10;

    v5->_staticSize = [coderCopy decodeInt64ForKey:@"staticSize"];
    v5->_dynamicSize = [coderCopy decodeInt64ForKey:@"dynamicSize"];
    v5->_sharedSize = [coderCopy decodeInt64ForKey:@"sharedSize"];
  }

  return v5;
}

@end