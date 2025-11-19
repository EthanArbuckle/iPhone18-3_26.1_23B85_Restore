@interface FTServerBag
+ (id)_sharedInstanceForType:(int64_t)a3;
- (BOOL)allowSelfSignedCertificates;
- (BOOL)allowUnsignedBags;
- (BOOL)isInDebilitatedMode;
- (BOOL)isLoaded;
- (BOOL)isLoading;
- (BOOL)isServerAvailable;
- (FTServerBag)initWithBagType:(int64_t)a3;
- (NSString)apsEnvironmentName;
- (NSURL)bagURL;
- (id)_bag;
- (id)_cachedBag;
- (id)objectForKey:(id)a3;
- (id)urlWithKey:(id)a3;
- (void)dealloc;
- (void)forceBagLoad;
- (void)startBagLoad;
@end

@implementation FTServerBag

- (BOOL)isLoaded
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  v3 = [v2 isLoaded];

  return v3;
}

+ (id)_sharedInstanceForType:(int64_t)a3
{
  if (a3 <= 1)
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = qword_1ED7687D0[a3];
    if (v6)
    {
      if (([v6 isLoaded] & 1) == 0)
      {
        [qword_1ED7687D0[a3] startBagLoad];
      }
    }

    else
    {
      v7 = [[FTServerBag alloc] initWithBagType:a3];
      v8 = qword_1ED7687D0[a3];
      qword_1ED7687D0[a3] = v7;
    }

    objc_sync_exit(v5);

    v3 = qword_1ED7687D0[a3];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTServerBag)initWithBagType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = FTServerBag;
  v4 = [(FTServerBag *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v6 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:a3];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
  v3 = [v2 isLoading];

  return v3;
}

- (id)_cachedBag
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  v3 = [v2 _cachedBag];

  return v3;
}

- (id)_bag
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  v3 = [v2 _bag];

  return v3;
}

- (NSURL)bagURL
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  v3 = [v2 bagURL];

  return v3;
}

- (NSString)apsEnvironmentName
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  v3 = [v2 apsEnvironmentName];

  return v3;
}

- (BOOL)allowSelfSignedCertificates
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  v3 = [v2 allowSelfSignedCertificates];

  return v3;
}

- (BOOL)allowUnsignedBags
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  v3 = [v2 allowUnsignedBags];

  return v3;
}

- (BOOL)isInDebilitatedMode
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  v3 = [v2 isInDebilitatedMode];

  return v3;
}

- (id)objectForKey:(id)a3
{
  v3 = MEMORY[0x1E69A53F0];
  type = self->_type;
  v5 = a3;
  v6 = [v3 sharedInstanceForBagType:type];
  v7 = [v6 objectForKey:v5];

  return v7;
}

- (id)urlWithKey:(id)a3
{
  v3 = MEMORY[0x1E69A53F0];
  type = self->_type;
  v5 = a3;
  v6 = [v3 sharedInstanceForBagType:type];
  v7 = [v6 urlWithKey:v5];

  return v7;
}

- (BOOL)isServerAvailable
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:self->_type];
  v3 = [v2 isServerAvailable];

  return v3;
}

@end