@interface NSSUsageBundleCategory
- (NSSUsageBundleCategory)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSUsageBundleCategory

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeInt64:self->_size forKey:@"size"];
}

- (NSSUsageBundleCategory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NSSUsageBundleCategory;
  v5 = [(NSSUsageBundleCategory *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_size = [coderCopy decodeInt64ForKey:@"size"];
  }

  return v5;
}

@end