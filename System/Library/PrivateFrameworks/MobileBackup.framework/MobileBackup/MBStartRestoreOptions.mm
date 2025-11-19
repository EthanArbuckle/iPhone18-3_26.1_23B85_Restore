@interface MBStartRestoreOptions
- (MBStartRestoreOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBStartRestoreOptions

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MBStartRestoreOptions *)self cellularAccess];
  [v4 encodeObject:v5 forKey:@"cellularAccess"];

  v6 = [(MBStartRestoreOptions *)self excludedAppBundleIDs];
  [v4 encodeObject:v6 forKey:@"excludedAppBundleIDs"];
}

- (MBStartRestoreOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MBStartRestoreOptions;
  v5 = [(MBStartRestoreOptions *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cellularAccess"];
    [(MBStartRestoreOptions *)v5 setCellularAccess:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"excludedAppBundleIDs"];
    [(MBStartRestoreOptions *)v5 setExcludedAppBundleIDs:v10];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(MBStartRestoreOptions *)self cellularAccess];
  [v4 setCellularAccess:v5];

  v6 = [(MBStartRestoreOptions *)self excludedAppBundleIDs];
  v7 = [v6 copy];
  [v4 setExcludedAppBundleIDs:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  v6 = [(MBStartRestoreOptions *)self cellularAccess];
  v7 = [(MBStartRestoreOptions *)self excludedAppBundleIDs];
  v8 = [v3 stringWithFormat:@"<%s: %p cellularAccess=%@; excludedAppBundleIDs=%@>", Name, self, v6, v7];;

  return v8;
}

@end