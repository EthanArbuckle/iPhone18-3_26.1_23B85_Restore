@interface CGZipUnarchiver
+ (BOOL)unarchiveZipAtURL:(id)l to:(id)to error:(id *)error;
@end

@implementation CGZipUnarchiver

+ (BOOL)unarchiveZipAtURL:(id)l to:(id)to error:(id *)error
{
  v43[1] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v34 = 0;
  objc_storeStrong(&v34, to);
  errorCopy = error;
  v32 = 0;
  v31[1] = BOMCopierNew();
  v31[0] = [MEMORY[0x1E695DF70] array];
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  BOMCopierSetFatalErrorHandler();
  v42 = @"extractPKZip";
  v43[0] = MEMORY[0x1E695E118];
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v29 = v5;
  v19 = location[0];
  v6 = location[0];
  [v19 fileSystemRepresentation];
  v20 = v34;
  v7 = v34;
  [v20 fileSystemRepresentation];
  v28 = BOMCopierCopyWithOptions();
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v27 = v8;
  BOMCopierFree();
  if (v28)
  {
    v24 = APDefaultLog();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v10 = [v31[0] count];
      __os_log_helper_16_2_3_8_0_8_0_8_66(v40, v10, COERCE__INT64(v27 - v29), v34);
      _os_log_error_impl(&dword_1C6DE9000, v24, v23, "failed to extract %lu files from zip archive in %.2fs to %{public}@", v40, 0x20u);
    }

    objc_storeStrong(&v24, 0);
    v13 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to extract resource %@", location[0]];
    v39 = v16;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:?];
    v15 = [v13 errorWithDomain:@"CGZipUnarchiverErrorDomain" code:1 userInfo:?];
    v11 = v15;
    *errorCopy = v15;
    MEMORY[0x1E69E5920](v14);
    MEMORY[0x1E69E5920](v16);
    v36 = 0;
    v22 = 1;
  }

  else
  {
    v32 += [v31[0] count];
    oslog = APDefaultLog();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v31[0] count];
      __os_log_helper_16_2_3_8_0_8_0_8_66(v41, v9, COERCE__INT64(v27 - v29), v34);
      _os_log_impl(&dword_1C6DE9000, oslog, type, "successfully extracted %lu files from zip archive in %.2fs to %{public}@", v41, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v21 = APDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_0_8_66(v37, v32, v34);
      _os_log_impl(&dword_1C6DE9000, v21, OS_LOG_TYPE_DEFAULT, "finished unzipping %lu total files to %{public}@", v37, 0x16u);
    }

    objc_storeStrong(&v21, 0);
    v36 = 1;
    v22 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(v31, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v36 & 1;
}

@end