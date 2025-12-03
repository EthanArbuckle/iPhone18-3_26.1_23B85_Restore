@interface CLIntersiloUniverse
+ (id)newIsolatedUniverseWithOnlySilo:(id)silo;
+ (id)newSharedVendorUniverseWithSilo:(id)silo;
- (CLIntersiloUniverse)initWithSilo:(id)silo vendor:(id)vendor;
@end

@implementation CLIntersiloUniverse

+ (id)newIsolatedUniverseWithOnlySilo:(id)silo
{
  siloCopy = silo;
  v4 = [CLIntersiloUniverse alloc];
  v5 = objc_alloc(MEMORY[0x1E696AE50]);
  v6 = [(CLIntersiloUniverse *)v4 initWithSilo:siloCopy vendor:v5];

  return v6;
}

+ (id)newSharedVendorUniverseWithSilo:(id)silo
{
  siloCopy = silo;
  v4 = [CLIntersiloUniverse alloc];
  v5 = +[CLServiceVendor sharedInstance];
  v6 = [(CLIntersiloUniverse *)v4 initWithSilo:siloCopy vendor:v5];

  return v6;
}

- (CLIntersiloUniverse)initWithSilo:(id)silo vendor:(id)vendor
{
  siloCopy = silo;
  vendorCopy = vendor;
  v12.receiver = self;
  v12.super_class = CLIntersiloUniverse;
  v9 = [(CLIntersiloUniverse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_silo, silo);
    objc_storeStrong(&v10->_vendor, vendor);
  }

  return v10;
}

@end