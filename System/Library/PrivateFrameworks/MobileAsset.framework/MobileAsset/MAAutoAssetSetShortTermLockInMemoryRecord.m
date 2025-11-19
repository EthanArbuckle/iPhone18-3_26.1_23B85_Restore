@interface MAAutoAssetSetShortTermLockInMemoryRecord
- (BOOL)isCurrentlyValid;
- (MAAutoAssetSetShortTermLockInMemoryRecord)initWithPathAndSetStatus:(id)a3 setStatus:(id)a4;
- (id)summary;
@end

@implementation MAAutoAssetSetShortTermLockInMemoryRecord

- (BOOL)isCurrentlyValid
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(MAAutoAssetSetShortTermLockInMemoryRecord *)self lockerFileRealPath];
  v18 = 0;
  v5 = [v3 attributesOfItemAtPath:v4 error:&v18];
  v6 = v18;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(MAAutoAssetSetShortTermLockInMemoryRecord *)self summary];
      *buf = 138412546;
      v20 = v9;
      v21 = 2114;
      v22 = v6;
      v10 = "[MAAutoAssetSetShortTermLockInMemoryRecord]: Failed to read lockFileAttributes for %@ Error:%{public}@";
      v11 = v8;
      v12 = 22;
LABEL_11:
      _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v13 = [v5 objectForKey:*MEMORY[0x1E696A350]];
  if (!v13)
  {
    v8 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(MAAutoAssetSetShortTermLockInMemoryRecord *)self summary];
      *buf = 138543362;
      v20 = v9;
      v10 = "[MAAutoAssetSetShortTermLockInMemoryRecord]: Unable to determine modification date for lock file tracked by %{public}@";
      v11 = v8;
      v12 = 12;
      goto LABEL_11;
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v8 = v13;
  v14 = [(MAAutoAssetSetShortTermLockInMemoryRecord *)self recordDate];
  v15 = [v8 compare:v14]== -1;

LABEL_13:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (MAAutoAssetSetShortTermLockInMemoryRecord)initWithPathAndSetStatus:(id)a3 setStatus:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MAAutoAssetSetShortTermLockInMemoryRecord;
  v9 = [(MAAutoAssetSetShortTermLockInMemoryRecord *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lockerFileRealPath, a3);
    objc_storeStrong(&v10->_setStatus, a4);
    v11 = [MEMORY[0x1E695DF00] date];
    recordDate = v10->_recordDate;
    v10->_recordDate = v11;
  }

  return v10;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetSetShortTermLockInMemoryRecord *)self lockerFileRealPath];
  v5 = [(MAAutoAssetSetShortTermLockInMemoryRecord *)self recordDate];
  v6 = [v5 description];
  v7 = [v3 stringWithFormat:@"LockerFilePath: %@ RecordCreatedDate: %@", v4, v6];

  return v7;
}

@end