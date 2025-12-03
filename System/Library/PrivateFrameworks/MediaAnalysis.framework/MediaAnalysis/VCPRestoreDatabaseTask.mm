@interface VCPRestoreDatabaseTask
+ (id)taskWithPhotoLibrary:(id)library cancelBlock:(id)block;
- (BOOL)_shouldUseCoreDataBackupFile;
- (id)_persistentStoreCoordinatorForURL:(id)l;
- (int)_copyManagedPhotosAssetBatch:(id)batch fromIterator:(id)iterator toManagedObjectContext:(id)context successCount:(unint64_t *)count;
- (int)_copyManagedPhotosAssetsFromManagedObjectContext:(id)context toManagedObjectContext:(id)objectContext;
- (int)_persistAnalysisProtoBatch:(id)batch database:(id)database embeddingChangeManager:(id)manager fullResultRestoreCount:(unint64_t *)count embeddingRestoreCount:(unint64_t *)restoreCount;
- (int)_queryDatabaseVersion:(unint64_t *)version persistentStoreCoordinator:(id)coordinator;
- (int)_removePersistentStoresForCoordinator:(id)coordinator;
- (int)_restoreCoreDataStoreFromBackupFilepath:(id)filepath;
- (int)_restoreCoreDataStoreFromBackupPersistentStoreCoordinator:(id)coordinator;
- (int)_restoreVideoEmbeddings;
- (int)mainInternal;
- (int)restoreDatabaseToFilepath:(id)filepath fromBackupFilepath:(id)backupFilepath;
@end

@implementation VCPRestoreDatabaseTask

+ (id)taskWithPhotoLibrary:(id)library cancelBlock:(id)block
{
  libraryCopy = library;
  blockCopy = block;
  v7 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy];
  [v7 setCancel:blockCopy];

  return v7;
}

- (int)_persistAnalysisProtoBatch:(id)batch database:(id)database embeddingChangeManager:(id)manager fullResultRestoreCount:(unint64_t *)count embeddingRestoreCount:(unint64_t *)restoreCount
{
  batchCopy = batch;
  databaseCopy = database;
  managerCopy = manager;
  countCopy = count;
  *count = 0;
  restoreCountCopy = restoreCount;
  *restoreCount = 0;
  v83 = +[NSMutableDictionary dictionary];
  v11 = 0;
  type = VCPLogToOSLogType[4];
  while (v11 < [batchCopy count])
  {
    v12 = [batchCopy objectAtIndexedSubscript:v11];
    assetCloudIdentifier = [v12 assetCloudIdentifier];

    v14 = [[PHCloudIdentifier alloc] initWithStringValue:assetCloudIdentifier];
    if (v14)
    {
      v15 = [batchCopy objectAtIndexedSubscript:v11];
      [v83 setObject:v15 forKeyedSubscript:v14];
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
    {
      *buf = 138412290;
      *&buf[4] = assetCloudIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Restore][Full] No cloud identifier (%@ stored in proto); skipping entry", buf, 0xCu);
    }

    ++v11;
  }

  photoLibrary = [(VCPTask *)self photoLibrary];
  allKeys = [v83 allKeys];
  v72 = [photoLibrary localIdentifierMappingsForCloudIdentifiers:allKeys];

  v18 = +[NSMutableDictionary dictionary];
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_100181D7C;
  v99[3] = &unk_100287EA0;
  v71 = v72;
  v100 = v71;
  v19 = v18;
  v101 = v19;
  [v83 enumerateKeysAndObjectsUsingBlock:v99];
  v82 = +[NSMutableDictionary dictionary];
  v97 = 0u;
  v98 = 0u;
  v96 = 0u;
  v95 = 0u;
  obj = v19;
  v20 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
  if (!v20)
  {
    goto LABEL_37;
  }

  v21 = *v96;
  v76 = VCPLogToOSLogType[5];
  v80 = VCPLogToOSLogType[3];
  while (2)
  {
    v22 = 0;
    do
    {
      if (*v96 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v95 + 1) + 8 * v22);
      v24 = [obj objectForKeyedSubscript:v23];
      v25 = [NSString stringWithFormat:@"[RestoreToMADB][Full][%@]", v23];
      exportToLegacyDictionary = [v24 exportToLegacyDictionary];
      if (exportToLegacyDictionary)
      {
        v27 = +[NSMutableDictionary dictionary];
        v106 = v23;
        v28 = [NSArray arrayWithObjects:&v106 count:1];
        v29 = [databaseCopy migration_queryHeadersForAssets:v28 analyses:v27] == 0;

        if (v29)
        {
          v30 = [v27 objectForKeyedSubscript:v23];
          v31 = v30;
          if (v30)
          {
            vcp_version = [v30 vcp_version];
            if (vcp_version >= [exportToLegacyDictionary vcp_version])
            {
              if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v76))
              {
                vcp_version2 = [v31 vcp_version];
                vcp_version3 = [exportToLegacyDictionary vcp_version];
                *buf = 138412802;
                *&buf[4] = v25;
                *&buf[12] = 1024;
                *&buf[14] = vcp_version2;
                *&buf[18] = 1024;
                *&buf[20] = vcp_version3;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v76, "%@ Existing version (%d) >= Backup'd analysis version (%d); skipping entry", buf, 0x18u);
              }

LABEL_21:
              goto LABEL_25;
            }
          }
        }

        v33 = [databaseCopy migration_restoreAnalysis:exportToLegacyDictionary forLocalIdentifier:v23];
        if (v33)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v80))
          {
            *buf = 138412546;
            *&buf[4] = v25;
            *&buf[12] = 1024;
            *&buf[14] = v33;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v80, "%@ Failed to restore analysis to database (%d)", buf, 0x12u);
          }

          goto LABEL_37;
        }

        [v82 setObject:exportToLegacyDictionary forKeyedSubscript:v23];
        goto LABEL_21;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v80))
      {
        *buf = 138412290;
        *&buf[4] = v25;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v80, "%@ Failed to convert asset analysis; skipping entry", buf, 0xCu);
      }

LABEL_25:

      v22 = v22 + 1;
    }

    while (v20 != v22);
    v36 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
    v20 = v36;
    if (v36)
    {
      continue;
    }

    break;
  }

LABEL_37:

  commit = [databaseCopy commit];
  if (commit)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v38 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v38))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "[RestoreToMADB][Full] Failed to commit restores to database", buf, 2u);
      }
    }

    goto LABEL_100;
  }

  *countCopy = [v82 count];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v39 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v39))
    {
      v40 = [v82 count];
      *buf = 134217984;
      *&buf[4] = v40;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[Restore][Full] Restored full results for a batch of %zu assets from backup", buf, 0xCu);
    }
  }

  photoLibrary2 = [(VCPTask *)self photoLibrary];
  v94 = 0;
  v70 = [photoLibrary2 fetchOptionsForMediaProcessingTaskID:17 priority:0 algorithmVersion:0 sceneConfidenceThreshold:0 processed:0 exactVersionMatch:&v94 error:0.0];
  v68 = v94;

  if (!v70 && MediaAnalysisLogLevel() >= 3)
  {
    v42 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v42))
    {
      *buf = 138412290;
      *&buf[4] = v68;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "[Restore][Full] Failed to obtain fetch options: %@", buf, 0xCu);
    }
  }

  allKeys2 = [obj allKeys];
  v81 = [PHAsset fetchAssetsWithLocalIdentifiers:allKeys2 options:v70];

  v44 = [v81 count];
  if (v44 != [obj count] && MediaAnalysisLogLevel() >= 3)
  {
    v45 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v45))
    {
      v46 = [v81 count];
      v47 = [obj count];
      *buf = 67109376;
      *&buf[4] = v46;
      *&buf[8] = 1024;
      *&buf[10] = v47;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "[Restore][Full] Fetched only %d assets from Photos given %d local identifiers", buf, 0xEu);
    }
  }

  v77 = +[NSMutableArray array];
  if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    goto LABEL_98;
  }

  v48 = 0;
  v74 = VCPLogToOSLogType[6];
  while (2)
  {
    if (v48 < [v81 count])
    {
      v49 = objc_autoreleasePoolPush();
      v50 = [v81 objectAtIndexedSubscript:v48];
      localIdentifier = [v50 localIdentifier];
      v52 = [NSString stringWithFormat:@"[RestoreToVDB][Full][%@]", localIdentifier];
      v53 = [obj objectForKeyedSubscript:localIdentifier];
      if (v53)
      {
        if ([v50 mad_needsImageEmbeddingProcessing])
        {
          v54 = [v53 imageEmbeddingVSKAssetWithLocalIdentifier:localIdentifier];
          if (v54)
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v74))
            {
              imageEmbeddingVersion = [v53 imageEmbeddingVersion];
              *buf = 138412546;
              *&buf[4] = v52;
              *&buf[12] = 1024;
              *&buf[14] = imageEmbeddingVersion;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v74, "%@ Restoring image embeddings (v%d) from legacy backup", buf, 0x12u);
            }

LABEL_68:
            if (![v50 mad_needsVideoEmbeddingProcessing])
            {
              v57 = 0;
              goto LABEL_80;
            }

            v56 = [v82 objectForKeyedSubscript:localIdentifier];
            if (v56)
            {
              v57 = [v53 videoEmbeddingVSKAssetWithLocalIdentifier:localIdentifier mediaAnalysisResults:v56];
              if (v57)
              {
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v74))
                {
                  videoEmbeddingVersion = [v53 videoEmbeddingVersion];
                  *buf = 138412546;
                  *&buf[4] = v52;
                  *&buf[12] = 1024;
                  *&buf[14] = videoEmbeddingVersion;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v74, "%@ Restoring video embeddings (v%d) from backup", buf, 0x12u);
                }

LABEL_79:

LABEL_80:
                if (v54 | v57)
                {
                  [v77 addObject:localIdentifier];
                  v59 = +[MADVSKEmbeddingResults resultsWithImageEmbedding:imageEmbeddingVersion:videoEmbeddingAsset:videoEmbeddingVersion:](MADVSKEmbeddingResults, "resultsWithImageEmbedding:imageEmbeddingVersion:videoEmbeddingAsset:videoEmbeddingVersion:", v54, [v53 imageEmbeddingVersion], v57, objc_msgSend(v53, "videoEmbeddingVersion"));
                  [managerCopy addPendingEmbeddingResults:v59];
                }

LABEL_83:
                objc_autoreleasePoolPop(v49);
                ++v48;
                continue;
              }

              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v74))
              {
                *buf = 138412290;
                *&buf[4] = v52;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v74, "%@ No compatible video embeddings available from backup", buf, 0xCu);
              }
            }

            v57 = 0;
            goto LABEL_79;
          }

          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v74))
          {
            *buf = 138412290;
            *&buf[4] = v52;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v74, "%@ No compatible image embeddings available from legacy backup", buf, 0xCu);
          }
        }

        v54 = 0;
        goto LABEL_68;
      }

      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        *&buf[4] = v52;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to find matching asset from backup; skipping entry", buf, 0xCu);
      }

      goto LABEL_83;
    }

    break;
  }

  commit = [managerCopy publishPendingChanges];
  if (commit)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v60 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v60))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v60, "[RestoreToVDB][Full] Failed to persist asset embeddings to vectorDB", buf, 2u);
      }
    }

    goto LABEL_99;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v105 = 0;
  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = sub_100181EF8;
  v89[3] = &unk_100287EC8;
  v90 = v81;
  v91 = v77;
  v92 = obj;
  v93 = buf;
  v61 = objc_retainBlock(v89);
  photoLibrary3 = [(VCPTask *)self photoLibrary];
  v87 = 0;
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_1001820E0;
  v88[3] = &unk_100283000;
  v88[4] = self;
  v63 = [photoLibrary3 mad_performChangesAndWait:v61 activity:1 cancelBlock:v88 extendTimeoutBlock:&stru_100287EE8 error:&v87];
  v64 = v87;

  if (v63)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v74))
    {
      v65 = *(*&buf[8] + 24);
      *v102 = 134217984;
      v103 = v65;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v74, "[Restore][Full] Restored embeddings for a batch of %zu assets from backup", v102, 0xCu);
    }

    commit = 0;
    *restoreCountCopy = *(*&buf[8] + 24);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v66 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v66))
      {
        *v102 = 138412290;
        v103 = v64;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v66, "[RestoreToPhotos][Full] Failed to persist to photo library: %@", v102, 0xCu);
      }
    }

    commit = [v64 code];
  }

  _Block_object_dispose(buf, 8);
  if (v63)
  {
LABEL_98:
    commit = 0;
  }

LABEL_99:

LABEL_100:
  return commit;
}

- (int)restoreDatabaseToFilepath:(id)filepath fromBackupFilepath:(id)backupFilepath
{
  filepathCopy = filepath;
  backupFilepathCopy = backupFilepath;
  v60 = backupFilepathCopy;
  v8 = [VCPDatabaseWriter databaseWithFilepath:filepathCopy];
  if (!v8)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        photoLibrary = [(VCPTask *)self photoLibrary];
        photoLibraryURL = [photoLibrary photoLibraryURL];
        *buf = 138412546;
        *&buf[4] = filepathCopy;
        v63 = 2112;
        v64 = photoLibraryURL;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "  Failed to create VCPDatabaseWriter at %@ for photo library %@", buf, 0x16u);
      }
    }

    goto LABEL_30;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [NSInputStream inputStreamWithFileAtPath:backupFilepathCopy];
  [v10 open];
  v11 = [VCPBackupFileHeader headerForTask:1];
  v59 = v11;
  v12 = [VCPBackupFileHeader headerFromStream:v10];
  v13 = v12;
  context = v9;
  if (!v12)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v26 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v26))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "  Failed to read backup file header", buf, 2u);
      }
    }

    LODWORD(v21) = -36;
    goto LABEL_26;
  }

  identifier = [v12 identifier];
  if (identifier != [v11 identifier])
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_25;
    }

    v27 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v27))
    {
      goto LABEL_25;
    }

    *buf = 67109120;
    *&buf[4] = [v13 identifier];
    v28 = "  Backup contains invalid file identifier (%u)";
    goto LABEL_24;
  }

  version = [v13 version];
  if (version != [v11 version])
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_25;
    }

    v27 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v27))
    {
      goto LABEL_25;
    }

    *buf = 67109120;
    *&buf[4] = [v13 version];
    v28 = "  Backup contains invalid version (%u)";
LABEL_24:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v27, v28, buf, 8u);
LABEL_25:
    LODWORD(v21) = -50;
LABEL_26:
    v22 = 10;
    goto LABEL_27;
  }

  selfCopy = self;
  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    photoLibrary2 = [(VCPTask *)self photoLibrary];
    v17 = [MADVectorDatabaseChangeManager sharedManagerForPhotoLibrary:photoLibrary2];

    v54 = v17;
    if (!v17)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v18 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          photoLibrary3 = [(VCPTask *)selfCopy photoLibrary];
          photoLibraryURL2 = [photoLibrary3 photoLibraryURL];
          *buf = 138412290;
          *&buf[4] = photoLibraryURL2;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "  Failed to create MADVectorDatabaseChangeManager for photo library %@", buf, 0xCu);
        }
      }

      LODWORD(v21) = 0;
      v22 = 1;
      goto LABEL_27;
    }
  }

  else
  {
    v54 = 0;
  }

  v52 = +[VCPDataDecompressor decompressor];
  v55 = +[NSMutableArray array];
  v50 = 0;
  v51 = 0;
  v56 = 0;
  v21 = 0;
  type = VCPLogToOSLogType[3];
  while ([v10 hasBytesAvailable])
  {
    v30 = objc_autoreleasePoolPush();
    v31 = +[VCPBackupEntryHeader header];
    v32 = [v31 readFromStream:v10];
    if (v32)
    {
      if ([v10 streamStatus] == 5)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          *&buf[4] = v60;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "  Hitting input stream EOF when reading backup entry header from %@", buf, 0xCu);
        }

        v22 = 24;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "  Failed to read backup entry header", buf, 2u);
        }

        v22 = 10;
        v21 = v32;
      }

      goto LABEL_78;
    }

    if ([v31 dataLength] > 0x200000)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
      {
        dataLength = [v31 dataLength];
        *buf = 67109120;
        *&buf[4] = dataLength;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "  Backup entry contains invalid length (%u)", buf, 8u);
      }

      v21 = 4294967246;
      v22 = 10;
      goto LABEL_78;
    }

    if ((++v56 & 0x7F) == 0)
    {
      v34 = +[VCPWatchdog sharedWatchdog];
      [v34 pet];
    }

    v35 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [v31 dataLength]);
    v36 = v35;
    v37 = [v10 vcp_readBuffer:objc_msgSend(v35 ofLength:{"mutableBytes"), objc_msgSend(v31, "dataLength")}];
    if (v37)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "  Failed to read asset analysis data", buf, 2u);
      }

      v22 = 10;
      goto LABEL_77;
    }

    if ([v31 isCompressed])
    {
      v38 = [v52 decompressData:v35];
      if (!v38)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "  Failed to decompress asset analysis; skipping entry", buf, 2u);
        }

        v22 = 23;
        goto LABEL_76;
      }
    }

    else
    {
      v38 = v35;
    }

    v39 = [[VCPProtoAssetAnalysis alloc] initWithData:v38];
    if (v39)
    {
      [v55 addObject:v39];
      if ([v55 count] < 0x80)
      {
        v22 = 0;
      }

      else
      {
        v61 = 0;
        *buf = 0;
        v40 = [(VCPRestoreDatabaseTask *)selfCopy _persistAnalysisProtoBatch:v55 database:v8 embeddingChangeManager:v54 fullResultRestoreCount:buf embeddingRestoreCount:&v61];
        if (v40)
        {
          v22 = 10;
          v21 = v40;
        }

        else
        {
          v41 = *buf;
          v48 = v61;
          v49 = +[NSMutableArray array];
          v47 = v41;

          v22 = 0;
          v51 += v48;
          v50 += v47;
          v55 = v49;
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "  Failed to deserialize asset analysis; skipping entry", buf, 2u);
      }

      v22 = 23;
    }

    v35 = v38;
LABEL_76:
    v37 = v21;
LABEL_77:

    v21 = v37;
LABEL_78:

    objc_autoreleasePoolPop(v30);
    if (v22 && v22 != 23)
    {
      if (v22 != 24)
      {
        goto LABEL_93;
      }

      break;
    }
  }

  v42 = v21;
  if ([v55 count])
  {
    v61 = 0;
    *buf = 0;
    LODWORD(v21) = [(VCPRestoreDatabaseTask *)selfCopy _persistAnalysisProtoBatch:v55 database:v8 embeddingChangeManager:v54 fullResultRestoreCount:buf embeddingRestoreCount:&v61];
    if (v21)
    {
      v22 = 10;
      goto LABEL_93;
    }

    v44 = v61;
    v43 = *buf;
    v45 = +[NSMutableArray array];

    v51 += v44;
    v50 += v43;
    v55 = v45;
  }

  [v10 close];
  if ([v8 flushWAL] && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, type, "  Failed to flush database WAL; restore may be incomplete", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v46 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v46))
    {
      *buf = 134218752;
      *&buf[4] = v50;
      v63 = 2048;
      v64 = v56;
      v65 = 2048;
      v66 = v51;
      v67 = 2048;
      v68 = v56;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "  Restored %zu/%zu full analysis records, %zu/%zu embedding records", buf, 0x2Au);
    }
  }

  v22 = 0;
  LODWORD(v21) = v42;
LABEL_93:

LABEL_27:
  objc_autoreleasePoolPop(context);
  if (v22 != 10 && v22)
  {
LABEL_30:
    LODWORD(v21) = -18;
    goto LABEL_31;
  }

  [v8 commit];
LABEL_31:

  return v21;
}

- (id)_persistentStoreCoordinatorForURL:(id)l
{
  lCopy = l;
  v4 = +[MADPhotosDataStoreClient modelDefinitionPath];
  v5 = [NSURL fileURLWithPath:v4];

  v6 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v5];
  if (v6)
  {
    v7 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v6];
    if (v7)
    {
      v29[0] = NSPersistentHistoryTrackingKey;
      v29[1] = NSReadOnlyPersistentStoreOption;
      v30[0] = &__kCFBooleanTrue;
      v30[1] = &__kCFBooleanFalse;
      v29[2] = NSMigratePersistentStoresAutomaticallyOption;
      v29[3] = NSInferMappingModelAutomaticallyOption;
      v30[2] = &__kCFBooleanTrue;
      v30[3] = &__kCFBooleanTrue;
      v8 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
      v22 = 0;
      v9 = [v7 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:lCopy options:v8 error:&v22];
      v10 = v22;
      if (v9)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v11 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v11))
          {
            path = [lCopy path];
            options = [v9 options];
            *buf = 138412802;
            v24 = @"[Restore][Full|MACD]";
            v25 = 2112;
            v26 = path;
            v27 = 2112;
            v28 = options;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Store options for persistent store at %@: %@", buf, 0x20u);
          }
        }

        if (MediaAnalysisLogLevel() >= 6)
        {
          v14 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v14))
          {
            path2 = [lCopy path];
            *buf = 138412546;
            v24 = @"[Restore][Full|MACD]";
            v25 = 2112;
            v26 = path2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Successfully added persistent store at %@ to PSC", buf, 0x16u);
          }
        }

        v16 = v7;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v19 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v19))
          {
            path3 = [lCopy path];
            *buf = 138412802;
            v24 = @"[Restore][Full|MACD]";
            v25 = 2112;
            v26 = path3;
            v27 = 2112;
            v28 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Failed to add persistent store at %@ to PSC with error %@", buf, 0x20u);
          }
        }

        v16 = 0;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v18 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          *buf = 138412290;
          v24 = @"[Restore][Full|MACD]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Failed to initialize persistent store coordinator", buf, 0xCu);
        }
      }

      v16 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v17 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        *buf = 138412290;
        v24 = @"[Restore][Full|MACD]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ Failed to initialize managed object model", buf, 0xCu);
      }
    }

    v16 = 0;
  }

  return v16;
}

- (int)_copyManagedPhotosAssetBatch:(id)batch fromIterator:(id)iterator toManagedObjectContext:(id)context successCount:(unint64_t *)count
{
  batchCopy = batch;
  iteratorCopy = iterator;
  contextCopy = context;
  *count = 0;
  photoLibrary = [(VCPTask *)self photoLibrary];
  allKeys = [batchCopy allKeys];
  v13 = [photoLibrary localIdentifierMappingsForCloudIdentifiers:allKeys];

  +[NSMutableArray array];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001838AC;
  v14 = v46[3] = &unk_100287F10;
  v47 = v14;
  v48 = @"[Restore][Full|MACD]";
  [v13 enumerateKeysAndObjectsUsingBlock:v46];
  if ([v14 count])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v15 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        v16 = [batchCopy count];
        v17 = [v14 count];
        *buf = 138412802;
        *&buf[4] = @"[Restore][Full|MACD]";
        *&buf[12] = 1024;
        *&buf[14] = v16;
        *&buf[18] = 1024;
        *&buf[20] = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@ Mapped %d cloud identifiers to %d local identifiers", buf, 0x18u);
      }
    }

    v18 = +[MADManagedPhotosAsset fetchRequest];
    v19 = +[MADManagedPhotosAsset localIdentifierColumnName];
    v20 = [NSPredicate predicateWithFormat:@"%K IN %@", v19, v14];
    [v18 setPredicate:v20];

    v21 = +[NSMutableDictionary dictionary];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v54 = sub_100183A34;
    v55 = sub_100183A44;
    v56 = 0;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100183A4C;
    v41[3] = &unk_100287F38;
    v22 = contextCopy;
    v42 = v22;
    v23 = v18;
    v43 = v23;
    v45 = buf;
    v24 = v21;
    v44 = v24;
    [v22 performBlockAndWait:v41];
    code = [*(*&buf[8] + 40) code];
    if (code)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v26 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v26))
        {
          v27 = [v14 count];
          *v49 = 138412546;
          v50 = @"[Restore][Full|MACD]";
          v51 = 1024;
          v52 = v27;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Failed to find %d managed assets in DB", v49, 0x12u);
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v29 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v29))
        {
          v30 = [v24 count];
          *v49 = 138412546;
          v50 = @"[Restore][Full|MACD]";
          v51 = 1024;
          v52 = v30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "%@ Found %d managed assets in CoreData DB", v49, 0x12u);
        }
      }

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100183BD8;
      v34[3] = &unk_100287F60;
      v35 = v22;
      v36 = batchCopy;
      v37 = v13;
      v38 = @"[Restore][Full|MACD]";
      v39 = v24;
      countCopy = count;
      [iteratorCopy performBlockAndWait:v34];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v28 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        *buf = 138412290;
        *&buf[4] = @"[Restore][Full|MACD]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Local identifiers array is empty. Skip copying", buf, 0xCu);
      }
    }

    code = 0;
  }

  return code;
}

- (int)_copyManagedPhotosAssetsFromManagedObjectContext:(id)context toManagedObjectContext:(id)objectContext
{
  contextCopy = context;
  objectContextCopy = objectContext;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      *buf = 138412290;
      v43 = @"[Restore][Full|MACD]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Copying managed photos assets from backup to main DB with cloud->local identifier conversion", buf, 0xCu);
    }
  }

  v28 = +[MADManagedPhotosAsset fetchRequest];
  v7 = [MADPhotosDataStoreBatchIterator iteratorForFetchRequest:"iteratorForFetchRequest:mangedObjectContext:batchSize:" mangedObjectContext:? batchSize:?];
  v29 = v7;
  if (!v7)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v26 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v26))
      {
        *buf = 138412290;
        v43 = @"[Restore][Full|MACD]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Failed to create PhotosDataStoreBatchIterator", buf, 0xCu);
      }
    }

    v25 = -18;
    goto LABEL_37;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = [v8 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = *v39;
  type = VCPLogToOSLogType[3];
  v32 = VCPLogToOSLogType[6];
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v39 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v38 + 1) + 8 * i);
      v15 = objc_autoreleasePoolPush();
      v10 += [v14 count];
      if (__ROR8__(0x8F5C28F5C28F5C29 * v10, 2) <= 0x28F5C28F5C28F5CuLL)
      {
        if ([(VCPTask *)self isCancelled])
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            v16 = [v14 count];
            *buf = 138412802;
            v43 = @"[Restore][Full|MACD]";
            v44 = 2048;
            v45 = v10 - v16;
            v46 = 2048;
            v47 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Cancelling copying assets[%zu:%zu] from backup to main DB", buf, 0x20u);
          }

          v17 = 0;
          goto LABEL_25;
        }

        v18 = +[VCPWatchdog sharedWatchdog];
        [v18 pet];
      }

      v19 = +[NSMutableDictionary dictionary];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100184A00;
      v35[3] = &unk_1002832A0;
      v35[4] = v14;
      v36 = @"[Restore][Full|MACD]";
      v20 = v19;
      v37 = v20;
      [v8 performBlockAndWait:v35];
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v32))
      {
        v21 = [v14 count];
        *buf = 138412802;
        v43 = @"[Restore][Full|MACD]";
        v44 = 2048;
        v45 = v10 - v21;
        v46 = 2048;
        v47 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ Copying managedAssetBatch[%ld:%ld] from backup DB to main DB", buf, 0x20u);
      }

      v34 = 0;
      if ([(VCPRestoreDatabaseTask *)self _copyManagedPhotosAssetBatch:v20 fromIterator:v8 toManagedObjectContext:objectContextCopy successCount:&v34]&& MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
      {
        v22 = [v14 count];
        *buf = 138412802;
        v43 = @"[Restore][Full|MACD]";
        v44 = 2048;
        v45 = v10 - v22;
        v46 = 2048;
        v47 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to copy managedAssetBatch[%ld:%ld] from backup DB to main DB", buf, 0x20u);
      }

      [v20 removeAllObjects];
      v23 = v34;

      v9 += v23;
      v17 = 1;
LABEL_25:
      objc_autoreleasePoolPop(v15);
      if (!v17)
      {

        v25 = -128;
        goto LABEL_37;
      }
    }

    v11 = [v8 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_28:

  if (MediaAnalysisLogLevel() >= 5)
  {
    v24 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v24))
    {
      *buf = 138412802;
      v43 = @"[Restore][Full|MACD]";
      v44 = 2048;
      v45 = v9;
      v46 = 2048;
      v47 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ Restored %zu/%zu full analysis records", buf, 0x20u);
    }
  }

  v25 = 0;
LABEL_37:

  return v25;
}

- (int)_queryDatabaseVersion:(unint64_t *)version persistentStoreCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v6 = coordinatorCopy;
  if (version)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x3032000000;
    v21 = sub_100183A34;
    v22 = sub_100183A44;
    v23 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100184F34;
    v13[3] = &unk_100285278;
    v14 = coordinatorCopy;
    v15 = @"[Restore][Full|MACD]";
    p_buf = &buf;
    [v14 performBlockAndWait:v13];
    v7 = *(*(&buf + 1) + 40);
    if (v7)
    {
      v8 = [v7 objectForKeyedSubscript:MADPhotosDataStoreVersionKey];
      *version = [v8 unsignedIntegerValue];

      v9 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v11 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          *v17 = 138412290;
          v18 = @"[Restore][Full|MACD]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Failed to fetch database metadata", v17, 0xCu);
        }
      }

      v9 = -18;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v10 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = @"[Restore][Full|MACD]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Nil provided for version parameter", &buf, 0xCu);
      }
    }

    v9 = -50;
  }

  return v9;
}

- (int)_restoreVideoEmbeddings
{
  photoLibrary = [(VCPTask *)self photoLibrary];
  v3 = [MADPhotosDataStoreClient sharedMigrationContextForPhotoLibrary:photoLibrary];

  v60 = v3;
  if (v3)
  {
    v59 = [MADFetchRequest fetchRequestWithManagedObjectContext:v3];
    if (v59)
    {
      photoLibrary2 = [(VCPTask *)self photoLibrary];
      v5 = [MADVectorDatabaseChangeManager sharedManagerForPhotoLibrary:photoLibrary2];

      if (v5)
      {
        v70 = v5;
        if (MediaAnalysisLogLevel() >= 6)
        {
          v6 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v6))
          {
            *buf = 138412290;
            *&buf[4] = @"[Restore][Full|VideoEmbedding]";
            _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Fetching Photos assets missing video embedding version", buf, 0xCu);
          }
        }

        photoLibrary3 = [(VCPTask *)self photoLibrary];
        v57 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary:photoLibrary3];

        v8 = VCPSignPostLog();
        v9 = os_signpost_id_generate(v8);

        v10 = VCPSignPostLog();
        v11 = v10;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "MADLibraryRestore_Full_RestoreVideoEmbeddings_PhotosFetch", "", buf, 2u);
        }

        photoLibrary4 = [(VCPTask *)self photoLibrary];
        v86 = 0;
        v64 = [photoLibrary4 fetchUnprocessedAssetsForMediaProcessingTaskID:1 priority:0 algorithmVersion:v57 sceneConfidenceThreshold:&v86 error:0.0];
        v58 = v86;

        v13 = VCPSignPostLog();
        v14 = v13;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v9, "MADLibraryRestore_Full_RestoreVideoEmbeddings_PhotosFetch", "", buf, 2u);
        }

        if (v58)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v15 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v15))
            {
              *buf = 138412546;
              *&buf[4] = @"[Restore][Full|VideoEmbedding]";
              *&buf[12] = 2112;
              *&buf[14] = v58;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@ Failed to fetch Photos assets missing videoEmbeddingVersion: %@", buf, 0x16u);
            }
          }

          v63 = -18;
          goto LABEL_80;
        }

        if (MediaAnalysisLogLevel() >= 6)
        {
          v25 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v25))
          {
            v26 = [v64 count];
            *buf = 138412546;
            *&buf[4] = @"[Restore][Full|VideoEmbedding]";
            *&buf[12] = 1024;
            *&buf[14] = v26;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Fetched %d Photos assets missing video embedding version", buf, 0x12u);
          }
        }

        v65 = +[NSMutableDictionary dictionary];
        v56 = MediaAnalysisResultsTypesForAnalysisTypes();
        v67 = 0;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v95 = 0;
        v73 = MediaAnalysisEmbeddingChangedVersion;
        type = VCPLogToOSLogType[6];
        *&v27 = 138412546;
        v55 = v27;
        v68 = VCPLogToOSLogType[3];
        while (1)
        {
          if (v67 >= [v64 count])
          {
            if (MediaAnalysisLogLevel() >= 5)
            {
              v52 = VCPLogToOSLogType[5];
              if (os_log_type_enabled(&_os_log_default, v52))
              {
                v53 = *(*&buf[8] + 24);
                *v88 = v55;
                v89 = @"[Restore][Full|VideoEmbedding]";
                v90 = 2048;
                v91 = v53;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v52, "%@ Restored video embeddings for %zu assets from backup", v88, 0x16u);
              }
            }

            v63 = 0;
LABEL_79:
            _Block_object_dispose(buf, 8);

LABEL_80:
LABEL_81:
            v5 = v70;
            goto LABEL_82;
          }

          context = objc_autoreleasePoolPush();
          if ([(VCPTask *)self isCancelled])
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v68))
            {
              v28 = [v64 count];
              *v88 = 138412802;
              v89 = @"[Restore][Full|VideoEmbedding]";
              v90 = 2048;
              v91 = v67;
              v92 = 2048;
              v93 = v28;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v68, "%@ Cancelling restoring video embedding versions (%zu/%zu) to Photos", v88, 0x20u);
            }

            v29 = 0;
            v63 = -128;
            goto LABEL_73;
          }

          v30 = +[VCPWatchdog sharedWatchdog];
          [v30 pet];

          v61 = [v64 objectAtIndexedSubscript:v67];
          localIdentifier = [v61 localIdentifier];
          LOBYTE(v30) = localIdentifier == 0;

          if ((v30 & 1) == 0)
          {
            localIdentifier2 = [v61 localIdentifier];
            [v65 setObject:v61 forKeyedSubscript:localIdentifier2];
          }

          if ([v65 count] > 0x63 || v67 == objc_msgSend(v64, "count") - 1 && objc_msgSend(v65, "count"))
          {
            allKeys = [v65 allKeys];
            v34 = [v59 fetchAnalysesWithLocalIdentifiers:allKeys predicate:0 resultTypes:v56];

            v69 = +[NSMutableSet set];
            v84 = 0u;
            v85 = 0u;
            v83 = 0u;
            v82 = 0u;
            obj = v65;
            v35 = [obj countByEnumeratingWithState:&v82 objects:v87 count:16];
            if (v35)
            {
              v36 = *v83;
              do
              {
                for (i = 0; i != v35; i = i + 1)
                {
                  if (*v83 != v36)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v38 = *(*(&v82 + 1) + 8 * i);
                  v39 = objc_autoreleasePoolPush();
                  v40 = [v34 objectForKeyedSubscript:v38];
                  if ([v40 vcp_version] >= v73)
                  {
                    v81 = 0;
                    v42 = [VSKAsset mad_videoAssetWithLocalIdentifier:v38 mediaAnalysisResults:v40 error:&v81];
                    v43 = v81;
                    if (v42)
                    {
                      v44 = [MADVSKEmbeddingResults resultsWithImageEmbedding:0 imageEmbeddingVersion:0 videoEmbeddingAsset:v42 videoEmbeddingVersion:75];
                      [v70 addPendingEmbeddingResults:v44];
                      [v69 addObject:v38];
                    }

                    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v68))
                    {
                      *v88 = 138412802;
                      v89 = @"[Restore][Full|VideoEmbedding]";
                      v90 = 2112;
                      v91 = v38;
                      v92 = 2112;
                      v93 = v43;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v68, "%@[%@] Failed to create VSKAsset: %@", v88, 0x20u);
                    }
                  }

                  else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
                  {
                    vcp_version = [v40 vcp_version];
                    *v88 = 138412802;
                    v89 = @"[Restore][Full|VideoEmbedding]";
                    v90 = 2112;
                    v91 = v38;
                    v92 = 1024;
                    LODWORD(v93) = vcp_version;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@[%@] Asset (v%d) needs video embedding processing, skip restoring", v88, 0x1Cu);
                  }

                  objc_autoreleasePoolPop(v39);
                }

                v35 = [obj countByEnumeratingWithState:&v82 objects:v87 count:16];
              }

              while (v35);
            }

            [v70 publishPendingChanges];
            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_100185FC0;
            v76[3] = &unk_100287EC8;
            v45 = v69;
            v77 = v45;
            v46 = obj;
            v78 = v46;
            v79 = @"[Restore][Full|VideoEmbedding]";
            v80 = buf;
            v47 = objc_retainBlock(v76);
            photoLibrary5 = [(VCPTask *)self photoLibrary];
            v74 = 0;
            v75[0] = _NSConcreteStackBlock;
            v75[1] = 3221225472;
            v75[2] = sub_1001861DC;
            v75[3] = &unk_100283000;
            v75[4] = self;
            v49 = [photoLibrary5 mad_performChangesAndWait:v47 activity:1 cancelBlock:v75 extendTimeoutBlock:&stru_100287F80 error:&v74];
            v50 = v74;

            if (v49)
            {
              v51 = +[NSMutableDictionary dictionary];

              v46 = v51;
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v68))
              {
                *v88 = v55;
                v89 = @"[Restore][Full|VideoEmbedding]";
                v90 = 2112;
                v91 = v50;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v68, "%@ Failed to persist to photo library (%@)", v88, 0x16u);
              }

              v63 = -18;
            }

            if ((v49 & 1) == 0)
            {
              v29 = 0;
              goto LABEL_72;
            }
          }

          else
          {
            v46 = v65;
          }

          v29 = 1;
LABEL_72:

          v65 = v46;
LABEL_73:
          objc_autoreleasePoolPop(context);
          ++v67;
          if ((v29 & 1) == 0)
          {
            goto LABEL_79;
          }
        }
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v22 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v22))
        {
          v70 = 0;
          photoLibrary6 = [(VCPTask *)self photoLibrary];
          photoLibraryURL = [photoLibrary6 photoLibraryURL];
          *buf = 138412546;
          *&buf[4] = @"[Restore][Full|VideoEmbedding]";
          *&buf[12] = 2112;
          *&buf[14] = photoLibraryURL;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@ Failed to create MADVectorDatabaseChangeManager for photo library %@", buf, 0x16u);

          v63 = -18;
          goto LABEL_81;
        }
      }

      v63 = -18;
LABEL_82:
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v19 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v19))
        {
          photoLibrary7 = [(VCPTask *)self photoLibrary];
          photoLibraryURL2 = [photoLibrary7 photoLibraryURL];
          *buf = 138412546;
          *&buf[4] = @"[Restore][Full|VideoEmbedding]";
          *&buf[12] = 2112;
          *&buf[14] = photoLibraryURL2;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Failed to create fetch request for photo library %@", buf, 0x16u);
        }
      }

      v63 = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v16 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        photoLibrary8 = [(VCPTask *)self photoLibrary];
        photoLibraryURL3 = [photoLibrary8 photoLibraryURL];
        *buf = 138412546;
        *&buf[4] = @"[Restore][Full|VideoEmbedding]";
        *&buf[12] = 2112;
        *&buf[14] = photoLibraryURL3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Failed to create MOC for photo library %@", buf, 0x16u);
      }
    }

    v63 = -18;
  }

  return v63;
}

- (int)_restoreCoreDataStoreFromBackupPersistentStoreCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v5 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  [v5 setPersistentStoreCoordinator:coordinatorCopy];
  [v5 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  photoLibrary = [(VCPTask *)self photoLibrary];
  v7 = [MADPhotosDataStoreClient sharedMigrationContextForPhotoLibrary:photoLibrary];

  if (v7)
  {
    v8 = mach_absolute_time();
    v9 = VCPSignPostLog();
    v10 = os_signpost_id_generate(v9);

    v11 = VCPSignPostLog();
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MADLibraryRestore_Full_CopyAssets", "", buf, 2u);
    }

    v13 = [(VCPRestoreDatabaseTask *)self _copyManagedPhotosAssetsFromManagedObjectContext:v5 toManagedObjectContext:v7];
    if (!v13)
    {
      v14 = VCPSignPostLog();
      v15 = v14;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v10, "MADLibraryRestore_Full_CopyAssets", "", buf, 2u);
      }

      if (v8)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      v24 = 0;
      v13 = [(VCPRestoreDatabaseTask *)self _queryDatabaseVersion:&v24 persistentStoreCoordinator:coordinatorCopy];
      if (!v13)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v16 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v16))
          {
            *buf = 138412546;
            v26 = @"[Restore][Full|MACD]";
            v27 = 1024;
            LODWORD(v28) = v24;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Setting restored CoreData DB version to v%d", buf, 0x12u);
          }
        }

        v17 = +[MADPhotosDataStoreClient sharedClient];
        v18 = v24;
        photoLibrary2 = [(VCPTask *)self photoLibrary];
        v13 = [v17 setDatabaseVersion:v18 photoLibrary:photoLibrary2];
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v20 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        photoLibrary3 = [(VCPTask *)self photoLibrary];
        photoLibraryURL = [photoLibrary3 photoLibraryURL];
        *buf = 138412546;
        v26 = @"[Restore][Full|MACD]";
        v27 = 2112;
        v28 = photoLibraryURL;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Failed to create MOC for photo library %@", buf, 0x16u);
      }
    }

    v13 = -18;
  }

  return v13;
}

- (int)_restoreCoreDataStoreFromBackupFilepath:(id)filepath
{
  filepathCopy = filepath;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v19 = 138412546;
      v20 = @"[Restore][Full|MACD]";
      v21 = 2112;
      v22 = filepathCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Restore CoreData DB from %@", &v19, 0x16u);
    }
  }

  v6 = [NSURL fileURLWithPath:filepathCopy];
  v7 = [(VCPRestoreDatabaseTask *)self _persistentStoreCoordinatorForURL:v6];

  if (v7)
  {
    _restoreVideoEmbeddings = [(VCPRestoreDatabaseTask *)self _restoreCoreDataStoreFromBackupPersistentStoreCoordinator:v7];
    [(VCPRestoreDatabaseTask *)self _removePersistentStoresForCoordinator:v7];
    if (_restoreVideoEmbeddings)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v9 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v9))
        {
          v19 = 138412290;
          v20 = @"[Restore][Full|MACD]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Failed to restore CoreData DB from backup PSC", &v19, 0xCu);
        }
      }

      goto LABEL_24;
    }

    if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
LABEL_23:
      _restoreVideoEmbeddings = 0;
      goto LABEL_24;
    }

    v11 = mach_absolute_time();
    v12 = VCPSignPostLog();
    v13 = os_signpost_id_generate(v12);

    v14 = VCPSignPostLog();
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MADLibraryRestore_Full_RestoreVideoEmbeddings", "", &v19, 2u);
    }

    _restoreVideoEmbeddings = [(VCPRestoreDatabaseTask *)self _restoreVideoEmbeddings];
    if (!_restoreVideoEmbeddings)
    {
      v16 = VCPSignPostLog();
      v17 = v16;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        LOWORD(v19) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v13, "MADLibraryRestore_Full_RestoreVideoEmbeddings", "", &v19, 2u);
      }

      if (v11)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v10 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v19 = 138412546;
        v20 = @"[Restore][Full|MACD]";
        v21 = 2112;
        v22 = filepathCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Failed to create persistent store coordinator for %@", &v19, 0x16u);
      }
    }

    _restoreVideoEmbeddings = -18;
  }

LABEL_24:

  return _restoreVideoEmbeddings;
}

- (BOOL)_shouldUseCoreDataBackupFile
{
  v3 = +[NSFileManager defaultManager];
  photoLibrary = [(VCPTask *)self photoLibrary];
  vcp_mediaAnalysisCoreDataBackupFilepath = [photoLibrary vcp_mediaAnalysisCoreDataBackupFilepath];
  if ([v3 fileExistsAtPath:vcp_mediaAnalysisCoreDataBackupFilepath])
  {
    if (_os_feature_enabled_impl())
    {
      v6 = 1;
    }

    else
    {
      v6 = _os_feature_enabled_impl();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)_removePersistentStoresForCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [coordinatorCopy persistentStores];
  v4 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v4)
  {
    v6 = *v20;
    v7 = VCPLogToOSLogType[6];
    type = VCPLogToOSLogType[3];
    *&v5 = 138412802;
    v15 = v5;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 URL];
        path = [v10 path];

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v7))
        {
          *buf = 138412546;
          v24 = @"[Restore][Full|MACD]";
          v25 = 2112;
          v26 = path;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Removing persistent store at %@", buf, 0x16u);
        }

        v18 = 0;
        v12 = [coordinatorCopy removePersistentStore:v9 error:&v18];
        v13 = v18;
        if ((v12 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = v15;
          v24 = @"[Restore][Full|MACD]";
          v25 = 2112;
          v26 = path;
          v27 = 2112;
          v28 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to remove persistent store at %@ with error %@", buf, 0x20u);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v4);
  }

  return 0;
}

- (int)mainInternal
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 138412290;
      v72 = @"[Restore][Full]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Checking full analysis restore...", buf, 0xCu);
    }
  }

  v4 = VCPTaskIDDescription();
  photoLibrary = [(VCPTask *)self photoLibrary];
  v6 = [photoLibrary mad_isBackupRestoreEligibleForTask:1];

  if (v6)
  {
    photoLibrary2 = [(VCPTask *)self photoLibrary];
    vcp_mediaAnalysisIntermediateRestoreDirectory = [photoLibrary2 vcp_mediaAnalysisIntermediateRestoreDirectory];

    if (!vcp_mediaAnalysisIntermediateRestoreDirectory)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v17 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v17))
        {
          *buf = 138412290;
          v72 = @"[Restore][Full]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ Unknown intermediate restore directory; skipping restore", buf, 0xCu);
        }
      }

      goto LABEL_74;
    }

    v9 = +[NSFileManager defaultManager];
    if (([v9 fileExistsAtPath:vcp_mediaAnalysisIntermediateRestoreDirectory] & 1) == 0)
    {
      v69 = NSFilePosixPermissions;
      v70 = &off_100295280;
      v10 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v68 = 0;
      v11 = [v9 createDirectoryAtPath:vcp_mediaAnalysisIntermediateRestoreDirectory withIntermediateDirectories:1 attributes:v10 error:&v68];
      v12 = v68;

      if ((v11 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v29 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v29))
          {
            *buf = 138412546;
            v72 = @"[Restore][Full]";
            v73 = 2112;
            v74 = v12;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "%@ Failed to create intermediate restore directory (%@); restore failed", buf, 0x16u);
          }
        }

        goto LABEL_73;
      }
    }

    if ([(VCPRestoreDatabaseTask *)self _shouldUseCoreDataBackupFile])
    {
      photoLibrary3 = [(VCPTask *)self photoLibrary];
      [photoLibrary3 vcp_mediaAnalysisCoreDataBackupFilepath];
    }

    else
    {
      photoLibrary3 = [(VCPTask *)self photoLibrary];
      [photoLibrary3 vcp_mediaAnalysisBackupFilepath];
    }
    v12 = ;

    photoLibrary4 = [(VCPTask *)self photoLibrary];
    v19 = [photoLibrary4 mad_intermediateEncryptedRestoreFilepathForTask:1];

    v67 = 0;
    v20 = [v9 copyItemAtPath:v12 toPath:v19 error:&v67];
    v21 = v67;
    if ((v20 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v28 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v28))
        {
          *buf = 138412546;
          v72 = @"[Restore][Full]";
          v73 = 2112;
          v74 = v21;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Failed to copy backup file to intermediate location (%@)", buf, 0x16u);
        }
      }

      goto LABEL_72;
    }

    v22 = [PFClientSideEncryptionManager alloc];
    v23 = [v22 initWithProfile:PFClientSideEncryptionManagerProfileMediaAnalysis];
    v24 = v23;
    if (v23)
    {
      [v23 start];
      v25 = [NSURL fileURLWithPath:v19];
      v66 = 0;
      [v24 unarchiveDirectoryAtURL:v25 error:&v66];
      v26 = v66;

      [v24 shutdownWithCompletionHandler:0];
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v62 = v27;
    v65 = 0;
    v30 = [v9 removeItemAtPath:v19 error:&v65];
    v63 = v65;
    if ((v30 & 1) == 0 && MediaAnalysisLogLevel() >= 4)
    {
      v31 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v31))
      {
        *buf = 138412546;
        v72 = @"[Restore][Full]";
        v73 = 2112;
        v74 = v63;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "%@ Failed to remove intermediate encrypted restore file (%@)", buf, 0x16u);
      }
    }

    if (!v24)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_71;
      }

      v36 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v36))
      {
        goto LABEL_71;
      }

      *buf = 138412290;
      v72 = @"[Restore][Full]";
      v33 = "%@ Failed to create PFClientSideEncryptionManager; restore failed";
      v34 = v36;
      v35 = 12;
LABEL_40:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v34, v33, buf, v35);
LABEL_71:

LABEL_72:
LABEL_73:

LABEL_74:
      goto LABEL_75;
    }

    if (v62)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_71;
      }

      v32 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v32))
      {
        goto LABEL_71;
      }

      *buf = 138412546;
      v72 = @"[Restore][Full]";
      v73 = 2112;
      v74 = v62;
      v33 = "%@ Failed to decrypt backup file (%@); restore failed";
      v34 = v32;
      v35 = 22;
      goto LABEL_40;
    }

    if ([(VCPRestoreDatabaseTask *)self _shouldUseCoreDataBackupFile])
    {
      v37 = VCPSignPostLog();
      spid = os_signpost_id_generate(v37);

      v38 = VCPSignPostLog();
      v39 = v38;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADLibraryRestore_FullAnalysis_CoreDataDB", "", buf, 2u);
      }

      photoLibrary5 = [(VCPTask *)self photoLibrary];
      vcp_mediaAnalysisDatabaseFilepath = [MADPhotosDataStoreClient defaultDatabasePathForPhotoLibrary:photoLibrary5];

      lastPathComponent = [vcp_mediaAnalysisDatabaseFilepath lastPathComponent];
      v61 = [vcp_mediaAnalysisIntermediateRestoreDirectory stringByAppendingPathComponent:lastPathComponent];

      v42 = [(VCPRestoreDatabaseTask *)self _restoreCoreDataStoreFromBackupFilepath:v61];
      v43 = VCPSignPostLog();
      v44 = v43;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        *buf = 0;
        v45 = "VCPMADLibraryRestore_FullAnalysis_CoreDataDB";
LABEL_54:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, spid, v45, "", buf, 2u);
      }
    }

    else
    {
      v46 = VCPSignPostLog();
      spid = os_signpost_id_generate(v46);

      v47 = VCPSignPostLog();
      v48 = v47;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADLibraryRestore_FullAnalysis_LegacyDB", "", buf, 2u);
      }

      photoLibrary6 = [(VCPTask *)self photoLibrary];
      vcp_mediaAnalysisDatabaseFilepath = [photoLibrary6 vcp_mediaAnalysisDatabaseFilepath];

      photoLibrary7 = [(VCPTask *)self photoLibrary];
      v61 = [photoLibrary7 mad_intermediateUnencryptedRestoreFilepathForTask:1];

      v51 = [(VCPRestoreDatabaseTask *)self restoreDatabaseToFilepath:vcp_mediaAnalysisDatabaseFilepath fromBackupFilepath:v61];
      v52 = VCPSignPostLog();
      v44 = v52;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v42 = v51;
        if (!os_signpost_enabled(v52))
        {
          goto LABEL_56;
        }

        *buf = 0;
        v45 = "VCPMADLibraryRestore_FullAnalysis_LegacyDB";
        goto LABEL_54;
      }

      v42 = v51;
    }

LABEL_56:

    if ([v9 fileExistsAtPath:vcp_mediaAnalysisIntermediateRestoreDirectory])
    {
      v64 = v63;
      v53 = [v9 removeItemAtPath:vcp_mediaAnalysisIntermediateRestoreDirectory error:&v64];
      v54 = v64;

      if ((v53 & 1) == 0 && MediaAnalysisLogLevel() >= 4)
      {
        v55 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v55))
        {
          *buf = 138412802;
          v72 = @"[Restore][Full]";
          v73 = 2112;
          v74 = vcp_mediaAnalysisIntermediateRestoreDirectory;
          v75 = 2112;
          v76 = v54;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v55, "%@ Failed to remove intermediate restore directory %@ (%@)", buf, 0x20u);
        }
      }

      v63 = v54;
    }

    if (v42)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_70;
      }

      v56 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v56))
      {
        goto LABEL_70;
      }

      *buf = 138412290;
      v72 = @"[Restore][Full]";
      v57 = "%@ Failed to restore analysis database; restore failed";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_70;
      }

      v56 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v56))
      {
        goto LABEL_70;
      }

      *buf = 138412290;
      v72 = @"[Restore][Full]";
      v57 = "%@ Successfully restored full analysis database";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v56, v57, buf, 0xCu);
LABEL_70:

    goto LABEL_71;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v14 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      photoLibrary8 = [(VCPTask *)self photoLibrary];
      photoLibraryURL = [photoLibrary8 photoLibraryURL];
      *buf = 138412802;
      v72 = @"[Restore][Full]";
      v73 = 2112;
      v74 = photoLibraryURL;
      v75 = 2112;
      v76 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Photo library (%@) not eligible for restoring %@; skipping", buf, 0x20u);
    }
  }

LABEL_75:

  return 0;
}

@end