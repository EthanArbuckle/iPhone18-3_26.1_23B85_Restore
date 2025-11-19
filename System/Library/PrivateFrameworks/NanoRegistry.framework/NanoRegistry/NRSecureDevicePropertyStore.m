@interface NRSecureDevicePropertyStore
+ (id)classTypes;
+ (id)enclosedClassTypes;
- (BOOL)dirty;
- (NRSecureDevicePropertyStore)init;
- (NRSecureDevicePropertyStore)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)storeSecureProperty:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
- (void)forceImportSecureProperties:(id)a3;
- (void)forceWriteSecurePropertyID:(id)a3 withValue:(id)a4;
- (void)removeSecureProperty:(id)a3;
@end

@implementation NRSecureDevicePropertyStore

- (NRSecureDevicePropertyStore)init
{
  v10.receiver = self;
  v10.super_class = NRSecureDevicePropertyStore;
  v2 = [(NRSecureDevicePropertyStore *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    IDToProperty = v2->_IDToProperty;
    v2->_IDToProperty = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    propertyToID = v2->_propertyToID;
    v2->_propertyToID = v5;

    v7 = dispatch_queue_create("com.apple.nanoregistry.nrsecuredevicepropertystore.dirtyqueue", 0);
    dirtyQueue = v2->_dirtyQueue;
    v2->_dirtyQueue = v7;

    v2->_dirty = 0;
  }

  return v2;
}

+ (id)enclosedClassTypes
{
  v2 = +[NRMutableDeviceProperty enclosedClassTypes];
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)storeSecureProperty:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_propertyToID objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_opt_new();
    [(NSMutableDictionary *)self->_IDToProperty setObject:v4 forKeyedSubscript:v5];
    [(NSMutableDictionary *)self->_propertyToID setObject:v5 forKeyedSubscript:v4];
    dirtyQueue = self->_dirtyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__NRSecureDevicePropertyStore_storeSecureProperty___block_invoke;
    block[3] = &unk_1E86DAE98;
    block[4] = self;
    dispatch_async(dirtyQueue, block);
  }

  return v5;
}

- (void)removeSecureProperty:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_IDToProperty objectForKeyedSubscript:v4];
  if (v5)
  {
    [(NSMutableDictionary *)self->_IDToProperty removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_propertyToID removeObjectForKey:v5];
    dirtyQueue = self->_dirtyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__NRSecureDevicePropertyStore_removeSecureProperty___block_invoke;
    block[3] = &unk_1E86DAE98;
    block[4] = self;
    dispatch_async(dirtyQueue, block);
  }
}

- (void)forceWriteSecurePropertyID:(id)a3 withValue:(id)a4
{
  [(NSMutableDictionary *)self->_IDToProperty setObject:a4 forKeyedSubscript:a3];
  dirtyQueue = self->_dirtyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__NRSecureDevicePropertyStore_forceWriteSecurePropertyID_withValue___block_invoke;
  block[3] = &unk_1E86DAE98;
  block[4] = self;
  dispatch_async(dirtyQueue, block);
}

- (void)forceImportSecureProperties:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v5 objectForKeyedSubscript:v10];
          [(NSMutableDictionary *)self->_IDToProperty setObject:v11 forKeyedSubscript:v10];
          [(NSMutableDictionary *)self->_propertyToID setObject:v10 forKeyedSubscript:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    dirtyQueue = self->_dirtyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__NRSecureDevicePropertyStore_forceImportSecureProperties___block_invoke;
    block[3] = &unk_1E86DAE98;
    block[4] = self;
    dispatch_async(dirtyQueue, block);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)dirty
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dirtyQueue = self->_dirtyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__NRSecureDevicePropertyStore_dirty__block_invoke;
  v5[3] = &unk_1E86DB8F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dirtyQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NRSecureDevicePropertyStore)initWithCoder:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NRSecureDevicePropertyStore *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = +[NRMutableDeviceProperty enclosedClassTypes];
    v10 = [v8 setByAddingObjectsFromSet:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"properties"];
    IDToProperty = v5->_IDToProperty;
    v5->_IDToProperty = v11;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_IDToProperty name:@"NRSecureDevicePropertyStore property dictionary" owner:v5];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v5->_IDToProperty;
    v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          v19 = [(NSMutableDictionary *)v5->_IDToProperty objectForKeyedSubscript:v18, v22];
          [(NSMutableDictionary *)v5->_propertyToID setObject:v18 forKeyedSubscript:v19];
        }

        v15 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_IDToProperty forKey:@"properties"];
  dirtyQueue = self->_dirtyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__NRSecureDevicePropertyStore_encodeWithCoder___block_invoke;
  block[3] = &unk_1E86DAE98;
  block[4] = self;
  dispatch_async(dirtyQueue, block);
}

+ (id)classTypes
{
  v2 = [a1 enclosedClassTypes];
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (id)description
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self->_dirty)
  {
    v7 = @"dirty";
  }

  else
  {
    v7 = @"clean";
  }

  v8 = [v3 stringWithFormat:@"%@: is %@\n", v5, v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_IDToProperty;
  v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      v14 = v8;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v20 + 1) + 8 * v13);
        v16 = [(NSMutableDictionary *)self->_IDToProperty objectForKeyedSubscript:v15];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\t%@ = %@\n", v15, v16, v20];
        v8 = [v14 stringByAppendingString:v17];

        ++v13;
        v14 = v8;
      }

      while (v11 != v13);
      v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v8;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(NSMutableDictionary *)self->_IDToProperty copy];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[NRSecureDevicePropertyStore allocWithZone:](NRSecureDevicePropertyStore init];
  v6 = [(NSMutableDictionary *)self->_IDToProperty mutableCopyWithZone:a3];
  IDToProperty = v5->_IDToProperty;
  v5->_IDToProperty = v6;

  v8 = [(NSMutableDictionary *)self->_propertyToID mutableCopyWithZone:a3];
  propertyToID = v5->_propertyToID;
  v5->_propertyToID = v8;

  v5->_dirty = 1;
  return v5;
}

@end