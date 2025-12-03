@interface MIBundleContainerToken
- (MIBundleContainerToken)initWithCoder:(id)coder;
- (MIBundleContainerToken)initWithContainer:(id)container;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIBundleContainerToken

- (MIBundleContainerToken)initWithContainer:(id)container
{
  containerCopy = container;
  v12.receiver = self;
  v12.super_class = MIBundleContainerToken;
  v5 = [(MIContainerToken *)&v12 initWithContainer:containerCopy];
  if (v5)
  {
    rawContainer = [containerCopy rawContainer];

    if (rawContainer)
    {
      bundle = [containerCopy bundle];

      if (bundle)
      {
        v5->_hasIdentifiedBundle = 1;
      }
    }

    else
    {
      v5->_hasIdentifiedBundle = 1;
      bundle2 = [containerCopy bundle];
      bundleURL = [bundle2 bundleURL];
      bundleURL = v5->_bundleURL;
      v5->_bundleURL = bundleURL;
    }
  }

  return v5;
}

- (MIBundleContainerToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MIBundleContainerToken;
  v5 = [(MIContainerToken *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_hasIdentifiedBundle = [coderCopy decodeBoolForKey:@"hasIdentifiedBundle"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v6;

    containerURL = [(MIContainerToken *)v5 containerURL];
    v9 = containerURL;
    if (containerURL && !v5->_bundleURL)
    {
      path = [containerURL path];
      v14 = _CreateAndLogError("[MIBundleContainerToken initWithCoder:]", 52, @"MIInstallerErrorDomain", 4, 0, 0, @"Serialized container did not encode bundleURL for bundle in container %@", v13, path);

      [coderCopy failWithError:v14];
      v10 = 0;
      goto LABEL_6;
    }
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MIBundleContainerToken;
  coderCopy = coder;
  [(MIContainerToken *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[MIBundleContainerToken hasIdentifiedBundle](self forKey:{"hasIdentifiedBundle", v6.receiver, v6.super_class), @"hasIdentifiedBundle"}];
  bundleURL = [(MIBundleContainerToken *)self bundleURL];
  [coderCopy encodeObject:bundleURL forKey:@"bundleURL"];
}

@end