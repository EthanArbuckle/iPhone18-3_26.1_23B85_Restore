@interface DIUserDataParams
- (BOOL)embedWithError:(id *)error;
- (BOOL)openExistingImageWithError:(id *)error;
- (BOOL)retrieveWithError:(id *)error;
- (DIUserDataParams)initWithCoder:(id)coder;
- (DIUserDataParams)initWithURL:(id)l error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIUserDataParams

- (DIUserDataParams)initWithURL:(id)l error:(id *)error
{
  v8.receiver = self;
  v8.super_class = DIUserDataParams;
  v4 = [(DIBaseParams *)&v8 initWithURL:l error:error];
  v5 = v4;
  if (v4)
  {
    userDict = v4->_userDict;
    v4->_userDict = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (DIUserDataParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = DIUserDataParams;
  v5 = [(DIBaseParams *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userData"];
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

- (void)encodeWithCoder:(id)coder
{
  v25 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = DIUserDataParams;
  [(DIBaseParams *)&v18 encodeWithCoder:coderCopy];
  v5 = MEMORY[0x277CCAAB0];
  userDict = [(DIUserDataParams *)self userDict];
  v17 = 0;
  v7 = [v5 archivedDataWithRootObject:userDict requiringSecureCoding:0 error:&v17];
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

  [coderCopy encodeObject:v7 forKey:{@"userData", v14, v15, v16}];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)retrieveWithError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  if ([(DIBaseParams *)self openExistingImageWithFlags:0 error:error])
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
      selfCopy2 = self;
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
        selfCopy2 = self;
        _os_log_impl(&dword_248DE0000, v9, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v5;
    v10 = objc_alloc_init(DIClient2Controller_XPCHandler);
    if ([(DIClient2Controller_XPCHandler *)v10 connectWithError:error]&& [(DIBaseParams *)self prepareImageWithXpcHandler:v10 fileMode:2 error:error])
    {
      diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
      shadowChain = [(DIBaseParams *)self shadowChain];
      shouldValidate = [shadowChain shouldValidate];
      if (diskImageParamsXPC)
      {
        [diskImageParamsXPC createDiskImageWithCache:0 shadowValidation:shouldValidate];
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
        LODWORD(selfCopy2) = v18;
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
          userDict = [(DIUserDataParams *)self userDict];
          v22 = [userDict count];
          *buf = 68158210;
          v31 = 38;
          v32 = 2080;
          v33 = "[DIUserDataParams retrieveWithError:]";
          v34 = 1024;
          LODWORD(selfCopy2) = v22;
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

- (BOOL)embedWithError:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  userDict = [(DIUserDataParams *)self userDict];
  if (!userDict || (-[DIUserDataParams userDict](self, "userDict"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, userDict, !v7))
  {
    v13 = @"userDict cannot be nil or empty";
LABEL_12:
    v14 = [DIError failWithPOSIXCode:22 verboseInfo:v13 error:error];
    goto LABEL_13;
  }

  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  if (diskImageParamsXPC)
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

  if ([(DIBaseParams *)self openExistingImageWithFlags:2 error:error])
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
      selfCopy2 = self;
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
        selfCopy2 = self;
        _os_log_impl(&dword_248DE0000, v17, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v10;
    v18 = objc_alloc_init(DIClient2Controller_XPCHandler);
    if (-[DIClient2Controller_XPCHandler connectWithError:](v18, "connectWithError:", error) && -[DIBaseParams prepareImageWithXpcHandler:fileMode:error:](self, "prepareImageWithXpcHandler:fileMode:error:", v18, 4, error) && (-[DIBaseParams diskImageParamsXPC](self, "diskImageParamsXPC"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 lockBackendsWithError:error], v19, (v20 & 1) != 0))
    {
      diskImageParamsXPC2 = [(DIBaseParams *)self diskImageParamsXPC];
      shadowChain = [(DIBaseParams *)self shadowChain];
      shouldValidate = [shadowChain shouldValidate];
      if (diskImageParamsXPC2)
      {
        [diskImageParamsXPC2 createDiskImageWithCache:0 shadowValidation:shouldValidate];
      }

      else
      {
        v29 = 0;
      }

      userDict2 = [(DIUserDataParams *)self userDict];
      (*(*v29 + 120))(v29, userDict2);

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

- (BOOL)openExistingImageWithError:(id *)error
{
  userDict = [(DIUserDataParams *)self userDict];
  LOBYTE(error) = -[DIBaseParams openExistingImageWithFlags:error:](self, "openExistingImageWithFlags:error:", 2 * ([userDict count] != 0), error);

  return error;
}

@end