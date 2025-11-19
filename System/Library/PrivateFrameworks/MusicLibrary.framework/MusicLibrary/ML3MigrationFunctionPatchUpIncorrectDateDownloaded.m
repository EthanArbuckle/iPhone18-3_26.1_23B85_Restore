@interface ML3MigrationFunctionPatchUpIncorrectDateDownloaded
@end

@implementation ML3MigrationFunctionPatchUpIncorrectDateDownloaded

void ___ML3MigrationFunctionPatchUpIncorrectDateDownloaded_block_invoke(uint64_t a1, void *a2)
{
  v25[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 stringForColumnIndex:1];
  v6 = [v3 stringForColumnIndex:2];
  [v3 doubleForColumnIndex:3];
  v8 = v7;

  v9 = MEMORY[0x277CCACA8];
  v25[0] = *(a1 + 32);
  v25[1] = v5;
  v25[2] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v11 = [v9 pathWithComponents:v10];

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v12 fileExistsAtPath:v11])
  {
    v20 = 0;
    v13 = [v12 attributesOfItemAtPath:v11 error:&v20];
    v14 = v20;
    if (v14 || !v13)
    {
      v16 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v22 = v11;
        v23 = 2114;
        v24 = v14;
        _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Could not get attributes for item at %{public}@, error=%{public}@", buf, 0x16u);
      }

      goto LABEL_12;
    }

    v15 = [v13 objectForKey:*MEMORY[0x277CCA108]];
    v16 = v15;
    if (v15)
    {
      [v15 timeIntervalSince1970];
      if (vabdd_f64(v17, v8) >= 0.00000011920929)
      {
LABEL_12:

        goto LABEL_13;
      }

      v18 = *(a1 + 40);
      v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
      [v18 setObject:v16 forKey:v19];
    }

    else
    {
      v19 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v22 = v11;
        _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_ERROR, "Could not get creation date from file attributes for item at %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_12;
  }

LABEL_13:
}

void ___ML3MigrationFunctionPatchUpIncorrectDateDownloaded_block_invoke_2690(uint64_t a1, void *a2, void *a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v18[0] = v6;
  v18[1] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v13 = 0;
  v9 = [v7 executeUpdate:@"UPDATE item SET date_downloaded = ? WHERE item_pid = ?" withParameters:v8 error:&v13];
  v10 = v13;

  if ((v9 & 1) == 0)
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v5 longLongValue];
      *buf = 134218242;
      v15 = v12;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "Could not update date downloaded for item_pid %lld, error=%{public}@", buf, 0x16u);
    }
  }
}

@end