@interface IXPlaceholderSeed
- (BOOL)isAppExtension;
- (IXPlaceholderSeed)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXPlaceholderSeed

- (IXPlaceholderSeed)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IXPlaceholderSeed;
  v5 = [(IXOwnedDataPromiseSeed *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleName"];
    bundleName = v5->_bundleName;
    v5->_bundleName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleDirectoryName"];
    bundleDirectoryName = v5->_bundleDirectoryName;
    v5->_bundleDirectoryName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installType"];
    v5->_installType = [v12 unsignedLongLongValue];

    if ([v4 containsValueForKey:@"placeholderType"])
    {
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholderType"];
      v5->_placeholderType = [v13 unsignedLongLongValue];
    }

    else
    {
      v14 = [v4 decodeBoolForKey:@"isPlugin"];
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

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = IXPlaceholderSeed;
  v4 = a3;
  [(IXOwnedDataPromiseSeed *)&v10 encodeWithCoder:v4];
  v5 = [(IXPlaceholderSeed *)self bundleName:v10.receiver];
  [v4 encodeObject:v5 forKey:@"bundleName"];

  v6 = [(IXPlaceholderSeed *)self bundleDirectoryName];
  [v4 encodeObject:v6 forKey:@"bundleDirectoryName"];

  v7 = [(IXPlaceholderSeed *)self bundleID];
  [v4 encodeObject:v7 forKey:@"bundleID"];

  v8 = [NSNumber numberWithUnsignedInteger:[(IXPlaceholderSeed *)self installType]];
  [v4 encodeObject:v8 forKey:@"installType"];

  v9 = [NSNumber numberWithUnsignedInteger:[(IXPlaceholderSeed *)self placeholderType]];
  [v4 encodeObject:v9 forKey:@"placeholderType"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = IXPlaceholderSeed;
  v4 = [(IXOwnedDataPromiseSeed *)&v9 copyWithZone:a3];
  v5 = [(IXPlaceholderSeed *)self bundleName];
  [v4 setBundleName:v5];

  v6 = [(IXPlaceholderSeed *)self bundleDirectoryName];
  [v4 setBundleDirectoryName:v6];

  v7 = [(IXPlaceholderSeed *)self bundleID];
  [v4 setBundleID:v7];

  [v4 setInstallType:{-[IXPlaceholderSeed installType](self, "installType")}];
  [v4 setPlaceholderType:{-[IXPlaceholderSeed placeholderType](self, "placeholderType")}];
  return v4;
}

- (BOOL)isAppExtension
{
  v2 = [(IXPlaceholderSeed *)self placeholderType];

  return IXIsAppExtensionForPlaceholderType(v2);
}

@end