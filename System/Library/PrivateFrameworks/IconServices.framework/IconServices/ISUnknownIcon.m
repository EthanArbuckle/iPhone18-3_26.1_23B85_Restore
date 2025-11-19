@interface ISUnknownIcon
+ (id)sharedInstance;
- (ISUnknownIcon)init;
@end

@implementation ISUnknownIcon

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_39 != -1)
  {
    +[ISUnknownIcon sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_38;

  return v3;
}

uint64_t __31__ISUnknownIcon_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_38 = objc_alloc_init(ISUnknownIcon);

  return MEMORY[0x1EEE66BB8]();
}

- (ISUnknownIcon)init
{
  v2 = *MEMORY[0x1E6963800];
  v4.receiver = self;
  v4.super_class = ISUnknownIcon;
  return [(ISTypeIcon *)&v4 initWithType:v2];
}

@end