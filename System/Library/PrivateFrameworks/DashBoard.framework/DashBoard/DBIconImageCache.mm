@interface DBIconImageCache
+ (id)_iconImageCache;
- (id)iconImageForBundleIdentifier:(id)identifier inVehicle:(id)vehicle;
- (void)setIconImage:(id)image forBundleIdentifier:(id)identifier inVehicle:(id)vehicle;
@end

@implementation DBIconImageCache

- (id)iconImageForBundleIdentifier:(id)identifier inVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  identifierCopy = identifier;
  v7 = [objc_opt_class() _imageKeyForBundleIdentifier:identifierCopy inVehicle:vehicleCopy];

  _iconImageCache = [objc_opt_class() _iconImageCache];
  v9 = [_iconImageCache imageForKey:v7];

  return v9;
}

- (void)setIconImage:(id)image forBundleIdentifier:(id)identifier inVehicle:(id)vehicle
{
  if (image)
  {
    vehicleCopy = vehicle;
    identifierCopy = identifier;
    imageCopy = image;
    v11 = [objc_opt_class() _imageKeyForBundleIdentifier:identifierCopy inVehicle:vehicleCopy];

    _iconImageCache = [objc_opt_class() _iconImageCache];
    [_iconImageCache setImage:imageCopy forKey:v11 withPersistenceOptions:1];
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