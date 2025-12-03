@interface DIStatFS
- (DIStatFS)initWithCoder:(id)coder;
- (DIStatFS)initWithFileDescriptor:(int)descriptor error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)logWithHeader:(id)header;
@end

@implementation DIStatFS

- (DIStatFS)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DIStatFS;
  v5 = [(DIStatFS *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mountedOnURL"];
    mountedOnURL = v5->_mountedOnURL;
    v5->_mountedOnURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mountedFrom"];
    mountedFrom = v5->_mountedFrom;
    v5->_mountedFrom = v8;

    v5->_blockSize = [coderCopy decodeIntegerForKey:@"blockSize"];
    v5->_supportsBarrier = [coderCopy decodeBoolForKey:@"supportsBarrier"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mountedOnURL = [(DIStatFS *)self mountedOnURL];
  [coderCopy encodeObject:mountedOnURL forKey:@"mountedOnURL"];

  mountedFrom = [(DIStatFS *)self mountedFrom];
  [coderCopy encodeObject:mountedFrom forKey:@"mountedFrom"];

  [coderCopy encodeInteger:-[DIStatFS blockSize](self forKey:{"blockSize"), @"blockSize"}];
  [coderCopy encodeBool:-[DIStatFS supportsBarrier](self forKey:{"supportsBarrier"), @"supportsBarrier"}];
}

- (DIStatFS)initWithFileDescriptor:(int)descriptor error:(id *)error
{
  v27.receiver = self;
  v27.super_class = DIStatFS;
  v6 = [(DIStatFS *)&v27 init];
  if (!v6)
  {
LABEL_23:
    v20 = v6;
    goto LABEL_24;
  }

  if (fstatfs(descriptor, &v34) < 0)
  {
    v20 = [DIError nilWithPOSIXCode:*__error() verboseInfo:@"fstatfs failed" error:error];
LABEL_24:
    v21 = v20;
    goto LABEL_25;
  }

  v7 = [NSString stringWithUTF8String:v34.f_mntonname];
  v8 = [NSURL fileURLWithPath:v7 isDirectory:1];
  mountedOnURL = v6->_mountedOnURL;
  v6->_mountedOnURL = v8;

  v6->_blockSize = v34.f_bsize;
  v10 = [DIHelpers copyDevicePathWithStatfs:&v34];
  v11 = v10;
  if ((v34.f_flags & 0x1000) == 0 || ![v10 hasPrefix:@"/dev/disk"])
  {
LABEL_16:
    v22 = *__error();
    if (sub_1000E044C())
    {
      v23 = sub_1000E03D8();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      v29 = 41;
      v30 = 2080;
      v31 = "[DIStatFS initWithFileDescriptor:error:]";
      v32 = 2082;
      f_fstypename = v34.f_fstypename;
      v24 = _os_log_send_and_compose_impl();

      if (v24)
      {
        fprintf(__stderrp, "%s\n", v24);
        free(v24);
      }
    }

    else
    {
      v25 = sub_1000E03D8();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v29 = 41;
        v30 = 2080;
        v31 = "[DIStatFS initWithFileDescriptor:error:]";
        v32 = 2082;
        f_fstypename = v34.f_fstypename;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%.*s: File system is %{public}s", buf, 0x1Cu);
      }
    }

    *__error() = v22;

    goto LABEL_23;
  }

  objc_storeStrong(&v6->_mountedFrom, v11);
  v12 = [[DIIOMedia alloc] initWithDevName:v11 error:error];
  v13 = v12;
  if (v12)
  {
    v14 = [(DIIOMedia *)v12 copyBlockDeviceWithError:error];
    if (v14)
    {
      v15 = [v14 copyPropertyWithClass:objc_opt_class() key:@"IOStorageFeatures"];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 objectForKeyedSubscript:@"Barrier"];
        v18 = v17;
        if (v17)
        {
          bOOLValue = [v17 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        v6->_supportsBarrier = bOOLValue;
      }

      goto LABEL_16;
    }
  }

  v21 = 0;
LABEL_25:

  return v21;
}

- (void)logWithHeader:(id)header
{
  headerCopy = header;
  v6 = *__error();
  if (sub_1000E044C())
  {
    v7 = sub_1000E03D8();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    mountedOnURL = [(DIStatFS *)self mountedOnURL];
    path = [mountedOnURL path];
    blockSize = [(DIStatFS *)self blockSize];
    mountedFrom = [(DIStatFS *)self mountedFrom];
    if (mountedFrom)
    {
      mountedFrom2 = [(DIStatFS *)self mountedFrom];
      v12 = [NSString stringWithFormat:@"locally mounted from %@", mountedFrom2];
    }

    else
    {
      v12 = @"remote mount";
    }

    supportsBarrier = [(DIStatFS *)self supportsBarrier];
    v26 = 26;
    v20 = @"not ";
    v27 = 2080;
    v28 = "[DIStatFS logWithHeader:]";
    *buf = 68159235;
    v29 = 2114;
    if (supportsBarrier)
    {
      v20 = &stru_100234B28;
    }

    v30 = headerCopy;
    v31 = 2113;
    v32 = path;
    v33 = 1024;
    v34 = blockSize;
    v35 = 2114;
    v36 = v12;
    v37 = 2112;
    v38 = v20;
    v21 = _os_log_send_and_compose_impl();
    if (mountedFrom)
    {
    }

    if (v21)
    {
      fprintf(__stderrp, "%s\n", v21);
      free(v21);
    }
  }

  else
  {
    v13 = sub_1000E03D8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      mountedOnURL2 = [(DIStatFS *)self mountedOnURL];
      path2 = [mountedOnURL2 path];
      blockSize2 = [(DIStatFS *)self blockSize];
      mountedFrom3 = [(DIStatFS *)self mountedFrom];
      if (mountedFrom3)
      {
        mountedFrom4 = [(DIStatFS *)self mountedFrom];
        v18 = [NSString stringWithFormat:@"locally mounted from %@", mountedFrom4];
      }

      else
      {
        v18 = @"remote mount";
      }

      supportsBarrier2 = [(DIStatFS *)self supportsBarrier];
      v26 = 26;
      v23 = @"not ";
      v27 = 2080;
      v28 = "[DIStatFS logWithHeader:]";
      *buf = 68159235;
      v29 = 2114;
      if (supportsBarrier2)
      {
        v23 = &stru_100234B28;
      }

      v30 = headerCopy;
      v31 = 2113;
      v32 = path2;
      v33 = 1024;
      v34 = blockSize2;
      v35 = 2114;
      v36 = v18;
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%.*s: %{public}@: mounted on %{private}@, %u bytes block size, %{public}@, barriers %@supported", buf, 0x40u);
      if (mountedFrom3)
      {
      }
    }
  }

  *__error() = v6;
}

@end