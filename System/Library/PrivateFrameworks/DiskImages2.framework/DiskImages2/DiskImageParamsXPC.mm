@interface DiskImageParamsXPC
+ (BOOL)getAEAKeyFromSAKSWithMetadata:(id)metadata key:(char *)key error:(id *)error;
+ (BOOL)getAEAKeyWithHelper:(void *)helper keyBuffer:(char *)buffer bufferSize:(unint64_t)size error:(id *)error;
+ (BOOL)validateSupportedFormatWithBackendXPC:(id)c error:(id *)error;
+ (id)newAEABackendThrowsWithBackendXPC:(id)c error:(id *)error;
+ (id)newWithUnlockedBackendXPC:(id)c blockSize:(unint64_t)size error:(id *)error;
+ (id)newWithUnlockedBackendXPC:(id)c error:(id *)error;
- (BOOL)allowOnDiskCacheWithSinkDiskImage:(const void *)image;
- (BOOL)lockBackendsWithWritableOnly:(BOOL)only error:(id *)error;
- (BOOL)mountedOnAPFS;
- (DiskImageParamsXPC)initWithBackendXPC:(id)c;
- (DiskImageParamsXPC)initWithBackendXPC:(id)c blockSize:(unint64_t)size;
- (DiskImageParamsXPC)initWithCoder:(id)coder;
- (NSURL)cacheURL;
- (NSUUID)instanceID;
- (id)description;
- (shared_ptr<DiskImage>)createShadowDiskImageWithBackend:(shared_ptr<Backend>)backend numBlocks:(unint64_t)blocks sinkDiskImage:(const void *)image cache_only:(BOOL)cache_only stack_size:(unint64_t)stack_size;
- (unique_ptr<DiskImage,)createDiskImageWithCache:(BOOL)cache shadowValidation:(BOOL)validation;
- (unique_ptr<const)getImageInfoWithExtra:(BOOL)extra error:(id *)error;
- (vector<std::shared_ptr<LockableResource>,)lockableResources;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DiskImageParamsXPC

+ (BOOL)validateSupportedFormatWithBackendXPC:(id)c error:(id *)error
{
  v6 = *MEMORY[0x277D85DE8];
  cCopy = c;
  if (cCopy)
  {
    [cCopy backend];
  }

  operator new();
}

+ (BOOL)getAEAKeyFromSAKSWithMetadata:(id)metadata key:(char *)key error:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v8 = [DIKeyRetriever decryptKeyWithData:metadataCopy destKey:v12 destKeySize:88 error:error];
  if (v8)
  {
    v9 = strnlen(v12, 0x58uLL);
    CC_SHA256(v12, v9, key);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)getAEAKeyWithHelper:(void *)helper keyBuffer:(char *)buffer bufferSize:(unint64_t)size error:(id *)error
{
  if (*(helper + 16) == 1)
  {
    *&v28 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v28 + 1) = 390;
    v29 = 0;
    di_log::logger<di_log::log_printer<108ul>>::logger(&v30, &v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "attempting to authenticate with aea key", 39);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<108ul>>::~logger_buf(&v30);
    MEMORY[0x24C1ED6A0](v32);
    if (*(helper + 16))
    {
      memcpy(buffer, *(helper + 1), size);
      return 1;
    }

LABEL_29:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(helper + 48) == 1)
  {
    *&v28 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v28 + 1) = 390;
    v29 = 0;
    di_log::logger<di_log::log_printer<115ul>>::logger(&v30, &v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "attempting to authenticate with kms", 35);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<115ul>>::~logger_buf(&v30);
    MEMORY[0x24C1ED6A0](v32);
    if ((*(helper + 48) & 1) == 0)
    {
      goto LABEL_29;
    }

    v12 = MEMORY[0x277CBEBC0];
    if (*(helper + 47) >= 0)
    {
      v13 = helper + 24;
    }

    else
    {
      v13 = *(helper + 3);
    }

    v14 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:4];
    v15 = [v12 URLWithString:v14];

    LOBYTE(v14) = [DIKeyRetriever KKMSKeyWithURL:v15 destKey:buffer destKeySize:size error:error];
    if (v14)
    {
      return 1;
    }
  }

  if (*(helper + 120) == 1)
  {
    *&v28 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v28 + 1) = 390;
    v29 = 0;
    di_log::logger<di_log::log_printer<122ul>>::logger(&v30, &v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "attempting to authenticate with wkms fcs", 40);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<122ul>>::~logger_buf(&v30);
    MEMORY[0x24C1ED6A0](v32);
    if ((*(helper + 120) & 1) == 0)
    {
      goto LABEL_29;
    }

    v16 = MEMORY[0x277CBEBC0];
    if (*(helper + 111) >= 0)
    {
      v17 = helper + 88;
    }

    else
    {
      v17 = *(helper + 11);
    }

    v18 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:1];
    v19 = [v16 URLWithString:v18];

    v20 = [DIKeyRetriever WKMSKeyWithURL:v19 authData:*(helper + 14) destKey:buffer destKeySize:size error:error];
    if (v20)
    {
      return 1;
    }
  }

  if (*(helper + 80) == 1)
  {
    *&v28 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v28 + 1) = 390;
    v29 = 0;
    di_log::logger<di_log::log_printer<129ul>>::logger(&v30, &v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "attempting to authenticate with saks", 36);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<129ul>>::~logger_buf(&v30);
    MEMORY[0x24C1ED6A0](v32);
    if ((*(helper + 80) & 1) == 0)
    {
      goto LABEL_29;
    }

    v21 = MEMORY[0x277CCACA8];
    if (*(helper + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, *(helper + 7), *(helper + 8));
    }

    else
    {
      v30 = *(helper + 56);
    }

    v22 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
    v23 = v30.__r_.__value_.__r.__words[0];
    defaultCStringEncoding = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v22 >= 0)
    {
      v25 = &v30;
    }

    else
    {
      v25 = v23;
    }

    v26 = [v21 stringWithCString:v25 encoding:defaultCStringEncoding];
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v27 = [self getAEAKeyFromSAKSWithMetadata:v26 key:buffer error:error];

    if (v27)
    {
      return 1;
    }
  }

  return 0;
}

+ (id)newAEABackendThrowsWithBackendXPC:(id)c error:(id *)error
{
  cCopy = c;
  if (cCopy)
  {
    [cCopy backend];
    v5 = v7;
  }

  else
  {
    v5 = 0uLL;
  }

  v8 = v5;
  AEAHelper::AEAHelper(&v7, &v8);
  operator new[]();
}

+ (id)newWithUnlockedBackendXPC:(id)c error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  cCopy = c;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(DiskImageParamsXPC *)[DiskImageParamsSparseBundle_XPC alloc] initWithBackendXPC:cCopy];
  }

  else
  {
    if (cCopy)
    {
      [cCopy backend];
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    std::dynamic_pointer_cast[abi:ne200100]<FileLocal,Backend>(&v19, &v17);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    v8 = v17;
    if (!v17 || (*(*v17 + 5))(v17) < 4)
    {
      goto LABEL_17;
    }

    v9 = *(details::get_dummy_shared_ptr() + 1);
    v19 = &v16;
    v20 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = xmmword_248F9D660;
    v22 = 4;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v10 = (*(*v8 + 16))(v8, &v19);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v10 != 4)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
      v15 = std::generic_category();
      exception[1] = 22;
      exception[2] = v15;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "is_aea: Error reading magic.";
    }

    if (v16 != 826361153 || (v11 = [self newAEABackendThrowsWithBackendXPC:cCopy error:error], cCopy, (cCopy = v11) != 0))
    {
LABEL_17:
      LOBYTE(v11) = 1;
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v11)
    {
      if (cCopy)
      {
        [cCopy backend];
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      operator new();
    }

    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)newWithUnlockedBackendXPC:(id)c blockSize:(unint64_t)size error:(id *)error
{
  v7 = [DiskImageParamsXPC newWithUnlockedBackendXPC:c error:error];
  v8 = v7;
  if (!v7 || ([v7 setBlockSize:size error:error] & 1) == 0)
  {

    return 0;
  }

  return v8;
}

- (NSURL)cacheURL
{
  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  hasBaseImageCache = [shadowChain hasBaseImageCache];

  if (hasBaseImageCache)
  {
    shadowChain2 = [(DiskImageParamsXPC *)self shadowChain];
    nodes = [shadowChain2 nodes];
    firstObject = [nodes firstObject];
    v8 = [firstObject URL];
    cacheURL = self->_cacheURL;
    self->_cacheURL = v8;
  }

  v10 = self->_cacheURL;

  return v10;
}

- (DiskImageParamsXPC)initWithBackendXPC:(id)c blockSize:(unint64_t)size
{
  cCopy = c;
  v11.receiver = self;
  v11.super_class = DiskImageParamsXPC;
  v8 = [(DiskImageParamsXPC *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_backendXPC, c);
    v9->_blockSize = size;
  }

  return v9;
}

- (DiskImageParamsXPC)initWithBackendXPC:(id)c
{
  cCopy = c;
  v5 = cCopy;
  if (cCopy)
  {
    [cCopy backend];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  std::dynamic_pointer_cast[abi:ne200100]<FileLocal,Backend>(&v10, &v12);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v12 && (v6 = v12[5], *(v6 + 7)))
  {
    v7 = *(v6 + 6);
  }

  else
  {
    v7 = 512;
  }

  v8 = [(DiskImageParamsXPC *)self initWithBackendXPC:v5 blockSize:v7, v10];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v8;
}

- (shared_ptr<DiskImage>)createShadowDiskImageWithBackend:(shared_ptr<Backend>)backend numBlocks:(unint64_t)blocks sinkDiskImage:(const void *)image cache_only:(BOOL)cache_only stack_size:(unint64_t)stack_size
{
  cntrl = backend.__cntrl_;
  ptr = backend.__ptr_;
  v18[37] = *MEMORY[0x277D85DE8];
  v10 = *(system_properties::get_resources(self) + 8);
  if ((*(**ptr + 40))())
  {
    di_asif::header::header(v18, *ptr);
    std::allocate_shared[abi:ne200100]<DiskImageASIF,std::allocator<DiskImageASIF>,std::shared_ptr<Backend> &,di_asif::header &,di_asif::options &,0>();
  }

  v11 = (*(*blocks + 24))(blocks);
  v12 = 0x10000000000000 / v11;
  v17 = 0x10000000000000 / v11;
  if (!cntrl)
  {
    v11 = (*(*blocks + 32))(blocks);
    cntrl = v11;
    v12 = v17;
  }

  if (cntrl <= v12)
  {
    v18[0] = di_utils::random_uuid(v11);
    v18[1] = v13;
    v18[34] = di_stackable::get_identifier(blocks, v13);
    v18[35] = v14;
    (*(*blocks + 24))(blocks);
    std::allocate_shared[abi:ne200100]<DiskImageASIF,std::allocator<DiskImageASIF>,unsigned long,unsigned int const&,unsigned long long &,unsigned long long &,std::shared_ptr<Backend> &,di_asif::options &,boost::uuids::uuid const&,boost::uuids::uuid const&,0>();
  }

  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &unk_285BF4E60;
  v16 = std::generic_category();
  exception[1] = 22;
  exception[2] = v16;
  *(exception + 24) = 0;
  *(exception + 48) = 0;
  exception[7] = "Size cannot exceed max ASIF size";
}

- (BOOL)allowOnDiskCacheWithSinkDiskImage:(const void *)image
{
  v15 = *MEMORY[0x277D85DE8];
  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  hasBaseImageCache = [shadowChain hasBaseImageCache];

  if ((hasBaseImageCache & 1) == 0)
  {
    v5 = *__error();
    if (DIForwardLogs())
    {
      v6 = getDIOSLog();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v12 = 56;
      v13 = 2080;
      v14 = "[DiskImageParamsXPC allowOnDiskCacheWithSinkDiskImage:]";
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
        v12 = 56;
        v13 = 2080;
        v14 = "[DiskImageParamsXPC allowOnDiskCacheWithSinkDiskImage:]";
        _os_log_impl(&dword_248DE0000, v8, OS_LOG_TYPE_DEFAULT, "%.*s: On disk cache is not supported on embedded systems", buf, 0x12u);
      }
    }

    *__error() = v5;
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (unique_ptr<const)getImageInfoWithExtra:(BOOL)extra error:(id *)error
{
  extraCopy = extra;
  v6 = v4;
  [(DiskImageParamsXPC *)self createDiskImageWithCache:0 shadowValidation:0];
  v7 = v11;
  v8 = *v11 + 56;
  if (extraCopy)
  {
    v9 = 7;
  }

  else
  {
    v9 = 0;
  }

  (*(*v11 + 56))(&v11, v11, v9);
  *v6 = v11;
  return (*(*v7 + 16))(v7);
}

- (unique_ptr<DiskImage,)createDiskImageWithCache:(BOOL)cache shadowValidation:(BOOL)validation
{
  cacheCopy = cache;
  v58 = v4;
  v84 = *MEMORY[0x277D85DE8];
  [(DiskImageParamsXPC *)self createSinkDiskImage];
  v59 = cacheCopy && [(DiskImageParamsXPC *)self allowOnDiskCacheWithSinkDiskImage:&v69];
  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  v7 = shadowChain;
  if (shadowChain)
  {
    shadowChain2 = [(DiskImageParamsXPC *)self shadowChain];
    isEmpty = [shadowChain2 isEmpty];

    if (v59 || (isEmpty & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (v59)
  {
LABEL_6:
    __src = 0;
    v73 = 0;
    v74 = 0;
    if (v69)
    {
      operator new();
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    shadowChain3 = [(DiskImageParamsXPC *)self shadowChain];
    obj = [shadowChain3 nodes];

    v11 = [obj countByEnumeratingWithState:&v65 objects:v79 count:16];
    if (v11)
    {
      v12 = *v66;
      v13 = 0;
      v61 = 0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v66 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v65 + 1) + 8 * i);
          fileBackend = [v15 fileBackend];
          v17 = fileBackend;
          if (fileBackend)
          {
            [fileBackend backend];
          }

          else
          {
            v63 = 0;
            v64 = 0;
          }

          numBlocks = [v15 numBlocks];
          isCache = [v15 isCache];
          shadowChain4 = [(DiskImageParamsXPC *)self shadowChain];
          nodes = [shadowChain4 nodes];
          -[DiskImageParamsXPC createShadowDiskImageWithBackend:numBlocks:sinkDiskImage:cache_only:stack_size:](self, "createShadowDiskImageWithBackend:numBlocks:sinkDiskImage:cache_only:stack_size:", &v63, numBlocks, v13, isCache, [nodes count] + 1);

          if (v64)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v64);
          }

          isCache2 = [v15 isCache];
          v23 = *buf;
          if (isCache2)
          {
            v24 = 2;
          }

          else
          {
            v25 = (*(**buf + 40))(*buf);
            v13 = *buf;
            v26 = *v81;
            if (*v81)
            {
              atomic_fetch_add_explicit((*v81 + 8), 1uLL, memory_order_relaxed);
            }

            v24 = v25 ^ 1;
            if (v61)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v61);
              v23 = *buf;
            }

            else
            {
              v23 = v13;
            }

            v61 = v26;
          }

          v75.n128_u64[0] = v23;
          v75.n128_u64[1] = *v81;
          *buf = 0;
          *v81 = 0;
          LODWORD(v76) = v24;
          std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::insert(&__src, __src, &v75);
          if (v75.n128_u64[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v75.n128_u64[1]);
          }

          if (*v81)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*v81);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v65 objects:v79 count:16];
      }

      while (v11);
    }

    if (v59)
    {
      if (confstr(65538, &v75, 0x400uLL))
      {
        identifier = 0;
        v71 = 0;
        identifier = di_stackable::get_identifier(0, v27);
        v71 = v28;
        *buf = 0;
        *v81 = 0;
        if (identifier | v28)
        {
          instanceID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&identifier];
        }

        else
        {
          instanceID = [(DiskImageParamsXPC *)self instanceID];
        }

        uUIDString = [instanceID UUIDString];

        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@.%@", @"diskimage_", uUIDString, @"cache"];
        [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:&v75 isDirectory:1 relativeToURL:0];
        v32 = [objc_claimAutoreleasedReturnValue() URLByAppendingPathComponent:v31];
        [(DiskImageParamsXPC *)self setCacheURL:v32];

        v33 = *__error();
        if (DIForwardLogs())
        {
          v34 = getDIOSLog();
          os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
          cacheURL = [(DiskImageParamsXPC *)self cacheURL];
          path = [cacheURL path];
          *buf = 0x4004100302;
          *v81 = 2080;
          *&v81[2] = "[DiskImageParamsXPC createDiskImageWithCache:shadowValidation:]";
          v82 = 2114;
          v83 = path;
          v37 = _os_log_send_and_compose_impl();

          if (v37)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v37);
            free(v37);
          }
        }

        else
        {
          v38 = getDIOSLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            cacheURL2 = [(DiskImageParamsXPC *)self cacheURL];
            path2 = [cacheURL2 path];
            *buf = 0x4004100302;
            *v81 = 2080;
            *&v81[2] = "[DiskImageParamsXPC createDiskImageWithCache:shadowValidation:]";
            v82 = 2114;
            v83 = path2;
            _os_log_impl(&dword_248DE0000, v38, OS_LOG_TYPE_DEFAULT, "%.*s: On disk cache path: %{public}@", buf, 0x1Cu);
          }
        }

        *__error() = v33;
        cacheURL3 = [(DiskImageParamsXPC *)self cacheURL];
        v42 = cacheURL3;
        *buf = [cacheURL3 fileSystemRepresentation];
        std::allocate_shared[abi:ne200100]<PurgeableFileBackend,std::allocator<PurgeableFileBackend>,char const*,0>();
      }

      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
      v57 = std::generic_category();
      exception[1] = 2;
      exception[2] = v57;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Could not determine cache dir";
    }

    v43 = (*(MEMORY[0] + 40))(0);
    v44 = __src;
    v45 = v73;
    v46 = __src != v73 || (v43 & 1) == 0;
    atomic_fetch_add_explicit(8, 1uLL, memory_order_relaxed);
    if (v45 >= v74)
    {
      v48 = v45 - v44;
      v49 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3);
      v50 = v49 + 1;
      if (v49 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<iovec>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v74 - v44) >> 3) > v50)
      {
        v50 = 0x5555555555555556 * ((v74 - v44) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v74 - v44) >> 3) >= 0x555555555555555)
      {
        v50 = 0xAAAAAAAAAAAAAAALL;
      }

      p_src = &__src;
      if (v50)
      {
        std::allocator<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::allocate_at_least[abi:ne200100](&__src, v50);
      }

      v51 = 24 * v49;
      *v51 = 0;
      *(v51 + 8) = 0;
      *(v51 + 16) = v46;
      v47 = 24 * v49 + 24;
      v52 = (v51 - v48);
      memcpy((v51 - v48), v44, v48);
      v53 = __src;
      v54 = v74;
      __src = v52;
      v73 = v47;
      v74 = 0;
      v76 = v53;
      v77 = v54;
      v75.n128_u64[0] = v53;
      v75.n128_u64[1] = v53;
      std::__split_buffer<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::~__split_buffer(&v75);
    }

    else
    {
      *v45 = 0;
      *(v45 + 1) = 0;
      v47 = (v45 + 24);
      *(v45 + 4) = v46;
    }

    v73 = v47;
    operator new();
  }

  *v58 = v69;
  v55 = *MEMORY[0x277D85DE8];
  return shadowChain;
}

- (BOOL)lockBackendsWithWritableOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v26 = *MEMORY[0x277D85DE8];
  if ((-[DiskImageParamsXPC isWritableFormat](self, "isWritableFormat") || !onlyCopy) && (-[DiskImageParamsXPC backendXPC](self, "backendXPC"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 lock], v7, v8))
  {
    v9 = *MEMORY[0x277D85DE8];

    return [DIError failWithPOSIXCode:v8 verboseInfo:@"Failed locking the image" error:error];
  }

  else
  {
    shadowChain = [(DiskImageParamsXPC *)self shadowChain];

    if (shadowChain)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      shadowChain2 = [(DiskImageParamsXPC *)self shadowChain];
      nodes = [shadowChain2 nodes];

      v14 = [nodes countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        v15 = *v22;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(nodes);
            }

            fileBackend = [*(*(&v21 + 1) + 8 * i) fileBackend];
            lock = [fileBackend lock];

            if (lock)
            {
              v19 = [DIError failWithPOSIXCode:lock verboseInfo:@"Failed locking the shadow file" error:error];

              goto LABEL_19;
            }
          }

          v14 = [nodes countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    v19 = 1;
LABEL_19:
    v20 = *MEMORY[0x277D85DE8];
    return v19;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v7 = [backendXPC description];
  v8 = [v3 stringWithFormat:@"%@[%@]", v5, v7];

  return v8;
}

- (DiskImageParamsXPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backend"];
  backendXPC = self->_backendXPC;
  self->_backendXPC = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shadowChain"];
  shadowChain = self->_shadowChain;
  self->_shadowChain = v7;

  self->_blockSize = [coderCopy decodeIntegerForKey:@"blockSize"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"instanceID"];
  instanceID = self->_instanceID;
  self->_instanceID = v9;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  [coderCopy encodeObject:backendXPC forKey:@"backend"];

  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  [coderCopy encodeObject:shadowChain forKey:@"shadowChain"];

  [coderCopy encodeInteger:-[DiskImageParamsXPC blockSize](self forKey:{"blockSize"), @"blockSize"}];
  instanceID = [(DiskImageParamsXPC *)self instanceID];
  [coderCopy encodeObject:instanceID forKey:@"instanceID"];
}

- (NSUUID)instanceID
{
  v27[2] = *MEMORY[0x277D85DE8];
  instanceID = self->_instanceID;
  if (instanceID)
  {
    goto LABEL_2;
  }

  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  instanceID = [backendXPC instanceID];

  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  if (shadowChain)
  {
    shadowChain2 = [(DiskImageParamsXPC *)self shadowChain];
    nonCacheNodes = [shadowChain2 nonCacheNodes];

    if (nonCacheNodes && [nonCacheNodes count])
    {
      v26 = &v26;
      v10 = 16 * [nonCacheNodes count];
      v11 = (&v27[-1] - ((v10 + 31) & 0xFFFFFFFFFFFFFFF0));
      [(NSUUID *)instanceID getUUIDBytes:v11];
      v12 = 0;
      v13 = v11 + 16;
      while ([nonCacheNodes count] > v12)
      {
        v14 = [nonCacheNodes objectAtIndexedSubscript:v12];
        fileBackend = [v14 fileBackend];
        instanceID2 = [fileBackend instanceID];

        [instanceID2 getUUIDBytes:v13];
        v13 += 16;
        ++v12;
      }

      v21 = objc_alloc(MEMORY[0x277CCAD78]);
      v27[0] = di_utils::buffer_to_uuid(v11, v10 + 16);
      v27[1] = v22;
      v23 = [v21 initWithUUIDBytes:v27];
      v25 = self->_instanceID;
      p_instanceID = &self->_instanceID;
      *p_instanceID = v23;

      instanceID = *p_instanceID;
LABEL_2:
      v3 = instanceID;
      goto LABEL_11;
    }
  }

  else
  {
    nonCacheNodes = 0;
  }

  v17 = self->_instanceID;
  self->_instanceID = instanceID;
  v18 = instanceID;

  v3 = self->_instanceID;
LABEL_11:
  v19 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)mountedOnAPFS
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v3 = backendXPC;
  if (backendXPC)
  {
    [backendXPC backend];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  get_sink_backend(&v6, &v8);
  std::dynamic_pointer_cast[abi:ne200100]<FileLocal,Backend>(&v8, &v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v10)
  {
    is_mounted_on_apfs = FileDescriptor::is_mounted_on_apfs(v10[5]);
  }

  else
  {
    is_mounted_on_apfs = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return is_mounted_on_apfs;
}

- (vector<std::shared_ptr<LockableResource>,)lockableResources
{
  v29 = *MEMORY[0x277D85DE8];
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v6 = backendXPC;
  if (backendXPC)
  {
    [backendXPC backend];
  }

  else
  {
    v25 = 0uLL;
  }

  get_sink_backend(&v25, &lpsrc);
  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }

  {
    *&v25 = v8;
    *(&v25 + 1) = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__end_, 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<LockableResource>>::push_back[abi:ne200100](&retstr->__begin_, &v25);
  }

  else
  {
    v25 = 0uLL;
  }

  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }

  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  nodes = [shadowChain nodes];

  v11 = [nodes countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(nodes);
        }

        fileBackend = [*(*(&v21 + 1) + 8 * i) fileBackend];
        v15 = fileBackend;
        if (fileBackend)
        {
          [fileBackend backend];
        }

        else
        {
          v20 = 0uLL;
        }

        get_sink_backend(&v20, &v25);
        if (*(&v20 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
        }

        {
          *&v20 = v17;
          *(&v20 + 1) = *(&v25 + 1);
          if (*(&v25 + 1))
          {
            atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          std::vector<std::shared_ptr<LockableResource>>::push_back[abi:ne200100](&retstr->__begin_, &v20);
        }

        else
        {
          v20 = 0uLL;
        }

        if (*(&v20 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
        }

        if (*(&v25 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
        }
      }

      v11 = [nodes countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v11);
  }

  result = v27;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

@end