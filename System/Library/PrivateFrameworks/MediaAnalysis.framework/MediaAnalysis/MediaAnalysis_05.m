Class sub_1001AAF4C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002B8528)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1001AB090;
    v4[4] = &unk_100282998;
    v4[5] = v4;
    v5 = off_100288688;
    v6 = 0;
    qword_1002B8528 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002B8528)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("IMMediaAnalysisBlastDoorInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001AB26C();
  }

  qword_1002B8520 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001AB090()
{
  result = _sl_dlopen();
  qword_1002B8528 = result;
  return result;
}

BOOL sub_1001AB14C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_1000D0324();
  sub_10003B0EC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  return *a3 == 0;
}

void sub_1001AB49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VCPSystemMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001ABB5C(id a1)
{
  v2 = IOPSCopyPowerSourcesInfo();
  active = IOPSGetActiveBattery();
  byte_1002B8530 = IOPSGetPowerSourceDescription(v2, active) != 0;
  sub_100002CBC(&v2);
}

void sub_1001ABBB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100002CBC(va);
  _Unwind_Resume(a1);
}

void sub_1001AC3D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 96));
  _Unwind_Resume(a1);
}

void sub_1001AC430(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained checkPluggedIn];
  }
}

void sub_1001AC494(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained checkScreenLocked];
  }
}

void sub_1001AC4F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained checkFullyCharged];
  }
}

void sub_1001AC564(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained checkThermalPressure];
  }
}

void sub_1001AC5C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained checkFreeSpace];
  }
}

void sub_1001AC838(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

id sub_1001ACE1C(uint64_t a1)
{
  v2 = [*(a1 + 32) isCanceled];
  if (v2)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v3 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        v4 = *(a1 + 40);
        v7 = 138412290;
        v8 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Canceling ...", &v7, 0xCu);
      }
    }
  }

  else
  {
    v5 = +[VCPWatchdog sharedWatchdog];
    [v5 pet];
  }

  return v2;
}

void sub_1001ACF2C(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

VCPMADImageEmbeddingResource *sub_1001AD1AC(uint64_t a1)
{
  v1 = [[VCPMADImageEmbeddingResource alloc] initWithRevision:*(a1 + 32)];

  return v1;
}

uint64_t sub_1001AD338(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001AD350(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16))
  {
    if (DeviceGeqD5x())
    {
      v2 = VCPSignPostLog();
      v3 = os_signpost_id_generate(v2);

      v4 = VCPSignPostLog();
      v5 = v4;
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
      {
        LOWORD(v16[0]) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPImageBackbone_init", "", v16, 2u);
      }

      v6 = *(*(a1 + 32) + 24) - 5;
      if (v6 <= 4 && ((0x1Du >> v6) & 1) != 0)
      {
        v7 = off_100288758[v6];
        if (MediaAnalysisLogLevel() >= 6)
        {
          v8 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v8))
          {
            v9 = [v7 intValue];
            v16[0] = 67109120;
            v16[1] = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "ImageEmbeddingTask set VCPImageBackboneAnalyzer revision %d", v16, 8u);
          }
        }
      }

      else
      {
        v7 = 0;
      }

      v11 = [[VCPImageBackboneAnalyzer alloc] initWithRequestedAnalyses:0x1000000000000 andRevision:v7 useSharedModel:0];
      v12 = *(a1 + 32);
      v13 = *(v12 + 16);
      *(v12 + 16) = v11;

      v14 = VCPSignPostLog();
      v15 = v14;
      if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v14))
      {
        LOWORD(v16[0]) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v3, "VCPImageBackbone_init", "", v16, 2u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v10 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        LOWORD(v16[0]) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "ImageEmbeddingTask not supported on this device, requires devices >=D5x", v16, 2u);
      }
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
}

void sub_1001AD664(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

void sub_1001AD770()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B8540;
  qword_1002B8540 = v0;
}

void sub_1001ADC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MADSpotlightMovieAssetEntry;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001AE18C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_1001AEE2C(uint64_t a1)
{
  [*(a1 + 32) processAssetEntry:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v5 = v3[7];
  v4 = v3[8];
  v7 = v3[4];
  v6 = v3[5];

  return [v2 processWithImageBackboneAnalyzer:v6 commSafetyHandler:v4 requestQueue:v5 cancelBlock:v7];
}

void sub_1001AF5A4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  [v5 doubleValue];
  if (v6 >= 0.00999999978)
  {
    v7 = [PHSceneClassification alloc];
    v8 = [v10 longLongValue];
    [v5 doubleValue];
    v9 = [v7 initWithExtendedSceneIdentifier:v8 confidence:0 boundingBox:? startTime:? duration:? classificationType:?];
    if (v9)
    {
      [*(a1 + 32) addObject:v9];
    }
  }
}

void sub_1001B3024(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v4 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        v5 = [*(a1 + 32) logPrefix];
        v6 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
        v7 = *(a1 + 48);
        *buf = 138413058;
        v34 = v5;
        v35 = 2112;
        v36 = v6;
        v37 = 2112;
        v38 = v7;
        v39 = 2112;
        v40 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[%@][Publish] Failed to add CSSearchableItem array %@ to index %@ (%@)\n", buf, 0x2Au);
      }
    }

    *(*(*(a1 + 80) + 8) + 24) = -18;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v9)
    {
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(a1 + 56);
          v13 = [*(*(&v27 + 1) + 8 * i) uniqueIdentifier];
          [v12 addObject:v13];
        }

        v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v14 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = [*(a1 + 32) logPrefix];
        v16 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
        v17 = *(a1 + 48);
        *buf = 138412802;
        v34 = v15;
        v35 = 2112;
        v36 = v16;
        v37 = 2112;
        v38 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[%@][Publish] Successfully add CSSearchableItem array %@ to index %@\n", buf, 0x20u);
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [*(a1 + 40) objectForKeyedSubscript:{*(a1 + 48), 0}];
    v18 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v18)
    {
      v19 = *v24;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v8);
          }

          v21 = *(a1 + 64);
          v22 = [*(*(&v23 + 1) + 8 * j) uniqueIdentifier];
          [v21 addObject:v22];
        }

        v18 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }
  }

  dispatch_group_leave(*(a1 + 72));
}

void sub_1001B3A60(uint64_t a1)
{
  v2 = objc_alloc_init(MADScopedWatchdog);
  v3 = +[MADVUUtilities sharedInstance];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 160);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1001B3B98;
  v12 = &unk_1002887B0;
  v6 = *(a1 + 56);
  v13 = v2;
  v14 = v6;
  v7 = v2;
  [v3 synchronizeVUWGallery:v5 withPhotosLibrary:v4 cancelOrExtendTimeoutBlock:&v9];

  [*(a1 + 48) stop];
  v8 = +[VCPMADCoreAnalyticsManager sharedManager];
  [*(a1 + 48) elapsedTimeSeconds];
  [v8 accumulateDoubleValue:@"FaceVUSyncElapsedTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];
}

uint64_t sub_1001B3B98(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && ((*(v2 + 16))() & 1) != 0)
  {
    return 1;
  }

  [*(a1 + 32) pet];
  return 0;
}

void sub_1001B3F80(uint64_t a1)
{
  *(*(a1 + 32) + 200) = *(a1 + 40) == 0;
  if (*(*(a1 + 32) + 200) == 1 && MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = *(*(a1 + 32) + 176);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "%@ Asset processing done", &v4, 0xCu);
    }
  }
}

void sub_1001B413C(uint64_t a1)
{
  *(*(a1 + 32) + 201) = *(a1 + 40) == 0;
  if (*(*(a1 + 32) + 201) == 1 && MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = *(*(a1 + 32) + 176);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "%@ Download asset processing done", &v4, 0xCu);
    }
  }
}

uint64_t sub_1001B4324(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B433C(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = *(*(a1 + 32) + 176);
      *buf = 138412290;
      v44 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "%@ Checking next cluster processing task", buf, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  if (*(v4 + 201))
  {
    v5 = 0;
  }

  else
  {
    v6 = +[VCPInternetReachability sharedInstance];
    v5 = [v6 hasWifiOrEthernetConnection];

    v4 = *(a1 + 32);
  }

  if (*(v4 + 200) == 1 && (v5 & 1) == 0 && !*(v4 + 152))
  {
    *(v4 + 152) = 20;
    v4 = *(a1 + 32);
  }

  v7 = *(v4 + 152);
  if (v7 == 20 || v7 == 10)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v9 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        v10 = *(a1 + 32);
        v11 = *(v10 + 176);
        v12 = *(v10 + 152);
        *buf = 138412546;
        v44 = v11;
        v45 = 2048;
        v46 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Scheduling person processing (%lu)", buf, 0x16u);
      }
    }

    if (!_os_feature_enabled_impl())
    {
      v30 = [MADPhotosPersonProcessingTask taskWithPhotoLibrary:*(*(a1 + 32) + 136) requirement:*(*(a1 + 32) + 152) gallery:*(*(a1 + 32) + 160) andContext:*(*(a1 + 32) + 144)];
      v31 = *(*(a1 + 40) + 8);
      v14 = *(v31 + 40);
      *(v31 + 40) = v30;
      goto LABEL_43;
    }

    v13 = +[NSProcessInfo processInfo];
    v14 = [v13 processName];

    if (![v14 isEqualToString:@"mediaanalysisd"])
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v32 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v32))
        {
          v33 = *(*(a1 + 32) + 176);
          *buf = 138412290;
          v44 = v33;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ Skip submitting from service daemon", buf, 0xCu);
        }
      }

      goto LABEL_43;
    }

    v15 = +[MADPhotosPersonBackgroundSystemTask identifier];
    v16 = *(a1 + 32);
    if (*(v16 + 152) != 20)
    {
      v17 = [*(v16 + 136) mad_countOfUnclusteredFaces];
      if (v17 <= +[MADVUUtilities clusterFaceCountThreshold])
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v40 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v40))
          {
            v41 = *(*(a1 + 32) + 176);
            *buf = 138412546;
            v44 = v41;
            v45 = 2112;
            v46 = v15;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "%@[%@] Skip submitting", buf, 0x16u);
          }
        }

        goto LABEL_42;
      }
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v18 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        v19 = *(a1 + 32);
        v20 = *(v19 + 176);
        if (*(v19 + 152) == 20)
        {
          v21 = &stru_1002890F8;
        }

        else
        {
          v21 = @"non-";
        }

        *buf = 138412802;
        v44 = v20;
        v45 = 2112;
        v46 = v15;
        v47 = 2112;
        v48 = v21;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@[%@] Submiting %@exhaust task", buf, 0x20u);
      }
    }

    v22 = +[MADPhotosPersonBackgroundSystemTask sharedTask];
    v42 = 0;
    [v22 submitTask:&v42];
    v23 = v42;

    v24 = MediaAnalysisLogLevel();
    if (v23)
    {
      if (v24 < 3)
      {
        goto LABEL_41;
      }

      v25 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v25))
      {
        goto LABEL_41;
      }

      v26 = *(*(a1 + 32) + 176);
      *buf = 138412802;
      v44 = v26;
      v45 = 2112;
      v46 = v15;
      v47 = 2112;
      v48 = v23;
      v27 = "%@[%@] Failed to submit - %@";
      v28 = v25;
      v29 = 32;
    }

    else
    {
      if (v24 < 5)
      {
        goto LABEL_41;
      }

      v34 = VCPLogToOSLogType[5];
      if (!os_log_type_enabled(&_os_log_default, v34))
      {
        goto LABEL_41;
      }

      v35 = *(*(a1 + 32) + 176);
      *buf = 138412546;
      v44 = v35;
      v45 = 2112;
      v46 = v15;
      v27 = "%@[%@] Submitted";
      v28 = v34;
      v29 = 22;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v28, v27, buf, v29);
LABEL_41:

LABEL_42:
LABEL_43:

    *(*(a1 + 32) + 152) = 30;
    if (MediaAnalysisLogLevel() >= 6)
    {
      v36 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v36))
      {
        v37 = *(a1 + 32);
        v38 = *(v37 + 176);
        v39 = *(v37 + 152);
        *buf = 138412546;
        v44 = v38;
        v45 = 2048;
        v46 = v39;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "%@ Scheduled person processing (%lu)", buf, 0x16u);
      }
    }
  }
}

void sub_1001B4A14(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(a1 + 40);
    if (*(v2 + 201))
    {
      v3 = 1;
    }

    else
    {
      v4 = +[VCPInternetReachability sharedInstance];
      v3 = [v4 hasWifiOrEthernetConnection] ^ 1;

      v2 = *(a1 + 40);
    }

    v5 = 10;
    if (*(v2 + 200) & v3)
    {
      v5 = 20;
    }

    *(v2 + 152) = v5;
    if (MediaAnalysisLogLevel() >= 7)
    {
      v6 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        v7 = *(a1 + 40);
        v8 = *(v7 + 176);
        v9 = *(v7 + 152);
        v10 = 138412546;
        v11 = v8;
        v12 = 2048;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Retiring asset processing task; call for person processing (%lu)", &v10, 0x16u);
      }
    }
  }
}

id sub_1001B5340(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 40)) initWithPhotoLibrary:*(a1 + 32)];

  return v1;
}

id throughputMetricForTask(void *a1)
{
  v1 = a1;
  v2 = [[BGSystemTaskThroughputMetrics alloc] initWithIdentifier:v1 qos:0 workloadCategory:10 expectedMetricValue:0];

  return v2;
}

void sub_1001B6544(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = *(*(a1 + 32) + 40);
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MADThroughputManager] Attempting throughput reporting for tasks %@", buf, 0xCu);
    }
  }

  v4 = [*(a1 + 32) sessionLogFromCoreAnalyticsManager:*(*(a1 + 32) + 32)];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(*(a1 + 32) + 48);
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    v10 = VCPLogToOSLogType[6];
    *&v7 = 138412290;
    v14 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v10))
        {
          v13 = [v12 sessionLogKey];
          *buf = v14;
          v21 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MADThroughputManager] Reporting metric for task %@", buf, 0xCu);
        }

        [v12 updateWithSessionLog:{v4, v14, v15}];
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

void sub_1001B7538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B7558(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B7570(void *a1)
{
  v16 = 0;
  v2 = [MADManagedBackgroundActivitySchedule fetchMostRecentSessionLogs:&v16 forActivityID:a1[6] managedObjectContext:a1[4]];
  v3 = v16;
  v4 = v3;
  if (v2)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v5 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = a1[6];
        *buf = 67109120;
        *&buf[4] = v6;
        v7 = "[MADThroughputManager] Failed to get last scheduling record for task %d";
LABEL_5:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, v7, buf, 8u);
      }
    }
  }

  else
  {
    if (v3)
    {
      *buf = 0;
      v18 = buf;
      v19 = 0x3032000000;
      v20 = sub_1001B7558;
      v21 = sub_1001B7568;
      v22 = 0;
      +[NSMutableDictionary dictionary];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001B77D8;
      v13[3] = &unk_100288828;
      v8 = v15 = buf;
      v14 = v8;
      [v4 enumerateObjectsUsingBlock:v13];
      v9 = *(a1[5] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
      v11 = v8;

      _Block_object_dispose(buf, 8);
      goto LABEL_11;
    }

    if (MediaAnalysisLogLevel() >= 4)
    {
      v5 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v12 = a1[6];
        *buf = 67109120;
        *&buf[4] = v12;
        v7 = "[MADThroughputManager] No last scheduling record for task %d";
        goto LABEL_5;
      }
    }
  }

LABEL_11:
}

void sub_1001B77B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B77D8(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 payload];
  v7 = [v6 dataUsingEncoding:4];

  if (v7)
  {
    v8 = *(*(a1 + 40) + 8);
    obj = *(v8 + 40);
    v9 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v10 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v10))
        {
          v11 = [*(*(*(a1 + 40) + 8) + 40) localizedDescription];
          *buf = 138412290;
          v16 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MADThroughputManager] Unable to decode session log - %@", buf, 0xCu);
        }
      }

      *a3 = 1;
    }

    else
    {
      v12 = *(a1 + 32);
      [v5 taskID];
      v13 = VCPTaskIDDescription();
      [v12 setObject:v9 forKeyedSubscript:v13];
    }
  }
}

void sub_1001B7C78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

void sub_1001B7FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B8038(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    if (*(a1 + 40))
    {
      v15 = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithFormat:@"[Scene-FP] Failed to complete (%d)", a2];
      v16 = v4;
      v5 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v2 userInfo:v5];
      v7 = *(a1 + 40);
      v8 = *v7;
      *v7 = v6;
    }

    *(*(*(a1 + 32) + 8) + 24) = v2;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v9 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      v10 = @"interrupted";
      if (!v2)
      {
        v10 = @"finished";
      }

      *buf = 138412546;
      v12 = v10;
      v13 = 1024;
      v14 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[Scene-FP] %@ (%d)", buf, 0x12u);
    }
  }
}

VCPMADCollectionUnderstandingResource *__cdecl sub_1001B85C8(id a1)
{
  v1 = objc_alloc_init(VCPMADCollectionUnderstandingResource);

  return v1;
}

uint64_t sub_1001B8740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B8758(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = VCPSignPostLog();
    v4 = os_signpost_id_generate(v3);

    v5 = VCPSignPostLog();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADObjCThemeGenerator_init", "", buf, 2u);
    }

    v7 = objc_alloc_init(_MADObjCThemeGenerator);
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = v7;

    v10 = VCPSignPostLog();
    v11 = v10;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v4, "MADObjCThemeGenerator_init", "", v12, 2u);
    }

    v2 = *(*(a1 + 32) + 16);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

void sub_1001B8920(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

void sub_1001B8E3C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDataStoreValue:*(a1 + 32) forKey:VCPKeyValueMediaAnalysisImagePriority1ProgressPercentage];
  [v3 setDataStoreValue:*(a1 + 40) forKey:VCPKeyValueMediaAnalysisImagePriority1TotalAssetCount];
}

void sub_1001B915C(void *a1, void *a2)
{
  v5 = a2;
  v3 = a1[4];
  if (v3 >= VCPAnalysisComplete90Percentage)
  {
    if (!a1[5])
    {
      [v5 setDataStoreValue:a1[6] forKey:VCPKeyValueMediaAnalysisImagePriority1CompleteTimestamp];
    }

    if (!a1[7])
    {
      [v5 setDataStoreValue:a1[6] forKey:VCPKeyValueMediaAnalysisImagePriority1MCEnableTimestamp];
    }
  }

  else
  {
    if (v3 < 0x4B)
    {
      [v5 removeDataStoreKey:VCPKeyValueMediaAnalysisImagePriority1CompleteTimestamp];
      v4 = &VCPKeyValueMediaAnalysisImagePriority1MCEnableTimestamp;
    }

    else
    {
      if (!a1[7])
      {
        [v5 setDataStoreValue:a1[6] forKey:VCPKeyValueMediaAnalysisImagePriority1MCEnableTimestamp];
      }

      v4 = &VCPKeyValueMediaAnalysisImagePriority1CompleteTimestamp;
    }

    [v5 removeDataStoreKey:*v4];
  }
}

void sub_1001BA66C(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

uint64_t sub_1001BA6D0(uint64_t a1, float a2)
{
  v4 = [*(a1 + 32) cancelBlock];
  if (v4 && ([*(a1 + 32) cancelBlock], v5 = objc_claimAutoreleasedReturnValue(), v6 = v5[2](), v5, v4, (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v8 = +[VCPWatchdog sharedWatchdog];
    [v8 pet];

    v7 = 0;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      v11 = 134218240;
      v12 = a2 * 100.0;
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[FullCluster] Gallery update progress: %.2f%%, isCancelled %d", &v11, 0x12u);
    }
  }

  return v7 ^ 1u;
}

void sub_1001BA824(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1001BAB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1001BAB64(id a1)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v1 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v1))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v1, "Real-time analysis server XPC connection interrupted", v2, 2u);
    }
  }
}

void sub_1001BABE0(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Real-time analysis server XPC connection invalidated", v5, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[VCPClientManager sharedManager];
    [v4 removeClientHandler:WeakRetained];
  }
}

Swift::Int sub_1001BB308()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001BB350()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id _MADObjCModelCatalogModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _MADObjCModelCatalogModel.init()()
{
  Logger.init(subsystem:category:)();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MADObjCModelCatalogModel();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t type metadata accessor for _MADObjCModelCatalogModel()
{
  result = qword_1002B8860;
  if (!qword_1002B8860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _MADObjCModelCatalogModel.getModelURL(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for ImageScalerAssetContents();
  v47 = *(v3 - 8);
  (__chkstk_darwin)();
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = (__chkstk_darwin)();
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v45 - v10;
  v11 = sub_1001BBBD0(&qword_1002B7D58);
  __chkstk_darwin(v11 - 8);
  v13 = &v45 - v12;
  v53 = sub_1001BBBD0(&qword_1002B7D60);
  v14 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v45 - v15;
  v16 = sub_1001BBBD0(&qword_1002B7D68);
  __chkstk_darwin(v16 - 8);
  v18 = &v45 - v17;
  v48 = v7;
  v19 = *(v7 + 56);
  v50 = v6;
  v19(&v45 - v17, 1, 1, v6);
  if (a1)
  {
    v55[0] = a1;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    static Catalog.Resource.ImageScaler.GenerativePlaygroundsUpscaler()();
    sub_1001BBC18(v54, v55);
    sub_1001BBC30(v55, v55[3]);
    dispatch thunk of AssetBackedResource.fetchAsset()();
    v20 = v53;
    (*(v14 + 56))(v13, 0, 1, v53);
    (*(v14 + 32))(v51, v13, v20);
    CatalogAsset.contents.getter();
    v21 = v49;
    ImageScalerAssetContents.baseURL.getter();
    (*(v47 + 8))(v5, v3);
    if (URL.isFileURL.getter())
    {
      sub_1001BDED0(v18, &qword_1002B7D68);
      v22 = v48;
      v23 = *(v48 + 16);
      v24 = v50;
      v23(v18, v21, v50);
      v19(v18, 0, 1, v24);
      v25 = v46;
      v23(v46, v21, v24);
      v26 = Logger.logObject.getter();
      v27 = v21;
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v26, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *&v54[0] = v30;
        *v29 = 136315138;
        sub_1001BDDC8();
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v24;
        v34 = v33;
        v35 = *(v22 + 8);
        v35(v25, v32);
        v36 = sub_1001BD820(v31, v34, v54);

        *(v29 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v26, v28, "Found model %s", v29, 0xCu);
        sub_1001BDE20(v30);

        v35(v49, v50);
      }

      else
      {

        v43 = *(v22 + 8);
        v43(v25, v24);
        v43(v27, v24);
      }
    }

    else
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v50;
      v41 = v48;
      if (v39)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Failed to find model", v42, 2u);
      }

      (*(v41 + 8))(v21, v40);
    }

    (*(v14 + 8))(v51, v53);
    sub_1001BBC74(v18, v52);
    return sub_1001BDE20(v55);
  }

  return result;
}

uint64_t sub_1001BBBD0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001BBC18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1001BBC30(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1001BBC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBBD0(&qword_1002B7D68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _MADObjCModelCatalogModel.getBridgeURL(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for EmbeddingPreprocessorAssetContents();
  v57 = *(v60 - 8);
  __chkstk_darwin(v60);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1001BBBD0(&qword_1002B7D78);
  v59 = *(v61 - 8);
  v8 = __chkstk_darwin(v61);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v51 - v11;
  v13 = sub_1001BBBD0(&qword_1002B7D68);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = v4;
  v17 = *(v4 + 56);
  v63 = &v51 - v18;
  v58 = v3;
  v56 = v17;
  v17();
  if (a1)
  {
    v74[0] = a1;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
    v19 = v75;
    v20 = v76;
    v21 = sub_1001BBC30(v74, v75);
    v77[3] = v19;
    v77[4] = *(v20 + 8);
    v22 = sub_1001BDE6C(v77);
    (*(*(v19 - 8) + 16))(v22, v21, v19);
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
    v23 = v72;
    v24 = v73;
    v25 = sub_1001BBC30(v71, v72);
    v78[3] = v23;
    v78[4] = *(v24 + 8);
    v26 = sub_1001BDE6C(v78);
    (*(*(v23 - 8) + 16))(v26, v25, v23);
    static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingMM()();
    v27 = v69;
    v28 = v70;
    v29 = sub_1001BBC30(v68, v69);
    v79[3] = v27;
    v79[4] = *(v28 + 8);
    v30 = sub_1001BDE6C(v79);
    (*(*(v27 - 8) + 16))(v30, v29, v27);
    static Catalog.Resource.EmbeddingPreprocessor.AFMPlusEmbeddingPreprocessor()();
    v31 = v66;
    v32 = v67;
    v33 = sub_1001BBC30(v65, v66);
    v80[3] = v31;
    v80[4] = *(v32 + 8);
    v34 = sub_1001BDE6C(v80);
    (*(*(v31 - 8) + 16))(v34, v33, v31);
    sub_1001BBBD0(&qword_1002B7D80);
    swift_arrayDestroy();
    sub_1001BDE20(v65);
    sub_1001BDE20(v68);
    sub_1001BDE20(v71);
    sub_1001BDE20(v74);
    static Catalog.Resource.EmbeddingPreprocessor.AFMPlusEmbeddingPreprocessor()();
    sub_1001BBC30(v74, v75);
    dispatch thunk of AssetBackedResource.fetchAsset()();
    v35 = v61;
    CatalogAsset.contents.getter();
    EmbeddingPreprocessorAssetContents.baseURL.getter();
    v53 = *(v57 + 8);
    v53(v7, v60);
    v36 = v63;
    sub_1001BDED0(v63, &qword_1002B7D68);
    v37 = v58;
    v56(v16, 0, 1, v58);
    sub_1001BBC74(v16, v36);
    v38 = v59;
    (*(v59 + 16))(v10, v12, v35);
    v39 = Logger.logObject.getter();
    LODWORD(v57) = static os_log_type_t.info.getter();
    v62 = v39;
    if (os_log_type_enabled(v39, v57))
    {
      v40 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v71[0] = v56;
      *v40 = 136315138;
      CatalogAsset.contents.getter();
      v52 = v10;
      v41 = v54;
      EmbeddingPreprocessorAssetContents.baseURL.getter();
      v53(v7, v60);
      sub_1001BDDC8();
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v55 + 8))(v41, v37);
      v45 = *(v38 + 8);
      v46 = v61;
      v45(v52, v61);
      v47 = sub_1001BD820(v42, v44, v71);

      *(v40 + 4) = v47;
      v48 = v62;
      _os_log_impl(&_mh_execute_header, v62, v57, "fetchAsset succeeded, baseURL: %s", v40, 0xCu);
      sub_1001BDE20(v56);

      v45(v12, v46);
    }

    else
    {

      v49 = *(v38 + 8);
      v49(v10, v35);
      v49(v12, v35);
    }

    sub_1001BBC74(v36, v64);
    return sub_1001BDE20(v74);
  }

  return result;
}

id sub_1001BC550(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = sub_1001BBBD0(&qword_1002B7D68);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = a1;
  a4(a3);

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    URL._bridgeToObjectiveC()(v13);
    v16 = v15;
    (*(v12 + 8))(v9, v11);
    v14 = v16;
  }

  return v14;
}

Swift::Int __swiftcall _MADObjCModelCatalogModel.getBridgeEmbeddingVersion()()
{
  v1 = sub_1001BBBD0(&qword_1002B7D68);
  __chkstk_darwin(v1 - 8);
  v3 = &v52[-v2];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v52[-v9];
  (*((swift_isaMask & *v0) + 0x60))(0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1001BDED0(v3, &qword_1002B7D68);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  URL.appendingPathComponent(_:)();
  result = (*((swift_isaMask & *v0) + 0x70))(&v53, v8, 0xD000000000000021, 0x800000010022AA40, &type metadata for String);
  v12 = v54;
  if (!v54)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v22, v23))
    {
LABEL_72:

      v43 = *(v5 + 8);
      v43(v8, v4);
      v43(v10, v4);
      return 0;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Couldn’t load unified_embedding_encoder_version from metadata.json", v24, 2u);
LABEL_70:

    goto LABEL_72;
  }

  v13 = v53;
  v14 = HIBYTE(v54) & 0xF;
  v15 = v53 & 0xFFFFFFFFFFFFLL;
  if ((v54 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v54) & 0xF;
  }

  else
  {
    v16 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_68:

    v22 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v22, v39))
    {

      goto LABEL_72;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v53 = v41;
    *v40 = 136315138;
    v42 = sub_1001BD820(v13, v12, &v53);

    *(v40 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v22, v39, "'%s' is not a valid integer", v40, 0xCu);
    sub_1001BDE20(v41);

    goto LABEL_70;
  }

  if ((v54 & 0x1000000000000000) == 0)
  {
    if ((v54 & 0x2000000000000000) != 0)
    {
      v54 &= 0xFFFFFFFFFFFFFFuLL;
      if (v53 == 43)
      {
        if (v14)
        {
          if (--v14)
          {
            v18 = 0;
            v31 = &v53 + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                break;
              }

              v33 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                break;
              }

              ++v31;
              if (!--v14)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_66;
        }

LABEL_82:
        __break(1u);
        return result;
      }

      if (v53 != 45)
      {
        if (v14)
        {
          v18 = 0;
          v36 = &v53;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            v38 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              break;
            }

            v36 = (v36 + 1);
            if (!--v14)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

      if (v14)
      {
        if (--v14)
        {
          v18 = 0;
          v25 = &v53 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v27 - v26;
            if (__OFSUB__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v14)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }
    }

    else
    {
      if ((v53 & 0x1000000000000000) != 0)
      {
        result = (v54 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v17 = *result;
      if (v17 == 43)
      {
        if (v15 >= 1)
        {
          v14 = v15 - 1;
          if (v15 != 1)
          {
            v18 = 0;
            if (result)
            {
              v28 = (result + 1);
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  goto LABEL_66;
                }

                v30 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_66;
                }

                v18 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  goto LABEL_66;
                }

                ++v28;
                if (!--v14)
                {
                  goto LABEL_67;
                }
              }
            }

            goto LABEL_58;
          }

          goto LABEL_66;
        }

        goto LABEL_81;
      }

      if (v17 != 45)
      {
        if (v15)
        {
          v18 = 0;
          if (result)
          {
            while (1)
            {
              v34 = *result - 48;
              if (v34 > 9)
              {
                goto LABEL_66;
              }

              v35 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_66;
              }

              v18 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_66;
              }

              ++result;
              if (!--v15)
              {
                goto LABEL_58;
              }
            }
          }

          goto LABEL_58;
        }

LABEL_66:
        v18 = 0;
        LOBYTE(v14) = 1;
LABEL_67:
        v52[8] = v14;
        if (v14)
        {
          goto LABEL_68;
        }

        goto LABEL_75;
      }

      if (v15 >= 1)
      {
        v14 = v15 - 1;
        if (v15 != 1)
        {
          v18 = 0;
          if (result)
          {
            v19 = (result + 1);
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                goto LABEL_66;
              }

              v21 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_66;
              }

              v18 = v21 - v20;
              if (__OFSUB__(v21, v20))
              {
                goto LABEL_66;
              }

              ++v19;
              if (!--v14)
              {
                goto LABEL_67;
              }
            }
          }

LABEL_58:
          LOBYTE(v14) = 0;
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v18 = sub_1001BDF30(v13, v12, 10);
  v45 = v44;

  if (v45)
  {
    goto LABEL_68;
  }

LABEL_75:
  v46 = v18;

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v49 = 134218242;
    *(v49 + 4) = v46;
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_1001BD820(7630409, 0xE300000000000000, &v53);
    _os_log_impl(&_mh_execute_header, v47, v48, "Converted value is %ld (type: %s)", v49, 0x16u);
    sub_1001BDE20(v50);
  }

  v51 = *(v5 + 8);
  v51(v8, v4);
  v51(v10, v4);
  return v46;
}

uint64_t sub_1001BCE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a5;
  v78 = a3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v71 - v13;
  v82 = a4;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v71 - v17;
  v79 = a1;
  v19 = Data.init(contentsOf:options:)();
  v74 = v14;
  v75 = v16;
  v76 = v18;
  v77 = v8;
  v29 = v19;
  v31 = v30;
  v32 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v84 = 0;
  v34 = [v32 JSONObjectWithData:isa options:0 error:&v84];

  v35 = v84;
  if (!v34)
  {
    v42 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1001BE4BC(v29, v31);
    v43 = v77;
    (*(v9 + 16))(v12, v79, v77);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86[0] = v80;
      *v22 = 136315394;
      sub_1001BDDC8();
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v9 + 8))(v12, v43);
      v27 = sub_1001BD820(v24, v26, v86);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2112;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v28;
      *v23 = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error reading or parsing JSON at '%s': %@", v22, 0x16u);
      sub_1001BDED0(v23, &qword_1002B7D88);

      sub_1001BDE20(v80);
    }

    else
    {

      (*(v9 + 8))(v12, v43);
    }

    return (*(*(v82 - 8) + 56))(v81, 1, 1);
  }

  v72 = v29;
  v73 = v31;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001BE510(v86, &v84);
  sub_1001BBBD0(&qword_1002B7D90);
  if (!swift_dynamicCast())
  {
    v44 = v9;
    v45 = *(v9 + 16);
    v46 = v74;
    v47 = v77;
    v45(v74, v79, v77);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v84 = v51;
      *v50 = 136315138;
      sub_1001BDDC8();
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      (*(v44 + 8))(v46, v47);
      v55 = sub_1001BD820(v52, v54, &v84);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "JSON at '%s' isn’t a top-level dictionary.", v50, 0xCu);
      sub_1001BDE20(v51);

      sub_1001BE4BC(v72, v73);
    }

    else
    {
      sub_1001BE4BC(v72, v73);

      (*(v44 + 8))(v46, v47);
    }

    sub_1001BDE20(v86);
    return (*(*(v82 - 8) + 56))(v81, 1, 1);
  }

  v37 = v82;
  v36 = v83;
  if (*(v83 + 16))
  {
    v38 = a2;
    v39 = v78;
    v40 = sub_1001BE9E0(a2, v78);
    if (v41)
    {
      sub_1001BE510(*(v36 + 56) + 32 * v40, &v84);
    }

    else
    {

      v84 = 0u;
      v85 = 0u;
    }
  }

  else
  {

    v84 = 0u;
    v85 = 0u;
    v39 = v78;
    v38 = a2;
  }

  sub_1001BBBD0(&qword_1002B7D98);
  v57 = v76;
  v58 = swift_dynamicCast();
  v59 = v75;
  if (v58)
  {
    sub_1001BDE20(v86);
    sub_1001BE4BC(v72, v73);
    v60 = v57;
    v61 = *(v37 - 8);
    v62 = *(v61 + 56);
    v62(v60, 0, 1, v37);
    v63 = v81;
    (*(v61 + 32))(v81, v60, v37);
    return (v62)(v63, 0, 1, v37);
  }

  else
  {
    v64 = *(*(v37 - 8) + 56);
    v64(v57, 1, 1, v37);
    (*(v59 + 8))(v57, v15);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *&v84 = swift_slowAlloc();
      *v67 = 136315394;
      *(v67 + 4) = sub_1001BD820(v38, v39, &v84);
      *(v67 + 12) = 2080;
      v68 = _typeName(_:qualified:)();
      v70 = sub_1001BD820(v68, v69, &v84);

      *(v67 + 14) = v70;
      v37 = v82;
      _os_log_impl(&_mh_execute_header, v65, v66, "No value for key “%s” or type mismatch (expected %s).", v67, 0x16u);
      swift_arrayDestroy();
    }

    sub_1001BE4BC(v72, v73);

    sub_1001BDE20(v86);
    return (v64)(v81, 1, 1, v37);
  }
}

id _MADObjCModelCatalogModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MADObjCModelCatalogModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001BD820(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1001BD8EC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1001BE510(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1001BDE20(v11);
  return v7;
}

unint64_t sub_1001BD8EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1001BD9F8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1001BD9F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1001BDA44(a1, a2);
  sub_1001BDB74(&off_1002889D8);
  return v3;
}

char *sub_1001BDA44(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1001BDC60(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1001BDC60(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1001BDB74(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1001BDCD4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1001BDC60(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1001BBBD0(&qword_1002B7DD8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1001BDCD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001BBBD0(&qword_1002B7DD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1001BDDC8()
{
  result = qword_1002B7D70;
  if (!qword_1002B7D70)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7D70);
  }

  return result;
}

uint64_t sub_1001BDE20(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *sub_1001BDE6C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1001BDED0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1001BBBD0(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unsigned __int8 *sub_1001BDF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1001BE56C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1001BE4BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1001BE510(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1001BE56C()
{
  v0 = String.subscript.getter();
  v4 = sub_1001BE5EC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1001BE5EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_1001BDC60(v9, 0), v12 = sub_1001BE744(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1001BE744(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1001BE964(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1001BE964(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1001BE964(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1001BE9E0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1001BEBC0(a1, a2, v4);
}

unint64_t sub_1001BEA5C()
{
  result = qword_1002B7DA0;
  if (!qword_1002B7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7DA0);
  }

  return result;
}

unint64_t sub_1001BEAB4()
{
  result = qword_1002B7DA8;
  if (!qword_1002B7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7DA8);
  }

  return result;
}

uint64_t sub_1001BEB30()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1001BEBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1001BEC98()
{
  v0 = sub_1001BBBD0(&qword_1002B7DE0);
  sub_1001C6398(v0, qword_1002B8878);
  sub_1001C3E68(v0, qword_1002B8878);
  return static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosLibraryUnderstandingMMID.getter();
}

uint64_t sub_1001BECF0()
{
  v0 = type metadata accessor for Logger();
  sub_1001C6398(v0, qword_1002B8898);
  sub_1001C3E68(v0, qword_1002B8898);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001BED74()
{
  v0 = swift_allocObject();
  sub_1001BEDAC();
  return v0;
}

uint64_t sub_1001BEDAC()
{
  v1 = v0;
  v2 = sub_1001BBBD0(&qword_1002B7DE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = type metadata accessor for PromptTemplate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C3D34(&_swiftEmptyArrayStorage);
  type metadata accessor for CollectionUnderstandingMultiModalInferenceProvider._ClientInfo(0);
  v11 = swift_allocObject();
  sub_1001C0F5C(0x800000010022AAA0, v10);
  *(v1 + OBJC_IVAR____TtC19MediaAnalysisDaemon50CollectionUnderstandingMultiModalInferenceProvider__clientInfo) = v11;
  if (qword_1002B8870 != -1)
  {
    swift_once();
  }

  v12 = sub_1001C3E68(v2, qword_1002B8878);
  (*(v3 + 16))(v5, v12, v2);
  sub_1001C3EA0(&off_100288AA8);
  sub_1001BDED0(&unk_100288AC8, &qword_1002B7DE8);
  PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();
  (*(v7 + 32))(v1 + OBJC_IVAR____TtC19MediaAnalysisDaemon50CollectionUnderstandingMultiModalInferenceProvider_promptTemplate, v9, v6);
  return v1;
}

uint64_t sub_1001BF010(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100002CB8;

  return sub_1001BF0BC(a1, v2, a2);
}

uint64_t sub_1001BF0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  sub_1001BBBD0(&qword_1002B8018);
  v3[31] = swift_task_alloc();
  v3[32] = sub_1001BBBD0(&qword_1002B8020);
  v3[33] = swift_task_alloc();
  v4 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v5 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  sub_1001BBBD0(&qword_1002B8028);
  v3[40] = swift_task_alloc();
  v6 = type metadata accessor for FunctionIdentifier();
  v3[41] = v6;
  v3[42] = *(v6 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v7 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v3[45] = v7;
  v3[46] = *(v7 - 8);
  v3[47] = swift_task_alloc();
  v8 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v3[48] = v8;
  v3[49] = *(v8 - 8);
  v3[50] = swift_task_alloc();
  v9 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v3[51] = v9;
  v3[52] = *(v9 - 8);
  v3[53] = swift_task_alloc();
  v10 = sub_1001BBBD0(&qword_1002B7DF0);
  v3[54] = v10;
  v3[55] = *(v10 - 8);
  v3[56] = swift_task_alloc();
  v11 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v3[57] = v11;
  v3[58] = *(v11 - 8);
  v3[59] = swift_task_alloc();
  v12 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v3[60] = v12;
  v3[61] = *(v12 - 8);
  v3[62] = swift_task_alloc();
  v13 = sub_1001BBBD0(&qword_1002B7DF8);
  v3[63] = v13;
  v3[64] = *(v13 - 8);
  v3[65] = swift_task_alloc();
  sub_1001BBBD0(&qword_1002B7E00);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v14 = sub_1001BBBD0(&qword_1002B7E08);
  v3[68] = v14;
  v3[69] = *(v14 - 8);
  v3[70] = swift_task_alloc();
  v15 = type metadata accessor for CompletionPrompt();
  v3[71] = v15;
  v3[72] = *(v15 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();

  return _swift_task_switch(sub_1001BF6DC, 0, 0);
}

uint64_t sub_1001BF6DC()
{
  v47 = v0[78];
  v43 = v0[77];
  v32 = v0[76];
  v50 = v0[75];
  v20 = v0[74];
  v1 = v0[73];
  v51 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[67];
  v21 = v0[66];
  v22 = v0[68];
  v29 = v0[65];
  v30 = v0[64];
  v31 = v0[63];
  v23 = v0[62];
  v24 = v0[61];
  v25 = v0[60];
  v26 = v0[59];
  v27 = v0[58];
  v28 = v0[57];
  v39 = v0[56];
  v40 = v0[55];
  v41 = v0[54];
  v34 = v0[53];
  v35 = v0[52];
  v33 = v0[51];
  v36 = v0[50];
  v37 = v0[49];
  v38 = v0[48];
  v44 = v0[46];
  v45 = v0[45];
  v46 = v0[47];
  v48 = v0[40];
  v6 = v0[30];
  v42 = v0[29];
  CompletionPrompt.init(_:)();
  v0[80] = sub_1001BBBD0(&qword_1002B8030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10024D030;
  *(inited + 32) = 0x736567616D69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = sub_1001BBBD0(&qword_1002B8038);
  *(inited + 80) = sub_1001C64D4();
  *(inited + 48) = v6;

  sub_1001C41D8(inited);
  swift_setDeallocating();
  sub_1001BDED0(inited + 32, &qword_1002B8048);
  v0[81] = sub_1001C6598(&qword_1002B7E10, &type metadata accessor for CompletionPrompt);
  GenerativeConfigurationProtocol.bindVariables(_:)();

  v49 = *(v51 + 8);
  v0[82] = v49;
  v0[83] = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49(v1, v2);
  v8 = type metadata accessor for SamplingStrategy();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1001C65F0(v5, v21, &qword_1002B7E00);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();
  sub_1001BDED0(v5, &qword_1002B7E00);
  v9 = enum case for OverrideHint.constant<A>(_:);
  LODWORD(v21) = enum case for OverrideHint.constant<A>(_:);
  (*(v4 + 104))(v3, enum case for OverrideHint.constant<A>(_:), v22);
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  (*(v4 + 8))(v3, v22);
  v49(v20, v2);
  v10 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  (*(*(v10 - 8) + 56))(v23, 1, 1, v10);
  (*(v24 + 104))(v23, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v25);
  v11 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  (*(*(v11 - 8) + 56))(v26, 1, 1, v11);
  (*(v27 + 104))(v26, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v28);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  (*(v30 + 104))(v29, v9, v31);
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  (*(v30 + 8))(v29, v31);
  v49(v50, v2);
  v12 = type metadata accessor for StringResponseSanitizer.Overrides();
  (*(*(v12 - 8) + 56))(v34, 1, 1, v12);
  (*(v35 + 104))(v34, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v33);
  v13 = type metadata accessor for StringResponseSanitizer.Guardrails();
  (*(*(v13 - 8) + 56))(v36, 1, 1, v13);
  (*(v37 + 104))(v36, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v38);
  StringResponseSanitizer.init(overrides:guardrails:)();
  (*(v40 + 104))(v39, v21, v41);
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  (*(v40 + 8))(v39, v41);
  v49(v32, v2);
  sub_1001C3D34(&_swiftEmptyArrayStorage);
  GenerativeConfigurationProtocol._internalTrackingConfig(_:)();

  v49(v43, v2);
  v14 = *(v42 + OBJC_IVAR____TtC19MediaAnalysisDaemon50CollectionUnderstandingMultiModalInferenceProvider__clientInfo);
  v0[84] = v14;
  v15 = OBJC_IVAR____TtCC19MediaAnalysisDaemon50CollectionUnderstandingMultiModalInferenceProviderP33_3F112C14651A533C2588E4550269021D11_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v44 + 16))(v46, v14 + v15, v45);
  GenerativeConfigurationProtocol._internalSessionTrackingConfig(_:)();
  (*(v44 + 8))(v46, v45);
  v49(v47, v2);
  v16 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  (*(*(v16 - 8) + 56))(v48, 1, 1, v16);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v17 = swift_task_alloc();
  v0[85] = v17;
  *v17 = v0;
  v17[1] = sub_1001BFF38;
  v18 = v0[31];

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataCompletionPrompt(_:)(v18, 0xD00000000000001CLL, 0x800000010022AAD0);
}

uint64_t sub_1001BFF38()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_1001C060C;
  }

  else
  {
    v2 = sub_1001C004C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C004C()
{
  v1 = v0[31];
  v2 = sub_1001BBBD0(&qword_1002B8050);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1001BDED0(v1, &qword_1002B8018);
  }

  else
  {
    v39 = v0[82];
    v34 = v0[78];
    v35 = v0[79];
    v37 = v0[71];
    v38 = v0[72];
    v3 = v0[43];
    v29 = v0[42];
    v30 = v0[41];
    v31 = v0[44];
    v40 = v0[39];
    v36 = v0[38];
    v4 = v0[37];
    v5 = v0[35];
    v33 = v5;
    v27 = v0[34];
    v28 = v0[36];
    v6 = v0[32];
    v7 = v0[33];
    v32 = v0[29];
    v25 = *(v6 + 48);
    v26 = *(v2 + 48);
    v8 = *(v36 + 32);
    v8(v7, v1, v4);
    v9 = *(v5 + 32);
    v9(v7 + v25, v1 + v26, v27);
    v10 = *(v6 + 48);
    v8(v40, v7, v4);
    v9(v28, v7 + v10, v27);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v29 + 8))(v31, v30);
    (*(v29 + 32))(v31, v3, v30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10024D030;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x800000010022AC80;
    v12 = OBJC_IVAR____TtC19MediaAnalysisDaemon50CollectionUnderstandingMultiModalInferenceProvider_promptTemplate;
    v13 = type metadata accessor for PromptTemplate();
    *(inited + 72) = v13;
    *(inited + 80) = sub_1001C6598(&qword_1002B8058, &type metadata accessor for PromptTemplate);
    v14 = sub_1001BDE6C((inited + 48));
    (*(*(v13 - 8) + 16))(v14, v32 + v12, v13);
    sub_1001C41D8(inited);
    swift_setDeallocating();
    sub_1001BDED0(inited + 32, &qword_1002B8048);
    sub_1001C430C(&_swiftEmptyArrayStorage);
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:bindingConfigurations:)();

    (*(v33 + 8))(v28, v27);
    (*(v36 + 8))(v40, v4);
    v39(v35, v37);
    (*(v38 + 32))(v35, v34, v37);
  }

  v23 = v0[84];
  v15 = v0[82];
  v16 = v0[79];
  v17 = v0[78];
  v18 = v0[71];
  v19 = v0[44];
  v20 = v0[42];
  v24 = v0[41];
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  v0[27] = *(v23 + OBJC_IVAR____TtCC19MediaAnalysisDaemon50CollectionUnderstandingMultiModalInferenceProviderP33_3F112C14651A533C2588E4550269021D11_ClientInfo__model);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:modelType:)();
  v15(v17, v18);
  (*(v20 + 8))(v19, v24);
  v15(v16, v18);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1001C060C()
{
  v1 = v0[82];
  v2 = v0[79];
  v3 = v0[71];
  (*(v0[42] + 8))(v0[44], v0[41]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001C07F8(uint64_t a1)
{
  v2 = type metadata accessor for Prompt();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19MediaAnalysisDaemon50CollectionUnderstandingMultiModalInferenceProvider_promptTemplate;
  v7 = type metadata accessor for PromptTemplate();
  v13[3] = v7;
  v13[4] = sub_1001C6598(&qword_1002B8058, &type metadata accessor for PromptTemplate);
  v8 = sub_1001BDE6C(v13);
  (*(*(v7 - 8) + 16))(v8, a1 + v6, v7);
  static CustomPromptBuilder.buildExpression(_:)();
  sub_1001BDE20(v13);
  sub_1001BBBD0(&qword_1002B8010);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10024D030;
  (*(v3 + 16))(v10 + v9, v5, v2);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1001C0A0C(uint64_t a1)
{
  v4 = sub_1001BBBD0(&qword_1002B7E18);
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[4] = v5;
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_1001C0B20;

  return sub_1001BF0BC(v5, v1, a1);
}

uint64_t sub_1001C0B20()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001C0E94, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[7] = v3;
    v4 = sub_1001C6598(&qword_1002B7E20, &type metadata accessor for TokenGenerator);
    *v3 = v2;
    v3[1] = sub_1001C0CDC;
    v5 = v2[2];

    return GenerativeConfigurationRunnable<>.run(returning:)(v5, v4);
  }
}

uint64_t sub_1001C0CDC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 64) = v2;

  (*(v6[3] + 8))(v6[4], v6[2]);
  if (v2)
  {

    return _swift_task_switch(sub_1001C0EF8, 0, 0);
  }

  else
  {

    v8 = v7[1];

    return v8(a1, a2);
  }
}

uint64_t sub_1001C0E94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C0EF8()
{

  v1 = *(v0 + 8);

  return v1();
}

unsigned __int8 *sub_1001C0F5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CachePolicy();
  __chkstk_darwin(v6 - 8);
  v52[1] = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativeModelSessionConfiguration();
  __chkstk_darwin(v8 - 8);
  v52[0] = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001BBBD0(&qword_1002B7DE0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v52 - v12;
  v14 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 0xD000000000000023;
  *(v3 + 24) = a1;
  v52[2] = a1;

  sub_1001C3D34(&_swiftEmptyArrayStorage);
  _ClientInfoSessionTrackingConfig.init(sessionTrackingConifg:_internalSessionTrackingConfig:)();
  (*(v15 + 32))(v3 + OBJC_IVAR____TtCC19MediaAnalysisDaemon50CollectionUnderstandingMultiModalInferenceProviderP33_3F112C14651A533C2588E4550269021D11_ClientInfo_trackingConfig, v17, v14);
  if (!*(a2 + 16))
  {
    goto LABEL_67;
  }

  v18 = sub_1001BE9E0(0xD000000000000015, 0x800000010022ACA0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_67;
  }

  v20 = (*(a2 + 56) + 16 * v18);
  v22 = *v20;
  v21 = v20[1];

  v24 = HIBYTE(v21) & 0xF;
  v25 = v22 & 0xFFFFFFFFFFFFLL;
  if (!((v21 & 0x2000000000000000) != 0 ? HIBYTE(v21) & 0xF : v22 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_67;
  }

  if ((v21 & 0x1000000000000000) != 0)
  {
    sub_1001BDF30(v22, v21, 10);
    goto LABEL_67;
  }

  if ((v21 & 0x2000000000000000) != 0)
  {
    v53[0] = v22;
    v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
    if (v22 == 43)
    {
      if (v24)
      {
        if (--v24)
        {
          v40 = 0;
          v41 = v53 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v40;
            if ((v40 * 10) >> 64 != (10 * v40) >> 63)
            {
              break;
            }

            v40 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v24)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_76:
      __break(1u);
      return result;
    }

    if (v22 != 45)
    {
      if (v24)
      {
        v47 = 0;
        v48 = v53;
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            break;
          }

          v50 = 10 * v47;
          if ((v47 * 10) >> 64 != (10 * v47) >> 63)
          {
            break;
          }

          v47 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            break;
          }

          ++v48;
          if (!--v24)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v24)
    {
      if (--v24)
      {
        v32 = 0;
        v33 = v53 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v35 - v34;
          if (__OFSUB__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v24)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_74;
  }

  if ((v22 & 0x1000000000000000) != 0)
  {
    result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v27 = *result;
  if (v27 == 43)
  {
    if (v25 < 1)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v24 = v25 - 1;
    if (v25 != 1)
    {
      v36 = 0;
      if (result)
      {
        v37 = result + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            goto LABEL_65;
          }

          v39 = 10 * v36;
          if ((v36 * 10) >> 64 != (10 * v36) >> 63)
          {
            goto LABEL_65;
          }

          v36 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            goto LABEL_65;
          }

          ++v37;
          if (!--v24)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_57;
    }

LABEL_65:
    LOBYTE(v24) = 1;
    goto LABEL_66;
  }

  if (v27 != 45)
  {
    if (v25)
    {
      v44 = 0;
      if (result)
      {
        while (1)
        {
          v45 = *result - 48;
          if (v45 > 9)
          {
            goto LABEL_65;
          }

          v46 = 10 * v44;
          if ((v44 * 10) >> 64 != (10 * v44) >> 63)
          {
            goto LABEL_65;
          }

          v44 = v46 + v45;
          if (__OFADD__(v46, v45))
          {
            goto LABEL_65;
          }

          ++result;
          if (!--v25)
          {
            goto LABEL_57;
          }
        }
      }

      goto LABEL_57;
    }

    goto LABEL_65;
  }

  if (v25 < 1)
  {
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v24 = v25 - 1;
  if (v25 == 1)
  {
    goto LABEL_65;
  }

  v28 = 0;
  if (result)
  {
    v29 = result + 1;
    while (1)
    {
      v30 = *v29 - 48;
      if (v30 > 9)
      {
        goto LABEL_65;
      }

      v31 = 10 * v28;
      if ((v28 * 10) >> 64 != (10 * v28) >> 63)
      {
        goto LABEL_65;
      }

      v28 = v31 - v30;
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_65;
      }

      ++v29;
      if (!--v24)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_57:
  LOBYTE(v24) = 0;
LABEL_66:
  v54 = v24;
LABEL_67:

  type metadata accessor for TokenGenerator();
  if (qword_1002B8870 != -1)
  {
    swift_once();
  }

  v51 = sub_1001C3E68(v10, qword_1002B8878);
  (*(v11 + 16))(v13, v51, v10);
  static CachePolicy.inMemory.getter();
  GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
  *(v3 + OBJC_IVAR____TtCC19MediaAnalysisDaemon50CollectionUnderstandingMultiModalInferenceProviderP33_3F112C14651A533C2588E4550269021D11_ClientInfo__model) = TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
  return v3;
}

uint64_t sub_1001C15A8()
{

  v1 = OBJC_IVAR____TtCC19MediaAnalysisDaemon50CollectionUnderstandingMultiModalInferenceProviderP33_3F112C14651A533C2588E4550269021D11_ClientInfo_trackingConfig;
  v2 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_1001C165C()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1001C1690@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC19MediaAnalysisDaemon50CollectionUnderstandingMultiModalInferenceProviderP33_3F112C14651A533C2588E4550269021D11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1001C171C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC19MediaAnalysisDaemon50CollectionUnderstandingMultiModalInferenceProviderP33_3F112C14651A533C2588E4550269021D11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_1001C182C()
{
  v1 = OBJC_IVAR____TtC19MediaAnalysisDaemon50CollectionUnderstandingMultiModalInferenceProvider_promptTemplate;
  v2 = type metadata accessor for PromptTemplate();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

id _MADObjCThemeGenerator.init()()
{
  v1 = v0;
  type metadata accessor for CollectionUnderstandingMultiModalInferenceProvider(0);
  v2 = swift_allocObject();
  sub_1001BEDAC();
  *&v1[OBJC_IVAR____MADObjCThemeGenerator_collectionUnderstandingMultiModalInferenceProvider] = v2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for _MADObjCThemeGenerator();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_1001C19A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1001BBBD0(&qword_1002B7E18);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Prompt.ImageEmbeddingEncoding();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Prompt.ImageEmbeddingData();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001C1B50, 0, 0);
}

uint64_t sub_1001C1B50()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = &_swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v3 = v0[11];
  v4 = v0[8];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v34 = enum case for Prompt.ImageEmbeddingEncoding.float16(_:);
    v32 = (v4 + 104);
    v6 = &_swiftEmptyArrayStorage;
    v35 = result;
    do
    {
      v8 = v0[14];
      v7 = v0[15];
      v10 = v0[9];
      v9 = v0[10];
      v11 = v0[7];
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      (*v32)(v10, v34, v11);
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
      Prompt.ImageEmbeddingData.init(encoding:data:tokenCount:signature:)();
      (*(v3 + 16))(v8, v7, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1001C33EC(0, v6[2] + 1, 1, v6);
      }

      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        v6 = sub_1001C33EC(v12 > 1, v13 + 1, 1, v6);
      }

      ++v5;
      v15 = v0[14];
      v14 = v0[15];
      v16 = v0[10];
      swift_unknownObjectRelease();
      (*(v3 + 8))(v14, v16);
      v6[2] = v13 + 1;
      (*(v3 + 32))(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v15, v16);
    }

    while (v35 != v5);
  }

  else
  {
    v17 = (v0[2] + 32);
    v33 = *(v4 + 104);
    v31 = enum case for Prompt.ImageEmbeddingEncoding.float16(_:);
    v6 = &_swiftEmptyArrayStorage;
    do
    {
      v36 = result;
      v19 = v0[12];
      v18 = v0[13];
      v20 = v0[10];
      v21 = *v17;
      v33(v0[9], v31, v0[7]);
      v22 = v21;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
      Prompt.ImageEmbeddingData.init(encoding:data:tokenCount:signature:)();
      (*(v3 + 16))(v19, v18, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1001C33EC(0, v6[2] + 1, 1, v6);
      }

      v24 = v6[2];
      v23 = v6[3];
      if (v24 >= v23 >> 1)
      {
        v6 = sub_1001C33EC(v23 > 1, v24 + 1, 1, v6);
      }

      v26 = v0[12];
      v25 = v0[13];
      v27 = v0[10];

      (*(v3 + 8))(v25, v27);
      v6[2] = v24 + 1;
      (*(v3 + 32))(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24, v26, v27);
      ++v17;
      result = v36 - 1;
    }

    while (v36 != 1);
  }

LABEL_21:
  v0[16] = v6;
  v28 = *(v0[3] + OBJC_IVAR____MADObjCThemeGenerator_collectionUnderstandingMultiModalInferenceProvider);
  v29 = swift_task_alloc();
  v0[17] = v29;
  *v29 = v0;
  v29[1] = sub_1001C1F9C;
  v30 = v0[6];

  return sub_1001BF0BC(v30, v28, v6);
}

uint64_t sub_1001C1F9C()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001C235C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[19] = v3;
    v4 = sub_1001C6598(&qword_1002B7E20, &type metadata accessor for TokenGenerator);
    *v3 = v2;
    v3[1] = sub_1001C2174;
    v5 = v2[4];

    return GenerativeConfigurationRunnable<>.run(returning:)(v5, v4);
  }
}

uint64_t sub_1001C2174(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[20] = v2;

  if (v2)
  {
    (*(v6[5] + 8))(v6[6], v6[4]);

    return _swift_task_switch(sub_1001C2404, 0, 0);
  }

  else
  {
    (*(v6[5] + 8))(v6[6], v6[4]);

    v7 = v6[1];

    return v7(a1, a2);
  }
}

uint64_t sub_1001C235C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C2404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C24AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v5 = swift_task_alloc();
  v3[6] = v5;
  *v5 = v3;
  v5[1] = sub_1001C2544;

  return sub_1001C19A8(a1);
}

uint64_t sub_1001C2544(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_1001C270C;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_1001C2678;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001C2678()
{
  v1 = *(v0 + 32);
  v2 = String._bridgeToObjectiveC()();

  v1(v2, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001C270C()
{
  v0[2] = v0[7];
  swift_errorRetain();
  sub_1001BBBD0(&qword_1002B7FC0);
  sub_1001C6338(0, &qword_1002B7FC8);
  if (swift_dynamicCast())
  {
    v1 = v0[4];

    v2 = v0[3];
    v3 = v2;
    v1(0, v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t _MADObjCThemeGenerator.generateThemesMM(_:setGMSBackgroundTaskPriority:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1001BBBD0(&qword_1002B7E30);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (a2)
  {
    static TaskPriority.background.getter();
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
    v13 = &unk_10024D0C0;
  }

  else
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v13 = &unk_10024D0B0;
  }

  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v4;
  v15[5] = a1;
  v15[6] = a3;
  v15[7] = a4;
  v16 = v4;

  sub_1001C2A78(0, 0, v11, v13, v15);
}

uint64_t sub_1001C29C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100002CB8;

  return sub_1001C24AC(a5, a6, a7);
}

uint64_t sub_1001C2A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001BBBD0(&qword_1002B7E30);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1001C65F0(a3, v22 - v9, &qword_1002B7E30);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1001BDED0(v10, &qword_1002B7E30);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1001BDED0(a3, &qword_1002B7E30);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1001BDED0(a3, &qword_1002B7E30);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001C2D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_1001C2DD8;

  return sub_1001C24AC(a5, a6, a7);
}

uint64_t sub_1001C2DD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id _MADObjCThemeGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MADObjCThemeGenerator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1001C302C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1001C35C4(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1001C35C4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1001C35C4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1001C35C4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1001C35C4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

size_t sub_1001C33EC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001BBBD0(&qword_1002B7FD0);
  v10 = *(type metadata accessor for Prompt.ImageEmbeddingData() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Prompt.ImageEmbeddingData() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1001C35C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001BBBD0(&qword_1002B8008);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_1001C36D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1001C6454();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1001BE56C();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1001C3C68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_1001C443C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1001C3D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BBBD0(&unk_1002B8080);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1001BE9E0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1001C3E68(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1001C3EA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BBBD0(&qword_1002B8078);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1001BE9E0(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1001C3FD4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001C4030()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001C2DD8;

  return sub_1001C2D24(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1001C40DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001C412C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002CB8;

  return sub_1001C29C4(v6, v7, v8, v2, v3, v5, v4);
}

unint64_t sub_1001C41D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BBBD0(&qword_1002B8070);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1001C65F0(v4, &v13, &qword_1002B8048);
      v5 = v13;
      v6 = v14;
      result = sub_1001BE9E0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1001BBC18(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001C430C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BBBD0(&qword_1002B8060);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1001C65F0(v4, &v13, &qword_1002B8068);
      v5 = v13;
      v6 = v14;
      result = sub_1001BE9E0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1001C65E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1001C443C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1001BE964(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1001BE964(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1001BE964(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t _s19MediaAnalysisDaemon22_MADObjCThemeGeneratorC12themeVersionSiyFZ_0()
{
  v91 = type metadata accessor for LLMAdapterAssetContents();
  v86 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v79 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for URL();
  v87 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AssetVersion();
  v88 = *(v4 - 8);
  v89 = v4;
  __chkstk_darwin(v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BBBD0(&qword_1002B7FF8);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v79 - v12;
  static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingMM()();
  sub_1001BBC30(v93, v93[3]);
  dispatch thunk of AssetBackedResource.fetchAsset()();
  v83 = v11;
  v81 = v3;
  v85 = v8;
  CatalogAsset.version.getter();
  v84 = AssetVersion.number.getter();
  v15 = v14;
  (*(v88 + 8))(v6, v89);
  v16 = qword_1002B8890;
  swift_bridgeObjectRetain_n();
  v17 = v13;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_1001C3E68(v18, qword_1002B8898);
  v20 = v85;
  v21 = v83;
  (*(v85 + 16))(v83, v13, v7);
  v89 = v19;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  LODWORD(v88) = v23;
  v24 = os_log_type_enabled(v22, v23);
  v25 = v90;
  v26 = v91;
  v82 = v17;
  if (v24)
  {
    v27 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v92[0] = v80;
    *v27 = 136315394;
    v79 = v22;
    CatalogAsset.contents.getter();
    v28 = v25;
    v29 = v81;
    LLMAdapterAssetContents.baseURL.getter();
    (*(v86 + 8))(v28, v26);
    sub_1001C6598(&qword_1002B7D70, &type metadata accessor for URL);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v15;
    v33 = v32;
    (*(v87 + 8))(v29, v1);
    v34 = *(v20 + 8);
    v34(v21, v7);
    v35 = sub_1001BD820(v30, v33, v92);
    v15 = v31;

    *(v27 + 4) = v35;
    *(v27 + 12) = 2080;
    v36 = v84;
    *(v27 + 14) = sub_1001BD820(v84, v15, v92);
    v37 = v79;
    _os_log_impl(&_mh_execute_header, v79, v88, "adaptor fetchAsset succeeded, baseURL: %s, assetVersion: %s", v27, 0x16u);
    swift_arrayDestroy();

    v17 = v82;
  }

  else
  {

    v34 = *(v20 + 8);
    v38 = (v34)(v21, v7);
    v36 = v84;
  }

  v92[0] = 46;
  v92[1] = 0xE100000000000000;
  __chkstk_darwin(v38);
  *(&v79 - 2) = v92;
  v39 = sub_1001C302C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1001C63FC, &(&v79)[-4], v36, v15, &v79);
  if (v39[2] < 2uLL)
  {

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v92[0] = v43;
      *v42 = 136315138;
      v44 = v17;
      v45 = sub_1001BD820(v36, v15, v92);

      *(v42 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v40, v41, "PhotosLibraryUnderstanding adaptor assetVersion (%s) doesn't conform to regular format (major.minor....)", v42, 0xCu);
      sub_1001BDE20(v43);

      v46 = v44;
    }

    else
    {

      v46 = v17;
    }

LABEL_25:
    v34(v46, v7);
    v70 = 0;
LABEL_26:
    sub_1001BDE20(v93);
    return v70;
  }

  v47 = v39[4];
  v48 = v39[5];
  if (!((v48 ^ v47) >> 14))
  {
    goto LABEL_15;
  }

  v50 = v39[6];
  v49 = v39[7];
  v51 = v39;
  result = sub_1001C3C68(v39[4], v48, v50, v49, 10);
  if ((v53 & 0x100) == 0)
  {
    if ((v53 & 1) == 0)
    {
      v54 = result;
      goto LABEL_18;
    }

LABEL_15:

    goto LABEL_16;
  }

  v54 = sub_1001C36D0(v47, v48, v50, v49, 10);
  v56 = v55;

  if (v56)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (v51[2] < 2uLL)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v62 = v51[8];
  v63 = v51[9];
  v65 = v51[10];
  v64 = v51[11];

  if (!((v63 ^ v62) >> 14))
  {
    goto LABEL_15;
  }

  v66 = sub_1001C3C68(v62, v63, v65, v64, 10);
  if ((v67 & 0x100) != 0)
  {
    v68 = sub_1001C36D0(v62, v63, v65, v64, 10);
    v72 = v71;

    if ((v72 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_16:

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v92[0] = v60;
      *v59 = 136315138;
      v61 = sub_1001BD820(v84, v15, v92);

      *(v59 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v57, v58, "failed to parse assetVersion %s", v59, 0xCu);
      sub_1001BDE20(v60);
    }

    else
    {
    }

    v46 = v82;
    goto LABEL_25;
  }

  v68 = v66;
  v69 = v67;

  if (v69)
  {
    goto LABEL_16;
  }

LABEL_28:
  v70 = 9999;
  if (v54 == 9999)
  {
LABEL_31:

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v92[0] = v77;
      *v76 = 136315906;
      v78 = sub_1001BD820(v84, v15, v92);

      *(v76 + 4) = v78;
      *(v76 + 12) = 2048;
      *(v76 + 14) = v54;
      *(v76 + 22) = 2048;
      *(v76 + 24) = v68;
      *(v76 + 32) = 2048;
      *(v76 + 34) = v70;
      _os_log_impl(&_mh_execute_header, v74, v75, "PhotosLibraryUnderstanding assetVersion: %s, majorVersion: %ld, minorVersion: %ld, version = %ld", v76, 0x2Au);
      sub_1001BDE20(v77);
    }

    else
    {
    }

    v34(v82, v7);
    goto LABEL_26;
  }

  v73 = 10000 * v54;
  if ((v54 * 10000) >> 64 != (10000 * v54) >> 63)
  {
    goto LABEL_36;
  }

  v70 = &v68[v73];
  if (!__OFADD__(v73, v68))
  {
    goto LABEL_31;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t _s19MediaAnalysisDaemon22_MADObjCThemeGeneratorC38isLibraryUnderstandingAdapterAvailableSbyFZ_0()
{
  v85 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v83 = *(v85 - 8);
  v0 = __chkstk_darwin(v85);
  v82 = &v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v0);
  v84 = &v81 - v2;
  v98 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v101 = *(v98 - 8);
  v3 = __chkstk_darwin(v98);
  v86 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v97 = &v81 - v5;
  v90 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v88 = *(v90 - 8);
  v6 = __chkstk_darwin(v90);
  v87 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v89 = &v81 - v8;
  v96 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v92 = *(v95 - 8);
  __chkstk_darwin(v95);
  v91 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenerativeModelsAvailability();
  v99 = *(v11 - 8);
  v100 = v11;
  __chkstk_darwin(v11);
  v102 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001BBBD0(&qword_1002B7FE0);
  __chkstk_darwin(v13 - 8);
  v103 = &v81 - v14;
  v104 = type metadata accessor for Locale.Language();
  v15 = *(v104 - 1);
  __chkstk_darwin(v104);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v81 - v23;
  v25 = type metadata accessor for Locale.LanguageCode();
  v106 = *(v25 - 8);
  __chkstk_darwin(v25);
  v105 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.autoupdatingCurrent.getter();
  Locale.identifier.getter();
  v27 = *(v19 + 8);
  v27(v22, v18);
  Locale.init(identifier:)();
  Locale.language.getter();
  v28 = v24;
  v29 = v25;
  v30 = v103;
  v27(v28, v18);
  Locale.Language.languageCode.getter();
  v31 = v17;
  v32 = v106;
  (*(v15 + 8))(v31, v104);
  if ((*(v32 + 48))(v30, 1, v29) == 1)
  {
    sub_1001BDED0(v30, &qword_1002B7FE0);
    if (qword_1002B8890 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1001C3E68(v33, qword_1002B8898);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to get device language code", v36, 2u);
    }

    return 0;
  }

  v37 = v105;
  (*(v32 + 32))(v105, v30, v29);
  v38 = v93;
  (*(v32 + 16))(v93, v37, v29);
  (*(v94 + 104))(v38, enum case for GenerativeModelsAvailability.LanguageOption.languageCode(_:), v96);
  v39 = v91;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  v40 = v102;
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v92 + 8))(v39, v95);
  v41 = v97;
  GenerativeModelsAvailability.availability.getter();
  v42 = v101;
  v43 = *(v101 + 88);
  v44 = v98;
  if (v43(v41, v98) != enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    v61 = *(v42 + 8);
    v61(v41, v44);
    v62 = v86;
    GenerativeModelsAvailability.availability.getter();
    if (v43(v62, v44) != enum case for GenerativeModelsAvailability.Availability.restricted(_:))
    {
      (*(v99 + 8))(v40, v100);
      (*(v32 + 8))(v105, v29);
      v61(v62, v44);
      return 1;
    }

    (*(v101 + 96))(v62, v44);
    v63 = v83;
    v64 = v84;
    v65 = v85;
    (*(v83 + 32))(v84, v62, v85);
    if (qword_1002B8890 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_1001C3E68(v66, qword_1002B8898);
    v67 = v82;
    (*(v63 + 16))(v82, v64, v65);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v107[0] = v71;
      *v70 = 136315138;
      GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
      type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
      sub_1001C6598(&qword_1002B7FE8, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v72 = Set.description.getter();
      v74 = v73;

      v104 = *(v63 + 8);
      v75 = v67;
      v76 = v85;
      v104(v75, v85);
      v77 = sub_1001BD820(v72, v74, v107);

      *(v70 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v68, v69, "PhotosLibraryUnderstanding adaptor is restricted with reasons: %s", v70, 0xCu);
      sub_1001BDE20(v71);

      v104(v84, v76);
      goto LABEL_17;
    }

    v80 = *(v63 + 8);
    v80(v67, v65);
    v80(v64, v65);
    (*(v99 + 8))(v102, v100);
LABEL_21:
    (*(v32 + 8))(v105, v29);
    return 0;
  }

  (*(v42 + 96))(v41, v44);
  v46 = v88;
  v45 = v89;
  v47 = v90;
  (*(v88 + 32))(v89, v41, v90);
  if (qword_1002B8890 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_1001C3E68(v48, qword_1002B8898);
  v49 = v87;
  (*(v46 + 16))(v87, v45, v47);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v50, v51))
  {

    v78 = *(v46 + 8);
    v78(v49, v47);
    v78(v45, v47);
    (*(v99 + 8))(v40, v100);
    goto LABEL_21;
  }

  v52 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  v107[0] = v53;
  *v52 = 136315138;
  LODWORD(v104) = v51;
  GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
  type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  sub_1001C6598(&qword_1002B7FF0, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
  v54 = Set.description.getter();
  v56 = v55;

  v57 = *(v46 + 8);
  v58 = v49;
  v59 = v90;
  v57(v58, v90);
  v60 = sub_1001BD820(v54, v56, v107);

  *(v52 + 4) = v60;
  _os_log_impl(&_mh_execute_header, v50, v104, "PhotosLibraryUnderstanding adaptor is unavailable with reasons: %s", v52, 0xCu);
  sub_1001BDE20(v53);

  v57(v89, v59);
LABEL_17:
  (*(v99 + 8))(v102, v100);
  (*(v106 + 8))(v105, v29);
  return 0;
}

uint64_t sub_1001C61EC()
{
  result = type metadata accessor for PromptTemplate();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001C6290()
{
  result = type metadata accessor for _ClientInfoSessionTrackingConfig();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001C6338(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t *sub_1001C6398(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1001C63FC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_1001C6454()
{
  result = qword_1002B8000;
  if (!qword_1002B8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8000);
  }

  return result;
}

unint64_t sub_1001C64D4()
{
  result = qword_1002B8040;
  if (!qword_1002B8040)
  {
    sub_1001C6550(&qword_1002B8038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8040);
  }

  return result;
}

uint64_t sub_1001C6550(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001C6598(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_1001C65E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1001C65F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1001BBBD0(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}