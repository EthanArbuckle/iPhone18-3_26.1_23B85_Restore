@interface NSSUsageApp
- (NSSUsageApp)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSUsageApp

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
  [v5 encodeInt64:self->_staticSize forKey:@"staticSize"];
  [v5 encodeInt64:self->_dynamicSize forKey:@"dynamicSize"];
  [v5 encodeInt64:self->_sharedSize forKey:@"sharedSize"];
}

- (NSSUsageApp)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NSSUsageApp;
  v5 = [(NSSUsageApp *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v10;

    v5->_staticSize = [v4 decodeInt64ForKey:@"staticSize"];
    v5->_dynamicSize = [v4 decodeInt64ForKey:@"dynamicSize"];
    v5->_sharedSize = [v4 decodeInt64ForKey:@"sharedSize"];
  }

  return v5;
}

@end