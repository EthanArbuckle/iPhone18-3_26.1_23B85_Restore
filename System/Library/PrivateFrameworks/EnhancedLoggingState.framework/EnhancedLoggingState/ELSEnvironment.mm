@interface ELSEnvironment
+ (id)sharedInstance;
- (CKContainerID)cloudKitContainerIdentifier;
- (id)_containerIdentifierForCloudKitEnvironment:(unint64_t)environment;
- (int64_t)_containerEnvironmentForCloudKitEnvironment:(unint64_t)environment;
- (unint64_t)cloudKitEnvironment;
@end

@implementation ELSEnvironment

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[ELSEnvironment sharedInstance];
  }

  v3 = sharedInstance_environment;

  return v3;
}

uint64_t __32__ELSEnvironment_sharedInstance__block_invoke()
{
  sharedInstance_environment = objc_alloc_init(ELSEnvironment);

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)cloudKitEnvironment
{
  v2 = +[ELSDefaults sharedInstance];
  cloudKitEnvironment = [v2 cloudKitEnvironment];

  return cloudKitEnvironment;
}

- (CKContainerID)cloudKitContainerIdentifier
{
  v3 = [(ELSEnvironment *)self _containerIdentifierForCloudKitEnvironment:[(ELSEnvironment *)self cloudKitEnvironment]];
  v4 = [(ELSEnvironment *)self _containerEnvironmentForCloudKitEnvironment:[(ELSEnvironment *)self cloudKitEnvironment]];
  v5 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:v3 environment:v4];

  return v5;
}

- (id)_containerIdentifierForCloudKitEnvironment:(unint64_t)environment
{
  if (environment <= 2)
  {
    self = *off_278FC4D90[environment];
  }

  return self;
}

- (int64_t)_containerEnvironmentForCloudKitEnvironment:(unint64_t)environment
{
  if (environment - 1 >= 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end