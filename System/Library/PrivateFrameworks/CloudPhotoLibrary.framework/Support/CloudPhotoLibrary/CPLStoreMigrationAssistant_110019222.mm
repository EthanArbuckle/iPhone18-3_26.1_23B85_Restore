@interface CPLStoreMigrationAssistant_110019222
- (BOOL)performMigrationWithError:(id *)error;
- (CPLStoreMigrationAssistant_110019222)initWithStore:(id)store;
@end

@implementation CPLStoreMigrationAssistant_110019222

- (CPLStoreMigrationAssistant_110019222)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = CPLStoreMigrationAssistant_110019222;
  v6 = [(CPLStoreMigrationAssistant_110019222 *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (BOOL)performMigrationWithError:(id *)error
{
  scopes = [(CPLEngineStore *)self->_store scopes];
  platformObject = [(CPLEngineStore *)self->_store platformObject];
  primaryScope = [scopes primaryScope];
  if (primaryScope && ([scopes valueForFlag:16 forScope:primaryScope] & 1) == 0 && (objc_msgSend(scopes, "sharingScopeForScope:", primaryScope), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    if ((_CPLSilentLogging & 1) == 0)
    {
      if (qword_1002D2C28 != -1)
      {
        sub_1001C2540();
      }

      v10 = qword_1002D2C30;
      if (os_log_type_enabled(qword_1002D2C30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resetting sync anchors for all users of shared library", buf, 2u);
      }
    }

    [platformObject recordUpgradeEvent:@"Resetting sync anchor for shared library user"];
    store = self->_store;
    v16 = 0;
    v12 = [(CPLEngineStore *)store resetSyncAnchorWithCause:@"upgrading shared library user" error:&v16];
    v13 = v16;

    if (error && (v12 & 1) == 0)
    {
      v14 = v13;
      v12 = 0;
      *error = v13;
    }
  }

  else
  {
    v13 = 0;
    v12 = 1;
  }

  return v12;
}

@end