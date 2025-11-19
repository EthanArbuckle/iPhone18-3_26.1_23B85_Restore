@interface DSSnapshotRequest
- (BOOL)__collectSpaceAttributionSnapshot:(id *)a3;
- (BOOL)__createPreSnapshotVolumeManagerUsingProvider:(id)a3 error:(id *)a4;
- (BOOL)__createSnapshotFileManagerUsingProvider:(id)a3 error:(id *)a4;
- (BOOL)_setupManagersAndProgress:(id)a3 volumeManagerProvider:(id)a4 error:(id *)a5;
- (DSSnapshotRequest)initWithOptions:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)__createVolumeManagerUsingProvider:(id)a3 error:(id *)a4;
- (id)__doDataCollection:(id *)a3;
- (id)__fetchMetadata;
- (id)__stockSnapshotFileManagerProvider;
- (id)__stockVolumeManagerProvider;
- (id)executeWithError:(id *)a3;
- (void)__createPowerAssertions;
- (void)__incrementProgress:(id)a3 byPercent:(float)a4;
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

  v3 = [(DSSnapshotRequest *)self snapshotFileManager];
  v4 = fprintf([v3 sharedLogFile], "%s\t%s\n", "Version:", "1013") == -1;

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

  v8 = [(DSSnapshotRequest *)self snapshotFileManager];
  v9 = fprintf([v8 sharedLogFile], "%s\t%s\n", "Snapshot Version:", objc_msgSend(@"2.7", "UTF8String")) == -1;

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
  v13 = [(DSSnapshotRequest *)self options];
  v14 = [v13 objectForKeyedSubscript:@"FilesystemMetadatSnapshotOptionShouldHashVolumeListings"];
  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v14 BOOLValue]);
  [v135 setObject:v15 forKeyedSubscript:@"HasHashedFSListings"];

  v16 = [(DSSnapshotRequest *)self beginDate];
  v17 = +[NSTimeZone systemTimeZone];
  v18 = [NSISO8601DateFormatter stringFromDate:v16 timeZone:v17 formatOptions:3955];
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
  v20 = [NSString stringWithFormat:@"%@ %@ %@ (%@)", v132, v131, v130, v129];
  [v135 setObject:v20 forKeyedSubscript:@"OSVersion"];

  [v135 setObject:v128 forKeyedSubscript:@"InternalBuild"];
  v21 = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v22) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:v21 byPercent:v22];

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
  v29 = [(DSSnapshotRequest *)self snapshotFileManager];
  v30 = fprintf([v29 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] Indirection table stats", v28) == -1;

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
  v35 = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v36) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:v35 byPercent:v36];

  v37 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Fetching apfs volume info", buf, 2u);
  }

  v38 = +[NSDate now];
  v39 = [(DSSnapshotRequest *)self snapshotFileManager];
  v40 = apfsVolumeInfo([v39 sharedLogFile]);
  [v135 addEntriesFromDictionary:v40];

  v41 = +[NSDate now];
  [v41 timeIntervalSinceDate:v38];
  v43 = v42;
  v44 = [(DSSnapshotRequest *)self snapshotFileManager];
  v45 = fprintf([v44 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] APFS volume info", v43) == -1;

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
  v50 = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v51) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:v50 byPercent:v51];

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
  v54 = [(DSSnapshotRequest *)self _volumeManager];
  v55 = [v54 volumesForSnapshotting];
  v142[0] = _NSConcreteStackBlock;
  v142[1] = 3221225472;
  v142[2] = sub_100007DB4;
  v142[3] = &unk_1000688A0;
  v56 = v53;
  v143 = v56;
  v144 = self;
  v145 = buf;
  [v55 enumerateObjectsUsingBlock:v142];

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
  v60 = [(DSSnapshotRequest *)self _volumeManager];
  v61 = [v60 allVolumesInfoDict];
  [v135 addEntriesFromDictionary:v61];

  v62 = [(DSSnapshotRequest *)self __stockVolumeManagerProvider];
  v63 = [(DSSnapshotRequest *)self __createVolumeManagerUsingProvider:v62 error:0];

  v64 = [v63 allVolumesInfoDict];
  v148 = @"VolumesPostSnapshot";
  v65 = [v64 objectForKeyedSubscript:@"Volumes"];
  v149 = v65;
  v66 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];

  [v135 addEntriesFromDictionary:v66];
  v67 = +[NSDate now];
  [v67 timeIntervalSinceDate:v59];
  v69 = v68;
  v70 = [(DSSnapshotRequest *)self snapshotFileManager];
  v71 = fprintf([v70 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] Volume info", v69) == -1;

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
  v76 = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v77) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:v76 byPercent:v77];

  v78 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Fetching unlinked-open-files", buf, 2u);
  }

  v79 = +[NSDate now];
  v80 = [(DSSnapshotRequest *)self snapshotFileManager];
  v81 = unlinkedOpenFiles([v80 sharedLogFile]);
  [v135 addEntriesFromDictionary:v81];

  v82 = +[NSDate now];
  [v82 timeIntervalSinceDate:v79];
  v84 = v83;
  v85 = [(DSSnapshotRequest *)self snapshotFileManager];
  v86 = fprintf([v85 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] Unlinked open files", v84) == -1;

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
  v91 = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v92) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:v91 byPercent:v92];

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
  v95 = [(DSSnapshotRequest *)self _volumeManager];
  obj = [v95 volumesForSnapshotting];

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
        v103 = [v99 mountPoint];
        v104 = cacheDeleteInfo(v103);
        [v94 addObject:v104];

        v105 = [(DSSnapshotRequest *)self __cacheDeleteProgress];
        v106 = [v99 progress];
        [v105 setCompletedUnitCount:{(objc_msgSend(v105, "completedUnitCount") + objc_msgSend(v106, "totalUnitCount") * 0.1)}];

        v107 = +[NSDate now];
        [v107 timeIntervalSinceDate:v102];
        v109 = v108;
        v110 = [(DSSnapshotRequest *)self snapshotFileManager];
        LODWORD(v104) = fprintf([v110 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] CacheDeleteInfo for volume", v109) == -1;

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
  v119 = [(DSSnapshotRequest *)self snapshotFileManager];
  v120 = fprintf([v119 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] CacheDeleteInfo", v118) == -1;

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

- (BOOL)__collectSpaceAttributionSnapshot:(id *)a3
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
    v22 = [(DSSnapshotRequest *)self snapshotFileManager];
    v23 = (v86 + 5);
    obj = v86[5];
    v24 = [v22 fileURLForFileNamed:@"SpaceAttributionSnapshot.plist" error:&obj];
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

      v46 = [(DSSnapshotRequest *)self snapshotFileManager];
      v47 = [v46 sharedLogFile];
      v48 = [v86[5] localizedDescription];
      v49 = v48;
      v50 = [v48 UTF8String];
      v51 = [v80[5] description];
      v52 = v51;
      LODWORD(v47) = fprintf(v47, "Error: Failed to write SpaceAttribution snapshot to file: %s\n%s\n", v50, [v51 UTF8String]) == -1;

      if (v47)
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
        v70 = [v86[5] localizedDescription];
        v71 = v70;
        v72 = [v70 UTF8String];
        v73 = [v80[5] description];
        v74 = v73;
        v75 = [v73 UTF8String];
        *buf = 136315394;
        v92 = v72;
        v93 = 2080;
        v94 = v75;
        _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Error: Failed to write SpaceAttribution snapshot to file: %s\n%s", buf, 0x16u);
      }

      if (a3)
      {
        v45 = v86[5];
        goto LABEL_50;
      }
    }

    else
    {
      v29 = [(DSSnapshotRequest *)self snapshotFileManager];
      v30 = [v29 sharedLogFile];
      v31 = [v86[5] localizedDescription];
      v32 = v31;
      LODWORD(v30) = fprintf(v30, "Error: Failed to get file URL for writing SpaceAttribution snapshot: %s\n", [v31 UTF8String]) == -1;

      if (v30)
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
        v64 = [v86[5] localizedDescription];
        v65 = v64;
        v66 = [v64 UTF8String];
        *buf = 136315138;
        v92 = v66;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Error: Failed to get file URL for writing SpaceAttribution snapshot: %s", buf, 0xCu);
      }

      v37 = [(DSSnapshotRequest *)self snapshotFileManager];
      v38 = [v37 sharedLogFile];
      v39 = [v80[5] description];
      v40 = v39;
      LODWORD(v38) = fprintf(v38, "SpaceAttribution snapshot: %s\n", [v39 UTF8String]) == -1;

      if (v38)
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
        v69 = [v67 UTF8String];
        *buf = 136315138;
        v92 = v69;
        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "SpaceAttribution snapshot: %s", buf, 0xCu);
      }

      if (a3)
      {
        v45 = v86[5];
LABEL_50:
        v21 = 0;
        *a3 = v45;
LABEL_52:

        goto LABEL_53;
      }
    }

    v21 = 0;
    goto LABEL_52;
  }

  v5 = [(DSSnapshotRequest *)self snapshotFileManager];
  v6 = [v5 sharedLogFile];
  v7 = [v86[5] localizedDescription];
  v8 = v7;
  LODWORD(v6) = fprintf(v6, "Error: Failed to collect SpaceAttribution snapshot: %s\n", [v7 UTF8String]) == -1;

  if (v6)
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
    v58 = [v86[5] localizedDescription];
    v59 = v58;
    v60 = [v58 UTF8String];
    *buf = 136315138;
    v92 = v60;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error: Failed to collect SpaceAttribution snapshot: %s", buf, 0xCu);
  }

  v13 = [(DSSnapshotRequest *)self snapshotFileManager];
  v14 = [v13 sharedLogFile];
  v15 = [v80[5] description];
  v16 = v15;
  LODWORD(v14) = fprintf(v14, "SpaceAttribution snapshot: %s\n", [v15 UTF8String]) == -1;

  if (v14)
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
    v63 = [v61 UTF8String];
    *buf = 136315138;
    v92 = v63;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "SpaceAttribution snapshot: %s", buf, 0xCu);
  }

  v21 = 0;
  if (a3)
  {
    *a3 = v86[5];
  }

LABEL_53:
  _Block_object_dispose(&v79, 8);

  _Block_object_dispose(&v85, 8);
  return v21;
}

- (void)__incrementProgress:(id)a3 byPercent:(float)a4
{
  v6 = a3;
  [v6 fractionCompleted];
  if (v7 < 1.0)
  {
    [v6 setCompletedUnitCount:{objc_msgSend(v6, "completedUnitCount") + (objc_msgSend(v6, "totalUnitCount") * 0.01 * a4)}];
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
  v5 = [(DSSnapshotRequest *)self _volumeManager];
  v6 = [v5 volumesForSnapshotting];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v55 objects:v60 count:16];
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
        v13 = [v12 progress];
        v9 += [v13 totalUnitCount];

        v14 = [(DSSnapshotRequest *)self progress];
        v15 = [v12 progress];
        [v14 setTotalUnitCount:{objc_msgSend(v15, "totalUnitCount") + objc_msgSend(v14, "totalUnitCount")}];

        v16 = [(DSSnapshotRequest *)self progress];
        v17 = [v12 progress];
        v18 = [v12 progress];
        [v16 addChild:v17 withPendingUnitCount:{objc_msgSend(v18, "totalUnitCount")}];

        v19 = [v12 progress];
        v8 = (v8 + [v19 totalUnitCount] * 0.1);
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

  v21 = [(DSSnapshotRequest *)self progress];
  v22 = [(DSSnapshotRequest *)self __cacheDeleteProgress];
  [v21 setTotalUnitCount:{objc_msgSend(v22, "totalUnitCount") + objc_msgSend(v21, "totalUnitCount")}];

  v23 = [(DSSnapshotRequest *)self progress];
  v24 = [(DSSnapshotRequest *)self __cacheDeleteProgress];
  v25 = [(DSSnapshotRequest *)self __cacheDeleteProgress];
  [v23 addChild:v24 withPendingUnitCount:{objc_msgSend(v25, "totalUnitCount")}];

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

  v29 = [(DSSnapshotRequest *)self progress];
  v30 = [(DSSnapshotRequest *)self __archivingProgress];
  [v29 setTotalUnitCount:{objc_msgSend(v30, "totalUnitCount") + objc_msgSend(v29, "totalUnitCount")}];

  v31 = [(DSSnapshotRequest *)self progress];
  v32 = [(DSSnapshotRequest *)self __archivingProgress];
  v33 = [(DSSnapshotRequest *)self __archivingProgress];
  [v31 addChild:v32 withPendingUnitCount:{objc_msgSend(v33, "totalUnitCount")}];

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

  v37 = [(DSSnapshotRequest *)self progress];
  v38 = [(DSSnapshotRequest *)self __spaceAttributionProgress];
  [v37 setTotalUnitCount:{objc_msgSend(v38, "totalUnitCount") + objc_msgSend(v37, "totalUnitCount")}];

  v39 = [(DSSnapshotRequest *)self progress];
  v40 = [(DSSnapshotRequest *)self __spaceAttributionProgress];
  v41 = [(DSSnapshotRequest *)self __spaceAttributionProgress];
  [v39 addChild:v40 withPendingUnitCount:{objc_msgSend(v41, "totalUnitCount")}];

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

  v45 = [(DSSnapshotRequest *)self progress];
  v46 = [(DSSnapshotRequest *)self __miscProgress];
  [v45 setTotalUnitCount:{objc_msgSend(v46, "totalUnitCount") + objc_msgSend(v45, "totalUnitCount")}];

  v47 = [(DSSnapshotRequest *)self progress];
  v48 = [(DSSnapshotRequest *)self __miscProgress];
  v49 = [(DSSnapshotRequest *)self __miscProgress];
  [v47 addChild:v48 withPendingUnitCount:{objc_msgSend(v49, "totalUnitCount")}];

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

- (BOOL)__createSnapshotFileManagerUsingProvider:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating snapshot file manager for %@", buf, 0xCu);
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (self->_snapshotFileManager)
  {
    sub_100030548();
  }

  if (!v6)
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

    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v8 = v6[2](v6, self);
  snapshotFileManager = self->_snapshotFileManager;
  self->_snapshotFileManager = v8;

  v10 = [(DSSnapshotRequest *)self snapshotFileManager];
  v25 = 0;
  v11 = [v10 createWorkingDirectoryAndSharedFilesWithError:&v25];
  v12 = v25;

  if (!v11 || v12)
  {
    if (!a4)
    {
LABEL_16:
      v17 = 0;
      goto LABEL_17;
    }

LABEL_14:
    v20 = v12;
    v17 = 0;
    *a4 = v12;
    goto LABEL_17;
  }

  v13 = [(DSSnapshotRequest *)self snapshotFileManager];
  v14 = [v13 sharedLogFile];
  v15 = [(DSSnapshotRequest *)self beginDate];
  v16 = [v15 description];
  LODWORD(v14) = fprintf(v14, "Started snapshotting at %s\n", [v16 UTF8String]);

  if (v14 == -1)
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

- (id)__createVolumeManagerUsingProvider:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating volume manager", buf, 2u);
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (v6)
  {
    v8 = v6[2](v6, self);
    v20 = 0;
    v9 = [v8 discoverVolumesWithError:&v20];
    v10 = v20;
    v11 = v10;
    if (!v9 || v10)
    {
      if (!a4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = [v8 volumesForSnapshotting];
      v13 = [v12 count];

      if (v13)
      {
        v14 = v8;
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v11 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65542 userInfo:0];
      if (!a4)
      {
LABEL_18:
        v14 = 0;
        goto LABEL_19;
      }
    }

    v18 = v11;
    v14 = 0;
    *a4 = v11;
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

  if (a4)
  {
    v17 = v11;
    v14 = 0;
    *a4 = v11;
  }

  else
  {
    v14 = 0;
  }

LABEL_20:

  return v14;
}

- (BOOL)__createPreSnapshotVolumeManagerUsingProvider:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating pre-snapshot volume manager for %@", &v12, 0xCu);
  }

  [(DSSnapshotRequest *)self _volumeManager];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_100030674();
  }

  v8 = [(DSSnapshotRequest *)self __createVolumeManagerUsingProvider:v6 error:a4];
  volumeManager = self->__volumeManager;
  self->__volumeManager = v8;

  v10 = self->__volumeManager != 0;
  return v10;
}

- (id)__doDataCollection:(id *)a3
{
  v5 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v145 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Collecting data and metadata %@", buf, 0xCu);
  }

  if (a3)
  {
    *a3 = 0;
  }

  v116 = a3;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v120 = self;
  v6 = [(DSSnapshotRequest *)self _volumeManager];
  v7 = [v6 volumesForSnapshotting];

  obj = v7;
  v119 = [v7 countByEnumeratingWithState:&v134 objects:v148 count:16];
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
        v21 = [(DSSnapshotRequest *)v120 snapshotFileManager];
        v22 = fprintf([v21 sharedLogFile], "%s duration: %.0f seconds\n", "Volume listing", v20);

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
              LODWORD(v145) = v24;
              _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", buf, 8u);
            }
          }
        }

        v26 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v145 = "Volume listing";
          v146 = 2048;
          v147 = v20;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
        }

        v27 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          sub_100030258(v143, v120);
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

  [(DSSnapshotRequestTelemetryReporter *)v120->__telemetryReporter setSnapshotFSListingsEntryCount:v9];
  v28 = [(DSSnapshotRequest *)v120 _volumeManager];
  v29 = [v28 volumesForSnapshotting];
  -[DSSnapshotRequestTelemetryReporter setSnapshotVolumeCount:](v120->__telemetryReporter, "setSnapshotVolumeCount:", [v29 count]);

  if (v8)
  {
    goto LABEL_25;
  }

  v30 = v116;
  if (!v10)
  {
    v10 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65537 userInfo:0];
  }

  if (v8)
  {
LABEL_25:
    v31 = +[NSDate now];
    v132 = v10;
    [(DSSnapshotRequest *)v120 __collectSpaceAttributionSnapshot:&v132];
    v32 = v132;

    v33 = +[NSDate now];
    [v33 timeIntervalSinceDate:v31];
    v35 = v34;
    v36 = [(DSSnapshotRequest *)v120 snapshotFileManager];
    v37 = fprintf([v36 sharedLogFile], "%s duration: %.0f seconds\n", "SpaceAttribution snapshot", v35);

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
      v145 = "SpaceAttribution snapshot";
      v146 = 2048;
      v147 = v35;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
    }

    v42 = [(DSSnapshotRequest *)v120 __spaceAttributionProgress];
    v43 = [v42 totalUnitCount];
    v44 = [(DSSnapshotRequest *)v120 __spaceAttributionProgress];
    [v44 setCompletedUnitCount:v43];

    v45 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      sub_1000302B4(v120);
    }

    v46 = +[NSDate now];
    v47 = [(DSSnapshotRequest *)v120 __fetchMetadata];
    v48 = +[NSDate now];
    [v48 timeIntervalSinceDate:v46];
    v50 = v49;
    v51 = [(DSSnapshotRequest *)v120 snapshotFileManager];
    v52 = fprintf([v51 sharedLogFile], "%s duration: %.0f seconds\n", "Metadata", v50);

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
      v145 = "Metadata";
      v146 = 2048;
      v147 = v50;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
    }

    v57 = objc_alloc_init(NSDate);
    endDate = v120->___endDate;
    v120->___endDate = v57;

    v59 = [(DSSnapshotRequest *)v120 __endDate];
    v60 = +[NSTimeZone systemTimeZone];
    v61 = [NSISO8601DateFormatter stringFromDate:v59 timeZone:v60 formatOptions:3955];
    [v47 setObject:v61 forKeyedSubscript:@"TimestampEnd"];

    v62 = [(DSSnapshotRequest *)v120 snapshotFileManager];
    v63 = [v62 sharedLogFile];
    v64 = [(DSSnapshotRequest *)v120 __endDate];
    v65 = [v64 description];
    LODWORD(v63) = fprintf(v63, "Finished snapshotting at %s\n", [v65 UTF8String]);

    if (v63 == -1)
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
      v70 = [(DSSnapshotRequest *)v120 __endDate];
      v71 = [v70 description];
      v72 = [v71 UTF8String];
      *buf = 136315138;
      v145 = v72;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Finished snapshotting at %s", buf, 0xCu);
    }

    v73 = [(DSSnapshotRequest *)v120 snapshotFileManager];
    v131 = v32;
    [v73 writeFileForMetadata:v47 error:&v131];
    v74 = v131;

    v75 = [(DSSnapshotRequest *)v120 __miscProgress];
    LODWORD(v76) = 10.0;
    [(DSSnapshotRequest *)v120 __incrementProgress:v75 byPercent:v76];

    v77 = +[NSDate now];
    v78 = [(DSSnapshotRequest *)v120 snapshotFileManager];
    v130 = v74;
    v79 = [v78 archiveWithError:&v130];
    v10 = v130;

    v80 = +[NSDate now];
    [v80 timeIntervalSinceDate:v77];
    v82 = v81;
    v83 = [(DSSnapshotRequest *)v120 snapshotFileManager];
    v84 = fprintf([v83 sharedLogFile], "%s duration: %.0f seconds\n", "Archiving", v82);

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
      v145 = "Archiving";
      v146 = 2048;
      v147 = v82;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
    }

    v89 = [(DSSnapshotRequest *)v120 __archivingProgress];
    v90 = [v89 totalUnitCount];
    v91 = [(DSSnapshotRequest *)v120 __archivingProgress];
    [v91 setCompletedUnitCount:v90];

    v92 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
    {
      sub_1000302B4(v120);
    }

    v30 = v116;
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
  v95 = [(DSSnapshotRequest *)v120 _volumeManager];
  v96 = [v95 volumesForSnapshotting];

  v97 = [v96 countByEnumeratingWithState:&v126 objects:v142 count:16];
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
          objc_enumerationMutation(v96);
        }

        v101 = *(*(&v126 + 1) + 8 * i);
        v102 = [v101 progress];
        v103 = [v102 totalUnitCount];
        v104 = [v101 progress];
        [v104 setCompletedUnitCount:v103];

        v105 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
        {
          sub_100030258(buf, v120);
        }
      }

      v98 = [v96 countByEnumeratingWithState:&v126 objects:v142 count:16];
    }

    while (v98);
  }

  v140 = *&v120->___cacheDeleteProgress;
  miscProgress = v120->___miscProgress;
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
          sub_100030258(v138, v120);
        }
      }

      v108 = [v106 countByEnumeratingWithState:&v122 objects:v139 count:16];
    }

    while (v108);
  }

  v112 = [(DSSnapshotRequest *)v120 progress];
  v113 = [v112 totalUnitCount];
  v114 = [(DSSnapshotRequest *)v120 progress];
  [v114 setCompletedUnitCount:v113];

  v115 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302B4(v120);
  }

  v30 = v116;
  if (v116)
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
  v4 = [(DSSnapshotRequest *)self __powerAssertionIDs];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
        objc_enumerationMutation(v4);
      }

      v10 = [*(*(&v20 + 1) + 8 * i) unsignedIntValue];
      v11 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Checking status of power assertion 0x%x", buf, 8u);
      }

      v12 = IOPMAssertionCopyProperties(v10);
      v13 = shared_filesystem_metadata_snapshot_service_log_handle();
      v14 = v13;
      if (!v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v25 = v10;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Querying properties for power assertion 0x%x returned NULL - assertion must have timed out", buf, 8u);
        }

        v7 = 1;
        goto LABEL_20;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Releasing power assertion 0x%x", buf, 8u);
      }

      v15 = IOPMAssertionRelease(v10);
      if (v15)
      {
        v16 = v15;
        v14 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v25 = v10;
          v26 = 1024;
          v27 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to release power assertion 0x%x: %d", buf, 0xEu);
        }

LABEL_20:
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
  }

  while (v6);

  if (v7)
  {
    [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotPowerAssertionsDidTimeOut:1];
    v17 = +[NSDate now];
    [v17 timeIntervalSinceDate:self->_beginDate];
    v19 = v18;

    v4 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000306A0(self, v4, v19);
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
  v9 = v8;
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
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Created power assertion to prevent system sleep (with a %0.2f sec timeout): 0x%x.", buf, 0x12u);
    }

    v9 = [(DSSnapshotRequest *)self __powerAssertionIDs];
    v10 = [NSNumber numberWithUnsignedInt:AssertionID];
    [v9 addObject:v10];
  }

  v11 = [NSString stringWithFormat:@"%@ collects diagnostics for filesystem utilization triage and may take time in the order of hours. To allow continued data collection while the user is away requires preventing disks from idling.", @"com.apple.FilesystemMetadataSnapshotService"];
  v12 = [NSString stringWithFormat:@"%@.preventDiskIdle", @"com.apple.FilesystemMetadataSnapshotService"];
  AssertionID = 0;
  v13 = IOPMAssertionCreateWithDescription(@"PreventDiskIdle", v12, v11, v11, 0, 1800.0, @"TimeoutActionRelease", &AssertionID);
  v14 = shared_filesystem_metadata_snapshot_service_log_handle();
  v15 = v14;
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
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Created power assertion to prevent disk idling (with a %0.2f sec timeout): 0x%x.", buf, 0x12u);
    }

    v15 = [(DSSnapshotRequest *)self __powerAssertionIDs];
    v16 = [NSNumber numberWithUnsignedInt:AssertionID];
    [v15 addObject:v16];
  }
}

- (BOOL)_setupManagersAndProgress:(id)a3 volumeManagerProvider:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(NSDate);
  beginDate = self->_beginDate;
  self->_beginDate = v10;

  v12 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(DSSnapshotRequest *)self beginDate];
    v19 = 138412290;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Begin date: %@", &v19, 0xCu);
  }

  v14 = [(DSSnapshotRequest *)self __createSnapshotFileManagerUsingProvider:v9 error:a5];
  if (v14 && [(DSSnapshotRequest *)self __createPreSnapshotVolumeManagerUsingProvider:v8 error:a5])
  {
    [(DSSnapshotRequest *)self __initializeProgress];
    v15 = [(DSSnapshotRequest *)self __miscProgress];
    LODWORD(v16) = 10.0;
    [(DSSnapshotRequest *)self __incrementProgress:v15 byPercent:v16];

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)executeWithError:(id *)a3
{
  v5 = +[NSDate now];
  v6 = [DSSnapshotRequestTelemetryReporter telemetryReporterForSnapshotRequest:self];
  telemetryReporter = self->__telemetryReporter;
  self->__telemetryReporter = v6;

  v8 = [(DSSnapshotRequest *)self __stockSnapshotFileManagerProvider];
  v9 = [(DSSnapshotRequest *)self __stockVolumeManagerProvider];
  v10 = [(DSSnapshotRequest *)self _setupManagersAndProgress:v8 volumeManagerProvider:v9 error:a3];

  if (v10)
  {
    [(DSSnapshotRequest *)self __createPowerAssertions];
    v11 = [(DSSnapshotRequest *)self __doDataCollection:a3];
    v12 = [(DSSnapshotRequest *)self snapshotFileManager];
    v31 = 0;
    v13 = [v12 cleanupWithError:&v31];
    v14 = v31;

    if (a3 && (v13 & 1) == 0 && !*a3)
    {
      v15 = v14;
      *a3 = v14;
    }

    [(DSSnapshotRequest *)self __releasePowerAssertions];
    v16 = +[NSDate now];
    [v16 timeIntervalSinceDate:v5];
    v18 = v17;
    v19 = [(DSSnapshotRequest *)self snapshotFileManager];
    v20 = fprintf([v19 sharedLogFile], "%s duration: %.0f seconds\n", "Snapshot request", v18);

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
    if (*a3)
    {
      -[DSSnapshotRequestTelemetryReporter setSnapshotExitCode:](self->__telemetryReporter, "setSnapshotExitCode:", [*a3 code]);
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

- (DSSnapshotRequest)initWithOptions:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = DSSnapshotRequest;
  v6 = [(DSSnapshotRequest *)&v13 init];
  if (v6)
  {
    v7 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Snapshot request with options: %@", buf, 0xCu);
    }

    v8 = +[NSDate date];
    requestDate = v6->___requestDate;
    v6->___requestDate = v8;

    objc_storeStrong(&v6->_options, a3);
    v10 = [NSProgress progressWithTotalUnitCount:0];
    progress = v6->_progress;
    v6->_progress = v10;

    [(NSProgress *)v6->_progress setCancellable:0];
    [(NSProgress *)v6->_progress setPausable:0];
  }

  return v6;
}

@end