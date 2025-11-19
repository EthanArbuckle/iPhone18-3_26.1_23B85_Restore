@interface ISIconCacheConfiguration
- (ISIconCacheConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISIconCacheConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_url forKey:@"url"];
  [v4 encodeObject:self->_sandboxExtension forKey:@"sandboxExtension"];
  [v4 encodeObject:self->_salt forKey:@"salt"];
}

- (ISIconCacheConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ISIconCacheConfiguration *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtension"];
    sandboxExtension = v5->_sandboxExtension;
    v5->_sandboxExtension = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"salt"];
    salt = v5->_salt;
    v5->_salt = v10;
  }

  return v5;
}

@end