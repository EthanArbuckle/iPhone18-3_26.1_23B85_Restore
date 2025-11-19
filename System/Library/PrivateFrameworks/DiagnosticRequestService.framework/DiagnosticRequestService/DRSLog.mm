@interface DRSLog
- (BOOL)_deleteOnDiskLog;
- (BOOL)_getSizeFromPath;
- (BOOL)isAvailableOnDisk;
- (BOOL)isEqual:(id)a3;
- (NSString)name;
- (id)_initWithLogMO_ON_MOC_QUEUE:(id)a3;
- (id)_initWithLogPath:(id)a3 transferOwnership:(BOOL)a4 size:(unint64_t)a5;
- (id)debugDescription;
- (id)fileDescription;
- (void)_configureLogMO:(id)a3;
@end

@implementation DRSLog

- (id)_initWithLogMO_ON_MOC_QUEUE:(id)a3
{
  v4 = a3;
  v5 = [v4 path];
  v6 = [v4 transferOwnership];
  v7 = [v4 size];

  v8 = [(DRSLog *)self _initWithLogPath:v5 transferOwnership:v6 size:v7];
  return v8;
}

- (void)_configureLogMO:(id)a3
{
  v5 = a3;
  v4 = [(DRSLog *)self path];
  [v5 setPath:v4];

  [v5 setSize:{-[DRSLog size](self, "size")}];
  [v5 setTransferOwnership:{-[DRSLog transferOwnership](self, "transferOwnership")}];
}

- (id)_initWithLogPath:(id)a3 transferOwnership:(BOOL)a4 size:(unint64_t)a5
{
  v9 = a3;
  if (v9)
  {
    v14.receiver = self;
    v14.super_class = DRSLog;
    v10 = [(DRSLog *)&v14 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_path, a3);
      v11->_transferOwnership = a4;
      v11->_size = a5;
    }

    self = v11;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isAvailableOnDisk
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(DRSLog *)self path];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)_getSizeFromPath
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(DRSLog *)self path];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [(DRSLog *)self path];
    v18 = 0;
    v6 = [v4 attributesOfItemAtPath:v5 error:&v18];
    v7 = v18;

    if (v6)
    {
      v8 = [v6 fileSize];
      if (v8)
      {
        self->_size = v8;
        v9 = 1;
LABEL_15:

        goto LABEL_16;
      }

      v10 = DPLogHandle_RequestError();
      if (os_signpost_enabled(v10))
      {
        v11 = [(DRSLog *)self path];
        v15 = [v7 localizedDescription];
        v13 = v15;
        v14 = @"Unknown";
        if (v15)
        {
          v14 = v15;
        }

LABEL_13:
        *buf = 138543618;
        v20 = v11;
        v21 = 2114;
        v22 = v14;
        _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LogSizeError", "Failed to get size of file for %{public}@ due to error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v10 = DPLogHandle_RequestError();
      if (os_signpost_enabled(v10))
      {
        v11 = [(DRSLog *)self path];
        v12 = [v7 localizedDescription];
        v13 = v12;
        v14 = @"Unknown";
        if (v12)
        {
          v14 = v12;
        }

        goto LABEL_13;
      }
    }

    v9 = 0;
    goto LABEL_15;
  }

  v9 = 1;
LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v11) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(DRSLog *)self size];
    if (v7 == [(DRSLog *)v6 size])
    {
      v8 = [(DRSLog *)self path];
      v9 = [(DRSLog *)v6 path];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(DRSLog *)self transferOwnership];
        v11 = v10 ^ [(DRSLog *)v6 transferOwnership]^ 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(DRSLog *)self path];
  v5 = [(DRSLog *)self size];
  v6 = [(DRSLog *)self transferOwnership];
  v7 = @"Copied";
  if (v6)
  {
    v7 = @"Transferred";
  }

  v8 = [v3 initWithFormat:@"%@ (%zuB) %@", v4, v5, v7];

  return v8;
}

- (BOOL)_deleteOnDiskLog
{
  v2 = [(DRSLog *)self path];
  v3 = _deleteFileWithPath(v2);

  return v3;
}

- (NSString)name
{
  v2 = [(DRSLog *)self path];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (id)fileDescription
{
  v3 = objc_alloc_init(DRSProtoFileDescription);
  v4 = [(DRSLog *)self path];
  v5 = [v4 lastPathComponent];
  [(DRSProtoFileDescription *)v3 setFileName:v5];

  [(DRSProtoFileDescription *)v3 setLogSize:[(DRSLog *)self size]];
  v6 = [(DRSLog *)self path];
  v7 = [v6 pathExtension];
  [(DRSProtoFileDescription *)v3 setLogType:v7];

  return v3;
}

@end