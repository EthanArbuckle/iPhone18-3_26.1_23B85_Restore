@interface ISTransparentIcon
+ (id)sharedInstance;
- (ISTransparentIcon)init;
- (ISTransparentIcon)initWithCoder:(id)coder;
@end

@implementation ISTransparentIcon

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_49 != -1)
  {
    +[ISTransparentIcon sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_48;

  return v3;
}

uint64_t __35__ISTransparentIcon_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_48 = objc_alloc_init(ISTransparentIcon);

  return MEMORY[0x1EEE66BB8]();
}

- (ISTransparentIcon)init
{
  _IF_nullUUID = [MEMORY[0x1E696AFB0] _IF_nullUUID];
  v8.receiver = self;
  v8.super_class = ISTransparentIcon;
  v4 = [(ISConcreteIcon *)&v8 initWithDigest:_IF_nullUUID];

  if (v4)
  {
    v5 = objc_opt_new();
    resourceProvider = v4->_resourceProvider;
    v4->_resourceProvider = v5;
  }

  return v4;
}

- (ISTransparentIcon)initWithCoder:(id)coder
{
  v4 = +[ISTransparentIcon sharedInstance];

  return v4;
}

@end