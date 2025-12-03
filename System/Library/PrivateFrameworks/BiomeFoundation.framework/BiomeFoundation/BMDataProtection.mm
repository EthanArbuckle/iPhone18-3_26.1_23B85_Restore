@interface BMDataProtection
+ (BOOL)canOpenFilesForProtectionClass:(unint64_t)class createNewFile:(BOOL)file;
+ (BOOL)isClassCXUnlocked;
+ (id)registerForLockStateChanges:(id)changes;
+ (id)sharedInstance;
+ (int)biomeProtectionClassToOSProtectionClass:(unint64_t)class;
+ (void)isClassCXUnlocked;
+ (void)unregister:(id)unregister;
- (BMDataProtection)init;
- (id)_registerForLockStateChanges:(id)changes;
- (void)_unregister:(id)_unregister;
- (void)handleState:(int)state;
@end

@implementation BMDataProtection

+ (BOOL)isClassCXUnlocked
{
  v7 = *MEMORY[0x1E69E9840];
  extended_device_state = aks_get_extended_device_state();
  if (extended_device_state)
  {
    v3 = extended_device_state;
    v4 = __biome_log_for_category(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(BMDataProtection *)v3];
    }
  }

  result = 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[BMDataProtection sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __34__BMDataProtection_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = objc_alloc_init(BMDataProtection);

  return MEMORY[0x1EEE66BB8]();
}

- (BMDataProtection)init
{
  v6.receiver = self;
  v6.super_class = BMDataProtection;
  v2 = [(BMDataProtection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    callbacks = v2->_callbacks;
    v2->_callbacks = 0;

    v3->_aks = 0;
  }

  return v3;
}

+ (id)registerForLockStateChanges:(id)changes
{
  changesCopy = changes;
  sharedInstance = [self sharedInstance];
  v6 = [sharedInstance _registerForLockStateChanges:changesCopy];

  return v6;
}

- (id)_registerForLockStateChanges:(id)changes
{
  changesCopy = changes;
  os_unfair_lock_lock(&self->_lock);
  v5 = [changesCopy copy];

  callbacks = self->_callbacks;
  if (!callbacks)
  {
    v7 = objc_opt_new();
    v8 = self->_callbacks;
    self->_callbacks = v7;

    callbacks = self->_callbacks;
  }

  v9 = MEMORY[0x1AC5AD7D0](v5);
  [(NSMutableOrderedSet *)callbacks addObject:v9];

  if (!self->_aks)
  {
    self->_aks = [MEMORY[0x1E69C5D08] registerForAKSEventsNotifications:&__block_literal_global_9];
  }

  v10 = MEMORY[0x1AC5AD7D0](v5);
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

void __49__BMDataProtection__registerForLockStateChanges___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = +[BMDataProtection sharedInstance];
  [v3 handleState:a2];
}

- (void)handleState:(int)state
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableOrderedSet *)self->_callbacks copy];
  os_unfair_lock_unlock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)unregister:(id)unregister
{
  unregisterCopy = unregister;
  sharedInstance = [self sharedInstance];
  [sharedInstance _unregister:unregisterCopy];
}

- (void)_unregister:(id)_unregister
{
  _unregisterCopy = _unregister;
  os_unfair_lock_lock(&self->_lock);
  callbacks = self->_callbacks;
  v5 = MEMORY[0x1AC5AD7D0](_unregisterCopy);
  [(NSMutableOrderedSet *)callbacks removeObject:v5];

  if (![(NSMutableOrderedSet *)self->_callbacks count]&& self->_aks)
  {
    [MEMORY[0x1E69C5D08] unregisterForAKSEventsNotifications:?];
    self->_aks = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

+ (int)biomeProtectionClassToOSProtectionClass:(unint64_t)class
{
  if (class > 6)
  {
    return 3;
  }

  else
  {
    return dword_1AC1975B8[class];
  }
}

+ (BOOL)canOpenFilesForProtectionClass:(unint64_t)class createNewFile:(BOOL)file
{
  isClassCLocked = [MEMORY[0x1E69C5D08] isClassCLocked];
  result = [MEMORY[0x1E69C5D08] isDeviceUnlocked];
  if (class > 3)
  {
    result = 1;
    if (class == 4)
    {
      return result;
    }

    if (class != 5)
    {
      if (class == 6)
      {
        return result;
      }

      goto LABEL_9;
    }

    if (isClassCLocked)
    {
      return 0;
    }

    return [self isClassCXUnlocked];
  }

  else
  {
    if (class - 1 < 2)
    {
      return result || file;
    }

    if (class)
    {
      if (class == 3)
      {
        return isClassCLocked ^ 1;
      }

LABEL_9:
      v10 = __biome_log_for_category(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(BMDataProtection *)a2 canOpenFilesForProtectionClass:class createNewFile:v10];
      }

      return 0;
    }
  }

  return result;
}

+ (void)isClassCXUnlocked
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_ERROR, "aks_get_extended_device_state failed with error: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)canOpenFilesForProtectionClass:(NSObject *)a3 createNewFile:.cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v7 = 134218242;
  v8 = a2;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1AC15D000, a3, OS_LOG_TYPE_ERROR, "Invalid protection class (%ld) sent to %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end