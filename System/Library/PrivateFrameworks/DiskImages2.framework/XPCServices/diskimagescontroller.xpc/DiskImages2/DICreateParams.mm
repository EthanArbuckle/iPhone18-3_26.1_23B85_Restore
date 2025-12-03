@interface DICreateParams
+ (BOOL)checkExistingFileWithURL:(id)l isDirectory:(BOOL)directory error:(id *)error;
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
  if (mode - 1 < 2)
  {
    v9 = 0x8000000100000005;
    v6 = 5;
    v7 = 5;
LABEL_5:
    sub_10009C144("encryption_mode", v7, &v9, 2);
    *encMode = v6;
    return 1;
  }

  if (mode == 3)
  {
    v9 = 0x8000000100000005;
    v6 = -2147483647;
    v7 = -2147483647;
    goto LABEL_5;
  }

  return [DIError failWithPOSIXCode:22 verboseInfo:@"Invalid encryption method" error:error];
}

- (BOOL)createEncryptionWithXPCHandler:(id)handler error:(id *)error
{
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
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    if (v16)
    {
      if ([(DICreateParams *)self encryptionMethod]== 2)
      {
        v11 = 256;
      }

      else
      {
        v11 = 128;
      }

      v17 = 0x10000000080;
      sub_10009C144("encryption_key_bits_size_t", v11, &v17, 2);
      v13 = 0;
      if ([DICreateParams toHeaderEncryptionMode:[(DICreateParams *)self encryptionMethod] headerEncMode:&v13 error:error])
      {
        [(DIBaseParams *)self blockSize];
        operator new();
      }

      error = 0;
    }

    else
    {
      error = [DIError failWithUnexpected:v14 verboseInfo:v15 error:@"Failed to open crypto header", error];
    }

    if (v16 == 1 && v15)
    {
      sub_10000367C(v15);
    }
  }

  else
  {
    error = 1;
  }

  return error;
}

- (void)createDiskImageParamsXPC
{
  exception = __cxa_allocate_exception(0x40uLL);
  v3 = sub_100001860(exception, "Invalid argument, please use one of the DICreateParams derived classes instead", 0x16u);
}

- (BOOL)createDiskImageParamsWithError:(id *)error
{
  inputURL = [(DIBaseParams *)self inputURL];
  isFileURL = [inputURL isFileURL];

  if (isFileURL)
  {
    v7 = *__error();
    if (sub_1000E044C())
    {
      v8 = sub_1000E03D8();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      [(DIBaseParams *)self inputURL];
      *buf = 68158211;
      v18 = 49;
      v19 = 2080;
      v20 = "[DICreateParams createDiskImageParamsWithError:]";
      v22 = v21 = 2113;
      v9 = _os_log_send_and_compose_impl();

      if (v9)
      {
        fprintf(__stderrp, "%s\n", v9);
        free(v9);
      }
    }

    else
    {
      v11 = sub_1000E03D8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        inputURL2 = [(DIBaseParams *)self inputURL];
        *buf = 68158211;
        v18 = 49;
        v19 = 2080;
        v20 = "[DICreateParams createDiskImageParamsWithError:]";
        v21 = 2113;
        v22 = inputURL2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: entry with %{private}@", buf, 0x1Cu);
      }
    }

    *__error() = v7;
    v13 = objc_opt_class();
    inputURL3 = [(DIBaseParams *)self inputURL];
    LOBYTE(v13) = [v13 eraseIfExistingWithURL:inputURL3 error:error];

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    [(DICreateParams *)self createDiskImageParamsXPC];
    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    v16 = [diskImageParamsXPC setBlockSize:-[DIBaseParams blockSize](self error:{"blockSize"), error}];

    return v16;
  }

  else
  {

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
        sub_100050010();
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
  [(DICreateParams *)self setNumBlocks:blocks];
  v9 = (*(*image + 24))(image);
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  blocks = [diskImageParamsXPC setSizeWithDiskImage:image newSize:v9 * blocks];

  if (!blocks)
  {
    [(DICreateParams *)self setNumBlocks:(*(*image + 32))(image)];
    numBlocks = [(DICreateParams *)self numBlocks];
    v14 = (*(*image + 24))(image) * numBlocks;
    v15 = *__error();
    if (sub_1000E044C())
    {
      v16 = sub_1000E03D8();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      *buf = 0x3B04100302;
      v23 = 2080;
      v24 = "[DICreateParams resizeWithDiskImage:numberOfBlocks:error:]";
      v25 = 2048;
      v26 = v14;
      v17 = _os_log_send_and_compose_impl();

      if (v17)
      {
        fprintf(__stderrp, "%s\n", v17);
        free(v17);
      }
    }

    else
    {
      v18 = sub_1000E03D8();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0x3B04100302;
        v23 = 2080;
        v24 = "[DICreateParams resizeWithDiskImage:numberOfBlocks:error:]";
        v25 = 2048;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%.*s: Disk image resized to %llu bytes", buf, 0x1Cu);
      }
    }

    *__error() = v15;
    v19 = (*(*image + 144))(image);
    v20 = sub_10000FE1C(v19);
    if (v20)
    {
      v21 = [DIError failWithPOSIXCode:v20 error:error];
      if (!v19)
      {
        return v21;
      }
    }

    else
    {
      v21 = 1;
      if (!v19)
      {
        return v21;
      }
    }

    (*(*v19 + 40))(v19);
    return v21;
  }

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

+ (BOOL)checkExistingFileWithURL:(id)l isDirectory:(BOOL)directory error:(id *)error
{
  if (directory)
  {
    return [DIError failWithPOSIXCode:21 verboseInfo:@"The requested URL is an existing folder" error:error];
  }

  else
  {
    return 1;
  }
}

+ (BOOL)eraseIfExistingWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v25 = 0;
  v6 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v8 = [v6 fileExistsAtPath:path isDirectory:&v25];

  if (v8)
  {
    v9 = +[NSFileManager defaultManager];
    path2 = [lCopy path];
    v11 = [v9 isWritableFileAtPath:path2];

    if (v11)
    {
      if ([objc_opt_class() checkExistingFileWithURL:lCopy isDirectory:v25 error:error])
      {
        v12 = +[NSFileManager defaultManager];
        path3 = [lCopy path];
        v14 = [v12 attributesOfItemAtPath:path3 error:0];

        if ((v25 & 1) == 0 && v14)
        {
          v15 = [v14 objectForKeyedSubscript:NSFileSize];
          v16 = v15;
          if (v15 && ![v15 longLongValue])
          {
            v21 = 1;
LABEL_19:

            goto LABEL_20;
          }
        }

        v17 = *__error();
        if (sub_1000E044C())
        {
          v18 = sub_1000E03D8();
          os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          path4 = [lCopy path];
          *buf = 68158211;
          v27 = 47;
          v28 = 2080;
          v29 = "+[DICreateParams eraseIfExistingWithURL:error:]";
          v30 = 2113;
          v31 = path4;
          v20 = _os_log_send_and_compose_impl();

          if (v20)
          {
            fprintf(__stderrp, "%s\n", v20);
            free(v20);
          }
        }

        else
        {
          v22 = sub_1000E03D8();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            path5 = [lCopy path];
            *buf = 68158211;
            v27 = 47;
            v28 = 2080;
            v29 = "+[DICreateParams eraseIfExistingWithURL:error:]";
            v30 = 2113;
            v31 = path5;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%.*s: Erasing %{private}@", buf, 0x1Cu);
          }
        }

        *__error() = v17;
        v16 = +[NSFileManager defaultManager];
        v21 = [v16 removeItemAtURL:lCopy error:error];
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

  return v21;
}

- (BOOL)onErrorCleanup
{
  [(DIBaseParams *)self setDiskImageParamsXPC:0];
  v3 = *__error();
  if (sub_1000E044C())
  {
    v4 = sub_1000E03D8();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    inputURL = [(DIBaseParams *)self inputURL];
    [inputURL path];
    *buf = 68158211;
    v15 = 32;
    v16 = 2080;
    v17 = "[DICreateParams onErrorCleanup]";
    v19 = v18 = 2113;
    v6 = _os_log_send_and_compose_impl();

    if (v6)
    {
      fprintf(__stderrp, "%s\n", v6);
      free(v6);
    }
  }

  else
  {
    v7 = sub_1000E03D8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      inputURL2 = [(DIBaseParams *)self inputURL];
      path = [inputURL2 path];
      *buf = 68158211;
      v15 = 32;
      v16 = 2080;
      v17 = "[DICreateParams onErrorCleanup]";
      v18 = 2113;
      v19 = path;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%.*s: Creation failed, erasing %{private}@", buf, 0x1Cu);
    }
  }

  *__error() = v3;
  v10 = +[NSFileManager defaultManager];
  inputURL3 = [(DIBaseParams *)self inputURL];
  v12 = [v10 removeItemAtURL:inputURL3 error:0];

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