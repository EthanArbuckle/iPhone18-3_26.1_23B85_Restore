@interface NSSUsageDataAppBundle
- (NSSUsageDataAppBundle)initWithName:(id)a3 bundleIdentifier:(id)a4 bundleVersion:(id)a5 vendor:(id)a6 size:(id)a7 supportsPurge:(BOOL)a8;
- (id)mergeWith:(id)a3;
@end

@implementation NSSUsageDataAppBundle

- (NSSUsageDataAppBundle)initWithName:(id)a3 bundleIdentifier:(id)a4 bundleVersion:(id)a5 vendor:(id)a6 size:(id)a7 supportsPurge:(BOOL)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = NSSUsageDataAppBundle;
  v18 = [(NSSUsageDataAppBundle *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, a3);
    objc_storeStrong(&v19->_bundleIdentifier, a4);
    objc_storeStrong(&v19->_bundleVersion, a5);
    objc_storeStrong(&v19->_vendor, a6);
    objc_storeStrong(&v19->_size, a7);
    v19->_supportsManualPurge = a8;
  }

  return v19;
}

- (id)mergeWith:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSSUsageDataAppBundle *)self size];
    v6 = [v4 size];
    v7 = [v5 plus:v6];
    if ([(NSSUsageDataAppBundle *)self supportsManualPurge])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v4 supportsManualPurge];
    }

    v9 = [(NSSUsageDataAppBundle *)self withSize:v7 purge:v8];
  }

  else
  {
    v9 = self;
  }

  return v9;
}

@end