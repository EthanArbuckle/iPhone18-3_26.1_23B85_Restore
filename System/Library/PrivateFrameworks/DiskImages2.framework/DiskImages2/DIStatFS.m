@interface DIStatFS
- (DIStatFS)initWithCoder:(id)a3;
- (DIStatFS)initWithFileDescriptor:(int)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)logWithHeader:(id)a3;
@end

@implementation DIStatFS

- (DIStatFS)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DIStatFS;
  v5 = [(DIStatFS *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mountedOnURL"];
    mountedOnURL = v5->_mountedOnURL;
    v5->_mountedOnURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mountedFrom"];
    mountedFrom = v5->_mountedFrom;
    v5->_mountedFrom = v8;

    v5->_blockSize = [v4 decodeIntegerForKey:@"blockSize"];
    v5->_supportsBarrier = [v4 decodeBoolForKey:@"supportsBarrier"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(DIStatFS *)self mountedOnURL];
  [v6 encodeObject:v4 forKey:@"mountedOnURL"];

  v5 = [(DIStatFS *)self mountedFrom];
  [v6 encodeObject:v5 forKey:@"mountedFrom"];

  [v6 encodeInteger:-[DIStatFS blockSize](self forKey:{"blockSize"), @"blockSize"}];
  [v6 encodeBool:-[DIStatFS supportsBarrier](self forKey:{"supportsBarrier"), @"supportsBarrier"}];
}

- (DIStatFS)initWithFileDescriptor:(int)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = DIStatFS;
  v6 = [(DIStatFS *)&v29 init];
  if (!v6)
  {
LABEL_23:
    v21 = v6;
    goto LABEL_24;
  }

  if (fstatfs(a3, &v36) < 0)
  {
    v21 = [DIError nilWithPOSIXCode:*__error() verboseInfo:@"fstatfs failed" error:a4];
LABEL_24:
    v22 = v21;
    goto LABEL_25;
  }

  v7 = MEMORY[0x277CBEBC0];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v36.f_mntonname];
  v9 = [v7 fileURLWithPath:v8 isDirectory:1];
  mountedOnURL = v6->_mountedOnURL;
  v6->_mountedOnURL = v9;

  v6->_blockSize = v36.f_bsize;
  v11 = [DIHelpers copyDevicePathWithStatfs:&v36];
  v12 = v11;
  if ((v36.f_flags & 0x1000) == 0 || ![v11 hasPrefix:@"/dev/disk"])
  {
LABEL_16:
    v23 = *__error();
    if (DIForwardLogs())
    {
      v24 = getDIOSLog();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      v31 = 41;
      v32 = 2080;
      v33 = "[DIStatFS initWithFileDescriptor:error:]";
      v34 = 2082;
      f_fstypename = v36.f_fstypename;
      v25 = _os_log_send_and_compose_impl();

      if (v25)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v25);
        free(v25);
      }
    }

    else
    {
      v26 = getDIOSLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v31 = 41;
        v32 = 2080;
        v33 = "[DIStatFS initWithFileDescriptor:error:]";
        v34 = 2082;
        f_fstypename = v36.f_fstypename;
        _os_log_impl(&dword_248DE0000, v26, OS_LOG_TYPE_DEFAULT, "%.*s: File system is %{public}s", buf, 0x1Cu);
      }
    }

    *__error() = v23;

    goto LABEL_23;
  }

  objc_storeStrong(&v6->_mountedFrom, v12);
  v13 = [[DIIOMedia alloc] initWithDevName:v12 error:a4];
  v14 = v13;
  if (v13)
  {
    v15 = [(DIIOMedia *)v13 copyBlockDeviceWithError:a4];
    if (v15)
    {
      v16 = [v15 copyPropertyWithClass:objc_opt_class() key:@"IOStorageFeatures"];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 objectForKeyedSubscript:@"Barrier"];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 BOOLValue];
        }

        else
        {
          v20 = 0;
        }

        v6->_supportsBarrier = v20;
      }

      goto LABEL_16;
    }
  }

  v22 = 0;
LABEL_25:

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)logWithHeader:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v6 = *__error();
  if (DIForwardLogs())
  {
    v7 = getDIOSLog();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    v8 = [(DIStatFS *)self mountedOnURL];
    v9 = [v8 path];
    v10 = [(DIStatFS *)self blockSize];
    v11 = [(DIStatFS *)self mountedFrom];
    if (v11)
    {
      v12 = MEMORY[0x277CCACA8];
      v4 = [(DIStatFS *)self mountedFrom];
      v13 = [v12 stringWithFormat:@"locally mounted from %@", v4];
    }

    else
    {
      v13 = @"remote mount";
    }

    v21 = [(DIStatFS *)self supportsBarrier];
    v29 = 26;
    v22 = @"not ";
    v30 = 2080;
    v31 = "[DIStatFS logWithHeader:]";
    *buf = 68159235;
    v32 = 2114;
    if (v21)
    {
      v22 = &stru_285C05C28;
    }

    v33 = v27;
    v34 = 2113;
    v35 = v9;
    v36 = 1024;
    v37 = v10;
    v38 = 2114;
    v39 = v13;
    v40 = 2112;
    v41 = v22;
    v23 = _os_log_send_and_compose_impl();
    if (v11)
    {
    }

    if (v23)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v23);
      free(v23);
    }
  }

  else
  {
    v14 = getDIOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(DIStatFS *)self mountedOnURL];
      v16 = [v15 path];
      v17 = [(DIStatFS *)self blockSize];
      v18 = [(DIStatFS *)self mountedFrom];
      if (v18)
      {
        v19 = MEMORY[0x277CCACA8];
        v3 = [(DIStatFS *)self mountedFrom];
        v20 = [v19 stringWithFormat:@"locally mounted from %@", v3];
      }

      else
      {
        v20 = @"remote mount";
      }

      v24 = [(DIStatFS *)self supportsBarrier];
      v29 = 26;
      v25 = @"not ";
      v30 = 2080;
      v31 = "[DIStatFS logWithHeader:]";
      *buf = 68159235;
      v32 = 2114;
      if (v24)
      {
        v25 = &stru_285C05C28;
      }

      v33 = v27;
      v34 = 2113;
      v35 = v16;
      v36 = 1024;
      v37 = v17;
      v38 = 2114;
      v39 = v20;
      v40 = 2112;
      v41 = v25;
      _os_log_impl(&dword_248DE0000, v14, OS_LOG_TYPE_DEFAULT, "%.*s: %{public}@: mounted on %{private}@, %u bytes block size, %{public}@, barriers %@supported", buf, 0x40u);
      if (v18)
      {
      }
    }
  }

  *__error() = v6;

  v26 = *MEMORY[0x277D85DE8];
}

@end