@interface VCPResumePausedAnalysisTask
+ (id)taskWithPhotoLibrary:(id)a3;
- (VCPResumePausedAnalysisTask)initWithPhotoLibrary:(id)a3;
- (int)mainInternal;
- (int)publishAnalysis:(id)a3 forAsset:(id)a4 database:(id)a5 embeddingChangeManager:(id)a6;
@end

@implementation VCPResumePausedAnalysisTask

- (VCPResumePausedAnalysisTask)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VCPResumePausedAnalysisTask;
  v5 = [(VCPTask *)&v9 initWithPhotoLibrary:v4];
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

+ (id)taskWithPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:v3];

  return v4;
}

- (int)publishAnalysis:(id)a3 forAsset:(id)a4 database:(id)a5 embeddingChangeManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (+[MADManagedPhotosAsset isMACDPersistEnabled])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v15 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        v16 = [v12 localIdentifier];
        *buf = 138412290;
        v54 = v16;
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

    v20 = [(VCPTask *)self photoLibrary];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10019F9BC;
    v50[3] = &unk_100282938;
    v51 = v12;
    v52 = v11;
    v49 = 0;
    v21 = [v20 mad_performAnalysisDataStoreChanges:v50 error:&v49];
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
        v26 = [v12 localIdentifier];
        *buf = 138412290;
        v54 = v26;
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

    v31 = [v13 storeAnalysisForAsset:v12 analysis:v11];
    v32 = v31;
    if (v31 == -108 || v31 == -36)
    {
      v33 = v31;
    }

    else
    {
      v33 = v31;
      if (v31 != -23)
      {
        v33 = v6;
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
      LODWORD(v6) = v33;
      goto LABEL_42;
    }

    LODWORD(v6) = v33;
    if (v32 == -23)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v33 = v6;
  }

  LODWORD(v6) = [v14 updateAsset:v12 analysis:v11 imageOnly:0 vskResults:0];
  if (v6)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v34 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v34))
      {
        v35 = [v12 localIdentifier];
        *buf = 138412290;
        v54 = v35;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[ResumePaused][%@] Failed to update vector database changes", buf, 0xCu);
      }
    }

    goto LABEL_42;
  }

  LODWORD(v6) = [v14 publishPendingChanges];
  if (v6)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v39 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v39))
      {
        v40 = [v12 localIdentifier];
        *buf = 138412290;
        v54 = v40;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[ResumePaused][%@] Failed to publish vector database changes", buf, 0xCu);
      }
    }

    goto LABEL_42;
  }

  if (!+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v44 = [v12 localIdentifier];
    LODWORD(v6) = [v13 removeProcessingStatusForLocalIdentifier:v44 andTaskID:self->_taskID];

    if (v6)
    {
      goto LABEL_42;
    }

LABEL_53:
    LODWORD(v6) = 0;
    goto LABEL_42;
  }

  v41 = [(VCPTask *)self photoLibrary];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10019F9C8;
  v46[3] = &unk_100282938;
  v47 = v12;
  v48 = self;
  v45 = 0;
  v42 = [v41 mad_performAnalysisDataStoreChanges:v46 error:&v45];
  v43 = v45;

  if ((v42 & 1) == 0)
  {
    v33 = [v43 code];
  }

  LODWORD(v6) = v33;
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

  v5 = [(VCPTask *)self photoLibrary];
  v6 = [VCPPausedAnalysis persistedPausedAnalysisFromPhotoLibrary:v5];

  if (v6)
  {
    v7 = [v6 asset];
    v64 = [v7 localIdentifier];
    v62 = [NSString stringWithFormat:@"[ResumePaused][%@]", v64];
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
      v9 = [(VCPTask *)self photoLibrary];
      v61 = [MADVectorDatabaseChangeManager sharedManagerForPhotoLibrary:v9];

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

        v2 = -18;
        goto LABEL_129;
      }
    }

    else
    {
      v61 = 0;
    }

    v11 = [(VCPTask *)self photoLibrary];
    v63 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v11];

    v100 = 0;
    v99 = 0;
    if (+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      v12 = [(VCPTask *)self photoLibrary];
      v13 = [v12 mad_fetchRequest];
      v97 = 0;
      v98 = 0;
      [v13 fetchProcessingStatus:&v100 attempts:&v99 lastAttemptDate:&v98 nextAttemptDate:&v97 localIdentifier:v64 taskID:self->_taskID];
      v60 = v98;
      v59 = v97;
    }

    else
    {
      v95 = 0;
      v96 = 0;
      [v63 queryProcessingStatus:&v100 attempts:&v99 lastAttemptDate:&v96 andNextAttemptDate:&v95 forLocalIdentifier:v64 andTaskID:self->_taskID];
      v60 = v96;
      v59 = v95;
    }

    v14 = +[NSDate now];
    v58 = v14;
    if (+[MADManagedProcessingStatus isMACDPersistEnabled])
    {
      v15 = [(VCPTask *)self photoLibrary];
      v90[0] = _NSConcreteStackBlock;
      v90[1] = 3221225472;
      v90[2] = sub_1001A0B5C;
      v90[3] = &unk_100285130;
      v94 = v99;
      v91 = v7;
      v92 = self;
      v93 = v14;
      v89 = 0;
      v16 = [v15 mad_performAnalysisDataStoreChanges:v90 error:&v89];
      v17 = v89;

      if ((v16 & 1) == 0)
      {
        v2 = [v17 code];
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v25 = [v63 setAttempts:v99 + 1 asset:v7 taskID:self->_taskID status:1 lastAttemptDate:v14];
      v26 = v25;
      if (v25 == -108 || v25 == -36 || v25 == -23)
      {
        v2 = v25;
LABEL_128:

LABEL_129:
        goto LABEL_130;
      }

      v27 = [v63 commit];
      if (v27 == -108 || v27 == -36)
      {
        v2 = v27;
      }

      else
      {
        v2 = v27;
        if (v27 != -23)
        {
          v2 = v26;
        }
      }

      if (v27 == -108 || v27 == -36 || v27 == -23)
      {
        goto LABEL_128;
      }
    }

    v18 = [v6 analysis];
    v19 = v18;
    memset(&v88, 0, sizeof(v88));
    if (!v18 || ([v18 vcp_syncPoint], (v88.flags & 1) == 0))
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
        v21 = [(VCPTask *)self photoLibrary];
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_1001A0B84;
        v82[3] = &unk_100285158;
        v87 = v99;
        v83 = v7;
        v84 = self;
        v86 = v100;
        v85 = v60;
        v81 = 0;
        v22 = [v21 mad_performAnalysisDataStoreChanges:v82 error:&v81];
        v23 = v81;

        if ((v22 & 1) == 0)
        {
          v2 = [v23 code];
        }

        goto LABEL_32;
      }

      v28 = [v63 setAttempts:v99 asset:v7 taskID:self->_taskID status:v100 lastAttemptDate:v60];
      if (v28 == -108 || v28 == -36)
      {
        v24 = v28;
      }

      else
      {
        v24 = v28;
        if (v28 != -23)
        {
          v24 = v2;
        }
      }

      if (v28 == -108 || v28 == -36 || v28 == -23)
      {
        goto LABEL_127;
      }

      goto LABEL_65;
    }

    if (([v7 vcp_isAnalysisValid:v19] & 1) == 0)
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
        v37 = [(VCPTask *)self photoLibrary];
        v75[0] = _NSConcreteStackBlock;
        v75[1] = 3221225472;
        v75[2] = sub_1001A0BA4;
        v75[3] = &unk_100285158;
        v80 = v99;
        v76 = v7;
        v77 = self;
        v79 = v100;
        v78 = v60;
        v74 = 0;
        v22 = [v37 mad_performAnalysisDataStoreChanges:v75 error:&v74];
        v38 = v74;

        if ((v22 & 1) == 0)
        {
          v2 = [v38 code];
        }

LABEL_32:
        if ((v22 & 1) == 0)
        {
          v24 = v2;
          goto LABEL_127;
        }

LABEL_33:
        v24 = 0;
LABEL_127:

        v2 = v24;
        goto LABEL_128;
      }

      v39 = [v63 setAttempts:v99 asset:v7 taskID:self->_taskID status:v100 lastAttemptDate:v60];
      if (v39 == -108 || v39 == -36)
      {
        v24 = v39;
      }

      else
      {
        v24 = v39;
        if (v39 != -23)
        {
          v24 = v2;
        }
      }

      if (v39 == -108 || v39 == -36 || v39 == -23)
      {
        goto LABEL_127;
      }

LABEL_65:
      v34 = [v63 commit];
      if (v34 == -108 || v34 == -36)
      {
        v35 = v34;
      }

      else
      {
        v35 = v34;
        if (v34 != -23)
        {
          v35 = v24;
        }
      }

      if (v34 == -108 || v34 == -36 || v34 == -23)
      {
        v24 = v35;
        goto LABEL_127;
      }

      goto LABEL_33;
    }

    v29 = [VCPMovieAnalyzer alloc];
    v56 = [v29 initWithPHAsset:v7 withPausedAnalysis:v19 forAnalysisTypes:VCPMAFullAnalysisTypesMovie];
    [v56 setOnDemand:0];
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_1001A0BC4;
    v73[3] = &unk_100283000;
    v73[4] = self;
    v57 = [v56 analyzeAsset:v73 streamed:0];

    v30 = v56;
    v31 = [v56 status];
    if (v31 != 4)
    {
      if (v31 == 3)
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

      else if (v31 == 2)
      {
        v32 = [(VCPResumePausedAnalysisTask *)self publishAnalysis:v57 forAsset:v7 database:v63 embeddingChangeManager:v61];
        if (+[VCPDatabaseWriter isLegacyPersistEnabled])
        {
          v33 = [v63 commit];
          if (v33 == -108 || v33 == -36)
          {
            v24 = v33;
          }

          else
          {
            v24 = v33;
            if (v33 != -23)
            {
              v24 = v2;
            }
          }

          if (v33 == -108 || v33 == -36 || v33 == -23)
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
      v2 = -128;
LABEL_109:
      v24 = v2;
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
        v48 = [(VCPTask *)self photoLibrary];
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_1001A0C3C;
        v66[3] = &unk_100285158;
        v71 = v99;
        v67 = v7;
        v68 = self;
        v70 = v100;
        v69 = v60;
        v65 = 0;
        v49 = [v48 mad_performAnalysisDataStoreChanges:v66 error:&v65];
        v50 = v65;

        if ((v49 & 1) == 0)
        {
          v2 = [v50 code];
        }

        if ((v49 & 1) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v53 = [v63 setAttempts:v99 asset:v7 taskID:self->_taskID status:v100 lastAttemptDate:v60];
        if (v53 == -108 || v53 == -36)
        {
          v54 = v53;
        }

        else
        {
          v54 = v53;
          if (v53 != -23)
          {
            v54 = v2;
          }
        }

        if (v53 == -108 || v53 == -36 || v53 == -23)
        {
          v2 = v54;
          goto LABEL_109;
        }

        v55 = [v63 commit];
        if (v55 == -108 || v55 == -36)
        {
          v2 = v55;
        }

        else
        {
          v2 = v55;
          if (v55 != -23)
          {
            v2 = v54;
          }
        }

        if (v55 == -108 || v55 == -36 || v55 == -23)
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

    v51 = [VCPPausedAnalysis pausedAnalysis:v57 forAsset:v7];
    [v51 persist];

    v24 = -128;
    goto LABEL_125;
  }

  v2 = 0;
LABEL_130:

  return v2;
}

@end