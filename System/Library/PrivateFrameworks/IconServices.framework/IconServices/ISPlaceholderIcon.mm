@interface ISPlaceholderIcon
+ (id)sharedInstance;
- (ISPlaceholderIcon)init;
- (ISPlaceholderIcon)initWithCoder:(id)coder;
- (id)makeResourceProvider;
@end

@implementation ISPlaceholderIcon

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_75 != -1)
  {
    +[ISPlaceholderIcon sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_74;

  return v3;
}

uint64_t __35__ISPlaceholderIcon_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_74 = objc_alloc_init(ISPlaceholderIcon);

  return MEMORY[0x1EEE66BB8]();
}

- (ISPlaceholderIcon)init
{
  v17[2] = *MEMORY[0x1E69E9840];
  iconsetResourceBundle = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  assetCatalogURL = [iconsetResourceBundle assetCatalogURL];
  __is__contentModifiedDate = [assetCatalogURL __is__contentModifiedDate];

  v6 = MEMORY[0x1E696AFB0];
  [__is__contentModifiedDate timeIntervalSinceReferenceDate];
  v7 = [v6 _IF_UUIDWithDouble:?];
  v8 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:@"STATIC_PLACHOLDER_ICON"];
  v9 = MEMORY[0x1E696AFB0];
  v17[0] = v8;
  v17[1] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v11 = [v9 _IF_UUIDByXORingUUIDs:v10];

  _IF_nullUUID = [MEMORY[0x1E696AFB0] _IF_nullUUID];
  v16.receiver = self;
  v16.super_class = ISPlaceholderIcon;
  v13 = [(ISConcreteIcon *)&v16 initWithDigest:_IF_nullUUID];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (ISPlaceholderIcon)initWithCoder:(id)coder
{
  v4 = +[ISPlaceholderIcon sharedInstance];

  return v4;
}

- (id)makeResourceProvider
{
  resourceProvider = self->_resourceProvider;
  if (!resourceProvider)
  {
    v4 = +[ISResourceProvider placeholderIconResourceProvider];
    v5 = self->_resourceProvider;
    self->_resourceProvider = v4;

    resourceProvider = self->_resourceProvider;
  }

  return resourceProvider;
}

@end