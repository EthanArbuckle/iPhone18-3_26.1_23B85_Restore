@interface MAAutoAssetSetRapidLock
+ (id)lockRecords;
- (MAAutoAssetSetRapidLock)initWithCoder:(id)a3;
- (id)acquireShortTermLockSync;
- (id)checkLockFileValidity;
- (id)endShortTermLockSync;
- (id)init:(id)a3 assetSetIdentifier:(id)a4 assetSetAtomicInstance:(id)a5;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSetRapidLock

- (id)endShortTermLockSync
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = +[MAAutoAssetSetRapidLock lockRecords];
  objc_sync_enter(v3);
  v4 = [(MAAutoAssetSetRapidLock *)self shortTermLockFileName];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(MAAutoAssetSetRapidLock *)self checkLockFileValidity];
    if (v6)
    {

      v7 = [(MAAutoAssetSetRapidLock *)self shortTermLockFileName];
      [v3 removeObjectForKey:v7];

      v8 = 0;
      self = 0;
      goto LABEL_20;
    }

    v13 = [v5 objectAtIndex:0];
    v14 = v13;
    if (v13)
    {
      v15 = [(MAAutoAssetSetRapidLock *)v13 intValue];
      if (v15 > 1)
      {
        self = [MEMORY[0x1E696AD98] numberWithInt:(v15 - 1)];

        [v5 setObject:self atIndexedSubscript:0];
        v6 = 0;
        v8 = 1;
        v14 = self;
        goto LABEL_19;
      }

      v16 = [v5 objectAtIndex:1];
      v17 = v16;
      if (v16)
      {
        close([v16 intValue]);

        v18 = [(MAAutoAssetSetRapidLock *)self shortTermLockFileName];
        [v3 setObject:0 forKeyedSubscript:v18];

        v5 = 0;
        v6 = 0;
        v8 = 1;
LABEL_19:

        goto LABEL_20;
      }

      v25 = MEMORY[0x1E696AEC0];
      v26 = [(MAAutoAssetSetRapidLock *)self summary];
      v27 = [v25 stringWithFormat:@"No file descriptor in entry for lock %@", v26];

      v28 = _MAClientLog(@"AutoSet");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v34 = v27;
        _os_log_impl(&dword_197AD5000, v28, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{endShortTermLockSync}: %{public}@", buf, 0xCu);
      }

      v29 = [MAAutoAssetError buildError:6108 fromOperation:@"[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{endShortTermLockSync}" underlyingError:0 withDescription:v27];
      v30 = [(MAAutoAssetSetRapidLock *)self shortTermLockFileName];
      [v3 removeObjectForKey:v30];

      v6 = v29;
      v8 = 0;
    }

    else
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = [(MAAutoAssetSetRapidLock *)self summary];
      v21 = [v19 stringWithFormat:@"Unable to determine ref count for lock %@", v20];

      v22 = _MAClientLog(@"AutoSet");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v34 = v21;
        _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{endShortTermLockSync}: %{public}@", buf, 0xCu);
      }

      v23 = [MAAutoAssetError buildError:6108 fromOperation:@"[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{endShortTermLockSync}" underlyingError:0 withDescription:v21];

      v24 = [(MAAutoAssetSetRapidLock *)self shortTermLockFileName];
      [v3 removeObjectForKey:v24];

      v6 = v23;
      v14 = 0;
      v8 = 0;
      v5 = 0;
    }

    self = v6;
    goto LABEL_19;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(MAAutoAssetSetRapidLock *)self summary];
  v11 = [v9 stringWithFormat:@"Asked to end lock when no prior lock exists for %@", v10];

  v12 = _MAClientLog(@"AutoSet");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v34 = v11;
    _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{endShortTermLockSync}: %{public}@", buf, 0xCu);
  }

  v6 = [MAAutoAssetError buildError:6501 fromOperation:@"[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{endShortTermLockSync}" underlyingError:0 withDescription:v11];

  v8 = 0;
  self = v6;
LABEL_20:
  objc_sync_exit(v3);

  if (v8)
  {
    self = v6;
  }

  v31 = *MEMORY[0x1E69E9840];

  return self;
}

- (id)checkLockFileValidity
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(MAAutoAssetSetRapidLock *)self shortTermLockFileName];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(MAAutoAssetSetRapidLock *)self summary];
    v9 = [v7 stringWithFormat:@"Shared lock file no longer exists for lock %@", v8];

    v10 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{acquireShortTermLockSync}: %{public}@", buf, 0xCu);
    }

    v6 = [MAAutoAssetError buildError:6583 fromOperation:@"[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{acquireShortTermLockSync}" underlyingError:0 withDescription:v9];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)acquireShortTermLockSync
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = +[MAAutoAssetSetRapidLock lockRecords];
  objc_sync_enter(v3);
  v4 = [(MAAutoAssetSetRapidLock *)self assetSetAtomicInstance];

  if (v4)
  {
    v5 = [(MAAutoAssetSetRapidLock *)self shortTermLockFileName];
    v6 = [v3 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = [(MAAutoAssetSetRapidLock *)self checkLockFileValidity];
      if (v7)
      {

        v8 = [(MAAutoAssetSetRapidLock *)self shortTermLockFileName];
        [v3 removeObjectForKey:v8];

        v9 = v7;
      }

      else
      {
        v18 = [v6 objectAtIndex:0];
        v19 = v18;
        if (v18)
        {
          v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v18, "intValue") + 1}];

          [v6 setObject:v20 atIndexedSubscript:0];
          v9 = 0;
        }

        else
        {
          v26 = MEMORY[0x1E696AEC0];
          v27 = [(MAAutoAssetSetRapidLock *)self summary];
          v28 = [v26 stringWithFormat:@"Unable to determine ref count for lock %@", v27];

          v29 = _MAClientLog(@"AutoSet");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v33 = v28;
            _os_log_impl(&dword_197AD5000, v29, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{acquireShortTermLockSync}: %{public}@", buf, 0xCu);
          }

          v9 = [MAAutoAssetError buildError:6108 fromOperation:@"[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{acquireShortTermLockSync}" underlyingError:0 withDescription:v28];

          v20 = 0;
        }
      }
    }

    else
    {
      v12 = [(MAAutoAssetSetRapidLock *)self shortTermLockFileName];
      v13 = open([v12 UTF8String], 20);

      if ((v13 & 0x80000000) == 0)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithInt:v13];
        v15 = [MEMORY[0x1E695DF70] arrayWithObjects:{&unk_1F0C33608, v14, 0}];
        v16 = [(MAAutoAssetSetRapidLock *)self shortTermLockFileName];
        [v3 setObject:v15 forKeyedSubscript:v16];

        v9 = 0;
        v17 = 1;
        goto LABEL_20;
      }

      v21 = *__error();
      v22 = MEMORY[0x1E696AEC0];
      v23 = [(MAAutoAssetSetRapidLock *)self summary];
      v24 = [v22 stringWithFormat:@"Failed to open lock file for %@ | Error: %s", v23, strerror(v21)];

      v25 = _MAClientLog(@"AutoSet");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v33 = v24;
        _os_log_impl(&dword_197AD5000, v25, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{acquireShortTermLockSync}: %{public}@", buf, 0xCu);
      }

      v9 = [MAAutoAssetError buildError:6583 fromOperation:@"[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{acquireShortTermLockSync}" underlyingError:0 withDescription:v24];
    }

    v17 = 0;
LABEL_20:
    objc_sync_exit(v3);

    if (v17)
    {
      v9 = v9;
    }

    goto LABEL_22;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Atomic instance not set on object"];
  v11 = _MAClientLog(@"AutoSet");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v33 = v10;
    _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{acquireShortTermLockSync}: %{public}@", buf, 0xCu);
  }

  v9 = [MAAutoAssetError buildError:6108 fromOperation:@"[AUTO-SHORT-TERM][FRAMEWORK][RAPID-LOCK]{acquireShortTermLockSync}" underlyingError:0 withDescription:v10];

  objc_sync_exit(v3);
LABEL_22:

  v30 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)lockRecords
{
  if (lockRecords_onceToken != -1)
  {
    +[MAAutoAssetSetRapidLock lockRecords];
  }

  v3 = lockRecords_lockRecords;

  return v3;
}

uint64_t __38__MAAutoAssetSetRapidLock_lockRecords__block_invoke()
{
  lockRecords_lockRecords = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

- (id)init:(id)a3 assetSetIdentifier:(id)a4 assetSetAtomicInstance:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = MAAutoAssetSetRapidLock;
  v11 = [(MAAutoAssetSetRapidLock *)&v21 init];
  clientDomainName = v11->_clientDomainName;
  v11->_clientDomainName = v8;
  v13 = v8;

  assetSetIdentifier = v11->_assetSetIdentifier;
  v11->_assetSetIdentifier = v9;
  v15 = v9;

  assetSetAtomicInstance = v11->_assetSetAtomicInstance;
  v11->_assetSetAtomicInstance = v10;
  v17 = v10;

  v18 = [MAAutoAssetSetStatus shortTermLockFilename:v13 forAssetSetIdentifier:v15 forSetAtomicInstance:v17];
  shortTermLockFileName = v11->_shortTermLockFileName;
  v11->_shortTermLockFileName = v18;

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSetRapidLock *)self clientDomainName];
  [v4 encodeObject:v5 forKey:@"rapidLockClientDomainName"];

  v6 = [(MAAutoAssetSetRapidLock *)self assetSetIdentifier];
  [v4 encodeObject:v6 forKey:@"rapidLockAssetSetIdentifier"];

  v7 = [(MAAutoAssetSetRapidLock *)self assetSetAtomicInstance];
  [v4 encodeObject:v7 forKey:@"rapidLockAssetSetAtomicInstance"];

  v8 = [(MAAutoAssetSetRapidLock *)self shortTermLockFileName];
  [v4 encodeObject:v8 forKey:@"rapidLockAssetSetAtomicShortTermLockFileName"];
}

- (MAAutoAssetSetRapidLock)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MAAutoAssetSetRapidLock;
  v5 = [(MAAutoAssetSetRapidLock *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rapidLockClientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rapidLockAssetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rapidLockAssetSetAtomicInstance"];
    assetSetAtomicInstance = v5->_assetSetAtomicInstance;
    v5->_assetSetAtomicInstance = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rapidLockAssetSetAtomicShortTermLockFileName"];
    shortTermLockFileName = v5->_shortTermLockFileName;
    v5->_shortTermLockFileName = v12;
  }

  return v5;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetSetRapidLock *)self clientDomainName];
  v5 = [(MAAutoAssetSetRapidLock *)self assetSetIdentifier];
  v6 = [(MAAutoAssetSetRapidLock *)self assetSetAtomicInstance];
  v7 = [(MAAutoAssetSetRapidLock *)self shortTermLockFileName];
  v8 = [v3 stringWithFormat:@"ClientDomain:%@ | SetIdentifier:%@ | AtomicInstance:%@ | LockFile:%@ ", v4, v5, v6, v7];

  return v8;
}

@end