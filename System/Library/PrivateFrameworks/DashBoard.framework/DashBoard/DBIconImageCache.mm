@interface DBIconImageCache
+ (id)_iconImageCache;
- (id)iconImageForBundleIdentifier:(id)a3 inVehicle:(id)a4;
- (void)setIconImage:(id)a3 forBundleIdentifier:(id)a4 inVehicle:(id)a5;
@end

@implementation DBIconImageCache

- (id)iconImageForBundleIdentifier:(id)a3 inVehicle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _imageKeyForBundleIdentifier:v6 inVehicle:v5];

  v8 = [objc_opt_class() _iconImageCache];
  v9 = [v8 imageForKey:v7];

  return v9;
}

- (void)setIconImage:(id)a3 forBundleIdentifier:(id)a4 inVehicle:(id)a5
{
  if (a3)
  {
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v11 = [objc_opt_class() _imageKeyForBundleIdentifier:v8 inVehicle:v7];

    v10 = [objc_opt_class() _iconImageCache];
    [v10 setImage:v9 forKey:v11 withPersistenceOptions:1];
  }
}

+ (id)_iconImageCache
{
  if (_iconImageCache_onceToken != -1)
  {
    +[DBIconImageCache _iconImageCache];
  }

  v3 = _iconImageCache___imageCache;

  return v3;
}

uint64_t __35__DBIconImageCache__iconImageCache__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CF0D68]) initWithUniqueIdentifier:@"CarPlayIconCache"];
  v1 = _iconImageCache___imageCache;
  _iconImageCache___imageCache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end