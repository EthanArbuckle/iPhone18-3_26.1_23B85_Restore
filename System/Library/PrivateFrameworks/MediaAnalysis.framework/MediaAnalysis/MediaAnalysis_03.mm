void sub_1001277D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, const void *a53, uint64_t a54, char a55)
{
  sub_100002CBC(&a53);

  _Block_object_dispose((v60 - 176), 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v60 - 256), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100127A44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100127A5C(uint64_t a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPStickerGating", "", buf, 2u);
  }

  v23 = 0;
  v6 = [*(a1 + 32) asset];
  v7 = ([v6 mediaSubtypes] & 4) == 0;

  if (v7)
  {
    v8 = 1.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 1.0;
  }

  else
  {
    [*(a1 + 40) _computeRegionOfInterest:*(a1 + 48) orientation:*(a1 + 56)];
    v9 = v12;
    v10 = v13;
    v8 = v14;
    v11 = v15;
  }

  v26.origin.x = v9;
  v26.origin.y = v10;
  v26.size.width = v8;
  v26.size.height = v11;
  if (CGRectIsNull(v26))
  {
    v16 = 4294967278;
  }

  else
  {
    v16 = [*(a1 + 40) _calculateStickerScore:*(a1 + 48) orientation:*(a1 + 56) regionOfInterest:&v23 stickerScore:{v9, v10, v8, v11}];
  }

  [*(a1 + 32) setStickerStatus:v16];
  if ([*(a1 + 32) stickerStatus])
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v18 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        v19 = [*(a1 + 32) asset];
        v20 = [v19 localIdentifier];
        *buf = 138412290;
        v25 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[VisualSearch][%@] Processing failed (StaticStickerScore)", buf, 0xCu);
      }
    }
  }

  else
  {
    LODWORD(v17) = v23;
    [*(a1 + 32) setStickerScore:v17];
    [*(a1 + 32) setStickerAlgorithmVersion:1];
  }

  v21 = VCPSignPostLog();
  v22 = v21;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v3, "VCPStickerGating", "", buf, 2u);
  }
}

CFTypeRef sub_100127D20(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void sub_100127D40(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v7 = VCPSignPostLog();
  v8 = v7;
  v9 = *(a1 + 80);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "VIService_VisualSearchGating", "", buf, 2u);
  }

  if (*(a1 + 88))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  if (v39)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v10 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = [*(a1 + 32) asset];
        v12 = [v11 localIdentifier];
        *buf = 138412546;
        v54 = v12;
        v55 = 2112;
        v56 = v39;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[VisualSearch][%@] Processing failed (%@)", buf, 0x16u);
      }
    }

    [*(a1 + 32) setVisualSearchStatus:{4294967278, v37}];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v13 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        v14 = [*(a1 + 32) asset];
        v15 = [v14 localIdentifier];
        *buf = 138412290;
        v54 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[VisualSearch][%@] Processing completed", buf, 0xCu);
      }
    }

    [*(a1 + 32) setVersion:VCPPhotosVisualSearchAlgorithmVersion()];
    [*(a1 + 32) setResult:v38];
    ++*(*(*(a1 + 56) + 8) + 24);
    v16 = objc_alloc_init(NSMutableSet);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v17 = [v37 visualUnderstanding];
    obj = [v17 imageRegions];

    v18 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v18)
    {
      v19 = *v50;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v49 + 1) + 8 * i);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v22 = [v21 domainInfo];
          v23 = [v22 countByEnumeratingWithState:&v45 objects:v58 count:16];
          if (v23)
          {
            v24 = *v46;
            do
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v46 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = [*(*(&v45 + 1) + 8 * j) domainKey];
                [v16 addObject:v26];
              }

              v23 = [v22 countByEnumeratingWithState:&v45 objects:v58 count:16];
            }

            while (v23);
          }
        }

        v18 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v18);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = v16;
    v28 = [v27 countByEnumeratingWithState:&v41 objects:v57 count:16];
    if (v28)
    {
      v29 = *v42;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v41 + 1) + 8 * k);
          v32 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:{v31, v37}];
          v33 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v32 integerValue] + 1);
          [*(*(*(a1 + 64) + 8) + 40) setObject:v33 forKeyedSubscript:v31];
        }

        v28 = [v27 countByEnumeratingWithState:&v41 objects:v57 count:16];
      }

      while (v28);
    }

    if ([v27 count])
    {
      ++*(*(*(a1 + 72) + 8) + 24);
    }

    if ((MADAnyEncryptedSearchDomains(v27) & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v34 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v34))
        {
          v35 = [*(a1 + 32) asset];
          v36 = [v35 localIdentifier];
          *buf = 138412290;
          v54 = v36;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[VisualSearch][%@] No encryptedSearchDomains, setting PEC version", buf, 0xCu);
        }
      }

      [*(a1 + 32) setPecVersion:{VCPPhotosPECProcessingVersion, v37}];
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void sub_10012860C(uint64_t a1, void *a2)
{
  v22 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(*(a1 + 32) + 8);
  v3 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v3)
  {
    v4 = *v24;
    type = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [v6 asset];
        v9 = [v8 localIdentifier];
        v10 = [NSString stringWithFormat:@"[VisualSearch][%@]", v9];

        if (![v6 status])
        {
          if ([v6 visualSearchStatus])
          {
            v11 = [v6 visualSearchStatus];
          }

          else
          {
            v11 = [v6 stickerStatus];
          }

          [v6 setStatus:v11];
        }

        if (![v6 status])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v28 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
          }

          goto LABEL_29;
        }

        if ([v6 status] == -128)
        {
          if (![v6 previousAttempts])
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              v28 = v10;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
            }

LABEL_29:
            v13 = [v6 asset];
            v15 = [v13 localIdentifier];
            [v22 removeProcessingStatusForLocalIdentifier:v15 taskID:12];
            goto LABEL_30;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v28 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
          }

          v12 = [v6 previousAttempts];
          v13 = [v6 asset];
          v14 = [v6 previousStatus];
          v15 = [v6 lastAttemptDate];
          [v22 setAttempts:v12 asset:v13 taskID:12 status:v14 lastAttemptDate:v15];
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v28 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
          }

          [v6 status];
          v16 = MADProcessingStatusForOSStatus();
          v17 = [v6 asset];
          v18 = [v6 currentAttemptDate];
          v13 = [v17 mad_nextAttemptDateForStatus:v16 currentAttemptDate:v18 attemptCount:{objc_msgSend(v6, "previousAttempts") + 1}];

          v15 = [v6 asset];
          v19 = [v15 localIdentifier];
          [v22 updateProcessingStatus:v16 nextAttemptDate:v13 localIdentifier:v19 taskID:12];
        }

LABEL_30:

        objc_autoreleasePoolPop(v7);
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v3);
  }
}

void sub_1001298C8(uint64_t a1)
{
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = *(*(a1 + 32) + 8);
  v2 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v2)
  {
    v38 = *v40;
    type = VCPLogToOSLogType[4];
    *&v3 = 138412802;
    v33 = v3;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v40 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v39 + 1) + 8 * i);
        v6 = objc_autoreleasePoolPush();
        if (![v5 status])
        {
          v7 = [v5 asset];
          v8 = [PHAssetChangeRequest changeRequestForAsset:v7];

          if (([v5 analysisTypes] & 2) != 0 && !objc_msgSend(v5, "visualSearchStatus"))
          {
            v19 = [v5 result];
            v20 = [v5 version];
            v21 = [v5 asset];
            v22 = [v21 adjustmentVersion];
            [v8 setVisualSearchData:v19 algorithmVersion:v20 adjustmentVersion:v22];

            v9 = 1;
          }

          else
          {
            v9 = 0;
          }

          if (([v5 analysisTypes] & 4) == 0 || objc_msgSend(v5, "stickerStatus") || objc_msgSend(v5, "stickerAlgorithmVersion") == -1)
          {
            if ((v9 & 1) == 0)
            {
              v10 = 0;
              goto LABEL_14;
            }
          }

          else
          {
            [v5 stickerScore];
            v24 = v23;
            v25 = [v5 stickerAlgorithmVersion];
            LODWORD(v26) = v24;
            [v8 setStickerConfidenceScore:v25 stickerAlgorithmVersion:v26];
            if (v9)
            {
              goto LABEL_21;
            }

            v10 = 1;
LABEL_14:
            v1 = [v5 asset];
            if ([v1 vcp_needsVisualSearchProcessing])
            {
              v11 = v1;
              goto LABEL_31;
            }

            if (v10)
            {

LABEL_21:
              v14 = [v5 asset];
              v15 = [v14 mad_isEligibleForComputeSync];

              if (v15)
              {
                v16 = [v5 asset];
                v17 = [v16 mad_analysisStageAfterCompletingAnalysis:12];

                [v8 setLocalAnalysisStage:v17];
                v18 = [v5 asset];
                v11 = [MADComputeSyncPayloadResults payloadDataForAsset:v18 targetStage:v17 embeddingResults:0 fullAnalysisResults:0];

                if (v11)
                {
                  [v8 setComputeSyncMediaAnalysisPayload:v11];
                }

                else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
                {
                  v34 = [v5 asset];
                  v35 = [v34 localIdentifier];
                  v27 = [v5 asset];
                  v28 = [v27 mediaAnalysisProperties];
                  v29 = [v28 localAnalysisStage];
                  *buf = v33;
                  v44 = v35;
                  v45 = 1024;
                  v46 = v17;
                  v47 = 1024;
                  v48 = v29;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[VisualSearch][%@] No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
                }

LABEL_31:
              }

LABEL_32:
              if ([v5 pecVersion] >= 1)
              {
                v30 = [v5 pecVersion];
                v31 = [v5 asset];
                v32 = [v31 adjustmentVersion];
                [v8 setSceneClassifications:0 ofType:5 version:v30 timestamp:v32];
              }

              goto LABEL_35;
            }
          }

          v12 = [v5 asset];
          v13 = [v12 vcp_needsStickerGatingProcessing];

          if ((v9 & 1) == 0)
          {
          }

          if ((v13 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

LABEL_35:
        objc_autoreleasePoolPop(v6);
      }

      v2 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v2);
  }
}

void sub_100129E40(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_10012BDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  sub_100002CBC(&STACK[0x218]);

  _Unwind_Resume(a1);
}

uint64_t sub_10012C284(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_10012C29C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v5 = [v2 performRequests:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v5;
  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10012C310(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v6 doubleValue];
  if (v7 >= 0.00999999978)
  {
    v8 = VCPSpecialLabelToExtendedSceneClassificationID();
    v9 = v8;
    if (v8)
    {
      v10 = [v8 longLongValue];
      [v6 doubleValue];
      v11 = [PHSceneClassification vcp_instanceWithExtendedSceneIdentifier:v10 confidence:?];
      if (v11)
      {
        [*(a1 + 32) addObject:v11];
      }
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v12 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        v13 = [*(a1 + 40) logPrefix];
        v14 = 138412546;
        v15 = v13;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[%@][Process] Unsupported observation label in VCPSpecialLabelToExtendedSceneClassificationID %@", &v14, 0x16u);
      }
    }
  }
}

void sub_10012C8FC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_10012D460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012D490(id a1)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v1 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v1))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v1, "[MAD BG Service] XPC connection interrupted", v2, 2u);
    }
  }
}

void sub_10012D50C(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MAD BG Service] XPC connection invalidated", v6, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 2);
    *(WeakRetained + 2) = 0;
  }
}

void sub_10012DD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 256), 8);

  _Block_object_dispose((v41 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10012DEAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10012DEC4(id a1, NSError *a2)
{
  if (MediaAnalysisLogLevel() >= 4)
  {
    v2 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MAD BG Service] Error connecting to wake background analysis service", v3, 2u);
    }
  }
}

intptr_t sub_10012DF40(uint64_t a1, int a2)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6[0] = 67109120;
      v6[1] = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MAD BG Service] Waked; proceed to service daemon (%d) processing ...", v6, 8u);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10012E00C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4)
  {
    v4 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [v3 description];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MAD BG Service] Connection to background analysis service failed (%@)", &v6, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10012E110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] == -128)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v5 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v5))
        {
          v6 = [v4 description];
          v14 = 138412290;
          v15 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MAD BG Service] Processing canceled (%@)", &v14, 0xCu);
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 4)
    {
      v9 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        v10 = [v4 description];
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[MAD BG Service] Processing failed (%@)", &v14, 0xCu);
      }
    }

    v11 = [v4 copy];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v7 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAD BG Service] Processing completed", &v14, 2u);
      }
    }

    v8 = [*(a1 + 32) completionHandler];
    v8[2](v8, 0, 0);
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
  if (*(*(a1 + 32) + 8) == 16 && _os_feature_enabled_impl())
  {
    +[VCPMADPECSingleRequestProcessingTask reschedule];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10012E3A8(uint64_t a1)
{
  if ([*(a1 + 32) isCanceled])
  {
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v2 + 24);
    *(v2 + 24) = v3 + 1;
    if (!v3 || MediaAnalysisLogLevel() >= 7)
    {
      v4 = *(*(a1 + 40) + 8);
      v5 = *(v4 + 24);
      *(v4 + 24) = v5 + 1;
      v6 = 7;
      if (!v5)
      {
        v6 = 5;
      }

      v7 = VCPLogToOSLogType[v6];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        v8 = *(*(a1 + 32) + 8);
        v11[0] = 67109120;
        v11[1] = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAD BG Service] Canceling (activity %d) ...", v11, 8u);
      }
    }

    v9 = [*(a1 + 32) connection];
    v10 = [v9 remoteObjectProxyWithErrorHandler:&stru_100286F10];
    [v10 cancelActivity];
  }
}

void sub_10012E4E8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10012E510(id a1, NSError *a2)
{
  if (MediaAnalysisLogLevel() >= 4)
  {
    v2 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MAD BG Service] Error connecting to background analysis service", v3, 2u);
    }
  }
}

uint64_t sub_10012E708(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 code];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

void sub_10012F030(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = [objc_opt_class() name];
      [*(a1 + 40) fractionCompleted];
      v7 = 138412546;
      v8 = v3;
      v9 = 2048;
      v10 = v4 * 100.0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[%@] Progress: %0.2f%%", &v7, 0x16u);
    }
  }

  v5 = *(*(a1 + 32) + 44);
  if (v5)
  {
    [*(a1 + 40) fractionCompleted];
    (*(v5 + 16))(v5, v6 * 100.0);
  }
}

void sub_10012F370(id a1)
{
  v1 = objc_alloc_init(VCPMADProcessingJobManager);
  v2 = qword_1002B8440;
  qword_1002B8440 = v1;
}

void sub_10012F778(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(*(a1 + 32) + 8);
  v7 = a4;
  v8 = a3;
  v9 = [v6 objectForKeyedSubscript:a2];
  [v9 scheduleJob:v7 toDispatchGroup:v8];
}

void sub_10013064C(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(*(a1 + 32) + 8);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v7 = *v17;
    v8 = VCPLogToOSLogType[7];
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v8))
        {
          v11 = [v10 asset];
          v12 = [v11 localIdentifier];
          *buf = v15;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[OCR][%@][MACD] Setting processing status to running", buf, 0xCu);
        }

        v13 = [v10 previousAttempts];
        v14 = [v10 asset];
        [v3 setAttempts:v13 + 1 asset:v14 taskID:10 status:1 lastAttemptDate:*(a1 + 40)];

        v9 = v9 + 1;
      }

      while (v5 != v9);
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }
}

void sub_100131F4C(uint64_t a1)
{
  v2 = [NSNumber numberWithInt:*(a1 + 48)];
  v3 = *(*(a1 + 32) + 56);
  v4 = [*(a1 + 40) localIdentifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = +[NSDate now];
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;
}

void sub_1001320CC(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 72);
  v2 = *(*(a1 + 32) + 56);
  v3 = [*(a1 + 40) localIdentifier];
  [v2 removeObjectForKey:v3];

  v4 = +[NSDate now];
  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  *(v5 + 64) = v4;

  if (MediaAnalysisLogLevel() >= 7)
  {
    v7 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [*(*(a1 + 32) + 56) count];
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[OCR] %d downloads pending", v9, 8u);
    }
  }
}

void sub_1001322B4(uint64_t a1)
{
  v3 = +[NSDate now];
  [v3 timeIntervalSinceDate:*(*(a1 + 32) + 64)];
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

void sub_1001323BC(uint64_t a1)
{
  *(*(a1 + 32) + 72) = *(a1 + 40);
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = [*(*(a1 + 32) + 56) count];
      v4 = *(a1 + 40);
      *buf = 67109376;
      v17 = v3;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[OCR] Canceling %d download requests (%d)", buf, 0xEu);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(*(a1 + 32) + 56) allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = +[PHAssetResourceManager defaultManager];
        [v10 cancelDataRequest:{objc_msgSend(v9, "intValue")}];
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_1001331D0(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = [v3 privateFileURL];
  [v1 processAssetEntry:v2 resource:v3 resourceURL:?];
}

void sub_100133250(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[VCPWatchdog sharedWatchdog];
  [v7 pet];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) asset];
  v10 = [v8 removeDownloadRequestIDForAsset:v9];

  if (v6)
  {
    if (!v10)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v11 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          v12 = [*(a1 + 40) asset];
          v13 = [v12 localIdentifier];
          v14 = [v6 description];
          *buf = 138412546;
          v24 = v13;
          v25 = 2112;
          v26 = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[OCR][%@] Failed to download resource (%@)", buf, 0x16u);
        }
      }

      if ([v6 mad_isDownloadThrottling])
      {
        v10 = 4294943488;
      }

      else
      {
        v10 = 4294943494;
      }
    }

    [*(a1 + 40) setStatus:v10];
  }

  else
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = *(v16 + 80);
    v18 = *(v16 + 88);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001334D4;
    v19[3] = &unk_1002851D0;
    v19[4] = v16;
    v20 = v15;
    v21 = *(a1 + 48);
    v22 = v5;
    dispatch_group_async(v17, v18, v19);
  }

  dispatch_group_leave(*(*(a1 + 32) + 40));
}

id sub_1001334D4(uint64_t a1)
{
  [*(a1 + 32) processAssetEntry:*(a1 + 40) resource:*(a1 + 48) resourceURL:*(a1 + 56)];
  v2 = *(a1 + 56);

  return [PHAssetResourceManager vcp_flushResourceURL:v2];
}

void sub_100133750(uint64_t a1, void *a2)
{
  v21 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(*(a1 + 32) + 8);
  v3 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v3)
  {
    v4 = *v23;
    type = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [v6 asset];
        v9 = [v8 localIdentifier];
        v10 = [NSString stringWithFormat:@"[OCR][%@]", v9];

        if (![v6 status])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v27 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
          }

          goto LABEL_24;
        }

        if ([v6 status] == -128)
        {
          if (![v6 previousAttempts])
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              v27 = v10;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
            }

LABEL_24:
            v12 = [v6 asset];
            v14 = [v12 localIdentifier];
            [v21 removeProcessingStatusForLocalIdentifier:v14 taskID:10];
            goto LABEL_25;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v27 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
          }

          v11 = [v6 previousAttempts];
          v12 = [v6 asset];
          v13 = [v6 previousStatus];
          v14 = [v6 lastAttemptDate];
          [v21 setAttempts:v11 asset:v12 taskID:10 status:v13 lastAttemptDate:v14];
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v27 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
          }

          [v6 status];
          v15 = MADProcessingStatusForOSStatus();
          v16 = [v6 asset];
          v17 = [v6 currentAttemptDate];
          v12 = [v16 mad_nextAttemptDateForStatus:v15 currentAttemptDate:v17 attemptCount:{objc_msgSend(v6, "previousAttempts") + 1}];

          v14 = [v6 asset];
          v18 = [v14 localIdentifier];
          [v21 updateProcessingStatus:v15 nextAttemptDate:v12 localIdentifier:v18 taskID:10];
        }

LABEL_25:

        objc_autoreleasePoolPop(v7);
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v3);
  }
}

void sub_10013499C(uint64_t a1)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(*(a1 + 32) + 8);
  v1 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v1)
  {
    v3 = *v37;
    v31 = VCPLogToOSLogType[4];
    type = VCPLogToOSLogType[6];
    v33 = VCPPhotosOCRProcessingFromGatingVersion;
    *&v2 = 138412802;
    v30 = v2;
    do
    {
      v4 = 0;
      do
      {
        if (*v37 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v36 + 1) + 8 * v4);
        v6 = objc_autoreleasePoolPush();
        if (![v5 status])
        {
          if ([v5 isAnalysisCompleteFromComputeSync])
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
            {
              v7 = [v5 asset];
              v8 = [v7 localIdentifier];
              *buf = 138412290;
              v41 = v8;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[OCR][%@] Analysis already complete from compute sync ingestion; skip publishing", buf, 0xCu);
            }
          }

          else if ([v5 version] != v33 || (objc_msgSend(v5, "asset"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "characterRecognitionProperties"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "algorithmVersion") == 0, v10, v9, v11))
          {
            v12 = [v5 asset];
            v34 = [PHAssetChangeRequest changeRequestForAsset:v12];

            v13 = [v5 ocrData];
            v14 = [v5 mrcData];
            v15 = [v5 version];
            v16 = [v5 asset];
            v17 = [v16 adjustmentVersion];
            [v34 setCharacterRecognitionData:v13 machineReadableCodeData:v14 algorithmVersion:v15 adjustmentVersion:v17];

            v18 = [v5 asset];
            v19 = [v18 mad_isEligibleForComputeSync];

            if (v19)
            {
              v20 = [v5 asset];
              v21 = [v20 mad_analysisStageAfterCompletingAnalysis:10];

              [v34 setLocalAnalysisStage:v21];
              v22 = [v5 asset];
              v23 = [MADComputeSyncPayloadResults payloadDataForAsset:v22 targetStage:v21 embeddingResults:0 fullAnalysisResults:0];

              if (v23)
              {
                [v34 setComputeSyncMediaAnalysisPayload:v23];
              }

              else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v31))
              {
                v24 = [v5 asset];
                v25 = [v24 localIdentifier];
                v26 = [v5 asset];
                v27 = [v26 mediaAnalysisProperties];
                v28 = [v27 localAnalysisStage];
                *buf = v30;
                v41 = v25;
                v42 = 1024;
                v43 = v21;
                v44 = 1024;
                v45 = v28;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[OCR][%@] No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
              }
            }
          }
        }

        objc_autoreleasePoolPop(v6);
        v4 = v4 + 1;
      }

      while (v1 != v4);
      v29 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      v1 = v29;
    }

    while (v29);
  }
}

void sub_100134ED0(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_1001360A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(*(a1 + 32) + 56);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v7 = *v17;
    v8 = VCPLogToOSLogType[7];
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v8))
        {
          v11 = [v10 asset];
          v12 = [v11 localIdentifier];
          *buf = v15;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[VisualSearch][%@][MACD] Setting processing status to running", buf, 0xCu);
        }

        v13 = [v10 previousAttempts];
        v14 = [v10 asset];
        [v3 setAttempts:v13 + 1 asset:v14 taskID:12 status:1 lastAttemptDate:*(a1 + 40)];

        v9 = v9 + 1;
      }

      while (v5 != v9);
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }
}

void sub_1001378EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, void *a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, const void *a55, uint64_t a56, char a57)
{
  sub_100002CBC(&a55);

  _Block_object_dispose((v62 - 176), 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose((v62 - 256), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100137B9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100137BB4(uint64_t a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPStickerGating", "", buf, 2u);
  }

  v23 = 0;
  v6 = [*(a1 + 32) asset];
  v7 = ([v6 mediaSubtypes] & 4) == 0;

  if (v7)
  {
    v8 = 1.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 1.0;
  }

  else
  {
    [*(a1 + 40) _computeRegionOfInterest:*(a1 + 48) orientation:*(a1 + 56)];
    v9 = v12;
    v10 = v13;
    v8 = v14;
    v11 = v15;
  }

  v26.origin.x = v9;
  v26.origin.y = v10;
  v26.size.width = v8;
  v26.size.height = v11;
  if (CGRectIsNull(v26))
  {
    v16 = 4294967278;
  }

  else
  {
    v16 = [*(a1 + 40) _calculateStickerScore:*(a1 + 48) orientation:*(a1 + 56) regionOfInterest:&v23 stickerScore:{v9, v10, v8, v11}];
  }

  [*(a1 + 32) setStickerStatus:v16];
  if ([*(a1 + 32) stickerStatus])
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v18 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        v19 = [*(a1 + 32) asset];
        v20 = [v19 localIdentifier];
        *buf = 138412290;
        v25 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[VisualSearch][%@] Processing failed (StaticStickerScore)", buf, 0xCu);
      }
    }
  }

  else
  {
    LODWORD(v17) = v23;
    [*(a1 + 32) setStickerScore:v17];
    [*(a1 + 32) setStickerAlgorithmVersion:1];
  }

  v21 = VCPSignPostLog();
  v22 = v21;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v3, "VCPStickerGating", "", buf, 2u);
  }
}

void sub_100137E78(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v7 = VCPSignPostLog();
  v8 = v7;
  v9 = *(a1 + 80);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "VIService_VisualSearchGating", "", buf, 2u);
  }

  if (*(a1 + 88))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  if (v39)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v10 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = [*(a1 + 32) asset];
        v12 = [v11 localIdentifier];
        *buf = 138412546;
        v54 = v12;
        v55 = 2112;
        v56 = v39;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[VisualSearch][%@] Processing failed (%@)", buf, 0x16u);
      }
    }

    [*(a1 + 32) setVisualSearchStatus:{4294967278, v37}];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v13 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        v14 = [*(a1 + 32) asset];
        v15 = [v14 localIdentifier];
        *buf = 138412290;
        v54 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[VisualSearch][%@] Processing completed", buf, 0xCu);
      }
    }

    [*(a1 + 32) setVersion:VCPPhotosVisualSearchAlgorithmVersion()];
    [*(a1 + 32) setResult:v38];
    ++*(*(*(a1 + 56) + 8) + 24);
    v16 = objc_alloc_init(NSMutableSet);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v17 = [v37 visualUnderstanding];
    obj = [v17 imageRegions];

    v18 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v18)
    {
      v19 = *v50;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v49 + 1) + 8 * i);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v22 = [v21 domainInfo];
          v23 = [v22 countByEnumeratingWithState:&v45 objects:v58 count:16];
          if (v23)
          {
            v24 = *v46;
            do
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v46 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = [*(*(&v45 + 1) + 8 * j) domainKey];
                [v16 addObject:v26];
              }

              v23 = [v22 countByEnumeratingWithState:&v45 objects:v58 count:16];
            }

            while (v23);
          }
        }

        v18 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v18);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = v16;
    v28 = [v27 countByEnumeratingWithState:&v41 objects:v57 count:16];
    if (v28)
    {
      v29 = *v42;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v41 + 1) + 8 * k);
          v32 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:{v31, v37}];
          v33 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v32 integerValue] + 1);
          [*(*(*(a1 + 64) + 8) + 40) setObject:v33 forKeyedSubscript:v31];
        }

        v28 = [v27 countByEnumeratingWithState:&v41 objects:v57 count:16];
      }

      while (v28);
    }

    if ([v27 count])
    {
      ++*(*(*(a1 + 72) + 8) + 24);
    }

    if ((MADAnyEncryptedSearchDomains(v27) & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v34 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v34))
        {
          v35 = [*(a1 + 32) asset];
          v36 = [v35 localIdentifier];
          *buf = 138412290;
          v54 = v36;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[VisualSearch][%@] No encryptedSearchDomains, setting PEC version", buf, 0xCu);
        }
      }

      [*(a1 + 32) setPecVersion:{VCPPhotosPECProcessingVersion, v37}];
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void sub_100138784(uint64_t a1, void *a2)
{
  v22 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(*(a1 + 32) + 56);
  v3 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v3)
  {
    v4 = *v24;
    type = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [v6 asset];
        v9 = [v8 localIdentifier];
        v10 = [NSString stringWithFormat:@"[VisualSearch][%@]", v9];

        if (![v6 status])
        {
          if ([v6 visualSearchStatus])
          {
            v11 = [v6 visualSearchStatus];
          }

          else
          {
            v11 = [v6 stickerStatus];
          }

          [v6 setStatus:v11];
        }

        if (![v6 status])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v28 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
          }

          goto LABEL_29;
        }

        if ([v6 status] == -128)
        {
          if (![v6 previousAttempts])
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              v28 = v10;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
            }

LABEL_29:
            v13 = [v6 asset];
            v15 = [v13 localIdentifier];
            [v22 removeProcessingStatusForLocalIdentifier:v15 taskID:12];
            goto LABEL_30;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v28 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
          }

          v12 = [v6 previousAttempts];
          v13 = [v6 asset];
          v14 = [v6 previousStatus];
          v15 = [v6 lastAttemptDate];
          [v22 setAttempts:v12 asset:v13 taskID:12 status:v14 lastAttemptDate:v15];
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v28 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
          }

          [v6 status];
          v16 = MADProcessingStatusForOSStatus();
          v17 = [v6 asset];
          v18 = [v6 currentAttemptDate];
          v13 = [v17 mad_nextAttemptDateForStatus:v16 currentAttemptDate:v18 attemptCount:{objc_msgSend(v6, "previousAttempts") + 1}];

          v15 = [v6 asset];
          v19 = [v15 localIdentifier];
          [v22 updateProcessingStatus:v16 nextAttemptDate:v13 localIdentifier:v19 taskID:12];
        }

LABEL_30:

        objc_autoreleasePoolPop(v7);
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v3);
  }
}

void sub_100139DB0(uint64_t a1)
{
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = *(*(a1 + 32) + 56);
  v2 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v2)
  {
    v41 = *v43;
    type = VCPLogToOSLogType[4];
    *&v3 = 138412802;
    v35 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v43 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v42 + 1) + 8 * v4);
        v6 = objc_autoreleasePoolPush();
        if (![v5 status])
        {
          v7 = [v5 asset];
          v8 = [PHAssetChangeRequest changeRequestForAsset:v7];

          if (([v5 analysisTypes] & 2) != 0 && !objc_msgSend(v5, "visualSearchStatus"))
          {
            v21 = [v5 result];
            v22 = [v5 version];
            v23 = [v5 asset];
            v24 = [v23 adjustmentVersion];
            [v8 setVisualSearchData:v21 algorithmVersion:v22 adjustmentVersion:v24];

            v9 = 1;
          }

          else
          {
            v9 = 0;
          }

          if (([v5 analysisTypes] & 4) == 0 || objc_msgSend(v5, "stickerStatus") || objc_msgSend(v5, "stickerAlgorithmVersion") == -1)
          {
            if ((v9 & 1) == 0)
            {
              v10 = 0;
              goto LABEL_14;
            }
          }

          else
          {
            [v5 stickerScore];
            v26 = v25;
            v27 = [v5 stickerAlgorithmVersion];
            LODWORD(v28) = v26;
            [v8 setStickerConfidenceScore:v27 stickerAlgorithmVersion:v28];
            if (v9)
            {
              goto LABEL_21;
            }

            v10 = 1;
LABEL_14:
            v1 = [v5 asset];
            if ([v1 vcp_needsVisualSearchProcessing])
            {
              v11 = v1;
              goto LABEL_39;
            }

            if (v10)
            {

LABEL_21:
              v14 = [v5 asset];
              v15 = [v14 mad_isEligibleForComputeSync];

              if (v15)
              {
                v16 = [v5 asset];
                v11 = [v16 mad_refetchAsset];

                if (v11 || ([v5 asset], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v17 = [v11 mad_analysisStageAfterCompletingAnalysis:12];
                  v18 = 0;
                }

                else
                {
                  v33 = [v5 asset];
                  v17 = [v33 mad_analysisStageAfterCompletingAnalysis:12];

                  v11 = 0;
                  v18 = 1;
                }

                [v8 setLocalAnalysisStage:v17];
                v19 = v11;
                if (v18)
                {
                  v39 = [v5 asset];
                  v19 = v39;
                }

                v20 = [MADComputeSyncPayloadResults payloadDataForAsset:v19 targetStage:v17 embeddingResults:0 fullAnalysisResults:0];
                if (v18)
                {
                }

                if (v20)
                {
                  [v8 setComputeSyncMediaAnalysisPayload:v20];
                }

                else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
                {
                  v37 = [v11 localIdentifier];
                  v36 = [v11 mediaAnalysisProperties];
                  v29 = [v36 localAnalysisStage];
                  *buf = v35;
                  v47 = v37;
                  v48 = 1024;
                  v49 = v17;
                  v50 = 1024;
                  v51 = v29;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[VisualSearch][%@] No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
                }

LABEL_39:
              }

LABEL_40:
              if ([v5 pecVersion] >= 1)
              {
                v30 = [v5 pecVersion];
                v31 = [v5 asset];
                v32 = [v31 adjustmentVersion];
                [v8 setSceneClassifications:0 ofType:5 version:v30 timestamp:v32];
              }

              goto LABEL_43;
            }
          }

          v12 = [v5 asset];
          v13 = [v12 vcp_needsStickerGatingProcessing];

          if ((v9 & 1) == 0)
          {
          }

          if ((v13 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_40;
        }

LABEL_43:
        objc_autoreleasePoolPop(v6);
        v4 = v4 + 1;
      }

      while (v2 != v4);
      v34 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
      v2 = v34;
    }

    while (v34);
  }
}

void sub_10013A390(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_100140A38(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_100140A9C(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  [v4 setDataStoreValue:v3 forKey:@"VectorDatabaseDeepSyncTimestamp"];
}

void MADBMSendDomainSpecificAssetCounts(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v48 = [BMPerBatchDomainSpecificAssetCounts alloc];
  v63 = [NSNumber numberWithUnsignedInteger:a1];
  v64 = [NSNumber numberWithUnsignedInteger:a2];
  v44 = [v5 objectForKeyedSubscript:kVIDomainArt];
  v62 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v44 integerValue]);
  v43 = [v5 objectForKeyedSubscript:kVIDomainNature];
  v61 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v43 integerValue]);
  v42 = [v5 objectForKeyedSubscript:kVIDomainAnimals];
  v60 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v42 integerValue]);
  v41 = [v5 objectForKeyedSubscript:kVIDomainBirds];
  v58 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v41 integerValue]);
  v40 = [v5 objectForKeyedSubscript:kVIDomainInsects];
  v59 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v40 integerValue]);
  v39 = [v5 objectForKeyedSubscript:kVIDomainReptiles];
  v57 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v39 integerValue]);
  v38 = [v5 objectForKeyedSubscript:kVIDomainMammals];
  v56 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v38 integerValue]);
  v37 = [v5 objectForKeyedSubscript:kVIDomainLandmark];
  v55 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v37 integerValue]);
  v36 = [v5 objectForKeyedSubscript:kVIDomainNaturalLandmark];
  v54 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v36 integerValue]);
  v35 = [v5 objectForKeyedSubscript:kVIDomainMedia];
  v53 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v35 integerValue]);
  v34 = [v5 objectForKeyedSubscript:kVIDomainBook];
  v52 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v34 integerValue]);
  v33 = [v5 objectForKeyedSubscript:kVIDomainAlbum];
  v50 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v33 integerValue]);
  v32 = [v5 objectForKeyedSubscript:kVIDomainCats];
  v47 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v32 integerValue]);
  v31 = [v5 objectForKeyedSubscript:kVIDomainDogs];
  v51 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 integerValue]);
  v30 = [v5 objectForKeyedSubscript:kVIDomainApparel];
  v46 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v30 integerValue]);
  v29 = [v5 objectForKeyedSubscript:kVIDomainFood];
  v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v29 integerValue]);
  v28 = [v5 objectForKeyedSubscript:kVIDomainStorefront];
  v45 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v28 integerValue]);
  v27 = [v5 objectForKeyedSubscript:kVIDomainSignSymbol];
  v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v27 integerValue]);
  v26 = [v5 objectForKeyedSubscript:kVIDomainLaundryCareSymbol];
  v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v26 integerValue]);
  v25 = [v5 objectForKeyedSubscript:kVIDomainAutoSymbol];
  v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v25 integerValue]);
  v23 = [v5 objectForKeyedSubscript:kVIDomainBrandLogoSymbol];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v23 integerValue]);
  v21 = [v5 objectForKeyedSubscript:kVIDomainObject2D];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 integerValue]);
  v19 = [v5 objectForKeyedSubscript:kVIDomainBarcodeDetection];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 integerValue]);
  v9 = [v5 objectForKeyedSubscript:kVIDomainSculpture];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 integerValue]);
  v11 = [v5 objectForKeyedSubscript:kVIDomainSkyline];

  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 integerValue]);
  v49 = [v48 initWithParsedAssetCount:v63 anyDomainAssetCount:v64 artAssetCount:v62 natureAssetCount:v61 animalsAssetCount:v60 birdsAssetCount:v58 insectsAssetCount:v59 reptilesAssetCount:v57 mammalsAssetCount:v56 landmarkAssetCount:v55 naturalLandmarkAssetCount:v54 mediaAssetCount:v53 bookAssetCount:v52 albumAssetCount:v50 catsAssetCount:v47 dogsAssetCount:v51 apparelAssetCount:v46 foodAssetCount:v24 storefrontAssetCount:v45 signSymbolAssetCount:v22 laundryCareSymbolAssetCount:v20 autoSymbolAssetCount:v18 brandLogoSymbolAssetCount:v6 object2DAssetCount:v7 barcodeDetectionAssetCount:v8 sculptureAssetCount:v10 skylineAssetCount:v12];

  v13 = BiomeLibrary();
  v14 = [v13 MediaAnalysis];
  v15 = [v14 VisualSearch];
  v16 = [v15 Processing];

  v17 = [v16 source];
  [v17 sendEvent:v49];
}

void MADBMSendPECProcessedCounts(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v101 = [BMPECProcessed alloc];
  v111 = kVIDomainArt;
  v83 = [v4 objectForKeyedSubscript:?];
  v136 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v83 integerValue]);
  v5 = kVIDomainNature;
  v82 = [v4 objectForKeyedSubscript:kVIDomainNature];
  v137 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v82 integerValue]);
  v6 = kVIDomainAnimals;
  v81 = [v4 objectForKeyedSubscript:kVIDomainAnimals];
  v134 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v81 integerValue]);
  v7 = kVIDomainBirds;
  v80 = [v4 objectForKeyedSubscript:kVIDomainBirds];
  v135 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v80 integerValue]);
  v8 = kVIDomainInsects;
  v79 = [v4 objectForKeyedSubscript:kVIDomainInsects];
  v131 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v79 integerValue]);
  v106 = kVIDomainReptiles;
  v78 = [v4 objectForKeyedSubscript:?];
  v133 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v78 integerValue]);
  v103 = kVIDomainMammals;
  v77 = [v4 objectForKeyedSubscript:?];
  v132 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v77 integerValue]);
  v99 = kVIDomainLandmark;
  v76 = [v4 objectForKeyedSubscript:?];
  v129 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v76 integerValue]);
  v97 = kVIDomainNaturalLandmark;
  v75 = [v4 objectForKeyedSubscript:?];
  v130 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v75 integerValue]);
  v95 = kVIDomainMedia;
  v74 = [v4 objectForKeyedSubscript:?];
  v127 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v74 integerValue]);
  v93 = kVIDomainBook;
  v73 = [v4 objectForKeyedSubscript:?];
  v128 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v73 integerValue]);
  v90 = kVIDomainAlbum;
  v72 = [v4 objectForKeyedSubscript:?];
  v125 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v72 integerValue]);
  v88 = kVIDomainCats;
  v71 = [v4 objectForKeyedSubscript:?];
  v126 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v71 integerValue]);
  v86 = kVIDomainDogs;
  v70 = [v4 objectForKeyedSubscript:?];
  v123 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v70 integerValue]);
  v84 = kVIDomainApparel;
  v69 = [v4 objectForKeyedSubscript:?];
  v124 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v69 integerValue]);
  v48 = kVIDomainFood;
  v68 = [v4 objectForKeyedSubscript:?];
  v121 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v68 integerValue]);
  v46 = kVIDomainStorefront;
  v67 = [v4 objectForKeyedSubscript:?];
  v122 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v67 integerValue]);
  v44 = kVIDomainSignSymbol;
  v66 = [v4 objectForKeyedSubscript:?];
  v119 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v66 integerValue]);
  v42 = kVIDomainLaundryCareSymbol;
  v65 = [v4 objectForKeyedSubscript:?];
  v120 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v65 integerValue]);
  v64 = [v4 objectForKeyedSubscript:kVIDomainAutoSymbol];
  v117 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v64 integerValue]);
  v9 = kVIDomainBrandLogoSymbol;
  v63 = [v4 objectForKeyedSubscript:kVIDomainBrandLogoSymbol];
  v118 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v63 integerValue]);
  v39 = kVIDomainObject2D;
  v62 = [v4 objectForKeyedSubscript:?];
  v115 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v62 integerValue]);
  v38 = kVIDomainBarcodeDetection;
  v61 = [v4 objectForKeyedSubscript:?];
  v116 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v61 integerValue]);
  v37 = kVIDomainSculpture;
  v60 = [v4 objectForKeyedSubscript:?];
  v113 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v60 integerValue]);
  v36 = kVIDomainSkyline;
  v59 = [v4 objectForKeyedSubscript:?];

  v114 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v59 integerValue]);
  v58 = [v3 objectForKeyedSubscript:v111];
  v110 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v58 integerValue]);
  v57 = [v3 objectForKeyedSubscript:v5];
  v112 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 integerValue]);
  v56 = [v3 objectForKeyedSubscript:v6];
  v108 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v56 integerValue]);
  v55 = [v3 objectForKeyedSubscript:v7];
  v109 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v55 integerValue]);
  v54 = [v3 objectForKeyedSubscript:v8];
  v105 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v54 integerValue]);
  v53 = [v3 objectForKeyedSubscript:v106];
  v107 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v53 integerValue]);
  v52 = [v3 objectForKeyedSubscript:v103];
  v104 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v52 integerValue]);
  v51 = [v3 objectForKeyedSubscript:v99];
  v100 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v51 integerValue]);
  v50 = [v3 objectForKeyedSubscript:v97];
  v98 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v50 integerValue]);
  v41 = [v3 objectForKeyedSubscript:v95];
  v96 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v41 integerValue]);
  v35 = [v3 objectForKeyedSubscript:v93];
  v92 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v35 integerValue]);
  v34 = [v3 objectForKeyedSubscript:v90];
  v94 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v34 integerValue]);
  v33 = [v3 objectForKeyedSubscript:v88];
  v89 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v33 integerValue]);
  v32 = [v3 objectForKeyedSubscript:v86];
  v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v32 integerValue]);
  v31 = [v3 objectForKeyedSubscript:v84];
  v91 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 integerValue]);
  v49 = [v3 objectForKeyedSubscript:v48];
  v87 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v49 integerValue]);
  v47 = [v3 objectForKeyedSubscript:v46];
  v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v47 integerValue]);
  v45 = [v3 objectForKeyedSubscript:v44];
  v85 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v45 integerValue]);
  v43 = [v3 objectForKeyedSubscript:v42];
  v26 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v43 integerValue]);
  v29 = [v3 objectForKeyedSubscript:v9];
  v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v29 integerValue]);
  v28 = [v3 objectForKeyedSubscript:v9];
  v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v28 integerValue]);
  v40 = [v3 objectForKeyedSubscript:v39];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v40 integerValue]);
  v11 = [v3 objectForKeyedSubscript:v38];
  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 integerValue]);
  v13 = [v3 objectForKeyedSubscript:v37];
  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 integerValue]);
  v15 = [v3 objectForKeyedSubscript:v36];

  v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 integerValue]);
  v102 = [v101 initWithArtAssetProcessedCount:v136 natureAssetProcessedCount:v137 animalsAssetProcessedCount:v134 birdsAssetProcessedCount:v135 insectsAssetProcessedCount:v131 reptilesAssetProcessedCount:v133 mammalsAssetProcessedCount:v132 landmarkAssetProcessedCount:v129 naturalLandmarkProcessedAssetCount:v130 mediaAssetProcessedCount:v127 bookAssetProcessedCount:v128 albumAssetProcessedCount:v125 catsAssetProcessedCount:v126 dogsAssetProcessedCount:v123 apparelAssetProcessedCount:v124 foodAssetProcessedCount:v121 storefrontAssetProcessedCount:v122 signSymbolAssetProcessedCount:v119 laundryCareSymbolAssetProcessedCount:v120 autoSymbolAssetProcessedCount:v117 brandLogoSymbolAssetProcessedCount:v118 object2DAssetProcessedCount:v115 barcodeDetectionAssetProcessedCount:v116 sculptureAssetProcessedCount:v113 skylineAssetProcessedCount:v114 artAssetSuccessesCount:v110 natureAssetSuccessesCount:v112 animalsAssetSuccessesCount:v108 birdsAssetSuccessesCount:v109 insectsAssetSuccessesCount:v105 reptilesAssetSuccessesCount:v107 mammalsAssetSuccessesCount:v104 landmarkAssetSuccessesCount:v100 naturalLandmarkSuccessesAssetCount:v98 mediaAssetSuccessesCount:v96 bookAssetSuccessesCount:v92 albumAssetSuccessesCount:v94 catsAssetSuccessesCount:v89 dogsAssetSuccessesCount:v30 apparelAssetSuccessesCount:v91 foodAssetSuccessesCount:v87 storefrontAssetSuccessesCount:v27 signSymbolAssetSuccessesCount:v85 laundryCareSymbolAssetSuccessesCount:v26 autoSymbolAssetSuccessesCount:v25 brandLogoSymbolAssetSuccessesCount:v24 object2DAssetSuccessesCount:v10 barcodeDetectionAssetSuccessesCount:v12 sculptureAssetSuccessesCount:v14 skylineAssetSuccessesCount:v16];

  v17 = +[MADStateHandler sharedStateHandler];
  [v17 enterKnownTimeoutRisk:4];

  v18 = BiomeLibrary();
  v19 = [v18 MediaAnalysis];
  v20 = [v19 PEC];
  v21 = [v20 Processing];

  v22 = [v21 source];
  [v22 sendEvent:v102];
  v23 = +[MADStateHandler sharedStateHandler];
  [v23 exitKnownTimeoutRisk];
}

id _sceneThresholdsForVideoDataCollection()
{
  if (qword_1002B8450 != -1)
  {
    sub_100146F60();
  }

  v1 = qword_1002B8448;

  return v1;
}

void sub_1001423CC(id a1)
{
  +[NSMutableDictionary dictionary];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100142484;
  v1 = v4[3] = &unk_100287050;
  v5 = v1;
  [&off_100296790 enumerateKeysAndObjectsUsingBlock:v4];
  v2 = qword_1002B8448;
  qword_1002B8448 = v1;
  v3 = v1;
}

void sub_100142484(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = +[NSMutableDictionary dictionary];
  [v6 setObject:v8 forKey:v5];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014257C;
  v10[3] = &unk_100287028;
  v11 = *(a1 + 32);
  v12 = v5;
  v9 = v5;
  [v7 enumerateObjectsUsingBlock:v10];
}

void sub_10014257C(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
  v4 = [v3 nodeForName:v11];

  v5 = 0.0;
  if (v4 && [v4 isIndexed])
  {
    [v4 highPrecisionThreshold];
    v5 = v6;
    [v4 highRecallThreshold];
    if (v5 >= v7)
    {
      v5 = v7;
    }

    [v4 searchThreshold];
    if (v5 >= v8)
    {
      v5 = v8;
    }
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v10 = [NSNumber numberWithDouble:v5];
  [v9 setObject:v10 forKey:v11];
}

void _MADBMSendPerLibraryData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, double a19, double a20, double a21, double a22, double a23, double a24, double a25, double a26, double a27, double a28, double a29)
{
  v59 = a1;
  v67 = [BMMediaAnalysisPerLibrary alloc];
  v79 = [NSNumber numberWithUnsignedInteger:a2];
  v78 = [NSNumber numberWithUnsignedInteger:a3];
  v76 = [NSNumber numberWithUnsignedInteger:a4];
  v73 = [NSNumber numberWithDouble:a8];
  v71 = [NSNumber numberWithUnsignedInteger:a5];
  v77 = [NSNumber numberWithUnsignedInteger:a6];
  v75 = [NSNumber numberWithUnsignedInteger:a7];
  v74 = [NSNumber numberWithDouble:a9];
  v56 = [NSNumber numberWithDouble:a10];
  v72 = [NSNumber numberWithDouble:a11];
  v70 = [NSNumber numberWithDouble:a12];
  v69 = [NSNumber numberWithDouble:a13];
  v66 = [NSNumber numberWithDouble:a14];
  v64 = [NSNumber numberWithDouble:a15];
  v62 = [NSNumber numberWithDouble:a16];
  v54 = [NSNumber numberWithDouble:a17];
  v61 = [NSNumber numberWithDouble:a18];
  v60 = [NSNumber numberWithDouble:a19];
  v55 = [NSNumber numberWithDouble:a20];
  v57 = [NSNumber numberWithDouble:a21];
  v42 = [NSNumber numberWithDouble:a22];
  v58 = [NSNumber numberWithDouble:a23];
  v43 = [NSNumber numberWithDouble:a24];
  v44 = [NSNumber numberWithDouble:a25];
  v45 = [NSNumber numberWithDouble:a26];
  v46 = [NSNumber numberWithDouble:a27];
  v47 = [NSNumber numberWithDouble:a28];
  v48 = [NSNumber numberWithDouble:a29];
  v68 = [v67 initWithLibraryType:v59 imageAssetCount:v79 livePhotoAssetCount:v78 movieAssetCount:v76 movieAssetDurations:v73 editedMovieCount:v71 sharedMovieCount:v77 favoritedMovieCount:v75 spatialMoviePercentage:v74 cinematicMoviePercentage:v56 slomoMoviePercentage:v72 timelapsePercentage:v70 portraitModePercentage:v69 landscapeModePercentage:v66 withHighlightsPercentage:v64 withPeoplePercentage:v62 withPetsPercentage:v54 withNatureOrNaturalLandmarksPercentage:v61 withSkylinePercentage:v60 wthLandmarksPercentage:v55 withActionPercentage:v57 withHighMotionPercentage:v42 highlightsWithPeoplePercentage:v58 highlightsWithPetsPercentage:v43 highlightsWithNatureOrNaturalLandmarksPercentage:v44 highlightsWithSkylinePercentage:v45 highlightsWithLandmarksPercentage:v46 highlightsWithActionPercentage:v47 highlightsWithHighMotionPercentage:v48];

  v49 = BiomeLibrary();
  v50 = [v49 MediaAnalysis];
  v51 = [v50 VideoAnalysis];
  v52 = [v51 PerLibrary];

  v53 = [v52 source];
  [v53 sendEvent:v68];
}

void _sendPerAssetData(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, double a9, double a10, double a11, unsigned __int8 a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v51 = a3;
  v50 = a2;
  v49 = a1;
  v48 = [BMMediaAnalysisPerAsset alloc];
  v60 = [NSNumber numberWithDouble:a9];
  v47 = [NSNumber numberWithUnsignedInteger:a4];
  v46 = [NSNumber numberWithDouble:a10];
  v59 = [NSNumber numberWithUnsignedInteger:a5];
  v58 = [NSNumber numberWithUnsignedInteger:a6];
  v56 = [NSNumber numberWithBool:a7];
  v55 = [NSNumber numberWithBool:a8];
  v53 = [NSNumber numberWithBool:a12];
  v52 = [NSNumber numberWithBool:a13];
  v42 = [NSNumber numberWithBool:a14];
  v43 = [NSNumber numberWithBool:a15];
  v41 = [NSNumber numberWithBool:a16];
  v44 = [NSNumber numberWithBool:a17];
  v31 = [NSNumber numberWithBool:a18];
  v45 = [NSNumber numberWithDouble:a11];
  v32 = [NSNumber numberWithUnsignedInteger:a19];
  v33 = [NSNumber numberWithUnsignedInteger:a20];
  v34 = [NSNumber numberWithUnsignedInteger:a21];
  v35 = [NSNumber numberWithUnsignedInteger:a22];
  v57 = [v48 initWithContentType:v49 shootingCategory:v50 shootingMode:v51 duration:v60 highlightCount:v47 highlightDuration:v46 temporalFaceCount:v59 temporalSceneCount:v58 containNamedPerson:v56 containNamedPet:v55 containNatureOrNaturalLandmarks:v53 containSkyline:v52 containLandmarks:v42 containAction:v43 containHighMotion:v41 containAudioTypes:v44 atFavoritedLocation:v31 durationOriginal:v45 highlightCountOriginal:v32 highlightDurationOriginal:v33 temporalFaceCountOriginal:v34 temporalSceneCountOriginal:v35];

  v36 = BiomeLibrary();
  v37 = [v36 MediaAnalysis];
  v38 = [v37 VideoAnalysis];
  v39 = [v38 PerAsset];

  v40 = [v39 source];
  [v40 sendEvent:v57];
}

uint64_t _reportPerLibraryDataToBiome(void *a1, void *a2)
{
  v132 = a1;
  v3 = a2;
  v4 = v3;
  if (!v3 || ((v3[2])(v3) & 1) == 0)
  {
    v183 = v4;
    v6 = _sceneThresholdsForVideoDataCollection();
    v239 = 0;
    v240 = &v239;
    v241 = 0x2020000000;
    v242 = 0;
    v235 = 0;
    v236 = &v235;
    v237 = 0x2020000000;
    v238 = 0;
    v231 = 0;
    v232 = &v231;
    v233 = 0x2020000000;
    v234 = 0;
    v227 = 0;
    v228 = &v227;
    v229 = 0x2020000000;
    v230 = 0;
    v223 = 0;
    v224 = &v223;
    v225 = 0x2020000000;
    v226 = 0;
    v219 = 0;
    v220 = &v219;
    v221 = 0x2020000000;
    v222 = 0;
    v215 = 0;
    v216 = &v215;
    v217 = 0x2020000000;
    v218 = 0;
    v214[0] = _NSConcreteStackBlock;
    v214[1] = 3221225472;
    v214[2] = sub_100144398;
    v214[3] = &unk_100287078;
    v214[4] = &v239;
    v214[5] = &v235;
    v214[6] = &v231;
    v214[7] = &v227;
    v214[8] = &v223;
    v214[9] = &v219;
    v214[10] = &v215;
    v137 = objc_retainBlock(v214);
    v207[0] = _NSConcreteStackBlock;
    v207[1] = 3221225472;
    v207[2] = sub_1001443F0;
    v207[3] = &unk_100287118;
    v120 = v6;
    v208 = v120;
    v209 = &v239;
    v210 = &v235;
    v211 = &v231;
    v212 = &v223;
    v213 = &v227;
    v138 = objc_retainBlock(v207);
    LOWORD(v117) = 0;
    v122 = [[PHMediaProcessingAlgorithmVersionProvider alloc] initWithSceneAnalysisVersion:0 faceAnalysisVersion:0 characterRecognitionAlgorithmVersion:0 visualSearchAlgorithmVersion:0 stickerConfidenceAlgorithmVersion:0 vaAnalysisVersion:0 vaLocationAnalysisVersion:v117 mediaAnalysisVersion:0 mediaAnalysisImageVersion:0 captionGenerationVersion:? imageEmbeddingVersion:? videoEmbeddingVersion:?];
    v7 = v183;
    v206 = 0;
    v124 = [v132 countOfAssetsByMediaTypeForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID() processed:1 algorithmVersion:v122 exactVersionMatch:0 error:&v206];
    v8 = v206;
    if (v124)
    {
      v9 = [v124 objectForKeyedSubscript:PHMediaProcessingAssetCountStillImageKey];
      v119 = [v9 unsignedLongLongValue];

      v10 = [v124 objectForKeyedSubscript:PHMediaProcessingAssetCountLivePhotoKey];
      v118 = [v10 unsignedLongLongValue];
    }

    else
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        v118 = 0;
        v119 = 0;
        if (!v183)
        {
          goto LABEL_13;
        }

LABEL_7:
        if ((v7[2])(v7))
        {
          v5 = 4294967168;
LABEL_86:

          _Block_object_dispose(&v215, 8);
          _Block_object_dispose(&v219, 8);
          _Block_object_dispose(&v223, 8);
          _Block_object_dispose(&v227, 8);
          _Block_object_dispose(&v231, 8);
          _Block_object_dispose(&v235, 8);
          _Block_object_dispose(&v239, 8);

          v4 = v183;
          goto LABEL_87;
        }

LABEL_13:
        v205 = v8;
        v121 = [v132 fetchOptionsForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID() priority:4 algorithmVersion:0 sceneConfidenceThreshold:0 processed:0 exactVersionMatch:&v205 error:0.0];
        v14 = v205;

        [PHAsset fetchAssetsWithOptions:v121];
        v15 = v183;
        v203 = 0u;
        v204 = 0u;
        v201 = 0u;
        obj = v202 = 0u;
        v16 = [obj countByEnumeratingWithState:&v201 objects:v251 count:16];
        if (v16)
        {
          v146 = 0;
          v147 = 0;
          v130 = 0;
          v131 = 0;
          v128 = 0;
          v129 = 0;
          v127 = 0;
          v151 = 0;
          v152 = 0;
          v142 = 0;
          v143 = 0;
          v140 = 0;
          v141 = 0;
          v139 = 0;
          *&type[8] = 0;
          v175 = 0;
          v177 = 0;
          v173 = 0;
          v171 = 0;
          v169 = 0;
          v182 = 0;
          v181 = 0;
          v180 = 0;
          v179 = 0;
          v156 = *v202;
          v154 = VCPMediaAnalyzerOption_MetadataWithHighlight;
          v155 = VCPMediaAnalyzerOption_AllowOnDemand;
          v136 = MediaAnalysisResultsKey;
          v149 = MediaAnalysisClassificationResultsKey;
          v145 = MediaAnalysisMovieHighlightResultsKey;
          v123 = MediaAnalysisResultAttributesKey;
          v17 = 0.0;
          v126 = MediaAnalysisResultStartKey;
          v125 = MediaAnalysisResultDurationKey;
          v135 = MediaAnalysisCameraMotionResultsKey;
          *type = VCPLogToOSLogType[6];
          v134 = MediaAnalysisFineSubjectMotionResultsKey;
          while (2)
          {
            v18 = 0;
            v157 = v16;
            do
            {
              if (*v202 != v156)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v201 + 1) + 8 * v18);
              context = objc_autoreleasePoolPush();
              if (v183 && (v183[2]() & 1) != 0)
              {
                v20 = 1;
              }

              else
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                v250 = 0;
                [v19 duration];
                v22 = v21;
                v167 = [v19 hasAdjustments];
                v165 = [v19 mad_isShared];
                v163 = [v19 isFavorite];
                v161 = [v19 isMediaSubtype:0x200000];
                v160 = [v19 vcp_isVideoSlowmo];
                v159 = [v19 vcp_isVideoTimelapse];
                v23 = [v19 pixelHeight];
                v24 = [v19 pixelWidth];
                v25 = v177;
                if (v23 >= v24)
                {
                  v25 = v177 + 1;
                }

                v177 = v25;
                v26 = [v19 pixelHeight];
                v27 = [v19 pixelWidth];
                v28 = v175;
                if (v26 < v27)
                {
                  v28 = v175 + 1;
                }

                v175 = v28;
                v188 = +[VCPMediaAnalyzer sharedMediaAnalyzer];
                v248 = v19;
                v29 = [NSArray arrayWithObjects:&v248 count:1];
                v246[0] = v155;
                v246[1] = v154;
                v247[0] = &__kCFBooleanFalse;
                v247[1] = &__kCFBooleanTrue;
                v30 = [NSDictionary dictionaryWithObjects:v247 forKeys:v246 count:2];
                v200 = v14;
                v31 = [v188 requestAnalysis:0xFFFFFFFFFFFFFLL forAssets:v29 withOptions:v30 andProgressHandler:0 andError:&v200];
                v158 = v200;

                if (v31 && [v31 count])
                {
                  v148 = [v31 objectAtIndexedSubscript:0];
                  v184 = [v148 objectForKeyedSubscript:v136];
                  v32 = [v184 objectForKeyedSubscript:v149];
                  v33 = [v32 count] == 0;

                  if (!v33)
                  {
                    v34 = [v184 objectForKeyedSubscript:v149];
                    v198[0] = _NSConcreteStackBlock;
                    v198[1] = 3221225472;
                    v198[2] = sub_1001447FC;
                    v198[3] = &unk_100287140;
                    v199 = v138;
                    [v34 enumerateObjectsUsingBlock:v198];

                    v35 = v240[3];
                    v36 = v236[3];
                    v37 = v232[3];
                    v38 = v228[3];
                    v39 = v224[3];
                    v40 = v220[3];
                    v41 = v216[3];
                    (v137[2])();
                    if (v41)
                    {
                      v42 = v152 + 1;
                    }

                    else
                    {
                      v42 = v152;
                    }

                    v43 = v151;
                    if (v40)
                    {
                      v43 = v151 + 1;
                    }

                    v151 = v43;
                    v152 = v42;
                    if (v39)
                    {
                      v44 = v143 + 1;
                    }

                    else
                    {
                      v44 = v143;
                    }

                    v45 = v142;
                    if (v38)
                    {
                      v45 = v142 + 1;
                    }

                    v142 = v45;
                    v143 = v44;
                    if (v37)
                    {
                      v46 = v141 + 1;
                    }

                    else
                    {
                      v46 = v141;
                    }

                    v47 = v140;
                    if (v36)
                    {
                      v47 = v140 + 1;
                    }

                    v140 = v47;
                    v141 = v46;
                    v48 = v139;
                    if (v35)
                    {
                      v48 = v139 + 1;
                    }

                    v139 = v48;
                  }

                  v49 = [v184 objectForKeyedSubscript:v145];
                  v50 = [v49 count] == 0;

                  if (v50)
                  {
                    v63 = 0.0;
                    v83 = 0.0;
                  }

                  else
                  {
                    v153 = [v184 objectForKeyedSubscript:v145];
                    if ([v153 count])
                    {
                      v51 = [v153 objectAtIndexedSubscript:0];
                      v52 = [v51 objectForKeyedSubscript:v123];
                      v144 = [v52 objectForKeyedSubscript:v149];

                      if ([v144 count])
                      {
                        v53 = [v153 objectAtIndexedSubscript:0];
                        v54 = [v53 objectForKeyedSubscript:v126];
                        v55 = [v54 objectForKeyedSubscript:@"value"];
                        [v55 doubleValue];
                        v57 = v56;

                        v58 = [v153 objectAtIndexedSubscript:0];
                        v59 = [v58 objectForKeyedSubscript:v126];
                        v60 = [v59 objectForKeyedSubscript:@"timescale"];
                        [v60 doubleValue];
                        *(*&buf[8] + 24) = v61;

                        v62 = *(*&buf[8] + 24);
                        if (v62 == 0.0)
                        {
                          v63 = v57;
                        }

                        else
                        {
                          v63 = v57 / v62;
                        }

                        v64 = [v153 objectAtIndexedSubscript:0];
                        v65 = [v64 objectForKeyedSubscript:v125];
                        v66 = [v65 objectForKeyedSubscript:@"value"];
                        [v66 doubleValue];
                        v68 = v67;

                        v69 = [v153 objectAtIndexedSubscript:0];
                        v70 = [v69 objectForKeyedSubscript:v125];
                        v71 = [v70 objectForKeyedSubscript:@"timescale"];
                        [v71 doubleValue];
                        *(*&buf[8] + 24) = v72;

                        v73 = *(*&buf[8] + 24);
                        if (v73 != 0.0)
                        {
                          v68 = v68 / v73;
                        }

                        v74 = +[NSMutableDictionary dictionary];
                        v196[0] = _NSConcreteStackBlock;
                        v196[1] = 3221225472;
                        v196[2] = sub_100144868;
                        v196[3] = &unk_100287168;
                        v75 = v74;
                        v197 = v75;
                        [v144 enumerateObjectsUsingBlock:v196];
                        (v138[2])(v138, v75);
                        v76 = v240[3];
                        v77 = v236[3];
                        v78 = v232[3];
                        v79 = v228[3];
                        v80 = v224[3];
                        v81 = v220[3];
                        v82 = v216[3];
                        (v137[2])();

                        v147 += v82;
                        v146 += v81;
                        v83 = v63 + v68;
                        v131 += v80;
                        v130 += v79;
                        v129 += v78;
                        v128 += v77;
                        v127 += v76;
                      }

                      else
                      {
                        v63 = 0.0;
                        v83 = 0.0;
                      }

                      ++*&type[4];
                    }

                    else
                    {
                      v63 = 0.0;
                      v83 = 0.0;
                    }
                  }

                  v84 = [v184 objectForKeyedSubscript:v135];
                  v85 = v84;
                  if (v84)
                  {
                    *&v243 = 0;
                    *(&v243 + 1) = &v243;
                    v244 = 0x2020000000;
                    v245 = 0;
                    v192 = 0;
                    v193 = &v192;
                    v194 = 0x2020000000;
                    v195 = 0;
                    v191[0] = _NSConcreteStackBlock;
                    v191[1] = 3221225472;
                    v191[2] = sub_100144874;
                    v191[3] = &unk_100287190;
                    *&v191[7] = v63;
                    *&v191[8] = v83;
                    v191[4] = buf;
                    v191[5] = &v243;
                    v191[6] = &v192;
                    [v84 enumerateObjectsUsingBlock:v191];
                    v152 += *(*(&v243 + 1) + 24);
                    v147 += *(v193 + 24);
                    _Block_object_dispose(&v192, 8);
                    _Block_object_dispose(&v243, 8);
                  }

                  v86 = [v184 objectForKeyedSubscript:v134];
                  v87 = v86;
                  if (v86)
                  {
                    *&v243 = 0;
                    *(&v243 + 1) = &v243;
                    v244 = 0x2020000000;
                    v245 = 0;
                    v192 = 0;
                    v193 = &v192;
                    v194 = 0x2020000000;
                    v195 = 0;
                    v190[0] = _NSConcreteStackBlock;
                    v190[1] = 3221225472;
                    v190[2] = sub_100144AAC;
                    v190[3] = &unk_100287190;
                    *&v190[7] = v63;
                    *&v190[8] = v83;
                    v190[4] = buf;
                    v190[5] = &v243;
                    v190[6] = &v192;
                    [v86 enumerateObjectsUsingBlock:v190];
                    v151 += *(*(&v243 + 1) + 24);
                    v146 += *(v193 + 24);
                    _Block_object_dispose(&v192, 8);
                    _Block_object_dispose(&v243, 8);
                  }

                  v20 = 0;
                }

                else
                {
                  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type[0]))
                  {
                    LODWORD(v243) = 138412290;
                    *(&v243 + 4) = @"[Biome][PerLibraryReport]";
                    _os_log_impl(&_mh_execute_header, &_os_log_default, type[0], "%@ Failed to call MediaAnalyzer on asset, skipping", &v243, 0xCu);
                  }

                  v20 = 9;
                }

                ++v179;
                v17 = v17 + v22;
                v180 += v167;
                v181 += v165;
                v182 += v163;
                v169 += v161;
                v171 += v160;
                v173 += v159;
                _Block_object_dispose(buf, 8);
                v14 = v158;
              }

              objc_autoreleasePoolPop(context);
              if (v20 != 9 && v20)
              {

                goto LABEL_76;
              }

              v18 = v18 + 1;
            }

            while (v157 != v18);
            v16 = [obj countByEnumeratingWithState:&v201 objects:v251 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }

          v88 = v169 * 100.0;
          v89 = v171 * 100.0;
          v90 = v173 * 100.0;
          v91 = v177 * 100.0;
          v92 = v175 * 100.0;
          v93 = v139 * 100.0;
          v94 = v140 * 100.0;
          v162 = v141 * 100.0;
          v164 = v142 * 100.0;
          v166 = v143 * 100.0;
          v168 = v151 * 100.0;
          v170 = v152 * 100.0;
          v172 = v127 * 100.0;
          v174 = v128 * 100.0;
          v176 = v129 * 100.0;
          v178 = v130 * 100.0;
          v185 = v131 * 100.0;
          contexta = v146 * 100.0;
          v189 = v147 * 100.0;
          v15 = v183;
        }

        else
        {
          *&type[4] = 0;
          v182 = 0;
          v181 = 0;
          v180 = 0;
          v179 = 0;
          v189 = 0.0;
          contexta = 0.0;
          v185 = 0.0;
          v178 = 0.0;
          v176 = 0.0;
          v174 = 0.0;
          v172 = 0.0;
          v170 = 0.0;
          v168 = 0.0;
          v166 = 0.0;
          v164 = 0.0;
          v162 = 0.0;
          v94 = 0.0;
          v93 = 0.0;
          v92 = 0.0;
          v91 = 0.0;
          v90 = 0.0;
          v89 = 0.0;
          v88 = 0.0;
          v17 = 0.0;
        }

        if (v15 && (v183[2]() & 1) != 0)
        {
LABEL_76:
          v5 = 4294967168;
        }

        else
        {
          v95 = 0.0;
          v96 = 0.0;
          v97 = 0.0;
          v98 = 0.0;
          v99 = 0.0;
          v100 = 0.0;
          v101 = 0.0;
          v102 = 0.0;
          v103 = 0.0;
          v104 = 0.0;
          v105 = 0.0;
          v106 = 0.0;
          v107 = 0.0;
          v108 = 0.0;
          v109 = 0.0;
          if (v179)
          {
            v102 = 0.0 / v179;
            v103 = v88 / v179;
            v101 = v89 / v179;
            v104 = v90 / v179;
            v100 = v91 / v179;
            v105 = v92 / v179;
            v99 = *&type[4] * 100.0 / v179;
            v106 = v93 / v179;
            v98 = v94 / v179;
            v107 = v162 / v179;
            v97 = v164 / v179;
            v108 = v166 / v179;
            v96 = v168 / v179;
            v109 = v170 / v179;
          }

          v110 = 0.0;
          v111 = 0.0;
          v112 = 0.0;
          v113 = 0.0;
          v114 = 0.0;
          v115 = 0.0;
          if (*&type[4])
          {
            v112 = v172 / *&type[4];
            v111 = v174 / *&type[4];
            v113 = v176 / *&type[4];
            v110 = v178 / *&type[4];
            v114 = v185 / *&type[4];
            v95 = contexta / *&type[4];
            v115 = v189 / *&type[4];
          }

          _MADBMSendPerLibraryData(@"SystemPhotoLibrary", v119, v118, v179, v180, v181, v182, v17, v102, v103, v101, v104, v100, v105, v99, v106, v98, v107, v97, v108, v96, v109, v112, v111, v113, v110, v114, v95, v115);
          v5 = 0;
        }

        v8 = v14;
        goto LABEL_86;
      }

      v10 = &_os_log_default;
      v11 = &_os_log_default;
      v12 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        v13 = [v8 description];
        *buf = 138412546;
        *&buf[4] = @"[Biome][PerLibraryReport]";
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Failed to get total assets breakdown count from Photos (%@)", buf, 0x16u);

        v118 = 0;
        v119 = 0;
        v10 = &_os_log_default;
      }

      else
      {
        v118 = 0;
        v119 = 0;
      }
    }

    v7 = v183;
    if (!v183)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v5 = 4294967168;
LABEL_87:

  return v5;
}

void sub_1001442B4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x4B0], 8);
  _Block_object_dispose(&STACK[0x4D0], 8);
  _Block_object_dispose(&STACK[0x4F0], 8);
  _Block_object_dispose(&STACK[0x510], 8);
  _Block_object_dispose(&STACK[0x530], 8);
  _Block_object_dispose(&STACK[0x550], 8);
  _Block_object_dispose(&STACK[0x570], 8);
  _Unwind_Resume(a1);
}

void *sub_100144398(void *result)
{
  *(*(result[4] + 8) + 24) = 0;
  *(*(result[5] + 8) + 24) = 0;
  *(*(result[6] + 8) + 24) = 0;
  *(*(result[7] + 8) + 24) = 0;
  *(*(result[8] + 8) + 24) = 0;
  *(*(result[9] + 8) + 24) = 0;
  *(*(result[10] + 8) + 24) = 0;
  return result;
}

void sub_1001443F0(uint64_t a1, void *a2)
{
  v3 = a2;
  +[NSMutableDictionary dictionary];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100144524;
  v4 = v13[3] = &unk_1002870A0;
  v14 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v13];

  v5 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001445D4;
  v8[3] = &unk_1002870F0;
  v6 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = v6;
  v12 = *(a1 + 72);
  v9 = v4;
  v7 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
}

void sub_100144524(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
  v7 = [v5 longLongValue];

  v8 = [v6 mad_sceneNameFromExtendedSceneId:v7];

  if (v8)
  {
    [*(a1 + 32) setObject:v9 forKey:v8];
  }
}

void sub_1001445D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if ([v5 isEqualToString:@"people"])
  {
    v7 = *(a1 + 40);
LABEL_7:
    v13[3] = *(v7 + 8) + 24;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"pets"])
  {
    v7 = *(a1 + 48);
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"nature"])
  {
    v7 = *(a1 + 56);
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"landmarks"])
  {
    v8 = *(a1 + 64);
  }

  else
  {
    v8 = *(a1 + 72);
  }

  v13[3] = *(v8 + 8) + 24;
LABEL_8:
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100144758;
  v9[3] = &unk_1002870C8;
  v10 = *(a1 + 32);
  v11 = &v12;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  _Block_object_dispose(&v12, 8);
}

void sub_100144740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100144758(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:a2];
  [v9 doubleValue];
  v11 = v10;

  [v8 doubleValue];
  v13 = v12;

  if (v11 >= v13)
  {
    v14 = *(*(*(a1 + 40) + 8) + 24);
    ++*v14;
    *a4 = 1;
  }
}

void sub_1001447FC(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];
  (*(*(a1 + 32) + 16))();
}

void sub_100144874(uint64_t a1, void *a2)
{
  v3 = MediaAnalysisResultStartKey;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 objectForKeyedSubscript:@"value"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v4 objectForKeyedSubscript:v3];
  v10 = [v9 objectForKeyedSubscript:@"timescale"];
  [v10 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v11;

  v12 = *(*(*(a1 + 32) + 8) + 24);
  if (v12 == 0.0)
  {
    v13 = v8;
  }

  else
  {
    v13 = v8 / v12;
  }

  v14 = MediaAnalysisResultDurationKey;
  v15 = [v4 objectForKeyedSubscript:MediaAnalysisResultDurationKey];
  v16 = [v15 objectForKeyedSubscript:@"value"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v4 objectForKeyedSubscript:v14];
  v20 = [v19 objectForKeyedSubscript:@"timescale"];
  [v20 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v21;

  v22 = *(*(*(a1 + 32) + 8) + 24);
  if (v22 == 0.0)
  {
    v23 = v18;
  }

  else
  {
    v23 = v18 / v22;
  }

  v24 = v13 + v23;
  v25 = [v4 objectForKeyedSubscript:MediaAnalysisFlagsKey];

  v26 = [v25 unsignedLongLongValue];
  v27 = MediaAnalysisFlagsCameraAll;

  v28 = *(a1 + 56);
  v29 = v13 <= v28 && v24 >= *(a1 + 64) || v13 >= v28 && v13 < *(a1 + 64) || v24 > v28 && v24 <= *(a1 + 64);
  v30 = v26 & v27 & 0x10000;
  *(*(*(a1 + 40) + 8) + 24) |= BYTE2(v30);
  *(*(*(a1 + 48) + 8) + 24) |= v29 & BYTE2(v30);
}

void sub_100144AAC(uint64_t a1, void *a2)
{
  v3 = MediaAnalysisResultStartKey;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 objectForKeyedSubscript:@"value"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v4 objectForKeyedSubscript:v3];
  v10 = [v9 objectForKeyedSubscript:@"timescale"];
  [v10 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v11;

  v12 = *(*(*(a1 + 32) + 8) + 24);
  if (v12 == 0.0)
  {
    v13 = v8;
  }

  else
  {
    v13 = v8 / v12;
  }

  v14 = MediaAnalysisResultDurationKey;
  v15 = [v4 objectForKeyedSubscript:MediaAnalysisResultDurationKey];
  v16 = [v15 objectForKeyedSubscript:@"value"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v4 objectForKeyedSubscript:v14];
  v20 = [v19 objectForKeyedSubscript:@"timescale"];
  [v20 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v21;

  v22 = *(*(*(a1 + 32) + 8) + 24);
  if (v22 == 0.0)
  {
    v23 = v18;
  }

  else
  {
    v23 = v18 / v22;
  }

  v24 = v13 + v23;
  v25 = [v4 objectForKeyedSubscript:MediaAnalysisQualityKey];

  [v25 doubleValue];
  v27 = v26;

  v28 = *(a1 + 56);
  v29 = v13 <= v28 && v24 >= *(a1 + 64) || v13 >= v28 && v13 < *(a1 + 64) || v24 > v28 && v24 <= *(a1 + 64);
  *(*(*(a1 + 40) + 8) + 24) |= v27 > 0.3;
  *(*(*(a1 + 48) + 8) + 24) |= v27 > 0.3 && v29;
}

uint64_t _reportPerAssetDataToBiome(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _sceneThresholdsForVideoDataCollection();
  if (v4 && (v4[2](v4) & 1) != 0)
  {
    v6 = 4294967168;
  }

  else
  {
    [v3 duration];
    v8 = v7;
    v102 = 0;
    v103 = &v102;
    v104 = 0x2020000000;
    v105 = 0;
    v98 = 0;
    v99 = &v98;
    v100 = 0x2020000000;
    v101 = 0;
    v94 = 0;
    v95 = &v94;
    v96 = 0x2020000000;
    v97 = 0;
    v90 = 0;
    v91 = &v90;
    v92 = 0x2020000000;
    v93 = 0;
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 0;
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = sub_10014583C;
    v68 = sub_10014584C;
    v69 = +[NSMutableDictionary dictionary];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100145854;
    v63[3] = &unk_1002871B8;
    v63[4] = &v78;
    v63[5] = &v74;
    v63[6] = &v70;
    v42 = objc_retainBlock(v63);
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_10014587C;
    v57[3] = &unk_100287208;
    v59 = &v64;
    v58 = v5;
    v60 = &v78;
    v61 = &v70;
    v62 = &v74;
    v43 = objc_retainBlock(v57);
    if ([v3 sourceType] == 1)
    {
      v9 = @"UserLibrary";
    }

    else if ([v3 sourceType] == 2)
    {
      v9 = @"CloudShared";
    }

    else if ([v3 sourceType] == 256)
    {
      v9 = @"CollectionShared";
    }

    else
    {
      v10 = [v3 sourceType];
      v9 = @"None";
      if (v10 == 4)
      {
        v9 = @"iTunesSynced";
      }
    }

    v40 = v9;
    v11 = +[VCPMediaAnalyzer sharedMediaAnalyzer];
    v110 = v3;
    v12 = [NSArray arrayWithObjects:&v110 count:1];
    v108[0] = VCPMediaAnalyzerOption_AllowOnDemand;
    v108[1] = VCPMediaAnalyzerOption_MetadataWithHighlight;
    v109[0] = &__kCFBooleanFalse;
    v109[1] = &__kCFBooleanTrue;
    v13 = [NSDictionary dictionaryWithObjects:v109 forKeys:v108 count:2];
    v56 = 0;
    v14 = [v11 requestAnalysis:0xFFFFFFFFFFFFFLL forAssets:v12 withOptions:v13 andProgressHandler:0 andError:&v56];
    v41 = v56;

    if (v14 && [v14 count])
    {
      if (v4 && (v4[2](v4) & 1) != 0)
      {
        v6 = 4294967168;
      }

      else
      {
        v38 = [v14 objectAtIndexedSubscript:0];
        v16 = [v38 objectForKey:MediaAnalysisResultsKey];
        v17 = MediaAnalysisClassificationResultsKey;
        v18 = [v16 objectForKeyedSubscript:MediaAnalysisClassificationResultsKey];
        v19 = [v18 count] == 0;

        if (v19)
        {
          v35 = 0;
          v36 = 0;
        }

        else
        {
          v20 = [v16 objectForKey:v17];
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_100145CB0;
          v54[3] = &unk_100287140;
          v55 = v43;
          [v20 enumerateObjectsUsingBlock:v54];

          LOBYTE(v36) = v75[3] != 0;
          BYTE4(v36) = v79[3] != 0;
          v35 = v71[3] != 0;
          (v42[2])();
          v21 = v65[5];
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_100145D1C;
          v53[3] = &unk_100287230;
          v53[4] = &v98;
          [v21 enumerateKeysAndObjectsUsingBlock:v53];
        }

        v22 = MediaAnalysisMovieHighlightResultsKey;
        v23 = [v16 objectForKeyedSubscript:MediaAnalysisMovieHighlightResultsKey];
        v24 = [v23 count] == 0;

        if (!v24)
        {
          v25 = [v16 objectForKey:v22];
          v52[0] = _NSConcreteStackBlock;
          v52[1] = 3221225472;
          v52[2] = sub_100145E14;
          v52[3] = &unk_100287258;
          v52[4] = &v102;
          [v25 enumerateObjectsUsingBlock:v52];
        }

        v26 = [v16 objectForKey:MediaAnalysisCameraMotionResultsKey];
        v27 = v26;
        if (v26)
        {
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_100145EF4;
          v51[3] = &unk_100287258;
          v51[4] = &v82;
          [v26 enumerateObjectsUsingBlock:v51];
        }

        v28 = [v16 objectForKey:MediaAnalysisFineSubjectMotionResultsKey];
        v29 = v28;
        if (v28)
        {
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_100145F90;
          v50[3] = &unk_100287258;
          v50[4] = &v86;
          [v28 enumerateObjectsUsingBlock:v50];
        }

        v39 = [v16 objectForKeyedSubscript:MediaAnalysisFaceResultsKey];
        v30 = +[NSMutableSet set];
        v31 = v30;
        if (v39)
        {
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_100146020;
          v46[3] = &unk_100287280;
          v47 = v30;
          v48 = @"[Biome][PerAssetReport]";
          v49 = v3;
          [v39 enumerateObjectsUsingBlock:v46];
        }

        v34 = [v31 count];
        v37 = v29;
        v32 = objc_alloc_init(PHFetchOptions);
        [v32 setIncludedDetectionTypes:&off_1002963B0];
        [PHPerson fetchPersonsInAsset:v3 options:v32];
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_100146198;
        v45[3] = &unk_1002872A8;
        v45[4] = &v94;
        [objc_claimAutoreleasedReturnValue() enumerateObjectsUsingBlock:v45];
        [v32 setIncludedDetectionTypes:&off_1002963C8];
        [PHPerson fetchPersonsInAsset:v3 options:v32];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_1001461D8;
        v44[3] = &unk_1002872A8;
        v44[4] = &v90;
        [objc_claimAutoreleasedReturnValue() enumerateObjectsUsingBlock:v44];
        if (v4 && (v4[2](v4) & 1) != 0)
        {
          v6 = 4294967168;
        }

        else
        {
          _sendPerAssetData(v40, @"NA", @"NA", 0, v34, v99[3], *(v95 + 24), *(v91 + 24), v8, v103[3], 0.0, BYTE4(v36), v36, v35, *(v87 + 24), *(v83 + 24), 0, 0, 0, 0, 0, 0);
          v6 = 0;
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v15 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          *buf = 138412290;
          v107 = @"[Biome][PerAssetReport]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@ Failed to call MediaAnalyzer on asset, skipping", buf, 0xCu);
        }
      }

      v6 = 4294967278;
    }

    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(&v82, 8);
    _Block_object_dispose(&v86, 8);
    _Block_object_dispose(&v90, 8);
    _Block_object_dispose(&v94, 8);
    _Block_object_dispose(&v98, 8);
    _Block_object_dispose(&v102, 8);
  }

  return v6;
}

void sub_100145778(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10014583C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_100145854(void *result)
{
  *(*(result[4] + 8) + 24) = 0;
  *(*(result[5] + 8) + 24) = 0;
  *(*(result[6] + 8) + 24) = 0;
  return result;
}

void sub_10014587C(uint64_t a1, void *a2)
{
  v3 = a2;
  +[NSMutableDictionary dictionary];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001459B0;
  v4 = v12[3] = &unk_1002870C8;
  v5 = *(a1 + 40);
  v13 = v4;
  v14 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v12];

  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100145AC0;
  v8[3] = &unk_1002871E0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  v9 = v4;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void sub_1001459B0(uint64_t a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = a2;
  v6 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
  v7 = [v5 longLongValue];

  v8 = [v6 mad_sceneNameFromExtendedSceneId:v7];

  if (v8)
  {
    [*(a1 + 32) setObject:v15 forKey:v8];
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = v15;
    v11 = [v9 objectForKeyedSubscript:v8];
    v12 = v11;
    if (v11 <= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13;

    [v9 setObject:v14 forKey:v8];
  }
}

void sub_100145AC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([v5 isEqualToString:@"nature"])
  {
    v12[3] = *(*(a1 + 40) + 8) + 24;
  }

  else
  {
    if ([v5 isEqualToString:@"landmarks"])
    {
      v7 = *(a1 + 48);
    }

    else
    {
      v7 = *(a1 + 56);
    }

    v12[3] = *(v7 + 8) + 24;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100145C0C;
  v8[3] = &unk_1002870C8;
  v9 = *(a1 + 32);
  v10 = &v11;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];

  _Block_object_dispose(&v11, 8);
}

void sub_100145BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100145C0C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:a2];
  [v9 doubleValue];
  v11 = v10;

  [v8 doubleValue];
  v13 = v12;

  if (v11 >= v13)
  {
    v14 = *(*(*(a1 + 40) + 8) + 24);
    ++*v14;
    *a4 = 1;
  }
}

void sub_100145CB0(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:MediaAnalysisResultAttributesKey];
  (*(*(a1 + 32) + 16))();
}

void sub_100145D1C(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = a2;
  v6 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
  v7 = [v6 nodeForName:v5];

  v8 = 0.0;
  if (v7 && [v7 isIndexed])
  {
    [v7 highPrecisionThreshold];
    v8 = v9;
    [v7 highRecallThreshold];
    if (v8 >= v10)
    {
      v8 = v10;
    }

    [v7 searchThreshold];
    if (v8 >= v11)
    {
      v8 = v11;
    }
  }

  [v13 doubleValue];
  if (v12 >= v8)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

void sub_100145E14(uint64_t a1, void *a2)
{
  v3 = MediaAnalysisResultDurationKey;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 objectForKeyedSubscript:@"value"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v4 objectForKeyedSubscript:MediaAnalysisResultStartKey];

  v10 = [v9 objectForKeyedSubscript:@"timescale"];
  [v10 doubleValue];
  v12 = v11;

  if (v12 != 0.0)
  {
    *(*(*(a1 + 32) + 8) + 24) = v8 / v12 + *(*(*(a1 + 32) + 8) + 24);
  }
}

void sub_100145EF4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 objectForKeyedSubscript:MediaAnalysisFlagsKey];
  v7 = [v6 unsignedLongLongValue];
  v8 = MediaAnalysisFlagsCameraAll;

  *(*(*(a1 + 32) + 8) + 24) = (v7 & v8 & 0x10000 | *(*(*(a1 + 32) + 8) + 24)) != 0;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

void sub_100145F90(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 objectForKeyedSubscript:MediaAnalysisQualityKey];
  [v6 doubleValue];
  v8 = v7;

  *(*(*(a1 + 32) + 8) + 24) |= v8 > 0.3;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

void sub_100146020(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MediaAnalysisResultAttributesKey;
  v5 = [v3 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];
  v6 = MediaAnalysisResultFaceIDAttributeKey;
  v7 = [v5 objectForKeyedSubscript:MediaAnalysisResultFaceIDAttributeKey];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v3 objectForKeyedSubscript:v4];
    v10 = [v9 objectForKeyedSubscript:v6];
    [v8 addObject:v10];
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v11 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      v12 = *(a1 + 40);
      v13 = [*(a1 + 48) localIdentifier];
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Expected faceID for face result but none found %@", &v14, 0x16u);
    }
  }
}

id sub_100146198(uint64_t a1, void *a2)
{
  result = [a2 verifiedType];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (result != 1)
  {
    v5 = 0;
  }

  *(v4 + 24) = v5;
  return result;
}

id sub_1001461D8(uint64_t a1, void *a2)
{
  result = [a2 verifiedType];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (result != 1)
  {
    v5 = 0;
  }

  *(v4 + 24) = v5;
  return result;
}

uint64_t MADBMReportPerLibraryDataToBiome(void *a1, void *a2)
{
  v3 = a1;
  v43 = a2;
  v4 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v3];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001466FC;
  v46[3] = &unk_1002872D0;
  v42 = v3;
  v47 = v42;
  v41 = v4;
  v48 = v41;
  v5 = objc_retainBlock(v46);
  v6 = (v5[2])(v5, VCPAnalysisCountFullAnalysisVideoCountKey);
  v7 = (v5[2])(v5, VCPAnalysisCountFullAnalysisVideoProcessedKey) * 100.0 / v6 >= 80.0;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v38 = VCPKeyValueLastPerLibraryBiomeReportStartTimestamp;
  v9 = (v5[2])(v5);
  v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
  v11 = +[NSCalendar currentCalendar];
  v12 = +[NSDate now];
  v40 = v10;
  v13 = [v11 components:16 fromDate:v10 toDate:v12 options:0];
  v14 = [v13 day];

  v37 = VCPKeyValueLastPerLibraryBiomeReportEndTimestamp;
  v15 = (v5[2])(v5);
  v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:v15];
  v17 = +[NSCalendar currentCalendar];
  v18 = +[NSDate now];
  v39 = v16;
  v19 = [v17 components:16 fromDate:v16 toDate:v18 options:0];
  v20 = [v19 day];

  if (v15 <= v9 || v20 <= 0x11)
  {
    v22 = v15 <= v9 && v14 != 0;
    if ((v22 & v8 & 1) == 0)
    {
      v8 = 0;
LABEL_18:
      v27 = v42;
      v26 = v43;
      v28 = v41;
      goto LABEL_28;
    }
  }

  else if (!v8)
  {
    goto LABEL_18;
  }

  v23 = +[NSDate now];
  [v23 timeIntervalSinceReferenceDate];
  v25 = v24;

  v27 = v42;
  v26 = v43;
  v28 = v41;
  if (+[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100146778;
    v45[3] = &unk_100282F90;
    v45[4] = v25;
    [v42 mad_performAnalysisDataStoreChanges:v45 error:0];
  }

  else
  {
    [v41 setValue:v25 forKey:v38];
    [v41 commit];
  }

  v29 = _reportPerLibraryDataToBiome(v42, v43);
  if (v29)
  {
    v8 = v29;
    if (MediaAnalysisLogLevel() >= 6)
    {
      v30 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v30))
      {
        v31 = [v42 photoLibraryURL];
        v32 = [v31 path];
        *buf = 67109378;
        v50 = v8;
        v51 = 2112;
        v52 = v32;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "Error(%d) during per-library biome report for lib %@", buf, 0x12u);
      }
    }
  }

  else
  {
    v33 = +[NSDate now];
    [v33 timeIntervalSinceReferenceDate];
    v35 = v34;

    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100146790;
      v44[3] = &unk_100282F90;
      v44[4] = v35;
      [v42 mad_performAnalysisDataStoreChanges:v44 error:0];
    }

    else
    {
      [v41 setValue:v35 forKey:v37];
      [v41 commit];
    }

    v8 = 0;
  }

LABEL_28:

  return v8;
}

id sub_1001466FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    v4 = [*(a1 + 32) mad_fetchRequest];
    v5 = [v4 dataStoreValueForKey:v3];
  }

  else
  {
    v5 = [*(a1 + 40) valueForKey:v3];
  }

  return v5;
}

uint64_t MADBMReportNextPerAssetBucketDataToBiome(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4 && (v4[2](v4) & 1) != 0)
  {
    v6 = 4294967168;
  }

  else
  {
    v7 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v3];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100146DEC;
    v60[3] = &unk_1002872D0;
    v52 = v3;
    v61 = v52;
    v54 = v7;
    v62 = v54;
    v8 = objc_retainBlock(v60);
    v9 = VCPKeyValueLastPerAssetBiomeReportStartTimestamp;
    v10 = (v8[2])(v8, VCPKeyValueLastPerAssetBiomeReportStartTimestamp);
    v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:v10];
    v12 = +[NSCalendar currentCalendar];
    v13 = +[NSDate now];
    v53 = v11;
    v14 = [v12 components:16 fromDate:v11 toDate:v13 options:0];
    v15 = [v14 day];

    v16 = VCPKeyValueLastPerAssetBiomeReportEndTimestamp;
    v6 = 0;
    if ((v8[2])(v8, VCPKeyValueLastPerAssetBiomeReportEndTimestamp) <= v10 && v15)
    {
      v46 = v16;
      v17 = VCPKeyValueLastPerAssetBiomeReportBucket;
      v18 = (v8[2])(v8, VCPKeyValueLastPerAssetBiomeReportBucket);
      v19 = [&off_100296338 objectAtIndexedSubscript:v18];
      v20 = [&off_100296338 objectAtIndexedSubscript:++v18];
      v21 = v18 % 0x12;
      v22 = +[NSDate now];
      [v22 timeIntervalSinceReferenceDate];
      v24 = v23;

      if (+[MADManagedKeyValueStore isMACDPersistEnabled])
      {
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_100146E68;
        v59[3] = &unk_100285E20;
        v59[4] = v21;
        v59[5] = v24;
        v25 = v52;
        [v52 mad_performAnalysisDataStoreChanges:v59 error:0];
      }

      else
      {
        [v54 setValue:v21 forKey:v17];
        [v54 setValue:v24 forKey:v9];
        [v54 commit];
        v25 = v52;
      }

      v26 = [v25 fetchOptionsForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID() priority:4 algorithmVersion:0 sceneConfidenceThreshold:0 processed:0 exactVersionMatch:0 error:0.0];
      v27 = [v26 internalPredicate];
      v68[0] = v27;
      v50 = v19;
      v51 = v20;
      v28 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"uuid >= %s AND uuid < %s", [v19 UTF8String], objc_msgSend(v20, "UTF8String"));
      v68[1] = v28;
      v29 = [NSArray arrayWithObjects:v68 count:2];

      v49 = v29;
      v30 = [NSCompoundPredicate andPredicateWithSubpredicates:v29];
      [v26 setInternalPredicate:v30];

      [PHAsset fetchAssetsWithOptions:v26];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v31 = v58 = 0u;
      v32 = [v31 countByEnumeratingWithState:&v55 objects:v67 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v56;
        v47 = v3;
        v48 = v26;
LABEL_11:
        v35 = 0;
        while (1)
        {
          if (*v56 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v55 + 1) + 8 * v35);
          v37 = objc_autoreleasePoolPush();
          if (v5)
          {
            if (v5[2](v5))
            {
              break;
            }
          }

          v38 = _reportPerAssetDataToBiome(v36, v5);
          if (v38)
          {
            v6 = v38;
            v3 = v47;
            v40 = v49;
            v39 = v50;
            if (MediaAnalysisLogLevel() >= 6)
            {
              v41 = VCPLogToOSLogType[6];
              if (os_log_type_enabled(&_os_log_default, v41))
              {
                v42 = [v36 localIdentifier];
                *buf = 67109378;
                v64 = v6;
                v65 = 2112;
                v66 = v42;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "Error(%d) during per-asset biome report for asset %@", buf, 0x12u);
              }
            }

            goto LABEL_25;
          }

          objc_autoreleasePoolPop(v37);
          if (v33 == ++v35)
          {
            v33 = [v31 countByEnumeratingWithState:&v55 objects:v67 count:16];
            v3 = v47;
            v26 = v48;
            if (v33)
            {
              goto LABEL_11;
            }

            goto LABEL_19;
          }
        }

        v6 = 4294967168;
        v3 = v47;
        v40 = v49;
        v39 = v50;
LABEL_25:
        objc_autoreleasePoolPop(v37);

        v26 = v48;
        goto LABEL_28;
      }

LABEL_19:

      if (+[MADManagedKeyValueStore isMACDPersistEnabled])
      {
        [v52 mad_performAnalysisDataStoreChanges:&stru_1002872F0 error:0];
      }

      else
      {
        v43 = +[NSDate now];
        [v43 timeIntervalSinceReferenceDate];
        [v54 setValue:v44 forKey:v46];

        [v54 commit];
      }

      v6 = 0;
      v40 = v49;
      v39 = v50;
LABEL_28:
    }
  }

  return v6;
}

id sub_100146DEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    v4 = [*(a1 + 32) mad_fetchRequest];
    v5 = [v4 dataStoreValueForKey:v3];
  }

  else
  {
    v5 = [*(a1 + 40) valueForKey:v3];
  }

  return v5;
}

void sub_100146E68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = VCPKeyValueLastPerAssetBiomeReportBucket;
  v5 = a2;
  [v5 setDataStoreValue:v3 forKey:v4];
  [v5 setDataStoreValue:*(a1 + 40) forKey:VCPKeyValueLastPerAssetBiomeReportStartTimestamp];
}

void sub_100146EE8(id a1, MADChangeRequest *a2)
{
  v2 = a2;
  v4 = +[NSDate now];
  [v4 timeIntervalSinceReferenceDate];
  [(MADChangeRequest *)v2 setDataStoreValue:v3 forKey:VCPKeyValueLastPerAssetBiomeReportEndTimestamp];
}

void sub_1001499A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v6 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Checking whether %@ Photo Library is in known libraries", &v11, 0xCu);
    }
  }

  v7 = [PHPhotoLibrary wellKnownPhotoLibraryURLForIdentifier:a2];
  v8 = [v7 path];

  if (v8)
  {
    if (([*(*(a1 + 32) + 24) containsObject:v8] & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v9 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v9))
        {
          v11 = 138412546;
          v12 = v5;
          v13 = 2112;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "Adding %@ Photo Library (%@) to known libraries", &v11, 0x16u);
        }
      }

      [*(*(a1 + 32) + 24) addObject:v8];
      [*(a1 + 32) persistPhotoLibraries];
    }
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v10 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "No %@ Photo Library present", &v11, 0xCu);
    }
  }
}

void sub_100149BEC(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v5 = [v1 persistentDomainForName:MediaAnalysisDaemonDomain];

  v2 = [v5 objectForKey:VCPPhotoLibrariesDefaultsKey];
  +[PHPhotoLibrary enableMultiLibraryMode];
  v3 = [[VCPPhotoLibraryManager alloc] initWithPhotoLibraryPaths:v2];
  v4 = qword_1002B8458;
  qword_1002B8458 = v3;
}

uint64_t sub_100149DCC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100149DE4(uint64_t a1)
{
  v20 = +[NSMutableArray array];
  context = objc_autoreleasePoolPush();
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    type = VCPLogToOSLogType[7];
    v19 = VCPLogToOSLogType[4];
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v7];

        if (!v8)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v28 = v7;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Opening Photo Library at path %@", buf, 0xCu);
          }

          v9 = [NSURL fileURLWithPath:v7];
          v10 = [[PHPhotoLibrary alloc] initWithPhotoLibraryURL:v9];
          v22 = 0;
          v11 = [v10 vcp_openAndWaitWithUpgrade:0 error:&v22];
          v12 = v22;
          if (v11)
          {
            [*(*(a1 + 32) + 16) setObject:v10 forKeyedSubscript:v7];
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v19))
            {
              v13 = [v12 description];
              *buf = 138412546;
              v28 = v7;
              v29 = 2112;
              v30 = v13;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "Photo Library path %@ will be removed from known libraries due to failure to open (%@)", buf, 0x16u);
            }

            [v20 addObject:v7];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(context);
  if ([v20 count])
  {
    [*(*(a1 + 32) + 24) removeObjectsInArray:v20];
    [*(a1 + 32) persistPhotoLibraries];
  }

  v14 = [*(*(a1 + 32) + 16) allValues];
  v15 = [v14 sortedArrayUsingComparator:&stru_100287378];
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

int64_t sub_10014A10C(id a1, PHPhotoLibrary *a2, PHPhotoLibrary *a3)
{
  v4 = a2;
  v5 = a3;
  if (([(PHPhotoLibrary *)v4 isSystemPhotoLibrary]& 1) == 0)
  {
    if (([(PHPhotoLibrary *)v5 isSystemPhotoLibrary]& 1) != 0)
    {
      v6 = 1;
      goto LABEL_7;
    }

    if (([(PHPhotoLibrary *)v5 vcp_isSyndicationLibrary]& 1) == 0)
    {
      v6 = [(PHPhotoLibrary *)v4 vcp_isSyndicationLibrary];
      goto LABEL_7;
    }
  }

  v6 = -1;
LABEL_7:

  return v6;
}

void sub_10014A4FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) path];
  v4 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v7 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        *buf = 138412290;
        v21 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Opening Photo Library at path %@", buf, 0xCu);
      }
    }

    v8 = [[PHPhotoLibrary alloc] initWithPhotoLibraryURL:*(a1 + 32)];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(*(a1 + 48) + 8) + 40);
    v19 = 0;
    v12 = [v11 vcp_openAndWaitWithUpgrade:0 error:&v19];
    v13 = v19;
    if (v12)
    {
      [*(*(a1 + 40) + 16) setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:v3];
      if (([*(*(a1 + 40) + 24) containsObject:v3] & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v14 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v14))
          {
            *buf = 138412290;
            v21 = v3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "Adding Photo Library (%@) to known libraries", buf, 0xCu);
          }
        }

        [*(*(a1 + 40) + 24) addObject:v3];
        [*(a1 + 40) persistPhotoLibraries];
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v15 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          v16 = [v13 description];
          *buf = 138412546;
          v21 = v3;
          v22 = 2112;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Failed to open Photo Library at path %@ (%@)", buf, 0x16u);
        }
      }

      v17 = *(*(a1 + 48) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = 0;
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10014A8C4()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B8468;
  qword_1002B8468 = v0;
}

void sub_10014B2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  _Block_object_dispose(&a32, 8);

  _Block_object_dispose((v41 - 200), 8);
  _Block_object_dispose((v41 - 152), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10014B3C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10014B3DC(uint64_t a1, double a2)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2048;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[%@] %.2f%% complete", &v6, 0x16u);
    }
  }
}

uint64_t sub_10014B4B0(void *a1, uint64_t a2)
{
  [*(*(a1[7] + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPPersistentLogInstance();
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(v4, v5))
    {
      v6 = a1[4];
      [*(*(a1[7] + 8) + 40) elapsedTimeSeconds];
      v8 = @"interrupted";
      v22 = 138413058;
      v23 = v6;
      v24 = 2112;
      if (!a2)
      {
        v8 = @"finished";
      }

      v25 = v8;
      v26 = 2048;
      v27 = v7;
      v28 = 1024;
      v29 = a2;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%@] BackgroundSystemTask %@ after %0.6fs (%d)", &v22, 0x26u);
    }
  }

  if ([objc_opt_class() taskID])
  {
    if (+[MADManagedBackgroundActivitySchedule isMACDPersistEnabled])
    {
      v9 = [objc_opt_class() taskID];
      v10 = *(*(a1[8] + 8) + 40);
      [*(*(a1[7] + 8) + 40) elapsedTimeSeconds];
      [MADManagedBackgroundActivitySchedule updateSessionLogWithTaskID:v9 startTime:v10 duration:a2 exitStatus:?];
    }

    else
    {
      v11 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
      v12 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v11];

      v13 = [objc_opt_class() taskID];
      v14 = *(*(a1[8] + 8) + 40);
      [*(*(a1[7] + 8) + 40) elapsedTimeSeconds];
      [v12 updateSchedulingHistoryForActivityID:v13 startTime:v14 duration:a2 exitStatus:0 sessionLog:?];
      [v12 commit];
    }

    v15 = [objc_opt_class() taskID];
    [*(*(a1[7] + 8) + 40) elapsedTimeSeconds];
    VCPCoreAnalyticsReportEventDasScheduling(v15, a2, v16);
  }

  if (a2 != -128 && a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_10014C430(a1, a2);
  }

  v17 = *(a1[9] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;

  if (MediaAnalysisLogLevel() >= 5)
  {
    v19 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v19))
    {
      v20 = a1[4];
      v22 = 138412290;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[%@] Finished background processing", &v22, 0xCu);
    }
  }

  return (*(a1[6] + 16))();
}

void sub_10014BA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_10014BA80(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Entering BGST task launch handler.", buf, 0xCu);
    }
  }

  atomic_store(0, (*(a1 + 40) + 24));
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10014BF08;
  v26[3] = &unk_100282BC8;
  v20 = *(a1 + 32);
  v6 = v20.i64[0];
  v27 = vextq_s8(v20, v20, 8uLL);
  [v3 setExpirationHandler:v26];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10014BFDC;
  v25[3] = &unk_100283000;
  v25[4] = *(a1 + 40);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10014BFF8;
  v21[3] = &unk_100287418;
  v7 = objc_retainBlock(v25);
  v24 = v7;
  v22 = *(a1 + 32);
  v8 = v3;
  v23 = v8;
  v9 = objc_retainBlock(v21);
  if (+[VCPDeviceInformation isHomePod])
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v10 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = *(a1 + 32);
        *buf = 138412290;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@[HomePod] Set xpc transaction exit clean", buf, 0xCu);
      }
    }

    xpc_transaction_exit_clean();
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v12 = VCPPersistentLogInstance();
    v13 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v12, v13, "%@ Running background processing", buf, 0xCu);
    }
  }

  v15 = objc_autoreleasePoolPush();
  [*(a1 + 40) executeWith:v7 completionHandler:v9];
  objc_autoreleasePoolPop(v15);
  if (MediaAnalysisLogLevel() >= 5)
  {
    v16 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Submitted background processing task", buf, 0xCu);
    }
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v18 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v18))
    {
      v19 = *(a1 + 32);
      *buf = 138412290;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Exiting BGST task launch handler.", buf, 0xCu);
    }
  }
}

void sub_10014BF08(uint64_t a1)
{
  atomic_store(1u, (*(a1 + 32) + 24));
  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = *(a1 + 40);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "%@ Cancelling by expirationHandler", &v4, 0xCu);
    }
  }
}

void sub_10014BFF8(uint64_t a1, int a2)
{
  if ((*(*(a1 + 48) + 16))())
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v4 = VCPPersistentLogInstance();
      v5 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(v4, v5))
      {
        v6 = *(a1 + 32);
        *buf = 138412290;
        v31 = v6;
        _os_log_impl(&_mh_execute_header, v4, v5, "%@ Task is cancelled by DAS", buf, 0xCu);
      }
    }

    v7 = *(a1 + 40);
    v29 = 0;
    v8 = [v7 setTaskExpiredWithRetryAfter:&v29 error:0.0];
    v9 = v29;
    if (v8)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v10 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v10))
        {
          v11 = *(a1 + 32);
          *buf = 138412290;
          v31 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Request retry after 0 seconds", buf, 0xCu);
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v24 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          v25 = *(a1 + 32);
          *buf = 138412546;
          v31 = v25;
          v32 = 2112;
          v33 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ Failed to expire task - %@", buf, 0x16u);
        }
      }

      [*(a1 + 40) setTaskCompleted];
    }
  }

  else
  {
    v12 = MediaAnalysisLogLevel();
    if (a2 == -128)
    {
      if (v12 >= 5)
      {
        v13 = VCPPersistentLogInstance();
        v14 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(v13, v14))
        {
          v15 = *(a1 + 32);
          *buf = 138412290;
          v31 = v15;
          _os_log_impl(&_mh_execute_header, v13, v14, "%@ Task is cancelled", buf, 0xCu);
        }
      }

      v16 = *(a1 + 40);
      v28 = 0;
      v17 = [v16 setTaskExpiredWithRetryAfter:&v28 error:300.0];
      v18 = v28;
      if (v17)
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v19 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v19))
          {
            v20 = *(a1 + 32);
            *buf = 138412546;
            v31 = v20;
            v32 = 1024;
            LODWORD(v33) = 300;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Request retry after %d seconds", buf, 0x12u);
          }
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v26 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v26))
          {
            v27 = *(a1 + 32);
            *buf = 138412546;
            v31 = v27;
            v32 = 2112;
            v33 = v18;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Failed to expire task - %@", buf, 0x16u);
          }
        }

        [*(a1 + 40) setTaskCompleted];
      }
    }

    else
    {
      if (v12 >= 5)
      {
        v21 = VCPPersistentLogInstance();
        v22 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(v21, v22))
        {
          v23 = *(a1 + 32);
          *buf = 138412546;
          v31 = v23;
          v32 = 1024;
          LODWORD(v33) = a2;
          _os_log_impl(&_mh_execute_header, v21, v22, "%@ Task is completed (%d)", buf, 0x12u);
        }
      }

      [*(a1 + 40) setTaskCompleted];
    }
  }
}

void sub_10014C430(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = 138412546;
  v4 = v2;
  v5 = 1024;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[%@] BackgroundSystemTask failed (%d)", &v3, 0x12u);
}

void sub_10014E944(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 localIdentifier];
  if (v8)
  {
    [*(a1 + 48) setObject:v6 forKeyedSubscript:v8];
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v9 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      v10 = *(a1 + 40);
      v11 = [v7 error];
      v12 = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Failed to fetch local identifier for cloud identifier %@ (%@); skipping entry", &v12, 0x20u);
    }
  }
}

id sub_10014EAD4(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v3 = 0;
    v4 = VCPLogToOSLogType[4];
    v5 = VCPLogToOSLogType[7];
    do
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [*(a1 + 32) objectAtIndexedSubscript:v3];
      if ([v7 vcp_needsProcessingForTask:*(*(a1 + 40) + 24)])
      {
        v8 = *(a1 + 56);
        v9 = [v7 localIdentifier];
        v10 = [v8 objectForKeyedSubscript:v9];

        if (v10)
        {
          [v10 persistToPhotosAsset:v7];
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v5))
          {
            v11 = *(a1 + 48);
            v12 = [v7 localIdentifier];
            *buf = 138412546;
            v18 = v11;
            v19 = 2112;
            v20 = v12;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@[%@] Restored asset from backup", buf, 0x16u);
          }

          ++*(*(*(a1 + 64) + 8) + 24);
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v4))
        {
          v15 = *(a1 + 48);
          v16 = [v7 localIdentifier];
          *buf = 138412546;
          v18 = v15;
          v19 = 2112;
          v20 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@[%@] Failed to find matching asset from backup; skipping entry", buf, 0x16u);
        }
      }

      else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v4))
      {
        v13 = *(a1 + 48);
        v14 = [v7 localIdentifier];
        *buf = 138412546;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@[%@] Asset already has analysis results; skipping entry", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      result = [*(a1 + 32) count];
      ++v3;
    }

    while (v3 < result);
  }

  return result;
}

void sub_10014EDC4(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_100150F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPMovieChangeEntry;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100152A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VCPPhotosAssetChangeManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL sub_100156C44(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectGetMinX(*&a1) < 0.0)
  {
    return 0;
  }

  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  if (CGRectGetMinX(v9) > 1.0)
  {
    return 0;
  }

  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  if (CGRectGetMinY(v10) < 0.0)
  {
    return 0;
  }

  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  if (CGRectGetMinY(v11) > 1.0)
  {
    return 0;
  }

  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  if (CGRectGetMaxX(v12) < 0.0)
  {
    return 0;
  }

  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  if (CGRectGetMaxX(v13) > 1.0)
  {
    return 0;
  }

  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  if (CGRectGetMaxY(v14) < 0.0)
  {
    return 0;
  }

  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  return CGRectGetMaxY(v15) <= 1.0;
}

uint64_t sub_10015B828(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10015B840(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        [v6 publish];
        objc_autoreleasePoolPop(v7);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  return [*(*(*(a1 + 32) + 8) + 40) removeAllObjects];
}

void sub_10015B984(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_10015BF1C(uint64_t a1)
{
  v2 = atomic_load((*(a1 + 32) + 48));
  if (v2)
  {
    v3 = *(*(a1 + 32) + 24);

    dispatch_semaphore_signal(v3);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v4 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        v5 = [*(a1 + 40) count];
        *buf = 67109120;
        LODWORD(v24) = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[Sticker] Publishing %d results", buf, 8u);
      }
    }

    v6 = VCPSignPostLog();
    v7 = os_signpost_id_generate(v6);

    v8 = VCPSignPostLog();
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MADStickerScore_Persist", "", buf, 2u);
    }

    v10 = *(*(a1 + 32) + 8);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10015C2B0;
    v21[3] = &unk_100283210;
    v22 = *(a1 + 40);
    v20 = 0;
    v11 = [v10 performChangesAndWait:v21 error:&v20];
    v12 = v20;
    v13 = VCPSignPostLog();
    v14 = v13;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v7, "MADStickerScore_Persist", "", buf, 2u);
    }

    if ((v11 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v15 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          v16 = [v12 description];
          *buf = 138412290;
          v24 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[Sticker] Failed to persist results (%@)", buf, 0xCu);
        }
      }

      atomic_store(1u, (*(a1 + 32) + 48));
      v17 = [v12 copy];
      v18 = *(a1 + 32);
      v19 = *(v18 + 56);
      *(v18 + 56) = v17;
    }

    dispatch_semaphore_signal(*(*(a1 + 32) + 24));
  }
}

void sub_10015C2B0(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        v6 = [v5 asset];
        v7 = [PHAssetChangeRequest changeRequestForAsset:v6];

        [v5 stickerScore];
        *&v8 = v8;
        [v7 setStickerConfidenceScore:1 stickerAlgorithmVersion:v8];
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v2);
  }
}

void sub_10015D024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, void *a22, void *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, const void *a28)
{
  sub_100002CBC(&a28);

  _Unwind_Resume(a1);
}

void sub_10015DA84(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_10015DAF0(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

id sub_10015E50C(uint64_t a1)
{
  v1 = [*(a1 + 32) isCanceled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

void sub_10015E568(id a1, MADChangeRequest *a2)
{
  v2 = a2;
  [(MADChangeRequest *)v2 removeDataStoreKey:MADPersonProcessingStatusKey];
  [(MADChangeRequest *)v2 removeDataStoreKey:MADPersonProcessingUpdateAttemptCountKey];
}

uint64_t sub_10015E5E0(uint64_t a1, float a2)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(*(a1 + 32) + 88);
      v7 = 138412546;
      v8 = v5;
      v9 = 2048;
      v10 = (a2 * 100.0);
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Gallery updating - %.2f%%", &v7, 0x16u);
    }
  }

  return (*(*(a1 + 40) + 16))() ^ 1;
}

void sub_10015E6E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 32))
  {
    [v3 setDataStoreValue:*(a1 + 40) forKey:VCPKeyValueFaceAnalysisLastFullModeClusterTimestamp];
  }

  [v3 setDataStoreValue:1 forKey:MADPersonProcessingStatusKey];
  [v3 setDataStoreValue:0 forKey:MADPersonProcessingUpdateAttemptCountKey];
}

void sub_100160584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, void *a31, void *a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  _Block_object_dispose(&STACK[0x310], 8);

  _Block_object_dispose((v49 - 256), 8);
  _Block_object_dispose(&STACK[0x250], 8);

  _Unwind_Resume(a1);
}

id sub_1001609B8(uint64_t a1)
{
  v1 = [*(a1 + 32) isCanceled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

uint64_t sub_100160A14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[VCPWatchdog sharedWatchdog];
  [v4 pet];

  v5 = *(a1 + 32);
  v6 = [v3 entityIdentifier];
  [v5 addObject:v6];

  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = *(*(a1 + 40) + 88);
      v9 = [v3 updateType];
      v10 = [v3 entityIdentifier];
      v11 = [v10 value];
      v12 = [v3 tag];
      v15 = 138413058;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2048;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Detected change (%ld) for entity %ld (tag: %@)", &v15, 0x2Au);
    }
  }

  v13 = [*(a1 + 40) isCanceled];

  return v13 ^ 1;
}

uint64_t sub_100160BE4(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v54 = a4;
  v55 = a5;
  v52 = mach_absolute_time();
  v10 = VCPSignPostLog();
  v11 = os_signpost_id_generate(v10);

  v12 = VCPSignPostLog();
  v13 = v12;
  spid = v11;
  v14 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "GalleryUpdate_updatePhotosWithEntityBlock", "", buf, 2u);
  }

  v15 = +[VCPWatchdog sharedWatchdog];
  [v15 pet];

  ++*(*(*(a1 + 80) + 8) + 24);
  v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"md:%ld", [v9 value]);
  v53 = [NSString stringWithFormat:@"%@[%@][%lu]", *(*(a1 + 32) + 88), v16, *(*(*(a1 + 80) + 8) + 24)];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v17 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      v18 = [v55 count];
      *buf = 138412546;
      v59 = v53;
      v60 = 2048;
      v61 = v18;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ Receiving entity with %lu face observations ... ", buf, 0x16u);
    }
  }

  if (!*(a1 + 40) || ([*(a1 + 48) containsObject:v9] & 1) != 0)
  {
LABEL_25:
    v30 = objc_autoreleasePoolPush();
    v31 = +[MADVUUtilities sharedInstance];
    v32 = [*(*(a1 + 32) + 24) vcp_isSyndicationLibrary];
    v33 = *(a1 + 32);
    v34 = *(v33 + 24);
    v35 = *(v33 + 48);
    if (v32)
    {
      v36 = *(a1 + 72);
      v57 = 0;
      v37 = [v31 updatePersonWithSyndicationLibrary:v34 gallery:v35 entityIdentifier:v9 entityClass:a3 observationIDs:v55 taggedPersonUUID:v54 cancelOrExtendTimeoutBlock:v36 error:&v57];
      v21 = v57;
      if (v37)
      {
        if (MediaAnalysisLogLevel() < 7)
        {
          goto LABEL_43;
        }

        v38 = VCPLogToOSLogType[7];
        if (!os_log_type_enabled(&_os_log_default, v38))
        {
          goto LABEL_43;
        }

        *buf = 138412290;
        v59 = v53;
        v39 = "%@ Updated Syndication Library";
        goto LABEL_34;
      }

      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_43;
      }

      v45 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v45))
      {
        goto LABEL_43;
      }

      *buf = 138412546;
      v59 = v53;
      v60 = 2112;
      v61 = v21;
      v39 = "%@ Failed to update Syndication Library - %@";
    }

    else
    {
      v40 = *(a1 + 64);
      v41 = *(a1 + 72);
      v56 = 0;
      v42 = [v31 updatePersonWithPhotosLibrary:v34 gallery:v35 entityIdentifier:v9 entityClass:a3 observationIDs:v55 taggedPersonUUID:v54 keyFaceLocalIdentifiers:v40 cancelOrExtendTimeoutBlock:v41 error:&v56];
      v21 = v56;
      if (v42)
      {
        if (MediaAnalysisLogLevel() < 7)
        {
          goto LABEL_43;
        }

        v38 = VCPLogToOSLogType[7];
        if (!os_log_type_enabled(&_os_log_default, v38))
        {
          goto LABEL_43;
        }

        *buf = 138412290;
        v59 = v53;
        v39 = "%@ Updated Photos";
LABEL_34:
        v43 = v38;
        v44 = 12;
LABEL_42:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v43, v39, buf, v44);
LABEL_43:

        objc_autoreleasePoolPop(v30);
        v46 = VCPSignPostLog();
        v47 = v46;
        if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_END, spid, "GalleryUpdate_updatePhotosWithEntityBlock", "", buf, 2u);
        }

        if (v52)
        {
          mach_absolute_time();
          VCPPerformance_LogMeasurement();
        }

        v48 = [*(a1 + 32) isCanceled];
LABEL_49:
        v26 = v48;
        goto LABEL_50;
      }

      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_43;
      }

      v45 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v45))
      {
        goto LABEL_43;
      }

      *buf = 138412546;
      v59 = v53;
      v60 = 2112;
      v61 = v21;
      v39 = "%@ Failed to update Photos - %@";
    }

    v43 = v45;
    v44 = 22;
    goto LABEL_42;
  }

  v64 = v16;
  v19 = [NSArray arrayWithObjects:&v64 count:1];
  v20 = [PHPerson fetchPersonsWithMdIDs:v19 options:*(a1 + 56)];
  v21 = [v20 firstObject];

  if (!v21)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v27 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        *buf = 138412290;
        v59 = v53;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Person not in Photos DB (should be according to bookmark)", buf, 0xCu);
      }
    }

    goto LABEL_24;
  }

  if ([v21 verifiedType] != 1 && objc_msgSend(v21, "verifiedType") != 2)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v50 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v50))
      {
        *buf = 138412290;
        v59 = v53;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v50, "%@ Unverified person already in Photos DB; skip updating", buf, 0xCu);
      }
    }

    v48 = [*(a1 + 32) isCanceled];
    goto LABEL_49;
  }

  v22 = [*(*(a1 + 32) + 24) mad_allFacesFetchOptions];
  [v22 setShouldPrefetchCount:1];
  v23 = [PHFace fetchFacesForPerson:v21 options:v22];
  v24 = [v23 count];

  if (v24 != [v55 count])
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v28 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        v29 = [v55 count];
        *buf = 138412802;
        v59 = v53;
        v60 = 2048;
        v61 = v29;
        v62 = 2048;
        v63 = v24;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Unexpected person update with %lu VU observations, %lu in PhotosDB", buf, 0x20u);
      }
    }

LABEL_24:
    goto LABEL_25;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v25 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v25))
    {
      *buf = 138412546;
      v59 = v53;
      v60 = 2048;
      v61 = v24;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Person already in Photos DB (%lu observations); skip updating", buf, 0x16u);
    }
  }

  v26 = [*(a1 + 32) isCanceled];

LABEL_50:
  return v26 ^ 1;
}

void sub_1001614F8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 24) currentToken];
  [v4 setChangeToken:v3 taskID:3 changeTokenType:3 date:*(a1 + 40)];
}

void sub_1001615A8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 24) currentToken];
  [v4 updateChangeToken:v3 taskID:3 changeTokenType:3];
}

void sub_100161640(id a1, MADChangeRequest *a2)
{
  v2 = a2;
  [(MADChangeRequest *)v2 removeDataStoreKey:MADPersonProcessingStatusKey];
  [(MADChangeRequest *)v2 removeDataStoreKey:MADPersonProcessingUpdateAttemptCountKey];
}

uint64_t sub_1001616B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001616D0(uint64_t a1, _BYTE *a2, float a3)
{
  if (a3 >= 0.0)
  {
    v5 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016184C;
    block[3] = &unk_100283428;
    v10 = *(a1 + 40);
    v11 = a3;
    dispatch_async(v5, block);
  }

  if ([*(a1 + 40) isCanceled])
  {
    *a2 = 1;
    if (MediaAnalysisLogLevel() >= 6)
    {
      v6 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        v7 = *(*(a1 + 40) + 88);
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Cancelling Person Promoting", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = +[VCPWatchdog sharedWatchdog];
    [v8 pet];
  }
}

void sub_10016184C(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) timeIntervalSinceNow];
  if (v2 < -5.0)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v3 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        v4 = *(*(a1 + 32) + 88);
        v5 = *(a1 + 48);
        v9 = 138412546;
        v10 = v4;
        v11 = 2048;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Person Promoting progress: %.2f%%", &v9, 0x16u);
      }
    }

    v6 = +[NSDate now];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_100161968(uint64_t a1, _BYTE *a2, double a3)
{
  if (a3 >= 0.0)
  {
    v5 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100161AE4;
    block[3] = &unk_100286008;
    v10 = *(a1 + 40);
    v11 = a3;
    dispatch_async(v5, block);
  }

  if ([*(a1 + 40) isCanceled])
  {
    *a2 = 1;
    if (MediaAnalysisLogLevel() >= 6)
    {
      v6 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        v7 = *(*(a1 + 40) + 88);
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Cancelling Pet Promoting", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = +[VCPWatchdog sharedWatchdog];
    [v8 pet];
  }
}

void sub_100161AE4(void *a1)
{
  [*(*(a1[5] + 8) + 40) timeIntervalSinceNow];
  if (v2 < -5.0)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v3 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        v4 = *(a1[4] + 88);
        v5 = a1[6];
        v9 = 138412546;
        v10 = v4;
        v11 = 2048;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Pet Promoting progress: %.2f%%", &v9, 0x16u);
      }
    }

    v6 = +[NSDate now];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

id sub_100163C44(uint64_t a1)
{
  v1 = [*(a1 + 32) isCanceled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

id sub_100163CD0(uint64_t a1)
{
  v1 = [*(a1 + 32) isCanceled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

uint64_t sub_100163D2C(uint64_t a1, float a2)
{
  v4 = [*(a1 + 32) isCanceled];
  if ((v4 & 1) == 0)
  {
    v5 = +[VCPWatchdog sharedWatchdog];
    [v5 pet];
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = *(*(a1 + 32) + 88);
      v9 = 138412802;
      v10 = v7;
      v11 = 2048;
      v12 = a2 * 100.0;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ VUWGallery plugin update progress: %.2f%%, isCanceled %d", &v9, 0x1Cu);
    }
  }

  return v4 ^ 1;
}

void sub_10016572C(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  [v4 setDataStoreValue:v3 forKey:*(a1 + 40)];
}

void sub_1001678F8(uint64_t a1, void *a2)
{
  v72 = a2;
  v3 = VCPAnalysisCountFullAnalysisStillImageCountKey;
  v4 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisStillImageCountKey];
  [v72 setDataStoreValue:objc_msgSend(v4 forKey:{"longLongValue"), v3}];

  v5 = VCPAnalysisCountFullAnalysisStillImageProcessedKey;
  v6 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisStillImageProcessedKey];
  [v72 setDataStoreValue:objc_msgSend(v6 forKey:{"longLongValue"), v5}];

  v7 = VCPAnalysisCountFullAnalysisLivePhotoCountKey;
  v8 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLivePhotoCountKey];
  [v72 setDataStoreValue:objc_msgSend(v8 forKey:{"longLongValue"), v7}];

  v9 = VCPAnalysisCountFullAnalysisLivePhotoProcessedKey;
  v10 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLivePhotoProcessedKey];
  [v72 setDataStoreValue:objc_msgSend(v10 forKey:{"longLongValue"), v9}];

  v11 = VCPAnalysisCountFullAnalysisVideoCountKey;
  v12 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisVideoCountKey];
  [v72 setDataStoreValue:objc_msgSend(v12 forKey:{"longLongValue"), v11}];

  v13 = VCPAnalysisCountFullAnalysisSlowmoVideoCountKey;
  v14 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisSlowmoVideoCountKey];
  [v72 setDataStoreValue:objc_msgSend(v14 forKey:{"longLongValue"), v13}];

  v15 = VCPAnalysisCountFullAnalysisLongVideoCountKey;
  v16 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLongVideoCountKey];
  [v72 setDataStoreValue:objc_msgSend(v16 forKey:{"longLongValue"), v15}];

  v17 = VCPAnalysisCountFullAnalysisVideoProcessedKey;
  v18 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisVideoProcessedKey];
  [v72 setDataStoreValue:objc_msgSend(v18 forKey:{"longLongValue"), v17}];

  v19 = VCPAnalysisCountFullAnalysisSlowmoVideoProcessedKey;
  v20 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisSlowmoVideoProcessedKey];
  [v72 setDataStoreValue:objc_msgSend(v20 forKey:{"longLongValue"), v19}];

  v21 = VCPAnalysisCountFullAnalysisLongVideoProcessedKey;
  v22 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLongVideoProcessedKey];
  [v72 setDataStoreValue:objc_msgSend(v22 forKey:{"longLongValue"), v21}];

  v23 = VCPAnalysisCountFullAnalysisVideoFailedKey;
  v24 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisVideoFailedKey];
  [v72 setDataStoreValue:objc_msgSend(v24 forKey:{"longLongValue"), v23}];

  v25 = VCPAnalysisCountFullAnalysisSlowmoVideoFailedKey;
  v26 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisSlowmoVideoFailedKey];
  [v72 setDataStoreValue:objc_msgSend(v26 forKey:{"longLongValue"), v25}];

  v27 = VCPAnalysisCountFullAnalysisLongVideoFailedKey;
  v28 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLongVideoFailedKey];
  [v72 setDataStoreValue:objc_msgSend(v28 forKey:{"longLongValue"), v27}];

  v29 = VCPAnalysisCountFullAnalysisVideoGatedKey;
  v30 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisVideoGatedKey];
  [v72 setDataStoreValue:objc_msgSend(v30 forKey:{"longLongValue"), v29}];

  v31 = VCPAnalysisCountFullAnalysisSlowmoVideoGatedKey;
  v32 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisSlowmoVideoGatedKey];
  [v72 setDataStoreValue:objc_msgSend(v32 forKey:{"longLongValue"), v31}];

  v33 = VCPAnalysisCountFullAnalysisLongVideoGatedKey;
  v34 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLongVideoGatedKey];
  [v72 setDataStoreValue:objc_msgSend(v34 forKey:{"longLongValue"), v33}];

  v35 = VCPAnalysisFullAnalysisVideoDurationKey;
  v36 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisFullAnalysisVideoDurationKey];
  [v36 doubleValue];
  [v72 setDataStoreValue:v37 forKey:v35];

  v38 = VCPAnalysisFullAnalysisSlowmoVideoDurationKey;
  v39 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisFullAnalysisSlowmoVideoDurationKey];
  [v39 doubleValue];
  [v72 setDataStoreValue:v40 forKey:v38];

  v41 = VCPAnalysisFullAnalysisLongVideoDurationKey;
  v42 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisFullAnalysisLongVideoDurationKey];
  [v42 doubleValue];
  [v72 setDataStoreValue:v43 forKey:v41];

  v44 = VCPAnalysisFullAnalysisProcessedVideoDurationKey;
  v45 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisFullAnalysisProcessedVideoDurationKey];
  [v45 doubleValue];
  [v72 setDataStoreValue:v46 forKey:v44];

  v47 = VCPAnalysisFullAnalysisProcessedSlowmoVideoDurationKey;
  v48 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisFullAnalysisProcessedSlowmoVideoDurationKey];
  [v48 doubleValue];
  [v72 setDataStoreValue:v49 forKey:v47];

  v50 = VCPAnalysisFullAnalysisProcessedLongVideoDurationKey;
  v51 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisFullAnalysisProcessedLongVideoDurationKey];
  [v51 doubleValue];
  [v72 setDataStoreValue:v52 forKey:v50];

  v53 = VCPAnalysisFullAnalysisFailedVideoDurationKey;
  v54 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisFullAnalysisFailedVideoDurationKey];
  [v54 doubleValue];
  [v72 setDataStoreValue:v55 forKey:v53];

  v56 = VCPAnalysisFullAnalysisFailedSlowmoVideoDurationKey;
  v57 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisFullAnalysisFailedSlowmoVideoDurationKey];
  [v57 doubleValue];
  [v72 setDataStoreValue:v58 forKey:v56];

  v59 = VCPAnalysisFullAnalysisFailedLongVideoDurationKey;
  v60 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisFullAnalysisFailedLongVideoDurationKey];
  [v60 doubleValue];
  [v72 setDataStoreValue:v61 forKey:v59];

  v62 = VCPAnalysisFullAnalysisGatedVideoDurationKey;
  v63 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisFullAnalysisGatedVideoDurationKey];
  [v63 doubleValue];
  [v72 setDataStoreValue:v64 forKey:v62];

  v65 = VCPAnalysisFullAnalysisGatedSlowmoVideoDurationKey;
  v66 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisFullAnalysisGatedSlowmoVideoDurationKey];
  [v66 doubleValue];
  [v72 setDataStoreValue:v67 forKey:v65];

  v68 = *(a1 + 32);
  v69 = VCPAnalysisFullAnalysisGatedLongVideoDurationKey;
  v70 = [v68 objectForKeyedSubscript:VCPAnalysisFullAnalysisGatedLongVideoDurationKey];
  [v70 doubleValue];
  [v72 setDataStoreValue:v71 forKey:v69];
}

BOOL sub_100169E4C(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];

  return 0;
}

void sub_100169E98(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountTotalAllowedKey];
  v4 = [v3 longLongValue];
  [v11 setDataStoreValue:v4 forKey:VCPKeyValueNumberOfAssetsAllowedForPhotosFaceProcessing];

  v5 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountProcessedKey];
  v6 = [v5 longLongValue];
  [v11 setDataStoreValue:v6 forKey:VCPKeyValueNumberOfAssetsAnalyzedForPhotosFaceProcessing];

  v7 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountPrioritizedProcessedKey];
  v8 = [v7 longLongValue];
  [v11 setDataStoreValue:v8 forKey:VCPKeyValuePrioritizedProcessedForPhotosFaceProcessing];

  v9 = [*(a1 + 32) objectForKeyedSubscript:VCPAnalysisCountPrioritizedTotalAllowedKey];
  v10 = [v9 longLongValue];
  [v11 setDataStoreValue:v10 forKey:VCPKeyValuePrioritizedTotalAllowedForPhotosFaceProcessing];
}

void sub_10016A304(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDataStoreValue:*(a1 + 40) forKey:VCPKeyValueNumberOfProcessedAssetsAfterPromoterForPhotosFaceProcessing];
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  [v4 setDataStoreValue:v3 forKey:VCPKeyValueLastPromoterTimestamp];
}

void sub_10016B374(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = *v14;
    v7 = VCPLogToOSLogType[4];
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 unsignedIntegerValue];
        v12 = VCPRequestBGSTProgressReportKeyForTask();
        if (v12)
        {
          [v3 setDataStoreValue:1 forKey:v12];
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v7))
        {
          *buf = 67109120;
          v18 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MADProgressManager][MACD] Unable to request progress report for unknown task %d", buf, 8u);
        }

        objc_autoreleasePoolPop(v10);
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }
}

void sub_10016B910(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = *v14;
    v7 = VCPLogToOSLogType[4];
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 unsignedIntegerValue];
        v12 = VCPLastBGSTProgressReportAttemptKeyForTask();
        if (v12)
        {
          [v3 setDataStoreValue:0 forKey:v12];
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v7))
        {
          *buf = 67109120;
          v18 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MADProgressManager][MACD] Unable to clear last progress report timestamp for unknown task %d", buf, 8u);
        }

        objc_autoreleasePoolPop(v10);
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }
}

void sub_10016C388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPPhotosMaintenanceProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10016C638(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v1)
  {
    v2 = *v21;
    type = VCPLogToOSLogType[4];
    v18 = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v21 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v20 + 1) + 8 * i);
        v5 = objc_autoreleasePoolPush();
        v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
        v7 = [v6 intValue];

        v8 = v7;
        v9 = [MADComputeSyncPayloadResults payloadDataForAsset:v4 targetStage:v8 embeddingResults:0 fullAnalysisResults:0];
        v10 = [PHAssetChangeRequest changeRequestForAsset:v4];
        [v10 setLocalAnalysisStage:v8];
        if (v9)
        {
          [v10 setComputeSyncMediaAnalysisPayload:v9];
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
        {
          v11 = [v4 localIdentifier];
          v12 = [v4 mediaAnalysisProperties];
          v13 = [v12 localAnalysisStage];
          *buf = 138412802;
          v25 = v11;
          v26 = 1024;
          v27 = v8;
          v28 = 1024;
          v29 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[ComputeSync|Backfill][%@] No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v18))
        {
          v14 = [v4 localIdentifier];
          v15 = [v9 length];
          *buf = 138412802;
          v25 = v14;
          v26 = 1024;
          v27 = v8;
          v28 = 1024;
          v29 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[ComputeSync|Backfill][%@] Publish analysis stage (%d) and compute sync payload (%d bytes)", buf, 0x18u);
        }

        objc_autoreleasePoolPop(v5);
      }

      v1 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v1);
  }
}

void sub_10016D474(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v2)
  {
    v3 = *v11;
    v4 = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [PHAssetChangeRequest changeRequestForAsset:v6];
        [v8 setVideoEmbeddingVersion:75];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v4))
        {
          v9 = [v6 localIdentifier];
          *buf = 138412546;
          v15 = v9;
          v16 = 1024;
          v17 = 75;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[VideoEmbedding|Backfill][%@] Publish video embedding version (v%d)", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v7);
      }

      v2 = [v1 countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v2);
  }
}

id sub_10016DF80(uint64_t a1)
{
  v1 = [*(a1 + 32) isCancelled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

id sub_10016FC68(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10016FCE8;
  v3[3] = &unk_100283000;
  v3[4] = *(a1 + 32);
  return [a2 prunePersistentHistoryWithCancelBlock:v3 extendTimeoutBlock:&stru_100287820];
}

void sub_10016FCF0(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_100170678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id obj)
{
  _Block_object_dispose((v13 - 160), 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_1001706C0(uint64_t a1, double a2)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2048;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[%@] Download progress: %.2f", &v6, 0x16u);
    }
  }
}

void sub_100170794(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MediaAnalysisLogLevel();
  if (v3)
  {
    if (v4 >= 3)
    {
      v5 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = *(a1 + 32);
        v7 = [v3 description];
        v11 = 138412546;
        v12 = v6;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@] Failed to download asset resource (%@)", &v11, 0x16u);
      }
    }

    if ([v3 mad_isDownloadThrottling])
    {
      v8 = -23808;
    }

    else
    {
      v8 = -23802;
    }

    *(*(*(a1 + 56) + 8) + 24) = v8;
  }

  else
  {
    if (v4 >= 6)
    {
      v9 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        v10 = *(a1 + 32);
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@] Successfully downloaded asset resource", &v11, 0xCu);
      }
    }

    [*(a1 + 64) vcp_reportDownloadBytes:objc_msgSend(*(a1 + 40) taskID:{"length"), *(a1 + 72)}];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100171010(uint64_t a1)
{
  v2 = +[MADStateHandler sharedStateHandler];
  [v2 addBreadcrumb:{@"Publishing batch size %lu", objc_msgSend(*(a1 + 32), "count")}];

  v3 = [*(a1 + 32) publish];
  if (v3)
  {
    v4 = v3;
    if (MediaAnalysisLogLevel() >= 3)
    {
      v5 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = *(a1 + 32);
        *buf = 138412290;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Failed to publish batch: %@", buf, 0xCu);
      }
    }

    *(*(a1 + 40) + 24) = v4;
  }

  v7 = +[MADStateHandler sharedStateHandler];
  [v7 addBreadcrumb:{@"Finished publishing batch size %lu", objc_msgSend(*(a1 + 32), "count")}];
}

void sub_1001720F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localIdentifier];
  [v3 removeProcessingStatusForLocalIdentifier:v4 taskID:{objc_msgSend(objc_opt_class(), "taskID")}];
}

void sub_100172180(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_1001721C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localIdentifier];
  [v3 removeProcessingStatusForLocalIdentifier:v4 taskID:{objc_msgSend(objc_opt_class(), "taskID")}];
}

void sub_100172260(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

const __CFString *VCPCoreAnalyticsFieldForFull(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        if (a1)
        {
          return @"UnifiedImageOnlyDownloadStepSeconds";
        }

        if (a2 == 1 && a3 == 8)
        {
          return @"UnifiedLivePhotoDownloadStepSeconds";
        }

        if (a2 == 2)
        {
          return @"UnifiedMovieDownloadStepSeconds";
        }
      }
    }

    else
    {
      if (a1)
      {
        return @"UnifiedImageOnlyEvaluationStepSeconds";
      }

      if (a2 == 1 && a3 == 8)
      {
        return @"UnifiedLivePhotoEvaluationStepSeconds";
      }

      if (a2 == 2)
      {
        return @"UnifiedMovieEvaluationStepSeconds";
      }
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        if (a1)
        {
          return @"UnifiedImageOnlyPrepareStepSeconds";
        }

        if (a2 == 1 && a3 == 8)
        {
          return @"UnifiedLivePhotoPrepareStepSeconds";
        }

        if (a2 == 2)
        {
          return @"UnifiedMoviePrepareStepSeconds";
        }

        break;
      case 3:
        if (a1)
        {
          return @"UnifiedImageOnlyProcessStepSeconds";
        }

        if (a2 == 1 && a3 == 8)
        {
          return @"UnifiedLivePhotoProcessStepSeconds";
        }

        if (a2 == 2)
        {
          return @"UnifiedMovieProcessStepSeconds";
        }

        break;
      case 4:
        if (a1)
        {
          return @"UnifiedImageOnlyPublishStepSeconds";
        }

        if (a2 == 1 && a3 == 8)
        {
          return @"UnifiedLivePhotoPublishStepSeconds";
        }

        if (a2 == 2)
        {
          return @"UnifiedMoviePublishStepSeconds";
        }

        break;
    }
  }

  v9 = v4;
  v10 = v5;
  if (MediaAnalysisLogLevel() >= 4)
  {
    v7 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[VCPPhotosCoreAnalytics] Could not determine analysis step field name", v8, 2u);
    }
  }

  return 0;
}

id _generateField(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_11;
    }

    v7 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v7))
    {
      goto LABEL_11;
    }

    v12 = 0;
    v8 = "Cannot generate field with nil tableName";
    v9 = &v12;
    goto LABEL_10;
  }

  if (v4)
  {
    v6 = [NSString stringWithFormat:@"%@%@", v4, v3];
    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v7 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 0;
      v8 = "Cannot generate field with nil prefix";
      v9 = buf;
LABEL_10:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, v8, v9, 2u);
    }
  }

LABEL_11:
  v6 = 0;
LABEL_12:

  return v6;
}

id VCPAnalyticsFieldMigrationDurationForTable(NSString *a1)
{
  v1 = _generateField(a1, @"Duration");

  return v1;
}

id VCPAnalyticsFieldMigrationInsertedForTable(NSString *a1)
{
  v1 = _generateField(a1, @"CountInserted");

  return v1;
}

id VCPAnalyticsFieldMigrationRetrievedForTable(NSString *a1)
{
  v1 = _generateField(a1, @"CountRetrieved");

  return v1;
}

uint64_t VCPCoreAnalyticsRoundToSignificantFigures(uint64_t a1)
{
  if (a1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = -a1;
  }

  v3 = v2;
  v4 = 0.0;
  if (v2 >= 0x64)
  {
    v5 = 0;
    do
    {
      v3 = v3 / 10.0;
      ++v5;
    }

    while (v3 >= 100.0);
    v4 = v5;
  }

  v6 = __exp10(v4) * llround(v3);
  v7 = -v6;
  if (a1 >= 0)
  {
    return v6;
  }

  return v7;
}

void VCPCoreAnalyticsQoSReportSpeed(void *a1, double a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = +[VCPMADCoreAnalyticsManager sharedManager];
    v9[0] = v3;
    v8[0] = VCPAnalyticsFieldKeyTaskName;
    v8[1] = VCPAnalyticsFieldKeyQoS;
    qos_class_self();
    v5 = VCPMAQoSDescription();
    v9[1] = v5;
    v8[2] = VCPAnalyticsFieldKeyAvgSpeed;
    v6 = [NSNumber numberWithDouble:a2];
    v9[2] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
    [v4 sendEvent:VCPAnalyticsEventDasDutyCycleTaskKey withAnalytics:v7];
  }
}

void sub_1001729C8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t VCPCoreAnalyticsReportEventBackgroundDailyReportForActivity(void *a1, uint64_t a2, void *a3)
{
  v181 = a1;
  v176 = a3;
  v185 = a2;
  if (a2 == 16)
  {
    if (MADIsPECProcessingEnabled())
    {
      v5 = objc_alloc_init(VIService);
      if ([v5 mad_isEncryptedSearchProxyEnabled])
      {

        goto LABEL_5;
      }

      if (MediaAnalysisLogLevel() >= 5)
      {
        v88 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v88))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v88, "Skipping PEC in daily report since disabled in this region", buf, 2u);
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 5)
    {
      v23 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "Skipping PEC in daily report since disabled by user settings", buf, 2u);
      }
    }

    v16 = 0;
    goto LABEL_123;
  }

LABEL_5:
  v6 = VCPSignPostLog();
  v7 = os_signpost_id_generate(v6);

  v8 = VCPSignPostLog();
  v9 = v8;
  v160 = v7 - 1;
  spid = v7;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 67109120;
    *&buf[4] = v185;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VCPAnalyticsEventBackgroundDailyReport", "%d", buf, 8u);
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v10 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 67109120;
      *&buf[4] = v185;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Starting daily report for activity %d", buf, 8u);
    }
  }

  v11 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v176];
  v226[0] = _NSConcreteStackBlock;
  v226[1] = 3221225472;
  v226[2] = sub_1001751F0;
  v226[3] = &unk_100287CB8;
  v175 = v176;
  v227 = v175;
  v180 = v11;
  v228 = v180;
  v178 = objc_retainBlock(v226);
  v225 = 0;
  v224 = 0;
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    v12 = [v175 mad_fetchRequest];
    v13 = [v12 fetchAssetCountForTaskID:v185 minimumAttempts:VCPAnalysisStickyFailureAttemptsThreshold];

    v14 = [v175 mad_fetchRequest];
    [v14 fetchAssetCountForTaskID:v185];
  }

  else
  {
    v13 = [v180 queryAssetCountForTaskID:v185 minimumAttempts:VCPAnalysisStickyFailureAttemptsThreshold];
    [v180 queryAssetCountForTaskID:v185];
  }

  if (+[MADManagedBackgroundAnalysisProgressHistory isMACDReadEnabled])
  {
    v15 = [v175 mad_fetchRequest];
    [v15 fetchAssetCountForTaskID:v185 totalAssets:&v225 processedAssets:&v224];
  }

  else
  {
    [v180 countAssetsForTaskID:v185 totalAssets:&v225 processedAssets:&v224];
  }

  if (v181 && (v181[2]() & 1) != 0)
  {
    v16 = 4294967168;
    goto LABEL_122;
  }

  v17 = v225;
  v18 = v224;
  if (v225)
  {
    v19 = v225;
    v20 = v224 * 100.0 / v19;
    v21 = 100.0 - v20;
    v22 = v13 * 100.0 / v19;
  }

  else
  {
    v20 = 0.0;
    v21 = 100.0;
    v22 = 0.0;
  }

  v24 = VCPStartTimestampKeyForTask();
  *type = v18;
  v164 = v13;
  v25 = (v178[2])(v178, v24);

  v26 = (v178[2])(v178, OSVersionUpdateTimestampKey);
  v166 = [NSDate dateWithTimeIntervalSinceReferenceDate:v25];
  v167 = [NSDate dateWithTimeIntervalSinceReferenceDate:v26];
  if (!v25)
  {
    v158 = -1;
    if (v26)
    {
      goto LABEL_28;
    }

LABEL_30:
    v156 = -1;
    goto LABEL_31;
  }

  v27 = +[NSCalendar currentCalendar];
  v28 = +[NSDate now];
  v29 = [v27 components:16 fromDate:v166 toDate:v28 options:0];
  v158 = [v29 day];

  if (!v26)
  {
    goto LABEL_30;
  }

LABEL_28:
  v30 = +[NSCalendar currentCalendar];
  v31 = +[NSDate now];
  v32 = [v30 components:16 fromDate:v167 toDate:v31 options:0];
  v156 = [v32 day];

LABEL_31:
  v33 = VCPPercentCompleteTimestampKeyForTask();
  v34 = (v178[2])(v178, v33);

  v35 = VCPPercentCompleteTimestampKeyForTask();
  v36 = (v178[2])(v178, v35);

  v37 = VCPPercentCompleteTimestampKeyForTask();
  v38 = (v178[2])(v178, v37);

  v39 = VCPPercentCompleteTimestampKeyForTask();
  v40 = (v178[2])(v178, v39);

  v41 = VCPPercentCompleteTimestampKeyForTask();
  v42 = (v178[2])(v178, v41);

  v43 = VCPPercentCompleteTimestampKeyForTask();
  v44 = (v178[2])(v178, v43);

  v168 = [NSDate dateWithTimeIntervalSinceReferenceDate:v34];
  v169 = [NSDate dateWithTimeIntervalSinceReferenceDate:v36];
  v170 = [NSDate dateWithTimeIntervalSinceReferenceDate:v38];
  v171 = [NSDate dateWithTimeIntervalSinceReferenceDate:v40];
  v172 = [NSDate dateWithTimeIntervalSinceReferenceDate:v42];
  v173 = [NSDate dateWithTimeIntervalSinceReferenceDate:v44];
  v223 = -1;
  v222 = -1;
  v221 = -1;
  v220 = -1;
  v219 = -1;
  v218 = -1;
  v217 = -1;
  v216 = -1;
  v215 = -1;
  v214 = -1;
  v213 = -1;
  v212 = -1;
  v207[0] = _NSConcreteStackBlock;
  v207[1] = 3221225472;
  v207[2] = sub_100175288;
  v207[3] = &unk_100287CE0;
  v210 = v25;
  v162 = v166;
  v208 = v162;
  v211 = v26;
  v163 = v167;
  v209 = v163;
  v174 = objc_retainBlock(v207);
  v45 = v174;
  (v174[2])(v174, v168, v34, &v223, &v222);
  (v45[2])(v45, v169, v36, &v221, &v220);
  (v45[2])(v45, v170, v38, &v219, &v218);
  (v45[2])(v45, v171, v40, &v217, &v216);
  (v45[2])(v45, v172, v42, &v215, &v214);
  (v45[2])(v45, v173, v44, &v213, &v212);
  v189 = 0;
  v187 = 0;
  v46 = 0;
  v154 = *type + v164;
  v153 = v17 - (*type + v164);
  *buf = 0;
  v243 = 0.0;
  v244 = 0.0;
  v239 = 0;
  v240 = 0;
  v241 = 0;
  v236 = 0.0;
  v237 = 0.0;
  v238 = 0.0;
  v206 = 0;
  do
  {
    *typea = v46;
    v182 = [NSDate dateWithTimeIntervalSinceNow:qword_10024CCA8[v46]];
    if (v181 && (v181[2]() & 1) != 0 || (!_os_feature_enabled_impl() ? (v47 = v180) : (v47 = MADManagedBackgroundActivitySchedule), (v16 = [v47 querySchedulingHistoryRecords:&v206 forActivityID:v185 sinceDate:v182], v181) && (v181[2]() & 1) != 0))
    {
      v16 = 4294967168;
      goto LABEL_121;
    }

    if (v16)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v87 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v87))
        {
          *v229 = 67109376;
          *v230 = v16;
          *&v230[4] = 1024;
          *&v230[6] = v185;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v87, "Trying querySchedulingHistoryRecords from DB returned err %d for activity %d", v229, 0xEu);
        }
      }

      goto LABEL_121;
    }

    v48 = 0;
    v183 = 0;
    while (v48 < [v206 count])
    {
      v49 = objc_autoreleasePoolPush();
      v50 = [v206 objectAtIndexedSubscript:v48];
      [v50 duration];
      if (v51 < 0.0)
      {
        v51 = 0.0;
      }

      *&buf[8 * *typea] = v51 + *&buf[8 * *typea];
      v52 = [v50 sessionLog];
      if (!v52)
      {
        v54 = 0;
        v55 = 0;
LABEL_52:
        v57 = 0;
        goto LABEL_56;
      }

      v53 = [v50 sessionLog];
      v54 = [v53 dataUsingEncoding:4];
      if (v54 && ([NSJSONSerialization JSONObjectWithData:v54 options:0 error:0], (v55 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v56 = VCPTaskIDDescription();
        v57 = [v55 objectForKey:v56];

        if (!v57)
        {
          goto LABEL_52;
        }

        if (v185 == 1)
        {
          v58 = [v57 objectForKeyedSubscript:@"NumberOfLivePhotosAnalyzedFullResource"];
          v59 = [v58 longLongValue];

          v60 = [v57 objectForKeyedSubscript:@"NumberOfMoviesAnalyzedFullResource"];
          v61 = [v60 longLongValue];

          v52 = [v57 objectForKeyedSubscript:@"NumberOfPhotosAnalyzedFullResource"];
          v62 = &v61[v59 + v183 + [v52 longLongValue]];
        }

        else
        {
          v52 = [v57 objectForKeyedSubscript:@"NumberOfAssetsAnalyzed"];
          v62 = [v52 longLongValue] + v183;
        }

        v183 = v62;
      }

      else
      {

        v55 = 0;
        v57 = 0;
      }

LABEL_56:
      if (*typea)
      {
        v63 = 0;
      }

      else
      {
        v63 = [v50 exitStatus] == -18;
      }

      objc_autoreleasePoolPop(v49);
      v189 += *typea == 0;
      v187 += v63;
      ++v48;
    }

    *(&v239 + *typea) = v183;
    if (v225)
    {
      v64 = v183 * 100.0 / v225;
    }

    else
    {
      v64 = 0.0;
    }

    *(&v236 + *typea) = v64;

    v46 = *typea + 1;
  }

  while (*typea != 2);
  v65 = VCPOSMajorOfLastVersionUpdateKeyForTask();
  v66 = (v178[2])(v178, v65);

  v67 = VCPOSMinorOfLastVersionUpdateKeyForTask();
  v68 = (v178[2])(v178, v67);

  v234[0] = @"ActivityID";
  typed = [NSNumber numberWithUnsignedInteger:v185];
  v235[0] = typed;
  v234[1] = @"AttemptedCount";
  v186 = [NSNumber numberWithLongLong:v154];
  v235[1] = v186;
  v234[2] = @"AttemptedCountInteger";
  v184 = [NSNumber numberWithLongLong:v154];
  v235[2] = v184;
  v234[3] = @"AttemptedPercentage";
  v179 = [NSNumber numberWithDouble:v20 + v22];
  v235[3] = v179;
  v234[4] = @"CrashCount";
  v177 = [NSNumber numberWithLongLong:v187];
  v235[4] = v177;
  v234[5] = @"CrashCountInteger";
  v188 = [NSNumber numberWithLongLong:v187];
  v235[5] = v188;
  v234[6] = @"OSMajorOfLastVersionUpdate";
  v155 = [NSNumber numberWithLongLong:v66];
  v235[6] = v155;
  v234[7] = @"OSMinorOfLastVersionUpdate";
  v152 = [NSNumber numberWithLongLong:v68];
  v235[7] = v152;
  v234[8] = @"DaysSinceOSUpdate";
  v157 = [NSNumber numberWithLongLong:v156];
  v235[8] = v157;
  v234[9] = @"DaysSinceVersionUpdate";
  v159 = [NSNumber numberWithLongLong:v158];
  v235[9] = v159;
  v234[10] = @"DaysToComplete50";
  v151 = [NSNumber numberWithLongLong:v223];
  v235[10] = v151;
  v234[11] = @"DaysToComplete90";
  v150 = [NSNumber numberWithLongLong:v221];
  v235[11] = v150;
  v234[12] = @"DaysToComplete99";
  v149 = [NSNumber numberWithLongLong:v219];
  v235[12] = v149;
  v234[13] = @"DaysToComplete50SinceOSUpdate";
  v148 = [NSNumber numberWithLongLong:v222];
  v235[13] = v148;
  v234[14] = @"DaysToComplete90SinceOSUpdate";
  v147 = [NSNumber numberWithLongLong:v220];
  v235[14] = v147;
  v234[15] = @"DaysToComplete99SinceOSUpdate";
  v146 = [NSNumber numberWithLongLong:v218];
  v235[15] = v146;
  v234[16] = @"DaysToComplete50WithFails";
  v145 = [NSNumber numberWithLongLong:v217];
  v235[16] = v145;
  v234[17] = @"DaysToComplete90WithFails";
  v144 = [NSNumber numberWithLongLong:v215];
  v235[17] = v144;
  v234[18] = @"DaysToComplete99WithFails";
  v143 = [NSNumber numberWithLongLong:v213];
  v235[18] = v143;
  v234[19] = @"DaysToComplete50WithFailsSinceOSUpdate";
  v142 = [NSNumber numberWithLongLong:v216];
  v235[19] = v142;
  v234[20] = @"DaysToComplete90WithFailsSinceOSUpdate";
  v141 = [NSNumber numberWithLongLong:v214];
  v235[20] = v141;
  v234[21] = @"DaysToComplete99WithFailsSinceOSUpdate";
  v140 = [NSNumber numberWithLongLong:v212];
  v235[21] = v140;
  v234[22] = @"FailedCount";
  v139 = [NSNumber numberWithUnsignedLongLong:v164];
  v235[22] = v139;
  v234[23] = @"FailedCountInteger";
  v165 = [NSNumber numberWithUnsignedLongLong:v164];
  v235[23] = v165;
  v234[24] = @"FailedPercentage";
  v138 = [NSNumber numberWithDouble:v22];
  v235[24] = v138;
  v234[25] = @"InvokedTimes";
  v137 = [NSNumber numberWithLongLong:v189];
  v235[25] = v137;
  v234[26] = @"InvokedTimesInteger";
  v190 = [NSNumber numberWithLongLong:v189];
  v235[26] = v190;
  v234[27] = @"ProcessedCount";
  v136 = [NSNumber numberWithUnsignedLongLong:v224];
  v235[27] = v136;
  v234[28] = @"ProcessedCountInteger";
  v135 = [NSNumber numberWithUnsignedLongLong:v224];
  v235[28] = v135;
  v234[29] = @"ProcessedCount1Day";
  v69 = v239;
  v134 = [NSNumber numberWithLongLong:v239];
  v235[29] = v134;
  v234[30] = @"ProcessedCount1DayInteger";
  v133 = [NSNumber numberWithLongLong:v69];
  v235[30] = v133;
  v234[31] = @"ProcessedCount1Week";
  v70 = v240;
  v132 = [NSNumber numberWithLongLong:v240];
  v235[31] = v132;
  v234[32] = @"ProcessedCount1WeekInteger";
  v131 = [NSNumber numberWithLongLong:v70];
  v235[32] = v131;
  v234[33] = @"ProcessedCount1Month";
  v71 = v241;
  v130 = [NSNumber numberWithLongLong:v241];
  v235[33] = v130;
  v234[34] = @"ProcessedCount1MonthInteger";
  v129 = [NSNumber numberWithLongLong:v71];
  v235[34] = v129;
  v234[35] = @"ProcessedPercentage";
  v128 = [NSNumber numberWithDouble:v20];
  v235[35] = v128;
  v234[36] = @"ProcessedPercentage1Day";
  v127 = [NSNumber numberWithDouble:v236];
  v235[36] = v127;
  v234[37] = @"ProcessedPercentage1Week";
  v126 = [NSNumber numberWithDouble:v237];
  v235[37] = v126;
  v234[38] = @"ProcessedPercentage1Month";
  v125 = [NSNumber numberWithDouble:v238];
  v235[38] = v125;
  v234[39] = @"RunTime1Day";
  v72 = *buf;
  v124 = [NSNumber numberWithDouble:*buf];
  v235[39] = v124;
  v234[40] = @"RunTime1Week";
  v73 = [NSNumber numberWithDouble:v243];
  v235[40] = v73;
  v234[41] = @"RunTime1Month";
  v74 = [NSNumber numberWithDouble:v244];
  v235[41] = v74;
  v235[42] = @"?";
  v234[42] = @"SampleAssetSubtype";
  v234[43] = @"SampleAssetType";
  v235[43] = &off_100294CF8;
  v235[44] = @"?";
  v234[44] = @"SampleCodec";
  v234[45] = @"SampleHeight";
  v235[45] = &off_100294CF8;
  v235[46] = @"?";
  v234[46] = @"SampleUTType";
  v234[47] = @"SampleWidth";
  v235[47] = &off_100294CF8;
  v234[48] = @"TotalCount";
  v75 = [NSNumber numberWithUnsignedLongLong:v225];
  v235[48] = v75;
  v234[49] = @"TotalCountInteger";
  v76 = [NSNumber numberWithUnsignedLongLong:v225];
  v235[49] = v76;
  v234[50] = @"TotalRunTime";
  v77 = [NSNumber numberWithDouble:v72];
  v235[50] = v77;
  v234[51] = @"TotalRunTimeInteger";
  v78 = [NSNumber numberWithDouble:v72];
  v235[51] = v78;
  v234[52] = @"UnprocessedCount";
  v79 = [NSNumber numberWithLongLong:v153];
  v235[52] = v79;
  v234[53] = @"UnprocessedCountInteger";
  v80 = [NSNumber numberWithLongLong:v153];
  v235[53] = v80;
  v234[54] = @"UnprocessedPercentage";
  v81 = [NSNumber numberWithDouble:v21];
  v235[54] = v81;
  v82 = [NSDictionary dictionaryWithObjects:v235 forKeys:v234 count:55];
  v182 = [v82 mutableCopy];

  if (v185 == 1)
  {
    v202[0] = _NSConcreteStackBlock;
    v202[1] = 3221225472;
    v202[2] = sub_1001753D4;
    v202[3] = &unk_100287D08;
    v203 = v175;
    v204 = v182;
    v205 = v180;
    v83 = objc_retainBlock(v202);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisStillImageCountKey, 0);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisStillImageProcessedKey, 0);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisLivePhotoCountKey, 0);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisLivePhotoProcessedKey, 0);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisVideoCountKey, 1);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisSlowmoVideoCountKey, 1);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisLongVideoCountKey, 1);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisVideoProcessedKey, 1);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisSlowmoVideoProcessedKey, 1);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisLongVideoProcessedKey, 1);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisVideoFailedKey, 1);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisSlowmoVideoFailedKey, 1);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisLongVideoFailedKey, 1);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisVideoGatedKey, 1);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisSlowmoVideoGatedKey, 1);
    (v83[2])(v83, VCPAnalysisCountFullAnalysisLongVideoGatedKey, 1);
    (v83[2])(v83, VCPAnalysisFullAnalysisVideoDurationKey, 1);
    (v83[2])(v83, VCPAnalysisFullAnalysisSlowmoVideoDurationKey, 1);
    (v83[2])(v83, VCPAnalysisFullAnalysisLongVideoDurationKey, 1);
    (v83[2])(v83, VCPAnalysisFullAnalysisProcessedVideoDurationKey, 1);
    (v83[2])(v83, VCPAnalysisFullAnalysisProcessedSlowmoVideoDurationKey, 1);
    (v83[2])(v83, VCPAnalysisFullAnalysisProcessedLongVideoDurationKey, 1);
    (v83[2])(v83, VCPAnalysisFullAnalysisFailedVideoDurationKey, 1);
    (v83[2])(v83, VCPAnalysisFullAnalysisFailedSlowmoVideoDurationKey, 1);
    (v83[2])(v83, VCPAnalysisFullAnalysisFailedLongVideoDurationKey, 1);
    (v83[2])(v83, VCPAnalysisFullAnalysisGatedVideoDurationKey, 1);
    (v83[2])(v83, VCPAnalysisFullAnalysisGatedSlowmoVideoDurationKey, 1);
    (v83[2])(v83, VCPAnalysisFullAnalysisGatedLongVideoDurationKey, 1);
  }

  v201 = 0;
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    v84 = [v175 mad_fetchRequest];
    v85 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
    v86 = [v84 fetchProcessingErrorCodeCounts:&v201 taskID:v185 sinceDate:v85 additionalPredicates:0];
  }

  else
  {
    v84 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
    v86 = [v180 fetchProcessingErrorCodeCounts:&v201 withTaskID:v185 sinceDate:v84 additionalPredicates:0];
  }

  if (v86)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v89 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v89))
      {
        *v229 = 67109376;
        *v230 = v86;
        *&v230[4] = 1024;
        *&v230[6] = v185;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v89, "Trying fetchProcessingErrorCodeCounts from DB returned err %d for activity %d", v229, 0xEu);
      }
    }
  }

  v191 = +[NSMutableArray array];
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v90 = v201;
  v91 = [v90 countByEnumeratingWithState:&v197 objects:v233 count:16];
  if (v91)
  {
    v92 = *v198;
    typeb = VCPLogToOSLogType[3];
LABEL_84:
    v93 = 0;
    while (1)
    {
      if (*v198 != v92)
      {
        objc_enumerationMutation(v90);
      }

      v94 = *(*(&v197 + 1) + 8 * v93);
      v95 = objc_autoreleasePoolPush();
      if ([v94 intValue] && objc_msgSend(v94, "intValue") != 1)
      {
        v97 = [MADErrorDescriptor alloc];
        v98 = v97;
        if (v97)
        {
          v99 = v97;
          v100 = [v94 intValue];
          v101 = [v201 objectForKey:v94];
          v102 = -[MADErrorDescriptor initWithErrorCode:count:errorLine:](v99, "initWithErrorCode:count:errorLine:", v100, [v101 intValue], 0);
          [v191 addObject:v102];

          v96 = 0;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, typeb))
          {
            *v229 = 67109120;
            *v230 = v185;
            _os_log_impl(&_mh_execute_header, &_os_log_default, typeb, "Failed to alloc MADErrorDescriptor during fail retrieval for activity %d", v229, 8u);
          }

          v96 = 24;
        }
      }

      else
      {
        v96 = 25;
      }

      objc_autoreleasePoolPop(v95);
      if (v96 != 25)
      {
        if (v96)
        {
          break;
        }
      }

      if (v91 == ++v93)
      {
        v91 = [v90 countByEnumeratingWithState:&v197 objects:v233 count:16];
        if (v91)
        {
          goto LABEL_84;
        }

        break;
      }
    }
  }

  typec = [v191 sortedArrayUsingComparator:&stru_100287D48];
  v103 = +[NSMutableArray array];
  for (i = 0; ; ++i)
  {
    v105 = [typec count];
    v106 = v105 >= 3 ? 3 : v105;
    if (i >= v106)
    {
      break;
    }

    v107 = objc_autoreleasePoolPush();
    v108 = [typec objectAtIndexedSubscript:i];
    [v108 errorCode];
    v109 = MADErrorStringFromCode();
    v110 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v108 count]);
    v111 = [NSString stringWithFormat:@"%@/%@", v109, v110];

    [v103 addObject:v111];
    objc_autoreleasePoolPop(v107);
  }

  while ([v103 count] <= 2)
  {
    v112 = +[NSNull null];
    [v103 addObject:v112];
  }

  v232[0] = @"Top1Failure";
  v232[1] = @"Top2Failure";
  v232[2] = @"Top3Failure";
  v113 = [NSArray arrayWithObjects:v232 count:3];
  v114 = VCPLogToOSLogType[5];
  for (j = 1; j != 4; ++j)
  {
    v116 = objc_autoreleasePoolPush();
    v117 = [v103 objectAtIndexedSubscript:j - 1];
    v118 = [v113 objectAtIndexedSubscript:j - 1];
    [v182 setObject:v117 forKey:v118];

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v114))
    {
      v119 = [v103 objectAtIndexedSubscript:j - 1];
      *v229 = 134218242;
      *v230 = j;
      *&v230[8] = 2112;
      v231 = v119;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v114, "Reporting daily top%lld Failure: %@", v229, 0x16u);
    }

    objc_autoreleasePoolPop(v116);
  }

  v120 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v120 sendEvent:@"com.apple.mediaanalysisd.background.dailyreport" withAnalytics:v182];

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v114))
  {
    *v229 = 67109120;
    *v230 = v185;
    _os_log_impl(&_mh_execute_header, &_os_log_default, v114, "Finished daily report for activity %d", v229, 8u);
  }

  v121 = VCPSignPostLog();
  v122 = v121;
  if (v160 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v121))
  {
    *v229 = 67109120;
    *v230 = v185;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v122, OS_SIGNPOST_INTERVAL_END, spid, "VCPAnalyticsEventBackgroundDailyReport", "%d", v229, 8u);
  }

  v16 = 0;
LABEL_121:

LABEL_122:
LABEL_123:

  return v16;
}

id sub_1001751F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    v4 = [*(a1 + 32) mad_fetchRequest];
    v5 = [v4 dataStoreValueForKey:v3];
  }

  else
  {
    v5 = [*(a1 + 40) valueForKey:v3];
  }

  return v5;
}

void sub_100175288(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  if (a1[6] <= a3)
  {
    v14 = v9;
    v10 = +[NSCalendar currentCalendar];
    v11 = [v10 components:16 fromDate:a1[4] toDate:v14 options:0];
    *a4 = [v11 day];

    if (a1[7] <= a3)
    {
      v12 = +[NSCalendar currentCalendar];
      v13 = [v12 components:16 fromDate:a1[5] toDate:v14 options:0];
      *a5 = [v13 day];
    }

    else
    {
      *a5 = -2;
    }

    v9 = v14;
  }
}

void sub_1001753D4(id *a1, void *a2, int a3)
{
  v10 = a2;
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    v5 = [a1[4] mad_fetchRequest];
    v6 = [v5 fetchDataStoreValueIfKeyExists:v10];

    if (v6)
    {
      if (a3)
      {
        v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", VCPCoreAnalyticsRoundToSignificantFigures([v6 longLongValue]));
        [a1[5] setObject:v7 forKeyedSubscript:v10];
      }

      else
      {
        [a1[5] setObject:v6 forKeyedSubscript:v10];
      }
    }
  }

  else
  {
    if (![a1[6] keyExistsInKeyValueStore:v10])
    {
      goto LABEL_12;
    }

    v9 = a1[5];
    v8 = a1[6];
    if (a3)
    {
      +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", VCPCoreAnalyticsRoundToSignificantFigures([v8 valueForKey:v10]));
    }

    else
    {
      +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 valueForKey:v10]);
    }
    v6 = ;
    [v9 setObject:v6 forKey:v10];
  }

LABEL_12:
}

uint64_t VCPCoreAnalyticsReportEventBackgroundDailyReport(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0;
  do
  {
    v6 = objc_autoreleasePoolPush();
    v7 = VCPCoreAnalyticsReportEventBackgroundDailyReportForActivity(v3, qword_10024CCC0[v5], v4);
    objc_autoreleasePoolPop(v6);
    if (v7)
    {
      break;
    }
  }

  while (v5++ != 6);

  return v7;
}

void VCPCoreAnalyticsReportEventDasScheduling(uint64_t a1, uint64_t a2, double a3)
{
  v35 = VCPTaskIDDescription();
  v37 = VCPVersionKeyForTask();
  v36 = VCPStartTimestampKeyForTask();
  if (v37 && v36)
  {
    v34 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
    v32 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:?];
    if (+[MADManagedKeyValueStore isMACDReadEnabled])
    {
      v6 = [v34 mad_fetchRequest];
      v7 = [v6 dataStoreValueForKey:v37];
    }

    else
    {
      v7 = [v32 valueForKey:v37];
    }

    if (+[MADManagedKeyValueStore isMACDReadEnabled])
    {
      v8 = [v34 mad_fetchRequest];
      v9 = [v8 dataStoreValueForKey:v36];
    }

    else
    {
      v9 = [v32 valueForKey:v36];
    }

    v31 = [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
    v10 = +[NSCalendar currentCalendar];
    v11 = +[NSDate now];
    v30 = [v10 components:16 fromDate:v31 toDate:v11 options:0];

    v12 = objc_alloc_init(VCPSystemMonitor);
    [(VCPSystemMonitor *)v12 enable];
    v33 = [(VCPSystemMonitor *)v12 checkFullyCharged];
    v13 = [(VCPSystemMonitor *)v12 checkPluggedIn];
    v14 = [(VCPSystemMonitor *)v12 checkScreenLocked];
    v15 = [(VCPSystemMonitor *)v12 checkThermalPressure];
    [(VCPSystemMonitor *)v12 disable];
    if (a1 == 16)
    {
      +[VCPMADCoreAnalyticsManager sharedAuxiliaryManager];
    }

    else
    {
      +[VCPMADCoreAnalyticsManager sharedManager];
    }
    v29 = ;
    v39[0] = v35;
    v38[0] = @"Activity";
    v38[1] = @"Duration";
    v27 = [NSNumber numberWithDouble:a3];
    v39[1] = v27;
    v38[2] = @"ExitStatus";
    v28 = [NSNumber numberWithInt:a2];
    v39[2] = v28;
    v38[3] = @"NumberOfAssets";
    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v34 vcp_assetCountForTaskID:a1]);
    v39[3] = v25;
    v38[4] = @"PluggedIn";
    v26 = [NSNumber numberWithInteger:v13];
    v39[4] = v26;
    v38[5] = @"FullyCharged";
    v16 = [v33 objectForKeyedSubscript:@"FullyCharged"];
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v16 BOOLValue]);
    v39[5] = v17;
    v38[6] = @"IsCharging";
    v18 = [v33 objectForKeyedSubscript:@"IsCharging"];
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 BOOLValue]);
    v39[6] = v19;
    v38[7] = @"ScreenLocked";
    v20 = [NSNumber numberWithInteger:v14];
    v39[7] = v20;
    v38[8] = @"ThermalPressure";
    v21 = [NSNumber numberWithUnsignedLongLong:v15];
    v39[8] = v21;
    v38[9] = @"ActivityAnalysisVersion";
    v22 = [NSNumber numberWithLongLong:v7];
    v39[9] = v22;
    v38[10] = @"ActivityAnalysisVersionDaysSinceEstablished";
    v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v30 day]);
    v39[10] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:11];
    [v29 sendEvent:@"com.apple.mediaanalysisd.das.scheduling" withAnalytics:v24];
  }
}

id VCPCoreAnalyticsDiscretizeValueToIntervalStart(NSNumber *a1, NSArray *a2)
{
  v3 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSArray *)a2 reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [(NSNumber *)v3 intValue];
        if (v9 >= [v8 intValue])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

void VCPCoreAnalyticsReportEventAnalysisProgress(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if (qword_1002B8498 != -1)
  {
    sub_100177AE0();
  }

  v10 = [NSNumber numberWithInteger:a2];
  v11 = VCPCoreAnalyticsDiscretizeValueToIntervalStart(v10, qword_1002B8478);

  v12 = &off_100295130;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &off_100295130;
  }

  v14 = [NSNumber numberWithInteger:a3];
  v15 = VCPCoreAnalyticsDiscretizeValueToIntervalStart(v14, qword_1002B8480);

  if (v15)
  {
    v12 = v15;
  }

  v16 = [NSNumber numberWithUnsignedInteger:a4];
  v17 = VCPCoreAnalyticsDiscretizeValueToIntervalStart(v16, qword_1002B8488);

  if (v17)
  {
    v18 = [NSNumber numberWithUnsignedInteger:a5];
    v19 = VCPCoreAnalyticsDiscretizeValueToIntervalStart(v18, qword_1002B8490);

    if (v19)
    {
      v20 = +[VCPMADCoreAnalyticsManager sharedManager];
      v26[0] = v9;
      v25[0] = @"AnalysisType";
      v25[1] = @"DaysSinceStart";
      v21 = [NSNumber numberWithInteger:a2];
      v26[1] = v21;
      v26[2] = v13;
      v25[2] = @"DaysSinceStartDiscrete";
      v25[3] = @"DaysToComplete";
      v22 = [NSNumber numberWithInteger:a3];
      v26[3] = v22;
      v26[4] = v12;
      v25[4] = @"DaysToCompleteDiscrete";
      v25[5] = @"ProgressPercentage";
      v23 = [NSNumber numberWithUnsignedInteger:a4];
      v26[5] = v23;
      v26[6] = v17;
      v25[6] = @"ProgressPercentageDiscrete";
      v25[7] = @"AllowedAssetsCountDiscrete";
      v26[7] = v19;
      v24 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:8];
      [v20 sendEvent:@"com.apple.mediaanalysisd.analysisprogress" withAnalytics:v24];
    }
  }
}

void sub_1001760B0(_Unwind_Exception *a1)
{
  v11 = v4;

  _Unwind_Resume(a1);
}

void sub_100176168(id a1)
{
  v1 = qword_1002B8478;
  qword_1002B8478 = &off_100296458;

  v2 = qword_1002B8480;
  qword_1002B8480 = &off_100296470;

  v3 = qword_1002B8488;
  qword_1002B8488 = &off_100296488;

  v4 = qword_1002B8490;
  qword_1002B8490 = &off_1002964A0;
}

void VCPCoreAnalyticsReportEventMomentsDeferredProcessing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, double a9)
{
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = +[NSDate now];
  [v20 timeIntervalSince1970];
  v22 = v21;

  if (v22 < a9)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        *buf = 134218240;
        v51 = a9;
        v52 = 2048;
        v53 = v22;
        v24 = "[Moments] Processing start time (%f) > end time (%f), skipping CoreAnalytics report";
LABEL_18:
        v30 = v23;
        v31 = 22;
LABEL_23:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v30, v24, buf, v31);
        goto LABEL_24;
      }
    }

    goto LABEL_24;
  }

  if (!v17)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_24;
    }

    v27 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v27))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v24 = "[Moments] No request date, skipping CoreAnalytics report";
    goto LABEL_22;
  }

  [v17 timeIntervalSince1970];
  v26 = v25;
  if (v25 <= a9)
  {
    if (v18)
    {
      [v18 timeIntervalSince1970];
      v29 = v28;
      if (v28 > a9)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v23 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v23))
          {
            *buf = 134218240;
            v51 = v29;
            v52 = 2048;
            v53 = a9;
            v24 = "[Moments] Earliest asset modification time (%f) > processing start time (%f), skipping CoreAnalytics report";
            goto LABEL_18;
          }
        }

        goto LABEL_24;
      }

      v32 = objc_alloc_init(VCPSystemMonitor);
      [(VCPSystemMonitor *)v32 enable];
      v33 = [(VCPSystemMonitor *)v32 checkPluggedIn];
      [(VCPSystemMonitor *)v32 disable];
      if (v33)
      {
        if (v33 != 1)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v41 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v41))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "[Moments] Failed to query if device is on battery, skipping CoreAnalytics report", buf, 2u);
            }
          }

          goto LABEL_33;
        }

        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      v47 = +[VCPMADCoreAnalyticsManager sharedManager];
      v48[0] = @"NumRequestedAssets";
      v45 = [NSNumber numberWithInteger:a1];
      v49[0] = v45;
      v48[1] = @"NumActualProcessedAssets";
      v44 = [NSNumber numberWithInteger:a2];
      v49[1] = v44;
      v48[2] = @"NumAlreadyProcessedAssets";
      v43 = [NSNumber numberWithInteger:a3];
      v49[2] = v43;
      v48[3] = @"NumPendingAssets";
      v42 = [NSNumber numberWithInteger:a4];
      v49[3] = v42;
      v48[4] = @"AnalysisDuration";
      v46 = [NSNumber numberWithInteger:(v22 - a9)];
      v49[4] = v46;
      v48[5] = @"ProcessingDeferredDuration";
      v35 = [NSNumber numberWithInteger:(a9 - v26)];
      v49[5] = v35;
      v48[6] = @"NumDaysSinceEarliestAssetModificationDate";
      v36 = [NSNumber numberWithInteger:((a9 - v29) / 86400.0)];
      v49[6] = v36;
      v48[7] = @"AnalysisType";
      v37 = [NSNumber numberWithUnsignedInteger:a7];
      v49[7] = v37;
      v48[8] = @"IsOnBattery";
      v38 = [NSNumber numberWithBool:v34];
      v49[8] = v38;
      v48[9] = @"LibraryScale";
      v39 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 vcp_libraryScale]);
      v49[9] = v39;
      v40 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:10];
      [v47 sendEvent:@"com.apple.mediaanalysisd.MomentsDeferredProcessing" withAnalytics:v40];

LABEL_33:
      goto LABEL_24;
    }

    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_24;
    }

    v27 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v27))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v24 = "[Moments] No earliest asset modification date, skipping CoreAnalytics report";
LABEL_22:
    v30 = v27;
    v31 = 2;
    goto LABEL_23;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v23 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v23))
    {
      *buf = 134218240;
      v51 = v26;
      v52 = 2048;
      v53 = a9;
      v24 = "[Moments] Request time (%f) > processing start time (%f), skipping CoreAnalytics report";
      goto LABEL_18;
    }
  }

LABEL_24:
}

const __CFString *VCPCoreAnalyticsSessionEventName(uint64_t a1)
{
  if (a1 > 18)
  {
    if (a1 > 256)
    {
      switch(a1)
      {
        case 257:
          return @"com.apple.mediaanalysisd.BackupRunSession";
        case 258:
          return @"com.apple.mediaanalysisd.TelemetryRunSession";
        case 259:
          return @"com.apple.mediaanalysisd.DatabaseMigrationSession";
      }
    }

    else
    {
      switch(a1)
      {
        case 19:
          return @"com.apple.mediaanalysisd.MaintenanceRunSession";
        case 21:
          return @"com.apple.mediaanalysisd.PersonAnalysisRunSession";
        case 22:
          return @"com.apple.mediaanalysisd.FullClusterAnalysisRunSession";
      }
    }
  }

  else if (a1 > 9)
  {
    switch(a1)
    {
      case 10:
        return @"com.apple.mediaanalysisd.OCRAnalysisRunSession";
      case 12:
        return @"com.apple.mediaanalysisd.VisualSearchAnalysisRunSession";
      case 16:
        return @"com.apple.mediaanalysisd.PECAnalysisRunSession";
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        return @"com.apple.mediaanalysisd.FullAnalysisRunSession";
      case 2:
        return @"com.apple.mediaanalysisd.SceneAnalysisRunSession";
      case 3:
        return @"com.apple.mediaanalysisd.FaceAnalysisRunSession";
    }
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v2 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = VCPTaskIDDescription();
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[CAM] No session event for %@", &v4, 0xCu);
    }
  }

  return 0;
}

id VCPCoreAnalyticsSessionAnalyticData()
{
  v18 = +[NSMutableDictionary dictionary];
  v0 = +[VCPMADCoreAnalyticsManager sharedManager];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = [&off_1002964B8 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v1)
  {
    v3 = *v20;
    v4 = VCPLogToOSLogType[7];
    *&v2 = 138412290;
    v17 = v2;
    do
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v20 != v3)
        {
          objc_enumerationMutation(&off_1002964B8);
        }

        v6 = *(*(&v19 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        [v6 unsignedIntValue];
        v8 = VCPTaskIDDescription();
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v4))
        {
          *buf = v17;
          v24 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[CAM] Fetching session analytic data for %@", buf, 0xCu);
        }

        v9 = VCPCoreAnalyticsSessionEventName([v6 unsignedIntValue]);
        v10 = [v0 fetchSessionEvent:v9];
        if (v10)
        {
          [v18 setObject:v10 forKeyedSubscript:v8];
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v4))
          {
            *buf = v17;
            v24 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[CAM] Fetched session analytic data - %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v7);
      }

      v1 = [&off_1002964B8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v1);
  }

  v11 = +[VCPLogManager dateFormatterDateTime];
  v12 = +[NSDate now];
  v13 = [v11 stringFromDate:v12];
  [v18 setObject:v13 forKeyedSubscript:@"timestamp"];

  v14 = [NSNumber numberWithInt:getpid()];
  [v18 setObject:v14 forKeyedSubscript:@"PID"];

  v15 = [NSDictionary dictionaryWithDictionary:v18];

  return v15;
}

id VCPCoreAnalyticsAuxillarySessionAnalyticData(void)
{
  v18 = +[NSMutableDictionary dictionary];
  v0 = +[VCPMADCoreAnalyticsManager sharedAuxiliaryManager];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = [&off_1002964D0 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v1)
  {
    v3 = *v20;
    v4 = VCPLogToOSLogType[7];
    *&v2 = 138412290;
    v17 = v2;
    do
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v20 != v3)
        {
          objc_enumerationMutation(&off_1002964D0);
        }

        v6 = *(*(&v19 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        [v6 unsignedIntValue];
        v8 = VCPTaskIDDescription();
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v4))
        {
          *buf = v17;
          v24 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[CAM] Fetching session analytic data for %@", buf, 0xCu);
        }

        v9 = VCPCoreAnalyticsSessionEventName([v6 unsignedIntValue]);
        v10 = [v0 fetchSessionEvent:v9];
        if (v10)
        {
          [v18 setObject:v10 forKeyedSubscript:v8];
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v4))
          {
            *buf = v17;
            v24 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[CAM] Fetched session analytic data - %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v7);
      }

      v1 = [&off_1002964D0 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v1);
  }

  v11 = +[VCPLogManager dateFormatterDateTime];
  v12 = +[NSDate now];
  v13 = [v11 stringFromDate:v12];
  [v18 setObject:v13 forKeyedSubscript:@"timestamp"];

  v14 = [NSNumber numberWithInt:getpid()];
  [v18 setObject:v14 forKeyedSubscript:@"PID"];

  v15 = [NSDictionary dictionaryWithDictionary:v18];

  return v15;
}

void VCPCoreAnalyticsSessionLogDatabaseUpdate(uint64_t a1, void *a2, unsigned int a3, double a4)
{
  v7 = a2;
  v34 = [NSString stringWithFormat:@"[CAM][TaskID-%d]", a1];
  if (a1 == 16)
  {
    VCPCoreAnalyticsAuxillarySessionAnalyticData();
  }

  else
  {
    VCPCoreAnalyticsSessionAnalyticData();
  }
  v8 = ;
  v9 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  v33 = a3;
  v10 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v9];

  if (_os_feature_enabled_impl())
  {
    v37 = 0;
    v11 = &v37;
    [MADManagedBackgroundActivitySchedule querySchedulingHistoryRecords:&v37 forActivityID:a1 sinceDate:v7];
  }

  else
  {
    v36 = 0;
    v11 = &v36;
    [v10 querySchedulingHistoryRecords:&v36 forActivityID:a1 sinceDate:v7];
  }

  v12 = *v11;
  v13 = [v12 firstObject];
  v14 = v13 == 0;

  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v23 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        *buf = 138412290;
        v39 = v34;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ No existing session log", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = [v12 firstObject];
    v16 = [v15 sessionLog];
    v17 = [v16 dataUsingEncoding:4];

    if (v17)
    {
      v35 = 0;
      v18 = [NSJSONSerialization JSONObjectWithData:v17 options:0 error:&v35];
      v32 = v35;
      if (v18)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v19 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v19))
          {
            v30 = [v12 firstObject];
            v20 = [v30 sessionLog];
            *buf = 138412802;
            v39 = v34;
            v40 = 2112;
            v41 = v20;
            v42 = 2112;
            v43 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Merging existing session log %@ with new session log %@", buf, 0x20u);
          }
        }

        v21 = [v18 mutableCopy];
        [v21 addEntriesFromDictionary:v8];
        v22 = [NSDictionary dictionaryWithDictionary:v21];

        v8 = v22;
      }

      else if (MediaAnalysisLogLevel() >= 4)
      {
        v24 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          v31 = [v12 firstObject];
          v25 = [v31 sessionLog];
          *buf = 138412802;
          v39 = v34;
          v40 = 2112;
          v41 = v25;
          v42 = 2112;
          v43 = v32;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ Failed to parse existing session log %@ with error %@; ignoring", buf, 0x20u);
        }
      }
    }
  }

  v26 = MediaAnalysisJSONStringFromObject();
  if (+[MADManagedBackgroundActivitySchedule isMACDPersistEnabled])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v27 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        *buf = 138412546;
        v39 = v34;
        v40 = 2112;
        v41 = v26;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@[SystemDataStore] Updating session log %@", buf, 0x16u);
      }
    }

    [MADManagedBackgroundActivitySchedule updateSessionLogWithTaskID:a1 startTime:v7 duration:v33 exitStatus:a4];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v28 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        *buf = 138412546;
        v39 = v34;
        v40 = 2112;
        v41 = v26;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@[SystemDataStore] Updated session log %@", buf, 0x16u);
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
        *buf = 138412546;
        v39 = v34;
        v40 = 2112;
        v41 = v26;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "%@ Saving session log %@", buf, 0x16u);
      }
    }

    [v10 updateSchedulingHistoryForActivityID:a1 startTime:v7 duration:v33 exitStatus:v26 sessionLog:a4];
    [v10 commit];
  }
}

void VCPCoreAnalyticsSendAllAnalysisSession(uint64_t a1)
{
  if (a1 == 16)
  {
    +[VCPMADCoreAnalyticsManager sharedAuxiliaryManager];
  }

  else
  {
    +[VCPMADCoreAnalyticsManager sharedManager];
  }
  v1 = ;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [&off_1002964E8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v2)
  {
    v4 = *v14;
    v5 = VCPLogToOSLogType[7];
    *&v3 = 138412546;
    v12 = v3;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(&off_1002964E8);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = VCPCoreAnalyticsSessionEventName([v7 unsignedIntValue]);
        v10 = [v1 fetchSessionEvent:v9];
        if (v10)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v5))
          {
            [v7 unsignedIntValue];
            v11 = VCPTaskIDDescription();
            *buf = v12;
            v18 = v11;
            v19 = 2112;
            v20 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[CAM] Sending session event for %@ - %@", buf, 0x16u);
          }

          [v1 sendSessionEvent:{v9, v12}];
        }

        objc_autoreleasePoolPop(v8);
      }

      v2 = [&off_1002964E8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v2);
  }
}

void sub_100177E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPRequestSuggestedPersonsTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

id sub_1001781C0(uint64_t a1)
{
  v1 = [*(a1 + 32) isCanceled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

void sub_1001785B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPRequestUpdateKeyFacesOfPersonsTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

id sub_1001788D8(uint64_t a1)
{
  v1 = [*(a1 + 32) isCanceled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

void sub_100178C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPRequestFaceCandidatesforKeyFaceForPersonTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_100179278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPRequestResetPersonsTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_100179750(id a1, MADChangeRequest *a2)
{
  v2 = a2;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[MACD] Resetting person process change tokens ... ", buf, 2u);
    }
  }

  [(MADChangeRequest *)v2 removeChangeTokenForTaskID:3 changeTokenType:4];
  [(MADChangeRequest *)v2 removeChangeTokenForTaskID:3 changeTokenType:3];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MACD] Resetting person process timestamps ...", v5, 2u);
    }
  }

  [(MADChangeRequest *)v2 removeDataStoreKey:@"ContactIngestionTimestamp"];
  [(MADChangeRequest *)v2 removeDataStoreKey:@"HomePersonIngestionTimestamp"];
  [(MADChangeRequest *)v2 removeDataStoreKey:@"VUDeepSyncTimestamp"];
  [(MADChangeRequest *)v2 removeDataStoreKey:VCPKeyValueFaceAnalysisLastFullModeClusterTimestamp];
  [(MADChangeRequest *)v2 removeDataStoreKey:MADPersonProcessingStatusKey];
  [(MADChangeRequest *)v2 removeDataStoreKey:MADPersonProcessingUpdateAttemptCountKey];
}

void sub_100179BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPRequestResetFaceClassificationModelTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_10017A1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPResetPetClassificationModelTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_10017A7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPRequestSuggestedMePersonIdentifierTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_10017ADB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPRequestPersonPromoterStatusTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_10017B3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPRequestClusterCacheValidationTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

id sub_10017B708(uint64_t a1)
{
  v1 = [*(a1 + 32) isCanceled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

void sub_10017BA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPRequestResetFaceClusteringStateTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_10017BEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017BF8C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = 0;
    while (1)
    {
      v3 = objc_autoreleasePoolPush();
      if ([*(a1 + 40) isCanceled])
      {
        break;
      }

      v4 = [*(a1 + 32) objectAtIndexedSubscript:v2];
      v5 = [PHFaceChangeRequest changeRequestForFace:v4];

      [v5 setVuObservationID:0];
      objc_autoreleasePoolPop(v3);
      if (++v2 >= [*(a1 + 32) count])
      {
        return;
      }
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v6 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[ResetFaceClusteringState] Cancelled", v7, 2u);
      }
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_10017C0C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v3 path];
    v6 = [v4 fileExistsAtPath:v5];

    if (v6)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v7 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          *buf = 138412290;
          v14 = v3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[ResetFaceClusteringState] Dropping %@", buf, 0xCu);
        }
      }

      v8 = +[NSFileManager defaultManager];
      v12 = 0;
      v9 = [v8 removeItemAtURL:v3 error:&v12];
      v10 = v12;

      if ((v9 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v11 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v11))
          {
            *buf = 138412546;
            v14 = v3;
            v15 = 2112;
            v16 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[ResetFaceClusteringState] Failed to remove %@ - %@", buf, 0x16u);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = -18;
      }
    }
  }
}

void sub_10017C5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPRequestReclusterFacesTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_10017C904(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_10017CCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPRequestRebuildPersonsTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_10017D018(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_10017D284(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

id sub_10017DDFC(uint64_t a1)
{
  v1 = [*(a1 + 32) isCanceled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

void sub_10017E294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPPhotosCollectionThemeAnalysisTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001800B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, void *a26, void *a27, uint64_t a28, void *a29, void *a30, void *a31, uint64_t a32, uint64_t a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  _Block_object_dispose(&STACK[0x210], 8);

  _Block_object_dispose(&STACK[0x240], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100180590(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001805B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v7 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        v8 = [v6 localizedDescription];
        LODWORD(buf.value) = 138412290;
        *(&buf.value + 4) = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[VCPPhotosCollectionThemeAnalysisTask] Error generating themes: %@", &buf, 0xCu);
      }
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else if (v5)
  {
    v22[0] = v5;
    v21[0] = MediaAnalysisResultCollectionThemeAttributeKey;
    v21[1] = MediaAnalysisResultCollectionThemeVersionAttributeKey;
    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", +[VCPPhotosCollectionThemeAnalysisTask revision]);
    v22[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

    v18[0] = MediaAnalysisResultStartKey;
    buf = kCMTimeZero;
    v11 = CMTimeCopyAsDictionary(&buf, 0);
    v19[0] = v11;
    v18[1] = MediaAnalysisResultDurationKey;
    buf = kCMTimeZero;
    v12 = CMTimeCopyAsDictionary(&buf, 0);
    v18[2] = MediaAnalysisResultAttributesKey;
    v19[1] = v12;
    v19[2] = v10;
    v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
    v20 = v13;
    v14 = [NSArray arrayWithObjects:&v20 count:1];

    if (MediaAnalysisLogLevel() >= 7)
    {
      v15 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", +[VCPPhotosCollectionThemeAnalysisTask revision]);
        LODWORD(buf.value) = 138412546;
        *(&buf.value + 4) = v5;
        LOWORD(buf.flags) = 2112;
        *(&buf.flags + 2) = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[VCPPhotosCollectionThemeAnalysisTask] Generated collection theme:%@, version:%@", &buf, 0x16u);
      }
    }

    [*(*(*(a1 + 48) + 8) + 40) setObject:v14 forKey:MediaAnalysisCollectionThemeResultsKey];
  }

  else if (MediaAnalysisLogLevel() >= 7)
  {
    v17 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[VCPPhotosCollectionThemeAnalysisTask] No collection theme generated", &buf, 2u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100181AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, _Unwind_Exception *exception_objecta, void *a28, void *a29, void *a30, void *a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, void *a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, void *a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);

  _Unwind_Resume(a1);
}

void sub_100181D7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 localIdentifier];
  if (v8)
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v8];
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v9 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      v10 = [v7 error];
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[Restore][Full] Failed to fetch local identifier for cloud identifier %@ (%@); skipping entry", &v11, 0x16u);
    }
  }
}

id sub_100181EF8(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v3 = 0;
    v4 = VCPLogToOSLogType[7];
    do
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [*(a1 + 32) objectAtIndexedSubscript:v3];
      v7 = [v6 localIdentifier];
      v8 = [NSString stringWithFormat:@"[RestoreToPhotos][Full][%@]", v7];
      if ([*(a1 + 40) containsObject:v7])
      {
        v9 = [*(a1 + 48) objectForKeyedSubscript:v7];
        [v9 persistToPhotosAsset:v6];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v4))
        {
          *buf = 138412290;
          v11 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Restored asset to Photos from backup", buf, 0xCu);
        }

        ++*(*(*(a1 + 56) + 8) + 24);
      }

      objc_autoreleasePoolPop(v5);
      result = [*(a1 + 32) count];
      ++v3;
    }

    while (v3 < result);
  }

  return result;
}