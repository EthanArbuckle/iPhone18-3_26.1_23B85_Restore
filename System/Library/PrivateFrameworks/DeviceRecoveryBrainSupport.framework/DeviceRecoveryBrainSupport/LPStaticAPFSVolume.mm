@interface LPStaticAPFSVolume
+ (const)roleMetadataForRole:(int)role;
+ (id)defaultVolumeNameGivenRole:(int)role;
+ (id)supportedContentTypes;
+ (void)_loadMountPointTableForMode:(int)mode;
+ (void)enumerateRoleMetadataUsingBlock:(id)block;
+ (void)initialize;
- (BOOL)_pathIsTemporaryMount:(id)mount;
- (BOOL)createSnapshot:(id)snapshot error:(id *)error;
- (BOOL)deleteSnapshots:(id)snapshots waitForDeletionFor:(double)for error:(id *)error;
- (BOOL)deleteVolumeWithError:(id *)error;
- (BOOL)eraseVolumeWithError:(id *)error;
- (BOOL)isEncrypted;
- (BOOL)isFilevaultEncrypted;
- (BOOL)isMounted;
- (BOOL)mountAtPath:(id)path options:(id)options error:(id *)error;
- (BOOL)mountWithError:(id *)error;
- (BOOL)renameSnapshot:(id)snapshot to:(id)to error:(id *)error;
- (BOOL)revertToSnapshot:(id)snapshot options:(id)options error:(id *)error;
- (BOOL)rootToSnapshot:(id)snapshot error:(id *)error;
- (BOOL)setRole:(int)role withError:(id *)error;
- (BOOL)unmountAllWithError:(id *)error;
- (BOOL)unmountWithOptions:(id)options error:(id *)error;
- (id)_createTemporaryMountPointWithError:(id *)error;
- (id)container;
- (id)mountAtTemporaryPathWithOptions:(id)options error:(id *)error;
- (id)pairedVolume;
- (id)snapshotInfoWithError:(id *)error;
- (id)snapshotMountPoints;
- (id)snapshotsWithError:(id *)error;
- (id)volumeGroupUUID;
- (int)role;
@end

@implementation LPStaticAPFSVolume

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if (_is_running_in_ramdisk_onceToken != -1)
    {
      +[LPStaticAPFSVolume initialize];
    }

    v2 = (_is_running_in_ramdisk_is_ramdisk & 1) == 0;

    [LPStaticAPFSVolume _loadMountPointTableForMode:v2];
  }
}

+ (id)supportedContentTypes
{
  if (objc_opt_class() == self)
  {
    v6 = LPAPFSVolumeMediaTypeUUID[0];
    v3 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___LPStaticAPFSVolume;
    v3 = objc_msgSendSuper2(&v5, "supportedContentTypes");
  }

  return v3;
}

+ (void)_loadMountPointTableForMode:(int)mode
{
  v3 = (&kLPDefaultMountPointTable + 16 * mode);
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = [NSMutableDictionary dictionaryWithCapacity:v4];
  if (v4 >= 1)
  {
    v7 = (v5 + 8);
    do
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      v7 += 2;
      v10 = [NSString stringWithUTF8String:v9];
      v11 = [NSNumber numberWithInt:v8];
      [(NSMutableDictionary *)v6 setObject:v10 forKey:v11];

      --v4;
    }

    while (v4);
  }

  v12 = [NSDictionary dictionaryWithDictionary:v6];
  v13 = sMountPointLookupTable;
  sMountPointLookupTable = v12;
}

+ (void)enumerateRoleMetadataUsingBlock:(id)block
{
  v4 = &enumerateRoleMetadataUsingBlock__sRoleMetadata;
  v5 = 17;
  do
  {
    (*(block + 2))(block, v4);
    v4 += 24;
    --v5;
  }

  while (v5);
}

+ (const)roleMetadataForRole:(int)role
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3254779904;
  v5[2] = __42__LPStaticAPFSVolume_roleMetadataForRole___block_invoke;
  v5[3] = &__block_descriptor_44_e8_32r_e17_v16__0r____iS___8l;
  roleCopy = role;
  v5[4] = &v7;
  [self enumerateRoleMetadataUsingBlock:v5];
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __42__LPStaticAPFSVolume_roleMetadataForRole___block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = a2;
  }

  return result;
}

+ (id)defaultVolumeNameGivenRole:(int)role
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3254779904;
  v5[2] = __49__LPStaticAPFSVolume_defaultVolumeNameGivenRole___block_invoke;
  v5[3] = &__block_descriptor_44_e8_32r_e17_v16__0r____iS___8l;
  roleCopy = role;
  v5[4] = &v7;
  [self enumerateRoleMetadataUsingBlock:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __49__LPStaticAPFSVolume_defaultVolumeNameGivenRole___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *a2)
  {
    v2 = *(a2 + 16);
    if (!v2)
    {
      v2 = *(a2 + 8);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v2);
  }
}

- (BOOL)setRole:(int)role withError:(id *)error
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3254779904;
  v9[2] = __40__LPStaticAPFSVolume_setRole_withError___block_invoke;
  v9[3] = &__block_descriptor_44_e8_32r_e17_v16__0r____iS___8l;
  roleCopy = role;
  v9[4] = v11;
  [objc_opt_class() enumerateRoleMetadataUsingBlock:v9];
  bSDName = [(LPStaticMedia *)self BSDName];
  [bSDName fileSystemRepresentation];
  v7 = APFSVolumeRole();

  if (error && v7)
  {
    *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
  }

  _Block_object_dispose(v11, 8);
  return v7 == 0;
}

uint64_t __40__LPStaticAPFSVolume_setRole_withError___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 40) == *a2)
  {
    *(*(*(result + 32) + 8) + 24) = *(a2 + 4);
  }

  return result;
}

- (int)role
{
  v22 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  bSDName = [(LPStaticMedia *)self BSDName];
  v4 = bSDName;
  [bSDName fileSystemRepresentation];
  v5 = APFSVolumeRole();

  if (v5)
  {
    _os_log_pack_size();
    v6 = _os_log_pack_fill();
    *v6 = 136315394;
    *(v6 + 4) = "[LPStaticAPFSVolume role]";
    *(v6 + 12) = 1024;
    *(v6 + 14) = v5;
    _LPLogPack(1);
  }

  else
  {
    v7 = objc_opt_class();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3254779904;
    v16[2] = __26__LPStaticAPFSVolume_role__block_invoke;
    v16[3] = &__block_descriptor_42_e8_32r_e17_v16__0r____iS___8l;
    v17 = v22;
    v16[4] = &v18;
    [v7 enumerateRoleMetadataUsingBlock:v16];
  }

  v8 = *(v19 + 6);
  if (!v8)
  {
    name = [(LPStaticMedia *)self name];
    v10 = objc_opt_class();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3254779904;
    v13[2] = __26__LPStaticAPFSVolume_role__block_invoke_122;
    v13[3] = &__block_descriptor_48_e8_32s40r_e17_v16__0r____iS___8l;
    v11 = name;
    v14 = v11;
    v15 = &v18;
    [v10 enumerateRoleMetadataUsingBlock:v13];

    v8 = *(v19 + 6);
  }

  _Block_object_dispose(&v18, 8);
  return v8;
}

uint64_t __26__LPStaticAPFSVolume_role__block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 40) == *(a2 + 4))
  {
    *(*(*(result + 32) + 8) + 24) = *a2;
  }

  return result;
}

void __26__LPStaticAPFSVolume_role__block_invoke_122(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    v4 = *(a2 + 8);
  }

  v5 = v4;
  if (![*(a1 + 32) caseInsensitiveCompare:v5])
  {
    *(*(*(a1 + 40) + 8) + 24) = *a2;
  }
}

- (id)volumeGroupUUID
{
  v2 = [(LPStaticMedia *)self getStringPropertyWithName:@"VolGroupUUID"];
  uTF8String = [v2 UTF8String];
  memset(uu, 0, sizeof(uu));
  if (!uTF8String || uuid_parse(uTF8String, uu) || uuid_is_null(uu))
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

- (id)container
{
  iterator = 0;
  if (IORegistryEntryCreateIterator([(LPStaticMedia *)self ioMedia], "IOService", 3u, &iterator))
  {
    v2 = 0;
  }

  else
  {
    v3 = IOIteratorNext(iterator);
    if (v3)
    {
      v4 = v3;
      v2 = 0;
      do
      {
        if (IOObjectConformsTo(v4, "AppleAPFSMedia"))
        {
          v5 = [(LPStaticMedia *)[LPStaticAPFSContainer alloc] initWithIOMediaObject:v4];
          v6 = v5;
          v7 = v5 != 0;
          if (v5)
          {
            v8 = v5;

            v2 = v8;
          }
        }

        else
        {
          v7 = 0;
        }

        IOObjectRelease(v4);
        v4 = IOIteratorNext(iterator);
        if (v4)
        {
          v9 = !v7;
        }

        else
        {
          v9 = 0;
        }
      }

      while (v9);
    }

    else
    {
      v2 = 0;
    }

    IOObjectRelease(iterator);
  }

  return v2;
}

- (BOOL)isEncrypted
{
  devNodePath = [(LPStaticMedia *)self devNodePath];
  [devNodePath fileSystemRepresentation];
  APFSVolumeGetVEKState();

  return 0;
}

- (BOOL)isFilevaultEncrypted
{
  devNodePath = [(LPStaticMedia *)self devNodePath];
  [devNodePath fileSystemRepresentation];
  APFSVolumeGetVEKState();

  return 0;
}

- (id)pairedVolume
{
  role = [(LPStaticAPFSVolume *)self role];
  if (role == 1)
  {
    v4 = 3;
    goto LABEL_5;
  }

  if (role == 3)
  {
    v4 = 1;
LABEL_5:
    v5 = [(LPStaticAPFSVolume *)self pairedVolumeWithRole:v4];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)snapshotMountPoints
{
  devNodePath = [(LPStaticMedia *)self devNodePath];
  if (devNodePath)
  {
    v3 = [NSString stringWithFormat:@"@%@", devNodePath];
    v21 = 0;
    v4 = getmntinfo_r_np(&v21, 0);
    v5 = [NSMutableArray arrayWithCapacity:13];
    v6 = objc_autoreleasePoolPush();
    if (v4 >= 1)
    {
      v19 = v6;
      v20 = devNodePath;
      v7 = 0;
      v8 = 0;
      v9 = v4;
      v10 = 1112;
      do
      {
        v11 = [NSString stringWithUTF8String:v21 + v10, v19, v20];
        if ([(NSString *)v11 hasSuffix:v3])
        {
          v12 = [(NSString *)v11 substringToIndex:[(NSString *)v11 rangeOfString:@"@" options:4]];

          1024 = [NSString stringWithUTF8String:v21 + v10 - 1024];
          v22[0] = LPAPFSVolumeSnapshotMountPointKeyName[0];
          v22[1] = LPAPFSVolumeSnapshotMountPointKeyMountPoint[0];
          v23[0] = v12;
          v23[1] = 1024;
          v14 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
          [(NSMutableArray *)v5 addObject:v14];

          v8 = 1024;
          v7 = v12;
        }

        v10 += 2168;
        --v9;
      }

      while (v9);

      v6 = v19;
      devNodePath = v20;
    }

    objc_autoreleasePoolPop(v6);
    if (v21)
    {
      free(v21);
    }

    if ([(NSMutableArray *)v5 count])
    {
      v15 = v5;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    _os_log_pack_size();
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[LPStaticAPFSVolume snapshotMountPoints]";
    _LPLogPack(1);
    v16 = 0;
  }

  return v16;
}

- (BOOL)isMounted
{
  mountPoint = [(LPStaticMedia *)self mountPoint];
  if (mountPoint)
  {
    v4 = 1;
  }

  else
  {
    snapshotMountPoints = [(LPStaticAPFSVolume *)self snapshotMountPoints];
    v4 = snapshotMountPoints != 0;
  }

  return v4;
}

- (BOOL)eraseVolumeWithError:(id *)error
{
  mountPoint = [(LPStaticMedia *)self mountPoint];
  v5 = mountPoint;
  if (mountPoint)
  {
    v6 = _lp2_delete_directory_contents([mountPoint fileSystemRepresentation]);
    if (error && v6)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:0];
    }

    v7 = *__error() == 0;
  }

  else
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    _os_log_pack_size();
    v8 = _os_log_pack_fill();
    *v8 = 136315138;
    *(v8 + 4) = "[LPStaticAPFSVolume eraseVolumeWithError:]";
    _LPLogPack(1);
    v7 = 0;
  }

  return v7;
}

- (BOOL)mountWithError:(id *)error
{
  mountPoint = [(LPStaticMedia *)self mountPoint];

  if (mountPoint)
  {
    return 1;
  }

  v7 = [LPStaticAPFSVolume defaultMountPointGivenRole:[(LPStaticAPFSVolume *)self role]];
  if (v7 && (v8 = [LPStaticMedia mediaForPath:v7], v8, !v8))
  {
    v6 = [(LPStaticAPFSVolume *)self mountAtPath:v7 error:error];
  }

  else
  {
    v9 = [(LPStaticAPFSVolume *)self mountAtTemporaryPathWithError:error];
    v6 = v9 != 0;
  }

  return v6;
}

- (BOOL)_pathIsTemporaryMount:(id)mount
{
  mountCopy = mount;
  if ([mountCopy containsString:@"tmp-mount-"])
  {
    if (_is_running_in_ramdisk_onceToken != -1)
    {
      +[LPStaticAPFSVolume initialize];
    }

    if (_is_running_in_ramdisk_is_ramdisk)
    {
      v4 = @"/mnt5";
    }

    else
    {
      v4 = @"/tmp/";
    }

    stringByResolvingSymlinksInPath = [(__CFString *)v4 stringByResolvingSymlinksInPath];
    stringByResolvingSymlinksInPath2 = [mountCopy stringByResolvingSymlinksInPath];
    stringByDeletingLastPathComponent = [stringByResolvingSymlinksInPath2 stringByDeletingLastPathComponent];

    v8 = [stringByDeletingLastPathComponent isEqualToString:stringByResolvingSymlinksInPath];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_createTemporaryMountPointWithError:(id *)error
{
  if (_is_running_in_ramdisk_onceToken != -1)
  {
    +[LPStaticAPFSVolume initialize];
  }

  bzero(v9, 0x400uLL);
  __strlcpy_chk();
  if (mkdtemp(v9))
  {
    v4 = [NSString stringWithUTF8String:v9];
  }

  else
  {
    _os_log_pack_size();
    off_30610();
    v5 = _os_log_pack_fill();
    *v5 = 136315138;
    *(v5 + 4) = v9;
    _LPLogPack(1);
    if (*error)
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      v7 = v6;
      v4 = 0;
      *error = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)mountAtTemporaryPathWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [(LPStaticAPFSVolume *)self _createTemporaryMountPointWithError:error];
  if (v7 && [(LPStaticAPFSVolume *)self mountAtPath:v7 options:optionsCopy error:error])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)mountAtPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  devNodePath = [(LPStaticMedia *)self devNodePath];
  if (devNodePath)
  {
    mountPoint = [(LPStaticMedia *)self mountPoint];
    v12 = [mountPoint isEqualToString:pathCopy];
    if (optionsCopy || !v12)
    {
      if (!mountPoint)
      {
        goto LABEL_10;
      }

      _os_log_pack_size();
      v18 = _os_log_pack_fill();
      *v18 = 138412546;
      *(v18 + 4) = mountPoint;
      *(v18 + 12) = 2112;
      *(v18 + 14) = pathCopy;
      _LPLogPack(2);
      v14 = 0;
      if ([(LPStaticAPFSVolume *)self unmountWithError:error])
      {
LABEL_10:
        v19 = mkpath_np([pathCopy fileSystemRepresentation], 0x1FFu);
        if (v19 && v19 != 17)
        {
          v23 = optionsCopy;
          if (error)
          {
            v24 = v19;
            v67 = NSFilePathErrorKey;
            v68 = pathCopy;
            v25 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
            *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v24 userInfo:v25];
          }

          _os_log_pack_size();
          v26 = _os_log_pack_fill();
          v27 = [(LPStaticMedia *)self description];
          uTF8String = [v27 UTF8String];
          fileSystemRepresentation = [pathCopy fileSystemRepresentation];
          *v26 = 136380931;
          *(v26 + 4) = uTF8String;
          *(v26 + 12) = 2081;
          *(v26 + 14) = fileSystemRepresentation;

          _LPLogPack(1);
          v14 = 0;
          optionsCopy = v23;
        }

        else
        {
          v63 = xmmword_2C9E8;
          v64 = unk_2C9F8;
          v65 = xmmword_2CA08;
          v66 = 0;
          v61 = off_2C9C8;
          v62 = unk_2C9D8;
          v20 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionReadOnly[0]];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = [NSNumber numberWithBool:0];
          }

          v30 = v22;

          if ([(NSNumber *)v30 BOOLValue])
          {
            *(&v61 + 1) = "-o";
            *&v62 = "rdonly";
            v31 = 3;
          }

          else
          {
            v31 = 1;
          }

          v32 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionNoBrowse[0]];
          v33 = v32;
          if (v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = [NSNumber numberWithBool:1];
          }

          v35 = v34;

          if ([(NSNumber *)v35 BOOLValue])
          {
            *(&v61 + v31) = "-o";
            v36 = v31 + 1;
            v31 += 2;
            *(&v61 + v36) = "nobrowse";
          }

          v37 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionNoFirmlinks[0]];
          v38 = v37;
          if (v37)
          {
            v39 = v37;
          }

          else
          {
            v39 = [NSNumber numberWithBool:0];
          }

          v40 = v39;

          if ([(NSNumber *)v40 BOOLValue])
          {
            *(&v61 + v31++) = "-n";
          }

          v58 = v30;
          errorCopy = error;
          v41 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionSnapshotName[0]];
          v54 = [v41 length];
          v57 = v35;
          v56 = v40;
          if (v54)
          {
            v42 = v31 + 1;
            *(&v61 + v31) = "-s";
            v31 += 2;
            *(&v61 + v42) = [v41 fileSystemRepresentation];
          }

          *(&v61 + v31) = [devNodePath fileSystemRepresentation];
          *(&v61 + v31 + 1) = [pathCopy fileSystemRepresentation];
          v43 = _execForLibpartition(&v61);
          if (v43 == 75)
          {
            _os_log_pack_size();
            v44 = 0;
            do
            {
              v45 = _os_log_pack_fill();
              *v45 = 138412802;
              *(v45 + 4) = devNodePath;
              *(v45 + 12) = 1024;
              *(v45 + 14) = 75;
              *(v45 + 18) = 1024;
              *(v45 + 20) = v44;
              _LPLogPack(1);
              sleep(3u);
              v43 = _execForLibpartition(&v61);
              if (v43 != 75)
              {
                break;
              }
            }

            while (v44++ < 2);
          }

          v14 = v43 == 0;
          if (v43)
          {
            if (errorCopy)
            {
              v47 = [NSString stringWithFormat:@"mount_apfs returned : %d", v43];
              v59[0] = NSLocalizedFailureReasonErrorKey;
              v59[1] = NSLocalizedDescriptionKey;
              v60[0] = @"Mount failed";
              v60[1] = v47;
              v48 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:2];
              *errorCopy = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v48];
            }

            _os_log_pack_size();
            v49 = _os_log_pack_fill();
            *v49 = 138412546;
            *(v49 + 4) = devNodePath;
            *(v49 + 12) = 1024;
            *(v49 + 14) = v43;
            _LPLogPack(1);
            v50 = v58;
            v51 = v41;
          }

          else
          {
            v50 = v58;
            v51 = v41;
            _os_log_pack_size();
            v52 = _os_log_pack_fill();
            if (v54)
            {
              *v52 = 138412803;
              *(v52 + 4) = devNodePath;
              *(v52 + 12) = 2113;
              *(v52 + 14) = v41;
              *(v52 + 22) = 2113;
              *(v52 + 24) = pathCopy;
            }

            else
            {
              *v52 = 138412547;
              *(v52 + 4) = devNodePath;
              *(v52 + 12) = 2113;
              *(v52 + 14) = pathCopy;
            }

            _LPLogPack(2);
          }
        }
      }
    }

    else
    {
      _os_log_pack_size();
      v13 = _os_log_pack_fill();
      *v13 = 138412290;
      *(v13 + 4) = pathCopy;
      _LPLogPack(2);
      v14 = 1;
    }
  }

  else
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    _os_log_pack_size();
    v15 = _os_log_pack_fill();
    v16 = [(LPStaticMedia *)self description];
    uTF8String2 = [v16 UTF8String];
    *v15 = 136315138;
    *(v15 + 4) = uTF8String2;

    _LPLogPack(1);
    v14 = 0;
  }

  return v14;
}

- (BOOL)unmountWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v61 = [NSMutableArray arrayWithCapacity:1];
  v6 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionAll[0]];
  bOOLValue = [v6 BOOLValue];

  v8 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionSnapshotName[0]];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = bOOLValue == 0;
  }

  selfCopy = self;
  if (v9)
  {
    mountPoint = [(LPStaticMedia *)self mountPoint];

    if (!mountPoint)
    {
      goto LABEL_28;
    }

    mountPoint2 = [(LPStaticMedia *)self mountPoint];
    [(NSMutableArray *)v61 addObject:mountPoint2];
  }

  else
  {
    mountPoint2 = [(LPStaticAPFSVolume *)self snapshotMountPoints];
    mountPoint3 = [(LPStaticMedia *)self mountPoint];
    v12 = mountPoint3;
    if (mountPoint2)
    {
      v66 = mountPoint3;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v69 = mountPoint2;
      v72 = mountPoint2;
      v13 = [v72 countByEnumeratingWithState:&v79 objects:v84 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v80;
        while (2)
        {
          v16 = 0;
          v70 = v14;
          do
          {
            if (*v80 != v15)
            {
              objc_enumerationMutation(v72);
            }

            v17 = *(*(&v79 + 1) + 8 * v16);
            if (bOOLValue)
            {
              v18 = [v17 objectForKey:LPAPFSVolumeSnapshotMountPointKeyMountPoint[0]];
              [(NSMutableArray *)v61 addObject:v18];
            }

            else
            {
              v19 = [optionsCopy objectForKey:LPAPFSVolumeSnapshotMountPointKeyName[0]];
              v20 = v15;
              v21 = bOOLValue;
              v22 = [v17 objectForKey:v19];
              v23 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionSnapshotName[0]];
              v24 = [v22 isEqualToString:v23];

              v25 = v22;
              bOOLValue = v21;
              v15 = v20;
              v14 = v70;

              if (v24)
              {
                v26 = [v17 objectForKey:LPAPFSVolumeSnapshotMountPointKeyMountPoint[0]];
                [(NSMutableArray *)v61 addObject:v26];

                if ((bOOLValue & 1) == 0)
                {

                  self = selfCopy;
                  mountPoint2 = v69;
                  v12 = v66;
                  goto LABEL_26;
                }
              }
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v72 countByEnumeratingWithState:&v79 objects:v84 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      self = selfCopy;
      mountPoint2 = v69;
      v12 = v66;
    }

    if (v12)
    {
      v27 = bOOLValue;
    }

    else
    {
      v27 = 0;
    }

    if (v27 == 1)
    {
      [(NSMutableArray *)v61 addObject:v12];
    }

LABEL_26:
  }

LABEL_28:
  v64 = optionsCopy;
  if ([(NSMutableArray *)v61 count])
  {
    [(NSMutableArray *)v61 sortUsingComparator:&__block_literal_global_2];
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v62 = v61;
    v65 = [(NSMutableArray *)v62 countByEnumeratingWithState:&v75 objects:v83 count:16];
    if (!v65)
    {
      v56 = 0;
      goto LABEL_72;
    }

    v63 = *v76;
    while (1)
    {
      v29 = 0;
      do
      {
        if (*v76 != v63)
        {
          objc_enumerationMutation(v62);
        }

        v67 = v29;
        v30 = *(*(&v75 + 1) + 8 * v29);
        if (optionsCopy)
        {
          v31 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionForce[0]];
          v32 = v31 != 0;

          v73 = v32 << 19;
          v33 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionDoNotLock[0]];

          if (v33)
          {
            v74 = 1;
            if (fsctl([v30 fileSystemRepresentation], 0x80014A22uLL, &v74, 0))
            {
              if (*__error() == 17)
              {
                _os_log_pack_size();
                v34 = _os_log_pack_fill();
                devNodePath = [(LPStaticMedia *)self devNodePath];
                *v34 = 138412290;
                *(v34 + 4) = devNodePath;
                v36 = 2;
              }

              else
              {
                _os_log_pack_size();
                v37 = _os_log_pack_fill();
                devNodePath = [(LPStaticMedia *)self devNodePath];
                v38 = *__error();
                *v37 = 138412546;
                *(v37 + 4) = devNodePath;
                *(v37 + 12) = 1024;
                *(v37 + 14) = v38;
                v36 = 1;
              }

              _LPLogPack(v36);
            }
          }
        }

        else
        {
          v73 = 0;
        }

        v39 = 0;
        while (unmount([v30 fileSystemRepresentation], v73))
        {
          v40 = *__error();
          v41 = selfCopy;
          if (v40 == 22)
          {
            _os_log_pack_size();
            *_os_log_pack_fill() = 0;
            _LPLogPack(1);
            v42 = 0;
          }

          else if (v39 < 3)
          {
            if (v40 != 35 && v40 != 16)
            {
              goto LABEL_55;
            }

            ++v39;
            sleep(3u);
            v42 = 1;
          }

          else
          {
            if (v39 == 3 && v40 == 16 && [(LPStaticAPFSVolume *)selfCopy role]!= 12)
            {
              v73 |= 0x80000u;
              sleep(3u);
              _os_log_pack_size();
              v47 = _os_log_pack_fill();
              devNodePath2 = [(LPStaticMedia *)selfCopy devNodePath];
              *v47 = 138412546;
              *(v47 + 4) = devNodePath2;
              *(v47 + 12) = 1024;
              *(v47 + 14) = 16;
              v42 = 1;
              _LPLogPack(1);
              v49 = devNodePath2;
              v41 = selfCopy;

              v39 = 4;
              goto LABEL_56;
            }

            if (!error)
            {
LABEL_55:
              v42 = 0;
              goto LABEL_56;
            }

            v42 = 0;
            *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v40 userInfo:0];
          }

LABEL_56:
          _os_log_pack_size();
          v43 = _os_log_pack_fill();
          devNodePath3 = [(LPStaticMedia *)v41 devNodePath];
          v45 = devNodePath3;
          *v43 = 138412802;
          v46 = "no";
          if (v42)
          {
            v46 = "yes";
          }

          *(v43 + 4) = devNodePath3;
          *(v43 + 12) = 2080;
          *(v43 + 14) = v46;
          *(v43 + 22) = 1024;
          *(v43 + 24) = v40;
          _LPLogPack(1);

          if ((v42 & 1) == 0)
          {
            self = selfCopy;
            v55 = v67;
            v56 = v40 == 22;
            goto LABEL_67;
          }
        }

        _os_log_pack_size();
        v50 = _os_log_pack_fill();
        self = selfCopy;
        devNodePath4 = [(LPStaticMedia *)selfCopy devNodePath];
        *v50 = 138412547;
        *(v50 + 4) = devNodePath4;
        *(v50 + 12) = 2113;
        *(v50 + 14) = v30;
        _LPLogPack(2);

        if ([(LPStaticAPFSVolume *)selfCopy _pathIsTemporaryMount:v30])
        {
          if (rmdir([v30 fileSystemRepresentation]))
          {
            _os_log_pack_size();
            v52 = _os_log_pack_fill();
            v53 = *__error();
            *v52 = 67109120;
            v52[1] = v53;
            v54 = 1;
          }

          else
          {
            _os_log_pack_size();
            *_os_log_pack_fill() = 0;
            v54 = 2;
          }

          _LPLogPack(v54);
        }

        v56 = 1;
        v55 = v67;
LABEL_67:
        v29 = v55 + 1;
        optionsCopy = v64;
      }

      while (v29 != v65);
      v65 = [(NSMutableArray *)v62 countByEnumeratingWithState:&v75 objects:v83 count:16];
      if (!v65)
      {
LABEL_72:

        goto LABEL_73;
      }
    }
  }

  _os_log_pack_size();
  v57 = _os_log_pack_fill();
  devNodePath5 = [(LPStaticMedia *)self devNodePath];
  *v57 = 138412290;
  *(v57 + 4) = devNodePath5;
  _LPLogPack(2);
  v59 = devNodePath5;
  optionsCopy = v64;

  v56 = 1;
LABEL_73:

  return v56;
}

- (BOOL)unmountAllWithError:(id *)error
{
  v8 = LPAPFSVolumeUnmountOptionAll[0];
  v5 = [NSNumber numberWithBool:1];
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  LOBYTE(error) = [(LPStaticAPFSVolume *)self unmountWithOptions:v6 error:error];

  return error;
}

- (BOOL)deleteVolumeWithError:(id *)error
{
  devNodePath = [(LPStaticMedia *)self devNodePath];
  if (devNodePath)
  {
    _os_log_pack_size();
    v5 = _os_log_pack_fill();
    *&v6 = 136315394;
    v19 = v6;
    *v5 = 136315394;
    *(v5 + 4) = "[LPStaticAPFSVolume deleteVolumeWithError:]";
    *(v5 + 12) = 2112;
    *(v5 + 14) = devNodePath;
    _LPLogPack(2);
    [devNodePath fileSystemRepresentation];
    v7 = APFSVolumeDelete();
    if (!v7)
    {
      v13 = 1;
      goto LABEL_18;
    }

    v8 = v7;
    if (v7 >> 26 == 56)
    {
      _os_log_pack_size();
      v9 = _os_log_pack_fill();
      v10 = v8 & 0x3FFF;
      *v9 = v19;
      *(v9 + 4) = "[LPStaticAPFSVolume deleteVolumeWithError:]";
      *(v9 + 12) = 1024;
      *(v9 + 14) = v10;
      _LPLogPack(1);
      if (error)
      {
        v11 = @"com.apple.IOKit";
LABEL_14:
        v16 = v10;
LABEL_17:
        v13 = 0;
        *error = [NSError errorWithDomain:v11 code:v16 userInfo:0, v19];
        goto LABEL_18;
      }
    }

    else
    {
      v14 = v7 & 0xFFFFC000;
      _os_log_pack_size();
      if (v14 == 49152)
      {
        v15 = _os_log_pack_fill();
        v10 = v8 & 0x3FFF;
        *v15 = v19;
        *(v15 + 4) = "[LPStaticAPFSVolume deleteVolumeWithError:]";
        *(v15 + 12) = 1024;
        *(v15 + 14) = v10;
        _LPLogPack(1);
        if (error)
        {
          v11 = NSPOSIXErrorDomain;
          goto LABEL_14;
        }
      }

      else
      {
        v17 = _os_log_pack_fill();
        *v17 = v19;
        *(v17 + 4) = "[LPStaticAPFSVolume deleteVolumeWithError:]";
        *(v17 + 12) = 1024;
        *(v17 + 14) = v8;
        _LPLogPack(1);
        if (error)
        {
          v11 = NSOSStatusErrorDomain;
          v16 = v8;
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[LPStaticAPFSVolume deleteVolumeWithError:]";
    _LPLogPack(1);
  }

  v13 = 0;
LABEL_18:

  return v13;
}

- (id)snapshotsWithError:(id *)error
{
  v3 = [(LPStaticAPFSVolume *)self snapshotInfoWithError:error];
  v4 = [NSMutableArray arrayWithCapacity:10];
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) objectForKey:{LPAPFSSnapshotPropertyKeyName[0], v12}];
          if (v10)
          {
            [(NSMutableArray *)v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (id)snapshotInfoWithError:(id *)error
{
  mountPoint = [(LPStaticMedia *)self mountPoint];
  v6 = mountPoint;
  if (!mountPoint)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    _os_log_pack_size();
    v29 = _os_log_pack_fill();
    v30 = [(LPStaticMedia *)self description];
    *v29 = 136315395;
    *(v29 + 4) = "[LPStaticAPFSVolume snapshotInfoWithError:]";
    *(v29 + 12) = 2113;
    *(v29 + 14) = v30;
    _LPLogPack(1);

    goto LABEL_36;
  }

  v7 = open([mountPoint fileSystemRepresentation], 0x100000);
  if (v7 < 0)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    _os_log_pack_size();
    v31 = _os_log_pack_fill();
    *v31 = 136315651;
    *(v31 + 4) = "[LPStaticAPFSVolume snapshotInfoWithError:]";
    *(v31 + 12) = 2113;
    *(v31 + 14) = v6;
    *(v31 + 22) = 1024;
    *(v31 + 24) = 0;
    _LPLogPack(1);
LABEL_36:
    v28 = 0;
    goto LABEL_40;
  }

  v8 = v7;
  errorCopy = error;
  v35 = v6;
  v36 = [NSMutableArray arrayWithCapacity:10];
  *&v38.volattr = 0;
  *&v38.fileattr = 0;
  bzero(v39, 0x800uLL);
  *&v38.bitmapcount = 0xA000002100000005;
  v9 = fs_snapshot_list(v8, &v38, v39, 0x800uLL, 0);
  if (v9 >= 1)
  {
    v10 = v39;
    v37 = v8;
    while (1)
    {
      while (1)
      {
        v11 = __OFSUB__(v9--, 1);
        if (v9 < 0 == v11)
        {
          break;
        }

LABEL_27:
        v10 = v39;
        v9 = fs_snapshot_list(v8, &v38, v39, 0x800uLL, 0);
        if (v9 <= 0)
        {
          goto LABEL_28;
        }
      }

      v12 = (v10 + 6);
      v13 = *v10;
      v14 = v10[1];
      if ((v14 & 0x20000000) == 0)
      {
        break;
      }

      v21 = *v12;
      _os_log_pack_size();
      v22 = _os_log_pack_fill();
      *v22 = 136315394;
      *(v22 + 4) = "[LPStaticAPFSVolume snapshotInfoWithError:]";
      *(v22 + 12) = 1024;
      *(v22 + 14) = v21;
      _LPLogPack(1);
LABEL_26:
      v10 = (v10 + v13);
      if ((v14 & 0x20000000) != 0)
      {
        goto LABEL_27;
      }
    }

    if (v14)
    {
      v23 = v12 + *v12;
      v15 = [NSString stringWithUTF8String:v23];
      if (!v15)
      {
        _os_log_pack_size();
        v24 = _os_log_pack_fill();
        *v24 = 136315395;
        *(v24 + 4) = "[LPStaticAPFSVolume snapshotInfoWithError:]";
        *(v24 + 12) = 2081;
        *(v24 + 14) = v23;
        _LPLogPack(2);
      }

      v12 = (v10 + 8);
      if ((v10[1] & 0x20) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v15 = 0;
      v16 = v10[1];
      if ((v14 & 0x20) != 0)
      {
LABEL_9:
        v17 = *v12;
        0x3FFFFFFFFFFFFFFFLL = [NSNumber numberWithUnsignedLongLong:*v12 & 0x3FFFFFFFFFFFFFFFLL];
        v19 = [NSNumber numberWithBool:(v17 >> 62) & 1];
        v20 = [NSNumber numberWithBool:v17 >> 63];
LABEL_15:
        v25 = [NSMutableDictionary dictionaryWithCapacity:4];
        v26 = v25;
        if (v15)
        {
          [(NSMutableDictionary *)v25 setObject:v15 forKey:LPAPFSSnapshotPropertyKeyName[0]];
        }

        if (0x3FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableDictionary *)v26 setObject:0x3FFFFFFFFFFFFFFFLL forKey:LPAPFSSnapshotPropertyKeyXID[0]];
        }

        if (v19)
        {
          [(NSMutableDictionary *)v26 setObject:v19 forKey:LPAPFSSnapshotPropertyKeyMarkedForRevert];
        }

        if (v20)
        {
          [(NSMutableDictionary *)v26 setObject:v20 forKey:LPAPFSSnapshotPropertyKeyMarkedForRoot[0]];
        }

        if ([(NSMutableDictionary *)v26 count])
        {
          [(NSMutableArray *)v36 addObject:v26];
        }

        v8 = v37;
        goto LABEL_26;
      }
    }

    v20 = 0;
    v19 = 0;
    0x3FFFFFFFFFFFFFFFLL = 0;
    goto LABEL_15;
  }

LABEL_28:
  if (v9 < 0)
  {
    _os_log_pack_size();
    v32 = _os_log_pack_fill();
    *v32 = 136315394;
    *(v32 + 4) = "[LPStaticAPFSVolume snapshotInfoWithError:]";
    *(v32 + 12) = 1024;
    *(v32 + 14) = v9;
    _LPLogPack(1);
    close(v8);
    v27 = v36;
    v28 = 0;
    if (errorCopy)
    {
      *errorCopy = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    }
  }

  else
  {
    close(v8);
    v27 = v36;
    v28 = [NSArray arrayWithArray:v36];
  }

  v6 = v35;
LABEL_40:

  return v28;
}

- (BOOL)createSnapshot:(id)snapshot error:(id *)error
{
  snapshotCopy = snapshot;
  mountPoint = [(LPStaticMedia *)self mountPoint];
  if (!snapshotCopy || ![snapshotCopy length])
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    goto LABEL_12;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

LABEL_12:
    _os_log_pack_size();
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[LPStaticAPFSVolume createSnapshot:error:]";
LABEL_13:
    _LPLogPack(1);
    v11 = 0;
    goto LABEL_14;
  }

  v8 = open([mountPoint fileSystemRepresentation], 0);
  if (v8 < 0)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    _os_log_pack_size();
    v17 = _os_log_pack_fill();
    *v17 = 136315395;
    *(v17 + 4) = "[LPStaticAPFSVolume createSnapshot:error:]";
    *(v17 + 12) = 2113;
    *(v17 + 14) = mountPoint;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = fs_snapshot_create(v8, [snapshotCopy fileSystemRepresentation], 0);
  v11 = v10 == 0;
  if (v10)
  {
    v12 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];
    }

    _os_log_pack_size();
    v13 = _os_log_pack_fill();
    v14 = strerror(v12);
    *v13 = 67109378;
    *(v13 + 4) = v12;
    *(v13 + 8) = 2080;
    *(v13 + 10) = v14;
    _LPLogPack(1);
  }

  close(v9);
LABEL_14:

  return v11;
}

- (BOOL)deleteSnapshots:(id)snapshots waitForDeletionFor:(double)for error:(id *)error
{
  snapshotsCopy = snapshots;
  mountPoint = [(LPStaticMedia *)self mountPoint];
  if (!snapshotsCopy)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    goto LABEL_25;
  }

  if (![snapshotsCopy count])
  {
    v21 = 1;
    goto LABEL_27;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

LABEL_25:
    _os_log_pack_size();
    v22 = _os_log_pack_fill();
    *v22 = 136315138;
    *(v22 + 4) = "[LPStaticAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
LABEL_26:
    _LPLogPack(1);
    v21 = 0;
    goto LABEL_27;
  }

  v10 = open([mountPoint fileSystemRepresentation], 0);
  if (v10 < 0)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    _os_log_pack_size();
    v24 = _os_log_pack_fill();
    v25 = *__error();
    *v24 = 136315394;
    *(v24 + 4) = "[LPStaticAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
    *(v24 + 12) = 1024;
    *(v24 + 14) = v25;
    goto LABEL_26;
  }

  v11 = v10;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v12 = snapshotsCopy;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    errorCopy = error;
    v28 = mountPoint;
    v15 = 0;
    v29 = 0;
    v16 = *v32;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        if (fs_snapshot_delete(v11, [v18 fileSystemRepresentation], 0))
        {
          v15 = *__error();
          _os_log_pack_size();
          v19 = _os_log_pack_fill();
          v20 = *__error();
          *v19 = 136315651;
          *(v19 + 4) = "[LPStaticAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
          *(v19 + 12) = 2113;
          *(v19 + 14) = v18;
          *(v19 + 22) = 1024;
          *(v19 + 24) = v20;
          _LPLogPack(1);
        }

        else
        {
          v29 = 1;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);

    if (errorCopy)
    {
      v21 = v29;
      if (v15)
      {
        *errorCopy = [NSError errorWithDomain:NSPOSIXErrorDomain code:v15 userInfo:0];
      }

      mountPoint = v28;
    }

    else
    {
      mountPoint = v28;
      v21 = v29;
    }
  }

  else
  {

    v21 = 0;
  }

  if (for != 0.0)
  {
    v30[2] = 0;
    v30[1] = 0;
    v30[0] = 15;
    if (ffsctl(v11, 0x80184A24uLL, v30, 0))
    {
      _os_log_pack_size();
      v26 = _os_log_pack_fill();
      *v26 = 136315138;
      *(v26 + 4) = "[LPStaticAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
      _LPLogPack(1);
    }
  }

  close(v11);
LABEL_27:

  return v21 & 1;
}

- (BOOL)renameSnapshot:(id)snapshot to:(id)to error:(id *)error
{
  snapshotCopy = snapshot;
  toCopy = to;
  mountPoint = [(LPStaticMedia *)self mountPoint];
  if (!snapshotCopy || ![snapshotCopy length])
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    goto LABEL_17;
  }

  if (!toCopy || ![toCopy length])
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    goto LABEL_17;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

LABEL_17:
    _os_log_pack_size();
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[LPStaticAPFSVolume renameSnapshot:to:error:]";
LABEL_18:
    _LPLogPack(1);
    v14 = 0;
    goto LABEL_19;
  }

  v11 = open([mountPoint fileSystemRepresentation], 0);
  if (v11 < 0)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    _os_log_pack_size();
    v20 = _os_log_pack_fill();
    *v20 = 136315395;
    *(v20 + 4) = "[LPStaticAPFSVolume renameSnapshot:to:error:]";
    *(v20 + 12) = 2113;
    *(v20 + 14) = mountPoint;
    goto LABEL_18;
  }

  v12 = v11;
  v13 = fs_snapshot_rename(v11, [snapshotCopy fileSystemRepresentation], objc_msgSend(toCopy, "fileSystemRepresentation"), 0);
  v14 = v13 == 0;
  if (v13)
  {
    v15 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v15 userInfo:0];
    }

    _os_log_pack_size();
    v16 = _os_log_pack_fill();
    v17 = strerror(v15);
    *v16 = 67109378;
    *(v16 + 4) = v15;
    *(v16 + 8) = 2080;
    *(v16 + 10) = v17;
    _LPLogPack(1);
  }

  close(v12);
LABEL_19:

  return v14;
}

- (BOOL)revertToSnapshot:(id)snapshot options:(id)options error:(id *)error
{
  snapshotCopy = snapshot;
  optionsCopy = options;
  mountPoint = [(LPStaticMedia *)self mountPoint];
  if (!snapshotCopy || ![snapshotCopy length])
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    goto LABEL_13;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

LABEL_13:
    _os_log_pack_size();
    v20 = _os_log_pack_fill();
    *v20 = 136315138;
    *(v20 + 4) = "[LPStaticAPFSVolume revertToSnapshot:options:error:]";
    _LPLogPack(1);
    v14 = 0;
    goto LABEL_14;
  }

  v11 = open([mountPoint fileSystemRepresentation], 0);
  if (v11 < 0)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    _os_log_pack_size();
    v22 = _os_log_pack_fill();
    *v22 = 136315395;
    *(v22 + 4) = "[LPStaticAPFSVolume revertToSnapshot:options:error:]";
    *(v22 + 12) = 2113;
    *(v22 + 14) = mountPoint;
    v14 = 1;
    _LPLogPack(1);
  }

  else
  {
    v12 = v11;
    v13 = fs_snapshot_revert(v11, [snapshotCopy fileSystemRepresentation], 0);
    v14 = v13 == 0;
    if (v13)
    {
      v15 = *__error();
      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v15 userInfo:0];
      }

      _os_log_pack_size();
      v25 = &v25;
      v16 = _os_log_pack_fill();
      v17 = strerror(v15);
      *v16 = 67109378;
      *(v16 + 4) = v15;
      *(v16 + 8) = 2080;
      *(v16 + 10) = v17;
      _LPLogPack(1);
    }

    close(v12);
    v18 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeRevertOptionSkipRemount[0]];
    if ([v18 BOOLValue])
    {
      _os_log_pack_size();
      v19 = _os_log_pack_fill();
      *v19 = 136315394;
      *(v19 + 4) = "[LPStaticAPFSVolume revertToSnapshot:options:error:]";
      *(v19 + 12) = 2112;
      *(v19 + 14) = mountPoint;
      _LPLogPack(2);
    }

    else if ([(LPStaticAPFSVolume *)self unmountWithError:error]&& [(LPStaticAPFSVolume *)self mountAtPath:mountPoint options:optionsCopy error:error])
    {
      v14 = 1;
    }

    else
    {
      _os_log_pack_size();
      v23 = _os_log_pack_fill();
      v24 = *__error();
      *v23 = 136315394;
      *(v23 + 4) = "[LPStaticAPFSVolume revertToSnapshot:options:error:]";
      *(v23 + 12) = 1024;
      *(v23 + 14) = v24;
      _LPLogPack(1);
      v14 = 0;
    }
  }

LABEL_14:

  return v14;
}

- (BOOL)rootToSnapshot:(id)snapshot error:(id *)error
{
  snapshotCopy = snapshot;
  _os_log_pack_size();
  v7 = _os_log_pack_fill();
  *v7 = 136315138;
  *(v7 + 4) = "[LPStaticAPFSVolume rootToSnapshot:error:]";
  _LPLogPack(3);
  mountPoint = [(LPStaticMedia *)self mountPoint];
  if (snapshotCopy && [snapshotCopy length])
  {
    [snapshotCopy fileSystemRepresentation];
    if (!mountPoint)
    {
LABEL_4:
      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      }

      v9 = _os_log_pack_fill();
      *v9 = 136315138;
      *(v9 + 4) = "[LPStaticAPFSVolume rootToSnapshot:error:]";
LABEL_17:
      _LPLogPack(1);
      v14 = 0;
      goto LABEL_18;
    }
  }

  else if (!mountPoint)
  {
    goto LABEL_4;
  }

  _os_log_pack_size();
  v10 = _os_log_pack_fill();
  *v10 = 136315395;
  *(v10 + 4) = "[LPStaticAPFSVolume rootToSnapshot:error:]";
  *(v10 + 12) = 2113;
  *(v10 + 14) = mountPoint;
  _LPLogPack(3);
  v11 = open([mountPoint fileSystemRepresentation], 0);
  if (v11 < 0)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    v17 = _os_log_pack_fill();
    *v17 = 136315395;
    *(v17 + 4) = "[LPStaticAPFSVolume rootToSnapshot:error:]";
    *(v17 + 12) = 2113;
    *(v17 + 14) = mountPoint;
    goto LABEL_17;
  }

  v12 = v11;
  v13 = fs_snapshot_root();
  v14 = v13 == 0;
  if (v13)
  {
    v15 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v15 userInfo:0];
    }

    _os_log_pack_size();
    v16 = _os_log_pack_fill();
    *v16 = 136315394;
    *(v16 + 4) = "[LPStaticAPFSVolume rootToSnapshot:error:]";
    *(v16 + 12) = 1024;
    *(v16 + 14) = v15;
    _LPLogPack(1);
  }

  close(v12);
LABEL_18:

  return v14;
}

@end