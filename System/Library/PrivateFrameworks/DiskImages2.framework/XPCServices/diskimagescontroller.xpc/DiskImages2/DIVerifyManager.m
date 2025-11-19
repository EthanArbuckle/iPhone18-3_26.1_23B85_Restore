@interface DIVerifyManager
- (BOOL)runWithError:(id *)a3;
- (DIVerifyManager)initWithParams:(id)a3;
@end

@implementation DIVerifyManager

- (DIVerifyManager)initWithParams:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DIVerifyManager;
  v6 = [(DIVerifyManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_verifyParams, a3);
  }

  return v7;
}

- (BOOL)runWithError:(id *)a3
{
  v5 = *__error();
  if (sub_1000E044C())
  {
    *__p = 0;
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    *&buf[4] = 32;
    v23 = 2080;
    v24 = "[DIVerifyManager runWithError:]";
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      fprintf(__stderrp, "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = sub_1000E03D8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 32;
      v23 = 2080;
      v24 = "[DIVerifyManager runWithError:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%.*s: entry", buf, 0x12u);
    }
  }

  *__error() = v5;
  v9 = [(DIVerifyManager *)self verifyParams];
  v10 = [v9 diskImageParamsXPC];
  v11 = [(DIVerifyManager *)self verifyParams];
  v12 = [v11 shadowChain];
  v13 = [v12 shouldValidate];
  if (v10)
  {
    [v10 createDiskImageWithCache:0 shadowValidation:v13];
  }

  else
  {
    v19 = 0;
  }

  v21 = 15;
  strcpy(__p, "DI Verify Queue");
  sub_100046794(buf);
  if (v21 < 0)
  {
    operator delete(*__p);
  }

  v14 = (*(*v19 + 64))(v19, buf, 1);
  if (v14)
  {
    v15 = *__error();
    if (sub_1000E044C())
    {
      v16 = sub_1000E03D8();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      *__p = 0x2004100202;
      *&__p[8] = 2080;
      *&__p[10] = "[DIVerifyManager runWithError:]";
      v17 = _os_log_send_and_compose_impl();

      if (v17)
      {
        fprintf(__stderrp, "%s\n", v17);
        free(v17);
      }
    }

    else
    {
      v16 = sub_1000E03D8();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0x2004100202;
        *&__p[8] = 2080;
        *&__p[10] = "[DIVerifyManager runWithError:]";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%.*s: Verify passed", __p, 0x12u);
      }
    }

    *__error() = v15;
  }

  else
  {
    LOBYTE(v16) = [DIError failWithEnumValue:152 description:@"Disk image verification failed" error:a3];
  }

  *__p = &v26;
  sub_10000E990(__p);
  if (v25 < 0)
  {
    operator delete(*buf);
  }

  if (v19)
  {
    (*(*v19 + 16))(v19);
  }

  return (v14 | v16) & 1;
}

@end