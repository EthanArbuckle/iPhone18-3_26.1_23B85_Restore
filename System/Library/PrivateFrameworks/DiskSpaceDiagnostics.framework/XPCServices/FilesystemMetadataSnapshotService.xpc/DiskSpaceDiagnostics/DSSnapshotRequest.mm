@interface DSSnapshotRequest
- (BOOL)__collectSpaceAttributionSnapshot:(id *)snapshot;
- (BOOL)__createPreSnapshotVolumeManagerUsingProvider:(id)provider error:(id *)error;
- (BOOL)__createSnapshotFileManagerUsingProvider:(id)provider error:(id *)error;
- (BOOL)_setupManagersAndProgress:(id)progress volumeManagerProvider:(id)provider error:(id *)error;
- (DSSnapshotRequest)initWithOptions:(id)options;
- (NSString)debugDescription;
- (NSString)description;
- (id)__createVolumeManagerUsingProvider:(id)provider error:(id *)error;
- (id)__doDataCollection:(id *)collection;
- (id)__fetchMetadata;
- (id)__stockSnapshotFileManagerProvider;
- (id)__stockVolumeManagerProvider;
- (id)executeWithError:(id *)error;
- (void)__createPowerAssertions;
- (void)__incrementProgress:(id)progress byPercent:(float)percent;
- (void)__initializeProgress;
- (void)__releasePowerAssertions;
@end

@implementation DSSnapshotRequest

- (id)__stockSnapshotFileManagerProvider
{
  if (qword_10006E548 != -1)
  {
    sub_100030230();
  }

  v2 = objc_retainBlock(qword_10006E540);

  return v2;
}

- (id)__stockVolumeManagerProvider
{
  if (qword_10006E558 != -1)
  {
    sub_100030244();
  }

  v2 = objc_retainBlock(qword_10006E550);

  return v2;
}

- (id)__fetchMetadata
{
  v2 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fetching metadata", buf, 2u);
  }

  snapshotFileManager = [(DSSnapshotRequest *)self snapshotFileManager];
  v4 = fprintf([snapshotFileManager sharedLogFile], "%s\t%s\n", "Version:", "1013") == -1;

  if (v4)
  {
    v5 = __error();
    if ((byte_10006E560 & 1) == 0)
    {
      v6 = *v5;
      byte_10006E560 = 1;
      v7 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  snapshotFileManager2 = [(DSSnapshotRequest *)self snapshotFileManager];
  v9 = fprintf([snapshotFileManager2 sharedLogFile], "%s\t%s\n", "Snapshot Version:", objc_msgSend(@"2.7", "UTF8String")) == -1;

  if (v9)
  {
    v10 = __error();
    if ((byte_10006E561 & 1) == 0)
    {
      v11 = *v10;
      byte_10006E561 = 1;
      v12 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v135 = [NSMutableDictionary dictionaryWithCapacity:10];
  [v135 setObject:@"1013" forKeyedSubscript:@"DiskSpaceDiagnosticsVersion"];
  [v135 setObject:@"2.7" forKeyedSubscript:@"SnapshotVersion"];
  options = [(DSSnapshotRequest *)self options];
  v14 = [options objectForKeyedSubscript:@"FilesystemMetadatSnapshotOptionShouldHashVolumeListings"];
  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v14 BOOLValue]);
  [v135 setObject:v15 forKeyedSubscript:@"HasHashedFSListings"];

  beginDate = [(DSSnapshotRequest *)self beginDate];
  v17 = +[NSTimeZone systemTimeZone];
  v18 = [NSISO8601DateFormatter stringFromDate:beginDate timeZone:v17 formatOptions:3955];
  [v135 setObject:v18 forKeyedSubscript:@"TimestampBegin"];

  v19 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Fetching device info", buf, 2u);
  }

  v134 = MGCopyAnswer();
  v133 = MGCopyAnswer();
  v132 = MGCopyAnswer();
  v131 = MGCopyAnswer();
  v130 = MGCopyAnswer();
  v129 = MGCopyAnswer();
  v128 = MGCopyAnswer();
  [v135 setObject:v134 forKeyedSubscript:@"HardwareModel"];
  [v135 setObject:v133 forKeyedSubscript:@"MarketingName"];
  v129 = [NSString stringWithFormat:@"%@ %@ %@ (%@)", v132, v131, v130, v129];
  [v135 setObject:v129 forKeyedSubscript:@"OSVersion"];

  [v135 setObject:v128 forKeyedSubscript:@"InternalBuild"];
  __miscProgress = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v22) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:__miscProgress byPercent:v22];

  v23 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Fetching indirection table stats", buf, 2u);
  }

  v24 = +[NSDate now];
  v25 = indirectionTableStatistics();
  [v135 addEntriesFromDictionary:v25];

  v26 = +[NSDate now];
  [v26 timeIntervalSinceDate:v24];
  v28 = v27;
  snapshotFileManager3 = [(DSSnapshotRequest *)self snapshotFileManager];
  v30 = fprintf([snapshotFileManager3 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] Indirection table stats", v28) == -1;

  if (v30)
  {
    v31 = __error();
    if ((byte_10006E562 & 1) == 0)
    {
      v32 = *v31;
      byte_10006E562 = 1;
      v33 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v34 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[Metadata] Indirection table stats";
    *&buf[12] = 2048;
    *&buf[14] = v28;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
  }

  [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotMetadataIndirectionTableStatsDurationSec:v28];
  __miscProgress2 = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v36) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:__miscProgress2 byPercent:v36];

  v37 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Fetching apfs volume info", buf, 2u);
  }

  v38 = +[NSDate now];
  snapshotFileManager4 = [(DSSnapshotRequest *)self snapshotFileManager];
  v40 = apfsVolumeInfo([snapshotFileManager4 sharedLogFile]);
  [v135 addEntriesFromDictionary:v40];

  v41 = +[NSDate now];
  [v41 timeIntervalSinceDate:v38];
  v43 = v42;
  snapshotFileManager5 = [(DSSnapshotRequest *)self snapshotFileManager];
  v45 = fprintf([snapshotFileManager5 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] APFS volume info", v43) == -1;

  if (v45)
  {
    v46 = __error();
    if ((byte_10006E563 & 1) == 0)
    {
      v47 = *v46;
      byte_10006E563 = 1;
      v48 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v49 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[Metadata] APFS volume info";
    *&buf[12] = 2048;
    *&buf[14] = v43;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
  }

  [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotMetadataAPFSVolumeInfoDurationSec:v43];
  __miscProgress3 = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v51) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:__miscProgress3 byPercent:v51];

  v52 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Fetching snapshot info", buf, 2u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v153 = 0;
  v53 = objc_alloc_init(NSMutableDictionary);
  _volumeManager = [(DSSnapshotRequest *)self _volumeManager];
  volumesForSnapshotting = [_volumeManager volumesForSnapshotting];
  v142[0] = _NSConcreteStackBlock;
  v142[1] = 3221225472;
  v142[2] = sub_100007DB4;
  v142[3] = &unk_1000688A0;
  v56 = v53;
  v143 = v56;
  selfCopy = self;
  v145 = buf;
  [volumesForSnapshotting enumerateObjectsUsingBlock:v142];

  [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotMetadataAPFSSnapshotInfoDurationSec:*(*&buf[8] + 24)];
  v150 = @"FSSnapshots";
  v151 = v56;
  v57 = [NSDictionary dictionaryWithObjects:&v151 forKeys:&v150 count:1];
  [v135 addEntriesFromDictionary:v57];

  _Block_object_dispose(buf, 8);
  v58 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Fetching volume info", buf, 2u);
  }

  v59 = +[NSDate now];
  _volumeManager2 = [(DSSnapshotRequest *)self _volumeManager];
  allVolumesInfoDict = [_volumeManager2 allVolumesInfoDict];
  [v135 addEntriesFromDictionary:allVolumesInfoDict];

  __stockVolumeManagerProvider = [(DSSnapshotRequest *)self __stockVolumeManagerProvider];
  v63 = [(DSSnapshotRequest *)self __createVolumeManagerUsingProvider:__stockVolumeManagerProvider error:0];

  allVolumesInfoDict2 = [v63 allVolumesInfoDict];
  v148 = @"VolumesPostSnapshot";
  v65 = [allVolumesInfoDict2 objectForKeyedSubscript:@"Volumes"];
  v149 = v65;
  v66 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];

  [v135 addEntriesFromDictionary:v66];
  v67 = +[NSDate now];
  [v67 timeIntervalSinceDate:v59];
  v69 = v68;
  snapshotFileManager6 = [(DSSnapshotRequest *)self snapshotFileManager];
  v71 = fprintf([snapshotFileManager6 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] Volume info", v69) == -1;

  if (v71)
  {
    v72 = __error();
    if ((byte_10006E565 & 1) == 0)
    {
      v73 = *v72;
      byte_10006E565 = 1;
      v74 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v75 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[Metadata] Volume info";
    *&buf[12] = 2048;
    *&buf[14] = v69;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
  }

  [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotMetadataVolumeInfoDurationSec:v69];
  __miscProgress4 = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v77) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:__miscProgress4 byPercent:v77];

  v78 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Fetching unlinked-open-files", buf, 2u);
  }

  v79 = +[NSDate now];
  snapshotFileManager7 = [(DSSnapshotRequest *)self snapshotFileManager];
  v81 = unlinkedOpenFiles([snapshotFileManager7 sharedLogFile]);
  [v135 addEntriesFromDictionary:v81];

  v82 = +[NSDate now];
  [v82 timeIntervalSinceDate:v79];
  v84 = v83;
  snapshotFileManager8 = [(DSSnapshotRequest *)self snapshotFileManager];
  v86 = fprintf([snapshotFileManager8 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] Unlinked open files", v84) == -1;

  if (v86)
  {
    v87 = __error();
    if ((byte_10006E566 & 1) == 0)
    {
      v88 = *v87;
      byte_10006E566 = 1;
      v89 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v90 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[Metadata] Unlinked open files";
    *&buf[12] = 2048;
    *&buf[14] = v84;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
  }

  [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotMetadataUnlinkedOpenFilesDurationSec:v84];
  __miscProgress5 = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v92) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:__miscProgress5 byPercent:v92];

  v93 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Fetching CacheDelete info", buf, 2u);
  }

  v127 = +[NSDate now];
  v94 = +[NSMutableArray array];
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  _volumeManager3 = [(DSSnapshotRequest *)self _volumeManager];
  obj = [_volumeManager3 volumesForSnapshotting];

  v96 = [obj countByEnumeratingWithState:&v138 objects:v147 count:16];
  if (v96)
  {
    v97 = *v139;
    do
    {
      v98 = 0;
      do
      {
        if (*v139 != v97)
        {
          objc_enumerationMutation(obj);
        }

        v99 = *(*(&v138 + 1) + 8 * v98);
        v100 = objc_autoreleasePoolPush();
        v101 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = v99;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "Fetching CacheDelete info for %{public}@", buf, 0xCu);
        }

        v102 = +[NSDate now];
        mountPoint = [v99 mountPoint];
        v104 = cacheDeleteInfo(mountPoint);
        [v94 addObject:v104];

        __cacheDeleteProgress = [(DSSnapshotRequest *)self __cacheDeleteProgress];
        progress = [v99 progress];
        [__cacheDeleteProgress setCompletedUnitCount:{(objc_msgSend(__cacheDeleteProgress, "completedUnitCount") + objc_msgSend(progress, "totalUnitCount") * 0.1)}];

        v107 = +[NSDate now];
        [v107 timeIntervalSinceDate:v102];
        v109 = v108;
        snapshotFileManager9 = [(DSSnapshotRequest *)self snapshotFileManager];
        LODWORD(v104) = fprintf([snapshotFileManager9 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] CacheDeleteInfo for volume", v109) == -1;

        if (v104)
        {
          v111 = __error();
          if ((byte_10006E567 & 1) == 0)
          {
            v112 = *v111;
            byte_10006E567 = 1;
            v113 = shared_filesystem_metadata_snapshot_service_log_handle();
            if (os_log_type_enabled(v113, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109120;
              *&buf[4] = v112;
              _os_log_fault_impl(&_mh_execute_header, v113, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", buf, 8u);
            }
          }
        }

        v114 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[Metadata] CacheDeleteInfo for volume";
          *&buf[12] = 2048;
          *&buf[14] = v109;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
        }

        v115 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
        {
          sub_100030258(v146, self);
        }

        objc_autoreleasePoolPop(v100);
        v98 = v98 + 1;
      }

      while (v96 != v98);
      v96 = [obj countByEnumeratingWithState:&v138 objects:v147 count:16];
    }

    while (v96);
  }

  v116 = +[NSDate now];
  [v116 timeIntervalSinceDate:v127];
  v118 = v117;
  snapshotFileManager10 = [(DSSnapshotRequest *)self snapshotFileManager];
  v120 = fprintf([snapshotFileManager10 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] CacheDeleteInfo", v118) == -1;

  if (v120)
  {
    v121 = __error();
    if ((byte_10006E568 & 1) == 0)
    {
      v122 = *v121;
      byte_10006E568 = 1;
      v123 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v124 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[Metadata] CacheDeleteInfo";
    *&buf[12] = 2048;
    *&buf[14] = v118;
    _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
  }

  [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotMetadataCacheDeleteDurationSec:v118];
  [v135 setObject:v94 forKeyedSubscript:@"CacheDeletePerVolumeInfo"];

  v125 = v135;
  return v135;
}

- (BOOL)__collectSpaceAttributionSnapshot:(id *)snapshot
{
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = sub_100008970;
  v89 = sub_100008980;
  v90 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = sub_100008970;
  v83 = sub_100008980;
  v84 = 0;
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_100008988;
  v78[3] = &unk_1000688C8;
  v78[4] = &v85;
  v78[5] = &v79;
  [SAReporter reportSnapshot:v78];
  if (!v86[5] && v80[5])
  {
    snapshotFileManager = [(DSSnapshotRequest *)self snapshotFileManager];
    v23 = (v86 + 5);
    obj = v86[5];
    v24 = [snapshotFileManager fileURLForFileNamed:@"SpaceAttributionSnapshot.plist" error:&obj];
    objc_storeStrong(v23, obj);

    if (v24)
    {
      v25 = v80[5];
      v26 = (v86 + 5);
      v76 = v86[5];
      v27 = [v25 writeToURL:v24 error:&v76];
      objc_storeStrong(v26, v76);
      if (v27)
      {
        v28 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Successfully collected SpaceAttribution snapshot", buf, 2u);
        }

        v21 = 1;
        goto LABEL_52;
      }

      snapshotFileManager2 = [(DSSnapshotRequest *)self snapshotFileManager];
      sharedLogFile = [snapshotFileManager2 sharedLogFile];
      localizedDescription = [v86[5] localizedDescription];
      v49 = localizedDescription;
      uTF8String = [localizedDescription UTF8String];
      v51 = [v80[5] description];
      v52 = v51;
      LODWORD(sharedLogFile) = fprintf(sharedLogFile, "Error: Failed to write SpaceAttribution snapshot to file: %s\n%s\n", uTF8String, [v51 UTF8String]) == -1;

      if (sharedLogFile)
      {
        v53 = __error();
        if ((byte_10006E56D & 1) == 0)
        {
          v54 = *v53;
          byte_10006E56D = 1;
          v55 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      v56 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        localizedDescription2 = [v86[5] localizedDescription];
        v71 = localizedDescription2;
        uTF8String2 = [localizedDescription2 UTF8String];
        v73 = [v80[5] description];
        v74 = v73;
        uTF8String3 = [v73 UTF8String];
        *buf = 136315394;
        v92 = uTF8String2;
        v93 = 2080;
        v94 = uTF8String3;
        _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Error: Failed to write SpaceAttribution snapshot to file: %s\n%s", buf, 0x16u);
      }

      if (snapshot)
      {
        v45 = v86[5];
        goto LABEL_50;
      }
    }

    else
    {
      snapshotFileManager3 = [(DSSnapshotRequest *)self snapshotFileManager];
      sharedLogFile2 = [snapshotFileManager3 sharedLogFile];
      localizedDescription3 = [v86[5] localizedDescription];
      v32 = localizedDescription3;
      LODWORD(sharedLogFile2) = fprintf(sharedLogFile2, "Error: Failed to get file URL for writing SpaceAttribution snapshot: %s\n", [localizedDescription3 UTF8String]) == -1;

      if (sharedLogFile2)
      {
        v33 = __error();
        if ((byte_10006E56B & 1) == 0)
        {
          v34 = *v33;
          byte_10006E56B = 1;
          v35 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      v36 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        localizedDescription4 = [v86[5] localizedDescription];
        v65 = localizedDescription4;
        uTF8String4 = [localizedDescription4 UTF8String];
        *buf = 136315138;
        v92 = uTF8String4;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Error: Failed to get file URL for writing SpaceAttribution snapshot: %s", buf, 0xCu);
      }

      snapshotFileManager4 = [(DSSnapshotRequest *)self snapshotFileManager];
      sharedLogFile3 = [snapshotFileManager4 sharedLogFile];
      v39 = [v80[5] description];
      v40 = v39;
      LODWORD(sharedLogFile3) = fprintf(sharedLogFile3, "SpaceAttribution snapshot: %s\n", [v39 UTF8String]) == -1;

      if (sharedLogFile3)
      {
        v41 = __error();
        if ((byte_10006E56C & 1) == 0)
        {
          v42 = *v41;
          byte_10006E56C = 1;
          v43 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      v44 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v67 = [v80[5] description];
        v68 = v67;
        uTF8String5 = [v67 UTF8String];
        *buf = 136315138;
        v92 = uTF8String5;
        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "SpaceAttribution snapshot: %s", buf, 0xCu);
      }

      if (snapshot)
      {
        v45 = v86[5];
LABEL_50:
        v21 = 0;
        *snapshot = v45;
LABEL_52:

        goto LABEL_53;
      }
    }

    v21 = 0;
    goto LABEL_52;
  }

  snapshotFileManager5 = [(DSSnapshotRequest *)self snapshotFileManager];
  sharedLogFile4 = [snapshotFileManager5 sharedLogFile];
  localizedDescription5 = [v86[5] localizedDescription];
  v8 = localizedDescription5;
  LODWORD(sharedLogFile4) = fprintf(sharedLogFile4, "Error: Failed to collect SpaceAttribution snapshot: %s\n", [localizedDescription5 UTF8String]) == -1;

  if (sharedLogFile4)
  {
    v9 = __error();
    if ((byte_10006E569 & 1) == 0)
    {
      v10 = *v9;
      byte_10006E569 = 1;
      v11 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v12 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    localizedDescription6 = [v86[5] localizedDescription];
    v59 = localizedDescription6;
    uTF8String6 = [localizedDescription6 UTF8String];
    *buf = 136315138;
    v92 = uTF8String6;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error: Failed to collect SpaceAttribution snapshot: %s", buf, 0xCu);
  }

  snapshotFileManager6 = [(DSSnapshotRequest *)self snapshotFileManager];
  sharedLogFile5 = [snapshotFileManager6 sharedLogFile];
  v15 = [v80[5] description];
  v16 = v15;
  LODWORD(sharedLogFile5) = fprintf(sharedLogFile5, "SpaceAttribution snapshot: %s\n", [v15 UTF8String]) == -1;

  if (sharedLogFile5)
  {
    v17 = __error();
    if ((byte_10006E56A & 1) == 0)
    {
      v18 = *v17;
      byte_10006E56A = 1;
      v19 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v20 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v61 = [v80[5] description];
    v62 = v61;
    uTF8String7 = [v61 UTF8String];
    *buf = 136315138;
    v92 = uTF8String7;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "SpaceAttribution snapshot: %s", buf, 0xCu);
  }

  v21 = 0;
  if (snapshot)
  {
    *snapshot = v86[5];
  }

LABEL_53:
  _Block_object_dispose(&v79, 8);

  _Block_object_dispose(&v85, 8);
  return v21;
}

- (void)__incrementProgress:(id)progress byPercent:(float)percent
{
  progressCopy = progress;
  [progressCopy fractionCompleted];
  if (v7 < 1.0)
  {
    [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + (objc_msgSend(progressCopy, "totalUnitCount") * 0.01 * percent)}];
  }

  v8 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302B4(self);
  }
}

- (void)__initializeProgress
{
  v2 = objc_autoreleasePoolPush();
  v3 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up NSProgress", buf, 2u);
  }

  v4 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Calculating total units for each volume", buf, 2u);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  _volumeManager = [(DSSnapshotRequest *)self _volumeManager];
  volumesForSnapshotting = [_volumeManager volumesForSnapshotting];

  obj = volumesForSnapshotting;
  v7 = [volumesForSnapshotting countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v7)
  {
    v52 = v2;
    v8 = 0;
    v9 = 0;
    v10 = *v56;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v55 + 1) + 8 * i);
        progress = [v12 progress];
        v9 += [progress totalUnitCount];

        progress2 = [(DSSnapshotRequest *)self progress];
        progress3 = [v12 progress];
        [progress2 setTotalUnitCount:{objc_msgSend(progress3, "totalUnitCount") + objc_msgSend(progress2, "totalUnitCount")}];

        progress4 = [(DSSnapshotRequest *)self progress];
        progress5 = [v12 progress];
        progress6 = [v12 progress];
        [progress4 addChild:progress5 withPendingUnitCount:{objc_msgSend(progress6, "totalUnitCount")}];

        progress7 = [v12 progress];
        v8 = (v8 + [progress7 totalUnitCount] * 0.1);
      }

      v7 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v7);
    v7 = (v9 * 0.1);
    v2 = v52;
  }

  else
  {
    v8 = 0;
  }

  v20 = [NSProgress progressWithTotalUnitCount:v8];
  [(DSSnapshotRequest *)self set__cacheDeleteProgress:v20];

  progress8 = [(DSSnapshotRequest *)self progress];
  __cacheDeleteProgress = [(DSSnapshotRequest *)self __cacheDeleteProgress];
  [progress8 setTotalUnitCount:{objc_msgSend(__cacheDeleteProgress, "totalUnitCount") + objc_msgSend(progress8, "totalUnitCount")}];

  progress9 = [(DSSnapshotRequest *)self progress];
  __cacheDeleteProgress2 = [(DSSnapshotRequest *)self __cacheDeleteProgress];
  __cacheDeleteProgress3 = [(DSSnapshotRequest *)self __cacheDeleteProgress];
  [progress9 addChild:__cacheDeleteProgress2 withPendingUnitCount:{objc_msgSend(__cacheDeleteProgress3, "totalUnitCount")}];

  v26 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_100030338(self);
  }

  v27 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302B4(self);
  }

  v28 = [NSProgress progressWithTotalUnitCount:v7];
  [(DSSnapshotRequest *)self set__archivingProgress:v28];

  progress10 = [(DSSnapshotRequest *)self progress];
  __archivingProgress = [(DSSnapshotRequest *)self __archivingProgress];
  [progress10 setTotalUnitCount:{objc_msgSend(__archivingProgress, "totalUnitCount") + objc_msgSend(progress10, "totalUnitCount")}];

  progress11 = [(DSSnapshotRequest *)self progress];
  __archivingProgress2 = [(DSSnapshotRequest *)self __archivingProgress];
  __archivingProgress3 = [(DSSnapshotRequest *)self __archivingProgress];
  [progress11 addChild:__archivingProgress2 withPendingUnitCount:{objc_msgSend(__archivingProgress3, "totalUnitCount")}];

  v34 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    sub_1000303BC(self);
  }

  v35 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302B4(self);
  }

  v36 = [NSProgress progressWithTotalUnitCount:v7];
  [(DSSnapshotRequest *)self set__spaceAttributionProgress:v36];

  progress12 = [(DSSnapshotRequest *)self progress];
  __spaceAttributionProgress = [(DSSnapshotRequest *)self __spaceAttributionProgress];
  [progress12 setTotalUnitCount:{objc_msgSend(__spaceAttributionProgress, "totalUnitCount") + objc_msgSend(progress12, "totalUnitCount")}];

  progress13 = [(DSSnapshotRequest *)self progress];
  __spaceAttributionProgress2 = [(DSSnapshotRequest *)self __spaceAttributionProgress];
  __spaceAttributionProgress3 = [(DSSnapshotRequest *)self __spaceAttributionProgress];
  [progress13 addChild:__spaceAttributionProgress2 withPendingUnitCount:{objc_msgSend(__spaceAttributionProgress3, "totalUnitCount")}];

  v42 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    sub_100030440(self);
  }

  v43 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302B4(self);
  }

  v44 = [NSProgress progressWithTotalUnitCount:v7];
  [(DSSnapshotRequest *)self set__miscProgress:v44];

  progress14 = [(DSSnapshotRequest *)self progress];
  __miscProgress = [(DSSnapshotRequest *)self __miscProgress];
  [progress14 setTotalUnitCount:{objc_msgSend(__miscProgress, "totalUnitCount") + objc_msgSend(progress14, "totalUnitCount")}];

  progress15 = [(DSSnapshotRequest *)self progress];
  __miscProgress2 = [(DSSnapshotRequest *)self __miscProgress];
  __miscProgress3 = [(DSSnapshotRequest *)self __miscProgress];
  [progress15 addChild:__miscProgress2 withPendingUnitCount:{objc_msgSend(__miscProgress3, "totalUnitCount")}];

  v50 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    sub_1000304C4(self);
  }

  v51 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302B4(self);
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)__createSnapshotFileManagerUsingProvider:(id)provider error:(id *)error
{
  providerCopy = provider;
  v7 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating snapshot file manager for %@", buf, 0xCu);
  }

  if (error)
  {
    *error = 0;
  }

  if (self->_snapshotFileManager)
  {
    sub_100030548();
  }

  if (!providerCopy)
  {
    v18 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100030574();
    }

    v26 = NSLocalizedDescriptionKey;
    v27 = @"Snapshot file manager provider cannot be nil";
    v19 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v12 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65540 userInfo:v19];

    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v8 = providerCopy[2](providerCopy, self);
  snapshotFileManager = self->_snapshotFileManager;
  self->_snapshotFileManager = v8;

  snapshotFileManager = [(DSSnapshotRequest *)self snapshotFileManager];
  v25 = 0;
  v11 = [snapshotFileManager createWorkingDirectoryAndSharedFilesWithError:&v25];
  v12 = v25;

  if (!v11 || v12)
  {
    if (!error)
    {
LABEL_16:
      v17 = 0;
      goto LABEL_17;
    }

LABEL_14:
    v20 = v12;
    v17 = 0;
    *error = v12;
    goto LABEL_17;
  }

  snapshotFileManager2 = [(DSSnapshotRequest *)self snapshotFileManager];
  sharedLogFile = [snapshotFileManager2 sharedLogFile];
  beginDate = [(DSSnapshotRequest *)self beginDate];
  v16 = [beginDate description];
  LODWORD(sharedLogFile) = fprintf(sharedLogFile, "Started snapshotting at %s\n", [v16 UTF8String]);

  if (sharedLogFile == -1)
  {
    v22 = __error();
    v17 = 1;
    if ((byte_10006E56E & 1) == 0)
    {
      v23 = *v22;
      byte_10006E56E = 1;
      v24 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_17:

  return v17;
}

- (id)__createVolumeManagerUsingProvider:(id)provider error:(id *)error
{
  providerCopy = provider;
  v7 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating volume manager", buf, 2u);
  }

  if (error)
  {
    *error = 0;
  }

  if (providerCopy)
  {
    v8 = providerCopy[2](providerCopy, self);
    v20 = 0;
    v9 = [v8 discoverVolumesWithError:&v20];
    v10 = v20;
    v11 = v10;
    if (!v9 || v10)
    {
      if (!error)
      {
        goto LABEL_18;
      }
    }

    else
    {
      volumesForSnapshotting = [v8 volumesForSnapshotting];
      v13 = [volumesForSnapshotting count];

      if (v13)
      {
        v14 = v8;
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v11 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65542 userInfo:0];
      if (!error)
      {
LABEL_18:
        v14 = 0;
        goto LABEL_19;
      }
    }

    v18 = v11;
    v14 = 0;
    *error = v11;
    goto LABEL_19;
  }

  v15 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1000305F4();
  }

  v22 = NSLocalizedDescriptionKey;
  v23 = @"Volume manager provider cannot be nil";
  v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v11 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65540 userInfo:v16];

  if (error)
  {
    v17 = v11;
    v14 = 0;
    *error = v11;
  }

  else
  {
    v14 = 0;
  }

LABEL_20:

  return v14;
}

- (BOOL)__createPreSnapshotVolumeManagerUsingProvider:(id)provider error:(id *)error
{
  providerCopy = provider;
  v7 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating pre-snapshot volume manager for %@", &v12, 0xCu);
  }

  [(DSSnapshotRequest *)self _volumeManager];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_100030674();
  }

  v8 = [(DSSnapshotRequest *)self __createVolumeManagerUsingProvider:providerCopy error:error];
  volumeManager = self->__volumeManager;
  self->__volumeManager = v8;

  v10 = self->__volumeManager != 0;
  return v10;
}

- (id)__doDataCollection:(id *)collection
{
  v5 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Collecting data and metadata %@", buf, 0xCu);
  }

  if (collection)
  {
    *collection = 0;
  }

  collectionCopy = collection;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  selfCopy2 = self;
  _volumeManager = [(DSSnapshotRequest *)self _volumeManager];
  volumesForSnapshotting = [_volumeManager volumesForSnapshotting];

  obj = volumesForSnapshotting;
  v119 = [volumesForSnapshotting countByEnumeratingWithState:&v134 objects:v148 count:16];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (v119)
  {
    v118 = *v135;
    do
    {
      v11 = 0;
      v12 = v10;
      do
      {
        if (*v135 != v118)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v134 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        v14 = +[NSDate now];
        v138[0] = 0;
        v133 = v12;
        v15 = [v13 listContentsWithEntryCount:v138 andError:&v133];
        v16 = v133;

        v17 = v138[0];
        v18 = +[NSDate now];
        [v18 timeIntervalSinceDate:v14];
        v20 = v19;
        snapshotFileManager = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
        v22 = fprintf([snapshotFileManager sharedLogFile], "%s duration: %.0f seconds\n", "Volume listing", v20);

        if (v22 == -1)
        {
          v23 = __error();
          if ((byte_10006E56F & 1) == 0)
          {
            v24 = *v23;
            byte_10006E56F = 1;
            v25 = shared_filesystem_metadata_snapshot_service_log_handle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109120;
              LODWORD(selfCopy) = v24;
              _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", buf, 8u);
            }
          }
        }

        v26 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          selfCopy = "Volume listing";
          v146 = 2048;
          v147 = v20;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
        }

        v27 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          sub_100030258(v143, selfCopy2);
        }

        v8 |= v15;
        v9 += v17;

        objc_autoreleasePoolPop(context);
        v11 = v11 + 1;
        v12 = v16;
      }

      while (v119 != v11);
      v10 = v16;
      v119 = [obj countByEnumeratingWithState:&v134 objects:v148 count:16];
    }

    while (v119);
  }

  [(DSSnapshotRequestTelemetryReporter *)selfCopy2->__telemetryReporter setSnapshotFSListingsEntryCount:v9];
  _volumeManager2 = [(DSSnapshotRequest *)selfCopy2 _volumeManager];
  volumesForSnapshotting2 = [_volumeManager2 volumesForSnapshotting];
  -[DSSnapshotRequestTelemetryReporter setSnapshotVolumeCount:](selfCopy2->__telemetryReporter, "setSnapshotVolumeCount:", [volumesForSnapshotting2 count]);

  if (v8)
  {
    goto LABEL_25;
  }

  v30 = collectionCopy;
  if (!v10)
  {
    v10 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65537 userInfo:0];
  }

  if (v8)
  {
LABEL_25:
    v31 = +[NSDate now];
    v132 = v10;
    [(DSSnapshotRequest *)selfCopy2 __collectSpaceAttributionSnapshot:&v132];
    v32 = v132;

    v33 = +[NSDate now];
    [v33 timeIntervalSinceDate:v31];
    v35 = v34;
    snapshotFileManager2 = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
    v37 = fprintf([snapshotFileManager2 sharedLogFile], "%s duration: %.0f seconds\n", "SpaceAttribution snapshot", v35);

    if (v37 == -1)
    {
      v38 = __error();
      if ((byte_10006E570 & 1) == 0)
      {
        v39 = *v38;
        byte_10006E570 = 1;
        v40 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v41 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      selfCopy = "SpaceAttribution snapshot";
      v146 = 2048;
      v147 = v35;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
    }

    __spaceAttributionProgress = [(DSSnapshotRequest *)selfCopy2 __spaceAttributionProgress];
    totalUnitCount = [__spaceAttributionProgress totalUnitCount];
    __spaceAttributionProgress2 = [(DSSnapshotRequest *)selfCopy2 __spaceAttributionProgress];
    [__spaceAttributionProgress2 setCompletedUnitCount:totalUnitCount];

    v45 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      sub_1000302B4(selfCopy2);
    }

    v46 = +[NSDate now];
    __fetchMetadata = [(DSSnapshotRequest *)selfCopy2 __fetchMetadata];
    v48 = +[NSDate now];
    [v48 timeIntervalSinceDate:v46];
    v50 = v49;
    snapshotFileManager3 = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
    v52 = fprintf([snapshotFileManager3 sharedLogFile], "%s duration: %.0f seconds\n", "Metadata", v50);

    if (v52 == -1)
    {
      v53 = __error();
      if ((byte_10006E571 & 1) == 0)
      {
        v54 = *v53;
        byte_10006E571 = 1;
        v55 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v56 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      selfCopy = "Metadata";
      v146 = 2048;
      v147 = v50;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
    }

    v57 = objc_alloc_init(NSDate);
    endDate = selfCopy2->___endDate;
    selfCopy2->___endDate = v57;

    __endDate = [(DSSnapshotRequest *)selfCopy2 __endDate];
    v60 = +[NSTimeZone systemTimeZone];
    v61 = [NSISO8601DateFormatter stringFromDate:__endDate timeZone:v60 formatOptions:3955];
    [__fetchMetadata setObject:v61 forKeyedSubscript:@"TimestampEnd"];

    snapshotFileManager4 = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
    sharedLogFile = [snapshotFileManager4 sharedLogFile];
    __endDate2 = [(DSSnapshotRequest *)selfCopy2 __endDate];
    v65 = [__endDate2 description];
    LODWORD(sharedLogFile) = fprintf(sharedLogFile, "Finished snapshotting at %s\n", [v65 UTF8String]);

    if (sharedLogFile == -1)
    {
      v66 = __error();
      if ((byte_10006E572 & 1) == 0)
      {
        v67 = *v66;
        byte_10006E572 = 1;
        v68 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v69 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      __endDate3 = [(DSSnapshotRequest *)selfCopy2 __endDate];
      v71 = [__endDate3 description];
      uTF8String = [v71 UTF8String];
      *buf = 136315138;
      selfCopy = uTF8String;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Finished snapshotting at %s", buf, 0xCu);
    }

    snapshotFileManager5 = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
    v131 = v32;
    [snapshotFileManager5 writeFileForMetadata:__fetchMetadata error:&v131];
    v74 = v131;

    __miscProgress = [(DSSnapshotRequest *)selfCopy2 __miscProgress];
    LODWORD(v76) = 10.0;
    [(DSSnapshotRequest *)selfCopy2 __incrementProgress:__miscProgress byPercent:v76];

    v77 = +[NSDate now];
    snapshotFileManager6 = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
    v130 = v74;
    v79 = [snapshotFileManager6 archiveWithError:&v130];
    v10 = v130;

    v80 = +[NSDate now];
    [v80 timeIntervalSinceDate:v77];
    v82 = v81;
    snapshotFileManager7 = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
    v84 = fprintf([snapshotFileManager7 sharedLogFile], "%s duration: %.0f seconds\n", "Archiving", v82);

    if (v84 == -1)
    {
      v85 = __error();
      if ((byte_10006E573 & 1) == 0)
      {
        v86 = *v85;
        byte_10006E573 = 1;
        v87 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v88 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      selfCopy = "Archiving";
      v146 = 2048;
      v147 = v82;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
    }

    __archivingProgress = [(DSSnapshotRequest *)selfCopy2 __archivingProgress];
    totalUnitCount2 = [__archivingProgress totalUnitCount];
    __archivingProgress2 = [(DSSnapshotRequest *)selfCopy2 __archivingProgress];
    [__archivingProgress2 setCompletedUnitCount:totalUnitCount2];

    v92 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
    {
      sub_1000302B4(selfCopy2);
    }

    v30 = collectionCopy;
    if (v10)
    {
LABEL_58:
      if (!v30)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  else
  {
    v79 = 0;
    if (v10)
    {
      goto LABEL_58;
    }
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  _volumeManager3 = [(DSSnapshotRequest *)selfCopy2 _volumeManager];
  volumesForSnapshotting3 = [_volumeManager3 volumesForSnapshotting];

  v97 = [volumesForSnapshotting3 countByEnumeratingWithState:&v126 objects:v142 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v127;
    do
    {
      for (i = 0; i != v98; i = i + 1)
      {
        if (*v127 != v99)
        {
          objc_enumerationMutation(volumesForSnapshotting3);
        }

        v101 = *(*(&v126 + 1) + 8 * i);
        progress = [v101 progress];
        totalUnitCount3 = [progress totalUnitCount];
        progress2 = [v101 progress];
        [progress2 setCompletedUnitCount:totalUnitCount3];

        v105 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
        {
          sub_100030258(buf, selfCopy2);
        }
      }

      v98 = [volumesForSnapshotting3 countByEnumeratingWithState:&v126 objects:v142 count:16];
    }

    while (v98);
  }

  v140 = *&selfCopy2->___cacheDeleteProgress;
  miscProgress = selfCopy2->___miscProgress;
  [NSArray arrayWithObjects:&v140 count:3];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v106 = v125 = 0u;
  v107 = [v106 countByEnumeratingWithState:&v122 objects:v139 count:16];
  if (v107)
  {
    v108 = v107;
    v109 = *v123;
    do
    {
      for (j = 0; j != v108; j = j + 1)
      {
        if (*v123 != v109)
        {
          objc_enumerationMutation(v106);
        }

        [*(*(&v122 + 1) + 8 * j) setCompletedUnitCount:{objc_msgSend(*(*(&v122 + 1) + 8 * j), "totalUnitCount")}];
        v111 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
        {
          sub_100030258(v138, selfCopy2);
        }
      }

      v108 = [v106 countByEnumeratingWithState:&v122 objects:v139 count:16];
    }

    while (v108);
  }

  progress3 = [(DSSnapshotRequest *)selfCopy2 progress];
  totalUnitCount4 = [progress3 totalUnitCount];
  progress4 = [(DSSnapshotRequest *)selfCopy2 progress];
  [progress4 setCompletedUnitCount:totalUnitCount4];

  v115 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302B4(selfCopy2);
  }

  v30 = collectionCopy;
  if (collectionCopy)
  {
LABEL_59:
    v93 = v10;
    *v30 = v10;
  }

LABEL_60:

  return v79;
}

- (void)__releasePowerAssertions
{
  v3 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing power assertions", buf, 2u);
  }

  if (!self->___powerAssertionIDs)
  {
    sub_10003075C();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  __powerAssertionIDs = [(DSSnapshotRequest *)self __powerAssertionIDs];
  v5 = [__powerAssertionIDs countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (!v5)
  {
LABEL_26:

    return;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v21;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(__powerAssertionIDs);
      }

      unsignedIntValue = [*(*(&v20 + 1) + 8 * i) unsignedIntValue];
      v11 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v25 = unsignedIntValue;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Checking status of power assertion 0x%x", buf, 8u);
      }

      v12 = IOPMAssertionCopyProperties(unsignedIntValue);
      v13 = shared_filesystem_metadata_snapshot_service_log_handle();
      v14 = v13;
      if (!v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v25 = unsignedIntValue;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Querying properties for power assertion 0x%x returned NULL - assertion must have timed out", buf, 8u);
        }

        v7 = 1;
        goto LABEL_20;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v25 = unsignedIntValue;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Releasing power assertion 0x%x", buf, 8u);
      }

      v15 = IOPMAssertionRelease(unsignedIntValue);
      if (v15)
      {
        v16 = v15;
        v14 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v25 = unsignedIntValue;
          v26 = 1024;
          v27 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to release power assertion 0x%x: %d", buf, 0xEu);
        }

LABEL_20:
      }
    }

    v6 = [__powerAssertionIDs countByEnumeratingWithState:&v20 objects:v28 count:16];
  }

  while (v6);

  if (v7)
  {
    [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotPowerAssertionsDidTimeOut:1];
    v17 = +[NSDate now];
    [v17 timeIntervalSinceDate:self->_beginDate];
    v19 = v18;

    __powerAssertionIDs = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(__powerAssertionIDs, OS_LOG_TYPE_FAULT))
    {
      sub_1000306A0(self, __powerAssertionIDs, v19);
    }

    goto LABEL_26;
  }
}

- (void)__createPowerAssertions
{
  v3 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating power assertions", buf, 2u);
  }

  if (self->___powerAssertionIDs)
  {
    sub_100030788();
  }

  v4 = +[NSMutableArray array];
  powerAssertionIDs = self->___powerAssertionIDs;
  self->___powerAssertionIDs = v4;

  v6 = [NSString stringWithFormat:@"%@ collects diagnostics for filesystem utilization triage and may take time in the order of hours. To allow continued data collection while the user is away requires preventing the system from sleeping.", @"com.apple.FilesystemMetadataSnapshotService"];
  AssertionID = 0;
  v7 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", [NSString stringWithFormat:@"%@.preventUserIdleSystemSleep", @"com.apple.FilesystemMetadataSnapshotService"], v6, v6, 0, 1800.0, @"TimeoutActionRelease", &AssertionID);
  v8 = shared_filesystem_metadata_snapshot_service_log_handle();
  __powerAssertionIDs = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000307B4();
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v19 = 0x409C200000000000;
      v20 = 1024;
      v21 = AssertionID;
      _os_log_impl(&_mh_execute_header, __powerAssertionIDs, OS_LOG_TYPE_DEFAULT, "Created power assertion to prevent system sleep (with a %0.2f sec timeout): 0x%x.", buf, 0x12u);
    }

    __powerAssertionIDs = [(DSSnapshotRequest *)self __powerAssertionIDs];
    v10 = [NSNumber numberWithUnsignedInt:AssertionID];
    [__powerAssertionIDs addObject:v10];
  }

  v11 = [NSString stringWithFormat:@"%@ collects diagnostics for filesystem utilization triage and may take time in the order of hours. To allow continued data collection while the user is away requires preventing disks from idling.", @"com.apple.FilesystemMetadataSnapshotService"];
  v12 = [NSString stringWithFormat:@"%@.preventDiskIdle", @"com.apple.FilesystemMetadataSnapshotService"];
  AssertionID = 0;
  v13 = IOPMAssertionCreateWithDescription(@"PreventDiskIdle", v12, v11, v11, 0, 1800.0, @"TimeoutActionRelease", &AssertionID);
  v14 = shared_filesystem_metadata_snapshot_service_log_handle();
  __powerAssertionIDs2 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100030824();
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v19 = 0x409C200000000000;
      v20 = 1024;
      v21 = AssertionID;
      _os_log_impl(&_mh_execute_header, __powerAssertionIDs2, OS_LOG_TYPE_DEFAULT, "Created power assertion to prevent disk idling (with a %0.2f sec timeout): 0x%x.", buf, 0x12u);
    }

    __powerAssertionIDs2 = [(DSSnapshotRequest *)self __powerAssertionIDs];
    v16 = [NSNumber numberWithUnsignedInt:AssertionID];
    [__powerAssertionIDs2 addObject:v16];
  }
}

- (BOOL)_setupManagersAndProgress:(id)progress volumeManagerProvider:(id)provider error:(id *)error
{
  providerCopy = provider;
  progressCopy = progress;
  v10 = objc_alloc_init(NSDate);
  beginDate = self->_beginDate;
  self->_beginDate = v10;

  v12 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    beginDate = [(DSSnapshotRequest *)self beginDate];
    v19 = 138412290;
    v20 = beginDate;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Begin date: %@", &v19, 0xCu);
  }

  v14 = [(DSSnapshotRequest *)self __createSnapshotFileManagerUsingProvider:progressCopy error:error];
  if (v14 && [(DSSnapshotRequest *)self __createPreSnapshotVolumeManagerUsingProvider:providerCopy error:error])
  {
    [(DSSnapshotRequest *)self __initializeProgress];
    __miscProgress = [(DSSnapshotRequest *)self __miscProgress];
    LODWORD(v16) = 10.0;
    [(DSSnapshotRequest *)self __incrementProgress:__miscProgress byPercent:v16];

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)executeWithError:(id *)error
{
  v5 = +[NSDate now];
  v6 = [DSSnapshotRequestTelemetryReporter telemetryReporterForSnapshotRequest:self];
  telemetryReporter = self->__telemetryReporter;
  self->__telemetryReporter = v6;

  __stockSnapshotFileManagerProvider = [(DSSnapshotRequest *)self __stockSnapshotFileManagerProvider];
  __stockVolumeManagerProvider = [(DSSnapshotRequest *)self __stockVolumeManagerProvider];
  v10 = [(DSSnapshotRequest *)self _setupManagersAndProgress:__stockSnapshotFileManagerProvider volumeManagerProvider:__stockVolumeManagerProvider error:error];

  if (v10)
  {
    [(DSSnapshotRequest *)self __createPowerAssertions];
    v11 = [(DSSnapshotRequest *)self __doDataCollection:error];
    snapshotFileManager = [(DSSnapshotRequest *)self snapshotFileManager];
    v31 = 0;
    v13 = [snapshotFileManager cleanupWithError:&v31];
    v14 = v31;

    if (error && (v13 & 1) == 0 && !*error)
    {
      v15 = v14;
      *error = v14;
    }

    [(DSSnapshotRequest *)self __releasePowerAssertions];
    v16 = +[NSDate now];
    [v16 timeIntervalSinceDate:v5];
    v18 = v17;
    snapshotFileManager2 = [(DSSnapshotRequest *)self snapshotFileManager];
    v20 = fprintf([snapshotFileManager2 sharedLogFile], "%s duration: %.0f seconds\n", "Snapshot request", v18);

    if (v20 == -1)
    {
      v21 = __error();
      if ((byte_10006E574 & 1) == 0)
      {
        v22 = *v21;
        byte_10006E574 = 1;
        v23 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v24 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "Snapshot request";
      v34 = 2048;
      v35 = v18;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
    }

    [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotDateEnd:v16];
    if (*error)
    {
      -[DSSnapshotRequestTelemetryReporter setSnapshotExitCode:](self->__telemetryReporter, "setSnapshotExitCode:", [*error code]);
    }

    if (v11)
    {
      v25 = +[NSFileManager defaultManager];
      v30 = 0;
      v26 = [v25 attributesOfItemAtPath:v11 error:&v30];
      v27 = v30;

      v28 = [v26 objectForKeyedSubscript:NSFileSize];
      -[DSSnapshotRequestTelemetryReporter setSnapshotArchiveSizeBytes:](self->__telemetryReporter, "setSnapshotArchiveSizeBytes:", [v28 unsignedLongLongValue]);
    }

    [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter submit];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  requestDate = self->___requestDate;
  v6 = [NSString stringWithFormat:@"<%@: %p> %@ (Options: %@)", v4, self, requestDate, self->_options];

  return v6;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  requestDate = self->___requestDate;
  v6 = [NSString stringWithFormat:@"<%@> %@ (Options: %@)", v4, requestDate, self->_options];

  return v6;
}

- (DSSnapshotRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = DSSnapshotRequest;
  v6 = [(DSSnapshotRequest *)&v13 init];
  if (v6)
  {
    v7 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Snapshot request with options: %@", buf, 0xCu);
    }

    v8 = +[NSDate date];
    requestDate = v6->___requestDate;
    v6->___requestDate = v8;

    objc_storeStrong(&v6->_options, options);
    v10 = [NSProgress progressWithTotalUnitCount:0];
    progress = v6->_progress;
    v6->_progress = v10;

    [(NSProgress *)v6->_progress setCancellable:0];
    [(NSProgress *)v6->_progress setPausable:0];
  }

  return v6;
}

@end