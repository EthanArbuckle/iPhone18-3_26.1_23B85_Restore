@interface IXOwnedDataPromiseSeed
+ (id)_locationClassCluster;
- (IXOwnedDataPromiseSeed)init;
- (IXOwnedDataPromiseSeed)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (IXOwnedDataPromiseSeed)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IXOwnedDataPromiseSeed;
  v5 = [(IXDataPromiseSeed *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingBaseDir"];
    stagingBaseDir = v5->_stagingBaseDir;
    v5->_stagingBaseDir = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtensionToken"];
    sandboxExtensionToken = v5->_sandboxExtensionToken;
    v5->_sandboxExtensionToken = v8;

    v10 = +[IXOwnedDataPromiseSeed _locationClassCluster];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"location"];
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

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = IXOwnedDataPromiseSeed;
  v4 = a3;
  [(IXDataPromiseSeed *)&v8 encodeWithCoder:v4];
  v5 = [(IXOwnedDataPromiseSeed *)self stagingBaseDir:v8.receiver];
  [v4 encodeObject:v5 forKey:@"stagingBaseDir"];

  v6 = [(IXOwnedDataPromiseSeed *)self sandboxExtensionToken];
  [v4 encodeObject:v6 forKey:@"sandboxExtensionToken"];

  v7 = [(IXOwnedDataPromiseSeed *)self location];
  [v4 encodeObject:v7 forKey:@"location"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = IXOwnedDataPromiseSeed;
  v4 = [(IXDataPromiseSeed *)&v9 copyWithZone:a3];
  v5 = [(IXOwnedDataPromiseSeed *)self stagingBaseDir];
  [v4 setStagingBaseDir:v5];

  v6 = [(IXOwnedDataPromiseSeed *)self sandboxExtensionToken];
  [v4 setSandboxExtensionToken:v6];

  v7 = [(IXOwnedDataPromiseSeed *)self location];
  [v4 setLocation:v7];

  return v4;
}

@end