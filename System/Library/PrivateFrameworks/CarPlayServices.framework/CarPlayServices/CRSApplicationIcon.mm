@interface CRSApplicationIcon
- (CRSApplicationIcon)initWithBundleIdentifier:(id)identifier;
- (CRSApplicationIcon)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRSApplicationIcon

- (CRSApplicationIcon)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CRSApplicationIcon;
  v5 = [(CRSApplicationIcon *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
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

  bundleIdentifier = [(CRSApplicationIcon *)self bundleIdentifier];
  [v5 appendFormat:@" %@", bundleIdentifier];

  return v5;
}

- (CRSApplicationIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CRSApplicationIcon;
  v5 = [(CRSApplicationIcon *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CRSApplicationIconBundleID"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CRSApplicationIconImageData"];
    iconImageData = v5->_iconImageData;
    v5->_iconImageData = v8;

    [coderCopy decodeFloatForKey:@"CRSApplicationIconImageScale"];
    v5->_iconImageScale = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CRSApplicationIconDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v11;

    v5->_isPrerendered = [coderCopy decodeBoolForKey:@"kCRSApplicationIconIsPrerendered"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(CRSApplicationIcon *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"CRSApplicationIconBundleID"];

  iconImageData = [(CRSApplicationIcon *)self iconImageData];
  [coderCopy encodeObject:iconImageData forKey:@"CRSApplicationIconImageData"];

  [(CRSApplicationIcon *)self iconImageScale];
  *&v6 = v6;
  [coderCopy encodeFloat:@"CRSApplicationIconImageScale" forKey:v6];
  localizedDisplayName = [(CRSApplicationIcon *)self localizedDisplayName];
  [coderCopy encodeObject:localizedDisplayName forKey:@"CRSApplicationIconDisplayName"];

  [coderCopy encodeBool:-[CRSApplicationIcon isPrerendered](self forKey:{"isPrerendered"), @"kCRSApplicationIconIsPrerendered"}];
}

@end