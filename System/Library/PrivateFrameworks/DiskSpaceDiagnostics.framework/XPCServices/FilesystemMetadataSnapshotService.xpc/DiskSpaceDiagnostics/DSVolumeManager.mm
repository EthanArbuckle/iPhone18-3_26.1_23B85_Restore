@interface DSVolumeManager
+ (id)_filterVolumes:(id)volumes usingAllowList:(id)list;
- (BOOL)_discoverVolumesUsingStatFSProvider:(id)provider usedBytesProvider:(id)bytesProvider error:(id *)error;
- (BOOL)discoverVolumesWithError:(id *)error;
- (DSSnapshotRequest)_snapshotRequest;
- (NSDictionary)allVolumesInfoDict;
- (id)__stockStatFSProvider;
- (id)__stockUsedBytesProvider;
- (id)initForSnapshotRequest:(id)request;
@end

@implementation DSVolumeManager

+ (id)_filterVolumes:(id)volumes usingAllowList:(id)list
{
  volumesCopy = volumes;
  listCopy = list;
  v7 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = volumesCopy;
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
        if (![v14 shouldListContents] || listCopy && objc_msgSend(listCopy, "count") && (objc_msgSend(v14, "mountPoint"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(listCopy, "containsObject:", v15), v15, (v16 & 1) == 0))
        {
          v19 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            _flags = [v14 _flags];
            *buf = v23;
            v29 = v14;
            v30 = 1024;
            v31 = _flags;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Skipping volume %{public}@ (flags: %u)", buf, 0x12u);
          }
        }

        else
        {
          v17 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            _flags2 = [v14 _flags];
            *buf = v23;
            v29 = v14;
            v30 = 1024;
            v31 = _flags2;
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
  selfCopy = self;
  allVolumesInfoDict = self->_allVolumesInfoDict;
  if (!allVolumesInfoDict)
  {
    v24 = objc_alloc_init(NSMutableDictionary);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [(DSVolumeManager *)selfCopy _allVolumes];
    v25 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v25)
    {
      v22 = *v35;
      v23 = selfCopy;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v34 + 1) + 8 * i);
          volumesForSnapshotting = [(DSVolumeManager *)selfCopy volumesForSnapshotting];
          v7 = [volumesForSnapshotting containsObject:v5];

          v40[0] = @"CloneGroupRecordsFileName";
          safeFilenameForCloneGroupsListing = [v5 safeFilenameForCloneGroupsListing];
          v41[0] = safeFilenameForCloneGroupsListing;
          v40[1] = @"PurgeableRecordsFilename";
          safeFilenameForPurgeableRecordsListing = [v5 safeFilenameForPurgeableRecordsListing];
          v41[1] = safeFilenameForPurgeableRecordsListing;
          v40[2] = @"SharedExtentsFilename";
          safeFilenameForSharedExtentsListing = [v5 safeFilenameForSharedExtentsListing];
          v41[2] = safeFilenameForSharedExtentsListing;
          v40[3] = @"DirStatsDataFilename";
          safeFilenameForDirStatsDataListing = [v5 safeFilenameForDirStatsDataListing];
          v41[3] = safeFilenameForDirStatsDataListing;
          v40[4] = @"AttributionTagFilename";
          safeFilenameForAttributionTagsListing = [v5 safeFilenameForAttributionTagsListing];
          v41[4] = safeFilenameForAttributionTagsListing;
          v40[5] = @"FSListingFilename";
          safeFilenameForListing = [v5 safeFilenameForListing];
          v41[5] = safeFilenameForListing;
          v40[6] = @"MountedFrom";
          mountedFrom = [v5 mountedFrom];
          v41[6] = mountedFrom;
          v40[7] = @"MountPoint";
          mountPoint = [v5 mountPoint];
          v41[7] = mountPoint;
          v40[8] = @"FSTypeName";
          _filesystemTypeName = [v5 _filesystemTypeName];
          v41[8] = _filesystemTypeName;
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
          mountPoint2 = [v5 mountPoint];
          [v24 setObject:v15 forKeyedSubscript:mountPoint2];

          selfCopy = v23;
        }

        v25 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v25);
    }

    v38 = @"Volumes";
    v17 = [v24 copy];
    v39 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v19 = selfCopy->_allVolumesInfoDict;
    selfCopy->_allVolumesInfoDict = v18;

    allVolumesInfoDict = selfCopy->_allVolumesInfoDict;
  }

  return allVolumesInfoDict;
}

- (BOOL)_discoverVolumesUsingStatFSProvider:(id)provider usedBytesProvider:(id)bytesProvider error:(id *)error
{
  providerCopy = provider;
  bytesProviderCopy = bytesProvider;
  v10 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Discovering volumes", buf, 2u);
  }

  if (!providerCopy)
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

  if (!bytesProviderCopy)
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

    if (error)
    {
      v50 = v13;
      v14 = 0;
      *error = v13;
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
  v12 = providerCopy[2](providerCopy, &v55, &v54, &v53);
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
    v18 = [DSVolume _volumeInfoFromStatFS:v55 count:v54 usedBytesProvider:bytesProviderCopy volumeManager:self];
    allVolumes = self->__allVolumes;
    self->__allVolumes = v18;

    if (v55)
    {
      free(v55);
    }

    _snapshotRequest = [(DSVolumeManager *)self _snapshotRequest];
    options = [_snapshotRequest options];
    v22 = [options objectForKeyedSubscript:@"FilesystemMetadatSnapshotOptionMountPointsAllowListArray"];

    v23 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      _allVolumes = [(DSVolumeManager *)self _allVolumes];
      *buf = 138412546;
      v57 = _allVolumes;
      v58 = 2112;
      v59 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "All Volumes List: %@\nMount Points Allow List: %@", buf, 0x16u);
    }

    v25 = objc_opt_class();
    _allVolumes2 = [(DSVolumeManager *)self _allVolumes];
    v27 = [v25 _filterVolumes:_allVolumes2 usingAllowList:v22];
    volumesForSnapshotting = self->_volumesForSnapshotting;
    self->_volumesForSnapshotting = v27;

    v29 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      volumesForSnapshotting = [(DSVolumeManager *)self volumesForSnapshotting];
      *buf = 138543362;
      v57 = volumesForSnapshotting;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Volumes for snapshotting: %{public}@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    if (error)
    {
      *error = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10003153C(v13);
    }

    if (error)
    {
      v51 = v13;
      *error = v13;
    }

    if (v55)
    {
      free(v55);
    }
  }

LABEL_34:

  return v14;
}

- (BOOL)discoverVolumesWithError:(id *)error
{
  __stockStatFSProvider = [(DSVolumeManager *)self __stockStatFSProvider];
  __stockUsedBytesProvider = [(DSVolumeManager *)self __stockUsedBytesProvider];
  LOBYTE(error) = [(DSVolumeManager *)self _discoverVolumesUsingStatFSProvider:__stockStatFSProvider usedBytesProvider:__stockUsedBytesProvider error:error];

  return error;
}

- (id)initForSnapshotRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v9.receiver = self;
    v9.super_class = DSVolumeManager;
    v5 = [(DSVolumeManager *)&v9 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->__snapshotRequest, requestCopy);
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (DSSnapshotRequest)_snapshotRequest
{
  WeakRetained = objc_loadWeakRetained(&self->__snapshotRequest);

  return WeakRetained;
}

@end