@interface DIAttachParams
+ (BOOL)copyWithURL:(id)l outURLStr:(char *)str maxLen:(unint64_t)len error:(id *)error;
- (BOOL)isDeviceHighThroughputWithRegistryEntryID:(unint64_t)d;
- (BOOL)isDeviceSolidStateWithRegistryEntryID:;
- (BOOL)isDeviceSolidStateWithRegistryEntryID:(unint64_t)d;
- (BOOL)isDeviceWithProperty:(const char *)property registryEntryID:(unint64_t)d predicate:(function<BOOL)(iokit_utils::di_io_obj_t;
- (BOOL)reOpenIfWritableWithError:(id *)error;
- (BOOL)shouldValidateShadows;
- (BOOL)updateStatFSWithError:(id *)error;
- (DIAttachParams)initWithCoder:(id)coder;
- (DIAttachParams)initWithExistingParams:(id)params error:(id *)error;
- (DIAttachParams)initWithURL:(id)l error:(id *)error;
- (DIAttachParams)initWithURL:(id)l shadowURLs:(id)ls error:(id *)error;
- (id)newAttachWithError:(id *)error;
- (uint64_t)isDeviceHighThroughputWithRegistryEntryID:;
- (uint64_t)isDeviceSolidStateWithRegistryEntryID:;
- (void)encodeWithCoder:(id)coder;
- (void)setOnDiskCache:(BOOL)cache;
- (void)setupDefaults;
@end

@implementation DIAttachParams

- (DIAttachParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DIAttachParams;
  v5 = [(DIBaseParams *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_autoMount = [coderCopy decodeBoolForKey:@"autoMount"];
    v5->_commandSize = [coderCopy decodeIntegerForKey:@"commandSize"];
    v5->_regEntryID = [coderCopy decodeInt64ForKey:@"regEntryID"];
    v5->_handleRefCount = [coderCopy decodeBoolForKey:@"handleRefCount"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputStatFS"];
    inputStatFS = v5->_inputStatFS;
    v5->_inputStatFS = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputMountedFrom"];
    inputMountedFrom = v5->_inputMountedFrom;
    v5->_inputMountedFrom = v8;

    v5->_fileMode = [coderCopy decodeIntegerForKey:@"fileMode"];
    v5->_onDiskCache = [coderCopy decodeBoolForKey:@"onDiskCache"];
    v5->_uniqueDevice = [coderCopy decodeBoolForKey:@"uniqueDevice"];
    v5->_emulateExternalDisk = [coderCopy decodeBoolForKey:@"emulateExternalDisk"];
    v5->_suppressSsdFlags = [coderCopy decodeBoolForKey:@"suppressSsdFlags"];
    v5->_singleInstanceDaemon = [coderCopy decodeBoolForKey:@"singleInstanceDaemon"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = DIAttachParams;
  [(DIBaseParams *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[DIAttachParams autoMount](self forKey:{"autoMount"), @"autoMount"}];
  [coderCopy encodeInteger:-[DIAttachParams commandSize](self forKey:{"commandSize"), @"commandSize"}];
  [coderCopy encodeInt64:-[DIAttachParams regEntryID](self forKey:{"regEntryID"), @"regEntryID"}];
  [coderCopy encodeBool:-[DIAttachParams handleRefCount](self forKey:{"handleRefCount"), @"handleRefCount"}];
  inputStatFS = [(DIAttachParams *)self inputStatFS];
  [coderCopy encodeObject:inputStatFS forKey:@"inputStatFS"];

  [coderCopy encodeInteger:-[DIAttachParams fileMode](self forKey:{"fileMode"), @"fileMode"}];
  [coderCopy encodeBool:-[DIAttachParams onDiskCache](self forKey:{"onDiskCache"), @"onDiskCache"}];
  [coderCopy encodeBool:-[DIAttachParams uniqueDevice](self forKey:{"uniqueDevice"), @"uniqueDevice"}];
  [coderCopy encodeBool:-[DIAttachParams emulateExternalDisk](self forKey:{"emulateExternalDisk"), @"emulateExternalDisk"}];
  [coderCopy encodeBool:-[DIAttachParams suppressSsdFlags](self forKey:{"suppressSsdFlags"), @"suppressSsdFlags"}];
  [coderCopy encodeBool:-[DIAttachParams singleInstanceDaemon](self forKey:{"singleInstanceDaemon"), @"singleInstanceDaemon"}];
}

- (void)setupDefaults
{
  self->_fileMode = 1;
  self->_autoMount = ![(DIBaseParams *)self RAMdisk];
  self->_onDiskCache = 0;
  customCacheURL = self->_customCacheURL;
  self->_customCacheURL = 0;
}

- (void)setOnDiskCache:(BOOL)cache
{
  self->_onDiskCache = cache;
  if (!cache)
  {
    customCacheURL = self->_customCacheURL;
    self->_customCacheURL = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (DIAttachParams)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  array = [MEMORY[0x277CBEA60] array];
  v8 = [(DIAttachParams *)self initWithURL:lCopy shadowURLs:array error:error];

  return v8;
}

- (DIAttachParams)initWithURL:(id)l shadowURLs:(id)ls error:(id *)error
{
  lCopy = l;
  lsCopy = ls;
  v17.receiver = self;
  v17.super_class = DIAttachParams;
  v10 = [(DIBaseParams *)&v17 initWithURL:lCopy error:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  if (![(DIBaseParams *)v10 openExistingImageWithFlags:0 error:error])
  {
    goto LABEL_9;
  }

  [(DIAttachParams *)v11 setupDefaults];
  if (![lsCopy count])
  {
LABEL_7:
    v12 = v11;
    goto LABEL_8;
  }

  if (![(DIBaseParams *)v11 isPstack])
  {
    shadowChain = [(DIBaseParams *)v11 shadowChain];
    v14 = [shadowChain addShadowURLs:lsCopy error:error];

    if (v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v12 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Custom cache or shadow is not supported for pstack based images." error:error];
LABEL_8:
  v15 = v12;
LABEL_10:

  return v15;
}

- (DIAttachParams)initWithExistingParams:(id)params error:(id *)error
{
  paramsCopy = params;
  inputURL = [paramsCopy inputURL];
  v19.receiver = self;
  v19.super_class = DIAttachParams;
  v8 = [(DIBaseParams *)&v19 initWithURL:inputURL error:error];

  if (!v8)
  {
    goto LABEL_5;
  }

  diskImageParamsXPC = [paramsCopy diskImageParamsXPC];
  [(DIBaseParams *)v8 setDiskImageParamsXPC:diskImageParamsXPC];

  diskImageParamsXPC2 = [(DIBaseParams *)v8 diskImageParamsXPC];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(DIBaseParams *)v8 backend];
    operator new();
  }

  [(DIAttachParams *)v8 setupDefaults];
  diskImageParamsXPC3 = [(DIBaseParams *)v8 diskImageParamsXPC];
  -[DIBaseParams setBlockSize:](v8, "setBlockSize:", [diskImageParamsXPC3 blockSize]);

  shadowChain = [(DIBaseParams *)v8 shadowChain];
  shadowChain2 = [paramsCopy shadowChain];
  nodes = [shadowChain2 nodes];
  v16 = [shadowChain addShadowNodes:nodes error:error];

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
  shadowChain = [(DIBaseParams *)self shadowChain];
  shouldValidate = [shadowChain shouldValidate];

  return shouldValidate;
}

- (BOOL)reOpenIfWritableWithError:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  inputURL = [(DIBaseParams *)self inputURL];
  if ([inputURL isFileURL])
  {
  }

  else
  {
    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  shadowChain = [(DIBaseParams *)self shadowChain];
  activeShadowURL = [shadowChain activeShadowURL];

  if (!activeShadowURL)
  {
    [(DIBaseParams *)self backend];
    v10 = (*(**buf + 48))(*buf);
    if (*v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*v44);
    }

    if ((v10 & 1) == 0)
    {
      diskImageParamsXPC2 = [(DIBaseParams *)self diskImageParamsXPC];
      isWritableFormat = [diskImageParamsXPC2 isWritableFormat];

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
        if (isWritableFormat)
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
          if (isWritableFormat)
          {
            v21 = "YES";
          }

          v45 = 2080;
          v46 = v21;
          _os_log_impl(&dword_248DE0000, v20, OS_LOG_TYPE_DEFAULT, "%.*s: isWritableFormat: %s", buf, 0x1Cu);
        }
      }

      *__error() = v16;
      fileMode = [(DIAttachParams *)self fileMode];
      if (isWritableFormat)
      {
        if (fileMode != 2)
        {
          diskImageParamsXPC3 = [(DIBaseParams *)self diskImageParamsXPC];
          objc_opt_class();
          v24 = objc_opt_isKindOfClass();

          if (v24)
          {
            v25 = [PluginBackendXPC alloc];
            inputURL2 = [(DIBaseParams *)self inputURL];
            v27 = [(PluginBackendXPC *)v25 initWithURL:inputURL2 openMode:2];

            v28 = v27;
          }

          else
          {
            inputURL3 = [(DIBaseParams *)self inputURL];
            v30 = [BackendXPC newFileBackendWithURL:inputURL3 fileOpenFlags:2 error:error];

            v28 = v30;
            if (!v30)
            {
              error = 0;
              goto LABEL_9;
            }
          }

          v31 = *__error();
          if (DIForwardLogs())
          {
            v32 = getDIOSLog();
            os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
            v33 = [(DIBaseParams *)self inputURL:v41];
            path = [v33 path];
            *buf = 68158211;
            *&buf[4] = 44;
            *v44 = 2080;
            *&v44[2] = "[DIAttachParams reOpenIfWritableWithError:]";
            v45 = 2113;
            v46 = path;
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
              inputURL4 = [(DIBaseParams *)self inputURL];
              path2 = [inputURL4 path];
              *buf = 68158211;
              *&buf[4] = 44;
              *v44 = 2080;
              *&v44[2] = "[DIAttachParams reOpenIfWritableWithError:]";
              v45 = 2113;
              v46 = path2;
              _os_log_impl(&dword_248DE0000, v36, OS_LOG_TYPE_DEFAULT, "%.*s: Image %{private}@ re-opened with RW permissions", buf, 0x1Cu);
            }
          }

          *__error() = v31;
          diskImageParamsXPC4 = [(DIBaseParams *)self diskImageParamsXPC];
          backendXPC = [diskImageParamsXPC4 backendXPC];
          [backendXPC replaceWithBackendXPC:v28];
        }
      }

      else if (fileMode == 4)
      {
        error = [DIError failWithPOSIXCode:22 verboseInfo:@"Image has a read-only format error:attach failed due to force RW flag", error];
        goto LABEL_9;
      }
    }
  }

LABEL_8:
  error = 1;
LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)updateStatFSWithError:(id *)error
{
  inputURL = [(DIBaseParams *)self inputURL];
  isFileURL = [inputURL isFileURL];

  if (isFileURL)
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
      return [DIError failWithEnumValue:150 verboseInfo:@"Unexpected backend type for file" error:error];
    }

    v8 = [[DIStatFS alloc] initWithFileDescriptor:fd_from_backend error:error];
    [(DIAttachParams *)self setInputStatFS:v8];

    inputStatFS = [(DIAttachParams *)self inputStatFS];

    if (!inputStatFS)
    {
      return 0;
    }

    inputStatFS2 = [(DIAttachParams *)self inputStatFS];
    [inputStatFS2 logWithHeader:@"Input underlying FS"];
  }

  shadowChain = [(DIBaseParams *)self shadowChain];
  isEmpty = [shadowChain isEmpty];

  if (isEmpty)
  {
    return 1;
  }

  shadowChain2 = [(DIBaseParams *)self shadowChain];
  v15 = [shadowChain2 statWithError:error];
  v13 = v15 != 0;

  return v13;
}

- (id)newAttachWithError:(id *)error
{
  v48[1] = *MEMORY[0x277D85DE8];
  if (![(DIBaseParams *)self isPstack])
  {
    shadowChain = [(DIBaseParams *)self shadowChain];
    hasBaseImageCache = [shadowChain hasBaseImageCache];

    if (hasBaseImageCache)
    {
      shadowChain2 = [(DIBaseParams *)self shadowChain];
      nodes = [shadowChain2 nodes];
      [nodes removeObjectAtIndex:0];
    }
  }

  if (![(DIBaseParams *)self isPstack]|| ![(DIAttachParams *)self onDiskCache])
  {
    customCacheURL = [(DIAttachParams *)self customCacheURL];

    if (customCacheURL)
    {
      v11 = [DIShadowNode alloc];
      customCacheURL2 = [(DIAttachParams *)self customCacheURL];
      v13 = [(DIShadowNode *)v11 initWithURL:customCacheURL2 isCache:1];

      shadowChain3 = [(DIBaseParams *)self shadowChain];
      v48[0] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
      v16 = [shadowChain3 verifyNodes:v15 error:error];

      if ((v16 & 1) == 0)
      {

        goto LABEL_15;
      }

      shadowChain4 = [(DIBaseParams *)self shadowChain];
      nodes2 = [shadowChain4 nodes];
      [nodes2 insertObject:v13 atIndex:0];
    }

    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    v20 = [diskImageParamsXPC setBlockSize:-[DIBaseParams blockSize](self error:{"blockSize"), error}];

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
        selfCopy2 = self;
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
          selfCopy2 = self;
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
            if ([(DIClient2Controller_XPCHandler *)v21 connectWithError:error]&& [(DIBaseParams *)self prepareImageWithXpcHandler:v21 fileMode:[(DIAttachParams *)self fileMode] error:error]&& [(DIAttachParams *)self reOpenIfWritableWithError:error]&& [(DIAttachParams *)self updateStatFSWithError:error])
            {
              v30 = [QuarantineFileHandler alloc];
              [(DIBaseParams *)self backend];
              v31 = [(QuarantineFileHandler *)v30 initWithBackend:v39 error:error];
              if (v40)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v40);
              }

              if (v31)
              {
                if ([(DIAttachParams *)self handleRefCount]&& [(DIAttachParams *)self uniqueDevice])
                {
                  uUID = [MEMORY[0x277CCAD78] UUID];
                  diskImageParamsXPC2 = [(DIBaseParams *)self diskImageParamsXPC];
                  [diskImageParamsXPC2 setInstanceID:uUID];
                }

                v9 = [(DIClient2Controller_XPCHandler *)v21 newAttachWithParams:self error:error];
                if (v9 && [(QuarantineFileHandler *)v31 isQuarantined])
                {
                  bSDName = [v9 BSDName];
                  [(QuarantineFileHandler *)v31 applyMountPointsWithBSDName:bSDName error:0];
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

          v29 = [DIError nilWithPOSIXCode:45 verboseInfo:@"Sparsebundles on SMB mounts are not supported on this system" error:error];
LABEL_42:
          v9 = v29;
LABEL_43:

          goto LABEL_44;
        }

        v26 = @"Cannot attach RAM disk with a shadow or a cache file";
      }

      v29 = [DIError nilWithPOSIXCode:22 description:v26 error:error, v37];
      goto LABEL_42;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_44;
  }

  v9 = [DIError nilWithPOSIXCode:22 description:@"Cache is not supported when using pstack." error:error];
LABEL_44:
  v35 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)copyWithURL:(id)l outURLStr:(char *)str maxLen:(unint64_t)len error:(id *)error
{
  lCopy = l;
  v10 = [lCopy description];
  uTF8String = [v10 UTF8String];

  if (!uTF8String || !*uTF8String)
  {
    v13 = [DIError failWithPOSIXCode:22 verboseInfo:@"Failed converting URL to UTF8" error:error];
LABEL_7:
    v12 = v13;
    goto LABEL_8;
  }

  if (strlcpy(str, uTF8String, len) >= len)
  {
    v13 = [DIError failWithPOSIXCode:22 description:@"Disk image URL is too long" error:error];
    goto LABEL_7;
  }

  v12 = 1;
LABEL_8:

  return v12;
}

- (BOOL)isDeviceWithProperty:(const char *)property registryEntryID:(unint64_t)d predicate:(function<BOOL)(iokit_utils::di_io_obj_t
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(DIBaseParams *)self RAMdisk])
  {
    v8 = 1;
  }

  else if (d)
  {
    add_create_expected<iokit_utils::di_io_obj_t>::create<unsigned long long &>(&dCopy, v22);
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
      propertyCopy2 = property;
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
        propertyCopy2 = property;
        _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Registry entry ID is 0, can't check %s property", v22, 0x1Cu);
      }
    }

    v8 = 0;
    *__error() = v9;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isDeviceSolidStateWithRegistryEntryID:(unint64_t)d
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_285BD7120;
  v6[3] = v6;
  v3 = [(DIAttachParams *)self isDeviceWithProperty:"solid state" registryEntryID:d predicate:v6];
  std::__function::__value_func<BOOL ()(iokit_utils::di_io_obj_t)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isDeviceHighThroughputWithRegistryEntryID:(unint64_t)d
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_285BD71F0;
  v6[3] = v6;
  v3 = [(DIAttachParams *)self isDeviceWithProperty:"high throughput" registryEntryID:d predicate:v6];
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
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)isDeviceHighThroughputWithRegistryEntryID:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end