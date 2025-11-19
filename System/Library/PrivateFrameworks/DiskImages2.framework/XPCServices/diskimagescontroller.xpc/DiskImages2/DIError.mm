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
      [NSString stringWithFormat:@"Disk image operation failed with error code %d", a3];
      return objc_claimAutoreleasedReturnValue();
    }

    return @"The disk image format is not supported by this OS";
  }
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 verboseInfo:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = +[NSMutableDictionary dictionary];
  v15 = [v11 isEqualToString:NSPOSIXErrorDomain];
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

  v18 = [NSString stringWithFormat:@"(err code %d)", v17];
  if (v12)
  {
    [v14 setObject:v12 forKeyedSubscript:NSLocalizedDescriptionKey];
    if (v13)
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
          v42 = v12;
          v43 = 2114;
          v44 = v13;
          v45 = 2114;
          v46 = v18;
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
      v42 = v12;
      v43 = 2114;
      v44 = v13;
      v45 = 2114;
      v46 = v18;
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
        v42 = v12;
        v43 = 2114;
        v44 = v18;
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
    v42 = v12;
    v43 = 2114;
    v44 = v18;
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
    if (v13)
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
          v42 = v13;
          v43 = 2114;
          v44 = v18;
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
      v42 = v13;
      v43 = 2114;
      v44 = v18;
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
      [v14 setObject:v13 forKeyedSubscript:{@"DIErrorVerboseInfo", v35, v36}];
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
        v42 = v11;
        v43 = 2114;
        v44 = v18;
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
    v42 = v11;
    v43 = 2114;
    v44 = v18;
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
  v31 = [NSError errorWithDomain:v11 code:v17 userInfo:v14, v35, v36];
  v32 = v31;
  if (a7)
  {
    v33 = v31;
    *a7 = v32;
  }

  return v32;
}

+ (id)errorWithPOSIXCode:(int)a3 verboseInfo:(id)a4
{
  v4 = [DIError errorWithDomain:NSPOSIXErrorDomain code:a3 description:0 verboseInfo:a4 error:0];

  return v4;
}

+ (id)errorWithEnumValue:(int64_t)a3 verboseInfo:(id)a4
{
  v4 = [DIError errorWithDomain:@"com.apple.DiskImages2.ErrorDomain" code:a3 description:0 verboseInfo:a4 error:0];

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

  v13 = NSPOSIXErrorDomain;
  if (v12 >= 0x6C)
  {
    v13 = @"com.apple.DiskImages2.ErrorDomain";
  }

  v14 = v13;
  v15 = (*(*a3 + 16))(a3);
  if (v10)
  {
    [NSString stringWithFormat:@"%@: %s", v10, v15];
  }

  else
  {
    [NSString stringWithUTF8String:v15];
  }
  v16 = ;
  v17 = [DIError errorWithDomain:v14 code:v12 description:v9 verboseInfo:v16 error:a6];

  return v17;
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
    v6 = NSPOSIXErrorDomain;
  }

  v7 = [DIError errorWithDomain:"errorWithDomain:code:description:verboseInfo:error:" code:v6 description:? verboseInfo:? error:?];

  return v7;
}

@end