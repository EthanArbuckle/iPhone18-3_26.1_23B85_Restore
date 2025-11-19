@interface ISCurrentDeviceIcon
+ (id)sharedInstance;
- (ISCurrentDeviceIcon)init;
@end

@implementation ISCurrentDeviceIcon

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_65 != -1)
  {
    +[ISCurrentDeviceIcon sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_64;

  return v3;
}

uint64_t __37__ISCurrentDeviceIcon_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_64 = objc_alloc_init(ISCurrentDeviceIcon);

  return MEMORY[0x1EEE66BB8]();
}

- (ISCurrentDeviceIcon)init
{
  v3 = *MEMORY[0x1E69636E8];
  v4 = _LSCreateDeviceTypeIdentifierWithModelCode();
  v7.receiver = self;
  v7.super_class = ISCurrentDeviceIcon;
  v5 = [(ISTypeIcon *)&v7 initWithType:v4];

  return v5;
}

@end