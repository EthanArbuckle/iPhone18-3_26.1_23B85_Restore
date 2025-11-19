@interface LPStaticMedia
+ (BOOL)hasEmbeddedDeviceTypeRoot;
+ (NSDictionary)contentTypeToSubclassMap;
+ (id)allMedia;
+ (id)liveMediaForSnapshotAtPath:(id)a3;
+ (id)mediaForBSDNameOrDeviceNode:(id)a3;
+ (id)mediaForPath:(id)a3 isSnapshot:(BOOL *)a4;
+ (id)mediaForPath:(id)a3 snapshotName:(id *)a4;
+ (id)mediaForUUID:(id)a3;
+ (id)snapshotNameForMediaForPath:(id)a3;
+ (unsigned)_copyIOMediaForDiskWithPath:(id)a3;
+ (unsigned)_copyLiveFilesystemIOMediaForRootedSnapshot;
+ (void)waitForBlockStorage;
+ (void)waitForIOMediaWithDevNode:(id)a3;
- (BOOL)getBoolPropertyWithName:(id)a3;
- (BOOL)isEmbeddedDeviceTypeRoot;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInternal;
- (BOOL)isJournaled;
- (BOOL)isReadOnly;
- (BOOL)setName:(id)a3 withError:(id *)a4;
- (id)_deviceCharacteristicStringForKey:(id)a3;
- (id)description;
- (id)devNodePath;
- (id)deviceModel;
- (id)getPropertyWithName:(id)a3;
- (id)mountPoint;
- (id)name;
- (id)wholeMediaForMedia;
- (int)storageMedium;
- (void)dealloc;
@end

@implementation LPStaticMedia

+ (BOOL)hasEmbeddedDeviceTypeRoot
{
  v11[0] = @"IOProviderClass";
  v11[1] = @"IOPropertyMatch";
  v12[0] = @"IOBlockStorageDevice";
  v9 = @"EmbeddedDeviceTypeRoot";
  v2 = [NSNumber numberWithBool:1];
  v10 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v12[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  v5 = v4;
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v5);
  v7 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v7 != 0;
}

+ (id)allMedia
{
  v2 = [NSMutableArray arrayWithCapacity:10];
  +[LPStaticMedia waitForBlockStorage];
  existing = 0;
  v3 = IOServiceMatching("IOMedia");
  if (IOServiceGetMatchingServices(kIOMasterPortDefault, v3, &existing))
  {
    _os_log_pack_size();
    v4 = _os_log_pack_fill();
    *v4 = 136315138;
    *(v4 + 4) = "+[LPStaticMedia allMedia]";
    _LPLogPack(1);
    v5 = __NSArray0__;
  }

  else
  {
    v6 = IOIteratorNext(existing);
    if (v6)
    {
      v7 = v6;
      do
      {
        v8 = [LPStaticMedia mediaOfCorrectTypeGivenIOMedia:v7];
        if (v8)
        {
          [(NSMutableArray *)v2 addObject:v8];
        }

        IOObjectRelease(v7);

        v7 = IOIteratorNext(existing);
      }

      while (v7);
    }

    if (existing)
    {
      IOObjectRelease(existing);
    }

    v5 = [NSArray arrayWithArray:v2];
  }

  v9 = v5;

  return v9;
}

+ (id)mediaForPath:(id)a3 isSnapshot:(BOOL *)a4
{
  v7 = 0;
  v5 = [a1 mediaForPath:a3 snapshotName:&v7];
  if (a4 && v5)
  {
    *a4 = v7 != 0;
  }

  return v5;
}

+ (id)mediaForPath:(id)a3 snapshotName:(id *)a4
{
  v6 = a3;
  bzero(&v41, 0x878uLL);
  if (statfs([v6 fileSystemRepresentation], &v41))
  {
    v7 = *__error();
    _os_log_pack_size();
    off_30618();
    v8 = _os_log_pack_fill();
    v9 = strerror(v7);
    *v8 = 136315906;
    *(v8 + 4) = "+[LPStaticMedia mediaForPath:snapshotName:]";
    *(v8 + 12) = 2112;
    *(v8 + 14) = v6;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v7;
    *(v8 + 28) = 2080;
    *(v8 + 30) = v9;
    _LPLogPack(1);
    v10 = 0;
LABEL_3:
    v11 = 0;
    goto LABEL_24;
  }

  v12 = v41.f_fsid.val[0];
  v39[0] = @"IOProviderClass";
  v39[1] = @"IOPropertyMatch";
  v40[0] = @"IOMedia";
  v37[0] = @"BSD Major";
  v13 = [NSNumber numberWithInt:HIBYTE(v41.f_fsid.val[0])];
  v37[1] = @"BSD Minor";
  v38[0] = v13;
  v14 = [NSNumber numberWithInt:v12 & 0xFFFFFF];
  v38[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
  v40[1] = v15;
  v10 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];

  v16 = CFRetain(v10);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v16);
  if (!MatchingService)
  {
    _os_log_pack_size();
    off_30618();
    v21 = _os_log_pack_fill();
    *v21 = 136315650;
    *(v21 + 4) = "+[LPStaticMedia mediaForPath:snapshotName:]";
    *(v21 + 12) = 2112;
    *(v21 + 14) = v6;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v12;
    _LPLogPack(1);
    goto LABEL_3;
  }

  v18 = MatchingService;
  v19 = [a1 mediaOfCorrectTypeGivenIOMedia:MatchingService];
  v11 = v19;
  if (a4 && v19)
  {
    if ((v41.f_flags & 0x40000000) == 0)
    {
      v20 = 0;
LABEL_22:
      v30 = v20;
      *a4 = v20;

      goto LABEL_23;
    }

    v22 = strrchr(v41.f_mntfromname, 64);
    if (v22)
    {
      v20 = [[NSString alloc] initWithBytes:v41.f_mntfromname length:v22 - v41.f_mntfromname encoding:4];
      goto LABEL_20;
    }

    if (!IOObjectConformsTo(v18, "AppleAPFSSnapshot"))
    {
      v20 = 0;
      goto LABEL_20;
    }

    memset(v36, 0, 37);
    CFProperty = IORegistryEntryCreateCFProperty(v18, @"UUID", 0, 0);
    [CFProperty getCString:v36 maxLength:37 encoding:4];
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v33 = 2;
    if (uuid_parse(v36, v34))
    {
      _os_log_pack_size();
      off_30618();
      v24 = _os_log_pack_fill();
      *v24 = 136315907;
      *(v24 + 4) = "+[LPStaticMedia mediaForPath:snapshotName:]";
      *(v24 + 12) = 2080;
      *(v24 + 14) = "AppleAPFSSnapshot";
      *(v24 + 22) = 2081;
      *(v24 + 24) = "UUID";
      *(v24 + 32) = 2113;
      *(v24 + 34) = CFProperty;
      _LPLogPack(1);
    }

    else
    {
      if (!fsctl(v41.f_mntonname, 0xC1204A43uLL, &v33, 0))
      {
        v20 = [[NSString alloc] initWithBytes:&v34[24] length:strnlen(&v34[24] encoding:{0xFFuLL), 4}];
        goto LABEL_19;
      }

      _os_log_pack_size();
      v32[1] = v32;
      off_30618();
      v25 = _os_log_pack_fill();
      v26 = *__error();
      v27 = __error();
      v28 = strerror(*v27);
      *v25 = 136315650;
      *(v25 + 4) = "+[LPStaticMedia mediaForPath:snapshotName:]";
      *(v25 + 12) = 1024;
      *(v25 + 14) = v26;
      *(v25 + 18) = 2080;
      *(v25 + 20) = v28;
      _LPLogPack(1);
    }

    v20 = 0;
LABEL_19:

LABEL_20:
    if (![v20 length])
    {
      _os_log_pack_size();
      off_30618();
      v29 = _os_log_pack_fill();
      *v29 = 136315395;
      *(v29 + 4) = "+[LPStaticMedia mediaForPath:snapshotName:]";
      *(v29 + 12) = 2113;
      *(v29 + 14) = v6;
      _LPLogPack(1);
    }

    goto LABEL_22;
  }

LABEL_23:
  IOObjectRelease(v18);
LABEL_24:

  return v11;
}

+ (id)snapshotNameForMediaForPath:(id)a3
{
  v4 = a3;
  v43 = 0;
  v5 = [a1 mediaForPath:v4 snapshotName:&v43];
  v6 = v43;
  v7 = v6;
  if (!v5)
  {
    _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315395;
    *(v9 + 4) = "+[LPStaticMedia snapshotNameForMediaForPath:]";
    *(v9 + 12) = 2113;
    *(v9 + 14) = v4;
    _LPLogPack(1);
    v8 = 0;
    goto LABEL_32;
  }

  if (v6)
  {
    v8 = v6;
    goto LABEL_32;
  }

  v10 = [a1 liveMediaForSnapshotAtPath:@"/"];
  if (!v10 || ![v5 isEqual:v10])
  {
    goto LABEL_10;
  }

  v42 = 0;
  v11 = [a1 mediaForPath:@"/" snapshotName:&v42];
  v8 = v42;

  if (!v11 || !v8)
  {

LABEL_10:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v5;
      v41 = 0;
      v13 = [v12 snapshotInfoWithError:&v41];
      v14 = v41;
      v15 = v14;
      if (v13)
      {
        v32 = v14;
        v34 = v12;
        v35 = v10;
        v36 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v33 = v13;
        v16 = v13;
        v17 = [v16 countByEnumeratingWithState:&v37 objects:v44 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v38;
          while (2)
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v38 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v37 + 1) + 8 * i);
              v8 = [v21 objectForKeyedSubscript:LPAPFSSnapshotPropertyKeyName[0]];
              v22 = [v21 objectForKeyedSubscript:LPAPFSSnapshotPropertyKeyMarkedForRoot[0]];
              if ([v22 BOOLValue])
              {

                v10 = v35;
                v12 = v34;
                v13 = v33;
                v23 = v36;
                goto LABEL_29;
              }

              if ([v8 hasPrefix:@"com.apple.os.update-"])
              {
                [(NSMutableArray *)v36 addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v37 objects:v44 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v23 = v36;
        if ([(NSMutableArray *)v36 count])
        {
          v24 = [(NSMutableArray *)v36 sortedArrayUsingComparator:&__block_literal_global_4];
          v25 = [v24 lastObject];
          v8 = [v25 objectForKeyedSubscript:LPAPFSSnapshotPropertyKeyName[0]];
        }

        else
        {
          _os_log_pack_size();
          v30 = _os_log_pack_fill();
          *v30 = 136315138;
          *(v30 + 4) = "+[LPStaticMedia snapshotNameForMediaForPath:]";
          _LPLogPack(1);
          v8 = 0;
        }

        v10 = v35;
        v12 = v34;
        v13 = v33;
LABEL_29:

        v15 = v32;
      }

      else
      {
        _os_log_pack_size();
        v28 = _os_log_pack_fill();
        v29 = [v12 devNodePath];
        *v28 = 136315650;
        *(v28 + 4) = "+[LPStaticMedia snapshotNameForMediaForPath:]";
        *(v28 + 12) = 2112;
        *(v28 + 14) = v29;
        *(v28 + 22) = 2112;
        *(v28 + 24) = v15;

        _LPLogPack(1);
        v8 = 0;
      }
    }

    else
    {
      _os_log_pack_size();
      v26 = _os_log_pack_fill();
      v27 = [v5 devNodePath];
      *v26 = 136315394;
      *(v26 + 4) = "+[LPStaticMedia snapshotNameForMediaForPath:]";
      *(v26 + 12) = 2112;
      *(v26 + 14) = v27;

      _LPLogPack(1);
      v8 = 0;
    }
  }

LABEL_32:

  return v8;
}

int64_t __45__LPStaticMedia_snapshotNameForMediaForPath___block_invoke(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = LPAPFSSnapshotPropertyKeyXID[0];
  v5 = a3;
  v6 = [(NSDictionary *)a2 objectForKeyedSubscript:v4];
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:LPAPFSSnapshotPropertyKeyXID[0]];

  v8 = [v6 compare:v7];
  return v8;
}

+ (id)liveMediaForSnapshotAtPath:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"/"] & 1) == 0)
  {
    v8 = a1;
LABEL_9:
    v9 = [(__objc2_class *)v8 mediaForPath:v4];
    goto LABEL_18;
  }

  v5 = [LPStaticMedia _copyIOMediaForDiskWithPath:v4];
  if (!v5)
  {
    if (![v4 isEqualToString:@"/"] || (v10 = +[LPStaticMedia _copyLiveFilesystemIOMediaForRootedSnapshot](LPStaticMedia, "_copyLiveFilesystemIOMediaForRootedSnapshot"), !v10))
    {
      _os_log_pack_size();
      v11 = _os_log_pack_fill();
      *v11 = 136315395;
      *(v11 + 4) = "+[LPStaticMedia liveMediaForSnapshotAtPath:]";
      *(v11 + 12) = 2113;
      *(v11 + 14) = v4;
      _LPLogPack(1);
      v9 = 0;
      goto LABEL_18;
    }

    v6 = v10;
    v7 = v10;
    goto LABEL_13;
  }

  v6 = v5;
  if (!IOObjectConformsTo(v5, "AppleAPFSSnapshot"))
  {
    _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315395;
    *(v12 + 4) = "+[LPStaticMedia liveMediaForSnapshotAtPath:]";
    *(v12 + 12) = 2113;
    *(v12 + 14) = v4;
    _LPLogPack(1);
    IOObjectRelease(v6);
    v8 = LPStaticMedia;
    goto LABEL_9;
  }

  parent = 0;
  if (IORegistryEntryGetParentEntry(v6, "IOService", &parent) || !parent || !IOObjectConformsTo(parent, "AppleAPFSVolume"))
  {
    _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315395;
    *(v13 + 4) = "+[LPStaticMedia liveMediaForSnapshotAtPath:]";
    *(v13 + 12) = 2113;
    *(v13 + 14) = v4;
    _LPLogPack(1);
    v9 = 0;
    goto LABEL_17;
  }

  v7 = parent;
LABEL_13:
  v9 = [LPStaticMedia mediaOfCorrectTypeGivenIOMedia:v7];
LABEL_17:
  IOObjectRelease(v6);
LABEL_18:

  return v9;
}

+ (id)mediaForUUID:(id)a3
{
  v3 = a3;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, @"IOProviderClass", @"IOMedia");
  CFDictionarySetValue(Mutable, @"UUID", v3);

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, Mutable);
  if (MatchingService)
  {
    v6 = MatchingService;
    v7 = [LPStaticMedia mediaOfCorrectTypeGivenIOMedia:MatchingService];
    IOObjectRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)mediaForBSDNameOrDeviceNode:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 length])
    {
      v5 = v4;
      if ([v4 hasPrefix:@"/dev/"])
      {
        v5 = [v4 substringFromIndex:5];
      }

      v6 = IOBSDNameMatching(kIOMasterPortDefault, 0, [v5 fileSystemRepresentation]);
      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
      if (MatchingService)
      {
        v8 = MatchingService;
        v9 = [LPStaticMedia mediaOfCorrectTypeGivenIOMedia:MatchingService];
        IOObjectRelease(v8);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v5 = v4;
    }
  }

  else
  {
    v9 = 0;
    v5 = 0;
  }

  return v9;
}

- (id)wholeMediaForMedia
{
  if ([(LPStaticMedia *)self isWhole])
  {
    v3 = self;
  }

  else
  {
    iterator = 0;
    if (IORegistryEntryCreateIterator([(LPStaticMedia *)self ioMedia], "IOService", 3u, &iterator))
    {
      _os_log_pack_size();
      v4 = _os_log_pack_fill();
      *v4 = 136315138;
      *(v4 + 4) = "[LPStaticMedia wholeMediaForMedia]";
      _LPLogPack(1);
      v3 = 0;
    }

    else
    {
      v5 = IOIteratorNext(iterator);
      if (v5)
      {
        v6 = v5;
        v3 = 0;
        do
        {
          if (IOObjectConformsTo(v6, "IOMedia") && (CFProperty = IORegistryEntryCreateCFProperty(v6, @"Whole", 0, 0)) != 0)
          {
            v8 = CFProperty;
            v9 = CFGetTypeID(CFProperty);
            if (v9 == CFBooleanGetTypeID() && CFBooleanGetValue(v8))
            {
              v10 = [LPStaticMedia mediaOfCorrectTypeGivenIOMedia:v6];

              v11 = 1;
              v3 = v10;
            }

            else
            {
              v11 = 0;
            }

            CFRelease(v8);
          }

          else
          {
            v11 = 0;
          }

          IOObjectRelease(v6);
          v6 = IOIteratorNext(iterator);
          if (v6)
          {
            v12 = v11 == 0;
          }

          else
          {
            v12 = 0;
          }
        }

        while (v12);
      }

      else
      {
        v3 = 0;
      }

      IOObjectRelease(iterator);
    }
  }

  return v3;
}

- (void)dealloc
{
  if ([(LPStaticMedia *)self ioMedia])
  {
    IOObjectRelease([(LPStaticMedia *)self ioMedia]);
  }

  v3.receiver = self;
  v3.super_class = LPStaticMedia;
  [(LPStaticMedia *)&v3 dealloc];
}

- (id)name
{
  v3 = [(LPStaticMedia *)self mountPoint];
  if (!v3 || (bzero(name, 0x40CuLL), v7[2] = 0, v7[0] = 5, v7[1] = 2147491840, getattrlist([v3 fileSystemRepresentation], v7, name, 0x40CuLL, 0) == -1))
  {
    memset(name, 0, sizeof(name));
    if (IORegistryEntryGetName([(LPStaticMedia *)self ioMedia], name))
    {
      v5 = 0;
      goto LABEL_8;
    }

    name[127] = 0;
    v4 = name;
  }

  else
  {
    v4 = &name[*&name[4] + 4];
  }

  v5 = [NSString stringWithCString:v4 encoding:4];
LABEL_8:

  return v5;
}

- (BOOL)setName:(id)a3 withError:(id *)a4
{
  v6 = a3;
  bzero(v21, 0x408uLL);
  v7 = [(LPStaticMedia *)self mountPoint];
  v8 = [v7 fileSystemRepresentation];

  if (!v8)
  {
    _os_log_pack_size();
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[LPStaticMedia setName:withError:]";
    _LPLogPack(1);
    if (a4)
    {
      v14 = NSPOSIXErrorDomain;
      v13 = 22;
      goto LABEL_7;
    }

LABEL_8:
    v16 = 0;
    goto LABEL_10;
  }

  v20 = 0;
  v19 = xmmword_202C0;
  [v6 UTF8String];
  __strlcpy_chk();
  v21[0] = 8;
  v21[1] = strlen(v22) + 1;
  v9 = setattrlist(v8, &v19, v21, 0x408uLL, 0);
  _os_log_pack_size();
  if (!v9)
  {
    v17 = _os_log_pack_fill();
    *v17 = 136315395;
    *(v17 + 4) = "[LPStaticMedia setName:withError:]";
    *(v17 + 12) = 2113;
    *(v17 + 14) = v6;
    _LPLogPack(3);
    v16 = 1;
    goto LABEL_10;
  }

  v10 = _os_log_pack_fill();
  v11 = __error();
  v12 = strerror(*v11);
  *v10 = 136315394;
  *(v10 + 4) = "[LPStaticMedia setName:withError:]";
  *(v10 + 12) = 2080;
  *(v10 + 14) = v12;
  _LPLogPack(1);
  if (!a4)
  {
    goto LABEL_8;
  }

  v13 = *__error();
  v14 = NSPOSIXErrorDomain;
LABEL_7:
  v16 = 0;
  *a4 = [NSError errorWithDomain:v14 code:v13 userInfo:0];
LABEL_10:

  return v16;
}

- (id)devNodePath
{
  v2 = [(LPStaticMedia *)self BSDName];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"/dev/%@", v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mountPoint
{
  v2 = [(LPStaticMedia *)self devNodePath];
  if (v2)
  {
    v10 = 0;
    v3 = getmntinfo_r_np(&v10, 2);
    if (v3 < 1)
    {
LABEL_6:
      v8 = 0;
    }

    else
    {
      v4 = v3;
      v5 = 1112;
      while (1)
      {
        v6 = [v2 fileSystemRepresentation];
        v7 = v10 + v5;
        if (!strcmp(v6, v10 + v5))
        {
          break;
        }

        v5 += 2168;
        if (!--v4)
        {
          goto LABEL_6;
        }
      }

      v8 = [NSString stringWithUTF8String:v7 - 1024];
    }

    if (v10)
    {
      free(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)deviceModel
{
  v3 = 0;
  while (1)
  {
    v4 = IORegistryEntrySearchCFProperty([(LPStaticMedia *)self ioMedia], "IOService", off_2CA60[v3], kCFAllocatorDefault, 3u);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (++v3 == 4)
    {
      v4 = 0;
      break;
    }
  }

  return v4;
}

- (int)storageMedium
{
  v2 = [(LPStaticMedia *)self _deviceCharacteristicStringForKey:@"Medium Type"];
  if ([v2 isEqualToString:@"Rotational"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"Solid State"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isInternal
{
  v2 = IORegistryEntrySearchCFProperty([(LPStaticMedia *)self ioMedia], "IOService", @"Protocol Characteristics", 0, 3u);
  v3 = [v2 objectForKeyedSubscript:@"Physical Interconnect Location"];
  v4 = [v3 isEqualToString:@"Internal"];

  return v4;
}

- (BOOL)isEmbeddedDeviceTypeRoot
{
  v2 = IORegistryEntrySearchCFProperty([(LPStaticMedia *)self ioMedia], "IOService", @"EmbeddedDeviceTypeRoot", 0, 3u);
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isReadOnly
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(LPStaticMedia *)self mountPoint];
  if (v4)
  {
    bzero(&v8, 0x878uLL);
    if (!statfs([v4 fileSystemRepresentation], &v8))
    {
      f_flags = v8.f_flags;
      goto LABEL_6;
    }

    _os_log_pack_size();
    v5 = _os_log_pack_fill();
    *v5 = 136315394;
    *(v5 + 4) = "[LPStaticMedia isReadOnly]";
    *(v5 + 12) = 2112;
    *(v5 + 14) = v4;
    _LPLogPack(1);
  }

  f_flags = 0;
LABEL_6:

  objc_autoreleasePoolPop(v3);
  return f_flags & 1;
}

- (BOOL)isJournaled
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(LPStaticMedia *)self mountPoint];
  if (v4)
  {
    bzero(&v8, 0x878uLL);
    if (!statfs([v4 fileSystemRepresentation], &v8))
    {
      v6 = BYTE2(v8.f_flags) >> 7;
      goto LABEL_6;
    }

    _os_log_pack_size();
    v5 = _os_log_pack_fill();
    *v5 = 136315394;
    *(v5 + 4) = "[LPStaticMedia isJournaled]";
    *(v5 + 12) = 2112;
    *(v5 + 14) = v4;
    _LPLogPack(1);
  }

  LOBYTE(v6) = 0;
LABEL_6:

  objc_autoreleasePoolPop(v3);
  return v6;
}

- (id)description
{
  v3 = [(LPStaticMedia *)self mountPoint];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(LPStaticMedia *)self name];
    v7 = [NSString stringWithFormat:@"%@: %@, Mount: %@", v5, v6, v3];
  }

  else
  {
    v5 = [(LPStaticMedia *)self mediaUUID];
    v8 = objc_opt_class();
    v6 = NSStringFromClass(v8);
    v9 = [(LPStaticMedia *)self name];
    v10 = v9;
    if (v5)
    {
      v11 = [NSString stringWithFormat:@"%@: %@, UUID: %@", v6, v9, v5];
    }

    else
    {
      v11 = [NSString stringWithFormat:@"%@: %@", v6, v9, v13];
    }

    v7 = v11;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(LPStaticMedia *)self ioMedia];
    v7 = [v5 ioMedia];

    v8 = IOObjectIsEqualTo(v6, v7) == 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_deviceCharacteristicStringForKey:(id)a3
{
  v4 = a3;
  v5 = IORegistryEntrySearchCFProperty([(LPStaticMedia *)self ioMedia], "IOService", @"Device Characteristics", 0, 3u);
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectForKeyedSubscript:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (unsigned)_copyIOMediaForDiskWithPath:(id)a3
{
  bzero(&v12, 0x878uLL);
  if (statfs([a3 fileSystemRepresentation], &v12))
  {
    v4 = *__error();
    _os_log_pack_size();
    v5 = _os_log_pack_fill();
    v6 = strerror(v4);
    *v5 = 136315650;
    *(v5 + 4) = "+[LPStaticMedia _copyIOMediaForDiskWithPath:]";
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    *(v5 + 18) = 2080;
    *(v5 + 20) = v6;
    _LPLogPack(1);
    return 0;
  }

  else
  {
    v8 = [NSString stringWithUTF8String:v12.f_mntfromname];
    if ([(NSString *)v8 hasPrefix:@"/dev/"])
    {
      v9 = [(NSString *)v8 substringFromIndex:5];

      v8 = v9;
    }

    v10 = IOBSDNameMatching(kIOMasterPortDefault, 0, [(NSString *)v8 UTF8String]);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v10);
  }

  return MatchingService;
}

+ (unsigned)_copyLiveFilesystemIOMediaForRootedSnapshot
{
  bzero(&v14, 0x878uLL);
  if (statfs("/", &v14))
  {
    v2 = *__error();
    _os_log_pack_size();
    v3 = _os_log_pack_fill();
    v4 = strerror(v2);
    *v3 = 136315650;
    *(v3 + 4) = "+[LPStaticMedia _copyLiveFilesystemIOMediaForRootedSnapshot]";
    *(v3 + 12) = 1024;
    *(v3 + 14) = v2;
    *(v3 + 18) = 2080;
    *(v3 + 20) = v4;
    _LPLogPack(1);
    return 0;
  }

  else
  {
    v6 = [NSString stringWithUTF8String:v14.f_mntfromname];
    v7 = [(NSString *)v6 componentsSeparatedByString:@"@"];
    if (-[NSArray count](v7, "count") == &dword_0 + 2 && (v8 = -[NSArray objectAtIndexedSubscript:](v7, "objectAtIndexedSubscript:", 1), v9 = [v8 hasPrefix:@"/dev/"], v8, v9))
    {
      v10 = [(NSArray *)v7 objectAtIndexedSubscript:1];
      v11 = [v10 substringFromIndex:5];

      v12 = IOBSDNameMatching(kIOMasterPortDefault, 0, [v11 UTF8String]);
      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v12);
      v6 = v11;
    }

    else
    {
      MatchingService = 0;
    }
  }

  return MatchingService;
}

+ (NSDictionary)contentTypeToSubclassMap
{
  if (contentTypeToSubclassMap_once != -1)
  {
    +[LPStaticMedia(Private) contentTypeToSubclassMap];
  }

  v3 = contentTypeToSubclassMap_sharedMap;

  return v3;
}

void __50__LPStaticMedia_Private__contentTypeToSubclassMap__block_invoke(id a1)
{
  context = objc_autoreleasePoolPush();
  v1 = +[NSMutableDictionary dictionary];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v26[3] = objc_opt_class();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [NSArray arrayWithObjects:v26 count:4];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = [v7 supportedContentTypes];
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            v12 = 0;
            do
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [v1 setObject:v7 forKeyedSubscript:*(*(&v16 + 1) + 8 * v12)];
              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }

        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  v13 = [v1 copy];
  v14 = contentTypeToSubclassMap_sharedMap;
  contentTypeToSubclassMap_sharedMap = v13;

  objc_autoreleasePoolPop(context);
}

- (id)getPropertyWithName:(id)a3
{
  v4 = a3;
  CFProperty = IORegistryEntryCreateCFProperty([(LPStaticMedia *)self ioMedia], v4, 0, 0);
  if (!CFProperty)
  {
    _os_log_pack_size();
    off_30618();
    v6 = _os_log_pack_fill();
    *v6 = 136315394;
    *(v6 + 4) = "[LPStaticMedia(Private) getPropertyWithName:]";
    *(v6 + 12) = 2112;
    *(v6 + 14) = v4;
    _LPLogPack(3);
  }

  return CFProperty;
}

- (BOOL)getBoolPropertyWithName:(id)a3
{
  v3 = [(LPStaticMedia *)self getPropertyWithName:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (void)waitForIOMediaWithDevNode:(id)a3
{
  v3 = a3;
  v4 = v3;
  if ([v3 hasPrefix:@"/dev/"])
  {
    v4 = [v3 substringFromIndex:5];
  }

  v5 = IOBSDNameMatching(kIOMasterPortDefault, 0, [v4 fileSystemRepresentation]);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v5);
  if (MatchingService)
  {
    v7 = MatchingService;
    waitTime = 5;
    if (IOServiceWaitQuiet(MatchingService, &waitTime) == -536870186)
    {
      _os_log_pack_size();
      v8 = _os_log_pack_fill();
      *v8 = 138412290;
      *(v8 + 4) = v4;
      _LPLogPack(1);
    }

    IOObjectRelease(v7);
  }

  else
  {
    _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 138412290;
    *(v9 + 4) = v4;
    _LPLogPack(1);
  }
}

+ (void)waitForBlockStorage
{
  existing = 0;
  v2 = IOServiceMatching("IOBlockStorageDevice");
  if (!IOServiceGetMatchingServices(kIOMasterPortDefault, v2, &existing))
  {
    v3 = 0;
    do
    {
      IOIteratorReset(existing);
      waitTime = 5;
      v4 = IOIteratorNext(existing);
      if (v4)
      {
        v5 = v4;
        v6 = 0;
        do
        {
          v6 |= IOServiceWaitQuiet(v5, &waitTime) == -536870186;
          IOObjectRelease(v5);
          v5 = IOIteratorNext(existing);
        }

        while (v5);
      }

      else
      {
        v6 = 0;
      }

      if (IOIteratorIsValid(existing))
      {
        v7 = 1;
      }

      else
      {
        v7 = v3 >= 4;
      }

      ++v3;
    }

    while (!v7);
    if (v6)
    {
      _os_log_pack_size();
      *_os_log_pack_fill() = 0;
      _LPLogPack(2);
    }

    IOObjectRelease(existing);
  }
}

@end