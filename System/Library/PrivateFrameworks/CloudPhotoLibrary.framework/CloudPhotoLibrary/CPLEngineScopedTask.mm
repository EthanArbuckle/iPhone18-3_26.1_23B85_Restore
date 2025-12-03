@interface CPLEngineScopedTask
- (BOOL)checkScopeIsValidInTransaction:(id)transaction;
- (BOOL)isScopeValidInTransaction:(id)transaction;
- (CPLEngineScopedTask)initWithEngineLibrary:(id)library session:(id)session clientCacheIdentifier:(id)identifier scope:(id)scope transportScope:(id)transportScope;
- (id)scopesForTask;
@end

@implementation CPLEngineScopedTask

- (id)scopesForTask
{
  v6[1] = *MEMORY[0x1E69E9840];
  scope = [(CPLEngineScopedTask *)self scope];
  v6[0] = scope;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)checkScopeIsValidInTransaction:(id)transaction
{
  v17 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  error = [transactionCopy error];

  if (error)
  {
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  session = [(CPLEngineSyncTask *)self session];
  shouldDefer = [session shouldDefer];

  if (shouldDefer)
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
    [transactionCopy setError:v10];

    goto LABEL_15;
  }

  if (![(CPLEngineScopedTask *)self isScopeValidInTransaction:transactionCopy])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLTaskOSLogDomain_15620();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        scope = [(CPLEngineScopedTask *)self scope];
        *v16 = 138412290;
        *&v16[4] = scope;
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

- (BOOL)isScopeValidInTransaction:(id)transaction
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = self->_clientCacheIdentifier;
  clientCacheIdentifier = [(CPLEngineStore *)self->_store clientCacheIdentifier];
  v6 = clientCacheIdentifier;
  if (v4)
  {
    v7 = clientCacheIdentifier == 0;
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
      scopes = [(CPLEngineStore *)self->_store scopes];
      validLocalScopeIndexes = [scopes validLocalScopeIndexes];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      scopesForTask = [(CPLEngineScopedTask *)self scopesForTask];
      v14 = [scopesForTask countByEnumeratingWithState:&v30 objects:v40 count:16];
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
            objc_enumerationMutation(scopesForTask);
          }

          v18 = *(*(&v30 + 1) + 8 * v17);
          if (([validLocalScopeIndexes containsIndex:[(CPLEngineScope *)v18 localIndex]]& 1) == 0)
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [scopesForTask countByEnumeratingWithState:&v30 objects:v40 count:16];
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
    v11 = [v4 isEqual:clientCacheIdentifier];

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

  validLocalScopeIndexes = __CPLTaskOSLogDomain_15620();
  if (os_log_type_enabled(validLocalScopeIndexes, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = objc_opt_class();
    v9 = v35;
    _os_log_impl(&dword_1DC05A000, validLocalScopeIndexes, OS_LOG_TYPE_DEFAULT, "Client cache has been reset. Stopping %@ for now", buf, 0xCu);
  }

  v10 = 0;
LABEL_32:

LABEL_33:
  v28 = *MEMORY[0x1E69E9840];
  return v10;
}

- (CPLEngineScopedTask)initWithEngineLibrary:(id)library session:(id)session clientCacheIdentifier:(id)identifier scope:(id)scope transportScope:(id)transportScope
{
  libraryCopy = library;
  identifierCopy = identifier;
  scopeCopy = scope;
  transportScopeCopy = transportScope;
  v23.receiver = self;
  v23.super_class = CPLEngineScopedTask;
  v16 = [(CPLEngineSyncTask *)&v23 initWithEngineLibrary:libraryCopy session:session];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_scope, scope);
    objc_storeStrong(&v17->_transportScope, transportScope);
    store = [libraryCopy store];
    store = v17->_store;
    v17->_store = store;

    v20 = [identifierCopy copy];
    clientCacheIdentifier = v17->_clientCacheIdentifier;
    v17->_clientCacheIdentifier = v20;
  }

  return v17;
}

@end