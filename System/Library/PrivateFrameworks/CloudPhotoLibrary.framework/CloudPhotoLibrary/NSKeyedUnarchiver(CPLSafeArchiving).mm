@interface NSKeyedUnarchiver(CPLSafeArchiving)
+ (id)cpl_safeUnarchiveObjectWithData:()CPLSafeArchiving class:;
+ (id)cpl_safeUnarchiveObjectWithData:()CPLSafeArchiving classes:;
@end

@implementation NSKeyedUnarchiver(CPLSafeArchiving)

+ (id)cpl_safeUnarchiveObjectWithData:()CPLSafeArchiving classes:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v17 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:v5 error:&v17];
    v8 = v17;
    if (!v7 && (_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLArchiverOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        allObjects = [v6 allObjects];
        v11 = [allObjects componentsJoinedByString:{@", "}];
        *buf = 138543618;
        v19 = v11;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Data for (%{public}@) was corrupt: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLArchiverOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        allObjects2 = [v6 allObjects];
        v14 = [allObjects2 componentsJoinedByString:{@", "}];
        *buf = 138543362;
        v19 = v14;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Trying to deserialize (%{public}@) with a nil data", buf, 0xCu);
      }
    }

    v7 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)cpl_safeUnarchiveObjectWithData:()CPLSafeArchiving class:
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v12 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:a4 fromData:v5 error:&v12];
    v7 = v12;
    if (!v6 && (_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLArchiverOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v14 = a4;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Data for %{public}@ was corrupt: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLArchiverOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = a4;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Trying to deserialize %{public}@ with a nil data", buf, 0xCu);
      }
    }

    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

@end