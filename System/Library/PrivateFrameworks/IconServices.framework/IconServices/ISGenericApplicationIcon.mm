@interface ISGenericApplicationIcon
+ (id)sharedInstance;
- (ISGenericApplicationIcon)init;
- (ISResourceProvider)resourceProvider;
@end

@implementation ISGenericApplicationIcon

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_27 != -1)
  {
    +[ISGenericApplicationIcon sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_26;

  return v3;
}

uint64_t __42__ISGenericApplicationIcon_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_26 = objc_alloc_init(ISGenericApplicationIcon);

  return MEMORY[0x1EEE66BB8]();
}

- (ISGenericApplicationIcon)init
{
  v2 = *MEMORY[0x1E6963738];
  v4.receiver = self;
  v4.super_class = ISGenericApplicationIcon;
  return [(ISTypeIcon *)&v4 initWithType:v2];
}

- (ISResourceProvider)resourceProvider
{
  resourceProvider = self->_resourceProvider;
  if (!resourceProvider)
  {
    v4 = +[ISResourceProvider defaultAppIconResourceProvider];
    v5 = self->_resourceProvider;
    self->_resourceProvider = v4;

    resourceProvider = self->_resourceProvider;
  }

  return resourceProvider;
}

@end