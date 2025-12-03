@interface MBSnapshotIntegrityVerifier
+ (id)_differencesBetweenCloudMetadata:(id)metadata localMetadata:(id)localMetadata domain:(id)domain path:(id)path isBackup:(BOOL)backup;
- (BOOL)_checkForCancellation:(id *)cancellation;
- (id)_fetchMetadataFromDiskForPath:(id)path modifiedDate:(int64_t *)date metadata:(id *)metadata;
- (id)_fetchMetadataFromFetchedFileList:(id)list relativePath:(id)path metadata:(id *)metadata;
- (id)_initWithDelegate:(id)delegate;
- (void)_logFailureAndAppendToAttemptSummary:(id)summary;
@end

@implementation MBSnapshotIntegrityVerifier

- (id)_initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    __assert_rtn("[MBSnapshotIntegrityVerifier _initWithDelegate:]", "MBSnapshotIntegrityVerifier.m", 890, "delegate");
  }

  v6 = delegateCopy;
  v10.receiver = self;
  v10.super_class = MBSnapshotIntegrityVerifier;
  v7 = [(MBSnapshotIntegrityVerifier *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_delegate, delegate);
  }

  return v8;
}

- (BOOL)_checkForCancellation:(id *)cancellation
{
  if (!cancellation)
  {
    __assert_rtn("[MBSnapshotIntegrityVerifier _checkForCancellation:]", "MBSnapshotIntegrityVerifier.m", 900, "error");
  }

  delegate = [(MBSnapshotIntegrityVerifier *)self delegate];
  shouldCancelVerification = [delegate shouldCancelVerification];

  if (shouldCancelVerification)
  {
    *cancellation = [objc_opt_class() _cancellationError];
  }

  return shouldCancelVerification ^ 1;
}

- (void)_logFailureAndAppendToAttemptSummary:(id)summary
{
  summaryCopy = summary;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v8 = summaryCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "=verifier= %@", buf, 0xCu);
    _MBLog();
  }

  attemptSummary = [(MBSnapshotIntegrityVerifier *)self attemptSummary];
  [attemptSummary trackSnapshotVerificationFailure:summaryCopy];
}

- (id)_fetchMetadataFromFetchedFileList:(id)list relativePath:(id)path metadata:(id *)metadata
{
  listCopy = list;
  pathCopy = path;
  v21 = 0;
  v10 = [listCopy fileMetadataForPath:pathCopy fetchXattrs:1 error:&v21];
  v11 = v21;
  v12 = v10;
  v13 = 0;
  *metadata = v10;
  if (!v10)
  {
    if (v11)
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        path = [listCopy path];
        *buf = 138412546;
        v23 = path;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=verifier= Failed to fetch metadata from fetched file list %@: %@", buf, 0x16u);

        path2 = [listCopy path];
        _MBLog();
      }

      v13 = v11;
    }

    else
    {
      domainName = [listCopy domainName];
      pathCopy = [NSString stringWithFormat:@"Fetched file list for %@ does not contain metadata for file at path %@", domainName, pathCopy];
      [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:pathCopy];

      domainName2 = [listCopy domainName];
      v13 = [MBError errorWithCode:500 path:pathCopy format:@"Fetched file list for %@ does not contain metadata for file", domainName2];
    }
  }

  return v13;
}

- (id)_fetchMetadataFromDiskForPath:(id)path modifiedDate:(int64_t *)date metadata:(id *)metadata
{
  pathCopy = path;
  v9 = [(MBErrorInjector *)self->_errorInjector errorIfMatches:pathCopy];
  if (v9)
  {
    v10 = v9;
    v11 = v10;
  }

  else
  {
    v16 = 0;
    v12 = [MBFileMetadata fileMetadataExcludingAssetForPath:pathCopy modifiedDate:date error:&v16];
    v11 = v16;
    v13 = v12;
    *metadata = v12;
    if (v12)
    {
      v10 = 0;
    }

    else
    {
      v14 = [NSString stringWithFormat:@"Failed to fetch local metadata %@: %@", pathCopy, v11];
      [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v14];

      v10 = [MBError errorWithCode:500 error:v11 path:pathCopy format:@"Failed to fetch local metadata"];
    }
  }

  return v10;
}

+ (id)_differencesBetweenCloudMetadata:(id)metadata localMetadata:(id)localMetadata domain:(id)domain path:(id)path isBackup:(BOOL)backup
{
  backupCopy = backup;
  metadataCopy = metadata;
  localMetadataCopy = localMetadata;
  domainCopy = domain;
  pathCopy = path;
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  [localMetadataCopy getNode:&v148];
  v147 = 0;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  [metadataCopy getNode:&v143];
  v82 = backupCopy;
  if (backupCopy)
  {
    v15 = 1;
LABEL_14:
    if (WORD2(v147) == WORD2(v152))
    {
      v19 = 0;
    }

    else
    {
      v142 = 0;
      sub_100123C1C(&v142, &stru_1003BF2E8);
      v19 = v142;
    }

    if (DWORD1(v143) != DWORD1(v148))
    {
      v141 = v19;
      sub_100123C1C(&v141, &stru_1003BF308);
      v22 = v141;

      v19 = v22;
    }

    if (DWORD2(v143) != DWORD2(v148))
    {
      v140 = v19;
      sub_100123C1C(&v140, &stru_1003BF328);
      v23 = v140;

      v19 = v23;
    }

    goto LABEL_21;
  }

  v16 = [domainCopy adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v143 path:pathCopy];
  assetMetadata = [metadataCopy assetMetadata];
  if ([assetMetadata compressionMethod])
  {
    v15 = 0;
  }

  else
  {
    assetMetadata2 = [metadataCopy assetMetadata];
    v15 = [assetMetadata2 assetType] != 3;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_14;
  }

  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  [metadataCopy getNode:&v135];
  v19 = 0;
  if (WORD2(v147) != WORD2(v152))
  {
    v134 = 0;
    v123[0] = _NSConcreteStackBlock;
    v123[1] = 3221225472;
    v123[2] = sub_100123CD0;
    v123[3] = &unk_1003BF348;
    v125 = v144;
    v126 = v145;
    v127 = v146;
    v124 = v143;
    v129 = v135;
    v128 = v147;
    v133 = v139;
    v132 = v138;
    v131 = v137;
    v130 = v136;
    sub_100123C1C(&v134, v123);
    v19 = v134;
  }

  if (DWORD1(v143) != DWORD1(v148))
  {
    v122 = v19;
    v111[0] = _NSConcreteStackBlock;
    v111[1] = 3221225472;
    v111[2] = sub_100123D10;
    v111[3] = &unk_1003BF348;
    v114 = v145;
    v115 = v146;
    v112 = v143;
    v113 = v144;
    v117 = v135;
    v116 = v147;
    v121 = v139;
    v120 = v138;
    v119 = v137;
    v118 = v136;
    sub_100123C1C(&v122, v111);
    v20 = v122;

    v19 = v20;
  }

  if (DWORD2(v143) != DWORD2(v148))
  {
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_100123D50;
    v99[3] = &unk_1003BF348;
    v102 = v145;
    v103 = v146;
    v100 = v143;
    v101 = v144;
    v105 = v135;
    v104 = v147;
    v109 = v139;
    v110 = v19;
    v108 = v138;
    v107 = v137;
    v106 = v136;
    sub_100123C1C(&v110, v99);
    v21 = v110;

    v19 = v21;
  }

LABEL_21:
  if (v144 != v149)
  {
    v98 = v19;
    sub_100123C1C(&v98, &stru_1003BF368);
    v24 = v98;

    v19 = v24;
  }

  if (v15 && *(&v145 + 1) != *(&v150 + 1))
  {
    v97 = v19;
    sub_100123C1C(&v97, &stru_1003BF388);
    v25 = v97;

    v19 = v25;
  }

  if (v82)
  {
    if (BYTE6(v147) != BYTE6(v152))
    {
      v96 = v19;
      sub_100123C1C(&v96, &stru_1003BF3A8);
      v26 = v96;

      v19 = v26;
    }

    if (v145 != v150)
    {
      v95 = v19;
      sub_100123C1C(&v95, &stru_1003BF3C8);
      v27 = v95;

      v19 = v27;
    }

    if (HIDWORD(v143) != HIDWORD(v148))
    {
      v94 = v19;
      sub_100123C1C(&v94, &stru_1003BF3E8);
      v28 = v94;

      v19 = v28;
    }

    if (v146 != v151)
    {
      v93 = v19;
      sub_100123C1C(&v93, &stru_1003BF408);
      v29 = v93;

      v19 = v29;
    }

    if (*(&v150 + 1) >= 1 && DWORD2(v146) != DWORD2(v151))
    {
      v92 = v19;
      v30 = &stru_1003BF428;
      v31 = &v92;
      v32 = &v92;
LABEL_52:
      sub_100123C1C(v32, v30);
      v36 = *v31;

      v19 = v36;
    }
  }

  else
  {
    if (BYTE6(v147) == BYTE6(v152))
    {
      goto LABEL_53;
    }

    v33 = WORD2(v147) & 0xF000;
    if (v33 == 0x8000)
    {
      if (BYTE6(v147) == 1 && BYTE6(v152) == 2)
      {
        goto LABEL_53;
      }

      v35 = BYTE6(v147) != 7 || BYTE6(v152) != 3;
    }

    else
    {
      v35 = 1;
    }

    if (v33 != 40960 && v35)
    {
      v91 = v19;
      v30 = &stru_1003BF448;
      v31 = &v91;
      v32 = &v91;
      goto LABEL_52;
    }
  }

LABEL_53:
  linkTarget = [metadataCopy linkTarget];
  v81 = domainCopy;
  if (!linkTarget || (v38 = linkTarget, [localMetadataCopy linkTarget], v39 = objc_claimAutoreleasedReturnValue(), v39, v38, !v39))
  {
    linkTarget2 = [metadataCopy linkTarget];
    if (linkTarget2)
    {
    }

    else
    {
      linkTarget3 = [localMetadataCopy linkTarget];

      if (!linkTarget3)
      {
        goto LABEL_62;
      }
    }

    v89 = v19;
    v43 = &stru_1003BF488;
    v44 = &v89;
    v45 = &v89;
    goto LABEL_61;
  }

  linkTarget4 = [metadataCopy linkTarget];
  linkTarget5 = [localMetadataCopy linkTarget];
  v42 = [linkTarget4 isEqualToString:linkTarget5];

  if ((v42 & 1) == 0)
  {
    v90 = v19;
    v43 = &stru_1003BF468;
    v44 = &v90;
    v45 = &v90;
LABEL_61:
    sub_100123C1C(v45, v43);
    v48 = *v44;

    v19 = v48;
  }

LABEL_62:
  v80 = pathCopy;
  xattrs = [metadataCopy xattrs];
  xattrs2 = [localMetadataCopy xattrs];
  v51 = xattrs;
  v52 = xattrs2;
  if ([v51 count] || objc_msgSend(v52, "count"))
  {
    if (v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = &__NSDictionary0__struct;
    }

    v54 = v53;

    if (v52)
    {
      v55 = v52;
    }

    else
    {
      v55 = &__NSDictionary0__struct;
    }

    v56 = v55;

    if (v82)
    {
      v79 = 0;
    }

    else
    {
      v57 = [v56 mutableCopy];
      v58 = +[MBRestoreDirectoryAnnotator backupAnnotationXattrKey];
      [v57 removeObjectForKey:v58];

      [v57 removeObjectForKey:@"com.apple.dataprotection.policy.exception-applied-by"];
      v59 = [v56 count];
      v60 = [v57 count];
      v79 = v59 != v60;
      v61 = metadataCopy;
      if (v59 != v60)
      {
        v62 = v57;

        v56 = v62;
      }

      v63 = [v54 mutableCopy];
      [v63 removeObjectForKey:@"com.apple.dataprotection.policy.exception-applied-by"];
      v64 = [v54 count];
      if (v64 != [v63 count])
      {
        v65 = v63;

        v54 = v65;
      }

      metadataCopy = v61;
    }

    if ([v54 isEqualToDictionary:v56])
    {
      v66 = 0;
    }

    else
    {
      allKeys = [v54 allKeys];
      [allKeys sortedArrayUsingSelector:"compare:"];
      v68 = v78 = localMetadataCopy;
      v69 = [v68 componentsJoinedByString:{@", "}];

      allKeys2 = [v56 allKeys];
      v71 = [allKeys2 sortedArrayUsingSelector:"compare:"];
      v72 = [v71 componentsJoinedByString:{@", "}];

      localMetadataCopy = v78;
      v66 = [NSString stringWithFormat:@"xattrs (local: %@) vs (cloud: %@)", v72, v69];
    }
  }

  else
  {
    v79 = 0;
    v66 = 0;
    v56 = v52;
    v54 = v51;
  }

  if (v66)
  {
    v88 = v19;
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_100123E08;
    v86[3] = &unk_1003BF4B0;
    v87 = v66;
    sub_100123C1C(&v88, v86);
    v73 = v88;

    v19 = v73;
  }

  if (!v79)
  {
    if (((HIBYTE(v152) ^ HIBYTE(v147)) & 4) != 0)
    {
      v85 = v19;
      sub_100123C1C(&v85, &stru_1003BF4D0);
      v74 = v85;

      v19 = v74;
    }

    if (*(&v144 + 1) != *(&v149 + 1))
    {
      if (!v82 && ([v81 _isSubPathOfRelativePathsToRestore:v80] & 1) != 0)
      {
        if (v145 == v150)
        {
          goto LABEL_96;
        }

        goto LABEL_94;
      }

      v84 = v19;
      sub_100123C1C(&v84, &stru_1003BF4F0);
      v75 = v84;

      v19 = v75;
    }

    if (v145 == v150)
    {
      goto LABEL_96;
    }

    if (v82)
    {
LABEL_95:
      v83 = v19;
      sub_100123C1C(&v83, &stru_1003BF510);
      v76 = v83;

      v19 = v76;
      goto LABEL_96;
    }

LABEL_94:
    if ([v81 _isSubPathOfRelativePathsToRestore:v80])
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

LABEL_96:

  return v19;
}

@end