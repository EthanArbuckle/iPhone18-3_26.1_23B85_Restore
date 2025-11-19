@interface ISGenericFolderIcon
+ (id)sharedInstance;
- (ISGenericFolderIcon)init;
- (ISResourceProvider)resourceProvider;
- (id)makeResourceProvider;
@end

@implementation ISGenericFolderIcon

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ISGenericFolderIcon sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __37__ISGenericFolderIcon_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(ISGenericFolderIcon);

  return MEMORY[0x1EEE66BB8]();
}

- (ISGenericFolderIcon)init
{
  v2 = *MEMORY[0x1E69637D0];
  v4.receiver = self;
  v4.super_class = ISGenericFolderIcon;
  return [(ISTypeIcon *)&v4 initWithType:v2];
}

- (ISResourceProvider)resourceProvider
{
  resourceProvider = self->_resourceProvider;
  if (!resourceProvider)
  {
    v4 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:*MEMORY[0x1E69637D0]];
    v5 = [[ISRecordResourceProvider alloc] initWithRecord:v4 options:0];
    v6 = self->_resourceProvider;
    self->_resourceProvider = &v5->super;

    v7 = objc_alloc_init(ISGenericRecipe);
    [(ISResourceProvider *)self->_resourceProvider setSuggestedRecipe:v7];

    resourceProvider = self->_resourceProvider;
  }

  return resourceProvider;
}

- (id)makeResourceProvider
{
  v3 = +[ISDefaults sharedInstance];
  v4 = [v3 isSolariumEnabled];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = ISGenericFolderIcon;
    v5 = [(ISTypeIcon *)&v7 makeResourceProvider];
  }

  else
  {
    v5 = [(ISGenericFolderIcon *)self resourceProvider];
  }

  return v5;
}

@end