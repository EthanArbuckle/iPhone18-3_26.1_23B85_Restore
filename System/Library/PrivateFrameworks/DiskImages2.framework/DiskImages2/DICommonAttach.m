@interface DICommonAttach
+ (BOOL)DI1_attachWithDictionary:(id)a3 BSDName:(id *)a4 error:(id *)a5;
+ (BOOL)DI2_attachWithParams:(id)a3 BSDName:(id *)a4 error:(id *)a5;
+ (BOOL)defaultDiskImageAttach:(id)a3 BSDName:(id *)a4 error:(id *)a5;
+ (BOOL)diskImageAttach:(id)a3 BSDName:(id *)a4 error:(id *)a5;
@end

@implementation DICommonAttach

+ (BOOL)DI2_attachWithParams:(id)a3 BSDName:(id *)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = *__error();
  if (DIForwardLogs())
  {
    v28 = 0;
    v9 = getDIOSLog();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    *&buf[4] = 53;
    v30 = 2080;
    v31 = "+[DICommonAttach DI2_attachWithParams:BSDName:error:]";
    LODWORD(v26) = 18;
    v25 = buf;
    v10 = _os_log_send_and_compose_impl();

    if (v10)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v10);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 53;
      v30 = 2080;
      v31 = "+[DICommonAttach DI2_attachWithParams:BSDName:error:]";
      _os_log_impl(&dword_248DE0000, v11, OS_LOG_TYPE_DEFAULT, "%.*s: entry", buf, 0x12u);
    }
  }

  LOBYTE(v12) = 0;
  *__error() = v8;
  if (v7 && a4 && a5)
  {
    v13 = [v7 inputURL];
    v14 = [v13 pathExtension];
    v15 = [v14 isEqualToString:@"sparseimage"];

    if (v15)
    {
      LOBYTE(v12) = [DIError failWithPOSIXCode:45 verboseInfo:@"Sparse images are not supported by DI2" error:a5];
    }

    else
    {
      v27 = 0;
      v12 = [DiskImages2 attachWithParams:v7 handle:&v27 error:a5];
      v16 = v27;
      if (v12)
      {
        v17 = *__error();
        if (DIForwardLogs())
        {
          v28 = 0;
          v18 = getDIOSLog();
          os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          v19 = [v16 BSDName];
          *buf = 0x3504100302;
          v30 = 2080;
          v31 = "+[DICommonAttach DI2_attachWithParams:BSDName:error:]";
          v32 = 2114;
          v33 = v19;
          v20 = _os_log_send_and_compose_impl();

          if (v20)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v20);
            free(v20);
          }
        }

        else
        {
          v21 = getDIOSLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v16 BSDName];
            *buf = 0x3504100302;
            v30 = 2080;
            v31 = "+[DICommonAttach DI2_attachWithParams:BSDName:error:]";
            v32 = 2114;
            v33 = v22;
            _os_log_impl(&dword_248DE0000, v21, OS_LOG_TYPE_DEFAULT, "%.*s: Disk image attached (with DI2) as %{public}@", buf, 0x1Cu);
          }
        }

        *__error() = v17;
        *a4 = [v16 BSDName];
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (BOOL)DI1_attachWithDictionary:(id)a3 BSDName:(id *)a4 error:(id *)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = *__error();
  if (DIForwardLogs())
  {
    v9 = getDIOSLog();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v16 = 57;
    v17 = 2080;
    v18 = "+[DICommonAttach DI1_attachWithDictionary:BSDName:error:]";
    v10 = _os_log_send_and_compose_impl();

    if (v10)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v10);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v16 = 57;
      v17 = 2080;
      v18 = "+[DICommonAttach DI1_attachWithDictionary:BSDName:error:]";
      _os_log_impl(&dword_248DE0000, v11, OS_LOG_TYPE_DEFAULT, "%.*s: entry", buf, 0x12u);
    }
  }

  v12 = __error();
  result = 0;
  *v12 = v8;
  if (a3 && a4 && a5)
  {
    result = [DIError failWithPOSIXCode:45 verboseInfo:@"Attach with legacy DiskImages framework is not supported on embedded platforms" error:a5];
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)defaultDiskImageAttach:(id)a3 BSDName:(id *)a4 error:(id *)a5
{
  if (a3)
  {
    return [a1 diskImageAttach:a3 readOnly:0 autoMount:1 BSDName:a4 error:a5];
  }

  else
  {
    return [DIError failWithPOSIXCode:22 verboseInfo:@"nil URL specified" error:a5];
  }
}

+ (BOOL)diskImageAttach:(id)a3 BSDName:(id *)a4 error:(id *)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    v9 = *__error();
    if (DIForwardLogs())
    {
      v39 = 0;
      v10 = getDIOSLog();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      v11 = [v8 inputURL];
      v12 = [v11 path];
      *buf = 68158211;
      v41 = 48;
      v42 = 2080;
      v43 = "+[DICommonAttach diskImageAttach:BSDName:error:]";
      v44 = 2113;
      v45 = v12;
      LODWORD(v33) = 28;
      v32 = buf;
      v13 = _os_log_send_and_compose_impl();

      if (v13)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
        free(v13);
      }
    }

    else
    {
      v15 = getDIOSLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v8 inputURL];
        v17 = [v16 path];
        *buf = 68158211;
        v41 = 48;
        v42 = 2080;
        v43 = "+[DICommonAttach diskImageAttach:BSDName:error:]";
        v44 = 2113;
        v45 = v17;
        _os_log_impl(&dword_248DE0000, v15, OS_LOG_TYPE_DEFAULT, "%.*s: entry with %{private}@", buf, 0x1Cu);
      }
    }

    *__error() = v9;
    v18 = objc_autoreleasePoolPush();
    v37 = 0;
    v38 = 0;
    v19 = [a1 DI2_attachWithParams:v8 BSDName:&v38 error:&v37];
    v20 = v38;
    v21 = v37;
    v22 = v21;
    if (v19)
    {
      v14 = 1;
    }

    else if ([v21 code] == 45 || objc_msgSend(v22, "code") == 35)
    {
      v23 = [v8 toDI1ParamsWithError:{0, v32, v33}];
      if (v23)
      {
        v24 = *__error();
        if (DIForwardLogs())
        {
          v34 = v24;
          v39 = 0;
          v25 = getDIOSLog();
          os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          *buf = 68157954;
          v41 = 48;
          v42 = 2080;
          v43 = "+[DICommonAttach diskImageAttach:BSDName:error:]";
          v26 = _os_log_send_and_compose_impl();

          if (v26)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v26);
            free(v26);
          }

          v24 = v34;
        }

        else
        {
          v27 = getDIOSLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68157954;
            v41 = 48;
            v42 = 2080;
            v43 = "+[DICommonAttach diskImageAttach:BSDName:error:]";
            _os_log_impl(&dword_248DE0000, v27, OS_LOG_TYPE_DEFAULT, "%.*s: Falling back to attach with di1", buf, 0x12u);
          }
        }

        *__error() = v24;

        v35 = 0;
        v36 = v20;
        v14 = [a1 DI1_attachWithDictionary:v23 BSDName:&v36 error:&v35];
        v28 = v36;

        v22 = v35;
        v20 = v28;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    objc_autoreleasePoolPop(v18);
    if (a5 && (v29 = v22) != 0 || a4 && (v29 = v20, a5 = a4, !v22))
    {
      *a5 = v29;
    }
  }

  else
  {
    v14 = [DIError failWithPOSIXCode:22 verboseInfo:@"nil params specified" error:a5];
  }

  v30 = *MEMORY[0x277D85DE8];
  return v14;
}

@end