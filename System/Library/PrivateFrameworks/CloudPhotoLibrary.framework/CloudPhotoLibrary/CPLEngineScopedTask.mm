@interface CPLEngineScopedTask
- (BOOL)checkScopeIsValidInTransaction:(id)a3;
- (BOOL)isScopeValidInTransaction:(id)a3;
- (CPLEngineScopedTask)initWithEngineLibrary:(id)a3 session:(id)a4 clientCacheIdentifier:(id)a5 scope:(id)a6 transportScope:(id)a7;
- (id)scopesForTask;
@end

@implementation CPLEngineScopedTask

- (id)scopesForTask
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(CPLEngineScopedTask *)self scope];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)checkScopeIsValidInTransaction:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 error];

  if (v5)
  {
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v6 = [(CPLEngineSyncTask *)self session];
  v7 = [v6 shouldDefer];

  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLTaskOSLogDomain_15620();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 138412290;
        *&v16[4] = objc_opt_class();
        v9 = *&v16[4];
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Session for %@ has been deferred", v16, 0xCu);
      }
    }

    v10 = +[CPLErrors sessionHasBeenDeferredError];
    [v4 setError:v10];

    goto LABEL_15;
  }

  if (![(CPLEngineScopedTask *)self isScopeValidInTransaction:v4])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLTaskOSLogDomain_15620();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(CPLEngineScopedTask *)self scope];
        *v16 = 138412290;
        *&v16[4] = v13;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "%@ is not valid anymore - stopping here", v16, 0xCu);
      }
    }

    [(CPLEngineSyncTask *)self cancel];
    goto LABEL_15;
  }

  v11 = 1;
LABEL_16:

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isScopeValidInTransaction:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = self->_clientCacheIdentifier;
  v5 = [(CPLEngineStore *)self->_store clientCacheIdentifier];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {

    if (!(v4 | v6))
    {
LABEL_12:
      v12 = [(CPLEngineStore *)self->_store scopes];
      v8 = [v12 validLocalScopeIndexes];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v13 = [(CPLEngineScopedTask *)self scopesForTask];
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v40 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
LABEL_14:
        v17 = 0;
        while (1)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * v17);
          if (([v8 containsIndex:[(CPLEngineScope *)v18 localIndex]]& 1) == 0)
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v30 objects:v40 count:16];
            if (v15)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }
        }

        if (v18 == self->_scope)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v19 = __CPLTaskOSLogDomain_15620();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              scope = self->_scope;
              v27 = objc_opt_class();
              *buf = 138412546;
              v35 = scope;
              v36 = 2112;
              v37 = v27;
              v22 = v27;
              v23 = "Scope %@ is invalid, stopping %@ now";
              v24 = v19;
              v25 = 22;
              goto LABEL_28;
            }

LABEL_29:
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v19 = __CPLTaskOSLogDomain_15620();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = self->_scope;
            v21 = objc_opt_class();
            *buf = 138412802;
            v35 = v18;
            v36 = 2112;
            v37 = v20;
            v38 = 2112;
            v39 = v21;
            v22 = v21;
            v23 = "Scope %@ (associated with %@) is invalid, stopping %@ now";
            v24 = v19;
            v25 = 32;
LABEL_28:
            _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

            goto LABEL_29;
          }

          goto LABEL_29;
        }

        v10 = 0;
        goto LABEL_31;
      }

LABEL_20:
      v10 = 1;
LABEL_31:

      goto LABEL_32;
    }
  }

  else
  {
    v11 = [v4 isEqual:v5];

    if (v11)
    {
      goto LABEL_12;
    }
  }

  if (_CPLSilentLogging)
  {
    v10 = 0;
    goto LABEL_33;
  }

  v8 = __CPLTaskOSLogDomain_15620();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = objc_opt_class();
    v9 = v35;
    _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Client cache has been reset. Stopping %@ for now", buf, 0xCu);
  }

  v10 = 0;
LABEL_32:

LABEL_33:
  v28 = *MEMORY[0x1E69E9840];
  return v10;
}

- (CPLEngineScopedTask)initWithEngineLibrary:(id)a3 session:(id)a4 clientCacheIdentifier:(id)a5 scope:(id)a6 transportScope:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = CPLEngineScopedTask;
  v16 = [(CPLEngineSyncTask *)&v23 initWithEngineLibrary:v12 session:a4];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_scope, a6);
    objc_storeStrong(&v17->_transportScope, a7);
    v18 = [v12 store];
    store = v17->_store;
    v17->_store = v18;

    v20 = [v13 copy];
    clientCacheIdentifier = v17->_clientCacheIdentifier;
    v17->_clientCacheIdentifier = v20;
  }

  return v17;
}

@end