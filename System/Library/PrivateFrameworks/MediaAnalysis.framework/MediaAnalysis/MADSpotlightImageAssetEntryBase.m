@interface MADSpotlightImageAssetEntryBase
- (__CVBuffer)decodeImageAtImageURL:(id)a3;
- (__CVBuffer)decodeImageAtVideoURL:(id)a3;
- (unint64_t)targetMajorDimensionForImageWithWidth:(unint64_t)a3 height:(unint64_t)a4 andMinPreferredMinorDimension:(unint64_t)a5;
- (void)processWithImageBackboneAnalyzer:(id)a3 commSafetyHandler:(id)a4 requestQueue:(id)a5 cancelBlock:(id)a6;
@end

@implementation MADSpotlightImageAssetEntryBase

- (__CVBuffer)decodeImageAtImageURL:(id)a3
{
  if (MediaAnalysisLogLevel() >= 3)
  {
    v4 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[%@][Process] decodeImageAtImageURL should be implemented in sub-class", &v7, 0xCu);
    }
  }

  return 0;
}

- (__CVBuffer)decodeImageAtVideoURL:(id)a3
{
  if (MediaAnalysisLogLevel() >= 3)
  {
    v4 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[%@][Process] decodeImageAtImageURL should be implemented in sub-class", &v7, 0xCu);
    }
  }

  return 0;
}

- (unint64_t)targetMajorDimensionForImageWithWidth:(unint64_t)a3 height:(unint64_t)a4 andMinPreferredMinorDimension:(unint64_t)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if (a3 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a3;
  }

  if (v9 <= v8)
  {
    if (MediaAnalysisLogLevel() < 7)
    {
      return 0;
    }

    v20 = VCPLogToOSLogType[7];
    if (!os_log_type_enabled(&_os_log_default, v20))
    {
      return 0;
    }

    goto LABEL_27;
  }

  v10 = vcvtmd_s64_f64(log2(v9 / v8));
  v11 = 1 << (v10 - 1);
  if (!v10)
  {
    v11 = 0;
  }

  v12 = ((v11 + v6) >> v10) & 0xFFFFFFFE;
  v13 = ((v11 + v5) >> v10) & 0xFFFFFFFE;
  if (v12 * v13 > 3657830)
  {
    v14 = v6;
    v15 = (sqrt(v6 * 3048192.0 / v5) + 0.5) & 0xFFFFFFFE;
    v16 = (sqrt(v5 * 3048192.0 / v14) + 0.5) & 0xFFFFFFFE;
    if (MediaAnalysisLogLevel() >= 7)
    {
      v17 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        v18 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
        v26 = 138412802;
        v27 = v18;
        v28 = 1024;
        v29 = v15;
        v30 = 1024;
        v31 = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[%@][Process] Processing image at scaled resolution (%dx%d)", &v26, 0x18u);
      }
    }

    if (v15 <= v16)
    {
      return v16;
    }

    else
    {
      return v15;
    }
  }

  v21 = MediaAnalysisLogLevel();
  if (v10 >= 1)
  {
    if (v21 >= 7)
    {
      v22 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        v23 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
        v26 = 138412802;
        v27 = v23;
        v28 = 1024;
        v29 = v12;
        v30 = 1024;
        v31 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[%@][Process] Processing image at subsampled resolution (%dx%d)", &v26, 0x18u);
      }
    }

    if (v12 <= v13)
    {
      return v13;
    }

    else
    {
      return v12;
    }
  }

  if (v21 >= 7)
  {
    v20 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v20))
    {
LABEL_27:
      v25 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
      v26 = 138412802;
      v27 = v25;
      v28 = 1024;
      v29 = v6;
      v30 = 1024;
      v31 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[%@][Process] Processing image at full resolution (%dx%d)", &v26, 0x18u);
    }
  }

  return 0;
}

- (void)processWithImageBackboneAnalyzer:(id)a3 commSafetyHandler:(id)a4 requestQueue:(id)a5 cancelBlock:(id)a6
{
  v166 = a3;
  v164 = a4;
  queue = a5;
  v175 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = &_os_log_default;
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      v11 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
      v12 = [(MADSpotlightImageAssetEntryBase *)self uniqueIdentifier];
      v13 = [(MADSpotlightImageAssetEntryBase *)self filePath];
      *buf = 138412802;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2112;
      v219 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[%@][Process][%@] Processing asset: %@", buf, 0x20u);
    }
  }

  v14 = +[VCPWatchdog sharedWatchdog];
  [v14 pet];

  v15 = [(MADSpotlightImageAssetEntryBase *)self filePath];
  v169 = [NSURL fileURLWithPath:v15 isDirectory:0];

  cf = 0;
  if ([(MADSpotlightImageAssetEntryBase *)self isMovieAsset])
  {
    v16 = objc_autoreleasePoolPush();
    cf = [(MADSpotlightImageAssetEntryBase *)self decodeImageAtVideoURL:v169];
    *buf = 0;
    sub_100002CBC(buf);
    objc_autoreleasePoolPop(v16);
  }

  else
  {
    cf = [(MADSpotlightImageAssetEntryBase *)self decodeImageAtImageURL:v169];
    *buf = 0;
    sub_100002CBC(buf);
  }

  if (!cf)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v36 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v36))
      {
        v37 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
        v38 = [(MADSpotlightImageAssetEntryBase *)self uniqueIdentifier];
        *buf = 138412802;
        *&buf[4] = v37;
        *&buf[12] = 2112;
        *&buf[14] = v38;
        *&buf[22] = 2112;
        v219 = v169;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[%@][Process][%@] Failed to decode image (%@)", buf, 0x20u);
      }
    }

    [(MADSpotlightImageAssetEntryBase *)self setStatus:4294967278];
    goto LABEL_166;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v17 = &_os_log_default;
    v18 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v18))
    {
      v19 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
      v20 = [(MADSpotlightImageAssetEntryBase *)self uniqueIdentifier];
      *buf = 138412802;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      *&buf[22] = 2112;
      v219 = v169;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[%@][Process][%@] Successfully decode image (%@)", buf, 0x20u);
    }
  }

  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled]&& DeviceHasANE() && [(MADSpotlightImageAssetEntryBase *)self needsEmbeddingProcessing])
  {
    v21 = v166;
    if (!v166)
    {
      v21 = [[VCPImageBackboneAnalyzer alloc] initWithRequestedAnalyses:0x1000000000000 andRevision:0 useSharedModel:1];
      if (!v21)
      {
        if (MediaAnalysisLogLevel() >= 4)
        {
          v157 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v157))
          {
            v158 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
            v159 = [(MADSpotlightImageAssetEntryBase *)self uniqueIdentifier];
            *buf = 138412546;
            *&buf[4] = v158;
            *&buf[12] = 2112;
            *&buf[14] = v159;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v157, "[%@][Process][%@] Failed to init imageBackboneAnalyzer", buf, 0x16u);
          }
        }

        v166 = 0;
        [(MADSpotlightImageAssetEntryBase *)self setStatus:4294967188];
        goto LABEL_166;
      }
    }

    v205 = 0;
    v166 = v21;
    [v21 analyzePixelBuffer:cf flags:0 results:&v205 cancel:v175];
    v22 = v205;
    v23 = [v22 objectForKeyedSubscript:MediaAnalysisImageEmbeddingResultsKey];
    if ([v23 count])
    {
      v24 = [v23 objectAtIndexedSubscript:0];
      v25 = [v24 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];
      v26 = [v25 objectForKeyedSubscript:MediaAnalysisResultEmbeddingAttributeKey];

      v222 = v26;
      v27 = [NSArray arrayWithObjects:&v222 count:1];
      [(MADSpotlightImageAssetEntryBase *)self setEmbeddings:v27];

      [(MADSpotlightImageAssetEntryBase *)self setEmbeddingVersion:+[VCPMediaAnalyzer getUnifiedEmbeddingVersion]];
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v219 = sub_10012C284;
  v220 = sub_10012C294;
  v221 = 0;
  v28 = VCPSignPostLog();
  v29 = os_signpost_id_generate(v28);

  v30 = VCPSignPostLog();
  v31 = v30;
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *v207 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "VNImageRequestHandler_init", "", v207, 2u);
  }

  v32 = [VNImageRequestHandler alloc];
  v161 = [v32 initWithCVPixelBuffer:cf options:&__NSDictionary0__struct];
  v33 = VCPSignPostLog();
  v34 = v33;
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *v207 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_END, v29, "VNImageRequestHandler_init", "", v207, 2u);
  }

  v165 = +[NSMutableArray array];
  if ([(MADSpotlightImageAssetEntryBase *)self needsOCRProcessing])
  {
    v35 = +[VNRecognizeDocumentsRequest mad_defaultRequest];
    [v165 addObject:v35];
  }

  else
  {
    v35 = 0;
  }

  v160 = v35;
  v168 = objc_alloc_init(VNSceneClassificationRequest);
  v163 = objc_alloc_init(VNClassifyImageAestheticsRequest);
  v162 = objc_alloc_init(VNClassifyImageRequest);
  if (![(MADSpotlightImageAssetEntryBase *)self needsSceneProcessing])
  {
    goto LABEL_47;
  }

  [v168 setMetalContextPriority:1];
  [v168 setPreferBackgroundProcessing:1];
  if (DeviceHasANE())
  {
    v39 = +[VNProcessingDevice defaultANEDevice];
    [v168 setProcessingDevice:v39];
  }

  [v168 setMaximumLeafObservations:15];
  [v168 setMaximumHierarchicalObservations:15];
  v40 = *&buf[8];
  obj = *(*&buf[8] + 40);
  v41 = [v168 setRevision:3737841665 error:&obj];
  objc_storeStrong((v40 + 40), obj);
  if ((v41 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v61 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v61))
      {
        v62 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
        v63 = [(MADSpotlightImageAssetEntryBase *)self uniqueIdentifier];
        v64 = *(*&buf[8] + 40);
        *v207 = 138412802;
        v208 = v62;
        v209 = 2112;
        v210 = v63;
        v211 = 2112;
        v212 = v64;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v61, "[%@][Process][%@] Failed to configure scene classification (%@)", v207, 0x20u);
      }
    }

    goto LABEL_85;
  }

  [v165 addObject:v168];
  if (+[VNRequest mad_includeEntityNet])
  {
    [v162 setMetalContextPriority:1];
    [v162 setPreferBackgroundProcessing:1];
    if (DeviceHasANE())
    {
      v42 = +[VNProcessingDevice defaultANEDevice];
      [v162 setProcessingDevice:v42];
    }

    [v162 setMaximumLeafObservations:15];
    [v162 setMaximumHierarchicalObservations:15];
    v43 = *&buf[8];
    v203 = *(*&buf[8] + 40);
    v44 = [v162 setRevision:3737841667 error:&v203];
    objc_storeStrong((v43 + 40), v203);
    if ((v44 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v80 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v80))
        {
          v81 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
          v82 = [(MADSpotlightImageAssetEntryBase *)self uniqueIdentifier];
          v83 = *(*&buf[8] + 40);
          *v207 = 138412802;
          v208 = v81;
          v209 = 2112;
          v210 = v82;
          v211 = 2112;
          v212 = v83;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v80, "[%@][Process][%@] Failed to configure EntityNet (%@)", v207, 0x20u);
        }
      }

      goto LABEL_85;
    }

    [v165 addObject:v162];
  }

  [v163 setMetalContextPriority:1];
  [v163 setPreferBackgroundProcessing:1];
  if (DeviceHasANE())
  {
    v45 = +[VNProcessingDevice defaultANEDevice];
    [v163 setProcessingDevice:v45];
  }

  v46 = *&buf[8];
  v202 = *(*&buf[8] + 40);
  v47 = [v163 setRevision:3737841667 error:&v202];
  objc_storeStrong((v46 + 40), v202);
  if ((v47 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v76 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v76))
      {
        v77 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
        v78 = [(MADSpotlightImageAssetEntryBase *)self uniqueIdentifier];
        v79 = *(*&buf[8] + 40);
        *v207 = 138412802;
        v208 = v77;
        v209 = 2112;
        v210 = v78;
        v211 = 2112;
        v212 = v79;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v76, "[%@][Process][%@] Failed to configure scene classification (%@)", v207, 0x20u);
      }
    }

LABEL_85:
    [(MADSpotlightImageAssetEntryBase *)self setStatus:4294967278];
    goto LABEL_165;
  }

  [v165 addObject:v163];
LABEL_47:
  v48 = VCPSignPostLog();
  v49 = os_signpost_id_generate(v48);

  v50 = VCPSignPostLog();
  v51 = v50;
  if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
  {
    *v207 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_BEGIN, v49, "VNImageRequestHandler_performRequests", "", v207, 2u);
  }

  v198 = 0;
  v199 = &v198;
  v200 = 0x2020000000;
  v201 = 0;
  v52 = dispatch_semaphore_create(0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012C29C;
  block[3] = &unk_100286E60;
  v196 = &v198;
  v193 = v161;
  v53 = v165;
  v194 = v53;
  v197 = buf;
  v54 = v52;
  v195 = v54;
  dispatch_async(queue, block);
  v55 = dispatch_time(0, 100000000);
  dsema = v54;
  if (dispatch_semaphore_wait(v54, v55))
  {
    do
    {
      if (v175 && v175[2]())
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v69 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v69))
          {
            v70 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
            v71 = [(MADSpotlightImageAssetEntryBase *)self uniqueIdentifier];
            *v207 = 138412546;
            v208 = v70;
            v209 = 2112;
            v210 = v71;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v69, "[%@][Process][%@] Processing canceled; skipping asset", v207, 0x16u);
          }
        }

        [(MADSpotlightImageAssetEntryBase *)self setStatus:4294967168];
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        v72 = v53;
        v73 = [v72 countByEnumeratingWithState:&v188 objects:v217 count:16];
        if (v73)
        {
          v74 = *v189;
          do
          {
            for (i = 0; i != v73; i = i + 1)
            {
              if (*v189 != v74)
              {
                objc_enumerationMutation(v72);
              }

              [*(*(&v188 + 1) + 8 * i) cancel];
            }

            v73 = [v72 countByEnumeratingWithState:&v188 objects:v217 count:16];
          }

          while (v73);
        }

        dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
        goto LABEL_164;
      }

      v56 = dispatch_time(0, 100000000);
    }

    while (dispatch_semaphore_wait(v54, v56));
  }

  v57 = VCPSignPostLog();
  v58 = v57;
  if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
  {
    *v207 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, OS_SIGNPOST_INTERVAL_END, v49, "VNImageRequestHandler_performRequests", "", v207, 2u);
  }

  if ((v199[3] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v65 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v65))
      {
        v66 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
        v67 = [(MADSpotlightImageAssetEntryBase *)self uniqueIdentifier];
        v68 = *(*&buf[8] + 40);
        *v207 = 138412802;
        v208 = v66;
        v209 = 2112;
        v210 = v67;
        v211 = 2112;
        v212 = v68;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v65, "[%@][Process][%@] Processing failed (%@)", v207, 0x20u);
      }
    }

    [(MADSpotlightImageAssetEntryBase *)self setStatus:4294967278];
    goto LABEL_164;
  }

  if ([(MADSpotlightImageAssetEntryBase *)self needsOCRProcessing])
  {
    v59 = [v160 results];
    v60 = [v59 firstObject];

    if (v60)
    {
      [(MADSpotlightImageAssetEntryBase *)self setOcrVersion:VCPPhotosOCRProcessingVersion];
      [(MADSpotlightImageAssetEntryBase *)self setOcrObservation:v60];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v84 = &_os_log_default;
        v85 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v85))
        {
          v86 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
          v87 = [(MADSpotlightImageAssetEntryBase *)self uniqueIdentifier];
          *v207 = 138412546;
          v208 = v86;
          v209 = 2112;
          v210 = v87;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v85, "[%@][Process][OCR][%@] Processing produced no results", v207, 0x16u);
        }
      }

      [(MADSpotlightImageAssetEntryBase *)self setStatus:4294967278];
    }
  }

  if (![(MADSpotlightImageAssetEntryBase *)self needsSceneProcessing])
  {
    goto LABEL_164;
  }

  v88 = [v168 results];
  v89 = v88 == 0;

  if (v89)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v138 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v138))
      {
        v139 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
        v140 = [(MADSpotlightImageAssetEntryBase *)self uniqueIdentifier];
        *v207 = 138412546;
        v208 = v139;
        v209 = 2112;
        v210 = v140;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v138, "[%@][Process][Scene][%@] Processing produced no results", v207, 0x16u);
      }
    }

    [(MADSpotlightImageAssetEntryBase *)self setStatus:4294967278];
    goto LABEL_149;
  }

  v172 = +[NSMutableSet set];
  v186 = 0u;
  v187 = 0u;
  v185 = 0u;
  v184 = 0u;
  v90 = [v168 results];
  v91 = [v90 countByEnumeratingWithState:&v184 objects:v216 count:16];
  if (v91)
  {
    v92 = *v185;
    type = VCPLogToOSLogType[3];
    do
    {
      for (j = 0; j != v91; j = j + 1)
      {
        if (*v185 != v92)
        {
          objc_enumerationMutation(v90);
        }

        v94 = *(*(&v184 + 1) + 8 * j);
        [v94 confidence];
        if (v95 >= 0.01)
        {
          v96 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
          v97 = [v94 identifier];
          v98 = [v96 nodeForName:v97];

          if (v98)
          {
            [v98 highPrecisionThreshold];
            v100 = v99;
            [v98 highRecallThreshold];
            v102 = v101;
            [v98 searchThreshold];
            v104 = v103;
            [v94 confidence];
            if (v100 >= v102)
            {
              v106 = v102;
            }

            else
            {
              v106 = v100;
            }

            if (v106 >= v104)
            {
              v106 = v104;
            }

            v107 = v105;
            if (v106 < 0.00999999978)
            {
              v106 = 0.00999999978;
            }

            if (v106 <= v107)
            {
              v108 = [v98 extendedSceneClassId];
              [v94 confidence];
              v110 = [PHSceneClassification vcp_instanceWithExtendedSceneIdentifier:v108 confidence:v109];
              if (v110)
              {
                [v172 addObject:v110];
              }

              goto LABEL_114;
            }
          }

          else if (MediaAnalysisLogLevel() >= 3)
          {
            v111 = &_os_log_default;
            v110 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, type))
            {
              v112 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
              v113 = [v94 identifier];
              *v207 = 138412546;
              v208 = v112;
              v209 = 2112;
              v210 = v113;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][Process][Scene] Unsupported SceneNet observation label in PFSceneTaxonomyNode: %@", v207, 0x16u);

              v110 = &_os_log_default;
            }

LABEL_114:
          }

          continue;
        }
      }

      v91 = [v90 countByEnumeratingWithState:&v184 objects:v216 count:16];
    }

    while (v91);
  }

  if (!+[VNRequest mad_includeEntityNet])
  {
    goto LABEL_144;
  }

  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v114 = [v162 results];
  v115 = [v114 countByEnumeratingWithState:&v180 objects:v215 count:16];
  if (!v115)
  {
    goto LABEL_143;
  }

  v116 = *v181;
  typea = VCPLogToOSLogType[7];
  do
  {
    for (k = 0; k != v115; k = k + 1)
    {
      if (*v181 != v116)
      {
        objc_enumerationMutation(v114);
      }

      v118 = *(*(&v180 + 1) + 8 * k);
      [v118 confidence];
      if (v119 >= 0.01)
      {
        v120 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
        v121 = [v118 identifier];
        v122 = [v120 nodeForName:v121];

        if (v122)
        {
          [v122 highPrecisionThreshold];
          v124 = v123;
          [v122 highRecallThreshold];
          v126 = v125;
          [v122 searchThreshold];
          v128 = v127;
          [v118 confidence];
          if (v124 >= v126)
          {
            v130 = v126;
          }

          else
          {
            v130 = v124;
          }

          if (v130 >= v128)
          {
            v130 = v128;
          }

          v131 = v129;
          if (v130 < 0.00999999978)
          {
            v130 = 0.00999999978;
          }

          if (v130 <= v131)
          {
            v132 = [v122 extendedSceneClassId];
            [v118 confidence];
            v134 = [PHSceneClassification vcp_instanceWithExtendedSceneIdentifier:v132 confidence:v133];
            if (v134)
            {
              [v172 addObject:v134];
            }

            goto LABEL_139;
          }
        }

        else if (MediaAnalysisLogLevel() >= 7)
        {
          v135 = &_os_log_default;
          v134 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, typea))
          {
            v136 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
            v137 = [v118 identifier];
            *v207 = 138412546;
            v208 = v136;
            v209 = 2112;
            v210 = v137;
            _os_log_impl(&_mh_execute_header, &_os_log_default, typea, "[%@][Process][Scene] Unsupported EntityNet observation label in PFSceneTaxonomyNode: %@", v207, 0x16u);

            v134 = &_os_log_default;
          }

LABEL_139:
        }

        continue;
      }
    }

    v115 = [v114 countByEnumeratingWithState:&v180 objects:v215 count:16];
  }

  while (v115);
LABEL_143:

LABEL_144:
  [(MADSpotlightImageAssetEntryBase *)self setSceneClassifications:v172];

LABEL_149:
  v141 = [v163 results];
  v142 = [v141 firstObject];

  if (v142)
  {
    [v142 aestheticScore];
    [(MADSpotlightImageAssetEntryBase *)self setAestheticScore:?];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v143 = &_os_log_default;
      v144 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v144))
      {
        v145 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
        v146 = [(MADSpotlightImageAssetEntryBase *)self uniqueIdentifier];
        *v207 = 138412546;
        v208 = v145;
        v209 = 2112;
        v210 = v146;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v144, "[%@][Process][Aesthetics][%@] Processing produced no results", v207, 0x16u);
      }
    }

    [(MADSpotlightImageAssetEntryBase *)self setStatus:4294967278];
  }

  v147 = *&buf[8];
  v179 = *(*&buf[8] + 40);
  v148 = [v164 analyzePixelBuffer:cf error:&v179];
  objc_storeStrong((v147 + 40), v179);
  if (*(*&buf[8] + 40))
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v149 = &_os_log_default;
      v150 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v150))
      {
        v151 = [(MADSpotlightImageAssetEntryBase *)self logPrefix];
        v152 = [(MADSpotlightImageAssetEntryBase *)self uniqueIdentifier];
        v153 = objc_opt_class();
        v154 = *(*&buf[8] + 40);
        *v207 = 138413058;
        v208 = v151;
        v209 = 2112;
        v210 = v152;
        v211 = 2112;
        v212 = v153;
        v213 = 2112;
        v214 = v154;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v150, "[%@][Process][%@] Failed to run %@ (%@)", v207, 0x2Au);
      }
    }

    [(MADSpotlightImageAssetEntryBase *)self setStatus:4294967278];
  }

  else
  {
    v155 = [v148 scoresForLabels];
    +[NSMutableSet set];
    v176[0] = _NSConcreteStackBlock;
    v176[1] = 3221225472;
    v176[2] = sub_10012C310;
    v156 = v176[3] = &unk_100285F18;
    v177 = v156;
    v178 = self;
    [v155 enumerateKeysAndObjectsUsingBlock:v176];
    [(MADSpotlightImageAssetEntryBase *)self setNsfwClassifications:v156];
    [(MADSpotlightImageAssetEntryBase *)self setSceneVersion:VCPPhotosSceneProcessingVersion];
  }

LABEL_164:
  _Block_object_dispose(&v198, 8);
LABEL_165:

  _Block_object_dispose(buf, 8);
LABEL_166:
  sub_100002CBC(&cf);
}

@end