@interface MADPhotosRestoreAnalysisTask
+ (id)taskWithPhotoLibrary:(id)library forTaskID:(unint64_t)d progressHandler:(id)handler completionHandler:(id)completionHandler andCancelBlock:(id)block;
- (BOOL)isCancelled;
- (MADPhotosRestoreAnalysisTask)initWithPhotoLibrary:(id)library forTaskID:(unint64_t)d progressHandler:(id)handler completionHandler:(id)completionHandler andCancelBlock:(id)block;
- (int)_performRestore;
- (int)_persistAssetProtoBatch:(id)batch successCount:(unint64_t *)count;
- (int)_restoreFromBackupFilepath:(id)filepath;
- (int)run;
@end

@implementation MADPhotosRestoreAnalysisTask

- (MADPhotosRestoreAnalysisTask)initWithPhotoLibrary:(id)library forTaskID:(unint64_t)d progressHandler:(id)handler completionHandler:(id)completionHandler andCancelBlock:(id)block
{
  libraryCopy = library;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  blockCopy = block;
  v29.receiver = self;
  v29.super_class = MADPhotosRestoreAnalysisTask;
  v17 = [(MADPhotosRestoreAnalysisTask *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_photoLibrary, library);
    v18->_taskID = d;
    if (handlerCopy)
    {
      v19 = handlerCopy;
    }

    else
    {
      v19 = &stru_100287460;
    }

    v20 = objc_retainBlock(v19);
    progressHandler = v18->_progressHandler;
    v18->_progressHandler = v20;

    if (completionHandlerCopy)
    {
      v22 = completionHandlerCopy;
    }

    else
    {
      v22 = &stru_100287480;
    }

    v23 = objc_retainBlock(v22);
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v23;

    if (blockCopy)
    {
      v25 = blockCopy;
    }

    else
    {
      v25 = &stru_1002874A0;
    }

    v26 = objc_retainBlock(v25);
    cancelBlock = v18->_cancelBlock;
    v18->_cancelBlock = v26;
  }

  return v18;
}

+ (id)taskWithPhotoLibrary:(id)library forTaskID:(unint64_t)d progressHandler:(id)handler completionHandler:(id)completionHandler andCancelBlock:(id)block
{
  libraryCopy = library;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  blockCopy = block;
  v16 = [[self alloc] initWithPhotoLibrary:libraryCopy forTaskID:d progressHandler:handlerCopy completionHandler:completionHandlerCopy andCancelBlock:blockCopy];

  return v16;
}

- (BOOL)isCancelled
{
  if ((*(self->_cancelBlock + 2))())
  {
    v3 = 1;
  }

  else
  {
    v3 = atomic_load(&self->_cancel);
  }

  return v3 & 1;
}

- (int)_persistAssetProtoBatch:(id)batch successCount:(unint64_t *)count
{
  batchCopy = batch;
  selfCopy = self;
  v7 = VCPTaskIDDescription();
  v59 = [NSString stringWithFormat:@"[RestoreToPhotoDB][%@]", v7];

  countCopy = count;
  *count = 0;
  v61 = +[NSMutableDictionary dictionary];
  v8 = 0;
  v9 = VCPLogToOSLogType[4];
  while (v8 < [batchCopy count])
  {
    v10 = [batchCopy objectAtIndexedSubscript:v8];
    assetCloudIdentifier = [v10 assetCloudIdentifier];

    v12 = [[PHCloudIdentifier alloc] initWithStringValue:assetCloudIdentifier];
    if (v12)
    {
      v13 = [batchCopy objectAtIndexedSubscript:v8];
      [v61 setObject:v13 forKeyedSubscript:v12];
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 138412546;
      *&buf[4] = v59;
      *&buf[12] = 2112;
      *&buf[14] = assetCloudIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ No cloud identifier (%@ stored in proto); skipping entry", buf, 0x16u);
    }

    ++v8;
  }

  photoLibrary = selfCopy->_photoLibrary;
  allKeys = [v61 allKeys];
  v53 = [(PHPhotoLibrary *)photoLibrary localIdentifierMappingsForCloudIdentifiers:allKeys];

  v16 = +[NSMutableDictionary dictionary];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10014E944;
  v71[3] = &unk_1002874C8;
  v52 = v53;
  v72 = v52;
  v56 = v59;
  v73 = v56;
  v60 = v16;
  v74 = v60;
  [v61 enumerateKeysAndObjectsUsingBlock:v71];
  v57 = [PHAsset vcp_fetchOptionsForLibrary:selfCopy->_photoLibrary forTaskID:selfCopy->_taskID];
  v17 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:1];
  v81 = v17;
  v18 = [NSArray arrayWithObjects:&v81 count:1];
  [v57 setSortDescriptors:v18];

  allKeys2 = [v60 allKeys];
  v20 = [PHAsset fetchAssetsWithLocalIdentifiers:allKeys2 options:v57];

  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled]&& selfCopy->_taskID == 2)
  {
    v55 = +[NSMutableArray array];
    v21 = 0;
    v54 = VCPLogToOSLogType[3];
    type = VCPLogToOSLogType[7];
    while (v21 < [v20 count])
    {
      v22 = objc_autoreleasePoolPush();
      v23 = [v20 objectAtIndexedSubscript:v21];
      localIdentifier = [v23 localIdentifier];
      v25 = [v60 objectForKeyedSubscript:localIdentifier];

      if (v25)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
          localIdentifier2 = [v23 localIdentifier];
          v28 = [v26 imageEmbeddingVSKAssetWithLocalIdentifier:localIdentifier2];

          if (v28)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              localIdentifier3 = [v23 localIdentifier];
              *buf = 138412546;
              *&buf[4] = v59;
              *&buf[12] = 2112;
              *&buf[14] = localIdentifier3;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@[%@] Restored image embedding from asset proto", buf, 0x16u);
            }

            [v55 addObject:v28];
          }
        }

        else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v54))
        {
          localIdentifier4 = [v23 localIdentifier];
          v32 = objc_opt_class();
          *buf = 138412802;
          *&buf[4] = v59;
          *&buf[12] = 2112;
          *&buf[14] = localIdentifier4;
          *&buf[22] = 2112;
          v80 = v32;
          v33 = v32;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v54, "%@[%@] Asset proto is expected to be MADProtoSceneAsset but is %@", buf, 0x20u);
        }
      }

      else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v9))
      {
        localIdentifier5 = [v23 localIdentifier];
        *buf = 138412546;
        *&buf[4] = v59;
        *&buf[12] = 2112;
        *&buf[14] = localIdentifier5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@[%@] Failed to find matching asset from backup; skipping entry", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      ++v21;
    }

    if ([v55 count])
    {
      v34 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:selfCopy->_photoLibrary];
      v35 = v34;
      if (!v34)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v54))
        {
          photoLibraryURL = [(PHPhotoLibrary *)selfCopy->_photoLibrary photoLibraryURL];
          *buf = 138412546;
          *&buf[4] = v59;
          *&buf[12] = 2112;
          *&buf[14] = photoLibraryURL;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v54, "%@ Failed to obtain MADVectorDatabase for photo library %@", buf, 0x16u);
        }

        code = -18;
        goto LABEL_39;
      }

      v70 = 0;
      code = [v34 insertOrReplaceAssetsEmbeddings:v55 error:&v70];
      v37 = v70;
      v38 = v37;
      if (code)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v54))
        {
          *buf = 138412546;
          *&buf[4] = v59;
          *&buf[12] = 2112;
          *&buf[14] = v38;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v54, "%@ Failed to update vectorDB asset embeddings: %@", buf, 0x16u);
        }

LABEL_39:
        goto LABEL_52;
      }
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v80 = 0;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_10014EAD4;
  v64[3] = &unk_1002874F0;
  v65 = v20;
  v66 = selfCopy;
  v67 = v56;
  v68 = v60;
  v69 = buf;
  v40 = objc_retainBlock(v64);
  v41 = selfCopy->_photoLibrary;
  taskID = selfCopy->_taskID;
  v62 = 0;
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_10014EDBC;
  v63[3] = &unk_100283000;
  v63[4] = selfCopy;
  v43 = [(PHPhotoLibrary *)v41 mad_performChangesAndWait:v40 activity:taskID cancelBlock:v63 extendTimeoutBlock:&stru_100287510 error:&v62];
  v44 = v62;
  if (v43)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v45 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v45))
      {
        v46 = *(*&buf[8] + 24);
        *v75 = 138412546;
        v76 = v59;
        v77 = 2048;
        v78 = v46;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "%@ Restored a batch of %zu assets from backup", v75, 0x16u);
      }
    }

    code = 0;
    *countCopy = *(*&buf[8] + 24);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v47 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v47))
      {
        taskName = [objc_opt_class() taskName];
        *v75 = 138412546;
        v76 = taskName;
        v77 = 2112;
        v78 = v44;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v47, "[%@] Failed to persist to photo library (%@)", v75, 0x16u);
      }
    }

    code = [v44 code];
  }

  _Block_object_dispose(buf, 8);
LABEL_52:

  return code;
}

- (int)_restoreFromBackupFilepath:(id)filepath
{
  filepathCopy = filepath;
  v4 = VCPTaskIDDescription();
  v43 = [NSString stringWithFormat:@"[RestoreFromBackup][%@]", v4];

  v5 = objc_autoreleasePoolPush();
  v6 = [NSInputStream inputStreamWithFileAtPath:filepathCopy];
  [v6 open];
  v7 = [VCPBackupFileHeader headerForTask:self->_taskID];
  v41 = v7;
  v8 = [VCPBackupFileHeader headerFromStream:v6];
  v9 = v8;
  context = v5;
  if (!v8)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v28 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        *buf = 138412290;
        *&buf[4] = v43;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Failed to read backup file header", buf, 0xCu);
      }
    }

    LODWORD(v13) = -36;
    goto LABEL_78;
  }

  identifier = [v8 identifier];
  if (identifier != [v7 identifier])
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_72;
    }

    v29 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v29))
    {
      goto LABEL_72;
    }

    *buf = 138412546;
    *&buf[4] = v43;
    v45 = 1024;
    LODWORD(v46) = [v9 identifier];
    v30 = "%@ Backup contains invalid file identifier (%u)";
    goto LABEL_71;
  }

  version = [v9 version];
  if (version != [v7 version])
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_72;
    }

    v29 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v29))
    {
      goto LABEL_72;
    }

    *buf = 138412546;
    *&buf[4] = v43;
    v45 = 1024;
    LODWORD(v46) = [v9 version];
    v30 = "%@ Backup contains invalid version (%u)";
LABEL_71:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v29, v30, buf, 0x12u);
LABEL_72:
    LODWORD(v13) = -50;
    goto LABEL_78;
  }

  v37 = +[VCPDataDecompressor decompressor];
  v38 = +[NSMutableArray array];
  v36 = 0;
  v12 = 0;
  v13 = 0;
  type = VCPLogToOSLogType[3];
  v35 = VCPLogToOSLogType[4];
  while ([v6 hasBytesAvailable])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = +[VCPBackupEntryHeader header];
    v16 = [v15 readFromStream:v6];
    if (!v16)
    {
      if ([v15 dataLength] > 0x200000)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          dataLength = [v15 dataLength];
          *buf = 138412546;
          *&buf[4] = v43;
          v45 = 1024;
          LODWORD(v46) = dataLength;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Backup entry contains invalid length (%u)", buf, 0x12u);
        }

        v13 = 4294967246;
        v17 = 6;
        goto LABEL_55;
      }

      v19 = v12 + 1;
      if (((v12 + 1) & 0x7F) == 0)
      {
        if ([(MADPhotosRestoreAnalysisTask *)self isCancelled])
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412802;
            *&buf[4] = v43;
            v45 = 2048;
            v46 = (v12 - 127);
            v47 = 2048;
            v48 = v12 + 1;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Cancelling restoring assets[%zu:%zu] to Photos", buf, 0x20u);
          }

          v13 = 4294967168;
          v17 = 6;
          ++v12;
          goto LABEL_55;
        }

        v20 = +[VCPWatchdog sharedWatchdog];
        [v20 pet];
      }

      v21 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [v15 dataLength]);
      v22 = v21;
      v16 = [v6 vcp_readBuffer:objc_msgSend(v21 ofLength:{"mutableBytes"), objc_msgSend(v15, "dataLength")}];
      if (v16)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          *&buf[4] = v43;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to read asset analysis data", buf, 0xCu);
        }

        v17 = 6;
        goto LABEL_53;
      }

      if ([v15 isCompressed])
      {
        v23 = [v37 decompressData:v21];
        if (v23)
        {

          goto LABEL_37;
        }

        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v35))
        {
          *buf = 138412290;
          *&buf[4] = v43;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "%@ Failed to decompress asset analysis; skipping entry", buf, 0xCu);
        }

        v17 = 15;
      }

      else
      {
        v23 = v21;
LABEL_37:
        v24 = [objc_alloc(MADAssetProtoClassForTask(self->_taskID)) initWithData:v23];
        if (v24)
        {
          [v38 addObject:v24];
          if ([v38 count] < 0x80)
          {
            v17 = 0;
          }

          else
          {
            *buf = 0;
            v25 = [(MADPhotosRestoreAnalysisTask *)self _persistAssetProtoBatch:v38 successCount:buf];
            if (v25)
            {
              v17 = 6;
              v13 = v25;
            }

            else
            {
              v26 = *buf;
              v34 = +[NSMutableArray array];
              v33 = v26;

              v17 = 0;
              v36 += v33;
              v38 = v34;
            }
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v35))
          {
            *buf = 138412290;
            *&buf[4] = v43;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "%@ Failed to deserialize asset; skipping entry", buf, 0xCu);
          }

          v17 = 15;
        }

        v21 = v23;
      }

      v16 = v13;
LABEL_53:

      v12 = v19;
      goto LABEL_54;
    }

    if ([v6 streamStatus] == 5)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412546;
        *&buf[4] = v43;
        v45 = 2112;
        v46 = filepathCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Hitting input stream EOF when reading backup entry header from backup file: %@", buf, 0x16u);
      }

      v17 = 16;
      goto LABEL_55;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
    {
      *buf = 138412290;
      *&buf[4] = v43;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to read backup entry header", buf, 0xCu);
    }

    v17 = 6;
LABEL_54:
    v13 = v16;
LABEL_55:

    objc_autoreleasePoolPop(v14);
    if (v17 && v17 != 15)
    {
      if (v17 != 16)
      {
        goto LABEL_77;
      }

      break;
    }
  }

  if ([v38 count])
  {
    *buf = 0;
    v27 = [(MADPhotosRestoreAnalysisTask *)self _persistAssetProtoBatch:v38 successCount:buf];
    if (v27)
    {
      LODWORD(v13) = v27;
      goto LABEL_77;
    }

    v36 += *buf;
  }

  [v6 close];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v31 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v31))
    {
      *buf = 138412802;
      *&buf[4] = v43;
      v45 = 2048;
      v46 = v36;
      v47 = 2048;
      v48 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "%@ Restored %zu/%zu analysis records", buf, 0x20u);
    }
  }

LABEL_77:

LABEL_78:
  objc_autoreleasePoolPop(context);

  return v13;
}

- (int)_performRestore
{
  taskName = [objc_opt_class() taskName];
  v4 = VCPTaskIDDescription();
  v39 = [NSString stringWithFormat:@"[%@][%@]", taskName, v4];

  v5 = +[NSFileManager defaultManager];
  vcp_mediaAnalysisIntermediateRestoreDirectory = [(PHPhotoLibrary *)self->_photoLibrary vcp_mediaAnalysisIntermediateRestoreDirectory];
  if (vcp_mediaAnalysisIntermediateRestoreDirectory)
  {
    if ([v5 fileExistsAtPath:vcp_mediaAnalysisIntermediateRestoreDirectory])
    {
      v7 = 0;
    }

    else
    {
      v49 = NSFilePosixPermissions;
      v50 = &off_100294C38;
      v8 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v44 = 0;
      v9 = [v5 createDirectoryAtPath:vcp_mediaAnalysisIntermediateRestoreDirectory withIntermediateDirectories:1 attributes:v8 error:&v44];
      v10 = v44;

      if ((v9 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v21 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v21))
          {
            *buf = 138412546;
            v46 = v39;
            v47 = 2112;
            v48 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Failed to create intermediate restore directory (%@); restore failed", buf, 0x16u);
          }
        }

        goto LABEL_44;
      }

      v7 = v10;
    }

    v38 = [(PHPhotoLibrary *)self->_photoLibrary mad_backupFilepathForTask:self->_taskID];
    v11 = [(PHPhotoLibrary *)self->_photoLibrary mad_intermediateEncryptedRestoreFilepathForTask:self->_taskID];
    v43 = 0;
    v12 = [v5 copyItemAtPath:v38 toPath:v11 error:&v43];
    v13 = v43;
    if ((v12 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v20 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          *buf = 138412546;
          v46 = v39;
          v47 = 2112;
          v48 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Failed to copy backup file to intermediate location (%@)", buf, 0x16u);
        }
      }

      goto LABEL_43;
    }

    v14 = [PFClientSideEncryptionManager alloc];
    v15 = [v14 initWithProfile:PFClientSideEncryptionManagerProfileMediaAnalysis];
    v16 = v15;
    if (v15)
    {
      [v15 start];
      v17 = [NSURL fileURLWithPath:v11];
      v42 = 0;
      [v16 unarchiveDirectoryAtURL:v17 error:&v42];
      v18 = v42;

      [v16 shutdownWithCompletionHandler:0];
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v41 = 0;
    v22 = [v5 removeItemAtPath:v11 error:&v41];
    v23 = v41;
    if ((v22 & 1) == 0 && MediaAnalysisLogLevel() >= 4)
    {
      v24 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v24))
      {
        *buf = 138412546;
        v46 = v39;
        v47 = 2112;
        v48 = v23;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ Failed to remove intermediate encrypted restore file (%@)", buf, 0x16u);
      }
    }

    if (!v16)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_42;
      }

      v29 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v29))
      {
        goto LABEL_42;
      }

      *buf = 138412290;
      v46 = v39;
      v26 = "%@ Failed to create PFClientSideEncryptionManager; restore failed";
      v27 = v29;
      v28 = 12;
LABEL_28:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v27, v26, buf, v28);
LABEL_42:

LABEL_43:
      v10 = v7;
LABEL_44:

      goto LABEL_45;
    }

    if (v19)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_42;
      }

      v25 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v25))
      {
        goto LABEL_42;
      }

      *buf = 138412546;
      v46 = v39;
      v47 = 2112;
      v48 = v19;
      v26 = "%@ Failed to decrypt backup file (%@); restore failed";
      v27 = v25;
      v28 = 22;
      goto LABEL_28;
    }

    v37 = [(PHPhotoLibrary *)self->_photoLibrary mad_intermediateUnencryptedRestoreFilepathForTask:self->_taskID];
    v36 = [(MADPhotosRestoreAnalysisTask *)self _restoreFromBackupFilepath:v37];
    v40 = v23;
    v30 = [v5 removeItemAtPath:v37 error:&v40];
    v31 = v40;

    if ((v30 & 1) == 0 && MediaAnalysisLogLevel() >= 4)
    {
      v32 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v32))
      {
        *buf = 138412546;
        v46 = v39;
        v47 = 2112;
        v48 = v31;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ Failed to remove intermediate decrypted restore file (%@)", buf, 0x16u);
      }
    }

    if (v36)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_41;
      }

      v33 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v33))
      {
        goto LABEL_41;
      }

      *buf = 138412290;
      v46 = v39;
      v34 = "%@ Failed to restore analysis";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 5)
      {
        goto LABEL_41;
      }

      v33 = VCPLogToOSLogType[5];
      if (!os_log_type_enabled(&_os_log_default, v33))
      {
        goto LABEL_41;
      }

      *buf = 138412290;
      v46 = v39;
      v34 = "%@ Restore completed";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v33, v34, buf, 0xCu);
LABEL_41:

    v23 = v31;
    goto LABEL_42;
  }

LABEL_45:

  return 0;
}

- (int)run
{
  taskName = [objc_opt_class() taskName];
  v4 = VCPTaskIDDescription();
  v5 = [NSString stringWithFormat:@"[%@][%@]", taskName, v4];

  if (MediaAnalysisLogLevel() >= 5)
  {
    v6 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Attempting to restoring ...", buf, 0xCu);
    }
  }

  if ([(PHPhotoLibrary *)self->_photoLibrary mad_isBackupRestoreEligibleForTask:self->_taskID])
  {
    _performRestore = [(MADPhotosRestoreAnalysisTask *)self _performRestore];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v8 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        photoLibraryURL = [(PHPhotoLibrary *)self->_photoLibrary photoLibraryURL];
        *buf = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = photoLibraryURL;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Photo library (%@) not eligible for restoring; skipping", buf, 0x16u);
      }
    }

    _performRestore = 0;
  }

  return _performRestore;
}

@end