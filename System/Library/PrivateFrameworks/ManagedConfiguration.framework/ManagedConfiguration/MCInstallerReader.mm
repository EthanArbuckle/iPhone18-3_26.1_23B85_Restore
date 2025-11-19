@interface MCInstallerReader
+ (id)sharedReader;
+ (void)_setSystemProfileStorageDirectory:(id)a3 userProfileStorageDirectory:(id)a4;
@end

@implementation MCInstallerReader

+ (id)sharedReader
{
  if (sharedReader_once != -1)
  {
    +[MCInstallerReader sharedReader];
  }

  v3 = sharedReader_obj_0;

  return v3;
}

uint64_t __33__MCInstallerReader_sharedReader__block_invoke()
{
  sharedReader_obj_0 = objc_alloc_init(MCInstallerReader);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_setSystemProfileStorageDirectory:(id)a3 userProfileStorageDirectory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = __systemProfileStorageDirectory;
  __systemProfileStorageDirectory = v5;
  v9 = v5;

  v8 = __userProfileStorageDirectory;
  __userProfileStorageDirectory = v6;
}

@end