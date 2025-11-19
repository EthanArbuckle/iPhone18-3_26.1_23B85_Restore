@interface NSFileManager
- (BOOL)fileAtPathIsSymlink:(id)a3;
@end

@implementation NSFileManager

- (BOOL)fileAtPathIsSymlink:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v11[0] = 0;
  v5 = [v4 attributesOfItemAtPath:v3 error:v11];
  v6 = v11[0];

  if (!v5)
  {
    [NSFileManager(DeviceRecoveryExtras) fileAtPathIsSymlink:];
    goto LABEL_11;
  }

  if (!v6)
  {
    v7 = [v5 objectForKeyedSubscript:NSFileType];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 isEqualToString:NSFileTypeSymbolicLink];
      goto LABEL_5;
    }

    [NSFileManager(DeviceRecoveryExtras) fileAtPathIsSymlink:];
LABEL_11:
    v8 = v11[1];
    v9 = v12;
    goto LABEL_5;
  }

  v8 = DRGetLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [NSFileManager(DeviceRecoveryExtras) fileAtPathIsSymlink:];
  }

  v9 = 0;
LABEL_5:

  return v9;
}

@end