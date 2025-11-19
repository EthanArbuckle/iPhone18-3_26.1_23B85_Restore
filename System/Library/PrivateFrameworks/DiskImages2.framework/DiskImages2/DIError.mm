@interface DIError
+ (BOOL)failWithInError:(id)a3 outError:(id *)a4;
+ (NSBundle)frameworkBundle;
+ (id)copyDefaultLocalizedStringForDIErrorCode:(int64_t)a3;
+ (id)errorWithDIException:(const void *)a3 description:(id)a4 prefix:(id)a5 error:(id *)a6;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 verboseInfo:(id)a6 error:(id *)a7;
+ (id)errorWithEnumValue:(int64_t)a3 verboseInfo:(id)a4;
+ (id)errorWithPOSIXCode:(int)a3 verboseInfo:(id)a4;
+ (id)errorWithUnexpected:(unexpected<std:(id)a4 :(id *)a5 error_code>)a3 verboseInfo:error:;
@end

@implementation DIError

+ (id)copyDefaultLocalizedStringForDIErrorCode:(int64_t)a3
{
  if (a3 > 165)
  {
    if (a3 == 166)
    {
      return @"Corrupted shadow file(s) chain";
    }

    if (a3 != 168)
    {
      if (a3 == 169)
      {
        return @"Passphrase is too long";
      }

      goto LABEL_12;
    }

    return @"Passphrase cannot be empty";
  }

  else
  {
    if (a3 == 152)
    {
      return @"The disk image is corrupted";
    }

    if (a3 != 161)
    {
      if (a3 == 165)
      {
        return @"Failed to mount filesystems";
      }

LABEL_12:
      [MEMORY[0x277CCACA8] stringWithFormat:@"Disk image operation failed with error code %d", a3];
      return objc_claimAutoreleasedReturnValue();
    }

    return @"The disk image format is not supported by this OS";
  }
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 verboseInfo:(id)a6 error:(id *)a7
{
  v48 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = [v11 isEqualToString:*MEMORY[0x277CCA5B8]];
  if (a4 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = -a4;
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = a4;
  }

  if (!v12)
  {
    if ([v11 isEqualToString:@"com.apple.DiskImages2.ErrorDomain"])
    {
      v12 = [DIError copyDefaultLocalizedStringForDIErrorCode:v17];
    }

    else
    {
      v12 = 0;
    }
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(err code %d)", v17];
  if (v12)
  {
    [v14 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA450]];
    if (v13)
    {
      v19 = *__error();
      if (!DIForwardLogs())
      {
        v26 = getDIOSLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 68158722;
          v39 = 62;
          v40 = 2080;
          v41 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
          v42 = 2114;
          v43 = v12;
          v44 = 2114;
          v45 = v13;
          v46 = 2114;
          v47 = v18;
          _os_log_impl(&dword_248DE0000, v26, OS_LOG_TYPE_ERROR, "%.*s: %{public}@ - %{public}@ %{public}@", buf, 0x30u);
        }

        goto LABEL_33;
      }

      v20 = getDIOSLog();
      os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
      *buf = 68158722;
      v39 = 62;
      v40 = 2080;
      v41 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
      v42 = 2114;
      v43 = v12;
      v44 = 2114;
      v45 = v13;
      v46 = 2114;
      v47 = v18;
      LODWORD(v37) = 48;
      v36 = buf;
      v21 = _os_log_send_and_compose_impl();

      if (v21)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }

    v23 = *__error();
    if (!DIForwardLogs())
    {
      v29 = getDIOSLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 68158466;
        v39 = 62;
        v40 = 2080;
        v41 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
        v42 = 2114;
        v43 = v12;
        v44 = 2114;
        v45 = v18;
        _os_log_impl(&dword_248DE0000, v29, OS_LOG_TYPE_ERROR, "%.*s: %{public}@ %{public}@", buf, 0x26u);
      }

      goto LABEL_41;
    }

    v24 = getDIOSLog();
    os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    *buf = 68158466;
    v39 = 62;
    v40 = 2080;
    v41 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
    v42 = 2114;
    v43 = v12;
    v44 = 2114;
    v45 = v18;
    LODWORD(v37) = 38;
    v36 = buf;
    v25 = _os_log_send_and_compose_impl();

    if (v25)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v13)
    {
      v19 = *__error();
      if (!DIForwardLogs())
      {
        v28 = getDIOSLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 68158466;
          v39 = 62;
          v40 = 2080;
          v41 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
          v42 = 2114;
          v43 = v13;
          v44 = 2114;
          v45 = v18;
          _os_log_impl(&dword_248DE0000, v28, OS_LOG_TYPE_ERROR, "%.*s: %{public}@ %{public}@", buf, 0x26u);
        }

        goto LABEL_33;
      }

      v22 = getDIOSLog();
      os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      *buf = 68158466;
      v39 = 62;
      v40 = 2080;
      v41 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
      v42 = 2114;
      v43 = v13;
      v44 = 2114;
      v45 = v18;
      LODWORD(v37) = 38;
      v36 = buf;
      v21 = _os_log_send_and_compose_impl();

      if (v21)
      {
LABEL_19:
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v21);
        free(v21);
      }

LABEL_33:
      *__error() = v19;
      [v14 setObject:v13 forKeyedSubscript:{@"DIErrorVerboseInfo", v36, v37}];
      goto LABEL_42;
    }

    v23 = *__error();
    if (!DIForwardLogs())
    {
      v30 = getDIOSLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 68158466;
        v39 = 62;
        v40 = 2080;
        v41 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
        v42 = 2114;
        v43 = v11;
        v44 = 2114;
        v45 = v18;
        _os_log_impl(&dword_248DE0000, v30, OS_LOG_TYPE_ERROR, "%.*s: %{public}@ error %{public}@", buf, 0x26u);
      }

      goto LABEL_41;
    }

    v27 = getDIOSLog();
    os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    *buf = 68158466;
    v39 = 62;
    v40 = 2080;
    v41 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
    v42 = 2114;
    v43 = v11;
    v44 = 2114;
    v45 = v18;
    LODWORD(v37) = 38;
    v36 = buf;
    v25 = _os_log_send_and_compose_impl();

    if (v25)
    {
LABEL_29:
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v25);
      free(v25);
    }
  }

LABEL_41:
  *__error() = v23;
LABEL_42:
  v31 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:v17 userInfo:{v14, v36, v37}];
  v32 = v31;
  if (a7)
  {
    v33 = v31;
    *a7 = v32;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (id)errorWithPOSIXCode:(int)a3 verboseInfo:(id)a4
{
  v4 = [DIError errorWithDomain:*MEMORY[0x277CCA5B8] code:a3 description:0 verboseInfo:a4 error:0];

  return v4;
}

+ (id)errorWithEnumValue:(int64_t)a3 verboseInfo:(id)a4
{
  v4 = [DIError errorWithDomain:@"com.apple.DiskImages2.ErrorDomain" code:a3 description:0 verboseInfo:a4 error:0];

  return v4;
}

+ (NSBundle)frameworkBundle
{
  if (+[DIError frameworkBundle]::onceToken != -1)
  {
    +[DIError frameworkBundle];
  }

  v3 = +[DIError frameworkBundle]::_bundle;

  return v3;
}

void __26__DIError_frameworkBundle__block_invoke()
{
  v0 = MEMORY[0x277CCA8D8];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/DiskImages2.framework"];
  v1 = [v0 bundleWithURL:?];
  v2 = +[DIError frameworkBundle]::_bundle;
  +[DIError frameworkBundle]::_bundle = v1;
}

+ (BOOL)failWithInError:(id)a3 outError:(id *)a4
{
  if (a4)
  {
    *a4 = a3;
  }

  return 0;
}

+ (id)errorWithDIException:(const void *)a3 description:(id)a4 prefix:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = *(a3 + 2);
  if (v11 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  v13 = *MEMORY[0x277CCA5B8];
  if (v12 >= 0x6C)
  {
    v13 = @"com.apple.DiskImages2.ErrorDomain";
  }

  v14 = v13;
  v15 = MEMORY[0x277CCACA8];
  v16 = (*(*a3 + 16))(a3);
  if (v10)
  {
    [v15 stringWithFormat:@"%@: %s", v10, v16];
  }

  else
  {
    [v15 stringWithUTF8String:v16];
  }
  v17 = ;
  v18 = [DIError errorWithDomain:v14 code:v12 description:v9 verboseInfo:v17 error:a6];

  return v18;
}

+ (id)errorWithUnexpected:(unexpected<std:(id)a4 :(id *)a5 error_code>)a3 verboseInfo:error:
{
  if (a3.var0.var0 >= 0)
  {
    var0 = a3.var0.var0;
  }

  else
  {
    var0 = -a3.var0.var0;
  }

  if (var0 >= 0x6C)
  {
    v6 = @"com.apple.DiskImages2.ErrorDomain";
  }

  else
  {
    v6 = *MEMORY[0x277CCA5B8];
  }

  v7 = [DIError errorWithDomain:"errorWithDomain:code:description:verboseInfo:error:" code:v6 description:? verboseInfo:? error:?];

  return v7;
}

@end