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
      [NSString stringWithFormat:@"Disk image operation failed with error code %d", code];
      return objc_claimAutoreleasedReturnValue();
    }

    return @"The disk image format is not supported by this OS";
  }
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code description:(id)description verboseInfo:(id)info error:(id *)error
{
  domainCopy = domain;
  descriptionCopy = description;
  infoCopy = info;
  v14 = +[NSMutableDictionary dictionary];
  v15 = [domainCopy isEqualToString:NSPOSIXErrorDomain];
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

  codeCopy2 = [NSString stringWithFormat:@"(err code %d)", codeCopy2];
  if (descriptionCopy)
  {
    [v14 setObject:descriptionCopy forKeyedSubscript:NSLocalizedDescriptionKey];
    if (infoCopy)
    {
      v19 = *__error();
      if (!sub_1000E044C())
      {
        v26 = sub_1000E03D8();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 68158722;
          v38 = 62;
          v39 = 2080;
          v40 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
          v41 = 2114;
          v42 = descriptionCopy;
          v43 = 2114;
          v44 = infoCopy;
          v45 = 2114;
          v46 = codeCopy2;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%.*s: %{public}@ - %{public}@ %{public}@", buf, 0x30u);
        }

        goto LABEL_33;
      }

      v20 = sub_1000E03D8();
      os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
      *buf = 68158722;
      v38 = 62;
      v39 = 2080;
      v40 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
      v41 = 2114;
      v42 = descriptionCopy;
      v43 = 2114;
      v44 = infoCopy;
      v45 = 2114;
      v46 = codeCopy2;
      LODWORD(v36) = 48;
      v35 = buf;
      v21 = _os_log_send_and_compose_impl();

      if (v21)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }

    v23 = *__error();
    if (!sub_1000E044C())
    {
      v29 = sub_1000E03D8();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 68158466;
        v38 = 62;
        v39 = 2080;
        v40 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
        v41 = 2114;
        v42 = descriptionCopy;
        v43 = 2114;
        v44 = codeCopy2;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%.*s: %{public}@ %{public}@", buf, 0x26u);
      }

      goto LABEL_41;
    }

    v24 = sub_1000E03D8();
    os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    *buf = 68158466;
    v38 = 62;
    v39 = 2080;
    v40 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
    v41 = 2114;
    v42 = descriptionCopy;
    v43 = 2114;
    v44 = codeCopy2;
    LODWORD(v36) = 38;
    v35 = buf;
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
      if (!sub_1000E044C())
      {
        v28 = sub_1000E03D8();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 68158466;
          v38 = 62;
          v39 = 2080;
          v40 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
          v41 = 2114;
          v42 = infoCopy;
          v43 = 2114;
          v44 = codeCopy2;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%.*s: %{public}@ %{public}@", buf, 0x26u);
        }

        goto LABEL_33;
      }

      v22 = sub_1000E03D8();
      os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      *buf = 68158466;
      v38 = 62;
      v39 = 2080;
      v40 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
      v41 = 2114;
      v42 = infoCopy;
      v43 = 2114;
      v44 = codeCopy2;
      LODWORD(v36) = 38;
      v35 = buf;
      v21 = _os_log_send_and_compose_impl();

      if (v21)
      {
LABEL_19:
        fprintf(__stderrp, "%s\n", v21);
        free(v21);
      }

LABEL_33:
      *__error() = v19;
      [v14 setObject:infoCopy forKeyedSubscript:{@"DIErrorVerboseInfo", v35, v36}];
      goto LABEL_42;
    }

    v23 = *__error();
    if (!sub_1000E044C())
    {
      v30 = sub_1000E03D8();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 68158466;
        v38 = 62;
        v39 = 2080;
        v40 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
        v41 = 2114;
        v42 = domainCopy;
        v43 = 2114;
        v44 = codeCopy2;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%.*s: %{public}@ error %{public}@", buf, 0x26u);
      }

      goto LABEL_41;
    }

    v27 = sub_1000E03D8();
    os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    *buf = 68158466;
    v38 = 62;
    v39 = 2080;
    v40 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
    v41 = 2114;
    v42 = domainCopy;
    v43 = 2114;
    v44 = codeCopy2;
    LODWORD(v36) = 38;
    v35 = buf;
    v25 = _os_log_send_and_compose_impl();

    if (v25)
    {
LABEL_29:
      fprintf(__stderrp, "%s\n", v25);
      free(v25);
    }
  }

LABEL_41:
  *__error() = v23;
LABEL_42:
  v31 = [NSError errorWithDomain:domainCopy code:codeCopy2 userInfo:v14, v35, v36];
  v32 = v31;
  if (error)
  {
    v33 = v31;
    *error = v32;
  }

  return v32;
}

+ (id)errorWithPOSIXCode:(int)code verboseInfo:(id)info
{
  v4 = [DIError errorWithDomain:NSPOSIXErrorDomain code:code description:0 verboseInfo:info error:0];

  return v4;
}

+ (id)errorWithEnumValue:(int64_t)value verboseInfo:(id)info
{
  v4 = [DIError errorWithDomain:@"com.apple.DiskImages2.ErrorDomain" code:value description:0 verboseInfo:info error:0];

  return v4;
}

+ (NSBundle)frameworkBundle
{
  if (qword_100240B30 != -1)
  {
    sub_1001A347C();
  }

  v3 = qword_100240B28;

  return v3;
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

  v13 = NSPOSIXErrorDomain;
  if (v12 >= 0x6C)
  {
    v13 = @"com.apple.DiskImages2.ErrorDomain";
  }

  v14 = v13;
  v15 = (*(*exception + 16))(exception);
  if (prefixCopy)
  {
    [NSString stringWithFormat:@"%@: %s", prefixCopy, v15];
  }

  else
  {
    [NSString stringWithUTF8String:v15];
  }
  v16 = ;
  v17 = [DIError errorWithDomain:v14 code:v12 description:descriptionCopy verboseInfo:v16 error:error];

  return v17;
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
    v6 = NSPOSIXErrorDomain;
  }

  v7 = [DIError errorWithDomain:"errorWithDomain:code:description:verboseInfo:error:" code:v6 description:? verboseInfo:? error:?];

  return v7;
}

@end