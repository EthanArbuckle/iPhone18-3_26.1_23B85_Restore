@interface NSFileManager(GKCachingAdditions)
- (double)_gkExpirationIntervalOfFileAtPath:()GKCachingAdditions;
- (ssize_t)_gkReadXattrBytes:()GKCachingAdditions count:withName:path:;
- (uint64_t)_gkRemoveXattrNamed:()GKCachingAdditions path:;
- (uint64_t)_gkWriteXattrBytes:()GKCachingAdditions count:withName:path:;
- (void)_gkSetExpirationInterval:()GKCachingAdditions ofFileAtPath:;
@end

@implementation NSFileManager(GKCachingAdditions)

- (ssize_t)_gkReadXattrBytes:()GKCachingAdditions count:withName:path:
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  fileSystemRepresentation = [v10 fileSystemRepresentation];
  uTF8String = [v9 UTF8String];
  v13 = getxattr(fileSystemRepresentation, uTF8String, 0, 0, 0, 0);
  if (v13 >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = v13;
    v15 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
      v15 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138413058;
      v21 = v9;
      v22 = 2048;
      v23 = a4;
      v24 = 2048;
      v25 = v14;
      v26 = 2112;
      v27 = v10;
      _os_log_debug_impl(&dword_227904000, v15, OS_LOG_TYPE_DEBUG, "-- Xattr: %@ -- count requested %ld is greater than actual byte count %ld so we're truncating. path = %@", &v20, 0x2Au);
    }
  }

  if (v14)
  {
    v17 = getxattr(fileSystemRepresentation, uTF8String, a3, v14, 0, 0);
  }

  else
  {
    v17 = -1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (uint64_t)_gkWriteXattrBytes:()GKCachingAdditions count:withName:path:
{
  v10 = a6;
  v11 = a5;
  fileSystemRepresentation = [a6 fileSystemRepresentation];
  uTF8String = [v11 UTF8String];

  return setxattr(fileSystemRepresentation, uTF8String, a3, a4, 0, 0);
}

- (uint64_t)_gkRemoveXattrNamed:()GKCachingAdditions path:
{
  v6 = a4;
  v7 = a3;
  fileSystemRepresentation = [a4 fileSystemRepresentation];
  uTF8String = [v7 UTF8String];

  return removexattr(fileSystemRepresentation, uTF8String, 0);
}

- (double)_gkExpirationIntervalOfFileAtPath:()GKCachingAdditions
{
  v4 = -1.0;
  if ([self _gkReadXattrBytes:&v4 count:8 withName:@"gamekit-cache-expiration" path:a3] < 1)
  {
    return 0.0;
  }

  else
  {
    return v4 - CFAbsoluteTimeGetCurrent();
  }
}

- (void)_gkSetExpirationInterval:()GKCachingAdditions ofFileAtPath:
{
  v5 = a4;
  v7 = CFAbsoluteTimeGetCurrent() + self;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager _gkWriteXattrBytes:&v7 count:8 withName:@"gamekit-cache-expiration" path:v5];
}

@end