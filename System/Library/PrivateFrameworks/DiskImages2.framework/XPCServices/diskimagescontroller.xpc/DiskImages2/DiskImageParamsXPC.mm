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
  cCopy = c;
  if (cCopy)
  {
    [cCopy backend];
  }

  operator new();
}

+ (BOOL)getAEAKeyFromSAKSWithMetadata:(id)metadata key:(char *)key error:(id *)error
{
  metadataCopy = metadata;
  v8 = [DIKeyRetriever decryptKeyWithData:metadataCopy destKey:v11 destKeySize:88 error:error];
  if (v8)
  {
    v9 = strnlen(v11, 0x58uLL);
    CC_SHA256(v11, v9, key);
  }

  return v8;
}

+ (BOOL)getAEAKeyWithHelper:(void *)helper keyBuffer:(char *)buffer bufferSize:(unint64_t)size error:(id *)error
{
  if (*(helper + 16) == 1)
  {
    *&v25 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v25 + 1) = 390;
    v26 = 0;
    sub_1000AE250(__p, &v25);
    sub_1000026BC(v29, "attempting to authenticate with aea key", 39);
    std::ostream::~ostream();
    sub_1000AE75C(__p);
    std::ios::~ios();
    if (*(helper + 16))
    {
      memcpy(buffer, *(helper + 1), size);
      return 1;
    }

LABEL_29:
    sub_1000AEF04();
  }

  if (*(helper + 48) == 1)
  {
    *&v25 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v25 + 1) = 390;
    v26 = 0;
    sub_1000AE3BC(__p, &v25);
    sub_1000026BC(v29, "attempting to authenticate with kms", 35);
    std::ostream::~ostream();
    sub_1000AF018(__p);
    std::ios::~ios();
    if ((*(helper + 48) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (*(helper + 47) >= 0)
    {
      v12 = helper + 24;
    }

    else
    {
      v12 = *(helper + 3);
    }

    v13 = [NSString stringWithCString:v12 encoding:4];
    v14 = [NSURL URLWithString:v13];

    LOBYTE(v13) = [DIKeyRetriever KKMSKeyWithURL:v14 destKey:buffer destKeySize:size error:error];
    if (v13)
    {
      return 1;
    }
  }

  if (*(helper + 120) == 1)
  {
    *&v25 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v25 + 1) = 390;
    v26 = 0;
    sub_10009F6FC(__p, &v25);
    sub_1000026BC(v29, "attempting to authenticate with wkms fcs", 40);
    std::ostream::~ostream();
    sub_10009F930(__p);
    std::ios::~ios();
    if ((*(helper + 120) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (*(helper + 111) >= 0)
    {
      v15 = helper + 88;
    }

    else
    {
      v15 = *(helper + 11);
    }

    v16 = [NSString stringWithCString:v15 encoding:1];
    v17 = [NSURL URLWithString:v16];

    v18 = [DIKeyRetriever WKMSKeyWithURL:v17 authData:*(helper + 14) destKey:buffer destKeySize:size error:error];
    if (v18)
    {
      return 1;
    }
  }

  if (*(helper + 80) == 1)
  {
    *&v25 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v25 + 1) = 390;
    v26 = 0;
    sub_1000AE528(__p, &v25);
    sub_1000026BC(v29, "attempting to authenticate with saks", 36);
    std::ostream::~ostream();
    sub_1000AF888(__p);
    std::ios::~ios();
    if ((*(helper + 80) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (*(helper + 79) < 0)
    {
      sub_1000093B4(__p, *(helper + 7), *(helper + 8));
    }

    else
    {
      *__p = *(helper + 56);
      v28 = *(helper + 9);
    }

    v19 = SHIBYTE(v28);
    v20 = __p[0];
    v21 = +[NSString defaultCStringEncoding];
    if (v19 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = v20;
    }

    v23 = [NSString stringWithCString:v22 encoding:v21];
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    v24 = [self getAEAKeyFromSAKSWithMetadata:v23 key:buffer error:error];

    if (v24)
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
  sub_10012488C(&v7, &v8);
  operator new[]();
}

+ (id)newWithUnlockedBackendXPC:(id)c error:(id *)error
{
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
      v18 = 0;
      v19 = 0;
    }

    sub_10004B28C(&v18, &v16);
    if (v19)
    {
      sub_10000367C(v19);
    }

    v8 = v16;
    if (!v16 || (*(*v16 + 5))(v16) < 4)
    {
      goto LABEL_17;
    }

    v9 = *(sub_10019E2E8() + 1);
    v18 = &v15;
    v19 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = xmmword_1001CB130;
    v21 = 4;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v10 = (*(*v8 + 16))(v8, &v18);
    if (v19)
    {
      sub_10000367C(v19);
    }

    if (v10 != 4)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_100233158;
      v14 = std::generic_category();
      exception[1] = 22;
      exception[2] = v14;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "is_aea: Error reading magic.";
    }

    if (v15 != 826361153 || (v11 = [self newAEABackendThrowsWithBackendXPC:cCopy error:error], cCopy, (cCopy = v11) != 0))
    {
LABEL_17:
      LOBYTE(v11) = 1;
    }

    if (v17)
    {
      sub_10000367C(v17);
    }

    if (v11)
    {
      if (cCopy)
      {
        [cCopy backend];
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      operator new();
    }

    v7 = 0;
  }

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

  sub_10004B28C(&v10, &v12);
  if (v11)
  {
    sub_10000367C(v11);
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
    sub_10000367C(v13);
  }

  return v8;
}

- (shared_ptr<DiskImage>)createShadowDiskImageWithBackend:(shared_ptr<Backend>)backend numBlocks:(unint64_t)blocks sinkDiskImage:(const void *)image cache_only:(BOOL)cache_only stack_size:(unint64_t)stack_size
{
  cntrl = backend.__cntrl_;
  ptr = backend.__ptr_;
  v10 = *(sub_10003B0B0() + 8);
  if ((*(**ptr + 40))())
  {
    v11 = *ptr;
    sub_1000F84F0(v18);
    sub_1000B0C1C();
  }

  v12 = 0x10000000000000uLL / (*(*blocks + 24))(blocks);
  v17 = v12;
  if (!cntrl)
  {
    cntrl = (*(*blocks + 32))(blocks);
    v12 = v17;
  }

  if (cntrl <= v12)
  {
    v18[0] = sub_10019E294();
    v18[1] = v13;
    v18[34] = sub_10006C1F0(blocks);
    v18[35] = v14;
    (*(*blocks + 24))(blocks);
    sub_1000B0DD0();
  }

  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &off_100233158;
  v16 = std::generic_category();
  exception[1] = 22;
  exception[2] = v16;
  *(exception + 24) = 0;
  *(exception + 48) = 0;
  exception[7] = "Size cannot exceed max ASIF size";
}

- (BOOL)allowOnDiskCacheWithSinkDiskImage:(const void *)image
{
  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  hasBaseImageCache = [shadowChain hasBaseImageCache];

  if ((hasBaseImageCache & 1) == 0)
  {
    v5 = *__error();
    if (sub_1000E044C())
    {
      v6 = sub_1000E03D8();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v11 = 56;
      v12 = 2080;
      v13 = "[DiskImageParamsXPC allowOnDiskCacheWithSinkDiskImage:]";
      v7 = _os_log_send_and_compose_impl();

      if (v7)
      {
        fprintf(__stderrp, "%s\n", v7);
        free(v7);
      }
    }

    else
    {
      v8 = sub_1000E03D8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v11 = 56;
        v12 = 2080;
        v13 = "[DiskImageParamsXPC allowOnDiskCacheWithSinkDiskImage:]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%.*s: On disk cache is not supported on embedded systems", buf, 0x12u);
      }
    }

    *__error() = v5;
  }

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
  v56 = v4;
  [(DiskImageParamsXPC *)self createSinkDiskImage];
  if (cacheCopy)
  {
    v57 = [(DiskImageParamsXPC *)self allowOnDiskCacheWithSinkDiskImage:&v67];
  }

  else
  {
    v57 = 0;
  }

  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  v7 = shadowChain;
  if (shadowChain)
  {
    shadowChain2 = [(DiskImageParamsXPC *)self shadowChain];
    isEmpty = [shadowChain2 isEmpty];

    if (v57 & 1 | ((isEmpty & 1) == 0))
    {
      goto LABEL_6;
    }
  }

  else if (v57)
  {
LABEL_6:
    __src = 0;
    v71 = 0;
    v72 = 0;
    if (v67)
    {
      operator new();
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    shadowChain3 = [(DiskImageParamsXPC *)self shadowChain];
    obj = [shadowChain3 nodes];

    v11 = [obj countByEnumeratingWithState:&v63 objects:v77 count:16];
    if (v11)
    {
      v12 = *v64;
      v13 = 0;
      v59 = 0;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v64 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v63 + 1) + 8 * i);
          fileBackend = [v15 fileBackend];
          v17 = fileBackend;
          if (fileBackend)
          {
            [fileBackend backend];
          }

          else
          {
            v61 = 0;
            v62 = 0;
          }

          numBlocks = [v15 numBlocks];
          isCache = [v15 isCache];
          shadowChain4 = [(DiskImageParamsXPC *)self shadowChain];
          nodes = [shadowChain4 nodes];
          -[DiskImageParamsXPC createShadowDiskImageWithBackend:numBlocks:sinkDiskImage:cache_only:stack_size:](self, "createShadowDiskImageWithBackend:numBlocks:sinkDiskImage:cache_only:stack_size:", &v61, numBlocks, v13, isCache, [nodes count] + 1);

          if (v62)
          {
            sub_10000367C(v62);
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
            v26 = *v79;
            if (*v79)
            {
              atomic_fetch_add_explicit((*v79 + 8), 1uLL, memory_order_relaxed);
            }

            v24 = v25 ^ 1;
            if (v59)
            {
              sub_10000367C(v59);
              v23 = *buf;
            }

            else
            {
              v23 = v13;
            }

            v59 = v26;
          }

          v73.n128_u64[0] = v23;
          v73.n128_u64[1] = *v79;
          *buf = 0;
          *v79 = 0;
          LODWORD(v74) = v24;
          sub_1000AABC0(&__src, __src, &v73);
          if (v73.n128_u64[1])
          {
            sub_10000367C(v73.n128_u64[1]);
          }

          if (*v79)
          {
            sub_10000367C(*v79);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v63 objects:v77 count:16];
      }

      while (v11);
    }

    if (v57)
    {
      if (confstr(65538, &v73, 0x400uLL))
      {
        v68 = 0;
        v69 = 0;
        v68 = sub_10006C1F0(0);
        v69 = v27;
        *buf = 0;
        *v79 = 0;
        if (v68 | v27)
        {
          instanceID = [[NSUUID alloc] initWithUUIDBytes:&v68];
        }

        else
        {
          instanceID = [(DiskImageParamsXPC *)self instanceID];
        }

        uUIDString = [instanceID UUIDString];

        v30 = [NSString stringWithFormat:@"%@%@.%@", @"diskimage_", uUIDString, @"cache"];
        [NSURL fileURLWithFileSystemRepresentation:&v73 isDirectory:1 relativeToURL:0];
        v31 = [objc_claimAutoreleasedReturnValue() URLByAppendingPathComponent:v30];
        [(DiskImageParamsXPC *)self setCacheURL:v31];

        v32 = *__error();
        if (sub_1000E044C())
        {
          v33 = sub_1000E03D8();
          os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
          cacheURL = [(DiskImageParamsXPC *)self cacheURL];
          path = [cacheURL path];
          *buf = 0x4004100302;
          *v79 = 2080;
          *&v79[2] = "[DiskImageParamsXPC createDiskImageWithCache:shadowValidation:]";
          v80 = 2114;
          v81 = path;
          v36 = _os_log_send_and_compose_impl();

          if (v36)
          {
            fprintf(__stderrp, "%s\n", v36);
            free(v36);
          }
        }

        else
        {
          v37 = sub_1000E03D8();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            cacheURL2 = [(DiskImageParamsXPC *)self cacheURL];
            path2 = [cacheURL2 path];
            *buf = 0x4004100302;
            *v79 = 2080;
            *&v79[2] = "[DiskImageParamsXPC createDiskImageWithCache:shadowValidation:]";
            v80 = 2114;
            v81 = path2;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%.*s: On disk cache path: %{public}@", buf, 0x1Cu);
          }
        }

        *__error() = v32;
        cacheURL3 = [(DiskImageParamsXPC *)self cacheURL];
        v41 = cacheURL3;
        *buf = [cacheURL3 fileSystemRepresentation];
        sub_1000B0F50();
      }

      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_100233158;
      v55 = std::generic_category();
      exception[1] = 2;
      exception[2] = v55;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Could not determine cache dir";
    }

    v42 = (*(MEMORY[0] + 40))(0);
    v43 = __src;
    v44 = v71;
    v45 = __src != v71 || (v42 & 1) == 0;
    atomic_fetch_add_explicit(8, 1uLL, memory_order_relaxed);
    if (v44 >= v72)
    {
      v47 = v44 - v43;
      v48 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v43) >> 3);
      v49 = v48 + 1;
      if (v48 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100036CAC();
      }

      if (0x5555555555555556 * ((v72 - v43) >> 3) > v49)
      {
        v49 = 0x5555555555555556 * ((v72 - v43) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v72 - v43) >> 3) >= 0x555555555555555)
      {
        v49 = 0xAAAAAAAAAAAAAAALL;
      }

      p_src = &__src;
      if (v49)
      {
        sub_10005C35C(&__src, v49);
      }

      v50 = 24 * v48;
      *v50 = 0;
      *(v50 + 8) = 0;
      *(v50 + 16) = v45;
      v46 = 24 * v48 + 24;
      v51 = (v50 - v47);
      memcpy((v50 - v47), v43, v47);
      v52 = __src;
      v53 = v72;
      __src = v51;
      v71 = v46;
      v72 = 0;
      v74 = v52;
      v75 = v53;
      v73.n128_u64[0] = v52;
      v73.n128_u64[1] = v52;
      sub_10005C3B4(&v73);
    }

    else
    {
      *v44 = 0;
      *(v44 + 1) = 0;
      v46 = (v44 + 24);
      *(v44 + 4) = v45;
    }

    v71 = v46;
    operator new();
  }

  *v56 = v67;
  return shadowChain;
}

- (BOOL)lockBackendsWithWritableOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  if ((-[DiskImageParamsXPC isWritableFormat](self, "isWritableFormat") || !onlyCopy) && (-[DiskImageParamsXPC backendXPC](self, "backendXPC"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 lock], v7, v8))
  {

    return [DIError failWithPOSIXCode:v8 verboseInfo:@"Failed locking the image" error:error];
  }

  else
  {
    shadowChain = [(DiskImageParamsXPC *)self shadowChain];

    if (shadowChain)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      shadowChain2 = [(DiskImageParamsXPC *)self shadowChain];
      nodes = [shadowChain2 nodes];

      v13 = [nodes countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = *v20;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(nodes);
            }

            fileBackend = [*(*(&v19 + 1) + 8 * i) fileBackend];
            lock = [fileBackend lock];

            if (lock)
            {
              v18 = [DIError failWithPOSIXCode:lock verboseInfo:@"Failed locking the shadow file" error:error];

              return v18;
            }
          }

          v13 = [nodes countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }

    return 1;
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v6 = [backendXPC description];
  v7 = [NSString stringWithFormat:@"%@[%@]", v4, v6];

  return v7;
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
      v25 = &v25;
      v10 = 16 * [nonCacheNodes count];
      v11 = &v26[-1] - ((v10 + 31) & 0xFFFFFFFFFFFFFFF0);
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

      v20 = [NSUUID alloc];
      v26[0] = sub_10019E174(v11, v10 + 16);
      v26[1] = v21;
      v22 = [v20 initWithUUIDBytes:v26];
      v24 = self->_instanceID;
      p_instanceID = &self->_instanceID;
      *p_instanceID = v22;

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
    v7 = 0;
    v8 = 0;
  }

  sub_10019A824(&v7, &v9);
  sub_10004B28C(&v9, &v11);
  if (v10)
  {
    sub_10000367C(v10);
  }

  if (v8)
  {
    sub_10000367C(v8);
  }

  if (v11)
  {
    v4 = v11[5];
    v5 = sub_1000B0444();
  }

  else
  {
    v5 = 0;
  }

  if (v12)
  {
    sub_10000367C(v12);
  }

  return v5;
}

- (vector<std::shared_ptr<LockableResource>,)lockableResources
{
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
    v24 = 0uLL;
  }

  sub_10019A824(&v24, &lpsrc);
  if (*(&v24 + 1))
  {
    sub_10000367C(*(&v24 + 1));
  }

  {
    *&v24 = v8;
    *(&v24 + 1) = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__end_, 1uLL, memory_order_relaxed);
    }

    sub_1000ABA00(&retstr->__begin_, &v24);
  }

  else
  {
    v24 = 0uLL;
  }

  if (*(&v24 + 1))
  {
    sub_10000367C(*(&v24 + 1));
  }

  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  nodes = [shadowChain nodes];

  v11 = [nodes countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(nodes);
        }

        fileBackend = [*(*(&v20 + 1) + 8 * i) fileBackend];
        v15 = fileBackend;
        if (fileBackend)
        {
          [fileBackend backend];
        }

        else
        {
          v19 = 0uLL;
        }

        sub_10019A824(&v19, &v24);
        if (*(&v19 + 1))
        {
          sub_10000367C(*(&v19 + 1));
        }

        {
          *&v19 = v17;
          *(&v19 + 1) = *(&v24 + 1);
          if (*(&v24 + 1))
          {
            atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          sub_1000ABA00(&retstr->__begin_, &v19);
        }

        else
        {
          v19 = 0uLL;
        }

        if (*(&v19 + 1))
        {
          sub_10000367C(*(&v19 + 1));
        }

        if (*(&v24 + 1))
        {
          sub_10000367C(*(&v24 + 1));
        }
      }

      v11 = [nodes countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v11);
  }

  result = v26;
  if (v26)
  {
    sub_10000367C(v26);
  }

  return result;
}

@end