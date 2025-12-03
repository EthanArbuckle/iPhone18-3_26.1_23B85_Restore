@interface MBStartRestoreOptions
- (MBStartRestoreOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBStartRestoreOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cellularAccess = [(MBStartRestoreOptions *)self cellularAccess];
  [coderCopy encodeObject:cellularAccess forKey:@"cellularAccess"];

  excludedAppBundleIDs = [(MBStartRestoreOptions *)self excludedAppBundleIDs];
  [coderCopy encodeObject:excludedAppBundleIDs forKey:@"excludedAppBundleIDs"];
}

- (MBStartRestoreOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MBStartRestoreOptions;
  v5 = [(MBStartRestoreOptions *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cellularAccess"];
    [(MBStartRestoreOptions *)v5 setCellularAccess:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"excludedAppBundleIDs"];
    [(MBStartRestoreOptions *)v5 setExcludedAppBundleIDs:v10];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  cellularAccess = [(MBStartRestoreOptions *)self cellularAccess];
  [v4 setCellularAccess:cellularAccess];

  excludedAppBundleIDs = [(MBStartRestoreOptions *)self excludedAppBundleIDs];
  v7 = [excludedAppBundleIDs copy];
  [v4 setExcludedAppBundleIDs:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  cellularAccess = [(MBStartRestoreOptions *)self cellularAccess];
  excludedAppBundleIDs = [(MBStartRestoreOptions *)self excludedAppBundleIDs];
  v8 = [v3 stringWithFormat:@"<%s: %p cellularAccess=%@; excludedAppBundleIDs=%@>", Name, self, cellularAccess, excludedAppBundleIDs];;

  return v8;
}

@end