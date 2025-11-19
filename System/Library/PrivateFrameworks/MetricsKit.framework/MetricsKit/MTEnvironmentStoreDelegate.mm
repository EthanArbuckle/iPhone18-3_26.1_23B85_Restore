@interface MTEnvironmentStoreDelegate
- (id)_connectionType;
- (id)connectionType;
- (id)dsId;
- (id)storeFrontHeader;
@end

@implementation MTEnvironmentStoreDelegate

- (id)connectionType
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__MTEnvironmentStoreDelegate_connectionType__block_invoke;
  v4[3] = &unk_2798CE7D0;
  v4[4] = self;
  v2 = [MTEventHandler cachableWithKey:@"connectionType" onBackgroundThread:1 block:v4];

  return v2;
}

- (id)dsId
{
  v2 = [(MTEnvironmentStoreDelegate *)self _activeItunesAccount];
  v3 = [v2 thenWithBlock:&__block_literal_global_15];

  return v3;
}

id __34__MTEnvironmentStoreDelegate_dsId__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ams_DSID];
  v3 = [MTPromise promiseWithResult:v2];

  return v3;
}

- (id)storeFrontHeader
{
  v2 = [(MTEnvironmentStoreDelegate *)self _activeItunesAccount];
  v3 = [v2 thenWithBlock:&__block_literal_global_5];

  return v3;
}

id __46__MTEnvironmentStoreDelegate_storeFrontHeader__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ams_storefront];
  v3 = [MTPromise promiseWithResult:v2];

  return v3;
}

id __39__MTEnvironmentStoreDelegate_userAgent__block_invoke()
{
  v0 = MEMORY[0x277CEE700];
  v1 = [MEMORY[0x277CEE628] currentProcess];
  v2 = [v0 userAgentForProcessInfo:v1];

  return v2;
}

- (id)_connectionType
{
  v2 = [MEMORY[0x277D7FD08] sharedInstance];
  v3 = [v2 connectionTypeHeader];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = @"unknown";
  }

  return v4;
}

id __50__MTEnvironmentStoreDelegate__activeItunesAccount__block_invoke()
{
  v0 = [MEMORY[0x277CB8F50] ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  return v1;
}

@end