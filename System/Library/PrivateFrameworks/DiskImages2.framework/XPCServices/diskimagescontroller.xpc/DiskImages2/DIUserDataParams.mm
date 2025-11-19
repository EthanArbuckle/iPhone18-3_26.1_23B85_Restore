@interface DIUserDataParams
- (BOOL)embedWithError:(id *)a3;
- (BOOL)openExistingImageWithError:(id *)a3;
- (BOOL)retrieveWithError:(id *)a3;
- (DIUserDataParams)initWithCoder:(id)a3;
- (DIUserDataParams)initWithURL:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIUserDataParams

- (DIUserDataParams)initWithURL:(id)a3 error:(id *)a4
{
  v8.receiver = self;
  v8.super_class = DIUserDataParams;
  v4 = [(DIBaseParams *)&v8 initWithURL:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    userDict = v4->_userDict;
    v4->_userDict = &__NSDictionary0__struct;
  }

  return v5;
}

- (DIUserDataParams)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DIUserDataParams;
  v5 = [(DIBaseParams *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userData"];
    if (v6)
    {
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
      v14 = 0;
      v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v9 fromData:v6 error:&v14];
      v11 = v14;
      userDict = v5->_userDict;
      v5->_userDict = v10;

      if (v11)
      {
        [(DIBaseParams *)v5 setDeserializationError:v11];
      }
    }

    else
    {
      v11 = [DIError errorWithPOSIXCode:22 verboseInfo:@"Failed serializing user dictionary"];
      [(DIBaseParams *)v5 setDeserializationError:v11];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DIUserDataParams;
  [(DIBaseParams *)&v16 encodeWithCoder:v4];
  v5 = [(DIUserDataParams *)self userDict];
  v15 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:0 error:&v15];
  v7 = v15;

  if (v7)
  {
    v8 = *__error();
    if (sub_1000E044C())
    {
      v14 = 0;
      v9 = sub_1000E03D8();
      os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      *buf = 68158210;
      v18 = 36;
      v19 = 2080;
      v20 = "[DIUserDataParams encodeWithCoder:]";
      v21 = 2114;
      v22 = v7;
      LODWORD(v13) = 28;
      v12 = buf;
      v10 = _os_log_send_and_compose_impl();

      if (v10)
      {
        fprintf(__stderrp, "%s\n", v10);
        free(v10);
      }
    }

    else
    {
      v11 = sub_1000E03D8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 68158210;
        v18 = 36;
        v19 = 2080;
        v20 = "[DIUserDataParams encodeWithCoder:]";
        v21 = 2114;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%.*s: Error encoding user dictionary: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v8;
  }

  [v4 encodeObject:v6 forKey:{@"userData", v12, v13, v14}];
}

- (BOOL)retrieveWithError:(id *)a3
{
  if (![(DIBaseParams *)self openExistingImageWithFlags:0 error:a3])
  {
    return 0;
  }

  v5 = *__error();
  if (sub_1000E044C())
  {
    v28 = 0;
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v30 = 38;
    v31 = 2080;
    v32 = "[DIUserDataParams retrieveWithError:]";
    v33 = 2114;
    v34 = self;
    LODWORD(v26) = 28;
    v25 = buf;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      fprintf(__stderrp, "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v9 = sub_1000E03D8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v30 = 38;
      v31 = 2080;
      v32 = "[DIUserDataParams retrieveWithError:]";
      v33 = 2114;
      v34 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  v10 = objc_alloc_init(DIClient2Controller_XPCHandler);
  if ([(DIClient2Controller_XPCHandler *)v10 connectWithError:a3]&& [(DIBaseParams *)self prepareImageWithXpcHandler:v10 fileMode:2 error:a3])
  {
    v11 = [(DIBaseParams *)self diskImageParamsXPC];
    v12 = [(DIBaseParams *)self shadowChain];
    v13 = [v12 shouldValidate];
    if (v11)
    {
      [v11 createDiskImageWithCache:0 shadowValidation:v13];
    }

    else
    {
      v28 = 0;
    }

    (*(*v28 + 112))(&cf);
    v14 = cf;
    CFRetain(cf);
    [(DIUserDataParams *)self setUserDict:v14];

    v15 = *__error();
    if (sub_1000E044C())
    {
      v16 = sub_1000E03D8();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      v17 = [(DIUserDataParams *)self userDict:v25];
      v18 = [v17 count];
      *buf = 68158210;
      v30 = 38;
      v31 = 2080;
      v32 = "[DIUserDataParams retrieveWithError:]";
      v33 = 1024;
      LODWORD(v34) = v18;
      v19 = _os_log_send_and_compose_impl();

      if (v19)
      {
        fprintf(__stderrp, "%s\n", v19);
        free(v19);
      }
    }

    else
    {
      v20 = sub_1000E03D8();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(DIUserDataParams *)self userDict];
        v22 = [v21 count];
        *buf = 68158210;
        v30 = 38;
        v31 = 2080;
        v32 = "[DIUserDataParams retrieveWithError:]";
        v33 = 1024;
        LODWORD(v34) = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%.*s: User data retrieving passed, %d value(s) found", buf, 0x18u);
      }
    }

    *__error() = v15;
    sub_10000C8E0(&cf);
    v23 = v28;
    v28 = 0;
    if (v23)
    {
      (*(*v23 + 16))(v23);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)embedWithError:(id *)a3
{
  v5 = [(DIUserDataParams *)self userDict];
  if (!v5 || (-[DIUserDataParams userDict](self, "userDict"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v5, !v7))
  {
    v13 = @"userDict cannot be nil or empty";
    return [DIError failWithPOSIXCode:22 verboseInfo:v13 error:a3];
  }

  v8 = [(DIBaseParams *)self diskImageParamsXPC];
  if (v8)
  {
    [(DIBaseParams *)self backend];
    v9 = (*(**buf + 48))(*buf);
    if (*v30)
    {
      sub_10000367C(*v30);
    }

    if ((v9 & 1) == 0)
    {
      v13 = @"The image was unlocked before setting userData";
      return [DIError failWithPOSIXCode:22 verboseInfo:v13 error:a3];
    }
  }

  if (![(DIBaseParams *)self openExistingImageWithFlags:2 error:a3])
  {
    return 0;
  }

  v10 = *__error();
  if (sub_1000E044C())
  {
    v28 = 0;
    v11 = sub_1000E03D8();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    *&buf[4] = 35;
    *v30 = 2080;
    *&v30[2] = "[DIUserDataParams embedWithError:]";
    v31 = 2114;
    v32 = self;
    v12 = _os_log_send_and_compose_impl();

    if (v12)
    {
      fprintf(__stderrp, "%s\n", v12);
      free(v12);
    }
  }

  else
  {
    v16 = sub_1000E03D8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      *&buf[4] = 35;
      *v30 = 2080;
      *&v30[2] = "[DIUserDataParams embedWithError:]";
      v31 = 2114;
      v32 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v10;
  v17 = objc_alloc_init(DIClient2Controller_XPCHandler);
  if (-[DIClient2Controller_XPCHandler connectWithError:](v17, "connectWithError:", a3) && -[DIBaseParams prepareImageWithXpcHandler:fileMode:error:](self, "prepareImageWithXpcHandler:fileMode:error:", v17, 4, a3) && (-[DIBaseParams diskImageParamsXPC](self, "diskImageParamsXPC"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 lockBackendsWithError:a3], v18, (v19 & 1) != 0))
  {
    v20 = [(DIBaseParams *)self diskImageParamsXPC];
    v21 = [(DIBaseParams *)self shadowChain];
    v22 = [v21 shouldValidate];
    if (v20)
    {
      [v20 createDiskImageWithCache:0 shadowValidation:v22];
    }

    else
    {
      v28 = 0;
    }

    v23 = [(DIUserDataParams *)self userDict];
    (*(*v28 + 120))(v28, v23);

    v24 = *__error();
    if (sub_1000E044C())
    {
      v25 = sub_1000E03D8();
      os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      *&buf[4] = 35;
      *v30 = 2080;
      *&v30[2] = "[DIUserDataParams embedWithError:]";
      v26 = _os_log_send_and_compose_impl();

      if (v26)
      {
        fprintf(__stderrp, "%s\n", v26);
        free(v26);
      }
    }

    else
    {
      v27 = sub_1000E03D8();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        *&buf[4] = 35;
        *v30 = 2080;
        *&v30[2] = "[DIUserDataParams embedWithError:]";
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%.*s: User data embedding passed", buf, 0x12u);
      }
    }

    *__error() = v24;
    if (v28)
    {
      (*(*v28 + 16))(v28);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)openExistingImageWithError:(id *)a3
{
  v5 = [(DIUserDataParams *)self userDict];
  LOBYTE(a3) = -[DIBaseParams openExistingImageWithFlags:error:](self, "openExistingImageWithFlags:error:", 2 * ([v5 count] != 0), a3);

  return a3;
}

@end