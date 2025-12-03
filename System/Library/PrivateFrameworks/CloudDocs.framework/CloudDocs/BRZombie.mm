@interface BRZombie
+ (void)turnObjectIntoZombie:(id)zombie;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
@end

@implementation BRZombie

- (void)dealloc
{
  AssociatedObject = objc_getAssociatedObject(self, "BRZombieFormerClass");
  objc_setAssociatedObject(self, "BRZombieDescription", 0, 0x301);
  objc_setAssociatedObject(self, "BRZombieFormerClass", 0, 0);

  object_setClass(self, AssociatedObject);
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v19 = *MEMORY[0x1E69E9840];
  AssociatedObject = objc_getAssociatedObject(self, "BRZombieDescription");
  v6 = objc_getAssociatedObject(self, "BRZombieFormerClass");
  v7 = brc_bread_crumbs("[BRZombie methodSignatureForSelector:]", 46);
  v8 = brc_default_log(0, 0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v11 = 136315906;
    ClassName = object_getClassName(v6);
    v13 = 2080;
    uTF8String = [NSStringFromSelector(selector) UTF8String];
    v15 = 2080;
    uTF8String2 = [AssociatedObject UTF8String];
    v17 = 2112;
    v18 = v7;
    _os_log_fault_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: *** [%s %s]: message sent to deallocated instance %s%@", &v11, 0x2Au);
  }

  result = [v6 instanceMethodSignatureForSelector:selector];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)turnObjectIntoZombie:(id)zombie
{
  if (zombie)
  {
    v4 = objc_opt_class();
    zombie = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p (old description: %@)>", v4, zombie, zombie];
    objc_setAssociatedObject(zombie, "BRZombieDescription", zombie, 0x301);
    objc_setAssociatedObject(zombie, "BRZombieFormerClass", v4, 0);
    v6 = objc_opt_class();
    object_setClass(zombie, v6);
    v7 = brc_bread_crumbs("+[BRZombie turnObjectIntoZombie:]", 72);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(BRZombie *)zombie turnObjectIntoZombie:v7, v8];
    }
  }
}

+ (void)turnObjectIntoZombie:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Turned object into a zombie - %@\n%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end