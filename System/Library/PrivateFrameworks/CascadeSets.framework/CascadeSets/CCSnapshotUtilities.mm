@interface CCSnapshotUtilities
+ (id)_filenameWithTimestamp:(id)a3 set:(id)a4 format:(unsigned __int8)a5;
+ (id)pathFromDate:(id)a3;
+ (id)snapshotSets:(id)a3 directory:(id)a4 useCase:(id)a5 format:(unsigned __int8)a6 date:(id)a7 error:(id *)a8;
@end

@implementation CCSnapshotUtilities

+ (id)_filenameWithTimestamp:(id)a3 set:(id)a4 format:(unsigned __int8)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = CCTypeIdentifierRegistryBridge();
    v10 = [v9 setIdentifierForItemType:{objc_msgSend(v8, "itemType")}];

    v11 = [v8 descriptors];
    v12 = [v11 count];

    if (v12)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = [v8 encodedDescriptors];
      v15 = [v13 stringWithFormat:@"_[%@]", v14];
    }

    else
    {
      v15 = &stru_1F2EBB700;
    }

    if (v5 == 1)
    {
      v17 = @"dat";
    }

    else
    {
      if (v5 != 2)
      {
        v18 = __biome_log_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [CCSnapshotUtilities _filenameWithTimestamp:v5 set:v18 format:?];
        }

        v16 = 0;
        goto LABEL_16;
      }

      v17 = @"json";
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@_%@.%@", v10, v15, v7, v17];
LABEL_16:

    goto LABEL_17;
  }

  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CCSnapshotUtilities _filenameWithTimestamp:v8 set:v10 format:?];
  }

  v16 = 0;
LABEL_17:

  return v16;
}

+ (id)pathFromDate:(id)a3
{
  v3 = MEMORY[0x1E696AB78];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyy.MM.dd_hh-mm-ss.SSSZZZ"];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

+ (id)snapshotSets:(id)a3 directory:(id)a4 useCase:(id)a5 format:(unsigned __int8)a6 date:(id)a7 error:(id *)a8
{
  v45 = a6;
  v58 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v39 = a5;
  v35 = a7;
  v44 = [objc_opt_class() pathFromDate:v35];
  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    *v57 = [v11 count];
    *&v57[4] = 2112;
    *&v57[6] = v44;
    *&v57[14] = 2112;
    *&v57[16] = v12;
    *&v57[24] = 2112;
    *&v57[26] = v11;
    _os_log_impl(&dword_1B6DB2000, v13, OS_LOG_TYPE_DEFAULT, "Capturing %u set snapshot(s) with timestamp: %@ to directory: %@ [%@]", buf, 0x26u);
  }

  v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v11;
  v43 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  v14 = 0;
  if (v43)
  {
    v41 = *v50;
    v37 = *MEMORY[0x1E696A278];
    v38 = *MEMORY[0x1E696A250];
    v42 = v12;
    do
    {
      v15 = 0;
      v16 = v14;
      do
      {
        if (*v50 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v49 + 1) + 8 * v15);
        v18 = objc_autoreleasePoolPush();
        v19 = [objc_opt_class() _filenameWithTimestamp:v44 set:v17 format:v45];
        v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:v19 isDirectory:0 relativeToURL:v12];
        v21 = [MEMORY[0x1E695DFC0] outputStreamWithURL:v20 append:0];
        [v21 open];
        if ([v21 streamStatus] != 2)
        {
          v28 = MEMORY[0x1E696ABC0];
          v53 = v37;
          v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to open NSOutputStream with filename: %@ directory: %@", v19, v12];
          v54 = v29;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          v14 = [v28 errorWithDomain:v38 code:-1000 userInfo:v30];

          v31 = __biome_log_for_category();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v57 = v17;
            *&v57[8] = 2112;
            *&v57[10] = v14;
            _os_log_error_impl(&dword_1B6DB2000, v31, OS_LOG_TYPE_ERROR, "Failed to create snapshot file for set: %@ error: %@", buf, 0x16u);
          }

          v27 = 0;
          v22 = v46;
          goto LABEL_20;
        }

        v48 = v16;
        v22 = [v17 serializeWithUseCase:v39 error:&v48];
        v14 = v48;

        if (!v22)
        {
          v32 = __biome_log_for_category();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v57 = v17;
            *&v57[8] = 2112;
            *&v57[10] = v14;
            _os_log_error_impl(&dword_1B6DB2000, v32, OS_LOG_TYPE_ERROR, "Failed to serialize set: %@ error: %@", buf, 0x16u);
          }

          v27 = 0;
LABEL_20:
          v46 = 0;
          goto LABEL_25;
        }

        v47 = v14;
        v23 = [v22 writeToStream:v21 format:v45 error:&v47];
        v24 = v47;

        v25 = __biome_log_for_category();
        v26 = v25;
        if (v23)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v57 = v20;
            _os_log_impl(&dword_1B6DB2000, v26, OS_LOG_TYPE_DEFAULT, "Snapshot written to file: %@", buf, 0xCu);
          }

          [v46 addObject:v20];
          v27 = 1;
        }

        else
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            *v57 = v22;
            *&v57[8] = 2112;
            *&v57[10] = v21;
            *&v57[18] = 2112;
            *&v57[20] = v24;
            _os_log_error_impl(&dword_1B6DB2000, v26, OS_LOG_TYPE_ERROR, "Failed to write serialized set: %@ to stream: %@ error: %@", buf, 0x20u);
          }

          v27 = 0;
          v46 = 0;
        }

        v14 = v24;
LABEL_25:
        v12 = v42;

        objc_autoreleasePoolPop(v18);
        if (!v27)
        {
          goto LABEL_28;
        }

        ++v15;
        v16 = v14;
      }

      while (v43 != v15);
      v43 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v43);
  }

LABEL_28:

  CCSetError(a8, v14);
  v33 = *MEMORY[0x1E69E9840];

  return v46;
}

+ (void)_filenameWithTimestamp:(uint64_t)a1 set:(NSObject *)a2 format:.cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Unexpected set: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_filenameWithTimestamp:(int)a1 set:(NSObject *)a2 format:.cold.2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Unexpected format: %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end