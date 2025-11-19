@interface DICreateParams
+ (BOOL)eraseIfExistingWithURL:(id)a3 error:(id *)a4;
+ (BOOL)toHeaderEncryptionMode:(unint64_t)a3 headerEncMode:(void *)a4 error:(id *)a5;
- (BOOL)createDiskImageParamsWithError:(id *)a3;
- (BOOL)createEncryptionWithXPCHandler:(id)a3 error:(id *)a4;
- (BOOL)onErrorCleanup;
- (BOOL)resizeWithDiskImage:(void *)a3 numberOfBlocks:(unint64_t)a4 error:(id *)a5;
- (BOOL)resizeWithNumBlocks:(unint64_t)a3 error:(id *)a4;
- (BOOL)setPassphrase:(const char *)a3 encryptionMethod:(unint64_t)a4 error:(id *)a5;
- (DICreateParams)initWithCoder:(id)a3;
- (DICreateParams)initWithURL:(id)a3 numBlocks:(unint64_t)a4 error:(id *)a5;
- (id)createWithError:(id *)a3;
- (unique_ptr<DiskImage,)createInternalWithError:(id *)a3;
- (void)createDiskImageParamsXPC;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DICreateParams

- (DICreateParams)initWithURL:(id)a3 numBlocks:(unint64_t)a4 error:(id *)a5
{
  v7.receiver = self;
  v7.super_class = DICreateParams;
  result = [(DIBaseParams *)&v7 initWithURL:a3 error:a5];
  if (result)
  {
    result->_numBlocks = a4;
  }

  return result;
}

- (DICreateParams)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DICreateParams;
  v5 = [(DIBaseParams *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_numBlocks = [v4 decodeInt64ForKey:@"numBlocks"];
    v5->_encryptionMethod = [v4 decodeIntegerForKey:@"encryptionMethod"];
    v5->_passphrase = [v4 decodeBoolForKey:@"passphrase"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"certificate"];
    certificate = v5->_certificate;
    v5->_certificate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DICreateParams;
  [(DIBaseParams *)&v7 encodeWithCoder:v4];
  [v4 encodeInt64:-[DICreateParams numBlocks](self forKey:{"numBlocks"), @"numBlocks"}];
  [v4 encodeInteger:-[DICreateParams encryptionMethod](self forKey:{"encryptionMethod"), @"encryptionMethod"}];
  [v4 encodeBool:-[DICreateParams passphrase](self forKey:{"passphrase"), @"passphrase"}];
  v5 = [(DICreateParams *)self publicKey];
  [v4 encodeObject:v5 forKey:@"publicKey"];

  v6 = [(DICreateParams *)self certificate];
  [v4 encodeObject:v6 forKey:@"certificate"];
}

+ (BOOL)toHeaderEncryptionMode:(unint64_t)a3 headerEncMode:(void *)a4 error:(id *)a5
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3 - 1 < 2)
  {
    v11[0] = 0x8000000100000005;
    v6 = 5;
    v7 = 5;
LABEL_5:
    smart_enums::validators::value<unsigned int>("encryption_mode", v7, v11, 2);
    *a4 = v6;
    v8 = *MEMORY[0x277D85DE8];
    return 1;
  }

  if (a3 == 3)
  {
    v11[0] = 0x8000000100000005;
    v6 = -2147483647;
    v7 = -2147483647;
    goto LABEL_5;
  }

  v10 = *MEMORY[0x277D85DE8];

  return [DIError failWithPOSIXCode:22 verboseInfo:@"Invalid encryption method" error:a5];
}

- (BOOL)createEncryptionWithXPCHandler:(id)a3 error:(id *)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(DICreateParams *)self encryptionMethod])
  {
    v7 = [(DIBaseParams *)self diskImageParamsXPC];
    v8 = [v7 backendXPC];
    v9 = v8;
    if (v8)
    {
      [v8 getCryptoHeaderBackend];
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
      if ([DICreateParams toHeaderEncryptionMode:[(DICreateParams *)self encryptionMethod] headerEncMode:&v14 error:a4])
      {
        [(DIBaseParams *)self blockSize];
        operator new();
      }

      v10 = 0;
    }

    else
    {
      v10 = [DIError failWithUnexpected:v15 verboseInfo:v16 error:@"Failed to open crypto header", a4];
    }

    if (v17 == 1 && v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    v10 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)createDiskImageParamsXPC
{
  exception = __cxa_allocate_exception(0x40uLL);
  DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Invalid argument, please use one of the DICreateParams derived classes instead", 0x16u);
}

- (BOOL)createDiskImageParamsWithError:(id *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [(DIBaseParams *)self inputURL];
  v6 = [v5 isFileURL];

  if (v6)
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
        v13 = [(DIBaseParams *)self inputURL];
        *buf = 68158211;
        v20 = 49;
        v21 = 2080;
        v22 = "[DICreateParams createDiskImageParamsWithError:]";
        v23 = 2113;
        v24 = v13;
        _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_DEFAULT, "%.*s: entry with %{private}@", buf, 0x1Cu);
      }
    }

    *__error() = v7;
    v14 = objc_opt_class();
    v15 = [(DIBaseParams *)self inputURL];
    LOBYTE(v14) = [v14 eraseIfExistingWithURL:v15 error:a3];

    if (v14)
    {
      [(DICreateParams *)self createDiskImageParamsXPC];
      v16 = [(DIBaseParams *)self diskImageParamsXPC];
      v17 = [v16 setBlockSize:-[DIBaseParams blockSize](self error:{"blockSize"), a3}];
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

    return [DIError failWithPOSIXCode:22 verboseInfo:@"URL must have a file scheme" error:a3];
  }
}

- (unique_ptr<DiskImage,)createInternalWithError:(id *)a3
{
  v6 = v3;
  if (![(DICreateParams *)self encryptionMethod])
  {
LABEL_5:
    temporaryPassphrase = self->_temporaryPassphrase;
    self->_temporaryPassphrase = 0;

    v8 = [(DIBaseParams *)self diskImageParamsXPC];
    v9 = [(DIBaseParams *)self shadowChain];
    v10 = [v9 shouldValidate];
    if (v8)
    {
      [v8 createDiskImageWithCache:0 shadowValidation:v10];
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    v12.var0 = [(DICreateParams *)self resizeWithDiskImage:v11 numberOfBlocks:[(DICreateParams *)self numBlocks] error:a3];
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
  if ([(DIClient2Controller_XPCHandler *)v13 connectWithError:a3]&& [(DICreateParams *)self createEncryptionWithXPCHandler:v13 error:a3])
  {

    goto LABEL_5;
  }

  *v6 = 0;

  return v12;
}

- (id)createWithError:(id *)a3
{
  if ([(DICreateParams *)self validateBlockSizeSupport])
  {
    if ([(DICreateParams *)self createDiskImageParamsWithError:a3])
    {
      [(DICreateParams *)self createInternalWithError:a3];
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
    v5 = [DIError nilWithPOSIXCode:22 description:@"Unsupported block size for image format" error:a3];
  }

  temporaryPassphrase = self->_temporaryPassphrase;
  self->_temporaryPassphrase = 0;

  return v5;
}

- (BOOL)resizeWithDiskImage:(void *)a3 numberOfBlocks:(unint64_t)a4 error:(id *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  [(DICreateParams *)self setNumBlocks:a4];
  v9 = (*(*a3 + 24))(a3);
  v10 = [(DIBaseParams *)self diskImageParamsXPC];
  v11 = [v10 setSizeWithDiskImage:a3 newSize:v9 * a4];

  if (!v11)
  {
    [(DICreateParams *)self setNumBlocks:(*(*a3 + 32))(a3)];
    v14 = [(DICreateParams *)self numBlocks];
    v15 = (*(*a3 + 24))(a3) * v14;
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
    v20 = (*(*a3 + 144))(a3);
    v21 = DiskImage::Context::flush(v20);
    if (v21)
    {
      v22 = [DIError failWithPOSIXCode:v21 error:a5];
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

  return [DIError failWithPOSIXCode:v11 verboseInfo:@"Failed to resize the image" error:a5];
}

- (BOOL)resizeWithNumBlocks:(unint64_t)a3 error:(id *)a4
{
  v7 = [(DIBaseParams *)self diskImageParamsXPC];
  v8 = [(DIBaseParams *)self shadowChain];
  v9 = [v8 shouldValidate];
  if (v7)
  {
    [v7 createDiskImageWithCache:0 shadowValidation:v9];
    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(DICreateParams *)self resizeWithDiskImage:v10 numberOfBlocks:a3 error:a4];
  if (v10)
  {
    (*(*v10 + 16))(v10);
  }

  return v11;
}

+ (BOOL)eraseIfExistingWithURL:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = 0;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7 isDirectory:&v26];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v5 path];
    v11 = [v9 isWritableFileAtPath:v10];

    if (v11)
    {
      if ([objc_opt_class() checkExistingFileWithURL:v5 isDirectory:v26 error:a4])
      {
        v12 = [MEMORY[0x277CCAA00] defaultManager];
        v13 = [v5 path];
        v14 = [v12 attributesOfItemAtPath:v13 error:0];

        if ((v26 & 1) == 0 && v14)
        {
          v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
          v16 = v15;
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
          v19 = [v5 path];
          *buf = 68158211;
          v28 = 47;
          v29 = 2080;
          v30 = "+[DICreateParams eraseIfExistingWithURL:error:]";
          v31 = 2113;
          v32 = v19;
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
            v23 = [v5 path];
            *buf = 68158211;
            v28 = 47;
            v29 = 2080;
            v30 = "+[DICreateParams eraseIfExistingWithURL:error:]";
            v31 = 2113;
            v32 = v23;
            _os_log_impl(&dword_248DE0000, v22, OS_LOG_TYPE_DEFAULT, "%.*s: Erasing %{private}@", buf, 0x1Cu);
          }
        }

        *__error() = v17;
        v16 = [MEMORY[0x277CCAA00] defaultManager];
        v21 = [v16 removeItemAtURL:v5 error:a4];
        goto LABEL_19;
      }

      v21 = 0;
    }

    else
    {
      v21 = [DIError failWithPOSIXCode:13 verboseInfo:@"Image does not have write permissions" error:a4];
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
    v5 = [(DIBaseParams *)self inputURL];
    [v5 path];
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
      v8 = [(DIBaseParams *)self inputURL];
      v9 = [v8 path];
      *buf = 68158211;
      v16 = 32;
      v17 = 2080;
      v18 = "[DICreateParams onErrorCleanup]";
      v19 = 2113;
      v20 = v9;
      _os_log_impl(&dword_248DE0000, v7, OS_LOG_TYPE_DEFAULT, "%.*s: Creation failed, erasing %{private}@", buf, 0x1Cu);
    }
  }

  *__error() = v3;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [(DIBaseParams *)self inputURL];
  v12 = [v10 removeItemAtURL:v11 error:0];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)setPassphrase:(const char *)a3 encryptionMethod:(unint64_t)a4 error:(id *)a5
{
  if (a3)
  {
    v8 = [[DITemporaryPassphrase alloc] initWithPassphrase:a3];
    temporaryPassphrase = self->_temporaryPassphrase;
    self->_temporaryPassphrase = v8;

    self->_encryptionMethod = a4;
    return 1;
  }

  else
  {

    return [DIError failWithPOSIXCode:22 error:a5];
  }
}

@end