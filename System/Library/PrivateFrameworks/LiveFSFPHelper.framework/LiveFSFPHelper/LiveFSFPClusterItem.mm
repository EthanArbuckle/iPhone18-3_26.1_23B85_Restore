@interface LiveFSFPClusterItem
+ (id)newWithName:(id)name extension:(id)extension;
- (LiveFSFPClusterItem)initWithName:(id)name extension:(id)extension;
- (NSString)fp_parentDomainIdentifier;
@end

@implementation LiveFSFPClusterItem

- (LiveFSFPClusterItem)initWithName:(id)name extension:(id)extension
{
  nameCopy = name;
  extensionCopy = extension;
  v16.receiver = self;
  v16.super_class = LiveFSFPClusterItem;
  v9 = [(LiveFSFPClusterItem *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extension, extension);
    objc_storeStrong(&v10->_filename, name);
    domain = [(NSFileProviderExtension *)v10->_extension domain];
    identifier = [domain identifier];
    v13 = [identifier stringByAppendingString:nameCopy];
    fp_domainIdentifier = v10->_fp_domainIdentifier;
    v10->_fp_domainIdentifier = v13;
  }

  return v10;
}

+ (id)newWithName:(id)name extension:(id)extension
{
  extensionCopy = extension;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy extension:extensionCopy];

  return v8;
}

- (NSString)fp_parentDomainIdentifier
{
  domain = [(NSFileProviderExtension *)self->_extension domain];
  identifier = [domain identifier];

  return identifier;
}

@end