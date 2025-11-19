@interface DIConvertParams
- (BOOL)onConvertCompletionWithInError:(id)a3 outError:(id *)a4;
- (BOOL)openExistingImageWithError:(id *)a3;
- (BOOL)prepareParamsForSquashWithError:(id *)a3;
- (BOOL)prepareParamsWithError:(id *)a3;
- (BOOL)setPassphrase:(const char *)a3 encryptionMethod:(unint64_t)a4 error:(id *)a5;
- (BOOL)shouldPerformInplaceSquash;
- (BOOL)shouldValidateShadows;
- (BOOL)validateDeserializationWithError:(id *)a3;
- (BOOL)validateFileWithURL:(id)a3 error:(id *)a4;
- (BOOL)validateSquashFormats;
- (DIConvertParams)initWithCoder:(id)a3;
- (DIConvertParams)initWithInputURL:(id)a3 outputURL:(id)a4 error:(id *)a5;
- (DIConvertParams)initWithInputURL:(id)a3 outputURL:(id)a4 shadowURLs:(id)a5 error:(id *)a6;
- (id)convertWithCompletionBlock:(id)a3;
- (id)copyUpdatedOutputURLWithError:(id *)a3;
- (id)initForInplaceWithExistingParams:(id)a3 error:(id *)a4;
- (id)initForInplaceWithURL:(id)a3 error:(id *)a4;
- (id)prepareConvertWithError:(id *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
@end

@implementation DIConvertParams

- (BOOL)validateFileWithURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v7 = [v5 isFileURL] && (stat(objc_msgSend(v5, "fileSystemRepresentation"), &v9) || !FileDescriptor::get_device_type(&v9, v6)) || +[DIError failWithPOSIXCode:description:error:](DIError, "failWithPOSIXCode:description:error:", 22, @"Output of disk image conversion must be a file", a4);

  return v7;
}

- (DIConvertParams)initWithInputURL:(id)a3 outputURL:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEA60] array];
  v11 = [(DIConvertParams *)self initWithInputURL:v8 outputURL:v9 shadowURLs:v10 error:a5];

  return v11;
}

- (DIConvertParams)initWithInputURL:(id)a3 outputURL:(id)a4 shadowURLs:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(DIBaseParams *)self initWithURL:v10 error:a6];
  v14 = v13;
  if (v13)
  {
    if (![(DIConvertParams *)v13 validateFileWithURL:v11 error:a6])
    {
      v17 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v14->_shadowURLs, a5);
    v15 = [DIURL newDIURLWithNSURL:v11];
    outputURL = v14->_outputURL;
    v14->_outputURL = v15;

    v14->_sparseBundleBandSize = 0x4000000;
  }

  v17 = v14;
LABEL_6:

  return v17;
}

- (id)initForInplaceWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DIBaseParams *)self initWithURL:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    if (![(DIConvertParams *)v7 validateFileWithURL:v6 error:a4])
    {
      v9 = 0;
      goto LABEL_6;
    }

    [(DIConvertParams *)v8 setConversionMethod:1];
  }

  v9 = v8;
LABEL_6:

  return v9;
}

- (id)initForInplaceWithExistingParams:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 inputURL];
  v14.receiver = self;
  v14.super_class = DIConvertParams;
  v8 = [(DIBaseParams *)&v14 initWithURL:v7 error:a4];

  if (v8)
  {
    v9 = [v6 inputURL];
    v10 = [(DIConvertParams *)v8 validateFileWithURL:v9 error:a4];

    if (!v10)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v11 = [v6 diskImageParamsXPC];
    [(DIBaseParams *)v8 setDiskImageParamsXPC:v11];

    [(DIConvertParams *)v8 setConversionMethod:1];
  }

  v12 = v8;
LABEL_6:

  return v12;
}

- (BOOL)validateSquashFormats
{
  v3 = [(DIConvertParams *)self outputFormat];
  if (v3 == 2 || v3 == 1)
  {
    v4 = [(DIBaseParams *)self diskImageParamsXPC];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)shouldPerformInplaceSquash
{
  if ([(DIConvertParams *)self validateSquashFormats])
  {
    v3 = [(DIConvertParams *)self outputURL];
    v4 = [v3 URLByDeletingLastPathComponent];

    std::string::basic_string[abi:ne200100]<0>(&__p, [v4 fileSystemRepresentation]);
    v5 = FileDescriptorWrapper::open_file(&__p, 0);
    FileLocal::FileLocal(&v8, v5, 0);
  }

  return 0;
}

- (BOOL)prepareParamsForSquashWithError:(id *)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = *__error();
  if (DIForwardLogs())
  {
    v6 = getDIOSLog();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v38 = 51;
    v39 = 2080;
    v40 = "[DIConvertParams prepareParamsForSquashWithError:]";
    LODWORD(v36) = 18;
    v35 = buf;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = getDIOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v38 = 51;
      v39 = 2080;
      v40 = "[DIConvertParams prepareParamsForSquashWithError:]";
      _os_log_impl(&dword_248DE0000, v8, OS_LOG_TYPE_DEFAULT, "%.*s: Performing in-place squash optimization", buf, 0x12u);
    }
  }

  *__error() = v5;
  v9 = [(DIConvertParams *)self copyUpdatedOutputURLWithError:a3];
  if (!v9)
  {
    goto LABEL_15;
  }

  if (![DICreateParams eraseIfExistingWithURL:v9 error:a3])
  {
    v27 = *__error();
    if (!DIForwardLogs())
    {
      v30 = getDIOSLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v38 = 51;
        v39 = 2080;
        v40 = "[DIConvertParams prepareParamsForSquashWithError:]";
        _os_log_impl(&dword_248DE0000, v30, OS_LOG_TYPE_ERROR, "%.*s: Failed to erase output URL", buf, 0x12u);
      }

      goto LABEL_29;
    }

    v28 = getDIOSLog();
    os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    v38 = 51;
    v39 = 2080;
    v40 = "[DIConvertParams prepareParamsForSquashWithError:]";
    v29 = _os_log_send_and_compose_impl();

    if (v29)
    {
LABEL_25:
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v29);
      free(v29);
    }

LABEL_29:
    v26 = 0;
    *__error() = v27;
    goto LABEL_30;
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [(DIBaseParams *)self inputURL];
  v12 = [v10 copyItemAtURL:v11 toURL:v9 error:a3];

  if ((v12 & 1) == 0)
  {
    v27 = *__error();
    if (!DIForwardLogs())
    {
      v32 = getDIOSLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v38 = 51;
        v39 = 2080;
        v40 = "[DIConvertParams prepareParamsForSquashWithError:]";
        _os_log_impl(&dword_248DE0000, v32, OS_LOG_TYPE_ERROR, "%.*s: Failed to copy source disk image to temporary URL", buf, 0x12u);
      }

      goto LABEL_29;
    }

    v31 = getDIOSLog();
    os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    v38 = 51;
    v39 = 2080;
    v40 = "[DIConvertParams prepareParamsForSquashWithError:]";
    v29 = _os_log_send_and_compose_impl();

    if (v29)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  v13 = [[DIBaseParams alloc] initWithURL:v9 error:a3];
  [(DIConvertParams *)self setOutputParams:v13];

  v14 = [(DIConvertParams *)self outputParams];
  v15 = [v14 openExistingImageWithFlags:2 error:a3];

  if ((v15 & 1) == 0)
  {
LABEL_15:
    v26 = 0;
    goto LABEL_30;
  }

  v16 = [(NSArray *)self->_shadowURLs objectAtIndex:0];
  v17 = [DIURL newDIURLWithNSURL:v16];
  [(DIBaseParams *)self setInputURL:v17];

  v18 = [(DIBaseParams *)self inputURL];
  v19 = [v18 path];
  if (!v19)
  {

    goto LABEL_32;
  }

  v20 = MEMORY[0x277CCACE0];
  v21 = [(DIBaseParams *)self inputURL];
  v22 = [v20 componentsWithURL:v21 resolvingAgainstBaseURL:1];
  LODWORD(v20) = v22 == 0;

  if (v20)
  {
LABEL_32:
    v26 = [DIError failWithPOSIXCode:22 description:@"Malformed URL format" error:a3, v35, v36];
    goto LABEL_30;
  }

  v23 = [MEMORY[0x277CBEB18] arrayWithArray:self->_shadowURLs];
  [v23 removeObjectAtIndex:0];
  v24 = [(DIBaseParams *)self shadowChain];
  v25 = [v24 addShadowURLs:v23 error:a3];

  if (v25)
  {
    [(DIBaseParams *)self setDiskImageParamsXPC:0];
    v26 = [(DIBaseParams *)self openExistingImageWithFlags:0 error:a3];
  }

  else
  {
    v26 = 0;
  }

LABEL_30:
  v33 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)prepareParamsWithError:(id *)a3
{
  v5 = [(DIConvertParams *)self openExistingImageWithError:?];
  if (v5)
  {
    if ([(DIConvertParams *)self inPlaceConversion])
    {
LABEL_3:
      LOBYTE(v5) = 1;
      return v5;
    }

    if ([(DIConvertParams *)self shouldPerformInplaceSquash])
    {
      [(DIConvertParams *)self setConversionMethod:2];

      LOBYTE(v5) = [(DIConvertParams *)self prepareParamsForSquashWithError:a3];
    }

    else
    {
      [(DIConvertParams *)self setConversionMethod:0];
      v6 = [(DIBaseParams *)self shadowChain];
      v7 = [v6 addShadowURLs:self->_shadowURLs error:a3];

      if (v7)
      {
        goto LABEL_3;
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (DIConvertParams)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DIConvertParams;
  v5 = [(DIBaseParams *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_conversionMethod = [v4 decodeIntegerForKey:@"conversionMethod"];
    v5->_outputFormat = [v4 decodeIntegerForKey:@"outputFormat"];
    v5->_maxRawUDIFRunSize = [v4 decodeIntegerForKey:@"maxRawUDIFRunSize"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outputParams"];
    outputParams = v5->_outputParams;
    v5->_outputParams = v6;

    v5->_useFormatMappingInfo = [v4 decodeBoolForKey:@"useFormatMappingInfo"];
  }

  return v5;
}

- (BOOL)shouldValidateShadows
{
  v2 = [(DIBaseParams *)self shadowChain];
  v3 = [v2 shouldValidate];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = DIConvertParams;
  [(DIBaseParams *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:-[DIConvertParams conversionMethod](self forKey:{"conversionMethod"), @"conversionMethod"}];
  [v4 encodeInteger:-[DIConvertParams outputFormat](self forKey:{"outputFormat"), @"outputFormat"}];
  [v4 encodeInteger:-[DIConvertParams maxRawUDIFRunSize](self forKey:{"maxRawUDIFRunSize"), @"maxRawUDIFRunSize"}];
  v5 = [(DIConvertParams *)self outputParams];
  [v4 encodeObject:v5 forKey:@"outputParams"];

  [v4 encodeBool:-[DIConvertParams useFormatMappingInfo](self forKey:{"useFormatMappingInfo"), @"useFormatMappingInfo"}];
}

- (BOOL)validateDeserializationWithError:(id *)a3
{
  v10.receiver = self;
  v10.super_class = DIConvertParams;
  if ([(DIBaseParams *)&v10 validateDeserializationWithError:?])
  {
    v5 = [(DIConvertParams *)self outputParams];
    if (v5)
    {
      v6 = v5;
      v7 = [(DIConvertParams *)self outputParams];
      v8 = [v7 validateDeserializationWithError:a3];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)copyUpdatedOutputURLWithError:(id *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(DIBaseParams *)self inputURL];
  if ([v4 isFileURL])
  {
    v5 = [(DIConvertParams *)self outputURL];
    v6 = access([v5 fileSystemRepresentation], 0);

    if (!v6)
    {
      [(DIConvertParams *)self outputURL];
      v7 = [objc_claimAutoreleasedReturnValue() fileSystemRepresentation];
      v8 = std::string::basic_string[abi:ne200100]<0>(buf, v7);
      v9 = FileDescriptorWrapper::open_file(v8, 0);
      FileLocal::FileLocal(&v13, v9, 0);
    }
  }

  else
  {
  }

  v10 = [(DIConvertParams *)self outputURL];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)onConvertCompletionWithInError:(id)a3 outError:(id *)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = [(DIConvertParams *)self outputParams];

    if (v7)
    {
      v8 = *__error();
      if (DIForwardLogs())
      {
        v9 = getDIOSLog();
        os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
        *buf = 68157954;
        v53 = 59;
        v54 = 2080;
        v55 = "[DIConvertParams onConvertCompletionWithInError:outError:]";
        LODWORD(v50) = 18;
        v49 = buf;
        v10 = _os_log_send_and_compose_impl();

        if (v10)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v10);
          free(v10);
        }
      }

      else
      {
        v17 = getDIOSLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 68157954;
          v53 = 59;
          v54 = 2080;
          v55 = "[DIConvertParams onConvertCompletionWithInError:outError:]";
          _os_log_impl(&dword_248DE0000, v17, OS_LOG_TYPE_ERROR, "%.*s: Due to the conversion error, erasing the output file", buf, 0x12u);
        }
      }

      *__error() = v8;
      v18 = [(DIConvertParams *)self outputParams];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v20 = [(DIConvertParams *)self outputParams];
        [v20 onErrorCleanup];
LABEL_17:

        goto LABEL_18;
      }

      v21 = [(DIConvertParams *)self outputURL];
      v22 = [(DIConvertParams *)self outputParams];
      v23 = [v22 inputURL];
      v24 = [v21 isEqual:v23];

      if ((v24 & 1) == 0)
      {
        v20 = [MEMORY[0x277CCAA00] defaultManager];
        v25 = [(DIConvertParams *)self outputParams];
        v26 = [v25 inputURL];
        [v20 removeItemAtURL:v26 error:0];

        goto LABEL_17;
      }
    }

LABEL_18:
    v16 = [DIError failWithInError:v6 outError:a4, v49, v50];
    goto LABEL_19;
  }

  if ([(DIConvertParams *)self inPlaceConversion])
  {
    goto LABEL_9;
  }

  v11 = [(DIConvertParams *)self outputParams];

  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = [(DIConvertParams *)self outputURL];
  v13 = [(DIConvertParams *)self outputParams];
  v14 = [v13 inputURL];
  v15 = [v12 isEqual:v14];

  if (v15)
  {
    goto LABEL_9;
  }

  v51 = *__error();
  if (DIForwardLogs())
  {
    v29 = getDIOSLog();
    os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    v30 = [(DIConvertParams *)self outputParams];
    v31 = [v30 inputURL];
    v32 = [v31 path];
    v33 = [(DIConvertParams *)self outputURL];
    [v33 path];
    *buf = 68158467;
    v53 = 59;
    v54 = 2080;
    v55 = "[DIConvertParams onConvertCompletionWithInError:outError:]";
    v56 = 2113;
    v57 = v32;
    v59 = v58 = 2113;
    v34 = _os_log_send_and_compose_impl();

    if (v34)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v34);
      free(v34);
    }
  }

  else
  {
    v35 = getDIOSLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [(DIConvertParams *)self outputParams];
      v37 = [v36 inputURL];
      v38 = [v37 path];
      v39 = [(DIConvertParams *)self outputURL];
      v40 = [v39 path];
      *buf = 68158467;
      v53 = 59;
      v54 = 2080;
      v55 = "[DIConvertParams onConvertCompletionWithInError:outError:]";
      v56 = 2113;
      v57 = v38;
      v58 = 2113;
      v59 = v40;
      _os_log_impl(&dword_248DE0000, v35, OS_LOG_TYPE_DEFAULT, "%.*s: Moving %{private}@ to %{private}@", buf, 0x26u);
    }
  }

  *__error() = v51;
  v41 = [MEMORY[0x277CCAA00] defaultManager];
  v42 = [(DIConvertParams *)self outputURL];
  v43 = [v41 removeItemAtURL:v42 error:a4];

  if ((v43 & 1) == 0)
  {
    goto LABEL_28;
  }

  v44 = [MEMORY[0x277CCAA00] defaultManager];
  v45 = [(DIConvertParams *)self outputParams];
  v46 = [v45 inputURL];
  v47 = [(DIConvertParams *)self outputURL];
  v48 = [v44 moveItemAtURL:v46 toURL:v47 error:a4];

  if (v48)
  {
LABEL_9:
    v16 = 1;
  }

  else
  {
LABEL_28:
    v16 = 0;
  }

LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)prepareConvertWithError:(id *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  if (![(DIConvertParams *)self prepareParamsWithError:?])
  {
    v6 = 0;
    goto LABEL_7;
  }

  if ([(DIConvertParams *)self outputFormat]< 1 || [(DIConvertParams *)self outputFormat]> 12)
  {
    v5 = @"Invalid output format argument";
LABEL_5:
    v6 = [DIError nilWithPOSIXCode:22 verboseInfo:v5 error:a3];
    goto LABEL_7;
  }

  if ([(DIConvertParams *)self maxRawUDIFRunSize]&& [(DIConvertParams *)self maxRawUDIFRunSize]< 0x100000)
  {
    v5 = @"Invalid raw UDIF run size limit";
    goto LABEL_5;
  }

  if ([(DIConvertParams *)self inPlaceConversion]&& [(DIConvertParams *)self encryptionMethod])
  {
    v5 = @"In-place conversion maintains the encryption passphrase and method. It's not allowed to specify encryption arguments";
    goto LABEL_5;
  }

  v10 = objc_alloc_init(DIClient2Controller_XPCHandler);
  v11 = *__error();
  if (DIForwardLogs())
  {
    v12 = getDIOSLog();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v29 = 43;
    v30 = 2080;
    v31 = "[DIConvertParams prepareConvertWithError:]";
    v32 = 2114;
    v33 = self;
    LODWORD(v27) = 28;
    v26 = buf;
    v13 = _os_log_send_and_compose_impl();

    if (v13)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v13);
    }
  }

  else
  {
    v14 = getDIOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v29 = 43;
      v30 = 2080;
      v31 = "[DIConvertParams prepareConvertWithError:]";
      v32 = 2114;
      v33 = self;
      _os_log_impl(&dword_248DE0000, v14, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v11;
  if (![(DIClient2Controller_XPCHandler *)v10 connectWithError:a3]|| ![(DIBaseParams *)self prepareImageWithXpcHandler:v10 fileMode:2 error:a3])
  {
    goto LABEL_30;
  }

  if (![(DIConvertParams *)self conversionMethod])
  {
    v15 = [(DIConvertParams *)self copyUpdatedOutputURLWithError:a3];
    if (v15)
    {
      if ([(DIConvertParams *)self outputFormat]== 9)
      {
        v16 = [(DICreateParams *)[DICreateUDSBParams alloc] initWithURL:v15 error:a3];
        if (!v16)
        {
          goto LABEL_42;
        }

        [(DICreateUDSBParams *)v16 setSparseBundleBandSize:[(DIConvertParams *)self sparseBundleBandSize]];
      }

      else
      {
        if ([(DIConvertParams *)self outputFormat]== 2)
        {
          v17 = [(DICreateParams *)[DICreateASIFParams alloc] initWithURL:v15 error:a3];
        }

        else
        {
          v17 = [(DICreateParams *)[DICreateRAWParams alloc] initWithURL:v15 error:a3];
        }

        v16 = v17;
        if (!v17)
        {
          goto LABEL_42;
        }
      }

      [(DICreateParams *)v16 setEncryptionMethod:[(DIConvertParams *)self encryptionMethod:v26]];
      [(DIBaseParams *)v16 setReadPassphraseFlags:[(DIBaseParams *)self readPassphraseFlags]];
      v18 = [(DIConvertParams *)self shouldValidateShadows];
      v19 = [(DIBaseParams *)v16 shadowChain];
      [v19 setShouldValidate:v18];

      [(DICreateParams *)v16 setPassphrase:[(DIConvertParams *)self passphrase]];
      v20 = [(DIConvertParams *)self publicKey];
      [(DICreateParams *)v16 setPublicKey:v20];

      v21 = [(DIConvertParams *)self certificate];
      [(DICreateParams *)v16 setCertificate:v21];

      [(DIBaseParams *)v16 setBlockSize:[(DIBaseParams *)self blockSize]];
      v22 = [(DIConvertParams *)self temporaryPassphrase];
      if (!v22 || (-[DIConvertParams temporaryPassphrase](self, "temporaryPassphrase"), v23 = objc_claimAutoreleasedReturnValue(), v24 = -[DICreateParams setPassphrase:encryptionMethod:error:](v16, "setPassphrase:encryptionMethod:error:", [v23 buf], -[DIConvertParams encryptionMethod](self, "encryptionMethod"), a3), v23, v22, v24))
      {
        temporaryPassphrase = self->_temporaryPassphrase;
        self->_temporaryPassphrase = 0;

        if (![(DICreateParams *)v16 validateBlockSizeSupport])
        {
          v6 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Cannot create target image format with the block size of the source image" error:a3];
          goto LABEL_44;
        }

        if ([(DICreateParams *)v16 createDiskImageParamsWithError:a3]&& [(DICreateParams *)v16 createEncryptionWithXPCHandler:v10 error:a3])
        {
          [(DIConvertParams *)self setOutputParams:v16];

          goto LABEL_25;
        }
      }

LABEL_42:
      v6 = 0;
LABEL_44:

      goto LABEL_31;
    }

LABEL_30:
    v6 = 0;
    goto LABEL_31;
  }

LABEL_25:
  v6 = v10;
LABEL_31:

LABEL_7:
  v7 = self->_temporaryPassphrase;
  self->_temporaryPassphrase = 0;

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)convertWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__DIConvertParams_convertWithCompletionBlock___block_invoke;
  v11[3] = &unk_278F80BB0;
  v11[4] = self;
  v6 = v4;
  v13 = v6;
  v7 = v5;
  v12 = v7;
  v8 = MEMORY[0x24C1EE2F0](v11);
  if (hasTTY())
  {
    v8[2](v8);
  }

  else
  {
    v9 = dispatch_queue_create("DiskImageConvert", 0);
    dispatch_async(v9, v8);
  }

  return v7;
}

void __46__DIConvertParams_convertWithCompletionBlock___block_invoke(uint64_t a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  v2 = *(a1 + 32);
  obj = 0;
  v3 = [v2 prepareConvertWithError:&obj];
  objc_storeStrong(&v26, obj);
  if (v3)
  {
    v4 = [v3 remoteProxy];
    v5 = *(a1 + 32);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __46__DIConvertParams_convertWithCompletionBlock___block_invoke_58;
    v14 = &unk_278F80B88;
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v15 = v6;
    v16 = v7;
    v19 = &v21;
    v17 = v8;
    v18 = *(a1 + 48);
    v9 = [v4 convertWithParams:v5 reply:&v11];

    [*(a1 + 40) addChild:v9 withPendingUnitCount:{99, v11, v12, v13, v14}];
  }

  else
  {
    v10 = v22[5];
    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v21, 8);
}

void __46__DIConvertParams_convertWithCompletionBlock___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v5 onConvertCompletionWithInError:v3 outError:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    [*(a1 + 48) setCompletedUnitCount:100];
  }

  v8 = *(*(*(a1 + 64) + 8) + 40);
  (*(*(a1 + 56) + 16))();
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = DIConvertParams;
  [(DIBaseParams *)&v5 invalidate];
  v3 = [(DIConvertParams *)self outputParams];

  if (v3)
  {
    v4 = [(DIConvertParams *)self outputParams];
    [v4 invalidate];
  }
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

- (BOOL)openExistingImageWithError:(id *)a3
{
  if ([(DIConvertParams *)self inPlaceConversion])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return [(DIBaseParams *)self openExistingImageWithFlags:v5 error:a3];
}

@end