@interface NSSUsageBundleCategory
- (NSSUsageBundleCategory)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSUsageBundleCategory

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeInt64:self->_size forKey:@"size"];
}

- (NSSUsageBundleCategory)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NSSUsageBundleCategory;
  v5 = [(NSSUsageBundleCategory *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_size = [v4 decodeInt64ForKey:@"size"];
  }

  return v5;
}

@end