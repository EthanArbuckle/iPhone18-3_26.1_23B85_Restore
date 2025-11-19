@interface ENLoggingPrefs
+ (id)sharedENLoggingPrefs;
- (ENLoggingPrefs)init;
- (void)loadLoggingPrefs;
- (void)setLoggingEntitledApp:(BOOL)a3;
@end

@implementation ENLoggingPrefs

+ (id)sharedENLoggingPrefs
{
  if (sharedENLoggingPrefs_sOnce != -1)
  {
    +[ENLoggingPrefs sharedENLoggingPrefs];
  }

  v3 = sharedENLoggingPrefs_sSelf;

  return v3;
}

void __38__ENLoggingPrefs_sharedENLoggingPrefs__block_invoke()
{
  v0 = objc_alloc_init(ENLoggingPrefs);
  v1 = sharedENLoggingPrefs_sSelf;
  sharedENLoggingPrefs_sSelf = v0;
}

- (ENLoggingPrefs)init
{
  v6.receiver = self;
  v6.super_class = ENLoggingPrefs;
  v2 = [(ENLoggingPrefs *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(ENLoggingPrefs *)v2 loadLoggingPrefs];
    v4 = v3;
  }

  return v3;
}

- (void)setLoggingEntitledApp:(BOOL)a3
{
  v4 = MEMORY[0x277CBED20];
  if (!a3)
  {
    v4 = MEMORY[0x277CBED18];
  }

  v5 = *v4;
  CFPrefs_SetValue();

  [(ENLoggingPrefs *)self loadLoggingPrefs];
}

- (void)loadLoggingPrefs
{
  Int64 = CFPrefs_GetInt64();
  v4 = CFPrefs_GetInt64();
  v5 = CFPrefs_GetInt64();
  v6 = CFPrefs_GetInt64();
  self->_sensitiveLoggingEnabled = Int64 != 0;
  if (IsAppleInternalBuild())
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7 || v6 != 0;
  if (!Int64)
  {
    v9 = 0;
  }

  if (!v4)
  {
    v9 = 0;
  }

  self->_rpiLoggingEnabled = v9;
  if (gLogCategory__ENLoggingPrefs <= 50)
  {
    if (gLogCategory__ENLoggingPrefs != -1)
    {
LABEL_16:
      sensitiveLoggingEnabled = self->_sensitiveLoggingEnabled;
      LogPrintF_safe();
      return;
    }

    if (_LogCategory_Initialize())
    {
      rpiLoggingEnabled = self->_rpiLoggingEnabled;
      goto LABEL_16;
    }
  }
}

@end