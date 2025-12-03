@interface BLTObjectStore
- (BLTObjectStore)initWithPath:(id)path elementClass:(Class)class;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)keys;
- (id)objectForKey:(id)key;
- (id)succinctDescription;
- (void)keys;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)storeObject:(id)object withKey:(id)key;
@end

@implementation BLTObjectStore

- (BLTObjectStore)initWithPath:(id)path elementClass:(Class)class
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = BLTObjectStore;
  v8 = [(BLTObjectStore *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_path, path);
    v9->_elementClass = class;
  }

  return v9;
}

- (id)keys
{
  v38[1] = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = self->_path;
  v37 = *MEMORY[0x277CCA1B0];
  v38[0] = *MEMORY[0x277CCA1B8];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v35 = 0;
  [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:v5 error:&v35];
  v6 = v35;

  if (v6)
  {
    v7 = blt_general_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BLTObjectStore keys];
    }

    v28 = 0;
  }

  else
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = self->_path;
    v34 = 0;
    v7 = [defaultManager2 contentsOfDirectoryAtPath:v9 error:&v34];
    v6 = v34;

    if (v6)
    {
      obj = blt_general_log();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [BLTObjectStore keys];
      }

      v28 = 0;
    }

    else
    {
      v28 = [MEMORY[0x277CBEB58] setWithCapacity:{-[NSObject count](v7, "count")}];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = v7;
      v10 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v10)
      {
        v11 = v10;
        v24 = v7;
        v25 = 0;
        v12 = *v31;
        do
        {
          v13 = 0;
          v26 = v11;
          do
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v30 + 1) + 8 * v13);
            fromHex = [v14 fromHex];
            if (fromHex)
            {
              [v28 addObject:fromHex];
            }

            else
            {
              v16 = [v14 hex];
              v17 = [(NSString *)self->_path stringByAppendingPathComponent:v14];
              selfCopy = self;
              v19 = [(NSString *)self->_path stringByAppendingPathComponent:v16];
              defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
              v29 = 0;
              [defaultManager3 moveItemAtPath:v17 toPath:v19 error:&v29];
              v21 = v29;

              if (!v21)
              {
                [v28 addObject:v14];
              }

              self = selfCopy;
              v11 = v26;
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v11);
        v7 = v24;
        v6 = v25;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)objectForKey:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [keyCopy hex];
  v6 = [(NSString *)self->_path stringByAppendingPathComponent:v5];
  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
  if (v7)
  {
    v15 = 0;
    v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v7 error:&v15];
    v9 = v15;
    if (v9)
    {
      v10 = blt_general_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        selfCopy2 = self;
        v18 = 2112;
        v19 = keyCopy;
        v20 = 2112;
        v21 = v9;
        v22 = 2112;
        v23 = v6;
        _os_log_error_impl(&dword_241FB3000, v10, OS_LOG_TYPE_ERROR, "%@ objectForKey: %@ error: %@ unarchiving %@", buf, 0x2Au);
      }
    }

    v11 = [v8 decodeObjectOfClass:self->_elementClass forKey:*MEMORY[0x277CCA308]];
    [v8 finishDecoding];
  }

  else
  {
    v12 = blt_general_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v18 = 2112;
      v19 = keyCopy;
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&dword_241FB3000, v12, OS_LOG_TYPE_ERROR, "%@ objectForKey: %@ not found at %@", buf, 0x20u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)removeObjectForKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [keyCopy hex];
  v6 = [(NSString *)self->_path stringByAppendingPathComponent:v5];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  [defaultManager removeItemAtPath:v6 error:&v11];
  v8 = v11;

  v9 = blt_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v14 = 2112;
    v15 = keyCopy;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "%@ removeObjectForKey: %@ path: %@ error: %@", buf, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)storeObject:(id)object withKey:(id)key
{
  v36[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  v8 = keyCopy;
  if (objectCopy)
  {
    v26 = 0;
    v9 = [keyCopy hex];
    v10 = [(NSString *)self->_path stringByAppendingPathComponent:v9];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [defaultManager fileExistsAtPath:self->_path isDirectory:&v26];
    v13 = v26;

    if (v12 & v13)
    {
      goto LABEL_6;
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    path = self->_path;
    v35 = *MEMORY[0x277CCA1B0];
    v36[0] = *MEMORY[0x277CCA1B8];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v25 = 0;
    [defaultManager2 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:v16 error:&v25];
    v17 = v25;

    if (!v17)
    {
LABEL_6:
      v19 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      v18 = v19;
      if (v19)
      {
        [v19 encodeObject:objectCopy forKey:*MEMORY[0x277CCA308]];
        encodedData = [v18 encodedData];
        v24 = 0;
        [encodedData writeToFile:v10 options:268435457 error:&v24];
        v17 = v24;

        v21 = blt_general_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          selfCopy3 = self;
          v29 = 2112;
          v30 = v8;
          v31 = 2112;
          v32 = v10;
          _os_log_impl(&dword_241FB3000, v21, OS_LOG_TYPE_DEFAULT, "%@ storeObject:withKey: wrote for: %@ path: %@", buf, 0x20u);
        }
      }

      else
      {
        v22 = blt_general_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          selfCopy3 = self;
          v29 = 2112;
          v30 = v8;
          v31 = 2112;
          v32 = v10;
          _os_log_error_impl(&dword_241FB3000, v22, OS_LOG_TYPE_ERROR, "%@ storeObject:withKey: failed to create archiver for: %@ path: %@", buf, 0x20u);
        }

        v17 = 0;
      }
    }

    else
    {
      v18 = blt_general_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        selfCopy3 = self;
        v29 = 2112;
        v30 = v8;
        v31 = 2112;
        v32 = v10;
        v33 = 2112;
        v34 = v17;
        _os_log_error_impl(&dword_241FB3000, v18, OS_LOG_TYPE_ERROR, "%@ storeObject:withKey: createDirectoryAtPath failed for: %@ at path: %@ error: %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v17 = blt_general_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(BLTObjectStore *)self storeObject:v8 withKey:v17];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  if (object)
  {
    [(BLTObjectStore *)self storeObject:object withKey:subscript];
  }

  else
  {
    [(BLTObjectStore *)self removeObjectForKey:subscript];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BLTObjectStore *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BLTObjectStore *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BLTObjectStore *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_path withName:@"path"];
  v6 = [succinctDescriptionBuilder appendObject:self->_elementClass withName:@"_elementClass"];

  return succinctDescriptionBuilder;
}

- (void)keys
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_241FB3000, v0, OS_LOG_TYPE_ERROR, "%s error loading object store keys: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)storeObject:(os_log_t)log withKey:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_241FB3000, log, OS_LOG_TYPE_ERROR, "%@ storeObject:withKey: object nil for: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end