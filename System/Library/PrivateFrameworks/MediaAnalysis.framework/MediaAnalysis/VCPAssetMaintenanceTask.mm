@interface VCPAssetMaintenanceTask
+ (id)taskWithPhotoLibrary:(id)library;
- (VCPAssetMaintenanceTask)initWithPhotoLibrary:(id)library;
- (int)mainInternal;
- (int)maintainanceWithLegacyDatabase;
- (void)_maintainAssetLocalIdentifiers:(id)identifiers missingStatsFlagsSet:(id)set deletePendingSet:(id)pendingSet;
- (void)maintainVectorDatabase;
- (void)updateStatsFlags:(unint64_t)flags forPHAsset:(id)asset;
@end

@implementation VCPAssetMaintenanceTask

- (VCPAssetMaintenanceTask)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = VCPAssetMaintenanceTask;
  v5 = [(VCPTask *)&v11 initWithPhotoLibrary:libraryCopy];
  v6 = v5;
  if (v5)
  {
    photoLibrary = [(VCPTask *)v5 photoLibrary];
    v8 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:photoLibrary];
    database = v6->_database;
    v6->_database = v8;
  }

  return v6;
}

+ (id)taskWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy];

  return v4;
}

- (void)updateStatsFlags:(unint64_t)flags forPHAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy isVideo])
  {
    v7 = flags | 4;
  }

  else if ([assetCopy vcp_isLivePhoto])
  {
    v7 = flags | 2;
  }

  else
  {
    v7 = [assetCopy isPhoto] | flags;
  }

  if (+[MADManagedPhotosAsset isMACDPersistEnabled])
  {
    photoLibrary = [(VCPTask *)self photoLibrary];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000BBF9C;
    v14 = &unk_100285478;
    v16 = v7;
    v15 = assetCopy;
    [photoLibrary mad_performAnalysisDataStoreChanges:&v11 error:0];
  }

  if ([VCPDatabaseWriter isLegacyPersistEnabled:v11])
  {
    database = self->_database;
    localIdentifier = [assetCopy localIdentifier];
    [(VCPDatabaseWriter *)database storeStatsFlags:v7 forLocalIdentifier:localIdentifier];
  }
}

- (void)maintainVectorDatabase
{
  selfCopy = self;
  photoLibrary = [(VCPTask *)self photoLibrary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000BC148;
  v6[3] = &unk_100283000;
  v6[4] = selfCopy;
  LODWORD(selfCopy) = [MADVectorDatabaseUtilities syncWithPhotoLibrary:photoLibrary ignoreExpiration:1 threshold:v6 cancelBlock:0.2];

  if (selfCopy && MediaAnalysisLogLevel() >= 4)
  {
    v4 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[VCPAssetMaintenanceTask] Failed to sync VSK database (non-fatal)", v5, 2u);
    }
  }
}

- (int)maintainanceWithLegacyDatabase
{
  v2 = VCPSignPostLog();
  spid = os_signpost_id_generate(v2);

  v3 = VCPSignPostLog();
  v4 = v3;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPAssetMaintenanceTask", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = &_os_log_default;
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[VCPAssetMaintenanceTask] Performing asset book-keeping...", buf, 2u);
    }
  }

  v7 = +[NSDate date];
  v75 = [v7 dateByAddingTimeInterval:-MediaAnalysisBlacklistAgeOutInterval];

  v101 = 0;
  selfCopy3 = self;
  v9 = [(VCPDatabaseWriter *)self->_database ageOutBlacklistBefore:v75 count:&v101];
  v10 = 0;
  v11 = 0;
  v86 = v9;
  if (v9 == -108)
  {
    v13 = 0;
    goto LABEL_144;
  }

  v12 = v9 == -36 || v9 == -23;
  v13 = 0;
  if (v12)
  {
LABEL_144:
    if (v10)
    {
      goto LABEL_152;
    }
  }

  else
  {
    v14 = +[VCPMADCoreAnalyticsManager sharedManager];
    [v14 accumulateInt64Value:v101 forField:@"NumberOfAssetsOutFromBlacklist" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];

    photoLibrary = [(VCPTask *)self photoLibrary];
    v13 = [VCPAnalyzedAssets assetsFromPhotoLibrary:photoLibrary];

    v16 = 0;
    v73 = 0;
    v80 = 0;
    v86 = 0;
    type = VCPLogToOSLogType[4];
    v84 = VCPLogToOSLogType[5];
    v72 = VCPLogToOSLogType[3];
    v83 = v13;
    selfCopy3 = self;
    while (1)
    {
      if (v16 >= [v13 count])
      {
        goto LABEL_151;
      }

      if ([(VCPTask *)selfCopy3 isCancelled])
      {
        break;
      }

      v17 = +[VCPWatchdog sharedWatchdog];
      [v17 pet];

      context = objc_autoreleasePoolPush();
      v88 = +[NSMutableDictionary dictionary];
      v85 = +[NSMutableSet set];
      v18 = 0;
      v19 = v16 + 1000;
      while (1)
      {
        v20 = [v13 count];
        if (v20 >= v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v20;
        }

        if (v16 >= v21)
        {
          photoLibrary2 = [(VCPTask *)self photoLibrary];
          v24 = [PHAsset vcp_fetchOptionsForLibrary:photoLibrary2 forTaskID:1];

          allKeys = [v88 allKeys];
          v77 = [PHAsset fetchAssetsWithLocalIdentifiers:allKeys options:v24];

          if ([v85 count])
          {
            allObjects = [v85 allObjects];
            v34 = [PHAsset fetchAssetsWithLocalIdentifiers:allObjects options:v24];

            v97[0] = _NSConcreteStackBlock;
            v97[1] = 3221225472;
            v97[2] = sub_1000BD15C;
            v97[3] = &unk_1002857A0;
            v97[4] = self;
            v98 = v88;
            v99 = v85;
            [v34 enumerateObjectsUsingBlock:v97];
            [(VCPDatabaseWriter *)self->_database commit];
          }

          v35 = [v88 count];
          if (!((v35 != [v77 count]) | v18 & 1))
          {
            LODWORD(v46) = 9;
            goto LABEL_138;
          }

          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v36 = v77;
          allValues = v36;
          v38 = [v36 countByEnumeratingWithState:&v93 objects:v104 count:16];
          if (!v38)
          {
            goto LABEL_73;
          }

          v39 = *v94;
          while (2)
          {
            v40 = 0;
LABEL_37:
            if (*v94 != v39)
            {
              objc_enumerationMutation(allValues);
            }

            localIdentifier = [*(*(&v93 + 1) + 8 * v40) localIdentifier];
            v42 = [v88 objectForKey:localIdentifier];
            v43 = v42;
            if (!v42)
            {
              goto LABEL_64;
            }

            if (![v42 isDeletePending])
            {
              goto LABEL_63;
            }

            if (MediaAnalysisLogLevel() >= 5)
            {
              v44 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v84))
              {
                *buf = 138412290;
                v106 = localIdentifier;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "[VCPAssetMaintenanceTask][%@] Asset found; recovering analysis", buf, 0xCu);
              }
            }

            v45 = [(VCPDatabaseWriter *)self->_database setDeletePendingFlag:0 localIdentifier:localIdentifier];
            LODWORD(v46) = 6;
            if (v45 == -108 || v45 == -36)
            {
              v47 = v45;
            }

            else
            {
              v47 = v45;
              if (v45 != -23)
              {
                LODWORD(v46) = 0;
                v47 = v86;
              }
            }

            if (v45 == -108 || v45 == -36 || v45 == -23)
            {
              v86 = v47;
              goto LABEL_54;
            }

            if (++v80 < 0x3E8)
            {
              v86 = v47;
              v13 = v83;
              goto LABEL_63;
            }

            commit = [(VCPDatabaseWriter *)self->_database commit];
            LODWORD(v46) = 6;
            if (commit == -108 || commit == -36)
            {
              v86 = commit;
            }

            else
            {
              v86 = commit;
              if (commit != -23)
              {
                LODWORD(v46) = 0;
                v86 = v47;
              }
            }

            if (commit == -108)
            {
LABEL_54:
              v13 = v83;
            }

            else
            {
              v13 = v83;
              if (commit != -36 && commit != -23)
              {
                v80 = 0;
LABEL_63:
                [v88 removeObjectForKey:localIdentifier];
LABEL_64:

LABEL_65:
                if (v38 == ++v40)
                {
                  v36 = allValues;
                  v49 = [allValues countByEnumeratingWithState:&v93 objects:v104 count:16];
                  v38 = v49;
                  if (v49)
                  {
                    continue;
                  }

LABEL_73:

                  v91 = 0u;
                  v92 = 0u;
                  v89 = 0u;
                  v90 = 0u;
                  allValues = [v88 allValues];
                  v46 = [allValues countByEnumeratingWithState:&v89 objects:v103 count:16];
                  if (!v46)
                  {
                    goto LABEL_132;
                  }

                  obj = allValues;
                  v79 = *v90;
                  while (2)
                  {
                    v50 = 0;
                    v51 = v82;
LABEL_76:
                    if (*v90 != v79)
                    {
                      objc_enumerationMutation(obj);
                    }

                    localIdentifier2 = [*(*(&v89 + 1) + 8 * v50) localIdentifier];
                    photoLibrary3 = [(VCPTask *)self photoLibrary];
                    v54 = v46;
                    v55 = [PHAsset vcp_fetchOptionsForLibrary:photoLibrary3 forTaskID:1];

                    [v55 setIncludeTrashedAssets:1];
                    v102 = localIdentifier2;
                    v56 = [NSArray arrayWithObjects:&v102 count:1];
                    v57 = [PHAsset fetchAssetsWithLocalIdentifiers:v56 options:v55];

                    if ([v57 count])
                    {
                      if (MediaAnalysisLogLevel() >= 5)
                      {
                        v58 = &_os_log_default;
                        if (os_log_type_enabled(&_os_log_default, v84))
                        {
                          *buf = 138412290;
                          v106 = localIdentifier2;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "[VCPAssetMaintenanceTask][%@] Asset in trash; marking analysis for deletion", buf, 0xCu);
                        }
                      }

                      v59 = [(VCPDatabaseWriter *)self->_database setDeletePendingFlag:1 localIdentifier:localIdentifier2];
                      LODWORD(v46) = 6;
                      if (v59 == -108 || v59 == -36)
                      {
                        v60 = v59;
                      }

                      else
                      {
                        v60 = v59;
                        if (v59 != -23)
                        {
                          LODWORD(v46) = 0;
                          v60 = v86;
                        }
                      }

                      if (v59 == -108 || v59 == -36 || v59 == -23)
                      {
                        goto LABEL_127;
                      }

                      if (++v80 <= 0x3E7)
                      {
                        goto LABEL_126;
                      }

                      if ((v73 & 1) == 0)
                      {
                        v73 = 0;
                        v86 = v60;
                        v82 = v51;
LABEL_115:
                        commit2 = [(VCPDatabaseWriter *)self->_database commit];
                        LODWORD(v46) = 6;
                        if (commit2 == -108 || commit2 == -36)
                        {
                          v60 = commit2;
                        }

                        else
                        {
                          v60 = commit2;
                          if (commit2 != -23)
                          {
                            LODWORD(v46) = 0;
                            v60 = v86;
                          }
                        }

                        if (commit2 == -108 || commit2 == -36 || commit2 == -23)
                        {
                          v86 = v60;
                          goto LABEL_128;
                        }

                        v80 = 0;
                        v51 = v82;
LABEL_126:
                        LODWORD(v46) = 0;
LABEL_127:
                        v86 = v60;
                        v82 = v51;
LABEL_128:

                        if (v46)
                        {
                          goto LABEL_131;
                        }

                        v50 = v50 + 1;
                        v51 = v82;
                        v46 = v54;
                        if (v54 == v50)
                        {
                          v46 = [obj countByEnumeratingWithState:&v89 objects:v103 count:16];
                          if (!v46)
                          {
LABEL_131:
                            allValues = obj;
                            goto LABEL_132;
                          }

                          continue;
                        }

                        goto LABEL_76;
                      }
                    }

                    else
                    {
                      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v84))
                      {
                        *buf = 138412290;
                        v106 = localIdentifier2;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "[VCPAssetMaintenanceTask][%@] Asset purged; removing analysis", buf, 0xCu);
                      }

                      v61 = [(VCPDatabaseWriter *)self->_database deleteAnalysisForAsset:localIdentifier2];
                      LODWORD(v46) = 6;
                      if (v61 == -108 || v61 == -36)
                      {
                        v60 = v61;
                      }

                      else
                      {
                        v60 = v61;
                        if (v61 != -23)
                        {
                          LODWORD(v46) = 0;
                          v60 = v86;
                        }
                      }

                      if (v61 == -108 || v61 == -36 || v61 == -23)
                      {
                        goto LABEL_127;
                      }

                      if (++v80 <= 0x3E7)
                      {
                        v73 = 1;
                        goto LABEL_126;
                      }
                    }

                    break;
                  }

                  v86 = v60;
                  v62 = [(VCPDatabaseWriter *)self->_database setValue:1 forKey:@"HasDeletedAssetsSinceLastBackup"];
                  if (v62 == -108 || v62 == -36)
                  {
                    v82 = v62;
                  }

                  else
                  {
                    v82 = v62;
                    if (v62 != -23)
                    {
                      v82 = v51;
                    }
                  }

                  v73 = 1;
                  if (v62 == -108 || v62 == -36)
                  {
                    LODWORD(v46) = 1;
                  }

                  else
                  {
                    LODWORD(v46) = 1;
                    if (v62 != -23)
                    {
                      goto LABEL_115;
                    }
                  }

                  goto LABEL_128;
                }

                goto LABEL_37;
              }
            }

            break;
          }

          if (v46)
          {
LABEL_132:

LABEL_138:
            goto LABEL_139;
          }

          goto LABEL_65;
        }

        v100 = 0;
        v22 = [v13 next:&v100];
        v23 = v100;
        v24 = v23;
        if (v22)
        {
          break;
        }

        localIdentifier3 = [v23 localIdentifier];
        v26 = localIdentifier3 == 0;

        if (v26)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
          {
            v29 = [v13 count];
            *buf = 136315650;
            v30 = "local identifier";
            if (!v24)
            {
              v30 = "asset";
            }

            v106 = v30;
            v107 = 2048;
            v108 = v16;
            v109 = 2048;
            v110 = v29;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[VCPAssetMaintenanceTask] Asset maintenance: nil %s at index %zu/%zu", buf, 0x20u);
          }
        }

        else
        {
          localIdentifier4 = [v24 localIdentifier];
          [v88 setObject:v24 forKey:localIdentifier4];

          v18 |= [v24 isDeletePending];
          if (([v24 statsFlags] & 7) == 0)
          {
            localIdentifier5 = [v24 localIdentifier];
            [v85 addObject:localIdentifier5];
          }
        }

        ++v16;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v72))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v72, "[VCPAssetMaintenanceTask] Deleted asset detection/removal process failed", buf, 2u);
      }

      v86 = 0;
      LODWORD(v46) = 6;
LABEL_139:

      objc_autoreleasePoolPop(context);
      selfCopy3 = self;
      v16 = v19;
      if (v46)
      {
        v16 = v19;
        if (v46 != 9)
        {
          v10 = v80;
          v11 = v73;
          if ((v46 & 0xE) != 6)
          {
            goto LABEL_177;
          }

          goto LABEL_144;
        }
      }
    }

    v86 = -128;
LABEL_151:
    v11 = v73;
    if (v80)
    {
      goto LABEL_152;
    }
  }

  if ((v11 & 1) == 0)
  {
LABEL_146:
    [(VCPAssetMaintenanceTask *)selfCopy3 maintainVectorDatabase];
    v64 = VCPSignPostLog();
    v65 = v64;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v65, OS_SIGNPOST_INTERVAL_END, spid, "VCPAssetMaintenanceTask", "", buf, 2u);
    }

    v82 = v86;
    goto LABEL_177;
  }

LABEL_152:
  if (v11)
  {
    v66 = [(VCPDatabaseWriter *)selfCopy3->_database setValue:1 forKey:@"HasDeletedAssetsSinceLastBackup"];
    if (v66 == -108)
    {
      v68 = -108;
    }

    else
    {
      v67 = v66 == -36 || v66 == -23;
      v68 = v66;
      if (!v67)
      {
        v68 = v82;
      }
    }

    if (v66 == -108 || (v66 != -36 ? (v70 = v66 == -23) : (v70 = 1), v70))
    {
      v82 = v68;
      goto LABEL_177;
    }
  }

  else
  {
    v68 = v82;
  }

  commit3 = [(VCPDatabaseWriter *)selfCopy3->_database commit];
  if (commit3 == -108 || commit3 == -36)
  {
    v82 = commit3;
  }

  else
  {
    v82 = commit3;
    if (commit3 != -23)
    {
      v82 = v68;
    }
  }

  if (commit3 != -108 && commit3 != -36 && commit3 != -23)
  {
    goto LABEL_146;
  }

LABEL_177:

  return v82;
}

- (void)_maintainAssetLocalIdentifiers:(id)identifiers missingStatsFlagsSet:(id)set deletePendingSet:(id)pendingSet
{
  identifiersCopy = identifiers;
  setCopy = set;
  pendingSetCopy = pendingSet;
  v43 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[VCPAssetMaintenanceTask][BatchCount:%lu]", [identifiersCopy count]);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 138412290;
      v59 = v43;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Checking ...", buf, 0xCu);
    }
  }

  photoLibrary = [(VCPTask *)self photoLibrary];
  v11 = [PHAsset vcp_fetchOptionsForLibrary:photoLibrary forTaskID:1];

  if ([setCopy count])
  {
    v12 = objc_autoreleasePoolPush();
    if (MediaAnalysisLogLevel() >= 5)
    {
      v13 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        v14 = [setCopy count];
        *buf = 138412546;
        v59 = v43;
        v60 = 2048;
        v61 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Updating %lu StatsFlag", buf, 0x16u);
      }
    }

    allObjects = [setCopy allObjects];
    v16 = [PHAsset fetchAssetsWithLocalIdentifiers:allObjects options:v11];

    photoLibrary2 = [(VCPTask *)self photoLibrary];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000BDA90;
    v54[3] = &unk_100284FF0;
    v18 = v16;
    v55 = v18;
    selfCopy = self;
    v57 = v43;
    [photoLibrary2 mad_performAnalysisDataStoreChanges:v54 error:0];

    objc_autoreleasePoolPop(v12);
  }

  if ([pendingSetCopy count])
  {
    v19 = objc_autoreleasePoolPush();
    allObjects2 = [pendingSetCopy allObjects];
    v21 = [PHAsset fetchAssetsWithLocalIdentifiers:allObjects2 options:v11];

    if ([v21 count])
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v22 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v22))
        {
          v23 = [v21 count];
          *buf = 138412546;
          v59 = v43;
          v60 = 2048;
          v61 = v23;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@ Recovering %lu delete pending state", buf, 0x16u);
        }
      }

      photoLibrary3 = [(VCPTask *)self photoLibrary];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1000BDCF0;
      v50[3] = &unk_100284FF0;
      v51 = v21;
      selfCopy2 = self;
      v53 = v43;
      [photoLibrary3 mad_performAnalysisDataStoreChanges:v50 error:0];
    }

    objc_autoreleasePoolPop(v19);
  }

  v25 = [PHAsset fetchAssetsWithLocalIdentifiers:identifiersCopy options:v11];
  v26 = [v25 count];
  if (v26 == [identifiersCopy count])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v27 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        *buf = 138412290;
        v59 = v43;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Finished with early termination", buf, 0xCu);
      }
    }
  }

  else
  {
    v28 = [NSMutableSet setWithArray:identifiersCopy];
    for (i = 0; i < [v25 count]; ++i)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = [v25 objectAtIndexedSubscript:i];
      localIdentifier = [v31 localIdentifier];
      [v28 removeObject:localIdentifier];

      objc_autoreleasePoolPop(v30);
    }

    v33 = [v11 copy];
    [v33 setIncludeTrashedAssets:1];
    allObjects3 = [v28 allObjects];
    v35 = [PHAsset fetchAssetsWithLocalIdentifiers:allObjects3 options:v33];

    photoLibrary4 = [(VCPTask *)self photoLibrary];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000BDF10;
    v44[3] = &unk_1002857F0;
    v37 = v35;
    v45 = v37;
    v38 = v43;
    v46 = v38;
    v47 = pendingSetCopy;
    selfCopy3 = self;
    v39 = v28;
    v49 = v39;
    [photoLibrary4 mad_performAnalysisDataStoreChanges:v44 error:0];

    if (MediaAnalysisLogLevel() >= 6)
    {
      v40 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v40))
      {
        *buf = 138412290;
        v59 = v38;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "%@ Finished", buf, 0xCu);
      }
    }
  }
}

- (int)mainInternal
{
  if (_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl())
  {
    v29 = +[NSDate now];
    v3 = VCPSignPostLog();
    v4 = os_signpost_id_generate(v3);

    v5 = VCPSignPostLog();
    v6 = v5;
    v27 = v4 - 1;
    spid = v4;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VCPAssetMaintenanceTask", "", buf, 2u);
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v7 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[VCPAssetMaintenanceTask] Performing asset book-keeping...", buf, 2u);
      }
    }

    v30 = +[MADManagedPhotosAsset fetchRequest];
    photoLibrary = [(VCPTask *)self photoLibrary];
    v31 = [MADPhotosDataStoreBatchIterator iteratorForFetchRequest:v30 photoLibrary:photoLibrary batchSize:1000];

    if (v31)
    {
      v32 = +[NSMutableArray array];
      v33 = +[NSMutableSet set];
      v34 = +[NSMutableSet set];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v9 = v31;
      v10 = [v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v10)
      {
        v11 = *v40;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v40 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v39 + 1) + 8 * i);
            v14 = objc_autoreleasePoolPush();
            isCancelled = [(VCPTask *)self isCancelled];
            if ((isCancelled & 1) == 0)
            {
              v16 = +[VCPWatchdog sharedWatchdog];
              [v16 pet];

              v35[0] = _NSConcreteStackBlock;
              v35[1] = 3221225472;
              v35[2] = sub_1000BEBC8;
              v35[3] = &unk_100285818;
              v35[4] = v13;
              v35[5] = self;
              v17 = v32;
              v36 = v17;
              v18 = v34;
              v37 = v18;
              v19 = v33;
              v38 = v19;
              [v9 performBlockAndWait:v35];
              [(VCPAssetMaintenanceTask *)self _maintainAssetLocalIdentifiers:v17 missingStatsFlagsSet:v19 deletePendingSet:v18];
              [v19 removeAllObjects];
              [v18 removeAllObjects];
              [v17 removeAllObjects];
            }

            objc_autoreleasePoolPop(v14);
            if (isCancelled)
            {

              v24 = -128;
              goto LABEL_28;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      [(VCPAssetMaintenanceTask *)self maintainVectorDatabase];
      v20 = VCPSignPostLog();
      v21 = v20;
      if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, spid, "VCPAssetMaintenanceTask", "", buf, 2u);
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v22 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v22))
        {
          [v29 timeIntervalSinceNow];
          *buf = 134217984;
          v44 = -v23;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[VCPAssetMaintenanceTask] Finished in %.2f seconds", buf, 0xCu);
        }
      }

      v24 = 0;
LABEL_28:
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v25 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v25))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[VCPAssetMaintenanceTask] Failed to create iterator", buf, 2u);
        }
      }

      v24 = -18;
    }

    return v24;
  }

  else
  {

    return [(VCPAssetMaintenanceTask *)self maintainanceWithLegacyDatabase];
  }
}

@end