@interface IXPlaceholderSeed
- (BOOL)isAppExtension;
- (IXPlaceholderSeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXPlaceholderSeed

- (IXPlaceholderSeed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = IXPlaceholderSeed;
  v5 = [(IXOwnedDataPromiseSeed *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleName"];
    bundleName = v5->_bundleName;
    v5->_bundleName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleDirectoryName"];
    bundleDirectoryName = v5->_bundleDirectoryName;
    v5->_bundleDirectoryName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installType"];
    v5->_installType = [v12 unsignedLongLongValue];

    if ([coderCopy containsValueForKey:@"placeholderType"])
    {
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholderType"];
      v5->_placeholderType = [v13 unsignedLongLongValue];
    }

    else
    {
      v14 = [coderCopy decodeBoolForKey:@"isPlugin"];
      v15 = 1;
      if (v14)
      {
        v15 = 2;
      }

      v5->_placeholderType = v15;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = IXPlaceholderSeed;
  coderCopy = coder;
  [(IXOwnedDataPromiseSeed *)&v10 encodeWithCoder:coderCopy];
  v5 = [(IXPlaceholderSeed *)self bundleName:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"bundleName"];

  bundleDirectoryName = [(IXPlaceholderSeed *)self bundleDirectoryName];
  [coderCopy encodeObject:bundleDirectoryName forKey:@"bundleDirectoryName"];

  bundleID = [(IXPlaceholderSeed *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  v8 = [NSNumber numberWithUnsignedInteger:[(IXPlaceholderSeed *)self installType]];
  [coderCopy encodeObject:v8 forKey:@"installType"];

  v9 = [NSNumber numberWithUnsignedInteger:[(IXPlaceholderSeed *)self placeholderType]];
  [coderCopy encodeObject:v9 forKey:@"placeholderType"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = IXPlaceholderSeed;
  v4 = [(IXOwnedDataPromiseSeed *)&v9 copyWithZone:zone];
  bundleName = [(IXPlaceholderSeed *)self bundleName];
  [v4 setBundleName:bundleName];

  bundleDirectoryName = [(IXPlaceholderSeed *)self bundleDirectoryName];
  [v4 setBundleDirectoryName:bundleDirectoryName];

  bundleID = [(IXPlaceholderSeed *)self bundleID];
  [v4 setBundleID:bundleID];

  [v4 setInstallType:{-[IXPlaceholderSeed installType](self, "installType")}];
  [v4 setPlaceholderType:{-[IXPlaceholderSeed placeholderType](self, "placeholderType")}];
  return v4;
}

- (BOOL)isAppExtension
{
  placeholderType = [(IXPlaceholderSeed *)self placeholderType];

  return IXIsAppExtensionForPlaceholderType(placeholderType);
}

@end