@interface DSVolume
+ (BOOL)__checkAttributionTagsCapabilityForVolume:(id)a3;
+ (BOOL)__checkCloneGroupCapabilityForVolume:(id)a3;
+ (BOOL)__checkCloneMappingCapabilityForVolume:(id)a3;
+ (BOOL)__checkPurgeableFilesCapabilityForVolume:(id)a3;
+ (BOOL)_isDirectoryPartOfSAFHierarchy:(id)a3;
+ (id)_safeFilenameForListingVolume:(id)a3 pathExtension:(id)a4;
+ (id)_safeStringFromStatFSCString:(const char *)a3;
+ (id)_volumeInfoFromStatFS:(statfs *)a3 count:(int)a4 usedBytesProvider:(id)a5 volumeManager:(id)a6;
+ (void)_getAttributionTagPathsInDirectory:(id)a3 reply:(id)a4;
+ (void)_getDirStatsType:(id)a3 reply:(id)a4;
+ (void)_getPurgeableRecordsInfo:(id)a3 reply:(id)a4;
+ (void)_getSharedExtensInfo:(id)a3 reply:(id)a4;
+ (void)_writeCloneGroupsRecordsForVolume:(id)a3 toFile:(__sFILE *)a4 error:(id *)a5;
- (BOOL)listContentsWithEntryCount:(unint64_t *)a3 andError:(id *)a4;
- (BOOL)shouldListContents;
- (DSVolumeManager)_volumeManager;
- (NSString)debugDescription;
- (NSString)description;
- (id)_initWithStatFS:(statfs *)a3 usedBytesProvider:(id)a4 volumeManager:(id)a5;
- (id)_pathRepresentationForListing:(char *)a3 isDirectory:(BOOL)a4;
@end

@implementation DSVolume

+ (BOOL)__checkPurgeableFilesCapabilityForVolume:(id)a3
{
  v8 = 0;
  v3 = [a3 mountPoint];
  v4 = fsctl([v3 UTF8String], 0x40084A47uLL, &v8, 0);

  if (v4)
  {
    v5 = __error();
    v6 = 0x1FFFFDFFFFFBuLL >> *v5;
    if (*v5 > 0x2D)
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6 & 1;
}

+ (BOOL)__checkAttributionTagsCapabilityForVolume:(id)a3
{
  v3 = a3;
  v13 = 0;
  v4 = [v3 mountPoint];
  v5 = fsctl([v4 UTF8String], 0xC0044A75uLL, &v13, 0);

  if (v5)
  {
    v6 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __error();
      v8 = strerror(*v7);
      v9 = [v3 mountPoint];
      v10 = [v9 UTF8String];
      *buf = 136315394;
      v15 = v8;
      v16 = 2080;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to get attribution tags flags with error (%s) (%s)", buf, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    v11 = v13 == 1;
  }

  return v11;
}

+ (BOOL)__checkCloneMappingCapabilityForVolume:(id)a3
{
  v3 = a3;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v4 = [v3 mountPoint];
  v5 = getattrlist([v4 UTF8String], &v12, v13, 0x24uLL, 0);

  if (v5)
  {
    v6 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __error();
      v8 = strerror(*v7);
      v9 = [v3 mountPoint];
      v10 = [v9 UTF8String];
      *buf = 136315394;
      v16 = v8;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attrlist failed with error (%s) (%s)", buf, 0x16u);
    }

    LOBYTE(v6) = 0;
  }

  else
  {
    LODWORD(v6) = (BYTE7(v13[0]) >> 2) & 1;
  }

  return v6;
}

+ (BOOL)__checkCloneGroupCapabilityForVolume:(id)a3
{
  v4 = a3;
  if (![a1 __checkCloneMappingCapabilityForVolume:v4])
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v5 = malloc_type_malloc(0x400uLL, 0x35957D06uLL);
  if (!v5)
  {
    v11 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100030A14(v11);
    }

    goto LABEL_11;
  }

  v6 = v5;
  v14 = 0u;
  DWORD2(v14) = 1;
  v7 = [v4 mountPoint];
  v8 = fsctl([v7 fileSystemRepresentation], 0xC0684A87uLL, &v13, 0);

  v9 = v8 == 0;
  if (v8)
  {
    v10 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100030948(v4, v10);
    }
  }

  free(v6);
LABEL_12:

  return v9;
}

+ (id)_volumeInfoFromStatFS:(statfs *)a3 count:(int)a4 usedBytesProvider:(id)a5 volumeManager:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17[0] = 67109120;
    v17[1] = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Creating DSVolumes for %d statfs entries", v17, 8u);
  }

  v12 = +[NSMutableArray array];
  if (a3 && a4 >= 1)
  {
    v13 = a4;
    do
    {
      v14 = [[DSVolume alloc] _initWithStatFS:a3 usedBytesProvider:v9 volumeManager:v10];
      [v12 addObject:v14];

      ++a3;
      --v13;
    }

    while (v13);
  }

  v15 = [v12 copy];

  return v15;
}

+ (id)_safeFilenameForListingVolume:(id)a3 pathExtension:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_10006E590 != -1)
  {
    sub_100030A58();
  }

  if ([v5 isRootVolume])
  {
    v7 = @"RootVolume";
  }

  else
  {
    v8 = [v5 mountPoint];
    v7 = [v8 stringByTrimmingCharactersInSet:qword_10006E588];
  }

  v9 = [v5 mountedFrom];
  v10 = [v9 stringByTrimmingCharactersInSet:qword_10006E588];
  v11 = [NSString stringWithFormat:@"%@-%@", v7, v10];

  v12 = [v11 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  if ([v12 length] >= 0x33)
  {
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v12 hash]);

    v12 = v13;
  }

  v14 = [NSString stringWithFormat:@"%@.%@", v12, v6];

  return v14;
}

+ (id)_safeStringFromStatFSCString:(const char *)a3
{
  v4 = [NSString stringWithCString:a3 encoding:4];
  if (v4)
  {
    v5 = v4;
    goto LABEL_6;
  }

  v6 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100030A6C();
  }

  v5 = [NSString stringWithCString:a3 encoding:4];
  if (v5)
  {
LABEL_6:
    if ([(__CFString *)v5 length])
    {
      goto LABEL_10;
    }
  }

  v7 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100030AD4();
  }

  v5 = @"UNKNOWN";
LABEL_10:
  v8 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100030B3C();
  }

  return v5;
}

+ (void)_getAttributionTagPathsInDirectory:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v37[1] = 0;
  v37[2] = 0x80000000000;
  v37[0] = 0xA000000900000005;
  v7 = malloc_type_malloc(0x8000uLL, 0x982A8E1AuLL);
  if (v7)
  {
    v8 = v7;
    v9 = open([v5 fileSystemRepresentation], 1048832);
    if (v9 < 0)
    {
      v29 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100030C4C(v5);
      }

      free(v8);
    }

    else
    {
      v33 = v9;
      v35 = 0;
      v36 = v5;
      v11 = 0;
      v34 = v6;
      v32 = v8;
      *&v10 = 136315394;
      v31 = v10;
LABEL_4:
      v12 = v32;
      while (1)
      {
        v13 = getattrlistbulk(v33, v37, v32, 0x8000uLL, 0x20uLL);
        if (v13 == -1)
        {
          break;
        }

        v14 = v13;
        if (!v13)
        {
          goto LABEL_37;
        }

        if (v13 >= 1)
        {
          while (1)
          {
            v17 = *v12;
            v18 = v12[1];
            v19 = v12[5];
            if ((v18 & 0x20000000) == 0)
            {
              break;
            }

            v26 = v12[6];
            if (v26)
            {
              v27 = shared_filesystem_metadata_snapshot_service_log_handle();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v16 = [v36 fileSystemRepresentation];
                *buf = v31;
                *&buf[4] = v16;
                *&buf[12] = 1024;
                *&buf[14] = v26;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Error while processing directory %s for attribution tags: %d", buf, 0x12u);
              }

              goto LABEL_26;
            }

            v15 = (v12 + 7);
            if (v18)
            {
              goto LABEL_13;
            }

LABEL_14:
            if ((v18 & 8) != 0 && *v15 == 1 && (v19 & 0x800) != 0)
            {
              v24 = *(v15 + 1);
              if (v24)
              {
                memset(v40, 0, 256);
                *&buf[8] = 0u;
                v39 = 0u;
                *buf = v24;
                if (!fsctl([v11 fileSystemRepresentation], 0xC1284A72uLL, buf, 0))
                {
                  v25 = [NSString stringWithUTF8String:v40];

                  v34[2](v34, v11, v25, *buf);
                  v35 = v25;
                }
              }
            }

LABEL_26:
            v12 = (v12 + v17);
            if (!--v14)
            {
              goto LABEL_4;
            }
          }

          v15 = (v12 + 6);
          if ((v18 & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_13:
          v20 = v15 + 2;
          v21 = [NSString stringWithUTF8String:v15 + *v15, v31];
          v22 = [v36 stringByAppendingPathComponent:v21];

          v15 = v20;
          v11 = v22;
          goto LABEL_14;
        }
      }

      v30 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100030BC0();
      }

LABEL_37:
      free(v32);
      close(v33);

      v5 = v36;
      v6 = v34;
    }
  }

  else
  {
    v28 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_100030CE0(v5);
    }
  }
}

+ (BOOL)_isDirectoryPartOfSAFHierarchy:(id)a3
{
  v3 = a3;
  v6 = 0;
  if (fsctl([v3 fileSystemRepresentation], 0x40084A25uLL, &v6, 0))
  {
    v4 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100030D74(v3);
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    LODWORD(v4) = (BYTE3(v6) >> 5) & 1;
  }

  return v4;
}

+ (void)_getDirStatsType:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0;
  v9 = 1;
  if (fsctl([v5 fileSystemRepresentation], 0xC1104A71uLL, &v8, 0))
  {
    if (*__error() != 45)
    {
      v7 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100030DF8(v5);
      }
    }

    (*(v6 + 2))(v6, v5, 0, 0);
  }

  else
  {
    (*(v6 + 2))(v6, v5, 1, (v9 >> 2) & 1);
  }
}

+ (void)_getSharedExtensInfo:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [a3 fileSystemRepresentation];
  v7 = malloc_type_malloc(0x27100uLL, 0x1000040F6D918ACuLL);
  if (v7)
  {
    v8 = v7;
    v24 = 0u;
    v25 = 0u;
    v26 = v7;
    LODWORD(v25) = 160000;
    v9 = v7 + 16;
    while (!fsctl(v6, 0xC0284A7DuLL, &v24, 0))
    {
      if (DWORD1(v25))
      {
        v10 = 0;
        v11 = DWORD2(v25);
        v12 = v9;
        do
        {
          v13 = *(v12 - 2);
          v14 = *v12;
          (*(v5 + 2))(v5, v13 * v11, *(v12 - 1), *v12 * v11, *(v12 + 2));
          *&v24 = v14 + v13;
          ++v10;
          v12 += 32;
        }

        while (v10 < DWORD1(v25));
        if (DWORD1(v25))
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v23 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100030E8C();
    }

LABEL_15:
    free(v8);
  }

  else
  {
    v15 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100030F18(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }
}

+ (void)_writeCloneGroupsRecordsForVolume:(id)a3 toFile:(__sFILE *)a4 error:(id *)a5
{
  v23 = a3;
  v7 = malloc_type_malloc(0x40000uLL, 0x5868BCDFuLL);
  if (v7)
  {
    v8 = v7;
    v22 = a5;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v25 = v7;
    v26 = 127;
    v27 = 1;
    v28 = 0;
    while (1)
    {
      *(&v25 + 1) = 0x40000;
      if (fsctl([v23 fileSystemRepresentation], 0xC0684A87uLL, v24, 0))
      {
        break;
      }

      if (*(&v25 + 1))
      {
        v16 = 0;
        while (1)
        {
          v17 = v8[v16];
          v18 = v16 + 1;
          if (v17 <= 3)
          {
            if (v8[v16] > 1u)
            {
              if (v17 != 2)
              {
                if (v17 == 3)
                {
                  v12 = *&v8[v18];
                  v18 = v16 + 5;
                }

                goto LABEL_30;
              }

              v11 = *&v8[v18];
            }

            else if (v8[v16])
            {
              v10 = *&v8[v18];
            }

            else
            {
              v9 = *&v8[v18];
            }

            goto LABEL_29;
          }

          if (v8[v16] > 5u)
          {
            if (v17 != 6)
            {
              if (v17 == 255)
              {
                if (fprintf(a4, "%llu\t%llu\t%llu\t%d\t%llu\t%llu\t%llu\n", v9, v10, v11, v12, v15, v13, v14) == -1)
                {
                  v19 = __error();
                  if ((byte_10006E598 & 1) == 0)
                  {
                    v20 = *v19;
                    byte_10006E598 = 1;
                    v21 = shared_filesystem_metadata_snapshot_service_log_handle();
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 67109120;
                      v30 = v20;
                      _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", buf, 8u);
                    }
                  }
                }

                v15 = 0;
                v14 = 0;
                v13 = 0;
                v12 = 0;
                v11 = 0;
                v10 = 0;
                v9 = 0;
              }

              goto LABEL_30;
            }

            v14 = *&v8[v18];
            goto LABEL_29;
          }

          if (v17 == 4)
          {
            break;
          }

          if (v17 == 5)
          {
            v13 = *&v8[v18];
LABEL_29:
            v18 = v16 + 9;
          }

LABEL_30:
          v16 = v18;
          if (v18 >= *(&v25 + 1))
          {
            goto LABEL_31;
          }
        }

        v15 = *&v8[v18];
        goto LABEL_29;
      }

LABEL_31:
      if (v28)
      {
        goto LABEL_38;
      }
    }

    if (v22)
    {
      *v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    free(v8);
  }

  else if (a5)
  {
    *a5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
  }

LABEL_38:
}

+ (void)_getPurgeableRecordsInfo:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [a3 fileSystemRepresentation];
  v7 = malloc_type_malloc(0x8000uLL, 0x1000040FA0F61DDuLL);
  if (v7)
  {
    v8 = v7;
    v14[1] = 0;
    v15 = 0u;
    v16 = 0u;
    v14[2] = 512;
    v17 = v7;
    v14[0] = 6;
    v9 = v7 + 24;
    while (!fsctl(v6, 0xC0404A83uLL, v14, 0))
    {
      if (*(&v16 + 1))
      {
        v10 = 0;
        v11 = v9;
        do
        {
          (*(v5 + 2))(v5, *(v11 - 3), *(v11 - 2), *v11, v11[3]);
          ++v10;
          v11 += 8;
        }

        while (*(&v16 + 1) > v10);
      }

      if (!v16)
      {
        goto LABEL_15;
      }
    }

    v13 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100030F90();
    }

LABEL_15:
    free(v8);
  }

  else
  {
    v12 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003101C(v12);
    }
  }
}

- (BOOL)shouldListContents
{
  if ([(DSVolume *)self isRootVolume])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(DSVolume *)self _flags];
    LODWORD(v3) = (v4 >> 12) & 1;
    if ((v4 & 0x1000) == 0)
    {
      v5 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138543618;
        v9 = self;
        v10 = 1024;
        v11 = [(DSVolume *)self _flags];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping non-local volume %{public}@ (flags: %u)", &v8, 0x12u);
      }
    }

    if (([(DSVolume *)self _flags]& 0x40000000) != 0)
    {
      v3 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(DSVolume *)self _flags];
        v8 = 138543618;
        v9 = self;
        v10 = 1024;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Skipping snapshot volume %{public}@ (flags: %u)", &v8, 0x12u);
      }

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (id)_pathRepresentationForListing:(char *)a3 isDirectory:(BOOL)a4
{
  if (!a3)
  {
    goto LABEL_7;
  }

  v4 = a4;
  v7 = strlen(a3);
  if (!v7)
  {
    goto LABEL_7;
  }

  if (v7 != 1)
  {
    if (a3[v7 - 1] != 47)
    {
      goto LABEL_8;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_29;
  }

  if (*a3 != 47)
  {
LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  v8 = a3[1] != 0;
LABEL_9:
  v10 = [(DSVolume *)self _volumeManager];
  v11 = [v10 _snapshotRequest];
  v12 = [v11 snapshotFileManager];

  if ([v12 shouldHashVolumeListings])
  {
    v13 = [NSURL fileURLWithFileSystemRepresentation:a3 isDirectory:0 relativeToURL:0];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 path];
      if (v4)
      {
        v16 = &stru_100069618;
      }

      else
      {
        v16 = [v14 lastPathComponent];
        v18 = [v14 URLByDeletingLastPathComponent];
        v19 = [v18 path];

        v15 = v19;
      }

      v20 = [v15 hash];
      v21 = [NSNumber numberWithUnsignedInteger:v20];
      v22 = [(DSVolume *)self __hashes];
      v23 = [v22 containsObject:v21];

      if ((v23 & 1) == 0)
      {
        v24 = [(DSVolume *)self __hashes];
        [v24 addObject:v21];

        v25 = [v12 sharedDirectoriesMapFile];
        v26 = [v15 UTF8String];
        v27 = "";
        if (v8)
        {
          v27 = "/";
        }

        if (fprintf(v25, "%lu\t%s%s\n", v20, v26, v27) == -1)
        {
          v28 = __error();
          if ((byte_10006E599 & 1) == 0)
          {
            v29 = *v28;
            byte_10006E599 = 1;
            v30 = shared_filesystem_metadata_snapshot_service_log_handle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              sub_10002FC44();
            }
          }
        }
      }

      v9 = [NSString stringWithFormat:@"<%lu>%@", v20, v16];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v17 = "";
    if (v8 && v4)
    {
      v17 = "/";
    }

    v9 = [NSString stringWithFormat:@"%s%s", a3, v17];
  }

LABEL_29:

  return v9;
}

- (BOOL)listContentsWithEntryCount:(unint64_t *)a3 andError:(id *)a4
{
  v4 = a4;
  if (a4)
  {
    *a4 = 0;
  }

  v6 = self;
  if (![(DSVolume *)v6 shouldListContents])
  {
    v9 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      buf.st_dev = 138412290;
      *&buf.st_mode = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Skipping listing files for volume %@", &buf, 0xCu);
    }

    goto LABEL_14;
  }

  v246 = a3;
  v252 = [(DSVolume *)v6 hasPurgeableFilesCapability];
  v7 = [(DSVolume *)v6 _volumeManager];
  v8 = [v7 _snapshotRequest];
  v9 = [v8 snapshotFileManager];

  v10 = [v9 sharedLogFile];
  v11 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    buf.st_dev = 138412290;
    *&buf.st_mode = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Listing files for volume %@", &buf, 0xCu);
  }

  if (qword_10006E580 != -1)
  {
    sub_10003109C();
  }

  v12 = *&qword_10006E578;
  v13 = [(DSVolume *)v6 safeFilenameForListing];
  v14 = [v9 createFileForWritingWithName:v13 error:v4];

  if (!v14)
  {
    goto LABEL_314;
  }

  if (v6->_supportsAttributionTags)
  {
    v15 = [(DSVolume *)v6 safeFilenameForAttributionTagsListing];
    v16 = [v9 createFileForWritingWithName:v15 error:v4];

    v247 = v16;
    if (!v16)
    {
LABEL_314:
      LOBYTE(v17) = 0;
      goto LABEL_315;
    }
  }

  else
  {
    v18 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(DSVolume *)v6 mountPoint];
      v20 = [v19 UTF8String];
      buf.st_dev = 136315138;
      *&buf.st_mode = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Attribution tags is not supported/enabled on volume %s", &buf, 0xCu);
    }

    v247 = 0;
  }

  if (v6->_shouldCollectDirStatsData)
  {
    v21 = [(DSVolume *)v6 safeFilenameForDirStatsDataListing];
    v22 = [v9 createFileForWritingWithName:v21 error:v4];

    if (!v22)
    {
      goto LABEL_314;
    }
  }

  else
  {
    v22 = 0;
  }

  v271 = 0;
  v272 = 0;
  v23 = [(DSVolume *)v6 mountPoint];
  v271 = [v23 fileSystemRepresentation];
  v272 = 0;

  v255 = fts_open(&v271, 80, 0);
  if (!v255)
  {
    v84 = *__error();
    v85 = [(DSVolume *)v6 mountPoint];
    v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Error opening volume at %s: %d (%s)", [v85 fileSystemRepresentation], v84, strerror(v84));

    if (fprintf(v10, "%s\n", [(FILE *)v17 UTF8String]) == -1)
    {
      v86 = __error();
      if ((byte_10006E59A & 1) == 0)
      {
        v87 = *v86;
        byte_10006E59A = 1;
        v88 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v89 = v9;
    v90 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      sub_100031308(v17);
    }

    if (v4)
    {
      v91 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v84 userInfo:0];
      v269[0] = NSUnderlyingErrorKey;
      v269[1] = NSLocalizedDescriptionKey;
      v270[0] = v91;
      v270[1] = v17;
      v92 = [NSDictionary dictionaryWithObjects:v270 forKeys:v269 count:2];
      *v4 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65544 userInfo:v92];
    }

    LOBYTE(v17) = 0;
    v9 = v89;
    goto LABEL_315;
  }

  if (fprintf(v14, "%s\t%s\n", "Version:", "1013") == -1)
  {
    v24 = __error();
    if ((byte_10006E59B & 1) == 0)
    {
      v25 = *v24;
      byte_10006E59B = 1;
      v26 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v27 = [v9 shouldHashVolumeListings];
  v28 = "NO";
  if (v27)
  {
    v28 = "YES";
  }

  if (fprintf(v14, "%s\t%s\n", "Hashed:", v28) == -1)
  {
    v29 = __error();
    if ((byte_10006E59C & 1) == 0)
    {
      v30 = *v29;
      byte_10006E59C = 1;
      v31 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (fprintf(v14, "%s\t%lld\n", "Total:", [(DSVolume *)v6 capacityBytes]) == -1)
  {
    v32 = __error();
    if ((byte_10006E59D & 1) == 0)
    {
      v33 = *v32;
      byte_10006E59D = 1;
      v34 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (fprintf(v14, "%s\t%lld\n", "Used:", [(DSVolume *)v6 usedBytes]) == -1)
  {
    v35 = __error();
    if ((byte_10006E59E & 1) == 0)
    {
      v36 = *v35;
      byte_10006E59E = 1;
      v37 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (fprintf(v14, "%s\t%lld\n", "Free:", [(DSVolume *)v6 freeBytes]) == -1)
  {
    v38 = __error();
    if ((byte_10006E59F & 1) == 0)
    {
      v39 = *v38;
      byte_10006E59F = 1;
      v40 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (fprintf(v14, "------------------------------------------------------------------------------------------------\n") == -1)
  {
    v41 = __error();
    if ((byte_10006E5A0 & 1) == 0)
    {
      v42 = *v41;
      byte_10006E5A0 = 1;
      v43 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v243 = v22;
  v253 = v10;
  if (fprintf(v14, "%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n", "Size-On-Disk", "File-Size", "Compression", "FS-Purgeable-Flags", "mtime", "Mode", "UID", "GID", "Path") == -1)
  {
    v44 = __error();
    if ((byte_10006E5A1 & 1) == 0)
    {
      v45 = *v44;
      byte_10006E5A1 = 1;
      v46 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (fprintf(v14, "------------------------------------------------------------------------------------------------\n") == -1)
  {
    v47 = __error();
    if ((byte_10006E5A2 & 1) == 0)
    {
      v48 = *v47;
      byte_10006E5A2 = 1;
      v49 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (fprintf(v14, "<BEGIN>\n") == -1)
  {
    v50 = __error();
    if ((byte_10006E5A3 & 1) == 0)
    {
      v51 = *v50;
      byte_10006E5A3 = 1;
      v52 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (v6->_supportsAttributionTags)
  {
    if (fprintf(v247, "------------------------------------------------------------------------------------------------\n") == -1)
    {
      v53 = __error();
      if ((byte_10006E5A4 & 1) == 0)
      {
        v54 = *v53;
        byte_10006E5A4 = 1;
        v55 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (fprintf(v247, "%s\t%s\t%s\n", "Tag-Owner", "Tag-Hash", "Path") == -1)
    {
      v56 = __error();
      if ((byte_10006E5A5 & 1) == 0)
      {
        v57 = *v56;
        byte_10006E5A5 = 1;
        v58 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (fprintf(v247, "------------------------------------------------------------------------------------------------\n") == -1)
    {
      v59 = __error();
      if ((byte_10006E5A6 & 1) == 0)
      {
        v60 = *v59;
        byte_10006E5A6 = 1;
        v61 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (fprintf(v247, "<BEGIN>\n") == -1)
    {
      v62 = __error();
      if ((byte_10006E5A7 & 1) == 0)
      {
        v63 = *v62;
        byte_10006E5A7 = 1;
        v64 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }
  }

  if (v6->_shouldCollectDirStatsData)
  {
    if (fprintf(v22, "------------------------------------------------------------------------------------------------\n") == -1)
    {
      v65 = __error();
      if ((byte_10006E5A8 & 1) == 0)
      {
        v66 = *v65;
        byte_10006E5A8 = 1;
        v67 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (fprintf(v22, "%s\t%s\n", "Path", "SAFDirStats") == -1)
    {
      v68 = __error();
      if ((byte_10006E5A9 & 1) == 0)
      {
        v69 = *v68;
        byte_10006E5A9 = 1;
        v70 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (fprintf(v22, "------------------------------------------------------------------------------------------------\n") == -1)
    {
      v71 = __error();
      if ((byte_10006E5AA & 1) == 0)
      {
        v72 = *v71;
        byte_10006E5AA = 1;
        v73 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (fprintf(v22, "<BEGIN>\n") == -1)
    {
      v74 = __error();
      if ((byte_10006E5AB & 1) == 0)
      {
        v75 = *v74;
        byte_10006E5AB = 1;
        v76 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }
  }

  memset(&buf, 0, sizeof(buf));
  if (!fstatat(-2, v271, &buf, 544))
  {
    v242 = v9;
    v93 = fts_read(v255);
    if (v93)
    {
      v94 = v93;
      v249 = 0;
      v254 = 0;
      v244 = 0;
      v95 = 1000.0 / v12;
      v248 = v14;
      v245 = v4;
      while (1)
      {
        v96 = objc_autoreleasePoolPush();
        fts_info = v94->fts_info;
        if (fts_info <= 0xD)
        {
          if (((1 << fts_info) & 0x490) != 0)
          {
            v99 = v96;
            v100 = *__error();
            fts_path = v94->fts_path;
            v102 = strerror(v100);
            if (fprintf(v253, "Error reading file at %s: %d (%s)\n", fts_path, v100, v102) == -1)
            {
              v103 = __error();
              if ((byte_10006E5AD & 1) == 0)
              {
                v104 = *v103;
                byte_10006E5AD = 1;
                v105 = shared_filesystem_metadata_snapshot_service_log_handle();
                if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
                {
                  *v264 = 67109120;
                  LODWORD(v265) = v104;
                  _os_log_fault_impl(&_mh_execute_header, v105, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", v264, 8u);
                }
              }
            }

            v106 = shared_filesystem_metadata_snapshot_service_log_handle();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              v156 = v94->fts_path;
              v157 = strerror(v100);
              *v264 = 136315650;
              v265 = v156;
              v266 = 1024;
              *v267 = v100;
              *&v267[4] = 2080;
              *&v267[6] = v157;
              _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "Error reading file at %s: %d (%s)", v264, 0x1Cu);
            }

            v96 = v99;
          }

          else
          {
            if (((1 << fts_info) & 0x3100) != 0)
            {
              context = v96;
              v98 = 0;
              goto LABEL_153;
            }

            if (fts_info == 1)
            {
              context = v96;
              v107 = [NSString stringWithUTF8String:v94->fts_path];
              if (v6->_supportsAttributionTags && ![DSVolume _isDirectoryPartOfSAFHierarchy:v107])
              {
                v261[0] = _NSConcreteStackBlock;
                v261[1] = 3221225472;
                v261[2] = sub_10000F664;
                v261[3] = &unk_100068970;
                v261[4] = v6;
                v261[5] = v253;
                v261[6] = v247;
                [DSVolume _getAttributionTagPathsInDirectory:v107 reply:v261];
              }

              if (v6->_shouldCollectDirStatsData)
              {
                v260[0] = _NSConcreteStackBlock;
                v260[1] = 3221225472;
                v260[2] = sub_10000F8CC;
                v260[3] = &unk_100068998;
                v260[4] = v6;
                v260[5] = v94;
                v260[6] = v253;
                v260[7] = v243;
                [DSVolume _getDirStatsType:v107 reply:v260];
              }

              v98 = 1;
LABEL_153:
              v108 = v94->fts_path;
              v109 = &off_100068958;
              v110 = "/System/Library/Caches/com.apple.factorydata";
              while (strcmp(v110, v108))
              {
                v111 = *v109++;
                v110 = v111;
                if (!v111)
                {
                  goto LABEL_165;
                }
              }

              if (fprintf(v253, "Skipping descendents of blocklisted directory at %s\n", v108) == -1)
              {
                v112 = __error();
                if ((byte_10006E5B3 & 1) == 0)
                {
                  v113 = *v112;
                  byte_10006E5B3 = 1;
                  v114 = shared_filesystem_metadata_snapshot_service_log_handle();
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_FAULT))
                  {
                    *v264 = 67109120;
                    LODWORD(v265) = v113;
                    _os_log_fault_impl(&_mh_execute_header, v114, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", v264, 8u);
                  }
                }
              }

              v115 = shared_filesystem_metadata_snapshot_service_log_handle();
              if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
              {
                v116 = v94->fts_path;
                *v264 = 136315138;
                v265 = v116;
                _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "Skipping descendents of blocklisted directory at %s", v264, 0xCu);
              }

              fts_set(v255, v94, 4);
LABEL_165:
              fts_statp = v94->fts_statp;
              st_blocks = fts_statp->st_blocks;
              st_size = fts_statp->st_size;
              if (v98)
              {
                v119 = 45;
              }

              else if ((fts_statp->st_flags & 0x20) != 0)
              {
                v119 = 99;
              }

              else
              {
                v119 = 45;
              }

              v259 = 0;
              if (v252 && v94->fts_info == 8 && fsctl(v94->fts_path, 0x40084A47uLL, &v259, 0))
              {
                v120 = *__error();
                v121 = v94->fts_path;
                v122 = strerror(v120);
                if (fprintf(v253, "Error getting purgeable flags for file at %s: %d (%s)\n", v121, v120, v122) == -1)
                {
                  v123 = __error();
                  if ((byte_10006E5B4 & 1) == 0)
                  {
                    v124 = *v123;
                    byte_10006E5B4 = 1;
                    v125 = shared_filesystem_metadata_snapshot_service_log_handle();
                    if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
                    {
                      *v264 = 67109120;
                      LODWORD(v265) = v124;
                      _os_log_fault_impl(&_mh_execute_header, v125, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", v264, 8u);
                    }
                  }
                }

                v126 = shared_filesystem_metadata_snapshot_service_log_handle();
                if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                {
                  v159 = v94->fts_path;
                  v160 = strerror(v120);
                  *v264 = 136315650;
                  v265 = v159;
                  v266 = 1024;
                  *v267 = v120;
                  *&v267[4] = 2080;
                  *&v267[6] = v160;
                  _os_log_error_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "Error getting purgeable flags for file at %s: %d (%s)", v264, 0x1Cu);
                }

                v259 = -1;
              }

              v127 = st_blocks << 9;
              v128 = v94->fts_statp;
              tv_sec = v128->st_mtimespec.tv_sec;
              st_mode = v128->st_mode;
              st_uid = v128->st_uid;
              st_gid = v128->st_gid;
              v133 = [(DSVolume *)v6 _pathRepresentationForListing:v94->fts_path isDirectory:v98];
              v134 = v133;
              if (v133)
              {
                v14 = v248;
                v135 = v254;
                if (fprintf(v248, "%llu\t%llu\t%c\t%llu\t%ld\t%u\t%u\t%u\t%s\n", v127, st_size, v119, v259, tv_sec, st_mode, st_uid, st_gid, [v133 UTF8String]) == -1)
                {
                  v136 = __error();
                  if ((byte_10006E5B6 & 1) == 0)
                  {
                    v137 = *v136;
                    byte_10006E5B6 = 1;
                    v138 = shared_filesystem_metadata_snapshot_service_log_handle();
                    if (os_log_type_enabled(v138, OS_LOG_TYPE_FAULT))
                    {
                      *v264 = 67109120;
                      LODWORD(v265) = v137;
                      _os_log_fault_impl(&_mh_execute_header, v138, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", v264, 8u);
                    }
                  }
                }

                ++v249;
              }

              else
              {
                if (fprintf(v253, "Error getting hashed path for %s (isDir: %d)\n", v94->fts_path, v98) == -1)
                {
                  v139 = __error();
                  if ((byte_10006E5B5 & 1) == 0)
                  {
                    v140 = *v139;
                    byte_10006E5B5 = 1;
                    v141 = shared_filesystem_metadata_snapshot_service_log_handle();
                    if (os_log_type_enabled(v141, OS_LOG_TYPE_FAULT))
                    {
                      *v264 = 67109120;
                      LODWORD(v265) = v140;
                      _os_log_fault_impl(&_mh_execute_header, v141, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", v264, 8u);
                    }
                  }
                }

                v142 = shared_filesystem_metadata_snapshot_service_log_handle();
                if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
                {
                  v158 = v94->fts_path;
                  *v264 = 136315394;
                  v265 = v158;
                  v266 = 1024;
                  *v267 = v98;
                  _os_log_error_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "Error getting hashed path for %s (isDir: %d)", v264, 0x12u);
                }

                v14 = v248;
                v135 = v254;
              }

              v143 = v127 + v135;
              v144 = [(DSVolume *)v6 progress];
              [v144 fractionCompleted];
              v146 = v145;

              v254 = v143;
              if (v146 >= 1.0)
              {
                v4 = v245;
              }

              else
              {
                v4 = v245;
                if (v143 >= 10485760)
                {
                  v147 = mach_absolute_time();
                  if (v95 <= (v147 - v244))
                  {
                    v148 = v147;
                    v149 = [(DSVolume *)v6 progress];
                    v150 = [v149 completedUnitCount] + v254;

                    v151 = [(DSVolume *)v6 progress];
                    v152 = [v151 totalUnitCount];

                    if (v150 >= v152)
                    {
                      v153 = v152;
                    }

                    else
                    {
                      v153 = v150;
                    }

                    v154 = [(DSVolume *)v6 progress];
                    [v154 setCompletedUnitCount:v153];

                    v155 = shared_filesystem_metadata_snapshot_service_log_handle();
                    if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
                    {
                      sub_100031168(v262, v6, &v263, v155);
                    }

                    v254 = 0;
                    v244 = v148;
                    v14 = v248;
                  }
                }
              }

              v96 = context;
            }
          }
        }

        objc_autoreleasePoolPop(v96);
        v94 = fts_read(v255);
        if (!v94)
        {
          goto LABEL_210;
        }
      }
    }

    v249 = 0;
LABEL_210:
    fts_close(v255);
    v9 = v242;
    if (fprintf(v14, "<END>\n") == -1)
    {
      v161 = __error();
      if ((byte_10006E5B7 & 1) == 0)
      {
        v162 = *v161;
        byte_10006E5B7 = 1;
        v163 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (v6->_supportsAttributionTags && fprintf(v247, "<END>\n") == -1)
    {
      v164 = __error();
      if ((byte_10006E5B8 & 1) == 0)
      {
        v165 = *v164;
        byte_10006E5B8 = 1;
        v166 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v166, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (v6->_shouldCollectDirStatsData && fprintf(v243, "<END>\n") == -1)
    {
      v167 = __error();
      if ((byte_10006E5B9 & 1) == 0)
      {
        v168 = *v167;
        byte_10006E5B9 = 1;
        v169 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v169, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (v6->_supportsSharedExtents)
    {
      v170 = [(DSVolume *)v6 safeFilenameForSharedExtentsListing];
      v17 = [v242 createFileForWritingWithName:v170 error:v4];

      if (!v17)
      {
        goto LABEL_315;
      }

      if (fprintf(v17, "------------------------------------------------------------------------------------------------\n") == -1)
      {
        v171 = __error();
        if ((byte_10006E5BA & 1) == 0)
        {
          v172 = *v171;
          byte_10006E5BA = 1;
          v173 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v173, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v17, "%s\t%s\t%s\t%s\n", "Physical-Block-Number", "Owning-Obj-Id", "Size", "Reference-Count") == -1)
      {
        v174 = __error();
        if ((byte_10006E5BB & 1) == 0)
        {
          v175 = *v174;
          byte_10006E5BB = 1;
          v176 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v176, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v17, "------------------------------------------------------------------------------------------------\n") == -1)
      {
        v177 = __error();
        if ((byte_10006E5BC & 1) == 0)
        {
          v178 = *v177;
          byte_10006E5BC = 1;
          v179 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v179, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v17, "<BEGIN>\n") == -1)
      {
        v180 = __error();
        if ((byte_10006E5BD & 1) == 0)
        {
          v181 = *v180;
          byte_10006E5BD = 1;
          v182 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      v183 = [(DSVolume *)v6 mountPoint];
      v258[0] = _NSConcreteStackBlock;
      v258[1] = 3221225472;
      v258[2] = sub_10000FA44;
      v258[3] = &unk_1000689B8;
      v258[4] = v17;
      [DSVolume _getSharedExtensInfo:v183 reply:v258];

      if (fprintf(v17, "<END>\n") == -1)
      {
        v184 = __error();
        if ((byte_10006E5BF & 1) == 0)
        {
          v185 = *v184;
          byte_10006E5BF = 1;
          v186 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v186, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }
    }

    if (v6->_supportsPurgeableRecords)
    {
      v187 = [(DSVolume *)v6 safeFilenameForPurgeableRecordsListing];
      v17 = [v242 createFileForWritingWithName:v187 error:v4];

      if (!v17)
      {
        goto LABEL_315;
      }

      if (fprintf(v17, "------------------------------------------------------------------------------------------------\n") == -1)
      {
        v188 = __error();
        if ((byte_10006E5C0 & 1) == 0)
        {
          v189 = *v188;
          byte_10006E5C0 = 1;
          v190 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v190, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v17, "%s\t%s\t%s\t%s\n", "Inode-Number", "Purgeable-Flags", "Last-Access-Time", "Purgeable-Size") == -1)
      {
        v191 = __error();
        if ((byte_10006E5C1 & 1) == 0)
        {
          v192 = *v191;
          byte_10006E5C1 = 1;
          v193 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v193, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v17, "------------------------------------------------------------------------------------------------\n") == -1)
      {
        v194 = __error();
        if ((byte_10006E5C2 & 1) == 0)
        {
          v195 = *v194;
          byte_10006E5C2 = 1;
          v196 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v196, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v17, "<BEGIN>\n") == -1)
      {
        v197 = __error();
        if ((byte_10006E5C3 & 1) == 0)
        {
          v198 = *v197;
          byte_10006E5C3 = 1;
          v199 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v199, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      v200 = [(DSVolume *)v6 mountPoint];
      v257[0] = _NSConcreteStackBlock;
      v257[1] = 3221225472;
      v257[2] = sub_10000FAD0;
      v257[3] = &unk_1000689D8;
      v257[4] = v17;
      [DSVolume _getPurgeableRecordsInfo:v200 reply:v257];

      if (fprintf(v17, "<END>\n") == -1)
      {
        v201 = __error();
        if ((byte_10006E5C5 & 1) == 0)
        {
          v202 = *v201;
          byte_10006E5C5 = 1;
          v203 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v203, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }
    }

    if (v6->_supportsCloneGroups)
    {
      v204 = [(DSVolume *)v6 safeFilenameForCloneGroupsListing];
      v17 = [v242 createFileForWritingWithName:v204 error:v4];

      if (!v17)
      {
        goto LABEL_315;
      }

      if (fprintf(v17, "------------------------------------------------------------------------------------------------\n") == -1)
      {
        v205 = __error();
        if ((byte_10006E5C6 & 1) == 0)
        {
          v206 = *v205;
          byte_10006E5C6 = 1;
          v207 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v17, "%s\t%s\t%s\t%s\t%s\t%s\t%s\n", "Inode-Number", "Group", "Private-ID", "Flags", "Physical-Size", "DirStat-ID", "Tag-Hash") == -1)
      {
        v208 = __error();
        if ((byte_10006E5C7 & 1) == 0)
        {
          v209 = *v208;
          byte_10006E5C7 = 1;
          v210 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v210, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v17, "------------------------------------------------------------------------------------------------\n") == -1)
      {
        v211 = __error();
        if ((byte_10006E5C8 & 1) == 0)
        {
          v212 = *v211;
          byte_10006E5C8 = 1;
          v213 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v213, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v17, "<BEGIN>\n") == -1)
      {
        v214 = __error();
        if ((byte_10006E5C9 & 1) == 0)
        {
          v215 = *v214;
          byte_10006E5C9 = 1;
          v216 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v216, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      v217 = [(DSVolume *)v6 mountPoint];
      v256 = 0;
      [DSVolume _writeCloneGroupsRecordsForVolume:v217 toFile:v17 error:&v256];
      v218 = v256;

      if (v218)
      {
        v9 = v242;
        if (v4)
        {
          v219 = v218;
          *v4 = v218;
        }

        v220 = [v218 description];
        v221 = fprintf(v253, "Failed to get clone groups records with %s\n", [v220 fileSystemRepresentation]);

        if (v221 == -1)
        {
          v222 = __error();
          if ((byte_10006E5CA & 1) == 0)
          {
            v223 = *v222;
            byte_10006E5CA = 1;
            v224 = shared_filesystem_metadata_snapshot_service_log_handle();
            if (os_log_type_enabled(v224, OS_LOG_TYPE_FAULT))
            {
              sub_10002FC44();
            }
          }
        }

        v225 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
        {
          sub_1000311E0(v218);
        }

        goto LABEL_314;
      }

      v9 = v242;
      if (fprintf(v17, "<END>\n") == -1)
      {
        v227 = __error();
        if ((byte_10006E5CB & 1) == 0)
        {
          v228 = *v227;
          byte_10006E5CB = 1;
          v229 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v229, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }
    }

    fflush(v14);
    v230 = [(DSVolume *)v6 progress];
    v231 = [v230 totalUnitCount];
    v232 = [(DSVolume *)v6 progress];
    [v232 setCompletedUnitCount:v231];

    v233 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
    {
      sub_100031274(v6, v233);
    }

    v234 = [(DSVolume *)v6 description];
    v235 = fprintf(v253, "Done listing contents (%llu entries) for %s\n", v249, [v234 UTF8String]);

    if (v235 == -1)
    {
      v236 = __error();
      if ((byte_10006E5CC & 1) == 0)
      {
        v237 = *v236;
        byte_10006E5CC = 1;
        v238 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v238, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v239 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
    {
      v240 = [(DSVolume *)v6 description];
      v241 = [v240 UTF8String];
      *v264 = 134218242;
      v265 = v249;
      v266 = 2080;
      *v267 = v241;
      _os_log_impl(&_mh_execute_header, v239, OS_LOG_TYPE_DEFAULT, "Done listing contents (%llu entries) for %s", v264, 0x16u);
    }

    if (v246)
    {
      *v246 = v249;
    }

LABEL_14:
    LOBYTE(v17) = 1;
    goto LABEL_315;
  }

  v77 = __error();
  v17 = *v77;
  v78 = v271;
  v79 = strerror(*v77);
  if (fprintf(v253, "fstatat() failed for [parent] file at %s/..: %d (%s)\n", v78, v17, v79) == -1)
  {
    v80 = __error();
    if ((byte_10006E5AC & 1) == 0)
    {
      v81 = *v80;
      byte_10006E5AC = 1;
      v82 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v83 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
  {
    sub_1000310C4(&v271, v17);
  }

  if (!v4)
  {
    goto LABEL_314;
  }

  [NSError errorWithDomain:NSPOSIXErrorDomain code:v17 userInfo:0];
  *v4 = LOBYTE(v17) = 0;
LABEL_315:

  return v17;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  if (self->_isRootVolume)
  {
    v6 = @" [RootVolume]";
  }

  else
  {
    v6 = &stru_100069618;
  }

  v7 = [NSString stringWithFormat:@"<%@: %p> %@ (%@)%@", v4, self, self->_mountPoint, self->_mountedFrom, v6];

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  if (self->_isRootVolume)
  {
    v6 = @" [RootVolume]";
  }

  else
  {
    v6 = &stru_100069618;
  }

  v7 = [NSString stringWithFormat:@"<%@> %@ (%@)%@", v4, self->_mountPoint, self->_mountedFrom, v6];

  return v7;
}

- (id)_initWithStatFS:(statfs *)a3 usedBytesProvider:(id)a4 volumeManager:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v38.receiver = self;
    v38.super_class = DSVolume;
    v10 = [(DSVolume *)&v38 init];
    if (v10)
    {
      v11 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        f_mntonname = a3->f_mntonname;
        v41 = 2082;
        f_mntfromname = a3->f_mntfromname;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Creating DSVolume for %{public}s (%{public}s)", buf, 0x16u);
      }

      objc_storeWeak(&v10->__volumeManager, v9);
      v12 = [objc_opt_class() _safeStringFromStatFSCString:a3->f_mntonname];
      mountPoint = v10->_mountPoint;
      v10->_mountPoint = v12;

      v14 = [objc_opt_class() _safeStringFromStatFSCString:a3->f_mntfromname];
      mountedFrom = v10->_mountedFrom;
      v10->_mountedFrom = v14;

      v16 = [objc_opt_class() _safeStringFromStatFSCString:a3->f_fstypename];
      filesystemTypeName = v10->__filesystemTypeName;
      v10->__filesystemTypeName = v16;

      f_bsize = a3->f_bsize;
      v10->_capacityBytes = a3->f_blocks * f_bsize;
      v10->_freeBytes = a3->f_bavail * f_bsize;
      v10->_usedBytes = v8[2](v8, a3);
      f_flags = a3->f_flags;
      v10->__flags = f_flags;
      if ((f_flags & 0x4000) != 0)
      {
        v10->_isRootVolume = 1;
      }

      v20 = objc_alloc_init(NSMutableSet);
      hashes = v10->___hashes;
      v10->___hashes = v20;

      v22 = [NSProgress progressWithTotalUnitCount:v10->_usedBytes];
      progress = v10->_progress;
      v10->_progress = v22;

      v24 = [objc_opt_class() _safeFilenameForListingVolume:v10 pathExtension:@"fslisting"];
      safeFilenameForListing = v10->_safeFilenameForListing;
      v10->_safeFilenameForListing = v24;

      v26 = [objc_opt_class() _safeFilenameForListingVolume:v10 pathExtension:@"attrstaglisting"];
      safeFilenameForAttributionTagsListing = v10->_safeFilenameForAttributionTagsListing;
      v10->_safeFilenameForAttributionTagsListing = v26;

      v28 = [objc_opt_class() _safeFilenameForListingVolume:v10 pathExtension:@"dirstatsdatalisting"];
      safeFilenameForDirStatsDataListing = v10->_safeFilenameForDirStatsDataListing;
      v10->_safeFilenameForDirStatsDataListing = v28;

      v30 = [objc_opt_class() _safeFilenameForListingVolume:v10 pathExtension:@"sharedextentslisting"];
      safeFilenameForSharedExtentsListing = v10->_safeFilenameForSharedExtentsListing;
      v10->_safeFilenameForSharedExtentsListing = v30;

      v32 = [objc_opt_class() _safeFilenameForListingVolume:v10 pathExtension:@"purgeablerecordslisting"];
      safeFilenameForPurgeableRecordsListing = v10->_safeFilenameForPurgeableRecordsListing;
      v10->_safeFilenameForPurgeableRecordsListing = v32;

      v34 = [objc_opt_class() _safeFilenameForListingVolume:v10 pathExtension:@"clonegrouplisting"];
      safeFilenameForCloneGroupsListing = v10->_safeFilenameForCloneGroupsListing;
      v10->_safeFilenameForCloneGroupsListing = v34;

      v10->_hasPurgeableFilesCapability = [objc_opt_class() __checkPurgeableFilesCapabilityForVolume:v10];
      v10->_supportsAttributionTags = [objc_opt_class() __checkAttributionTagsCapabilityForVolume:v10];
      v10->_shouldCollectDirStatsData = [objc_opt_class() __checkDirStatsDataCapabilityForVolume:v10];
      v10->_supportsSharedExtents = [objc_opt_class() __checkDirStatsDataCapabilityForVolume:v10];
      v10->_supportsPurgeableRecords = [objc_opt_class() __checkDirStatsDataCapabilityForVolume:v10];
      v10->_supportsCloneGroups = [objc_opt_class() __checkCloneGroupCapabilityForVolume:v10];
    }

    self = v10;
    v36 = self;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (DSVolumeManager)_volumeManager
{
  WeakRetained = objc_loadWeakRetained(&self->__volumeManager);

  return WeakRetained;
}

@end