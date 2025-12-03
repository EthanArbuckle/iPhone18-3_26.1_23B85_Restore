@interface IXOwnedDataPromiseSeed
+ (id)_locationClassCluster;
- (IXOwnedDataPromiseSeed)init;
- (IXOwnedDataPromiseSeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXOwnedDataPromiseSeed

- (IXOwnedDataPromiseSeed)init
{
  v6.receiver = self;
  v6.super_class = IXOwnedDataPromiseSeed;
  v2 = [(IXOwnedDataPromiseSeed *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    location = v2->_location;
    v2->_location = v3;
  }

  return v2;
}

+ (id)_locationClassCluster
{
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v5 count:3];
  v3 = [NSSet setWithArray:v2, v5, v6];

  return v3;
}

- (IXOwnedDataPromiseSeed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = IXOwnedDataPromiseSeed;
  v5 = [(IXDataPromiseSeed *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingBaseDir"];
    stagingBaseDir = v5->_stagingBaseDir;
    v5->_stagingBaseDir = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtensionToken"];
    sandboxExtensionToken = v5->_sandboxExtensionToken;
    v5->_sandboxExtensionToken = v8;

    v10 = +[IXOwnedDataPromiseSeed _locationClassCluster];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"location"];
    location = v5->_location;
    v5->_location = v11;

    if (!v5->_location)
    {
      v13 = objc_alloc_init(MILocationSystemDefinedCommon);
      v14 = v5->_location;
      v5->_location = v13;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = IXOwnedDataPromiseSeed;
  coderCopy = coder;
  [(IXDataPromiseSeed *)&v8 encodeWithCoder:coderCopy];
  v5 = [(IXOwnedDataPromiseSeed *)self stagingBaseDir:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"stagingBaseDir"];

  sandboxExtensionToken = [(IXOwnedDataPromiseSeed *)self sandboxExtensionToken];
  [coderCopy encodeObject:sandboxExtensionToken forKey:@"sandboxExtensionToken"];

  location = [(IXOwnedDataPromiseSeed *)self location];
  [coderCopy encodeObject:location forKey:@"location"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = IXOwnedDataPromiseSeed;
  v4 = [(IXDataPromiseSeed *)&v9 copyWithZone:zone];
  stagingBaseDir = [(IXOwnedDataPromiseSeed *)self stagingBaseDir];
  [v4 setStagingBaseDir:stagingBaseDir];

  sandboxExtensionToken = [(IXOwnedDataPromiseSeed *)self sandboxExtensionToken];
  [v4 setSandboxExtensionToken:sandboxExtensionToken];

  location = [(IXOwnedDataPromiseSeed *)self location];
  [v4 setLocation:location];

  return v4;
}

@end