@interface CRSApplicationIcon
- (CRSApplicationIcon)initWithBundleIdentifier:(id)a3;
- (CRSApplicationIcon)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRSApplicationIcon

- (CRSApplicationIcon)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRSApplicationIcon;
  v5 = [(CRSApplicationIcon *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v5->_isPrerendered = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v8.receiver = self;
  v8.super_class = CRSApplicationIcon;
  v4 = [(CRSApplicationIcon *)&v8 description];
  v5 = [v3 stringWithString:v4];

  v6 = [(CRSApplicationIcon *)self bundleIdentifier];
  [v5 appendFormat:@" %@", v6];

  return v5;
}

- (CRSApplicationIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CRSApplicationIcon;
  v5 = [(CRSApplicationIcon *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CRSApplicationIconBundleID"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CRSApplicationIconImageData"];
    iconImageData = v5->_iconImageData;
    v5->_iconImageData = v8;

    [v4 decodeFloatForKey:@"CRSApplicationIconImageScale"];
    v5->_iconImageScale = v10;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CRSApplicationIconDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v11;

    v5->_isPrerendered = [v4 decodeBoolForKey:@"kCRSApplicationIconIsPrerendered"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(CRSApplicationIcon *)self bundleIdentifier];
  [v8 encodeObject:v4 forKey:@"CRSApplicationIconBundleID"];

  v5 = [(CRSApplicationIcon *)self iconImageData];
  [v8 encodeObject:v5 forKey:@"CRSApplicationIconImageData"];

  [(CRSApplicationIcon *)self iconImageScale];
  *&v6 = v6;
  [v8 encodeFloat:@"CRSApplicationIconImageScale" forKey:v6];
  v7 = [(CRSApplicationIcon *)self localizedDisplayName];
  [v8 encodeObject:v7 forKey:@"CRSApplicationIconDisplayName"];

  [v8 encodeBool:-[CRSApplicationIcon isPrerendered](self forKey:{"isPrerendered"), @"kCRSApplicationIconIsPrerendered"}];
}

@end