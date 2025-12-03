@interface MCDependencyReader
+ (id)sharedReader;
+ (id)systemStoragePath;
+ (id)userStoragePath;
+ (void)setSystemStoragePath:(id)path userStoragePath:(id)storagePath;
- (NSMutableDictionary)memberQueueSystemDomainsDict;
- (NSMutableDictionary)memberQueueUserDomainsDict;
- (id)_init;
- (id)dependentsOfParent:(id)parent inDomain:(id)domain;
- (id)dependentsOfParent:(id)parent inSystemDomain:(id)domain;
- (id)dependentsOfParent:(id)parent inUserDomain:(id)domain;
- (id)memberQueueDependentsOfParent:(id)parent inDomain:(id)domain;
- (id)memberQueueDependentsOfParent:(id)parent inSystemDomain:(id)domain;
- (id)memberQueueDependentsOfParent:(id)parent inUserDomain:(id)domain;
- (id)memberQueueParentsInDomain:(id)domain;
- (id)memberQueueParentsInSystemDomain:(id)domain;
- (id)memberQueueParentsInUserDomain:(id)domain;
- (id)parentsInDomain:(id)domain;
- (id)parentsInSystemDomain:(id)domain;
- (id)parentsInUserDomain:(id)domain;
- (id)systemDomainsDict;
- (id)userDomainsDict;
- (void)invalidateCache;
- (void)memberQueueRereadDomainsDict;
- (void)memberQueueRereadSystemDomainsDict;
- (void)memberQueueRereadUserDomainsDict;
@end

@implementation MCDependencyReader

+ (id)sharedReader
{
  if (sharedReader_onceToken != -1)
  {
    +[MCDependencyReader sharedReader];
  }

  v3 = sharedReader_obj;

  return v3;
}

- (NSMutableDictionary)memberQueueSystemDomainsDict
{
  memberQueueSystemDomainsDict = self->_memberQueueSystemDomainsDict;
  if (!memberQueueSystemDomainsDict)
  {
    [(MCDependencyReader *)self memberQueueRereadSystemDomainsDict];
    memberQueueSystemDomainsDict = self->_memberQueueSystemDomainsDict;
  }

  return memberQueueSystemDomainsDict;
}

- (NSMutableDictionary)memberQueueUserDomainsDict
{
  memberQueueUserDomainsDict = self->_memberQueueUserDomainsDict;
  if (!memberQueueUserDomainsDict)
  {
    [(MCDependencyReader *)self memberQueueRereadUserDomainsDict];
    memberQueueUserDomainsDict = self->_memberQueueUserDomainsDict;
  }

  return memberQueueUserDomainsDict;
}

+ (id)systemStoragePath
{
  if (systemStoragePathOverride)
  {
    v2 = systemStoragePathOverride;
  }

  else
  {
    v2 = MCSystemDependencyFilePath();
  }

  return v2;
}

+ (id)userStoragePath
{
  if (userStoragePathOverride)
  {
    v2 = userStoragePathOverride;
  }

  else
  {
    v2 = MCUserDependencyFilePath();
  }

  return v2;
}

+ (void)setSystemStoragePath:(id)path userStoragePath:(id)storagePath
{
  storagePathCopy = storagePath;
  v6 = [path copy];
  v7 = systemStoragePathOverride;
  systemStoragePathOverride = v6;

  v8 = [storagePathCopy copy];
  v9 = userStoragePathOverride;
  userStoragePathOverride = v8;
}

void __34__MCDependencyReader_sharedReader__block_invoke()
{
  v0 = NSClassFromString(&cfstr_Mcdependencyma.isa);
  if (v0)
  {
    sharedReader_obj = [[v0 alloc] _init];

    MEMORY[0x1EEE66BB8]();
  }

  else
  {
    out_token = 0;
    v1 = [@"com.apple.managedconfiguration.dependencydidchange" UTF8String];
    v2 = dispatch_get_global_queue(0, 0);
    LODWORD(v1) = notify_register_dispatch(v1, &out_token, v2, &__block_literal_global_4);

    if (v1)
    {
      v3 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_ERROR, "Could not set up listener for dependency invalidation notifications", v6, 2u);
      }
    }

    v4 = [[MCDependencyReader alloc] _init];
    v5 = sharedReader_obj;
    sharedReader_obj = v4;
  }
}

void __34__MCDependencyReader_sharedReader__block_invoke_2()
{
  v0 = +[MCDependencyReader sharedReader];
  [v0 invalidateCache];
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = MCDependencyReader;
  v2 = [(MCDependencyReader *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MCDependencyManager member queue", 0);
    memberQueue = v2->_memberQueue;
    v2->_memberQueue = v3;
  }

  return v2;
}

- (id)systemDomainsDict
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  memberQueue = [(MCDependencyReader *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__MCDependencyReader_systemDomainsDict__block_invoke;
  v6[3] = &unk_1E77D0260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(memberQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __39__MCDependencyReader_systemDomainsDict__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) memberQueueSystemDomainsDict];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)userDomainsDict
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  memberQueue = [(MCDependencyReader *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__MCDependencyReader_userDomainsDict__block_invoke;
  v6[3] = &unk_1E77D0260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(memberQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__MCDependencyReader_userDomainsDict__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) memberQueueUserDomainsDict];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)memberQueueParentsInDomain:(id)domain
{
  domainCopy = domain;
  memberQueueSystemDomainsDict = [(MCDependencyReader *)self memberQueueSystemDomainsDict];
  v6 = [memberQueueSystemDomainsDict objectForKeyedSubscript:domainCopy];
  allKeys = [v6 allKeys];

  memberQueueUserDomainsDict = [(MCDependencyReader *)self memberQueueUserDomainsDict];
  v9 = [memberQueueUserDomainsDict objectForKeyedSubscript:domainCopy];

  allKeys2 = [v9 allKeys];

  if (allKeys | allKeys2)
  {
    array = [MEMORY[0x1E695DF70] array];
    v12 = array;
    if (allKeys)
    {
      [array addObjectsFromArray:allKeys];
    }

    if (allKeys2)
    {
      [v12 addObjectsFromArray:allKeys2];
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 copy];

  return v13;
}

- (id)memberQueueParentsInSystemDomain:(id)domain
{
  domainCopy = domain;
  memberQueueSystemDomainsDict = [(MCDependencyReader *)self memberQueueSystemDomainsDict];
  v6 = [memberQueueSystemDomainsDict objectForKeyedSubscript:domainCopy];

  allKeys = [v6 allKeys];

  return allKeys;
}

- (id)memberQueueParentsInUserDomain:(id)domain
{
  domainCopy = domain;
  memberQueueUserDomainsDict = [(MCDependencyReader *)self memberQueueUserDomainsDict];
  v6 = [memberQueueUserDomainsDict objectForKeyedSubscript:domainCopy];

  allKeys = [v6 allKeys];

  return allKeys;
}

- (id)memberQueueDependentsOfParent:(id)parent inDomain:(id)domain
{
  domainCopy = domain;
  parentCopy = parent;
  v8 = [(MCDependencyReader *)self memberQueueDependentsOfParent:parentCopy inSystemDomain:domainCopy];
  v9 = [(MCDependencyReader *)self memberQueueDependentsOfParent:parentCopy inUserDomain:domainCopy];

  if (v8 | v9)
  {
    array = [MEMORY[0x1E695DF70] array];
    v11 = array;
    if (v8)
    {
      [array addObjectsFromArray:v8];
    }

    if (v9)
    {
      [v11 addObjectsFromArray:v9];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 copy];

  return v12;
}

- (id)memberQueueDependentsOfParent:(id)parent inSystemDomain:(id)domain
{
  domainCopy = domain;
  parentCopy = parent;
  memberQueueSystemDomainsDict = [(MCDependencyReader *)self memberQueueSystemDomainsDict];
  v9 = [memberQueueSystemDomainsDict objectForKeyedSubscript:domainCopy];

  v10 = [v9 objectForKeyedSubscript:parentCopy];

  v11 = [v10 copy];

  return v11;
}

- (id)memberQueueDependentsOfParent:(id)parent inUserDomain:(id)domain
{
  domainCopy = domain;
  parentCopy = parent;
  memberQueueUserDomainsDict = [(MCDependencyReader *)self memberQueueUserDomainsDict];
  v9 = [memberQueueUserDomainsDict objectForKeyedSubscript:domainCopy];

  v10 = [v9 objectForKeyedSubscript:parentCopy];

  v11 = [v10 copy];

  return v11;
}

- (id)parentsInDomain:(id)domain
{
  domainCopy = domain;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  memberQueue = [(MCDependencyReader *)self memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MCDependencyReader_parentsInDomain___block_invoke;
  block[3] = &unk_1E77D1EF0;
  v10 = domainCopy;
  v11 = &v12;
  block[4] = self;
  v6 = domainCopy;
  dispatch_sync(memberQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __38__MCDependencyReader_parentsInDomain___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueParentsInDomain:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)dependentsOfParent:(id)parent inDomain:(id)domain
{
  parentCopy = parent;
  domainCopy = domain;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  memberQueue = [(MCDependencyReader *)self memberQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__MCDependencyReader_dependentsOfParent_inDomain___block_invoke;
  v13[3] = &unk_1E77D1F18;
  v13[4] = self;
  v14 = parentCopy;
  v15 = domainCopy;
  v16 = &v17;
  v9 = domainCopy;
  v10 = parentCopy;
  dispatch_sync(memberQueue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __50__MCDependencyReader_dependentsOfParent_inDomain___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueDependentsOfParent:*(a1 + 40) inDomain:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)parentsInSystemDomain:(id)domain
{
  domainCopy = domain;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  memberQueue = [(MCDependencyReader *)self memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MCDependencyReader_parentsInSystemDomain___block_invoke;
  block[3] = &unk_1E77D1EF0;
  v10 = domainCopy;
  v11 = &v12;
  block[4] = self;
  v6 = domainCopy;
  dispatch_sync(memberQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __44__MCDependencyReader_parentsInSystemDomain___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueParentsInSystemDomain:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)parentsInUserDomain:(id)domain
{
  domainCopy = domain;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  memberQueue = [(MCDependencyReader *)self memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MCDependencyReader_parentsInUserDomain___block_invoke;
  block[3] = &unk_1E77D1EF0;
  v10 = domainCopy;
  v11 = &v12;
  block[4] = self;
  v6 = domainCopy;
  dispatch_sync(memberQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __42__MCDependencyReader_parentsInUserDomain___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueParentsInUserDomain:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)dependentsOfParent:(id)parent inSystemDomain:(id)domain
{
  parentCopy = parent;
  domainCopy = domain;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  memberQueue = [(MCDependencyReader *)self memberQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__MCDependencyReader_dependentsOfParent_inSystemDomain___block_invoke;
  v13[3] = &unk_1E77D1F18;
  v13[4] = self;
  v14 = parentCopy;
  v15 = domainCopy;
  v16 = &v17;
  v9 = domainCopy;
  v10 = parentCopy;
  dispatch_sync(memberQueue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __56__MCDependencyReader_dependentsOfParent_inSystemDomain___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueDependentsOfParent:*(a1 + 40) inSystemDomain:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)dependentsOfParent:(id)parent inUserDomain:(id)domain
{
  parentCopy = parent;
  domainCopy = domain;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  memberQueue = [(MCDependencyReader *)self memberQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__MCDependencyReader_dependentsOfParent_inUserDomain___block_invoke;
  v13[3] = &unk_1E77D1F18;
  v13[4] = self;
  v14 = parentCopy;
  v15 = domainCopy;
  v16 = &v17;
  v9 = domainCopy;
  v10 = parentCopy;
  dispatch_sync(memberQueue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __54__MCDependencyReader_dependentsOfParent_inUserDomain___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueDependentsOfParent:*(a1 + 40) inUserDomain:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)memberQueueRereadDomainsDict
{
  [(MCDependencyReader *)self memberQueueRereadSystemDomainsDict];

  [(MCDependencyReader *)self memberQueueRereadUserDomainsDict];
}

- (void)memberQueueRereadSystemDomainsDict
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = +[MCDependencyReader systemStoragePath];
  v5 = [defaultManager fileExistsAtPath:v4];

  getpid();
  v6 = *MEMORY[0x1E69E9BD0];
  v7 = +[MCDependencyReader systemStoragePath];
  fileSystemRepresentation = [v7 fileSystemRepresentation];
  v8 = sandbox_check();

  if (v5 && v8)
  {
    v9 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "Cannot access system dependency file due to sandboxing.", buf, 2u);
    }

    memberQueueSystemDomainsDict = self->_memberQueueSystemDomainsDict;
    self->_memberQueueSystemDomainsDict = 0;
  }

  else
  {
    v11 = MEMORY[0x1E696AE40];
    v12 = MEMORY[0x1E695DEF0];
    v13 = +[MCDependencyReader systemStoragePath];
    v14 = [v12 dataWithContentsOfFile:v13];
    memberQueueSystemDomainsDict = [v11 MCSafePropertyListWithData:v14 options:0 format:0 error:0];

    if (memberQueueSystemDomainsDict && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *v21 = 0;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEBUG, "Reading system dependency information from file.", v21, 2u);
      }

      mCMutableDeepCopy = [memberQueueSystemDomainsDict MCMutableDeepCopy];
    }

    else
    {
      v17 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_INFO, "No system dependency information found. Creating an empty dictionary.", v22, 2u);
      }

      mCMutableDeepCopy = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v18 = self->_memberQueueSystemDomainsDict;
    self->_memberQueueSystemDomainsDict = mCMutableDeepCopy;
  }
}

- (void)memberQueueRereadUserDomainsDict
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = +[MCDependencyReader userStoragePath];
  v5 = [defaultManager fileExistsAtPath:v4];

  getpid();
  v6 = *MEMORY[0x1E69E9BD0];
  v7 = +[MCDependencyReader userStoragePath];
  fileSystemRepresentation = [v7 fileSystemRepresentation];
  v8 = sandbox_check();

  if (v5 && v8)
  {
    v9 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "Cannot access user dependency file due to sandboxing.", buf, 2u);
    }

    memberQueueUserDomainsDict = self->_memberQueueUserDomainsDict;
    self->_memberQueueUserDomainsDict = 0;
  }

  else
  {
    v11 = MEMORY[0x1E696AE40];
    v12 = MEMORY[0x1E695DEF0];
    v13 = +[MCDependencyReader userStoragePath];
    v14 = [v12 dataWithContentsOfFile:v13];
    memberQueueUserDomainsDict = [v11 MCSafePropertyListWithData:v14 options:0 format:0 error:0];

    if (memberQueueUserDomainsDict && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *v21 = 0;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEBUG, "Reading user dependency information from file.", v21, 2u);
      }

      mCMutableDeepCopy = [memberQueueUserDomainsDict MCMutableDeepCopy];
    }

    else
    {
      v17 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_INFO, "No user dependency information found. Creating an empty dictionary.", v22, 2u);
      }

      mCMutableDeepCopy = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v18 = self->_memberQueueUserDomainsDict;
    self->_memberQueueUserDomainsDict = mCMutableDeepCopy;
  }
}

- (void)invalidateCache
{
  memberQueue = [(MCDependencyReader *)self memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MCDependencyReader_invalidateCache__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_sync(memberQueue, block);
}

uint64_t __37__MCDependencyReader_invalidateCache__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMemberQueueSystemDomainsDict:0];
  v2 = *(a1 + 32);

  return [v2 setMemberQueueUserDomainsDict:0];
}

@end