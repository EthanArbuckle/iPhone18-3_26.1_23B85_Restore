@interface VCPFailedAssetAnalysisTask
+ (id)taskWithPhotoLibrary:(id)a3 options:(id)a4;
- (int)mainInternal;
@end

@implementation VCPFailedAssetAnalysisTask

+ (id)taskWithPhotoLibrary:(id)a3 options:(id)a4
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:v4];

  return v5;
}

- (int)mainInternal
{
  v2 = VCPSignPostLog();
  spid = os_signpost_id_generate(v2);

  v3 = VCPSignPostLog();
  v4 = v3;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPFailedAssetAnalysisTask", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = &_os_log_default;
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[LegacyFailed] Checking for failed assets...", buf, 2u);
    }
  }

  v7 = _os_feature_enabled_impl();
  v8 = 254;
  if (!v7)
  {
    v8 = 1;
  }

  v117 = v8;
  v9 = [(VCPTask *)self photoLibrary];
  v10 = [v9 isCloudPhotoLibraryEnabled];

  if (v10)
  {
    v11 = +[VCPInternetReachability sharedInstance];
    v12 = [v11 hasWifiOrEthernetConnection];

    if (v12)
    {
      v13 = [(VCPTask *)self cancel];
      v14 = +[VCPDownloadManager sharedManager];
      [v14 setCancel:v13];

      v109 = 1;
LABEL_17:

      goto LABEL_19;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v13 = &_os_log_default;
      v15 = &_os_log_default;
      v16 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "Wifi/Ethernet connection unavailable; disabling streaming analysis", buf, 2u);
      }

      v109 = 0;
      goto LABEL_17;
    }
  }

  v109 = 0;
LABEL_19:
  v17 = [(VCPTask *)self photoLibrary];
  v113 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v17];

  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v18 = [(VCPTask *)self photoLibrary];
    v140 = 0;
    v141[0] = _NSConcreteStackBlock;
    v141[1] = 3221225472;
    v141[2] = sub_100106120;
    v141[3] = &unk_100282F90;
    v141[4] = v117;
    v19 = [v18 mad_performAnalysisDataStoreChanges:v141 error:&v140];
    v20 = v140;

    if (!v19)
    {
      v110 = [v20 code];
      goto LABEL_193;
    }

    goto LABEL_22;
  }

  v26 = [v113 hardFailAllRunningProcessingStatusForTaskID:v117];
  v27 = v26;
  if (v26 == -108 || v26 == -36 || v26 == -23)
  {
    v19 = v26;
    goto LABEL_194;
  }

  v30 = [v113 commit];
  if (v30 == -108 || v30 == -36)
  {
    v19 = v30;
  }

  else
  {
    v19 = v30;
    if (v30 != -23)
    {
      v19 = v27;
    }
  }

  if (v30 != -108 && v30 != -36 && v30 != -23)
  {
LABEL_22:
    if (+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      v21 = [(VCPTask *)self photoLibrary];
      v22 = [v21 mad_fetchRequest];
      v139 = 0;
      v23 = [v22 fetchLocalIdentifiersEligibleForRetry:&v139 taskID:v117 fetchLimit:1000000];
      v24 = v139;

      if (v23 == -108 || v23 == -36)
      {
        v25 = v23;
      }

      else
      {
        v110 = v23;
        if (v23 == -23)
        {
          goto LABEL_48;
        }

        v25 = v19;
      }

      v110 = v25;
LABEL_48:
      if (v23 == -108 || v23 == -36)
      {
        v20 = v24;
        goto LABEL_193;
      }

      v31 = v23 == -23;
      v20 = v24;
      if (v31)
      {
        goto LABEL_193;
      }

      goto LABEL_51;
    }

    v138 = 0;
    v28 = [v113 fetchLocalIdentifiersEligibleForRetry:&v138 withTaskID:v117 andFetchLimit:1000000];
    v20 = v138;
    if (v28 == -108 || v28 == -36)
    {
      v29 = v28;
    }

    else
    {
      v110 = v28;
      if (v28 == -23)
      {
LABEL_42:
        if (v28 == -108 || v28 == -36 || v28 == -23)
        {
          goto LABEL_193;
        }

LABEL_51:
        if (![v20 count])
        {
          v110 = 0;
          goto LABEL_193;
        }

        v104 = v20;
        if (MediaAnalysisLogLevel() >= 6)
        {
          v32 = &_os_log_default;
          v33 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v33))
          {
            v34 = [v20 count];
            *buf = 67109120;
            LODWORD(v143) = v34;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "[LegacyFailed] Revisiting %d failed assets", buf, 8u);
          }
        }

        v35 = [v20 count];
        v36 = [(VCPTask *)self progressHandler];
        v112 = [VCPProgressReporter reporterWithIntervalSeconds:10 andTotalJobCount:v35 andBlock:v36];

        v37 = [(VCPTask *)self photoLibrary];
        v103 = [VCPPhotosAssetChangeManager managerForPhotoLibrary:v37];

        if (!v103)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v42 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v42))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "[LegacyFailed] Failed to retrieve VCPPhotosAssetChangeManager", buf, 2u);
            }
          }

          v110 = -18;
          goto LABEL_192;
        }

        v38 = v104;
        if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
        {
          v39 = [(VCPTask *)self photoLibrary];
          v102 = [MADVectorDatabaseChangeManager sharedManagerForPhotoLibrary:v39];

          v38 = v104;
          if (!v102)
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v40 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v40))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "[LegacyFailed] Failed to retrieve MADVectorDatabaseChangeManager", buf, 2u);
              }
            }

            v102 = 0;
            v41 = -18;
            goto LABEL_190;
          }
        }

        else
        {
          v102 = 0;
        }

        v108 = 0;
        v114 = 0;
        type = VCPLogToOSLogType[6];
        v100 = VCPLogToOSLogType[7];
        v105 = VCPLogToOSLogType[5];
LABEL_76:
        if (v108 >= [v38 count])
        {
LABEL_166:
          if (+[VCPDatabaseWriter isLegacyPersistEnabled])
          {
            v90 = [v113 commit];
            if (v90 == -108 || v90 == -36)
            {
              v91 = v90;
            }

            else
            {
              v91 = v90;
              if (v90 != -23)
              {
                v91 = v110;
              }
            }

            if (v90 == -108 || v90 == -36 || v90 == -23)
            {
              v41 = v91;
              goto LABEL_190;
            }
          }

          v92 = +[VCPDownloadManager sharedManager];
          [v92 flush];

          v110 = [v102 publishPendingChanges];
          if (v110)
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v93 = &_os_log_default;
              v94 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v94))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v94, "[LegacyFailed] Failed to publish vector database changes", buf, 2u);
              }
            }

LABEL_191:

LABEL_192:
            v20 = v104;
LABEL_193:

            v19 = v110;
            goto LABEL_194;
          }

          v124[0] = _NSConcreteStackBlock;
          v124[1] = 3221225472;
          v124[2] = sub_100106148;
          v124[3] = &unk_100283000;
          v124[4] = self;
          if ([v103 publishPendingChangesWithCancelBlock:v124] && MediaAnalysisLogLevel() >= 4)
          {
            v95 = &_os_log_default;
            v96 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v96))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v96, "[LegacyFailed] Failed to publish PHAssetPropertySetMediaAnalysis changes", buf, 2u);
            }
          }

          v97 = VCPSignPostLog();
          v98 = v97;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v97))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v98, OS_SIGNPOST_INTERVAL_END, spid, "VCPFailedAssetAnalysisTask", "", buf, 2u);
          }

          v41 = v114;
LABEL_190:
          v110 = v41;
          goto LABEL_191;
        }

        context = objc_autoreleasePoolPush();
        [v104 count];
        v106 = [v104 subarrayWithRange:?];
        v43 = [(VCPTask *)self photoLibrary];
        v107 = [PHAsset vcp_fetchOptionsForLibrary:v43 forTaskID:v117];

        v44 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
        v146 = v44;
        v45 = [NSArray arrayWithObjects:&v146 count:1];
        [v107 setSortDescriptors:v45];

        v121 = [PHAsset fetchAssetsWithLocalIdentifiers:v106 options:v107];
        for (i = 0; ; ++i)
        {
          if (i >= [v121 count])
          {
            v51 = 31;
LABEL_163:

            v38 = v104;
            objc_autoreleasePoolPop(context);
            if (v51 <= 30)
            {
              goto LABEL_191;
            }

            if (v51 != 31)
            {
              goto LABEL_166;
            }

            v108 += 100;
            goto LABEL_76;
          }

          v47 = objc_autoreleasePoolPush();
          v48 = [v121 objectAtIndexedSubscript:i];
          v49 = [v48 localIdentifier];
          v122 = [NSString stringWithFormat:@"[LegacyFailed][%@]", v49];

          if (MediaAnalysisLogLevel() >= 6)
          {
            v50 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              v143 = v122;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Checking asset", buf, 0xCu);
            }
          }

          if (![(VCPTask *)self isCancelled])
          {
            break;
          }

          v114 = -128;
          v51 = 38;
LABEL_140:

          objc_autoreleasePoolPop(v47);
          if (v51 != 33 && v51)
          {
            goto LABEL_163;
          }
        }

        v52 = +[VCPWatchdog sharedWatchdog];
        [v52 pet];

        v120 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v48];
        v53 = [(VCPTask *)self photoLibrary];
        if ([v53 isCloudPhotoLibraryEnabled])
        {
          if ([v48 vcp_isLivePhoto])
          {

LABEL_88:
            v54 = [v48 vcp_fullAnalysisTypes];
            if ([v48 vcp_fullAnalysisTypesForResources:v120] != v54)
            {
              if (v109)
              {
                if (![v48 vcp_isLivePhoto] || (objc_msgSend(v120, "vcp_hasLocalPhoto:", objc_msgSend(v48, "hasAdjustments")) & 1) != 0)
                {
                  v119 = 1;
                  goto LABEL_97;
                }

                if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(&_os_log_default, v100))
                {
LABEL_161:
                  v51 = 33;
                  goto LABEL_139;
                }

                *buf = 138412290;
                v143 = v122;
                v87 = v100;
                v88 = "%@ Live Photo has no local image; skipping";
              }

              else
              {
                if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(&_os_log_default, v100))
                {
                  goto LABEL_161;
                }

                *buf = 138412290;
                v143 = v122;
                v87 = v100;
                v88 = "%@ Network unavailable; skipping";
              }

              _os_log_impl(&_mh_execute_header, &_os_log_default, v87, v88, buf, 0xCu);
              goto LABEL_161;
            }

LABEL_96:
            v119 = 0;
LABEL_97:
            [v112 increaseProcessedJobCountByOne];
            v137 = 0;
            v55 = [(VCPBackgroundAnalysisTask *)self missingAnalysisForAsset:v48 existingAnalysis:&v137 resources:v120 forLocalResourcesOnly:v119 ^ 1];
            if (!v55)
            {
              v51 = 33;
LABEL_138:

LABEL_139:
              goto LABEL_140;
            }

            v56 = VCPSignPostLog();
            v57 = os_signpost_id_generate(v56);

            v58 = VCPSignPostLog();
            v59 = v58;
            if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_INTERVAL_BEGIN, v57, "VCPFailedAssetAnalysisTask_UnpackComputeSync", "", buf, 2u);
            }

            v115 = [v120 mad_computeSyncResource];
            v60 = [(VCPTask *)self cancel];
            v118 = [v115 mad_existingAnalysisFromComputeSyncForAsset:v48 allowDownload:0 cancel:v60];

            v61 = VCPSignPostLog();
            v62 = v61;
            if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v62, OS_SIGNPOST_INTERVAL_END, v57, "VCPFailedAssetAnalysisTask_UnpackComputeSync", "", buf, 2u);
            }

            v63 = [v118 fullAnalysisResults];
            v64 = v63 == 0;

            if (!v64)
            {
              v65 = [v118 fullAnalysisResults];
              v66 = v137;
              v137 = v65;

              v55 = [(VCPBackgroundAnalysisTask *)self missingAnalysisForAsset:v48 withExistingComputeSyncAnalysis:&v137 resources:v120 forLocalResourcesOnly:v119 ^ 1];
              if (MediaAnalysisLogLevel() >= 5)
              {
                v67 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, v105))
                {
                  [v137 vcp_types];
                  v68 = MediaAnalysisTypeShortDescription();
                  v69 = MediaAnalysisTypeShortDescription();
                  *buf = 138412802;
                  v143 = v122;
                  v144 = 2112;
                  *v145 = v68;
                  *&v145[8] = 2112;
                  *&v145[10] = v69;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v105, "%@ Reusing analysis results from compute sync (existing: %@, missing: %@)", buf, 0x20u);
                }
              }
            }

            v136 = 0;
            v135 = 0;
            if (+[MADManagedProcessingStatus isMACDReadEnabled])
            {
              v70 = [(VCPTask *)self photoLibrary];
              v71 = [v70 mad_fetchRequest];
              v134 = 0;
              v133 = 0;
              v72 = [v48 localIdentifier];
              [v71 fetchProcessingStatus:&v136 attempts:&v135 lastAttemptDate:&v134 nextAttemptDate:&v133 localIdentifier:v72 taskID:v117];
              v73 = v134;
              v74 = v133;
            }

            else
            {
              v131 = 0;
              v132 = 0;
              v70 = [v48 localIdentifier];
              [v113 queryProcessingStatus:&v136 attempts:&v135 lastAttemptDate:&v132 andNextAttemptDate:&v131 forLocalIdentifier:v70 andTaskID:v117];
              v73 = v132;
              v74 = v131;
            }

            if (MediaAnalysisLogLevel() >= 6)
            {
              v75 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, type))
              {
                *buf = 138412802;
                v143 = v122;
                v144 = 1024;
                *v145 = v135;
                *&v145[4] = 2048;
                *&v145[6] = v136;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Asset has %d previous attempts, most recent analysis status: %lu", buf, 0x1Cu);
              }
            }

            v76 = +[NSDate now];
            if (+[MADManagedProcessingStatus isMACDPersistEnabled])
            {
              v77 = [(VCPTask *)self photoLibrary];
              v126[0] = _NSConcreteStackBlock;
              v126[1] = 3221225472;
              v126[2] = sub_10010612C;
              v126[3] = &unk_100286648;
              v130 = v135;
              v127 = v48;
              v129 = v117;
              v128 = v76;
              v125 = 0;
              v78 = [v77 mad_performAnalysisDataStoreChanges:v126 error:&v125];
              v79 = v125;

              if ((v78 & 1) == 0)
              {
                v110 = [v79 code];
              }

              if (v78)
              {
LABEL_121:
                v80 = [VCPAssetAnalysisTask taskWithAnalysisTypes:v55 forAsset:v48 withExistingAnalysis:v137];
                [v80 setPhotosChangeManager:v103];
                [v80 setEmbeddingChangeManager:v102];
                [v80 setAllowStreaming:v119];
                [v80 setPreviousStatus:v136];
                [v80 setPreviousAttempts:v135];
                [v80 setLastAttemptDate:v73];
                v81 = [(VCPTask *)self cancel];
                [v80 setCancel:v81];

                [v80 start];
                v82 = [v80 error];
                if (v82)
                {
                  v51 = 38;
                }

                else
                {
                  v51 = 0;
                }

                v83 = v114;
                if (v82)
                {
                  v83 = v82;
                }

                v114 = v83;

                goto LABEL_137;
              }

              v51 = 1;
            }

            else
            {
              v84 = [v113 setAttempts:v135 + 1 asset:v48 taskID:v117 status:1 lastAttemptDate:v76];
              v51 = 38;
              if (v84 == -108 || v84 == -36)
              {
                v85 = v84;
              }

              else
              {
                v85 = v84;
                if (v84 != -23)
                {
                  v51 = 0;
                  v85 = v114;
                }
              }

              if (v84 != -108 && v84 != -36 && v84 != -23)
              {
                v86 = [v113 commit];
                v51 = 38;
                if (v86 == -108 || v86 == -36)
                {
                  v114 = v86;
                }

                else
                {
                  v114 = v86;
                  if (v86 != -23)
                  {
                    v51 = 0;
                    v114 = v85;
                  }
                }

                if (v86 == -108 || v86 == -36 || v86 == -23)
                {
                  goto LABEL_137;
                }

                goto LABEL_121;
              }

              v114 = v85;
            }

LABEL_137:

            goto LABEL_138;
          }

          if ([v48 isVideo] && (objc_msgSend(v48, "vcp_isVideoSlowmo") & 1) == 0)
          {
            v89 = [v48 vcp_isLongMovie];

            if (v89)
            {
              goto LABEL_96;
            }

            goto LABEL_88;
          }
        }

        goto LABEL_96;
      }

      v29 = v19;
    }

    v110 = v29;
    goto LABEL_42;
  }

LABEL_194:

  return v19;
}

@end