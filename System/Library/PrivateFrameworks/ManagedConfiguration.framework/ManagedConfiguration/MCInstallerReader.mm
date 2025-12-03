@interface MCInstallerReader
+ (id)sharedReader;
+ (void)_setSystemProfileStorageDirectory:(id)directory userProfileStorageDirectory:(id)storageDirectory;
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

+ (void)_setSystemProfileStorageDirectory:(id)directory userProfileStorageDirectory:(id)storageDirectory
{
  directoryCopy = directory;
  storageDirectoryCopy = storageDirectory;
  v7 = __systemProfileStorageDirectory;
  __systemProfileStorageDirectory = directoryCopy;
  v9 = directoryCopy;

  v8 = __userProfileStorageDirectory;
  __userProfileStorageDirectory = storageDirectoryCopy;
}

@end