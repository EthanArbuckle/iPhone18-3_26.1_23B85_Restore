@interface NSFileManager(HealthDaemon)
- (uint64_t)hd_removeAllFilesAtDirectoryPath:()HealthDaemon error:;
@end

@implementation NSFileManager(HealthDaemon)

- (uint64_t)hd_removeAllFilesAtDirectoryPath:()HealthDaemon error:
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [self enumeratorAtPath:v6];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v8)
  {
    v20 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v9 = v8;
  v23 = a4;
  v10 = 0;
  v11 = *v27;
  v24 = 1;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = [v6 stringByAppendingPathComponent:*(*(&v26 + 1) + 8 * i)];
      v25 = 0;
      v14 = [self removeItemAtPath:v13 error:&v25];
      v15 = v25;
      v16 = v15;
      if ((v14 & 1) == 0)
      {
        if (!v10)
        {
          v10 = v15;
        }

        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v31 = v13;
          v32 = 2114;
          v33 = v16;
          _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "Error removing file at '%{public}@': %{public}@", buf, 0x16u);
        }

        v24 = 0;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
  }

  while (v9);

  v18 = v10;
  if (v18)
  {
    v7 = v18;
    if (v23)
    {
      v19 = v18;
      *v23 = v7;
    }

    else
    {
      _HKLogDroppedError();
    }

    v20 = v24;

    goto LABEL_21;
  }

  v20 = v24;
LABEL_22:

  v21 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

@end