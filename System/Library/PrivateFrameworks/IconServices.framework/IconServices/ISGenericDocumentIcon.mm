@interface ISGenericDocumentIcon
+ (id)sharedInstance;
- (ISGenericDocumentIcon)init;
@end

@implementation ISGenericDocumentIcon

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_17 != -1)
  {
    +[ISGenericDocumentIcon sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_16;

  return v3;
}

uint64_t __39__ISGenericDocumentIcon_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_16 = objc_alloc_init(ISGenericDocumentIcon);

  return MEMORY[0x1EEE66BB8]();
}

- (ISGenericDocumentIcon)init
{
  v2 = *MEMORY[0x1E6963798];
  v4.receiver = self;
  v4.super_class = ISGenericDocumentIcon;
  return [(ISTypeIcon *)&v4 initWithType:v2];
}

@end