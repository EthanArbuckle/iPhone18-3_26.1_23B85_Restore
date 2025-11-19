@interface CLIntersiloUniverse
+ (id)newIsolatedUniverseWithOnlySilo:(id)a3;
+ (id)newSharedVendorUniverseWithSilo:(id)a3;
- (CLIntersiloUniverse)initWithSilo:(id)a3 vendor:(id)a4;
@end

@implementation CLIntersiloUniverse

+ (id)newIsolatedUniverseWithOnlySilo:(id)a3
{
  v3 = a3;
  v4 = [CLIntersiloUniverse alloc];
  v5 = objc_alloc(MEMORY[0x1E696AE50]);
  v6 = [(CLIntersiloUniverse *)v4 initWithSilo:v3 vendor:v5];

  return v6;
}

+ (id)newSharedVendorUniverseWithSilo:(id)a3
{
  v3 = a3;
  v4 = [CLIntersiloUniverse alloc];
  v5 = +[CLServiceVendor sharedInstance];
  v6 = [(CLIntersiloUniverse *)v4 initWithSilo:v3 vendor:v5];

  return v6;
}

- (CLIntersiloUniverse)initWithSilo:(id)a3 vendor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CLIntersiloUniverse;
  v9 = [(CLIntersiloUniverse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_silo, a3);
    objc_storeStrong(&v10->_vendor, a4);
  }

  return v10;
}

@end