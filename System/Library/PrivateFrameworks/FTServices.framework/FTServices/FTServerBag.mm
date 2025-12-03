@interface FTServerBag
+ (id)_sharedInstanceForType:(int64_t)type;
- (BOOL)allowSelfSignedCertificates;
- (BOOL)allowUnsignedBags;
- (BOOL)isInDebilitatedMode;
- (BOOL)isLoaded;
- (BOOL)isLoading;
- (BOOL)isServerAvailable;
- (FTServerBag)initWithBagType:(int64_t)type;
- (NSString)apsEnvironmentName;
- (NSURL)bagURL;
- (id)_bag;
- (id)_cachedBag;
- (id)objectForKey:(id)key;
- (id)urlWithKey:(id)key;
- (void)dealloc;
- (void)forceBagLoad;
- (void)startBagLoad;
@end

@implementation FTServerBag

- (BOOL)isLoaded
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  isLoaded = [v2 isLoaded];

  return isLoaded;
}

+ (id)_sharedInstanceForType:(int64_t)type
{
  if (type <= 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = qword_1ED7687D0[type];
    if (v6)
    {
      if (([v6 isLoaded] & 1) == 0)
      {
        [qword_1ED7687D0[type] startBagLoad];
      }
    }

    else
    {
      v7 = [[FTServerBag alloc] initWithBagType:type];
      v8 = qword_1ED7687D0[type];
      qword_1ED7687D0[type] = v7;
    }

    objc_sync_exit(selfCopy);

    v3 = qword_1ED7687D0[type];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTServerBag)initWithBagType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = FTServerBag;
  v4 = [(FTServerBag *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    v6 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:type];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = FTServerBag;
  [(FTServerBag *)&v4 dealloc];
}

- (void)startBagLoad
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  [v2 startBagLoad];
}

- (void)forceBagLoad
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  [v2 forceBagLoad];
}

- (BOOL)isLoading
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  isLoading = [v2 isLoading];

  return isLoading;
}

- (id)_cachedBag
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  _cachedBag = [v2 _cachedBag];

  return _cachedBag;
}

- (id)_bag
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  _bag = [v2 _bag];

  return _bag;
}

- (NSURL)bagURL
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  bagURL = [v2 bagURL];

  return bagURL;
}

- (NSString)apsEnvironmentName
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  apsEnvironmentName = [v2 apsEnvironmentName];

  return apsEnvironmentName;
}

- (BOOL)allowSelfSignedCertificates
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  allowSelfSignedCertificates = [v2 allowSelfSignedCertificates];

  return allowSelfSignedCertificates;
}

- (BOOL)allowUnsignedBags
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  allowUnsignedBags = [v2 allowUnsignedBags];

  return allowUnsignedBags;
}

- (BOOL)isInDebilitatedMode
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  isInDebilitatedMode = [v2 isInDebilitatedMode];

  return isInDebilitatedMode;
}

- (id)objectForKey:(id)key
{
  v3 = MEMORY[0x1E69A53F0];
  type = self->_type;
  keyCopy = key;
  v6 = [v3 sharedInstanceForBagType:type];
  v7 = [v6 objectForKey:keyCopy];

  return v7;
}

- (id)urlWithKey:(id)key
{
  v3 = MEMORY[0x1E69A53F0];
  type = self->_type;
  keyCopy = key;
  v6 = [v3 sharedInstanceForBagType:type];
  v7 = [v6 urlWithKey:keyCopy];

  return v7;
}

- (BOOL)isServerAvailable
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  isServerAvailable = [v2 isServerAvailable];

  return isServerAvailable;
}

@end