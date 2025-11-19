@interface PSDFileManager
+ (id)defaultManager;
- (PSDFileManager)init;
@end

@implementation PSDFileManager

+ (id)defaultManager
{
  if (qword_1000380C8 != -1)
  {
    sub_10001BA9C();
  }

  v3 = qword_1000380C0;

  return v3;
}

- (PSDFileManager)init
{
  v12.receiver = self;
  v12.super_class = PSDFileManager;
  v2 = [(PSDFileManager *)&v12 init];
  if (v2)
  {
    v3 = +[PSYRegistrySingleton registry];
    v4 = [v3 pairingStorePath];

    if (!v4)
    {
      v9 = psd_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (v10)
      {
        v11 = psd_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10001BAB0(v11);
        }
      }

      exit(0);
    }

    v5 = [v4 stringByAppendingPathComponent:@"/PairedSync/"];
    v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
    storageURL = v2->_storageURL;
    v2->_storageURL = v6;
  }

  return v2;
}

@end