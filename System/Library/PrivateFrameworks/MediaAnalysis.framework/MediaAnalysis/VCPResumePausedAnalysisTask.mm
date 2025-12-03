@interface VCPResumePausedAnalysisTask
+ (id)taskWithPhotoLibrary:(id)library;
- (VCPResumePausedAnalysisTask)initWithPhotoLibrary:(id)library;
- (int)mainInternal;
- (int)publishAnalysis:(id)analysis forAsset:(id)asset database:(id)database embeddingChangeManager:(id)manager;
@end

@implementation VCPResumePausedAnalysisTask

- (VCPResumePausedAnalysisTask)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = VCPResumePausedAnalysisTask;
  v5 = [(VCPTask *)&v9 initWithPhotoLibrary:libraryCopy];
  if (v5)
  {
    v6 = _os_feature_enabled_impl();
    v7 = 254;
    if (!v6)
    {
      v7 = 1;
    }

    v5->_taskID = v7;
  }

  return v5;
}

+ (id)taskWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy];

  return v4;
}

- (int)publishAnalysis:(id)analysis forAsset:(id)asset database:(id)database embeddingChangeManager:(id)manager
{
  analysisCopy = analysis;
  assetCopy = asset;
  databaseCopy = database;
  managerCopy = manager;
  if (+[MADManagedPhotosAsset isMACDPersistEnabled])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v15 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        localIdentifier = [assetCopy localIdentifier];
        *buf = 138412290;
        v54 = localIdentifier;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[%@][MACD] Persisting results to CoreData", buf, 0xCu);
      }
    }

    v17 = VCPSignPostLog();
    v6 = os_signpost_id_generate(v17);

    v18 = VCPSignPostLog();
    v19 = v18;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v6, "VCPResumePausedAnalysisTask_PublishCoreData_Single", "", buf, 2u);
    }

    photoLibrary = [(VCPTask *)self photoLibrary];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10019F9BC;
    v50[3] = &unk_100282938;
    v51 = assetCopy;
    v52 = analysisCopy;
    v49 = 0;
    v21 = [photoLibrary mad_performAnalysisDataStoreChanges:v50 error:&v49];
    v22 = v49;

    if (v21)
    {
      v23 = VCPSignPostLog();
      v24 = v23;
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, v6, "VCPResumePausedAnalysisTask_PublishCoreData_Single", "", buf, 2u);
      }
    }

    else
    {
      LODWORD(v6) = [v22 code];
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (+[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v25 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v25))
      {
        localIdentifier2 = [assetCopy localIdentifier];
        *buf = 138412290;
        v54 = localIdentifier2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[%@] Persisting results to MA DB", buf, 0xCu);
      }
    }

    v27 = VCPSignPostLog();
    v28 = os_signpost_id_generate(v27);

    v29 = VCPSignPostLog();
    v30 = v29;
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_BEGIN, v28, "VCPResumePausedAnalysisTask_PublishLegacy_Single", "", buf, 2u);
    }

    v31 = [databaseCopy storeAnalysisForAsset:assetCopy analysis:analysisCopy];
    v32 = v31;
    if (v31 == -108 || v31 == -36)
    {
      code = v31;
    }

    else
    {
      code = v31;
      if (v31 != -23)
      {
        code = v6;
      }
    }

    if (v31 == -108 || v31 == -36 || v31 == -23)
    {
      goto LABEL_41;
    }

    v36 = VCPSignPostLog();
    v37 = v36;
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, v28, "VCPResumePausedAnalysisTask_PublishLegacy_Single", "", buf, 2u);
    }

    if (v32 == -36)
    {
LABEL_41:
      LODWORD(v6) = code;
      goto LABEL_42;
    }

    LODWORD(v6) = code;
    if (v32 == -23)
    {
      goto LABEL_42;
    }
  }

  else
  {
    code = v6;
  }

  LODWORD(v6) = [managerCopy updateAsset:assetCopy analysis:analysisCopy imageOnly:0 vskResults:0];
  if (v6)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v34 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v34))
      {
        localIdentifier3 = [assetCopy localIdentifier];
        *buf = 138412290;
        v54 = localIdentifier3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[ResumePaused][%@] Failed to update vector database changes", buf, 0xCu);
      }
    }

    goto LABEL_42;
  }

  LODWORD(v6) = [managerCopy publishPendingChanges];
  if (v6)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v39 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v39))
      {
        localIdentifier4 = [assetCopy localIdentifier];
        *buf = 138412290;
        v54 = localIdentifier4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[ResumePaused][%@] Failed to publish vector database changes", buf, 0xCu);
      }
    }

    goto LABEL_42;
  }

  if (!+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    localIdentifier5 = [assetCopy localIdentifier];
    LODWORD(v6) = [databaseCopy removeProcessingStatusForLocalIdentifier:localIdentifier5 andTaskID:self->_taskID];

    if (v6)
    {
      goto LABEL_42;
    }

LABEL_53:
    LODWORD(v6) = 0;
    goto LABEL_42;
  }

  photoLibrary2 = [(VCPTask *)self photoLibrary];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10019F9C8;
  v46[3] = &unk_100282938;
  v47 = assetCopy;
  selfCopy = self;
  v45 = 0;
  v42 = [photoLibrary2 mad_performAnalysisDataStoreChanges:v46 error:&v45];
  v43 = v45;

  if ((v42 & 1) == 0)
  {
    code = [v43 code];
  }

  LODWORD(v6) = code;
  if (v42)
  {
    goto LABEL_53;
  }

LABEL_42:

  return v6;
}

- (int)mainInternal
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[ResumePaused] Checking for paused analysis...", &buf, 2u);
    }
  }

  photoLibrary = [(VCPTask *)self photoLibrary];
  v6 = [VCPPausedAnalysis persistedPausedAnalysisFromPhotoLibrary:photoLibrary];

  if (v6)
  {
    asset = [v6 asset];
    localIdentifier = [asset localIdentifier];
    v62 = [NSString stringWithFormat:@"[ResumePaused][%@]", localIdentifier];
    if (MediaAnalysisLogLevel() >= 5)
    {
      v8 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        LODWORD(buf.value) = 138412290;
        *(&buf.value + 4) = v62;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Resuming Movie Analysis", &buf, 0xCu);
      }
    }

    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      photoLibrary2 = [(VCPTask *)self photoLibrary];
      v61 = [MADVectorDatabaseChangeManager sharedManagerForPhotoLibrary:photoLibrary2];

      if (!v61)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v10 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v10))
          {
            LODWORD(buf.value) = 138412290;
            *(&buf.value + 4) = v62;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Failed to retrieve MADVectorDatabaseChangeManager", &buf, 0xCu);
          }
        }

        code = -18;
        goto LABEL_129;
      }
    }

    else
    {
      v61 = 0;
    }

    photoLibrary3 = [(VCPTask *)self photoLibrary];
    v63 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:photoLibrary3];

    v100 = 0;
    v99 = 0;
    if (+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      photoLibrary4 = [(VCPTask *)self photoLibrary];
      mad_fetchRequest = [photoLibrary4 mad_fetchRequest];
      v97 = 0;
      v98 = 0;
      [mad_fetchRequest fetchProcessingStatus:&v100 attempts:&v99 lastAttemptDate:&v98 nextAttemptDate:&v97 localIdentifier:localIdentifier taskID:self->_taskID];
      v60 = v98;
      v59 = v97;
    }

    else
    {
      v95 = 0;
      v96 = 0;
      [v63 queryProcessingStatus:&v100 attempts:&v99 lastAttemptDate:&v96 andNextAttemptDate:&v95 forLocalIdentifier:localIdentifier andTaskID:self->_taskID];
      v60 = v96;
      v59 = v95;
    }

    v14 = +[NSDate now];
    v58 = v14;
    if (+[MADManagedProcessingStatus isMACDPersistEnabled])
    {
      photoLibrary5 = [(VCPTask *)self photoLibrary];
      v90[0] = _NSConcreteStackBlock;
      v90[1] = 3221225472;
      v90[2] = sub_1001A0B5C;
      v90[3] = &unk_100285130;
      v94 = v99;
      v91 = asset;
      selfCopy = self;
      v93 = v14;
      v89 = 0;
      v16 = [photoLibrary5 mad_performAnalysisDataStoreChanges:v90 error:&v89];
      v17 = v89;

      if ((v16 & 1) == 0)
      {
        code = [v17 code];
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v25 = [v63 setAttempts:v99 + 1 asset:asset taskID:self->_taskID status:1 lastAttemptDate:v14];
      v26 = v25;
      if (v25 == -108 || v25 == -36 || v25 == -23)
      {
        code = v25;
LABEL_128:

LABEL_129:
        goto LABEL_130;
      }

      commit = [v63 commit];
      if (commit == -108 || commit == -36)
      {
        code = commit;
      }

      else
      {
        code = commit;
        if (commit != -23)
        {
          code = v26;
        }
      }

      if (commit == -108 || commit == -36 || commit == -23)
      {
        goto LABEL_128;
      }
    }

    analysis = [v6 analysis];
    v19 = analysis;
    memset(&v88, 0, sizeof(v88));
    if (!analysis || ([analysis vcp_syncPoint], (v88.flags & 1) == 0))
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v20 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = v62;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Failed to resume paused analysis (non-fatal)", &buf, 0xCu);
        }
      }

      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        photoLibrary6 = [(VCPTask *)self photoLibrary];
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_1001A0B84;
        v82[3] = &unk_100285158;
        v87 = v99;
        v83 = asset;
        selfCopy2 = self;
        v86 = v100;
        v85 = v60;
        v81 = 0;
        v22 = [photoLibrary6 mad_performAnalysisDataStoreChanges:v82 error:&v81];
        v23 = v81;

        if ((v22 & 1) == 0)
        {
          code = [v23 code];
        }

        goto LABEL_32;
      }

      v28 = [v63 setAttempts:v99 asset:asset taskID:self->_taskID status:v100 lastAttemptDate:v60];
      if (v28 == -108 || v28 == -36)
      {
        v24 = v28;
      }

      else
      {
        v24 = v28;
        if (v28 != -23)
        {
          v24 = code;
        }
      }

      if (v28 == -108 || v28 == -36 || v28 == -23)
      {
        goto LABEL_127;
      }

      goto LABEL_65;
    }

    if (([asset vcp_isAnalysisValid:v19] & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v36 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v36))
        {
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = v62;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "%@ Asset modified since analysis paused; discarding paused analysis", &buf, 0xCu);
        }
      }

      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        photoLibrary7 = [(VCPTask *)self photoLibrary];
        v75[0] = _NSConcreteStackBlock;
        v75[1] = 3221225472;
        v75[2] = sub_1001A0BA4;
        v75[3] = &unk_100285158;
        v80 = v99;
        v76 = asset;
        selfCopy3 = self;
        v79 = v100;
        v78 = v60;
        v74 = 0;
        v22 = [photoLibrary7 mad_performAnalysisDataStoreChanges:v75 error:&v74];
        v38 = v74;

        if ((v22 & 1) == 0)
        {
          code = [v38 code];
        }

LABEL_32:
        if ((v22 & 1) == 0)
        {
          v24 = code;
          goto LABEL_127;
        }

LABEL_33:
        v24 = 0;
LABEL_127:

        code = v24;
        goto LABEL_128;
      }

      v39 = [v63 setAttempts:v99 asset:asset taskID:self->_taskID status:v100 lastAttemptDate:v60];
      if (v39 == -108 || v39 == -36)
      {
        v24 = v39;
      }

      else
      {
        v24 = v39;
        if (v39 != -23)
        {
          v24 = code;
        }
      }

      if (v39 == -108 || v39 == -36 || v39 == -23)
      {
        goto LABEL_127;
      }

LABEL_65:
      commit2 = [v63 commit];
      if (commit2 == -108 || commit2 == -36)
      {
        v35 = commit2;
      }

      else
      {
        v35 = commit2;
        if (commit2 != -23)
        {
          v35 = v24;
        }
      }

      if (commit2 == -108 || commit2 == -36 || commit2 == -23)
      {
        v24 = v35;
        goto LABEL_127;
      }

      goto LABEL_33;
    }

    v29 = [VCPMovieAnalyzer alloc];
    v56 = [v29 initWithPHAsset:asset withPausedAnalysis:v19 forAnalysisTypes:VCPMAFullAnalysisTypesMovie];
    [v56 setOnDemand:0];
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_1001A0BC4;
    v73[3] = &unk_100283000;
    v73[4] = self;
    v57 = [v56 analyzeAsset:v73 streamed:0];

    v30 = v56;
    status = [v56 status];
    if (status != 4)
    {
      if (status == 3)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v40 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v40))
          {
            LODWORD(buf.value) = 138412290;
            *(&buf.value + 4) = v62;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "%@ Analysis failed", &buf, 0xCu);
          }
        }
      }

      else if (status == 2)
      {
        v32 = [(VCPResumePausedAnalysisTask *)self publishAnalysis:v57 forAsset:asset database:v63 embeddingChangeManager:v61];
        if (+[VCPDatabaseWriter isLegacyPersistEnabled])
        {
          commit3 = [v63 commit];
          if (commit3 == -108 || commit3 == -36)
          {
            v24 = commit3;
          }

          else
          {
            v24 = commit3;
            if (commit3 != -23)
            {
              v24 = code;
            }
          }

          if (commit3 == -108 || commit3 == -36 || commit3 == -23)
          {
            goto LABEL_126;
          }
        }

        if (v32)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v47 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v47))
            {
              LODWORD(buf.value) = 138412290;
              *(&buf.value + 4) = v62;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v47, "%@ Failed to publish results", &buf, 0xCu);
            }
          }

          v24 = v32;
          goto LABEL_126;
        }
      }

      v24 = 0;
LABEL_126:

      v19 = v57;
      goto LABEL_127;
    }

    if (!v57)
    {
      v24 = -128;
      goto LABEL_126;
    }

    memset(&v72, 0, sizeof(v72));
    [v57 vcp_syncPoint];
    if (!(0 >> 96))
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_108;
      }

      v41 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v41))
      {
        goto LABEL_108;
      }

      LODWORD(buf.value) = 138412290;
      *(&buf.value + 4) = v62;
      v42 = "%@ Failed to resume paused analysis (non-fatal)";
      v43 = v41;
      v44 = 12;
LABEL_107:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v43, v42, &buf, v44);
LABEL_108:
      code = -128;
LABEL_109:
      v24 = code;
LABEL_125:
      v30 = v56;
      goto LABEL_126;
    }

    buf = v88;
    time2 = v72;
    if (CMTimeCompare(&buf, &time2) < 0)
    {
      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        photoLibrary8 = [(VCPTask *)self photoLibrary];
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_1001A0C3C;
        v66[3] = &unk_100285158;
        v71 = v99;
        v67 = asset;
        selfCopy4 = self;
        v70 = v100;
        v69 = v60;
        v65 = 0;
        v49 = [photoLibrary8 mad_performAnalysisDataStoreChanges:v66 error:&v65];
        v50 = v65;

        if ((v49 & 1) == 0)
        {
          code = [v50 code];
        }

        if ((v49 & 1) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v53 = [v63 setAttempts:v99 asset:asset taskID:self->_taskID status:v100 lastAttemptDate:v60];
        if (v53 == -108 || v53 == -36)
        {
          v54 = v53;
        }

        else
        {
          v54 = v53;
          if (v53 != -23)
          {
            v54 = code;
          }
        }

        if (v53 == -108 || v53 == -36 || v53 == -23)
        {
          code = v54;
          goto LABEL_109;
        }

        commit4 = [v63 commit];
        if (commit4 == -108 || commit4 == -36)
        {
          code = commit4;
        }

        else
        {
          code = commit4;
          if (commit4 != -23)
          {
            code = v54;
          }
        }

        if (commit4 == -108 || commit4 == -36 || commit4 == -23)
        {
          goto LABEL_109;
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v45 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v45))
        {
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = v62;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "%@ No progress", &buf, 0xCu);
        }
      }

      if (v99 > MediaAnalysisBlacklistThreshold)
      {
        if (MediaAnalysisLogLevel() < 4)
        {
          goto LABEL_108;
        }

        v46 = VCPLogToOSLogType[4];
        if (!os_log_type_enabled(&_os_log_default, v46))
        {
          goto LABEL_108;
        }

        LODWORD(buf.value) = 138412546;
        *(&buf.value + 4) = v62;
        LOWORD(buf.flags) = 1024;
        *(&buf.flags + 2) = v99;
        v42 = "%@ Too many failure attempts (%d); discarding paused analysis";
        v43 = v46;
        v44 = 18;
        goto LABEL_107;
      }
    }

    v51 = [VCPPausedAnalysis pausedAnalysis:v57 forAsset:asset];
    [v51 persist];

    v24 = -128;
    goto LABEL_125;
  }

  code = 0;
LABEL_130:

  return code;
}

@end