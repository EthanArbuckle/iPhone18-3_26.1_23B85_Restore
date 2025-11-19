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
    v4->_userDict = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (DIUserDataParams)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = DIUserDataParams;
  v5 = [(DIBaseParams *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userData"];
    if (v6)
    {
      v7 = MEMORY[0x277CCAAC8];
      v8 = MEMORY[0x277CBEB98];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
      v16 = 0;
      v12 = [v7 unarchivedObjectOfClasses:v11 fromData:v6 error:&v16];
      v13 = v16;
      userDict = v5->_userDict;
      v5->_userDict = v12;

      if (v13)
      {
        [(DIBaseParams *)v5 setDeserializationError:v13];
      }
    }

    else
    {
      v13 = [DIError errorWithPOSIXCode:22 verboseInfo:@"Failed serializing user dictionary"];
      [(DIBaseParams *)v5 setDeserializationError:v13];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = DIUserDataParams;
  [(DIBaseParams *)&v18 encodeWithCoder:v4];
  v5 = MEMORY[0x277CCAAB0];
  v6 = [(DIUserDataParams *)self userDict];
  v17 = 0;
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:0 error:&v17];
  v8 = v17;

  if (v8)
  {
    v9 = *__error();
    if (DIForwardLogs())
    {
      v16 = 0;
      v10 = getDIOSLog();
      os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      *buf = 68158210;
      v20 = 36;
      v21 = 2080;
      v22 = "[DIUserDataParams encodeWithCoder:]";
      v23 = 2114;
      v24 = v8;
      LODWORD(v15) = 28;
      v14 = buf;
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v12 = getDIOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 68158210;
        v20 = 36;
        v21 = 2080;
        v22 = "[DIUserDataParams encodeWithCoder:]";
        v23 = 2114;
        v24 = v8;
        _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_ERROR, "%.*s: Error encoding user dictionary: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v9;
  }

  [v4 encodeObject:v7 forKey:{@"userData", v14, v15, v16}];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)retrieveWithError:(id *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  if ([(DIBaseParams *)self openExistingImageWithFlags:0 error:a3])
  {
    v5 = *__error();
    if (DIForwardLogs())
    {
      v29 = 0;
      v6 = getDIOSLog();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      v31 = 38;
      v32 = 2080;
      v33 = "[DIUserDataParams retrieveWithError:]";
      v34 = 2114;
      v35 = self;
      LODWORD(v27) = 28;
      v26 = buf;
      v7 = _os_log_send_and_compose_impl();

      if (v7)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v7);
        free(v7);
      }
    }

    else
    {
      v9 = getDIOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v31 = 38;
        v32 = 2080;
        v33 = "[DIUserDataParams retrieveWithError:]";
        v34 = 2114;
        v35 = self;
        _os_log_impl(&dword_248DE0000, v9, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
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
        v29 = 0;
      }

      (*(*v29 + 112))(&cf);
      v14 = cf;
      CFRetain(cf);
      [(DIUserDataParams *)self setUserDict:v14];

      v15 = *__error();
      if (DIForwardLogs())
      {
        v16 = getDIOSLog();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        v17 = [(DIUserDataParams *)self userDict:v26];
        v18 = [v17 count];
        *buf = 68158210;
        v31 = 38;
        v32 = 2080;
        v33 = "[DIUserDataParams retrieveWithError:]";
        v34 = 1024;
        LODWORD(v35) = v18;
        v19 = _os_log_send_and_compose_impl();

        if (v19)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v19);
          free(v19);
        }
      }

      else
      {
        v20 = getDIOSLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [(DIUserDataParams *)self userDict];
          v22 = [v21 count];
          *buf = 68158210;
          v31 = 38;
          v32 = 2080;
          v33 = "[DIUserDataParams retrieveWithError:]";
          v34 = 1024;
          LODWORD(v35) = v22;
          _os_log_impl(&dword_248DE0000, v20, OS_LOG_TYPE_DEFAULT, "%.*s: User data retrieving passed, %d value(s) found", buf, 0x18u);
        }
      }

      *__error() = v15;
      CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&cf);
      v23 = v29;
      v29 = 0;
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
  }

  else
  {
    v8 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)embedWithError:(id *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [(DIUserDataParams *)self userDict];
  if (!v5 || (-[DIUserDataParams userDict](self, "userDict"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v5, !v7))
  {
    v13 = @"userDict cannot be nil or empty";
LABEL_12:
    v14 = [DIError failWithPOSIXCode:22 verboseInfo:v13 error:a3];
    goto LABEL_13;
  }

  v8 = [(DIBaseParams *)self diskImageParamsXPC];
  if (v8)
  {
    [(DIBaseParams *)self backend];
    v9 = (*(**buf + 48))(*buf);
    if (*v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*v31);
    }

    if ((v9 & 1) == 0)
    {
      v13 = @"The image was unlocked before setting userData";
      goto LABEL_12;
    }
  }

  if ([(DIBaseParams *)self openExistingImageWithFlags:2 error:a3])
  {
    v10 = *__error();
    if (DIForwardLogs())
    {
      v29 = 0;
      v11 = getDIOSLog();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      *&buf[4] = 35;
      *v31 = 2080;
      *&v31[2] = "[DIUserDataParams embedWithError:]";
      v32 = 2114;
      v33 = self;
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v17 = getDIOSLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        *&buf[4] = 35;
        *v31 = 2080;
        *&v31[2] = "[DIUserDataParams embedWithError:]";
        v32 = 2114;
        v33 = self;
        _os_log_impl(&dword_248DE0000, v17, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v10;
    v18 = objc_alloc_init(DIClient2Controller_XPCHandler);
    if (-[DIClient2Controller_XPCHandler connectWithError:](v18, "connectWithError:", a3) && -[DIBaseParams prepareImageWithXpcHandler:fileMode:error:](self, "prepareImageWithXpcHandler:fileMode:error:", v18, 4, a3) && (-[DIBaseParams diskImageParamsXPC](self, "diskImageParamsXPC"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 lockBackendsWithError:a3], v19, (v20 & 1) != 0))
    {
      v21 = [(DIBaseParams *)self diskImageParamsXPC];
      v22 = [(DIBaseParams *)self shadowChain];
      v23 = [v22 shouldValidate];
      if (v21)
      {
        [v21 createDiskImageWithCache:0 shadowValidation:v23];
      }

      else
      {
        v29 = 0;
      }

      v24 = [(DIUserDataParams *)self userDict];
      (*(*v29 + 120))(v29, v24);

      v25 = *__error();
      if (DIForwardLogs())
      {
        v26 = getDIOSLog();
        os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        *buf = 68157954;
        *&buf[4] = 35;
        *v31 = 2080;
        *&v31[2] = "[DIUserDataParams embedWithError:]";
        v27 = _os_log_send_and_compose_impl();

        if (v27)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v27);
          free(v27);
        }
      }

      else
      {
        v28 = getDIOSLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          *&buf[4] = 35;
          *v31 = 2080;
          *&v31[2] = "[DIUserDataParams embedWithError:]";
          _os_log_impl(&dword_248DE0000, v28, OS_LOG_TYPE_DEFAULT, "%.*s: User data embedding passed", buf, 0x12u);
        }
      }

      *__error() = v25;
      if (v29)
      {
        (*(*v29 + 16))(v29);
      }

      v14 = 1;
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

LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)openExistingImageWithError:(id *)a3
{
  v5 = [(DIUserDataParams *)self userDict];
  LOBYTE(a3) = -[DIBaseParams openExistingImageWithFlags:error:](self, "openExistingImageWithFlags:error:", 2 * ([v5 count] != 0), a3);

  return a3;
}

@end