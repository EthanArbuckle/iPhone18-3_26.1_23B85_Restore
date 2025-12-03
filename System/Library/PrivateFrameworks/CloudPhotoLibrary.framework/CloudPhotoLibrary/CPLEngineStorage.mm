@interface CPLEngineStorage
+ (id)platformImplementationProtocol;
- (BOOL)_checkSuperWasCalled;
- (BOOL)closeWithError:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)isAlive;
- (BOOL)isEmpty;
- (BOOL)openWithError:(id *)error;
- (BOOL)shouldIncludeInStatus;
- (CPLEngineStorage)initWithEngineStore:(id)store name:(id)name;
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
  platformObject = [(CPLEngineStorage *)self platformObject];
  [platformObject writeTransactionDidSucceed];
}

- (void)transactionDidFinish
{
  self->_superWasCalled = 1;
  platformObject = [(CPLEngineStorage *)self platformObject];
  [platformObject transactionDidFinish];
}

- (BOOL)_checkSuperWasCalled
{
  if (self->_superWasCalled)
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    _checkSuperWasCalled = [platformObject _checkSuperWasCalled];
  }

  else
  {
    _checkSuperWasCalled = 0;
  }

  self->_superWasCalled = 0;
  return _checkSuperWasCalled;
}

- (id)statusDictionary
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  shouldIncludeInStatus = [platformObject shouldIncludeInStatus];

  if (shouldIncludeInStatus)
  {
    platformObject2 = [(CPLEngineStorage *)self platformObject];
    statusDictionary = [platformObject2 statusDictionary];
  }

  else
  {
    statusDictionary = 0;
  }

  return statusDictionary;
}

- (id)status
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  shouldIncludeInStatus = [platformObject shouldIncludeInStatus];

  if (shouldIncludeInStatus)
  {
    platformObject2 = [(CPLEngineStorage *)self platformObject];
    status = [platformObject2 status];
  }

  else
  {
    status = 0;
  }

  return status;
}

- (BOOL)shouldIncludeInStatus
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  shouldIncludeInStatus = [platformObject shouldIncludeInStatus];

  return shouldIncludeInStatus;
}

- (BOOL)isAlive
{
  if (![(CPLEngineStorage *)self shouldBeCreatedDynamically])
  {
    return 1;
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  isAlive = [platformObject isAlive];

  return isAlive;
}

- (BOOL)isEmpty
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  isEmpty = [platformObject isEmpty];

  return isEmpty;
}

- (void)writeTransactionDidFail
{
  self->_superWasCalled = 1;
  platformObject = [(CPLEngineStorage *)self platformObject];
  [platformObject writeTransactionDidFail];
}

- (id)scopeIndexes
{
  if ([(CPLEngineStorage *)self isAlive])
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    scopeIndexes = [platformObject scopeIndexes];
  }

  else
  {
    scopeIndexes = objc_alloc_init(MEMORY[0x1E696AC90]);
  }

  return scopeIndexes;
}

- (id)statusPerScopeIndex
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  shouldIncludeInStatus = [platformObject shouldIncludeInStatus];

  if (shouldIncludeInStatus)
  {
    platformObject2 = [(CPLEngineStorage *)self platformObject];
    statusPerScopeIndex = [platformObject2 statusPerScopeIndex];
  }

  else
  {
    statusPerScopeIndex = 0;
  }

  return statusPerScopeIndex;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorage.m"];
  v10 = objc_opt_class();
  v11 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v9 lineNumber:87 description:{@"-[%@ %@] should be implemented by subclasses", v10, v11}];

  abort();
}

- (unint64_t)scopeType
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorage.m"];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:82 description:{@"-[%@ %@] should be implemented by subclasses", v6, v7}];

  abort();
}

- (BOOL)closeWithError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_21522();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Closing %@", &v16, 0xCu);
    }
  }

  self->_superWasCalled = 1;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v7 = [platformObject closeWithError:error];

  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStorageOSLogDomain_21522();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138412290;
        selfCopy3 = self;
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
      v13 = *error;
      v16 = 138412546;
      selfCopy3 = self;
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

- (BOOL)openWithError:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_21522();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Opening %@", &v16, 0xCu);
    }
  }

  self->_superWasCalled = 1;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v7 = [platformObject openWithError:error];

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
      v13 = *error;
      v16 = 138412290;
      selfCopy = v13;
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
  engineStore = [(CPLEngineStorage *)self engineStore];
  engineLibrary = [engineStore engineLibrary];
  libraryIdentifier = [engineLibrary libraryIdentifier];
  v8 = [v3 stringWithFormat:@"[%@ %@ %@]", v4, libraryIdentifier, self->_name];

  return v8;
}

- (CPLEngineStorage)initWithEngineStore:(id)store name:(id)name
{
  v27 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = CPLEngineStorage;
  v10 = [(CPLEngineStorage *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_engineStore, store);
    v12 = [nameCopy copy];
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

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorage.m"];
      [currentHandler handleFailureInMethod:a2 object:v11 file:v23 lineNumber:32 description:{@"No platform object specified for %@", objc_opt_class()}];

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