@interface _SGDCloudKitSyncPersistedState
+ (id)properties;
- (SEL)_getterForProperty:(objc_property *)a3;
- (SEL)_setterForProperty:(objc_property *)a3;
- (_SGDCloudKitSyncPersistedState)init;
- (_SGDCloudKitSyncPersistedState)initWithCoder:(id)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setupKvo;
- (void)stopKvo;
@end

@implementation _SGDCloudKitSyncPersistedState

+ (id)properties
{
  if (properties__pasOnceToken3 != -1)
  {
    dispatch_once(&properties__pasOnceToken3, &__block_literal_global_19133);
  }

  v3 = properties__pasExprOnceResult;

  return v3;
}

- (id)description
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = +[_SGDCloudKitSyncPersistedState properties];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = [v9 second];
        Property = class_getProperty(v10, [v11 UTF8String]);

        if (!Property)
        {
          v17 = [MEMORY[0x277CCA890] currentHandler];
          [v17 handleFailureInMethod:a2 object:self file:@"SGDCloudKitSync.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"objcProperty != nil"}];
        }

        v13 = [(_SGDCloudKitSyncPersistedState *)self _getterForProperty:Property];
        v14 = ([(_SGDCloudKitSyncPersistedState *)self methodForSelector:v13])(self, v13);
        v15 = v14;
        if (!v14)
        {
          v2 = [MEMORY[0x277CBEB68] null];
          v15 = v2;
        }

        v16 = [v9 second];
        [v4 setObject:v15 forKeyedSubscript:v16];

        if (!v14)
        {
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v18 = objc_alloc(MEMORY[0x277CCACA8]);
  v26.receiver = self;
  v26.super_class = _SGDCloudKitSyncPersistedState;
  v19 = [(_SGDCloudKitSyncPersistedState *)&v26 description];
  v20 = [v4 description];
  v21 = [v18 initWithFormat:@"<%@ %@>", v19, v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = +[_SGDCloudKitSyncPersistedState properties];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = objc_opt_class();
        v12 = [v10 second];
        Property = class_getProperty(v11, [v12 UTF8String]);

        if (!Property)
        {
          v17 = [MEMORY[0x277CCA890] currentHandler];
          [v17 handleFailureInMethod:a2 object:self file:@"SGDCloudKitSync.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"objcProperty != nil"}];
        }

        v14 = [(_SGDCloudKitSyncPersistedState *)self _getterForProperty:Property];
        v15 = ([(_SGDCloudKitSyncPersistedState *)self methodForSelector:v14])(self, v14);
        v16 = [v10 second];
        [v4 encodeObject:v15 forKey:v16];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10 == self)
  {
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412802;
      v17 = v9;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v10;
      _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, "SGCK Persisted state changed (keyPath: %@, change: %@, self: %@)", &v16, 0x20u);
    }

    v13 = [(_SGDCloudKitSyncPersistedState *)self changeCallback];

    if (v13)
    {
      v14 = [(_SGDCloudKitSyncPersistedState *)self changeCallback];
      (v14)[2](v14, self);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stopKvo
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = +[_SGDCloudKitSyncPersistedState properties];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) second];
        [(_SGDCloudKitSyncPersistedState *)self removeObserver:self forKeyPath:v8 context:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setupKvo
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = +[_SGDCloudKitSyncPersistedState properties];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) second];
        [(_SGDCloudKitSyncPersistedState *)self addObserver:self forKeyPath:v8 options:0 context:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(_SGDCloudKitSyncPersistedState *)self stopKvo];
  v3.receiver = self;
  v3.super_class = _SGDCloudKitSyncPersistedState;
  [(_SGDCloudKitSyncPersistedState *)&v3 dealloc];
}

- (_SGDCloudKitSyncPersistedState)initWithCoder:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v31.receiver = self;
  v31.super_class = _SGDCloudKitSyncPersistedState;
  v6 = [(_SGDCloudKitSyncPersistedState *)&v31 init];
  if (v6)
  {
    v26 = a2;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = +[_SGDCloudKitSyncPersistedState properties];
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [v12 first];
          v14 = NSClassFromString(v13);

          if (!v14)
          {
            v23 = sgLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v33 = v12;
              _os_log_error_impl(&dword_231E60000, v23, OS_LOG_TYPE_ERROR, "_SGDCloudKitSyncPersistedState got invalid class name in property: %@", buf, 0xCu);
            }

            v22 = 0;
            goto LABEL_17;
          }

          v15 = [v12 second];
          v16 = [v5 decodeObjectOfClass:v14 forKey:v15];

          v17 = objc_opt_class();
          v18 = [v12 second];
          Property = class_getProperty(v17, [v18 UTF8String]);

          if (!Property)
          {
            v21 = [MEMORY[0x277CCA890] currentHandler];
            [v21 handleFailureInMethod:v26 object:v6 file:@"SGDCloudKitSync.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"objcProperty != nil"}];
          }

          v20 = [(_SGDCloudKitSyncPersistedState *)v6 _setterForProperty:Property];
          ([(_SGDCloudKitSyncPersistedState *)v6 methodForSelector:v20])(v6, v20, v16);
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v34 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    [(_SGDCloudKitSyncPersistedState *)v6 setupKvo];
  }

  v22 = v6;
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (SEL)_setterForProperty:(objc_property *)a3
{
  v6 = property_copyAttributeValue(a3, "S");
  if (!v6)
  {
    Name = property_getName(a3);
    v8 = strlen(Name);
    v9 = malloc_type_malloc(v8 + 5, 0x4A67B19AuLL);
    if (!v9)
    {
      v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v17);
    }

    v6 = v9;
    v12 = *Name;
    v11 = Name + 1;
    v10 = v12;
    v13 = v12 - 32;
    if ((v12 - 97) < 0x1A)
    {
      v10 = v13;
    }

    if (snprintf(v9, v8 + 5, "set%c%s:", v10, v11) < 0)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"SGDCloudKitSync.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"snprintfResult >= 0"}];
    }
  }

  v14 = sel_registerName(v6);
  free(v6);
  return v14;
}

- (SEL)_getterForProperty:(objc_property *)a3
{
  if (!a3)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGDCloudKitSync.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"property"}];
  }

  v4 = property_copyAttributeValue(a3, "G");
  if (v4)
  {
    v5 = v4;
    v6 = sel_registerName(v4);
    free(v5);
    return v6;
  }

  else
  {
    Name = property_getName(a3);

    return sel_registerName(Name);
  }
}

- (_SGDCloudKitSyncPersistedState)init
{
  v5.receiver = self;
  v5.super_class = _SGDCloudKitSyncPersistedState;
  v2 = [(_SGDCloudKitSyncPersistedState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_SGDCloudKitSyncPersistedState *)v2 setupKvo];
  }

  return v3;
}

@end