@interface ISIconTypeResourceLocator
- (ISIconTypeResourceLocator)initWithCoder:(id)coder;
- (ISIconTypeResourceLocator)initWithType:(id)type;
- (id)bundleIdentifier;
- (id)preferedResourceName;
- (id)resourceDirectoryURL;
@end

@implementation ISIconTypeResourceLocator

- (ISIconTypeResourceLocator)initWithType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = ISIconTypeResourceLocator;
  v6 = [(ISIconTypeResourceLocator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_type, type);
  }

  return v7;
}

- (ISIconTypeResourceLocator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ISIconTypeResourceLocator;
  v5 = [(ISIconTypeResourceLocator *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
    type = v5->_type;
    v5->_type = v6;
  }

  return v5;
}

- (id)resourceDirectoryURL
{
  v2 = UTTypeCopyDeclaringBundleURL(self->_type);

  return v2;
}

- (id)bundleIdentifier
{
  v2 = UTTypeCopyDeclaringBundleURL(self->_type);
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v4 = Unique;
    v5 = CFBundleGetIdentifier(Unique);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)preferedResourceName
{
  type = self->_type;
  v3 = _UTTypeCopyIconName();

  return v3;
}

@end