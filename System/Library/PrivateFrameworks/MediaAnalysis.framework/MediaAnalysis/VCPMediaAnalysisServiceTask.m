@interface VCPMediaAnalysisServiceTask
+ (id)taskForPhotoLibrary:(id)a3 withAssetLocalIdentifiers:(id)a4 realTime:(BOOL)a5 progressHandler:(id)a6 completionHandler:(id)a7;
- (VCPMediaAnalysisServiceTask)initWithPhotoLibrary:(id)a3 withAssetLocalIdentifiers:(id)a4 realTime:(BOOL)a5 progressHandler:(id)a6 completionHandler:(id)a7;
- (double)progressWeight:(id)a3;
- (double)totalProgressWeight:(id)a3;
- (int)analyzeAsset:(id)a3 analyses:(id)a4 cancel:(id)a5;
- (int)run;
@end

@implementation VCPMediaAnalysisServiceTask

- (VCPMediaAnalysisServiceTask)initWithPhotoLibrary:(id)a3 withAssetLocalIdentifiers:(id)a4 realTime:(BOOL)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v28.receiver = self;
  v28.super_class = VCPMediaAnalysisServiceTask;
  v17 = [(VCPMediaAnalysisServiceTask *)&v28 init];
  v18 = v17;
  if (v17)
  {
    v17->_realTime = a5;
    objc_storeStrong(&v17->_photoLibrary, a3);
    objc_storeStrong(&v18->_localIdentifiers, a4);
    v18->_cancel = 0;
    v19 = objc_retainBlock(v15);
    progressHandler = v18->_progressHandler;
    v18->_progressHandler = v19;

    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = &stru_100285108;
    }

    v22 = objc_retainBlock(v21);
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v22;

    v18->_noResultStrip = 0;
    v24 = _os_feature_enabled_impl();
    v25 = 254;
    if (!v24)
    {
      v25 = 1;
    }

    v18->_taskID = v25;
    v26 = v18;
  }

  return v18;
}

+ (id)taskForPhotoLibrary:(id)a3 withAssetLocalIdentifiers:(id)a4 realTime:(BOOL)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v9 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:v11 withAssetLocalIdentifiers:v12 realTime:v9 progressHandler:v13 completionHandler:v14];

  return v15;
}

- (double)progressWeight:(id)a3
{
  v3 = a3;
  if ([v3 mediaType] == 2)
  {
    [v3 duration];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
    if ([v3 mediaType] == 1)
    {
      if ([v3 vcp_isLivePhoto])
      {
        v5 = 3.0;
      }

      else
      {
        v5 = 1.0;
      }
    }
  }

  return v5;
}

- (double)totalProgressWeight:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(VCPMediaAnalysisServiceTask *)self progressWeight:*(*(&v11 + 1) + 8 * i), v11];
        v7 = v7 + v9;
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  if (v7 < 1.0)
  {
    v7 = 1.0;
  }

  return v7;
}

- (int)analyzeAsset:(id)a3 analyses:(id)a4 cancel:(id)a5
{
  v8 = a3;
  v118 = a4;
  v119 = a5;
  v9 = [v8 localIdentifier];
  v10 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:self->_photoLibrary];
  if (!v10)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_11;
    }

    v11 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v11))
    {
      goto LABEL_11;
    }

    *buf = 138412290;
    v151 = v9;
    v12 = "  [%@] Failed to retrieve VCPDatabaseWriter";
    goto LABEL_10;
  }

  if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    v114 = 0;
LABEL_13:
    v117 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v8];
    v14 = [v8 vcp_fullAnalysisTypesForResources:?] & 0xFFFFFFFFFFEFFFFFLL;
    if (!v14)
    {
      v19 = 0;
      LODWORD(photoLibrary) = 0;
LABEL_96:

      goto LABEL_97;
    }

    v15 = [v8 isVideo];
    v16 = VCPMovieAnalyzer_ptr;
    if (!v15)
    {
      v16 = VCPPhotoAnalyzer_ptr;
    }

    spid = [*v16 canAnalyzeUndegraded:v8 withResources:v117];
    if (+[MADManagedPhotosAsset isMACDReadEnabled])
    {
      v17 = [v8 photoLibrary];
      v18 = [v17 mad_fetchRequest];

      v19 = [v18 fetchAnalysisWithLocalIdentifier:v9 predicate:0];

      if (!v19)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v149 = 0;
      [v10 analysisForAsset:v9 analysis:&v149];
      v19 = v149;
      if (!v19)
      {
        goto LABEL_31;
      }
    }

    if ([v8 vcp_isAnalysisValid:v19])
    {
      if ((v14 & ~[v19 vcp_types]) == 0)
      {
        v20 = [v19 vcp_version];
        if (v20 == MediaAnalysisVersion)
        {
          if (MediaAnalysisLogLevel() >= 7)
          {
            v21 = VCPLogToOSLogType[7];
            if (os_log_type_enabled(&_os_log_default, v21))
            {
              *buf = 138412290;
              v151 = v9;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "  [%@] Requested analysis exists within MA DB", buf, 0xCu);
            }
          }

          noResultStrip = self->_noResultStrip;
          v23 = v19;
          if (!noResultStrip)
          {
            v23 = MediaAnalysisStripInternalResultsFromAnalysis();
          }

          v111 = v23;
          v24 = [v8 localIdentifier];
          [v118 setObject:v23 forKey:v24];

          LODWORD(photoLibrary) = 0;
          if (noResultStrip)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        }
      }

LABEL_32:
      v25 = VCPSignPostLog();
      v26 = os_signpost_id_generate(v25);

      v27 = VCPSignPostLog();
      v28 = v27;
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "VCPMediaAnalysisServiceTask_UnpackComputeSync", "", buf, 2u);
      }

      v111 = [v117 mad_computeSyncResource];
      v113 = [v111 mad_existingAnalysisFromComputeSyncForAsset:v8 allowDownload:0 cancel:v119];
      v29 = VCPSignPostLog();
      v30 = v29;
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v26, "VCPMediaAnalysisServiceTask_UnpackComputeSync", "", buf, 2u);
      }

      v31 = [v113 fullAnalysisResults];
      v32 = v31 == 0;

      if (v32)
      {
        v116 = v19;
      }

      else
      {
        v116 = [v113 fullAnalysisResults];

        if (MediaAnalysisLogLevel() >= 5)
        {
          v33 = &_os_log_default;
          v34 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v34))
          {
            v35 = [v8 localIdentifier];
            [v116 vcp_types];
            v36 = MediaAnalysisTypeShortDescription();
            *buf = 138412546;
            v151 = v35;
            v152 = 2112;
            *v153 = v36;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "  [%@] Reusing analysis results from compute sync (existing: %@)", buf, 0x16u);
          }
        }
      }

      v148 = 0;
      v147 = 0;
      if (+[MADManagedProcessingStatus isMACDReadEnabled])
      {
        v37 = [v8 photoLibrary];
        v38 = [v37 mad_fetchRequest];
        v145 = 0;
        v146 = 0;
        [v38 fetchProcessingStatus:&v148 attempts:&v147 lastAttemptDate:&v146 nextAttemptDate:&v145 localIdentifier:v9 taskID:self->_taskID];
        v115 = v146;
        v112 = v145;
      }

      else
      {
        v143 = 0;
        v144 = 0;
        [v10 queryProcessingStatus:&v148 attempts:&v147 lastAttemptDate:&v144 andNextAttemptDate:&v143 forLocalIdentifier:v9 andTaskID:self->_taskID];
        v115 = v144;
        v112 = v143;
      }

      if (v147)
      {
        v39 = +[NSDate date];
        v40 = [v112 compare:v39] == 1;

        if (v40)
        {
          v41 = v112;
          if (MediaAnalysisLogLevel() < 4 || (v42 = VCPLogToOSLogType[4], !os_log_type_enabled(&_os_log_default, v42)))
          {
            LODWORD(photoLibrary) = 0;
LABEL_94:

            v19 = v116;
LABEL_95:

            goto LABEL_96;
          }

          v43 = v147;
          photoLibrary = +[VCPLogManager dateFormatter];
          v44 = [photoLibrary stringFromDate:v112];
          *buf = 138412802;
          v151 = v9;
          v152 = 1024;
          *v153 = v43;
          *&v153[4] = 2112;
          *&v153[6] = v44;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "[ServiceTask][%@] Too many failure attempts (%d); No retry until %@", buf, 0x1Cu);

          LODWORD(photoLibrary) = 0;
LABEL_93:
          v41 = v112;
          goto LABEL_94;
        }
      }

      v45 = +[NSDate now];
      v110 = v45;
      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        photoLibrary = self->_photoLibrary;
        v138[0] = _NSConcreteStackBlock;
        v138[1] = 3221225472;
        v138[2] = sub_10008FDA4;
        v138[3] = &unk_100285130;
        v142 = v147;
        v139 = v8;
        v140 = self;
        v141 = v45;
        v137 = 0;
        v46 = [photoLibrary mad_performAnalysisDataStoreChanges:v138 error:&v137];
        v47 = v137;
        v48 = v47;
        if ((v46 & 1) == 0)
        {
          LODWORD(photoLibrary) = [v47 code];
        }

        if ((v46 & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v53 = [v10 setAttempts:v147 + 1 asset:v8 taskID:self->_taskID status:1 lastAttemptDate:v45];
        v54 = v53;
        if (v53 == -108 || v53 == -36 || v53 == -23)
        {
          v55 = v116;
          LODWORD(photoLibrary) = v53;
LABEL_92:

          v116 = v55;
          goto LABEL_93;
        }

        v61 = [v10 commit];
        if (v61 == -108 || v61 == -36)
        {
          LODWORD(photoLibrary) = v61;
        }

        else
        {
          LODWORD(photoLibrary) = v61;
          if (v61 != -23)
          {
            LODWORD(photoLibrary) = v54;
          }
        }

        if (v61 == -108 || v61 == -36 || v61 == -23)
        {
          goto LABEL_91;
        }
      }

      if ((([v8 mediaType] == 2) & spid) == 1)
      {
        v49 = [[VCPMovieAnalyzer alloc] initWithPHAsset:v8 withExistingAnalysis:v116 forAnalysisTypes:v14];
        v50 = v136;
        v136[0] = _NSConcreteStackBlock;
        v136[1] = 3221225472;
        v136[2] = sub_10008FDC4;
        v136[3] = &unk_1002842C8;
        v136[4] = v119;
        v51 = [v49 analyzeAsset:v136 streamed:0];

        v52 = [v49 status];
      }

      else
      {
        v49 = [[VCPPhotoAnalyzer alloc] initWithPHAsset:v8 withExistingAnalysis:v116 forAnalysisTypes:v14];
        v50 = v135;
        v135[0] = _NSConcreteStackBlock;
        v135[1] = 3221225472;
        v135[2] = sub_10008FE2C;
        v135[3] = &unk_1002842C8;
        v135[4] = v119;
        v51 = [v49 analyzeAsset:v135 withOptions:0];

        v52 = [v49 status];
      }

      v56 = v52;
      v116 = v51;

      if (v56 == 4)
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v62 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v62))
          {
            *buf = 138412290;
            v151 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v62, "  [%@] Analysis cancelled", buf, 0xCu);
          }
        }

        if (+[MADManagedProcessingStatus isMACDPersistEnabled])
        {
          v63 = self->_photoLibrary;
          v121[0] = _NSConcreteStackBlock;
          v121[1] = 3221225472;
          v121[2] = sub_10008FEB0;
          v121[3] = &unk_100285158;
          v126 = v147;
          v122 = v8;
          v123 = self;
          v125 = v148;
          v124 = v115;
          v120 = 0;
          v64 = [(PHPhotoLibrary *)v63 mad_performAnalysisDataStoreChanges:v121 error:&v120];
          v65 = v120;
          v66 = v65;
          if ((v64 & 1) == 0)
          {
            LODWORD(photoLibrary) = [v65 code];
          }

          if ((v64 & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v71 = [v10 setAttempts:v147 asset:v8 taskID:self->_taskID status:v148 lastAttemptDate:v115];
          if (v71 == -108 || v71 == -36)
          {
            v72 = v71;
          }

          else
          {
            v72 = v71;
            if (v71 != -23)
            {
              v72 = photoLibrary;
            }
          }

          if (v71 == -108 || v71 == -36 || v71 == -23)
          {
            v55 = v51;
            LODWORD(photoLibrary) = v72;
            goto LABEL_92;
          }

          v87 = [v10 commit];
          if (v87 == -108 || v87 == -36)
          {
            LODWORD(photoLibrary) = v87;
          }

          else
          {
            LODWORD(photoLibrary) = v87;
            if (v87 != -23)
            {
              LODWORD(photoLibrary) = v72;
            }
          }

          if (v87 == -108 || v87 == -36 || v87 == -23)
          {
            goto LABEL_91;
          }
        }

        LODWORD(photoLibrary) = -128;
        goto LABEL_91;
      }

      if (v56 != 2)
      {
        if (MediaAnalysisLogLevel() >= 4)
        {
          v67 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v67))
          {
            *buf = 138412290;
            v151 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v67, "  [%@] Analysis failed to complete", buf, 0xCu);
          }
        }

        LODWORD(photoLibrary) = 0;
        goto LABEL_91;
      }

      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        v57 = self->_photoLibrary;
        v132[0] = _NSConcreteStackBlock;
        v132[1] = 3221225472;
        v132[2] = sub_10008FE94;
        v132[3] = &unk_100282938;
        v133 = v9;
        v134 = self;
        v131 = 0;
        v58 = [(PHPhotoLibrary *)v57 mad_performAnalysisDataStoreChanges:v132 error:&v131];
        v59 = v131;
        v60 = v59;
        if ((v58 & 1) == 0)
        {
          LODWORD(photoLibrary) = [v59 code];
        }

        if ((v58 & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v69 = [v10 removeProcessingStatusForLocalIdentifier:v9 andTaskID:self->_taskID];
        if (v69 == -108 || v69 == -36)
        {
          v70 = v69;
        }

        else
        {
          v70 = v69;
          if (v69 != -23)
          {
            v70 = photoLibrary;
          }
        }

        if (v69 == -108)
        {
          goto LABEL_110;
        }

        if (v69 == -36)
        {
          goto LABEL_110;
        }

        LODWORD(photoLibrary) = v70;
        if (v69 == -23)
        {
          goto LABEL_110;
        }
      }

      if (v116)
      {
        v73 = MediaAnalysisStripKeyframeResourceResultsFromAnalysis();

        v74 = MediaAnalysisStripVideoThumbnailResourceResultsFromAnalysis();

        v116 = v74;
        if (+[MADManagedPhotosAsset isMACDPersistEnabled])
        {
          if (MediaAnalysisLogLevel() >= 6)
          {
            v75 = &_os_log_default;
            v76 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v76))
            {
              v77 = [v8 localIdentifier];
              *buf = 138412290;
              v151 = v77;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v76, "[%@][MACD] Persisting results to CoreData", buf, 0xCu);
            }
          }

          v78 = VCPSignPostLog();
          spida = os_signpost_id_generate(v78);

          v79 = VCPSignPostLog();
          v80 = v79;
          if (spida - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v80, OS_SIGNPOST_INTERVAL_BEGIN, spida, "MADPhotosFullAssetProcessingTask_PublishCoreData_Single", "", buf, 2u);
          }

          v81 = self->_photoLibrary;
          v128[0] = _NSConcreteStackBlock;
          v128[1] = 3221225472;
          v128[2] = sub_10008FEA4;
          v128[3] = &unk_100282938;
          v129 = v8;
          v55 = v116;
          v130 = v55;
          v127 = 0;
          v82 = [(PHPhotoLibrary *)v81 mad_performAnalysisDataStoreChanges:v128 error:&v127];
          v83 = v127;
          if (v82)
          {
            v84 = v83;
            v85 = VCPSignPostLog();
            v86 = v85;
            if (spida - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v86, OS_SIGNPOST_INTERVAL_END, spida, "MADPhotosFullAssetProcessingTask_PublishCoreData_Single", "", buf, 2u);
            }
          }

          else
          {
            v84 = v83;
            LODWORD(photoLibrary) = [v83 code];
          }

          if ((v82 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        if (+[VCPDatabaseWriter isLegacyPersistEnabled])
        {
          if (MediaAnalysisLogLevel() >= 6)
          {
            v88 = &_os_log_default;
            v89 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v89))
            {
              v90 = [v8 localIdentifier];
              *buf = 138412290;
              v151 = v90;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v89, "[%@] Persisting results to MA DB", buf, 0xCu);
            }
          }

          v91 = VCPSignPostLog();
          spidb = os_signpost_id_generate(v91);

          v92 = VCPSignPostLog();
          v93 = v92;
          if (spidb - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v92))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v93, OS_SIGNPOST_INTERVAL_BEGIN, spidb, "MADPhotosFullAssetProcessingTask_PublishLegacy_Single", "", buf, 2u);
          }

          v94 = [v10 storeAnalysisForAsset:v8 analysis:v116];
          v95 = v94;
          if (v94 == -108 || v94 == -36)
          {
            v96 = v94;
          }

          else
          {
            v96 = v94;
            if (v94 != -23)
            {
              v96 = photoLibrary;
            }
          }

          if (v94 == -108 || v94 == -36 || v94 == -23)
          {
            goto LABEL_188;
          }

          v105 = VCPSignPostLog();
          v106 = v105;
          if (spidb - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v105))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v106, OS_SIGNPOST_INTERVAL_END, spidb, "MADPhotosFullAssetProcessingTask_PublishLegacy_Single", "", buf, 2u);
          }

          if (v95 == -36 || v95 == -23)
          {
LABEL_188:
            v55 = v116;
            LODWORD(photoLibrary) = v96;
            goto LABEL_92;
          }
        }

        else
        {
          v96 = photoLibrary;
        }

        v97 = self->_noResultStrip;
        v98 = v116;
        if (!v97)
        {
          v98 = MediaAnalysisStripInternalResultsFromAnalysis();
        }

        v99 = [v8 localIdentifier];
        [v118 setObject:v98 forKey:v99];

        if (!v97)
        {
        }

        LODWORD(photoLibrary) = v96;
      }

      else
      {
        v116 = 0;
      }

      if (!+[VCPDatabaseWriter isLegacyPersistEnabled])
      {
        goto LABEL_169;
      }

      v100 = [v10 commit];
      if (v100 == -108 || v100 == -36)
      {
        v70 = v100;
      }

      else
      {
        v70 = v100;
        if (v100 != -23)
        {
          v70 = photoLibrary;
        }
      }

      if (v100 != -108 && v100 != -36 && v100 != -23)
      {
LABEL_169:
        LODWORD(photoLibrary) = [v114 updateAsset:v8 analysis:v116 imageOnly:0 vskResults:0];
        if (!photoLibrary)
        {
          LODWORD(photoLibrary) = [v114 publishPendingChanges];
          if (!photoLibrary || MediaAnalysisLogLevel() < 3)
          {
            goto LABEL_91;
          }

          v103 = &_os_log_default;
          v104 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v104))
          {
            *buf = 138412290;
            v151 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v104, "  [%@] Failed to publish vector database changes", buf, 0xCu);
          }

          goto LABEL_173;
        }

        if (MediaAnalysisLogLevel() >= 3)
        {
          v101 = &_os_log_default;
          v102 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v102))
          {
            *buf = 138412290;
            v151 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v102, "  [%@] Failed to update vector database changes", buf, 0xCu);
          }

LABEL_173:
        }

LABEL_91:
        v55 = v116;
        goto LABEL_92;
      }

LABEL_110:
      v55 = v116;
      LODWORD(photoLibrary) = v70;
      goto LABEL_92;
    }

LABEL_31:

    v19 = 0;
    goto LABEL_32;
  }

  v114 = [MADVectorDatabaseChangeManager sharedManagerForPhotoLibrary:self->_photoLibrary];
  if (v114)
  {
    goto LABEL_13;
  }

  if (MediaAnalysisLogLevel() < 3)
  {
    goto LABEL_11;
  }

  v11 = VCPLogToOSLogType[3];
  if (!os_log_type_enabled(&_os_log_default, v11))
  {
    goto LABEL_11;
  }

  *buf = 138412290;
  v151 = v9;
  v12 = "  [%@] Failed to retrieve MADVectorDatabaseChangeManager";
LABEL_10:
  _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v12, buf, 0xCu);
LABEL_11:
  LODWORD(photoLibrary) = -18;
LABEL_97:

  return photoLibrary;
}

- (int)run
{
  v3 = +[NSMutableDictionary dictionary];
  v23 = [PHAsset vcp_fetchOptionsForLibrary:self->_photoLibrary forTaskID:1];
  v24 = [PHAsset fetchAssetsWithLocalIdentifiers:self->_localIdentifiers options:?];
  [(VCPMediaAnalysisServiceTask *)self totalProgressWeight:?];
  v5 = v4;
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](0.0);
  }

  v7 = objc_alloc_init(VCPSystemMonitor);
  v8 = v7;
  if (self->_realTime || (v9 = [(VCPSystemMonitor *)v7 enable], !v9))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v24;
    v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v10)
    {
      v11 = *v29;
      v12 = VCPLogToOSLogType[6];
      v13 = 0.0;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          if ([(VCPSystemMonitor *)v8 recommendedState]!= 2)
          {
            v9 = 4294967168;
            goto LABEL_22;
          }

          v16 = +[VCPWatchdog sharedWatchdog];
          [v16 pet];

          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v12))
          {
            v17 = [v15 localIdentifier];
            *buf = 138412290;
            v33 = v17;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "  [%@] Processing", buf, 0xCu);
          }

          v18 = objc_autoreleasePoolPush();
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_1000902B4;
          v26[3] = &unk_100285180;
          v26[4] = self;
          v27 = v8;
          v9 = [(VCPMediaAnalysisServiceTask *)self analyzeAsset:v15 analyses:v3 cancel:v26];

          objc_autoreleasePoolPop(v18);
          if (v9)
          {
            goto LABEL_22;
          }

          [(VCPMediaAnalysisServiceTask *)self progressWeight:v15];
          v13 = v13 + v19;
          v20 = self->_progressHandler;
          if (v20)
          {
            v20[2](v13 * 100.0 / v5);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
        v9 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_22:
  }

  [(VCPSystemMonitor *)v8 disable];
  if (v9)
  {
    v21 = 0;
  }

  else
  {
    v21 = v3;
  }

  (*(self->_completionHandler + 2))(self->_completionHandler, v21, v9);

  return v9;
}

@end