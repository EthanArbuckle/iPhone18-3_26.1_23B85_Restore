@interface DSVolumeManager
+ (id)_filterVolumes:(id)a3 usingAllowList:(id)a4;
- (BOOL)_discoverVolumesUsingStatFSProvider:(id)a3 usedBytesProvider:(id)a4 error:(id *)a5;
- (BOOL)discoverVolumesWithError:(id *)a3;
- (DSSnapshotRequest)_snapshotRequest;
- (NSDictionary)allVolumesInfoDict;
- (id)__stockStatFSProvider;
- (id)__stockUsedBytesProvider;
- (id)initForSnapshotRequest:(id)a3;
@end

@implementation DSVolumeManager

+ (id)_filterVolumes:(id)a3 usingAllowList:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v25;
    *&v10 = 138543618;
    v23 = v10;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if (![v14 shouldListContents] || v6 && objc_msgSend(v6, "count") && (objc_msgSend(v14, "mountPoint"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v6, "containsObject:", v15), v15, (v16 & 1) == 0))
        {
          v19 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v14 _flags];
            *buf = v23;
            v29 = v14;
            v30 = 1024;
            v31 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Skipping volume %{public}@ (flags: %u)", buf, 0x12u);
          }
        }

        else
        {
          v17 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v14 _flags];
            *buf = v23;
            v29 = v14;
            v30 = 1024;
            v31 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Including volume %{public}@ (flags: %u)", buf, 0x12u);
          }

          [v7 addObject:v14];
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v11);
  }

  v21 = [v7 copy];

  return v21;
}

- (id)__stockStatFSProvider
{
  if (qword_10006E5D8 != -1)
  {
    sub_100031528();
  }

  v2 = objc_retainBlock(qword_10006E5D0);

  return v2;
}

- (id)__stockUsedBytesProvider
{
  if (qword_10006E5E8 != -1)
  {
    sub_1000315C8();
  }

  v2 = objc_retainBlock(qword_10006E5E0);

  return v2;
}

- (NSDictionary)allVolumesInfoDict
{
  v2 = self;
  allVolumesInfoDict = self->_allVolumesInfoDict;
  if (!allVolumesInfoDict)
  {
    v24 = objc_alloc_init(NSMutableDictionary);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [(DSVolumeManager *)v2 _allVolumes];
    v25 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v25)
    {
      v22 = *v35;
      v23 = v2;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v34 + 1) + 8 * i);
          v6 = [(DSVolumeManager *)v2 volumesForSnapshotting];
          v7 = [v6 containsObject:v5];

          v40[0] = @"CloneGroupRecordsFileName";
          v33 = [v5 safeFilenameForCloneGroupsListing];
          v41[0] = v33;
          v40[1] = @"PurgeableRecordsFilename";
          v32 = [v5 safeFilenameForPurgeableRecordsListing];
          v41[1] = v32;
          v40[2] = @"SharedExtentsFilename";
          v31 = [v5 safeFilenameForSharedExtentsListing];
          v41[2] = v31;
          v40[3] = @"DirStatsDataFilename";
          v30 = [v5 safeFilenameForDirStatsDataListing];
          v41[3] = v30;
          v40[4] = @"AttributionTagFilename";
          v29 = [v5 safeFilenameForAttributionTagsListing];
          v41[4] = v29;
          v40[5] = @"FSListingFilename";
          v28 = [v5 safeFilenameForListing];
          v41[5] = v28;
          v40[6] = @"MountedFrom";
          v27 = [v5 mountedFrom];
          v41[6] = v27;
          v40[7] = @"MountPoint";
          v26 = [v5 mountPoint];
          v41[7] = v26;
          v40[8] = @"FSTypeName";
          v8 = [v5 _filesystemTypeName];
          v41[8] = v8;
          v40[9] = @"IsRootVolume";
          v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isRootVolume]);
          v41[9] = v9;
          v40[10] = @"FSFlags";
          v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 _flags]);
          v41[10] = v10;
          v40[11] = @"HasFSListing";
          v11 = [NSNumber numberWithBool:v7];
          v41[11] = v11;
          v40[12] = @"CapacityBytes";
          v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 capacityBytes]);
          v41[12] = v12;
          v40[13] = @"UsedBytes";
          v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 usedBytes]);
          v41[13] = v13;
          v40[14] = @"FreeBytes";
          v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 freeBytes]);
          v41[14] = v14;
          v15 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:15];
          v16 = [v5 mountPoint];
          [v24 setObject:v15 forKeyedSubscript:v16];

          v2 = v23;
        }

        v25 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v25);
    }

    v38 = @"Volumes";
    v17 = [v24 copy];
    v39 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v19 = v2->_allVolumesInfoDict;
    v2->_allVolumesInfoDict = v18;

    allVolumesInfoDict = v2->_allVolumesInfoDict;
  }

  return allVolumesInfoDict;
}

- (BOOL)_discoverVolumesUsingStatFSProvider:(id)a3 usedBytesProvider:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Discovering volumes", buf, 2u);
  }

  if (!v8)
  {
    v31 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1000316D8(v31, v32, v33, v34, v35, v36, v37, v38);
    }

    v62 = NSLocalizedDescriptionKey;
    v63 = @"StatFS provider cannot be nil";
    v39 = &v63;
    v40 = &v62;
    goto LABEL_25;
  }

  if (!v9)
  {
    v41 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_100031660(v41, v42, v43, v44, v45, v46, v47, v48);
    }

    v60 = NSLocalizedDescriptionKey;
    v61 = @"Used bytes provider cannot be nil";
    v39 = &v61;
    v40 = &v60;
LABEL_25:
    v49 = [NSDictionary dictionaryWithObjects:v39 forKeys:v40 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65540 userInfo:v49];

    if (a5)
    {
      v50 = v13;
      v14 = 0;
      *a5 = v13;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_34;
  }

  v55 = 0;
  v54 = 0;
  v11 = objc_autoreleasePoolPush();
  v53 = 0;
  v12 = v8[2](v8, &v55, &v54, &v53);
  v13 = v53;
  objc_autoreleasePoolPop(v11);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v15 = shared_filesystem_metadata_snapshot_service_log_handle();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v57) = v54;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Found %d volumes", buf, 8u);
    }

    v17 = objc_autoreleasePoolPush();
    v18 = [DSVolume _volumeInfoFromStatFS:v55 count:v54 usedBytesProvider:v9 volumeManager:self];
    allVolumes = self->__allVolumes;
    self->__allVolumes = v18;

    if (v55)
    {
      free(v55);
    }

    v20 = [(DSVolumeManager *)self _snapshotRequest];
    v21 = [v20 options];
    v22 = [v21 objectForKeyedSubscript:@"FilesystemMetadatSnapshotOptionMountPointsAllowListArray"];

    v23 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(DSVolumeManager *)self _allVolumes];
      *buf = 138412546;
      v57 = v24;
      v58 = 2112;
      v59 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "All Volumes List: %@\nMount Points Allow List: %@", buf, 0x16u);
    }

    v25 = objc_opt_class();
    v26 = [(DSVolumeManager *)self _allVolumes];
    v27 = [v25 _filterVolumes:v26 usingAllowList:v22];
    volumesForSnapshotting = self->_volumesForSnapshotting;
    self->_volumesForSnapshotting = v27;

    v29 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(DSVolumeManager *)self volumesForSnapshotting];
      *buf = 138543362;
      v57 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Volumes for snapshotting: %{public}@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    if (a5)
    {
      *a5 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10003153C(v13);
    }

    if (a5)
    {
      v51 = v13;
      *a5 = v13;
    }

    if (v55)
    {
      free(v55);
    }
  }

LABEL_34:

  return v14;
}

- (BOOL)discoverVolumesWithError:(id *)a3
{
  v5 = [(DSVolumeManager *)self __stockStatFSProvider];
  v6 = [(DSVolumeManager *)self __stockUsedBytesProvider];
  LOBYTE(a3) = [(DSVolumeManager *)self _discoverVolumesUsingStatFSProvider:v5 usedBytesProvider:v6 error:a3];

  return a3;
}

- (id)initForSnapshotRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = DSVolumeManager;
    v5 = [(DSVolumeManager *)&v9 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->__snapshotRequest, v4);
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (DSSnapshotRequest)_snapshotRequest
{
  WeakRetained = objc_loadWeakRetained(&self->__snapshotRequest);

  return WeakRetained;
}

@end