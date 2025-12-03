@interface DIError
+ (BOOL)failWithInError:(id)error outError:(id *)outError;
+ (NSBundle)frameworkBundle;
+ (id)copyDefaultLocalizedStringForDIErrorCode:(int64_t)code;
+ (id)errorWithDIException:(const void *)exception description:(id)description prefix:(id)prefix error:(id *)error;
+ (id)errorWithDomain:(id)domain code:(int64_t)code description:(id)description verboseInfo:(id)info error:(id *)error;
+ (id)errorWithEnumValue:(int64_t)value verboseInfo:(id)info;
+ (id)errorWithPOSIXCode:(int)code verboseInfo:(id)info;
+ (id)errorWithUnexpected:(unexpected<std:(id)unexpected :(id *)a5 error_code>)a3 verboseInfo:error:;
@end

@implementation DIError

+ (id)copyDefaultLocalizedStringForDIErrorCode:(int64_t)code
{
  if (code > 165)
  {
    if (code == 166)
    {
      return @"Corrupted shadow file(s) chain";
    }

    if (code != 168)
    {
      if (code == 169)
      {
        return @"Passphrase is too long";
      }

      goto LABEL_12;
    }

    return @"Passphrase cannot be empty";
  }

  else
  {
    if (code == 152)
    {
      return @"The disk image is corrupted";
    }

    if (code != 161)
    {
      if (code == 165)
      {
        return @"Failed to mount filesystems";
      }

LABEL_12:
      [MEMORY[0x277CCACA8] stringWithFormat:@"Disk image operation failed with error code %d", code];
      return objc_claimAutoreleasedReturnValue();
    }

    return @"The disk image format is not supported by this OS";
  }
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code description:(id)description verboseInfo:(id)info error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  descriptionCopy = description;
  infoCopy = info;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = [domainCopy isEqualToString:*MEMORY[0x277CCA5B8]];
  if (code >= 0)
  {
    codeCopy = code;
  }

  else
  {
    codeCopy = -code;
  }

  if (v15)
  {
    codeCopy2 = codeCopy;
  }

  else
  {
    codeCopy2 = code;
  }

  if (!descriptionCopy)
  {
    if ([domainCopy isEqualToString:@"com.apple.DiskImages2.ErrorDomain"])
    {
      descriptionCopy = [DIError copyDefaultLocalizedStringForDIErrorCode:codeCopy2];
    }

    else
    {
      descriptionCopy = 0;
    }
  }

  codeCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(err code %d)", codeCopy2];
  if (descriptionCopy)
  {
    [dictionary setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x277CCA450]];
    if (infoCopy)
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
          v43 = descriptionCopy;
          v44 = 2114;
          v45 = infoCopy;
          v46 = 2114;
          v47 = codeCopy2;
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
      v43 = descriptionCopy;
      v44 = 2114;
      v45 = infoCopy;
      v46 = 2114;
      v47 = codeCopy2;
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
        v43 = descriptionCopy;
        v44 = 2114;
        v45 = codeCopy2;
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
    v43 = descriptionCopy;
    v44 = 2114;
    v45 = codeCopy2;
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
    if (infoCopy)
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
          v43 = infoCopy;
          v44 = 2114;
          v45 = codeCopy2;
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
      v43 = infoCopy;
      v44 = 2114;
      v45 = codeCopy2;
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
      [dictionary setObject:infoCopy forKeyedSubscript:{@"DIErrorVerboseInfo", v36, v37}];
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
        v43 = domainCopy;
        v44 = 2114;
        v45 = codeCopy2;
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
    v43 = domainCopy;
    v44 = 2114;
    v45 = codeCopy2;
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
  v31 = [MEMORY[0x277CCA9B8] errorWithDomain:domainCopy code:codeCopy2 userInfo:{dictionary, v36, v37}];
  v32 = v31;
  if (error)
  {
    v33 = v31;
    *error = v32;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (id)errorWithPOSIXCode:(int)code verboseInfo:(id)info
{
  v4 = [DIError errorWithDomain:*MEMORY[0x277CCA5B8] code:code description:0 verboseInfo:info error:0];

  return v4;
}

+ (id)errorWithEnumValue:(int64_t)value verboseInfo:(id)info
{
  v4 = [DIError errorWithDomain:@"com.apple.DiskImages2.ErrorDomain" code:value description:0 verboseInfo:info error:0];

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

+ (BOOL)failWithInError:(id)error outError:(id *)outError
{
  if (outError)
  {
    *outError = error;
  }

  return 0;
}

+ (id)errorWithDIException:(const void *)exception description:(id)description prefix:(id)prefix error:(id *)error
{
  descriptionCopy = description;
  prefixCopy = prefix;
  v11 = *(exception + 2);
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
  v16 = (*(*exception + 16))(exception);
  if (prefixCopy)
  {
    [v15 stringWithFormat:@"%@: %s", prefixCopy, v16];
  }

  else
  {
    [v15 stringWithUTF8String:v16];
  }
  v17 = ;
  v18 = [DIError errorWithDomain:v14 code:v12 description:descriptionCopy verboseInfo:v17 error:error];

  return v18;
}

+ (id)errorWithUnexpected:(unexpected<std:(id)unexpected :(id *)a5 error_code>)a3 verboseInfo:error:
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