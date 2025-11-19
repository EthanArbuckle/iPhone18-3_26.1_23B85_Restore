@interface DIAttachParams
+ (BOOL)copyWithURL:(id)a3 outURLStr:(char *)a4 maxLen:(unint64_t)a5 error:(id *)a6;
- (BOOL)isDeviceHighThroughputWithRegistryEntryID:(unint64_t)a3;
- (BOOL)isDeviceSolidStateWithRegistryEntryID:;
- (BOOL)isDeviceSolidStateWithRegistryEntryID:(unint64_t)a3;
- (BOOL)isDeviceWithProperty:(const char *)a3 registryEntryID:(unint64_t)a4 predicate:(function<BOOL)(iokit_utils::di_io_obj_t;
- (BOOL)reOpenIfWritableWithError:(id *)a3;
- (BOOL)shouldValidateShadows;
- (BOOL)updateStatFSWithError:(id *)a3;
- (DIAttachParams)initWithCoder:(id)a3;
- (DIAttachParams)initWithExistingParams:(id)a3 error:(id *)a4;
- (DIAttachParams)initWithURL:(id)a3 error:(id *)a4;
- (DIAttachParams)initWithURL:(id)a3 shadowURLs:(id)a4 error:(id *)a5;
- (id)newAttachWithError:(id *)a3;
- (uint64_t)isDeviceHighThroughputWithRegistryEntryID:;
- (uint64_t)isDeviceSolidStateWithRegistryEntryID:;
- (void)encodeWithCoder:(id)a3;
- (void)setOnDiskCache:(BOOL)a3;
- (void)setupDefaults;
@end

@implementation DIAttachParams

- (DIAttachParams)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DIAttachParams;
  v5 = [(DIBaseParams *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_autoMount = [v4 decodeBoolForKey:@"autoMount"];
    v5->_commandSize = [v4 decodeIntegerForKey:@"commandSize"];
    v5->_regEntryID = [v4 decodeInt64ForKey:@"regEntryID"];
    v5->_handleRefCount = [v4 decodeBoolForKey:@"handleRefCount"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputStatFS"];
    inputStatFS = v5->_inputStatFS;
    v5->_inputStatFS = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputMountedFrom"];
    inputMountedFrom = v5->_inputMountedFrom;
    v5->_inputMountedFrom = v8;

    v5->_fileMode = [v4 decodeIntegerForKey:@"fileMode"];
    v5->_onDiskCache = [v4 decodeBoolForKey:@"onDiskCache"];
    v5->_uniqueDevice = [v4 decodeBoolForKey:@"uniqueDevice"];
    v5->_emulateExternalDisk = [v4 decodeBoolForKey:@"emulateExternalDisk"];
    v5->_suppressSsdFlags = [v4 decodeBoolForKey:@"suppressSsdFlags"];
    v5->_singleInstanceDaemon = [v4 decodeBoolForKey:@"singleInstanceDaemon"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = DIAttachParams;
  [(DIBaseParams *)&v6 encodeWithCoder:v4];
  [v4 encodeBool:-[DIAttachParams autoMount](self forKey:{"autoMount"), @"autoMount"}];
  [v4 encodeInteger:-[DIAttachParams commandSize](self forKey:{"commandSize"), @"commandSize"}];
  [v4 encodeInt64:-[DIAttachParams regEntryID](self forKey:{"regEntryID"), @"regEntryID"}];
  [v4 encodeBool:-[DIAttachParams handleRefCount](self forKey:{"handleRefCount"), @"handleRefCount"}];
  v5 = [(DIAttachParams *)self inputStatFS];
  [v4 encodeObject:v5 forKey:@"inputStatFS"];

  [v4 encodeInteger:-[DIAttachParams fileMode](self forKey:{"fileMode"), @"fileMode"}];
  [v4 encodeBool:-[DIAttachParams onDiskCache](self forKey:{"onDiskCache"), @"onDiskCache"}];
  [v4 encodeBool:-[DIAttachParams uniqueDevice](self forKey:{"uniqueDevice"), @"uniqueDevice"}];
  [v4 encodeBool:-[DIAttachParams emulateExternalDisk](self forKey:{"emulateExternalDisk"), @"emulateExternalDisk"}];
  [v4 encodeBool:-[DIAttachParams suppressSsdFlags](self forKey:{"suppressSsdFlags"), @"suppressSsdFlags"}];
  [v4 encodeBool:-[DIAttachParams singleInstanceDaemon](self forKey:{"singleInstanceDaemon"), @"singleInstanceDaemon"}];
}

- (void)setupDefaults
{
  self->_fileMode = 1;
  self->_autoMount = ![(DIBaseParams *)self RAMdisk];
  self->_onDiskCache = 0;
  customCacheURL = self->_customCacheURL;
  self->_customCacheURL = 0;
}

- (void)setOnDiskCache:(BOOL)a3
{
  self->_onDiskCache = a3;
  if (!a3)
  {
    customCacheURL = self->_customCacheURL;
    self->_customCacheURL = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (DIAttachParams)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEA60] array];
  v8 = [(DIAttachParams *)self initWithURL:v6 shadowURLs:v7 error:a4];

  return v8;
}

- (DIAttachParams)initWithURL:(id)a3 shadowURLs:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = DIAttachParams;
  v10 = [(DIBaseParams *)&v17 initWithURL:v8 error:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  if (![(DIBaseParams *)v10 openExistingImageWithFlags:0 error:a5])
  {
    goto LABEL_9;
  }

  [(DIAttachParams *)v11 setupDefaults];
  if (![v9 count])
  {
LABEL_7:
    v12 = v11;
    goto LABEL_8;
  }

  if (![(DIBaseParams *)v11 isPstack])
  {
    v13 = [(DIBaseParams *)v11 shadowChain];
    v14 = [v13 addShadowURLs:v9 error:a5];

    if (v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v12 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Custom cache or shadow is not supported for pstack based images." error:a5];
LABEL_8:
  v15 = v12;
LABEL_10:

  return v15;
}

- (DIAttachParams)initWithExistingParams:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 inputURL];
  v19.receiver = self;
  v19.super_class = DIAttachParams;
  v8 = [(DIBaseParams *)&v19 initWithURL:v7 error:a4];

  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [v6 diskImageParamsXPC];
  [(DIBaseParams *)v8 setDiskImageParamsXPC:v9];

  v10 = [(DIBaseParams *)v8 diskImageParamsXPC];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(DIBaseParams *)v8 backend];
    operator new();
  }

  [(DIAttachParams *)v8 setupDefaults];
  v12 = [(DIBaseParams *)v8 diskImageParamsXPC];
  -[DIBaseParams setBlockSize:](v8, "setBlockSize:", [v12 blockSize]);

  v13 = [(DIBaseParams *)v8 shadowChain];
  v14 = [v6 shadowChain];
  v15 = [v14 nodes];
  v16 = [v13 addShadowNodes:v15 error:a4];

  if ((v16 & 1) == 0)
  {
    v17 = 0;
  }

  else
  {
LABEL_5:
    v17 = v8;
  }

  return v17;
}

- (BOOL)shouldValidateShadows
{
  v2 = [(DIBaseParams *)self shadowChain];
  v3 = [v2 shouldValidate];

  return v3;
}

- (BOOL)reOpenIfWritableWithError:(id *)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = [(DIBaseParams *)self inputURL];
  if ([v5 isFileURL])
  {
  }

  else
  {
    v6 = [(DIBaseParams *)self diskImageParamsXPC];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v8 = [(DIBaseParams *)self shadowChain];
  v9 = [v8 activeShadowURL];

  if (!v9)
  {
    [(DIBaseParams *)self backend];
    v10 = (*(**buf + 48))(*buf);
    if (*v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*v44);
    }

    if ((v10 & 1) == 0)
    {
      v14 = [(DIBaseParams *)self diskImageParamsXPC];
      v15 = [v14 isWritableFormat];

      v16 = *__error();
      if (DIForwardLogs())
      {
        v17 = getDIOSLog();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        v18 = "NO";
        *buf = 68158210;
        *&buf[4] = 44;
        *&v44[2] = "[DIAttachParams reOpenIfWritableWithError:]";
        *v44 = 2080;
        if (v15)
        {
          v18 = "YES";
        }

        v45 = 2080;
        v46 = v18;
        LODWORD(v42) = 28;
        v41 = buf;
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
          v21 = "NO";
          *buf = 68158210;
          *&buf[4] = 44;
          *&v44[2] = "[DIAttachParams reOpenIfWritableWithError:]";
          *v44 = 2080;
          if (v15)
          {
            v21 = "YES";
          }

          v45 = 2080;
          v46 = v21;
          _os_log_impl(&dword_248DE0000, v20, OS_LOG_TYPE_DEFAULT, "%.*s: isWritableFormat: %s", buf, 0x1Cu);
        }
      }

      *__error() = v16;
      v22 = [(DIAttachParams *)self fileMode];
      if (v15)
      {
        if (v22 != 2)
        {
          v23 = [(DIBaseParams *)self diskImageParamsXPC];
          objc_opt_class();
          v24 = objc_opt_isKindOfClass();

          if (v24)
          {
            v25 = [PluginBackendXPC alloc];
            v26 = [(DIBaseParams *)self inputURL];
            v27 = [(PluginBackendXPC *)v25 initWithURL:v26 openMode:2];

            v28 = v27;
          }

          else
          {
            v29 = [(DIBaseParams *)self inputURL];
            v30 = [BackendXPC newFileBackendWithURL:v29 fileOpenFlags:2 error:a3];

            v28 = v30;
            if (!v30)
            {
              v11 = 0;
              goto LABEL_9;
            }
          }

          v31 = *__error();
          if (DIForwardLogs())
          {
            v32 = getDIOSLog();
            os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
            v33 = [(DIBaseParams *)self inputURL:v41];
            v34 = [v33 path];
            *buf = 68158211;
            *&buf[4] = 44;
            *v44 = 2080;
            *&v44[2] = "[DIAttachParams reOpenIfWritableWithError:]";
            v45 = 2113;
            v46 = v34;
            v35 = _os_log_send_and_compose_impl();

            if (v35)
            {
              fprintf(*MEMORY[0x277D85DF8], "%s\n", v35);
              free(v35);
            }
          }

          else
          {
            v36 = getDIOSLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = [(DIBaseParams *)self inputURL];
              v38 = [v37 path];
              *buf = 68158211;
              *&buf[4] = 44;
              *v44 = 2080;
              *&v44[2] = "[DIAttachParams reOpenIfWritableWithError:]";
              v45 = 2113;
              v46 = v38;
              _os_log_impl(&dword_248DE0000, v36, OS_LOG_TYPE_DEFAULT, "%.*s: Image %{private}@ re-opened with RW permissions", buf, 0x1Cu);
            }
          }

          *__error() = v31;
          v39 = [(DIBaseParams *)self diskImageParamsXPC];
          v40 = [v39 backendXPC];
          [v40 replaceWithBackendXPC:v28];
        }
      }

      else if (v22 == 4)
      {
        v11 = [DIError failWithPOSIXCode:22 verboseInfo:@"Image has a read-only format error:attach failed due to force RW flag", a3];
        goto LABEL_9;
      }
    }
  }

LABEL_8:
  v11 = 1;
LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)updateStatFSWithError:(id *)a3
{
  v5 = [(DIBaseParams *)self inputURL];
  v6 = [v5 isFileURL];

  if (v6)
  {
    [(DIBaseParams *)self backend];
    get_sink_backend(&v17, &v19);
    fd_from_backend = get_fd_from_backend(&v19);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if ((fd_from_backend & 0x80000000) != 0)
    {
      return [DIError failWithEnumValue:150 verboseInfo:@"Unexpected backend type for file" error:a3];
    }

    v8 = [[DIStatFS alloc] initWithFileDescriptor:fd_from_backend error:a3];
    [(DIAttachParams *)self setInputStatFS:v8];

    v9 = [(DIAttachParams *)self inputStatFS];

    if (!v9)
    {
      return 0;
    }

    v10 = [(DIAttachParams *)self inputStatFS];
    [v10 logWithHeader:@"Input underlying FS"];
  }

  v11 = [(DIBaseParams *)self shadowChain];
  v12 = [v11 isEmpty];

  if (v12)
  {
    return 1;
  }

  v14 = [(DIBaseParams *)self shadowChain];
  v15 = [v14 statWithError:a3];
  v13 = v15 != 0;

  return v13;
}

- (id)newAttachWithError:(id *)a3
{
  v48[1] = *MEMORY[0x277D85DE8];
  if (![(DIBaseParams *)self isPstack])
  {
    v5 = [(DIBaseParams *)self shadowChain];
    v6 = [v5 hasBaseImageCache];

    if (v6)
    {
      v7 = [(DIBaseParams *)self shadowChain];
      v8 = [v7 nodes];
      [v8 removeObjectAtIndex:0];
    }
  }

  if (![(DIBaseParams *)self isPstack]|| ![(DIAttachParams *)self onDiskCache])
  {
    v10 = [(DIAttachParams *)self customCacheURL];

    if (v10)
    {
      v11 = [DIShadowNode alloc];
      v12 = [(DIAttachParams *)self customCacheURL];
      v13 = [(DIShadowNode *)v11 initWithURL:v12 isCache:1];

      v14 = [(DIBaseParams *)self shadowChain];
      v48[0] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
      v16 = [v14 verifyNodes:v15 error:a3];

      if ((v16 & 1) == 0)
      {

        goto LABEL_15;
      }

      v17 = [(DIBaseParams *)self shadowChain];
      v18 = [v17 nodes];
      [v18 insertObject:v13 atIndex:0];
    }

    v19 = [(DIBaseParams *)self diskImageParamsXPC];
    v20 = [v19 setBlockSize:-[DIBaseParams blockSize](self error:{"blockSize"), a3}];

    if (v20)
    {
      v21 = objc_alloc_init(DIClient2Controller_XPCHandler);
      v22 = *__error();
      if (DIForwardLogs())
      {
        v41 = 0;
        v23 = getDIOSLog();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        *buf = 68158210;
        v43 = 37;
        v44 = 2080;
        v45 = "[DIAttachParams newAttachWithError:]";
        v46 = 2114;
        v47 = self;
        LODWORD(v38) = 28;
        v37 = buf;
        v24 = _os_log_send_and_compose_impl();

        if (v24)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v24);
          free(v24);
        }
      }

      else
      {
        v25 = getDIOSLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158210;
          v43 = 37;
          v44 = 2080;
          v45 = "[DIAttachParams newAttachWithError:]";
          v46 = 2114;
          v47 = self;
          _os_log_impl(&dword_248DE0000, v25, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
        }
      }

      *__error() = v22;
      if ([(DIBaseParams *)self RAMdisk]&& [(DIAttachParams *)self fileMode]== 2)
      {
        v26 = @"Cannot attach RAM disk as a read-only device";
      }

      else
      {
        if (!-[DIBaseParams RAMdisk](self, "RAMdisk", v37, v38) || (-[DIBaseParams shadowChain](self, "shadowChain"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 isEmpty], v27, (v28 & 1) != 0))
        {
          if (![(DIBaseParams *)self requiresRootDaemon])
          {
            if ([(DIClient2Controller_XPCHandler *)v21 connectWithError:a3]&& [(DIBaseParams *)self prepareImageWithXpcHandler:v21 fileMode:[(DIAttachParams *)self fileMode] error:a3]&& [(DIAttachParams *)self reOpenIfWritableWithError:a3]&& [(DIAttachParams *)self updateStatFSWithError:a3])
            {
              v30 = [QuarantineFileHandler alloc];
              [(DIBaseParams *)self backend];
              v31 = [(QuarantineFileHandler *)v30 initWithBackend:v39 error:a3];
              if (v40)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v40);
              }

              if (v31)
              {
                if ([(DIAttachParams *)self handleRefCount]&& [(DIAttachParams *)self uniqueDevice])
                {
                  v32 = [MEMORY[0x277CCAD78] UUID];
                  v33 = [(DIBaseParams *)self diskImageParamsXPC];
                  [v33 setInstanceID:v32];
                }

                v9 = [(DIClient2Controller_XPCHandler *)v21 newAttachWithParams:self error:a3];
                if (v9 && [(QuarantineFileHandler *)v31 isQuarantined])
                {
                  v34 = [v9 BSDName];
                  [(QuarantineFileHandler *)v31 applyMountPointsWithBSDName:v34 error:0];
                }
              }

              else
              {
                v9 = 0;
              }
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_43;
          }

          v29 = [DIError nilWithPOSIXCode:45 verboseInfo:@"Sparsebundles on SMB mounts are not supported on this system" error:a3];
LABEL_42:
          v9 = v29;
LABEL_43:

          goto LABEL_44;
        }

        v26 = @"Cannot attach RAM disk with a shadow or a cache file";
      }

      v29 = [DIError nilWithPOSIXCode:22 description:v26 error:a3, v37];
      goto LABEL_42;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_44;
  }

  v9 = [DIError nilWithPOSIXCode:22 description:@"Cache is not supported when using pstack." error:a3];
LABEL_44:
  v35 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)copyWithURL:(id)a3 outURLStr:(char *)a4 maxLen:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [v9 description];
  v11 = [v10 UTF8String];

  if (!v11 || !*v11)
  {
    v13 = [DIError failWithPOSIXCode:22 verboseInfo:@"Failed converting URL to UTF8" error:a6];
LABEL_7:
    v12 = v13;
    goto LABEL_8;
  }

  if (strlcpy(a4, v11, a5) >= a5)
  {
    v13 = [DIError failWithPOSIXCode:22 description:@"Disk image URL is too long" error:a6];
    goto LABEL_7;
  }

  v12 = 1;
LABEL_8:

  return v12;
}

- (BOOL)isDeviceWithProperty:(const char *)a3 registryEntryID:(unint64_t)a4 predicate:(function<BOOL)(iokit_utils::di_io_obj_t
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = a4;
  if ([(DIBaseParams *)self RAMdisk])
  {
    v8 = 1;
  }

  else if (a4)
  {
    add_create_expected<iokit_utils::di_io_obj_t>::create<unsigned long long &>(&v21, v22);
    unwrap_expected<iokit_utils::di_io_obj_t,std::error_code>(v22, "device not found in registry", &v20);
    iokit_utils::di_io_obj_view::di_io_obj_view(v19, 3, &v20);
    iokit_utils::di_io_obj_view::begin(v19, &v17);
    iokit_utils::di_io_obj_view::end(v19, &v16);
    std::__function::__value_func<BOOL ()(iokit_utils::di_io_obj_t)>::__value_func[abi:ne200100](v27, a5);
    std::find_if[abi:ne200100]<iokit_utils::di_io_obj_iterator,std::function<BOOL ()(iokit_utils::di_io_obj_t)>>(&v17, &v16, v27, &v18);
    std::__function::__value_func<BOOL ()(iokit_utils::di_io_obj_t)>::~__value_func[abi:ne200100](v27);
    IOObjectRelease(HIDWORD(v16));
    IOObjectRelease(v16);
    IOObjectRelease(HIDWORD(v17));
    IOObjectRelease(v17);
    iokit_utils::di_io_obj_view::end(v19, &v15);
    v8 = iokit_utils::di_io_obj_iterator::operator!=(&v18, &v15);
    IOObjectRelease(HIDWORD(v15));
    IOObjectRelease(v15);
    IOObjectRelease(HIDWORD(v18));
    IOObjectRelease(v18);
    IOObjectRelease(v20);
    if (BYTE6(v24) == 1)
    {
      IOObjectRelease(v22[0]);
    }
  }

  else
  {
    v9 = *__error();
    if (DIForwardLogs())
    {
      v19[0] = 0;
      v10 = getDIOSLog();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      v22[0] = 68158210;
      v22[1] = 65;
      v23 = 2080;
      v24 = "[DIAttachParams isDeviceWithProperty:registryEntryID:predicate:]";
      v25 = 2080;
      v26 = a3;
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
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0x4104100302;
        v23 = 2080;
        v24 = "[DIAttachParams isDeviceWithProperty:registryEntryID:predicate:]";
        v25 = 2080;
        v26 = a3;
        _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Registry entry ID is 0, can't check %s property", v22, 0x1Cu);
      }
    }

    v8 = 0;
    *__error() = v9;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isDeviceSolidStateWithRegistryEntryID:(unint64_t)a3
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_285BD7120;
  v6[3] = v6;
  v3 = [(DIAttachParams *)self isDeviceWithProperty:"solid state" registryEntryID:a3 predicate:v6];
  std::__function::__value_func<BOOL ()(iokit_utils::di_io_obj_t)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isDeviceHighThroughputWithRegistryEntryID:(unint64_t)a3
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_285BD71F0;
  v6[3] = v6;
  v3 = [(DIAttachParams *)self isDeviceWithProperty:"high throughput" registryEntryID:a3 predicate:v6];
  std::__function::__value_func<BOOL ()(iokit_utils::di_io_obj_t)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isDeviceSolidStateWithRegistryEntryID:
{
  object = *a2;
  *a2 = 0;
  v9 = @"Device Characteristics";
  v8[0] = &object;
  v8[1] = &v9;
  wrap_exception<std::expected<CFAutoRelease<__CFDictionary const*>,std::error_code> iokit_utils::di_io_obj_t::get_cf_ref<__CFDictionary const*>(__CFString const*)::{lambda(void)#1}>(v8, theDict);
  v3 = v7 == 1 && theDict[0] && (Value = CFDictionaryGetValue(theDict[0], @"Medium Type")) != 0 && CFEqual(Value, @"Solid State") != 0;
  if (v7 == 1)
  {
    CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(theDict);
  }

  IOObjectRelease(object);
  return v3;
}

- (uint64_t)isDeviceSolidStateWithRegistryEntryID:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)isDeviceHighThroughputWithRegistryEntryID:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end