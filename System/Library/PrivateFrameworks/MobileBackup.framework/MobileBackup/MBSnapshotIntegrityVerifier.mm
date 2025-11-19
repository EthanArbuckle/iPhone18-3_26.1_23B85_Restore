@interface MBSnapshotIntegrityVerifier
+ (id)_differencesBetweenCloudMetadata:(id)a3 localMetadata:(id)a4 domain:(id)a5 path:(id)a6 isBackup:(BOOL)a7;
- (BOOL)_checkForCancellation:(id *)a3;
- (id)_fetchMetadataFromDiskForPath:(id)a3 modifiedDate:(int64_t *)a4 metadata:(id *)a5;
- (id)_fetchMetadataFromFetchedFileList:(id)a3 relativePath:(id)a4 metadata:(id *)a5;
- (id)_initWithDelegate:(id)a3;
- (void)_logFailureAndAppendToAttemptSummary:(id)a3;
@end

@implementation MBSnapshotIntegrityVerifier

- (id)_initWithDelegate:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    __assert_rtn("[MBSnapshotIntegrityVerifier _initWithDelegate:]", "MBSnapshotIntegrityVerifier.m", 890, "delegate");
  }

  v6 = v5;
  v10.receiver = self;
  v10.super_class = MBSnapshotIntegrityVerifier;
  v7 = [(MBSnapshotIntegrityVerifier *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_delegate, a3);
  }

  return v8;
}

- (BOOL)_checkForCancellation:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBSnapshotIntegrityVerifier _checkForCancellation:]", "MBSnapshotIntegrityVerifier.m", 900, "error");
  }

  v4 = [(MBSnapshotIntegrityVerifier *)self delegate];
  v5 = [v4 shouldCancelVerification];

  if (v5)
  {
    *a3 = [objc_opt_class() _cancellationError];
  }

  return v5 ^ 1;
}

- (void)_logFailureAndAppendToAttemptSummary:(id)a3
{
  v4 = a3;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "=verifier= %@", buf, 0xCu);
    _MBLog();
  }

  v6 = [(MBSnapshotIntegrityVerifier *)self attemptSummary];
  [v6 trackSnapshotVerificationFailure:v4];
}

- (id)_fetchMetadataFromFetchedFileList:(id)a3 relativePath:(id)a4 metadata:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v10 = [v8 fileMetadataForPath:v9 fetchXattrs:1 error:&v21];
  v11 = v21;
  v12 = v10;
  v13 = 0;
  *a5 = v10;
  if (!v10)
  {
    if (v11)
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [v8 path];
        *buf = 138412546;
        v23 = v15;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=verifier= Failed to fetch metadata from fetched file list %@: %@", buf, 0x16u);

        v20 = [v8 path];
        _MBLog();
      }

      v13 = v11;
    }

    else
    {
      v16 = [v8 domainName];
      v17 = [NSString stringWithFormat:@"Fetched file list for %@ does not contain metadata for file at path %@", v16, v9];
      [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v17];

      v18 = [v8 domainName];
      v13 = [MBError errorWithCode:500 path:v9 format:@"Fetched file list for %@ does not contain metadata for file", v18];
    }
  }

  return v13;
}

- (id)_fetchMetadataFromDiskForPath:(id)a3 modifiedDate:(int64_t *)a4 metadata:(id *)a5
{
  v8 = a3;
  v9 = [(MBErrorInjector *)self->_errorInjector errorIfMatches:v8];
  if (v9)
  {
    v10 = v9;
    v11 = v10;
  }

  else
  {
    v16 = 0;
    v12 = [MBFileMetadata fileMetadataExcludingAssetForPath:v8 modifiedDate:a4 error:&v16];
    v11 = v16;
    v13 = v12;
    *a5 = v12;
    if (v12)
    {
      v10 = 0;
    }

    else
    {
      v14 = [NSString stringWithFormat:@"Failed to fetch local metadata %@: %@", v8, v11];
      [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v14];

      v10 = [MBError errorWithCode:500 error:v11 path:v8 format:@"Failed to fetch local metadata"];
    }
  }

  return v10;
}

+ (id)_differencesBetweenCloudMetadata:(id)a3 localMetadata:(id)a4 domain:(id)a5 path:(id)a6 isBackup:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  [v12 getNode:&v148];
  v147 = 0;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  [v11 getNode:&v143];
  v82 = v7;
  if (v7)
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

  v16 = [v13 adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v143 path:v14];
  v17 = [v11 assetMetadata];
  if ([v17 compressionMethod])
  {
    v15 = 0;
  }

  else
  {
    v18 = [v11 assetMetadata];
    v15 = [v18 assetType] != 3;
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
  [v11 getNode:&v135];
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
  v37 = [v11 linkTarget];
  v81 = v13;
  if (!v37 || (v38 = v37, [v12 linkTarget], v39 = objc_claimAutoreleasedReturnValue(), v39, v38, !v39))
  {
    v46 = [v11 linkTarget];
    if (v46)
    {
    }

    else
    {
      v47 = [v12 linkTarget];

      if (!v47)
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

  v40 = [v11 linkTarget];
  v41 = [v12 linkTarget];
  v42 = [v40 isEqualToString:v41];

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
  v80 = v14;
  v49 = [v11 xattrs];
  v50 = [v12 xattrs];
  v51 = v49;
  v52 = v50;
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
      v61 = v11;
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

      v11 = v61;
    }

    if ([v54 isEqualToDictionary:v56])
    {
      v66 = 0;
    }

    else
    {
      v67 = [v54 allKeys];
      [v67 sortedArrayUsingSelector:"compare:"];
      v68 = v78 = v12;
      v69 = [v68 componentsJoinedByString:{@", "}];

      v70 = [v56 allKeys];
      v71 = [v70 sortedArrayUsingSelector:"compare:"];
      v72 = [v71 componentsJoinedByString:{@", "}];

      v12 = v78;
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