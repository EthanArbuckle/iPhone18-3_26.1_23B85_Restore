@interface DICreateParams
+ (BOOL)eraseIfExistingWithURL:(id)l error:(id *)error;
+ (BOOL)toHeaderEncryptionMode:(unint64_t)mode headerEncMode:(void *)encMode error:(id *)error;
- (BOOL)createDiskImageParamsWithError:(id *)error;
- (BOOL)createEncryptionWithXPCHandler:(id)handler error:(id *)error;
- (BOOL)onErrorCleanup;
- (BOOL)resizeWithDiskImage:(void *)image numberOfBlocks:(unint64_t)blocks error:(id *)error;
- (BOOL)resizeWithNumBlocks:(unint64_t)blocks error:(id *)error;
- (BOOL)setPassphrase:(const char *)passphrase encryptionMethod:(unint64_t)method error:(id *)error;
- (DICreateParams)initWithCoder:(id)coder;
- (DICreateParams)initWithURL:(id)l numBlocks:(unint64_t)blocks error:(id *)error;
- (id)createWithError:(id *)error;
- (unique_ptr<DiskImage,)createInternalWithError:(id *)error;
- (void)createDiskImageParamsXPC;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DICreateParams

- (DICreateParams)initWithURL:(id)l numBlocks:(unint64_t)blocks error:(id *)error
{
  v7.receiver = self;
  v7.super_class = DICreateParams;
  result = [(DIBaseParams *)&v7 initWithURL:l error:error];
  if (result)
  {
    result->_numBlocks = blocks;
  }

  return result;
}

- (DICreateParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DICreateParams;
  v5 = [(DIBaseParams *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_numBlocks = [coderCopy decodeInt64ForKey:@"numBlocks"];
    v5->_encryptionMethod = [coderCopy decodeIntegerForKey:@"encryptionMethod"];
    v5->_passphrase = [coderCopy decodeBoolForKey:@"passphrase"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"certificate"];
    certificate = v5->_certificate;
    v5->_certificate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = DICreateParams;
  [(DIBaseParams *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:-[DICreateParams numBlocks](self forKey:{"numBlocks"), @"numBlocks"}];
  [coderCopy encodeInteger:-[DICreateParams encryptionMethod](self forKey:{"encryptionMethod"), @"encryptionMethod"}];
  [coderCopy encodeBool:-[DICreateParams passphrase](self forKey:{"passphrase"), @"passphrase"}];
  publicKey = [(DICreateParams *)self publicKey];
  [coderCopy encodeObject:publicKey forKey:@"publicKey"];

  certificate = [(DICreateParams *)self certificate];
  [coderCopy encodeObject:certificate forKey:@"certificate"];
}

+ (BOOL)toHeaderEncryptionMode:(unint64_t)mode headerEncMode:(void *)encMode error:(id *)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (mode - 1 < 2)
  {
    v11[0] = 0x8000000100000005;
    v6 = 5;
    v7 = 5;
LABEL_5:
    smart_enums::validators::value<unsigned int>("encryption_mode", v7, v11, 2);
    *encMode = v6;
    v8 = *MEMORY[0x277D85DE8];
    return 1;
  }

  if (mode == 3)
  {
    v11[0] = 0x8000000100000005;
    v6 = -2147483647;
    v7 = -2147483647;
    goto LABEL_5;
  }

  v10 = *MEMORY[0x277D85DE8];

  return [DIError failWithPOSIXCode:22 verboseInfo:@"Invalid encryption method" error:error];
}

- (BOOL)createEncryptionWithXPCHandler:(id)handler error:(id *)error
{
  v18[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([(DICreateParams *)self encryptionMethod])
  {
    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    backendXPC = [diskImageParamsXPC backendXPC];
    v9 = backendXPC;
    if (backendXPC)
    {
      [backendXPC getCryptoHeaderBackend];
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    if (v17)
    {
      if ([(DICreateParams *)self encryptionMethod]== 2)
      {
        v11 = 256;
      }

      else
      {
        v11 = 128;
      }

      v18[0] = 0x10000000080;
      smart_enums::validators::value<unsigned int>("encryption_key_bits_size_t", v11, v18, 2);
      v14 = 0;
      if ([DICreateParams toHeaderEncryptionMode:[(DICreateParams *)self encryptionMethod] headerEncMode:&v14 error:error])
      {
        [(DIBaseParams *)self blockSize];
        operator new();
      }

      error = 0;
    }

    else
    {
      error = [DIError failWithUnexpected:v15 verboseInfo:v16 error:@"Failed to open crypto header", error];
    }

    if (v17 == 1 && v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    error = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return error;
}

- (void)createDiskImageParamsXPC
{
  exception = __cxa_allocate_exception(0x40uLL);
  DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Invalid argument, please use one of the DICreateParams derived classes instead", 0x16u);
}

- (BOOL)createDiskImageParamsWithError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  inputURL = [(DIBaseParams *)self inputURL];
  isFileURL = [inputURL isFileURL];

  if (isFileURL)
  {
    v7 = *__error();
    if (DIForwardLogs())
    {
      v8 = getDIOSLog();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      [(DIBaseParams *)self inputURL];
      *buf = 68158211;
      v20 = 49;
      v21 = 2080;
      v22 = "[DICreateParams createDiskImageParamsWithError:]";
      v24 = v23 = 2113;
      v9 = _os_log_send_and_compose_impl();

      if (v9)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
        free(v9);
      }
    }

    else
    {
      v12 = getDIOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        inputURL2 = [(DIBaseParams *)self inputURL];
        *buf = 68158211;
        v20 = 49;
        v21 = 2080;
        v22 = "[DICreateParams createDiskImageParamsWithError:]";
        v23 = 2113;
        v24 = inputURL2;
        _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_DEFAULT, "%.*s: entry with %{private}@", buf, 0x1Cu);
      }
    }

    *__error() = v7;
    v14 = objc_opt_class();
    inputURL3 = [(DIBaseParams *)self inputURL];
    LOBYTE(v14) = [v14 eraseIfExistingWithURL:inputURL3 error:error];

    if (v14)
    {
      [(DICreateParams *)self createDiskImageParamsXPC];
      diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
      v17 = [diskImageParamsXPC setBlockSize:-[DIBaseParams blockSize](self error:{"blockSize"), error}];
    }

    else
    {
      v17 = 0;
    }

    v18 = *MEMORY[0x277D85DE8];
    return v17;
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];

    return [DIError failWithPOSIXCode:22 verboseInfo:@"URL must have a file scheme" error:error];
  }
}

- (unique_ptr<DiskImage,)createInternalWithError:(id *)error
{
  v6 = v3;
  if (![(DICreateParams *)self encryptionMethod])
  {
LABEL_5:
    temporaryPassphrase = self->_temporaryPassphrase;
    self->_temporaryPassphrase = 0;

    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    shadowChain = [(DIBaseParams *)self shadowChain];
    shouldValidate = [shadowChain shouldValidate];
    if (diskImageParamsXPC)
    {
      [diskImageParamsXPC createDiskImageWithCache:0 shadowValidation:shouldValidate];
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    v12.var0 = [(DICreateParams *)self resizeWithDiskImage:v11 numberOfBlocks:[(DICreateParams *)self numBlocks] error:error];
    if (LODWORD(v12.var0))
    {
      *v6 = v11;
    }

    else
    {
      *v6 = 0;
      if (v11)
      {
        return (*(*v11 + 16))(v11);
      }
    }

    return v12;
  }

  v13 = objc_alloc_init(DIClient2Controller_XPCHandler);
  if ([(DIClient2Controller_XPCHandler *)v13 connectWithError:error]&& [(DICreateParams *)self createEncryptionWithXPCHandler:v13 error:error])
  {

    goto LABEL_5;
  }

  *v6 = 0;

  return v12;
}

- (id)createWithError:(id *)error
{
  if ([(DICreateParams *)self validateBlockSizeSupport])
  {
    if ([(DICreateParams *)self createDiskImageParamsWithError:error])
    {
      [(DICreateParams *)self createInternalWithError:error];
      if (v8)
      {
        diskimage_uio::details::diskimage_impl::create_diskimage();
      }

      [(DICreateParams *)self onErrorCleanup];
      v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [DIError nilWithPOSIXCode:22 description:@"Unsupported block size for image format" error:error];
  }

  temporaryPassphrase = self->_temporaryPassphrase;
  self->_temporaryPassphrase = 0;

  return v5;
}

- (BOOL)resizeWithDiskImage:(void *)image numberOfBlocks:(unint64_t)blocks error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  [(DICreateParams *)self setNumBlocks:blocks];
  v9 = (*(*image + 24))(image);
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  blocks = [diskImageParamsXPC setSizeWithDiskImage:image newSize:v9 * blocks];

  if (!blocks)
  {
    [(DICreateParams *)self setNumBlocks:(*(*image + 32))(image)];
    numBlocks = [(DICreateParams *)self numBlocks];
    v15 = (*(*image + 24))(image) * numBlocks;
    v16 = *__error();
    if (DIForwardLogs())
    {
      v17 = getDIOSLog();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      *buf = 0x3B04100302;
      v25 = 2080;
      v26 = "[DICreateParams resizeWithDiskImage:numberOfBlocks:error:]";
      v27 = 2048;
      v28 = v15;
      v18 = _os_log_send_and_compose_impl();

      if (v18)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v18);
        free(v18);
      }
    }

    else
    {
      v19 = getDIOSLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0x3B04100302;
        v25 = 2080;
        v26 = "[DICreateParams resizeWithDiskImage:numberOfBlocks:error:]";
        v27 = 2048;
        v28 = v15;
        _os_log_impl(&dword_248DE0000, v19, OS_LOG_TYPE_DEFAULT, "%.*s: Disk image resized to %llu bytes", buf, 0x1Cu);
      }
    }

    *__error() = v16;
    v20 = (*(*image + 144))(image);
    v21 = DiskImage::Context::flush(v20);
    if (v21)
    {
      v22 = [DIError failWithPOSIXCode:v21 error:error];
      if (!v20)
      {
LABEL_14:
        v23 = *MEMORY[0x277D85DE8];
        return v22;
      }
    }

    else
    {
      v22 = 1;
      if (!v20)
      {
        goto LABEL_14;
      }
    }

    (*(*v20 + 40))(v20);
    goto LABEL_14;
  }

  v12 = *MEMORY[0x277D85DE8];

  return [DIError failWithPOSIXCode:blocks verboseInfo:@"Failed to resize the image" error:error];
}

- (BOOL)resizeWithNumBlocks:(unint64_t)blocks error:(id *)error
{
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  shadowChain = [(DIBaseParams *)self shadowChain];
  shouldValidate = [shadowChain shouldValidate];
  if (diskImageParamsXPC)
  {
    [diskImageParamsXPC createDiskImageWithCache:0 shadowValidation:shouldValidate];
    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(DICreateParams *)self resizeWithDiskImage:v10 numberOfBlocks:blocks error:error];
  if (v10)
  {
    (*(*v10 + 16))(v10);
  }

  return v11;
}

+ (BOOL)eraseIfExistingWithURL:(id)l error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v26 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v8 = [defaultManager fileExistsAtPath:path isDirectory:&v26];

  if (v8)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    path2 = [lCopy path];
    v11 = [defaultManager2 isWritableFileAtPath:path2];

    if (v11)
    {
      if ([objc_opt_class() checkExistingFileWithURL:lCopy isDirectory:v26 error:error])
      {
        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        path3 = [lCopy path];
        v14 = [defaultManager3 attributesOfItemAtPath:path3 error:0];

        if ((v26 & 1) == 0 && v14)
        {
          v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
          defaultManager4 = v15;
          if (v15 && ![v15 longLongValue])
          {
            v21 = 1;
LABEL_19:

            goto LABEL_20;
          }
        }

        v17 = *__error();
        if (DIForwardLogs())
        {
          v18 = getDIOSLog();
          os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          path4 = [lCopy path];
          *buf = 68158211;
          v28 = 47;
          v29 = 2080;
          v30 = "+[DICreateParams eraseIfExistingWithURL:error:]";
          v31 = 2113;
          v32 = path4;
          v20 = _os_log_send_and_compose_impl();

          if (v20)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v20);
            free(v20);
          }
        }

        else
        {
          v22 = getDIOSLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            path5 = [lCopy path];
            *buf = 68158211;
            v28 = 47;
            v29 = 2080;
            v30 = "+[DICreateParams eraseIfExistingWithURL:error:]";
            v31 = 2113;
            v32 = path5;
            _os_log_impl(&dword_248DE0000, v22, OS_LOG_TYPE_DEFAULT, "%.*s: Erasing %{private}@", buf, 0x1Cu);
          }
        }

        *__error() = v17;
        defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
        v21 = [defaultManager4 removeItemAtURL:lCopy error:error];
        goto LABEL_19;
      }

      v21 = 0;
    }

    else
    {
      v21 = [DIError failWithPOSIXCode:13 verboseInfo:@"Image does not have write permissions" error:error];
    }
  }

  else
  {
    v21 = 1;
  }

LABEL_20:

  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)onErrorCleanup
{
  v21 = *MEMORY[0x277D85DE8];
  [(DIBaseParams *)self setDiskImageParamsXPC:0];
  v3 = *__error();
  if (DIForwardLogs())
  {
    v4 = getDIOSLog();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    inputURL = [(DIBaseParams *)self inputURL];
    [inputURL path];
    *buf = 68158211;
    v16 = 32;
    v17 = 2080;
    v18 = "[DICreateParams onErrorCleanup]";
    v20 = v19 = 2113;
    v6 = _os_log_send_and_compose_impl();

    if (v6)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v6);
      free(v6);
    }
  }

  else
  {
    v7 = getDIOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      inputURL2 = [(DIBaseParams *)self inputURL];
      path = [inputURL2 path];
      *buf = 68158211;
      v16 = 32;
      v17 = 2080;
      v18 = "[DICreateParams onErrorCleanup]";
      v19 = 2113;
      v20 = path;
      _os_log_impl(&dword_248DE0000, v7, OS_LOG_TYPE_DEFAULT, "%.*s: Creation failed, erasing %{private}@", buf, 0x1Cu);
    }
  }

  *__error() = v3;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  inputURL3 = [(DIBaseParams *)self inputURL];
  v12 = [defaultManager removeItemAtURL:inputURL3 error:0];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)setPassphrase:(const char *)passphrase encryptionMethod:(unint64_t)method error:(id *)error
{
  if (passphrase)
  {
    v8 = [[DITemporaryPassphrase alloc] initWithPassphrase:passphrase];
    temporaryPassphrase = self->_temporaryPassphrase;
    self->_temporaryPassphrase = v8;

    self->_encryptionMethod = method;
    return 1;
  }

  else
  {

    return [DIError failWithPOSIXCode:22 error:error];
  }
}

@end