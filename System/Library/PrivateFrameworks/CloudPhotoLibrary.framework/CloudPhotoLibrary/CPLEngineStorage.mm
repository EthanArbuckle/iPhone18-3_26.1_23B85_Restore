@interface CPLEngineStorage
+ (id)platformImplementationProtocol;
- (BOOL)_checkSuperWasCalled;
- (BOOL)closeWithError:(id *)a3;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)isAlive;
- (BOOL)isEmpty;
- (BOOL)openWithError:(id *)a3;
- (BOOL)shouldIncludeInStatus;
- (CPLEngineStorage)initWithEngineStore:(id)a3 name:(id)a4;
- (NSString)description;
- (id)scopeIndexes;
- (id)status;
- (id)statusDictionary;
- (id)statusPerScopeIndex;
- (unint64_t)scopeType;
- (void)transactionDidFinish;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineStorage

- (void)writeTransactionDidSucceed
{
  self->_superWasCalled = 1;
  v2 = [(CPLEngineStorage *)self platformObject];
  [v2 writeTransactionDidSucceed];
}

- (void)transactionDidFinish
{
  self->_superWasCalled = 1;
  v2 = [(CPLEngineStorage *)self platformObject];
  [v2 transactionDidFinish];
}

- (BOOL)_checkSuperWasCalled
{
  if (self->_superWasCalled)
  {
    v3 = [(CPLEngineStorage *)self platformObject];
    v4 = [v3 _checkSuperWasCalled];
  }

  else
  {
    v4 = 0;
  }

  self->_superWasCalled = 0;
  return v4;
}

- (id)statusDictionary
{
  v3 = [(CPLEngineStorage *)self platformObject];
  v4 = [v3 shouldIncludeInStatus];

  if (v4)
  {
    v5 = [(CPLEngineStorage *)self platformObject];
    v6 = [v5 statusDictionary];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)status
{
  v3 = [(CPLEngineStorage *)self platformObject];
  v4 = [v3 shouldIncludeInStatus];

  if (v4)
  {
    v5 = [(CPLEngineStorage *)self platformObject];
    v6 = [v5 status];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldIncludeInStatus
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 shouldIncludeInStatus];

  return v3;
}

- (BOOL)isAlive
{
  if (![(CPLEngineStorage *)self shouldBeCreatedDynamically])
  {
    return 1;
  }

  v3 = [(CPLEngineStorage *)self platformObject];
  v4 = [v3 isAlive];

  return v4;
}

- (BOOL)isEmpty
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 isEmpty];

  return v3;
}

- (void)writeTransactionDidFail
{
  self->_superWasCalled = 1;
  v2 = [(CPLEngineStorage *)self platformObject];
  [v2 writeTransactionDidFail];
}

- (id)scopeIndexes
{
  if ([(CPLEngineStorage *)self isAlive])
  {
    v3 = [(CPLEngineStorage *)self platformObject];
    v4 = [v3 scopeIndexes];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AC90]);
  }

  return v4;
}

- (id)statusPerScopeIndex
{
  v3 = [(CPLEngineStorage *)self platformObject];
  v4 = [v3 shouldIncludeInStatus];

  if (v4)
  {
    v5 = [(CPLEngineStorage *)self platformObject];
    v6 = [v5 statusPerScopeIndex];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorage.m"];
  v10 = objc_opt_class();
  v11 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:v9 lineNumber:87 description:{@"-[%@ %@] should be implemented by subclasses", v10, v11}];

  abort();
}

- (unint64_t)scopeType
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorage.m"];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:82 description:{@"-[%@ %@] should be implemented by subclasses", v6, v7}];

  abort();
}

- (BOOL)closeWithError:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_21522();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = self;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Closing %@", &v16, 0xCu);
    }
  }

  self->_superWasCalled = 1;
  v6 = [(CPLEngineStorage *)self platformObject];
  v7 = [v6 closeWithError:a3];

  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStorageOSLogDomain_21522();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138412290;
        v17 = self;
        v9 = "%@ closed";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEBUG;
        v12 = 12;
LABEL_12:
        _os_log_impl(&dword_1DC05A000, v10, v11, v9, &v16, v12);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStorageOSLogDomain_21522();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *a3;
      v16 = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v13;
      v9 = "Closing %@ failed with error: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
      goto LABEL_12;
    }

LABEL_13:
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)openWithError:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_21522();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = self;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Opening %@", &v16, 0xCu);
    }
  }

  self->_superWasCalled = 1;
  v6 = [(CPLEngineStorage *)self platformObject];
  v7 = [v6 openWithError:a3];

  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStorageOSLogDomain_21522();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        v9 = "Opened";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEBUG;
        v12 = 2;
LABEL_12:
        _os_log_impl(&dword_1DC05A000, v10, v11, v9, &v16, v12);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStorageOSLogDomain_21522();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *a3;
      v16 = 138412290;
      v17 = v13;
      v9 = "Opening failed with error: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
      goto LABEL_12;
    }

LABEL_13:
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CPLEngineStorage *)self engineStore];
  v6 = [v5 engineLibrary];
  v7 = [v6 libraryIdentifier];
  v8 = [v3 stringWithFormat:@"[%@ %@ %@]", v4, v7, self->_name];

  return v8;
}

- (CPLEngineStorage)initWithEngineStore:(id)a3 name:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v24.receiver = self;
  v24.super_class = CPLEngineStorage;
  v10 = [(CPLEngineStorage *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_engineStore, a3);
    v12 = [v9 copy];
    name = v11->_name;
    v11->_name = v12;

    [(CPLEngineStore *)v11->_engineStore registerStorage:v11];
    v14 = +[CPLPlatform currentPlatform];
    v15 = [v14 newPlatformImplementationForObject:v11];
    platformObject = v11->_platformObject;
    v11->_platformObject = v15;

    if (!v11->_platformObject)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v19 = __CPLStorageOSLogDomain_21522();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          *buf = 138412290;
          v26 = v20;
          v21 = v20;
          _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
        }
      }

      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorage.m"];
      [v22 handleFailureInMethod:a2 object:v11 file:v23 lineNumber:32 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

@end