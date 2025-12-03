@interface ISIconCacheConfiguration
- (ISIconCacheConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISIconCacheConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_url forKey:@"url"];
  [coderCopy encodeObject:self->_sandboxExtension forKey:@"sandboxExtension"];
  [coderCopy encodeObject:self->_salt forKey:@"salt"];
}

- (ISIconCacheConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ISIconCacheConfiguration *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtension"];
    sandboxExtension = v5->_sandboxExtension;
    v5->_sandboxExtension = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"salt"];
    salt = v5->_salt;
    v5->_salt = v10;
  }

  return v5;
}

@end