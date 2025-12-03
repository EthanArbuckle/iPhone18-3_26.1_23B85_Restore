@interface GDFileOpen
+ (BOOL)setFileLimitWithError:(id *)error;
@end

@implementation GDFileOpen

+ (BOOL)setFileLimitWithError:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  v27.rlim_cur = 0;
  v27.rlim_max = 0;
  if (getrlimit(8, &v27))
  {
    if (error)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      v11 = objc_msgSend_initWithFormat_(v5, v9, @"Unable to get rlimit [%i] %s", v10, v6, v8);
      v12 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v29 = v11;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, &v29, &v28, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v12, v15, @"com.apple.IntelligencePlatform.IntelligencePlatformCompute", 2, v14);
      *error = LABEL_4:;

      objc_autoreleasePoolPop(v4);
    }
  }

  else
  {
    if (v27.rlim_cur > 0x4FF || (v27.rlim_cur = 1280, !setrlimit(8, &v27)))
    {
      result = 1;
      goto LABEL_11;
    }

    if (error)
    {
      v4 = objc_autoreleasePoolPush();
      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      v18 = *__error();
      v19 = __error();
      v20 = strerror(*v19);
      v11 = objc_msgSend_initWithFormat_(v17, v21, @"Unable to set rlimit [%i] %s", v22, v18, v20);
      v23 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      v31[0] = v11;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v31, &v30, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"com.apple.IntelligencePlatform.IntelligencePlatformCompute", 1, v14);
      goto LABEL_4;
    }
  }

  result = 0;
LABEL_11:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

@end