@interface DRSLog
- (BOOL)_deleteOnDiskLog;
- (BOOL)_getSizeFromPath;
- (BOOL)isAvailableOnDisk;
- (BOOL)isEqual:(id)equal;
- (NSString)name;
- (id)_initWithLogMO_ON_MOC_QUEUE:(id)e;
- (id)_initWithLogPath:(id)path transferOwnership:(BOOL)ownership size:(unint64_t)size;
- (id)debugDescription;
- (id)fileDescription;
- (void)_configureLogMO:(id)o;
@end

@implementation DRSLog

- (id)_initWithLogMO_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  path = [eCopy path];
  transferOwnership = [eCopy transferOwnership];
  v7 = [eCopy size];

  v8 = [(DRSLog *)self _initWithLogPath:path transferOwnership:transferOwnership size:v7];
  return v8;
}

- (void)_configureLogMO:(id)o
{
  oCopy = o;
  path = [(DRSLog *)self path];
  [oCopy setPath:path];

  [oCopy setSize:{-[DRSLog size](self, "size")}];
  [oCopy setTransferOwnership:{-[DRSLog transferOwnership](self, "transferOwnership")}];
}

- (id)_initWithLogPath:(id)path transferOwnership:(BOOL)ownership size:(unint64_t)size
{
  pathCopy = path;
  if (pathCopy)
  {
    v14.receiver = self;
    v14.super_class = DRSLog;
    v10 = [(DRSLog *)&v14 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_path, path);
      v11->_transferOwnership = ownership;
      v11->_size = size;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isAvailableOnDisk
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(DRSLog *)self path];
  v5 = [defaultManager fileExistsAtPath:path];

  return v5;
}

- (BOOL)_getSizeFromPath
{
  v23 = *MEMORY[0x277D85DE8];
  path = [(DRSLog *)self path];

  if (path)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path2 = [(DRSLog *)self path];
    v18 = 0;
    v6 = [defaultManager attributesOfItemAtPath:path2 error:&v18];
    v7 = v18;

    if (v6)
    {
      fileSize = [v6 fileSize];
      if (fileSize)
      {
        self->_size = fileSize;
        v9 = 1;
LABEL_15:

        goto LABEL_16;
      }

      v10 = DPLogHandle_RequestError();
      if (os_signpost_enabled(v10))
      {
        path3 = [(DRSLog *)self path];
        localizedDescription = [v7 localizedDescription];
        v13 = localizedDescription;
        v14 = @"Unknown";
        if (localizedDescription)
        {
          v14 = localizedDescription;
        }

LABEL_13:
        *buf = 138543618;
        v20 = path3;
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
        path3 = [(DRSLog *)self path];
        localizedDescription2 = [v7 localizedDescription];
        v13 = localizedDescription2;
        v14 = @"Unknown";
        if (localizedDescription2)
        {
          v14 = localizedDescription2;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v11) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(DRSLog *)self size];
    if (v7 == [(DRSLog *)v6 size])
    {
      path = [(DRSLog *)self path];
      path2 = [(DRSLog *)v6 path];
      if ([path isEqualToString:path2])
      {
        transferOwnership = [(DRSLog *)self transferOwnership];
        v11 = transferOwnership ^ [(DRSLog *)v6 transferOwnership]^ 1;
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
  path = [(DRSLog *)self path];
  v5 = [(DRSLog *)self size];
  transferOwnership = [(DRSLog *)self transferOwnership];
  v7 = @"Copied";
  if (transferOwnership)
  {
    v7 = @"Transferred";
  }

  v8 = [v3 initWithFormat:@"%@ (%zuB) %@", path, v5, v7];

  return v8;
}

- (BOOL)_deleteOnDiskLog
{
  path = [(DRSLog *)self path];
  v3 = _deleteFileWithPath(path);

  return v3;
}

- (NSString)name
{
  path = [(DRSLog *)self path];
  lastPathComponent = [path lastPathComponent];

  return lastPathComponent;
}

- (id)fileDescription
{
  v3 = objc_alloc_init(DRSProtoFileDescription);
  path = [(DRSLog *)self path];
  lastPathComponent = [path lastPathComponent];
  [(DRSProtoFileDescription *)v3 setFileName:lastPathComponent];

  [(DRSProtoFileDescription *)v3 setLogSize:[(DRSLog *)self size]];
  path2 = [(DRSLog *)self path];
  pathExtension = [path2 pathExtension];
  [(DRSProtoFileDescription *)v3 setLogType:pathExtension];

  return v3;
}

@end