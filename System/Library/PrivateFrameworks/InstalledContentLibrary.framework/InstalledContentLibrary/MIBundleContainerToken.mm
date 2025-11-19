@interface MIBundleContainerToken
- (MIBundleContainerToken)initWithCoder:(id)a3;
- (MIBundleContainerToken)initWithContainer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIBundleContainerToken

- (MIBundleContainerToken)initWithContainer:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MIBundleContainerToken;
  v5 = [(MIContainerToken *)&v12 initWithContainer:v4];
  if (v5)
  {
    v6 = [v4 rawContainer];

    if (v6)
    {
      v7 = [v4 bundle];

      if (v7)
      {
        v5->_hasIdentifiedBundle = 1;
      }
    }

    else
    {
      v5->_hasIdentifiedBundle = 1;
      v8 = [v4 bundle];
      v9 = [v8 bundleURL];
      bundleURL = v5->_bundleURL;
      v5->_bundleURL = v9;
    }
  }

  return v5;
}

- (MIBundleContainerToken)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MIBundleContainerToken;
  v5 = [(MIContainerToken *)&v15 initWithCoder:v4];
  if (v5)
  {
    v5->_hasIdentifiedBundle = [v4 decodeBoolForKey:@"hasIdentifiedBundle"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v6;

    v8 = [(MIContainerToken *)v5 containerURL];
    v9 = v8;
    if (v8 && !v5->_bundleURL)
    {
      v12 = [v8 path];
      v14 = _CreateAndLogError("[MIBundleContainerToken initWithCoder:]", 52, @"MIInstallerErrorDomain", 4, 0, 0, @"Serialized container did not encode bundleURL for bundle in container %@", v13, v12);

      [v4 failWithError:v14];
      v10 = 0;
      goto LABEL_6;
    }
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MIBundleContainerToken;
  v4 = a3;
  [(MIContainerToken *)&v6 encodeWithCoder:v4];
  [v4 encodeBool:-[MIBundleContainerToken hasIdentifiedBundle](self forKey:{"hasIdentifiedBundle", v6.receiver, v6.super_class), @"hasIdentifiedBundle"}];
  v5 = [(MIBundleContainerToken *)self bundleURL];
  [v4 encodeObject:v5 forKey:@"bundleURL"];
}

@end