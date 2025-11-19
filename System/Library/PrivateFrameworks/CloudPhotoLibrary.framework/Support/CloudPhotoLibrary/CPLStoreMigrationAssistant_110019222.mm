@interface CPLStoreMigrationAssistant_110019222
- (BOOL)performMigrationWithError:(id *)a3;
- (CPLStoreMigrationAssistant_110019222)initWithStore:(id)a3;
@end

@implementation CPLStoreMigrationAssistant_110019222

- (CPLStoreMigrationAssistant_110019222)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPLStoreMigrationAssistant_110019222;
  v6 = [(CPLStoreMigrationAssistant_110019222 *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (BOOL)performMigrationWithError:(id *)a3
{
  v5 = [(CPLEngineStore *)self->_store scopes];
  v6 = [(CPLEngineStore *)self->_store platformObject];
  v7 = [v5 primaryScope];
  if (v7 && ([v5 valueForFlag:16 forScope:v7] & 1) == 0 && (objc_msgSend(v5, "sharingScopeForScope:", v7), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
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

    [v6 recordUpgradeEvent:@"Resetting sync anchor for shared library user"];
    store = self->_store;
    v16 = 0;
    v12 = [(CPLEngineStore *)store resetSyncAnchorWithCause:@"upgrading shared library user" error:&v16];
    v13 = v16;

    if (a3 && (v12 & 1) == 0)
    {
      v14 = v13;
      v12 = 0;
      *a3 = v13;
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