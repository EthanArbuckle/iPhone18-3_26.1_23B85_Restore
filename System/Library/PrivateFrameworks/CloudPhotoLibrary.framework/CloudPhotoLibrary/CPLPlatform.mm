@interface CPLPlatform
+ (id)defaultPlatform;
+ (void)setDefaultPlatform:(id)platform;
+ (void)setProxyImplementationForPlatform:(id)platform;
- (CPLPlatform)init;
- (Class)implementationClassForAbstractClass:(Class)class;
- (id)description;
- (id)newPlatformImplementationForObject:(id)object;
- (void)setPlatformImplementation:(Class)implementation forClass:(Class)class;
@end

@implementation CPLPlatform

+ (void)setProxyImplementationForPlatform:(id)platform
{
  platformCopy = platform;
  v3 = objc_opt_class();
  [platformCopy setPlatformImplementation:v3 forClass:objc_opt_class()];
  v4 = objc_opt_class();
  [platformCopy setPlatformImplementation:v4 forClass:objc_opt_class()];
  v5 = objc_opt_class();
  [platformCopy setPlatformImplementation:v5 forClass:objc_opt_class()];
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@ ", objc_opt_class()];
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CPLPlatform_description__block_invoke;
  block[3] = &unk_1E861B290;
  block[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(lock, block);
  [v5 appendString:@">"];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __26__CPLPlatform_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    [*(a1 + 40) appendFormat:@"[%@]", *(v2 + 24)];
    v2 = *(a1 + 32);
  }

  if ([*(v2 + 8) count])
  {
    [*(a1 + 40) appendString:@"\n"];
    v3 = [*(*(a1 + 32) + 8) dictionaryRepresentation];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __26__CPLPlatform_description__block_invoke_2;
    v4[3] = &unk_1E8620420;
    v5 = *(a1 + 40);
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
  }
}

- (id)newPlatformImplementationForObject:(id)object
{
  objectCopy = object;
  v5 = [objc_alloc(-[CPLPlatform implementationClassForAbstractClass:](self implementationClassForAbstractClass:{objc_opt_class())), "initWithAbstractObject:", objectCopy}];

  return v5;
}

- (Class)implementationClassForAbstractClass:(Class)class
{
  v26 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v21 = 0;
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CPLPlatform_implementationClassForAbstractClass___block_invoke;
  block[3] = &unk_1E86203F8;
  block[5] = &v18;
  block[6] = class;
  block[4] = self;
  dispatch_sync(lock, block);
  v6 = v19[3];
  if (v6)
  {
    if (![v6 isSubclassOfClass:objc_opt_class()])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLPlatformOSLogDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = v19[3];
          v13 = objc_opt_class();
          *buf = 138412546;
          v23 = v12;
          v24 = 2112;
          v25 = v13;
          v14 = v13;
          _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "%@ is not a subclass of %@", buf, 0x16u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPlatform.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v16 lineNumber:132 description:{@"%@ is not a subclass of %@", v19[3], objc_opt_class()}];

      abort();
    }

    v7 = v19[3];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v18, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __51__CPLPlatform_implementationClassForAbstractClass___block_invoke(void *a1, __n128 a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1[6];
  a2.n128_u64[0] = 138412290;
  v14 = a2;
  while (1)
  {
    *(*(a1[5] + 8) + 24) = [*(a1[4] + 8) objectForKey:{v3, *&v14}];
    if (*(*(a1[5] + 8) + 24))
    {
      break;
    }

    if (*(a1[4] + 24))
    {
      v4 = NSStringFromClass(v3);
      v5 = [v4 stringByAppendingString:*(a1[4] + 24)];
      *(*(a1[5] + 8) + 24) = NSClassFromString(v5);
      v6 = *(*(a1[5] + 8) + 24);
      if (v6)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v10 = __CPLPlatformOSLogDomain();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v11 = a1[6];
            v12 = *(*(a1[5] + 8) + 24);
            *buf = 138412546;
            v16 = v12;
            v17 = 2112;
            v18 = v11;
            _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Found %@ as implementation for %@", buf, 0x16u);
          }

          v6 = *(*(a1[5] + 8) + 24);
        }

        [*(a1[4] + 8) setObject:v6 forKey:a1[6]];

        goto LABEL_22;
      }
    }

    v3 = [(objc_class *)v3 superclass];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLPlatformOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = v14.n128_u32[0];
        v16 = v3;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Trying %@", buf, 0xCu);
      }
    }

    if (v3 == objc_opt_class())
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLPlatformOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = a1[6];
          *buf = v14.n128_u32[0];
          v16 = v9;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Found no implementation for %@", buf, 0xCu);
        }
      }

      goto LABEL_22;
    }
  }

  if (v3 != a1[6])
  {
    [*(a1[4] + 8) setObject:? forKey:?];
  }

LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)setPlatformImplementation:(Class)implementation forClass:(Class)class
{
  v30 = *MEMORY[0x1E69E9840];
  if (([(objc_class *)implementation isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLPlatformOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        classCopy = implementation;
        v24 = 2112;
        selfCopy = objc_opt_class();
        v13 = selfCopy;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@ should be a subclass of %@", buf, 0x16u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPlatform.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v15 lineNumber:89 description:{@"%@ should be a subclass of %@", implementation, objc_opt_class()}];

    abort();
  }

  if (([(objc_class *)class conformsToProtocol:&unk_1F57F43C8]& 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLPlatformOSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromProtocol(&unk_1F57F43C8);
        *buf = 138412546;
        classCopy = class;
        v24 = 2112;
        selfCopy = v17;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "%@ should conform to %@", buf, 0x16u);
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPlatform.m"];
    v20 = NSStringFromProtocol(&unk_1F57F43C8);
    [currentHandler2 handleFailureInMethod:a2 object:self file:v19 lineNumber:90 description:{@"%@ should conform to %@", class, v20}];

    abort();
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLPlatformOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      classCopy = objc_opt_class();
      v24 = 2048;
      selfCopy = self;
      v26 = 2112;
      classCopy2 = class;
      v28 = 2112;
      implementationCopy2 = implementation;
      v9 = classCopy;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "<%@ %p> registering platform implementation %@ -> %@", buf, 0x2Au);
    }
  }

  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CPLPlatform_setPlatformImplementation_forClass___block_invoke;
  block[3] = &unk_1E86203D0;
  block[4] = self;
  block[5] = implementation;
  block[6] = class;
  dispatch_sync(lock, block);
  v11 = *MEMORY[0x1E69E9840];
}

- (CPLPlatform)init
{
  v8.receiver = self;
  v8.super_class = CPLPlatform;
  v2 = [(CPLPlatform *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    abstractClassToImplementation = v2->_abstractClassToImplementation;
    v2->_abstractClassToImplementation = v3;

    v5 = dispatch_queue_create("com.apple.cpl.platform", 0);
    lock = v2->_lock;
    v2->_lock = v5;
  }

  return v2;
}

+ (id)defaultPlatform
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = _defaultPlatform;
  objc_sync_exit(v2);

  return v3;
}

+ (void)setDefaultPlatform:(id)platform
{
  v10 = *MEMORY[0x1E69E9840];
  platformCopy = platform;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLPlatformOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = platformCopy;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Setting default platform to %@", &v8, 0xCu);
    }
  }

  v6 = _defaultPlatform;
  _defaultPlatform = platformCopy;

  objc_sync_exit(v4);
  v7 = *MEMORY[0x1E69E9840];
}

@end