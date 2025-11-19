@interface LiveFSFPClusterItem
+ (id)newWithName:(id)a3 extension:(id)a4;
- (LiveFSFPClusterItem)initWithName:(id)a3 extension:(id)a4;
- (NSString)fp_parentDomainIdentifier;
@end

@implementation LiveFSFPClusterItem

- (LiveFSFPClusterItem)initWithName:(id)a3 extension:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = LiveFSFPClusterItem;
  v9 = [(LiveFSFPClusterItem *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extension, a4);
    objc_storeStrong(&v10->_filename, a3);
    v11 = [(NSFileProviderExtension *)v10->_extension domain];
    v12 = [v11 identifier];
    v13 = [v12 stringByAppendingString:v7];
    fp_domainIdentifier = v10->_fp_domainIdentifier;
    v10->_fp_domainIdentifier = v13;
  }

  return v10;
}

+ (id)newWithName:(id)a3 extension:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 extension:v6];

  return v8;
}

- (NSString)fp_parentDomainIdentifier
{
  v2 = [(NSFileProviderExtension *)self->_extension domain];
  v3 = [v2 identifier];

  return v3;
}

@end