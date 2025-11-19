void sub_10009C33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009C368(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MADEmbeddingStoreClientHandler] XPC connection interrupted", v5, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelAllRequests];
  }
}

void sub_10009C404(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MADEmbeddingStoreClientHandler] XPC connection invalidated", v7, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelAllRequests];
    v5 = v4[1];
    v4[1] = 0;

    v6 = +[VCPClientManager sharedManager];
    [v6 removeClientHandler:v4];
  }
}

void sub_10009CEF0()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B82A8;
  qword_1002B82A8 = v0;
}

void sub_10009D3A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10009D7BC(void *a1)
{
  v2 = [PHAssetCreationRequest creationRequestForAssetCopyFromAsset:a1[4] options:a1[5]];
  [v2 addResourceWithType:9 fileURL:a1[6] options:0];
}

void sub_10009EEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009EEF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009EF0C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = *(a1[9] + 8);
  obj = *(v6 + 40);
  v7 = [v2 replacePersistentStoreAtURL:v3 destinationOptions:v4 withPersistentStoreFromURL:v5 sourceOptions:v4 storeType:NSSQLiteStoreType error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[8] + 8) + 24) = v7;
}

void sub_10009F110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009F130(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreForURL:*(a1 + 40)];
  v3 = [v2 options];
  v4 = [v3 mutableCopy];

  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = *(a1 + 40);
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MADPhotosDataStoreClient] Current store options for persistent store at %@: %@", buf, 0x16u);
    }
  }

  [v4 setObject:&off_100296740 forKeyedSubscript:NSSQLitePragmasOption];
  v7 = *(a1 + 32);
  v19 = 0;
  [v7 removePersistentStore:v2 error:&v19];
  v8 = v19;
  if (v8)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v9 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[MADPhotosDataStoreClient] Failed to removing persistent store with error: %@", buf, 0xCu);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v18 = 0;
    v12 = [v10 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v11 options:v4 error:&v18];
    v13 = v18;
    v14 = MediaAnalysisLogLevel();
    if (v13)
    {
      if (v14 >= 3)
      {
        v15 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          *buf = 138412290;
          v21 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MADPhotosDataStoreClient] Failed to add persistent store to coordinator with error %@", buf, 0xCu);
        }
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    else if (v14 >= 6)
    {
      v16 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        v17 = [v12 options];
        *buf = 138412290;
        v21 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MADPhotosDataStoreClient] Successfully added persistent store to coordinator with options: %@", buf, 0xCu);
      }
    }
  }
}

uint64_t sub_10009F7FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 code];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

void sub_1000A0158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPPhotosCaptureProcessingTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000A06E4(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A0900;
  v8[3] = &unk_1002853D8;
  v12 = &v18;
  v13 = &v14;
  v4 = v2;
  v9 = v4;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v5 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = v19[3];
      v7 = v15[3];
      *buf = 134218240;
      v23 = v6;
      v24 = 2048;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[PhotosCapture] Persisted %lu faces (%lu identified)", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

void sub_1000A08AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000A0900(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  context = objc_autoreleasePoolPush();
  v31 = [PHAssetChangeRequest changeRequestForAsset:a2, v5];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v6)
  {
    v7 = *v34;
    do
    {
      v8 = 0;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * v8);
        ++*(*(a1[7] + 8) + 24);
        v10 = [v9 personLocalIdentifier];
        v11 = v10 == 0;

        if (v11)
        {
          v14 = 0;
        }

        else
        {
          ++*(*(a1[8] + 8) + 24);
          v12 = a1[4];
          v13 = [v9 personLocalIdentifier];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (!v14)
          {
            v15 = a1[5];
            v16 = [v9 personLocalIdentifier];
            v17 = [v15 objectForKeyedSubscript:v16];

            if (v17)
            {
              v14 = [PHPersonChangeRequest changeRequestForPerson:v17];
              v18 = a1[4];
              v19 = [v9 personLocalIdentifier];
              [v18 setObject:v14 forKeyedSubscript:v19];
            }

            else
            {
              v14 = 0;
            }
          }
        }

        v20 = [v9 localIdentifier];
        v21 = v20 == 0;

        if (v21)
        {
          v24 = +[PHFaceChangeRequest creationRequestForFace];
          v25 = [v24 placeholderForCreatedFace];
          [VCPFaceUtils assignPropertiesOfVCPPhotosFace:v9 toPHFaceChangeRequest:v24];
          [v24 setNameSource:6];
          v38 = v25;
          v28 = [NSArray arrayWithObjects:&v38 count:1];
          [v31 addFaces:v28];

          if (!v14)
          {
            goto LABEL_19;
          }

          v37 = v25;
          v26 = [NSArray arrayWithObjects:&v37 count:1];
          [v14 addFaces:v26];
        }

        else
        {
          v22 = [v9 localIdentifier];
          v40 = v22;
          v23 = [NSArray arrayWithObjects:&v40 count:1];
          v24 = [PHFace fetchFacesWithLocalIdentifiers:v23 options:a1[6]];

          v25 = [v24 firstObject];
          v26 = [PHFaceChangeRequest changeRequestForFace:v25];
          [VCPFaceUtils assignPropertiesOfVCPPhotosFace:v9 toPHFaceChangeRequest:v26];
          [v26 setNameSource:6];
          if (v14)
          {
            v39 = v25;
            v27 = [NSArray arrayWithObjects:&v39 count:1];
            [v14 addFaces:v27];
          }
        }

LABEL_19:
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v6);
  }

  v29 = +[PHAsset quickClassificationFaceAdjustmentVersion];
  [v31 setFaceAdjustmentVersion:v29];

  [v31 setFaceAnalysisVersion:14];
  objc_autoreleasePoolPop(context);
}

void sub_1000A14D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v11 = 0;
  v12 = 0;
  v7 = [v6 processAsset:v5 onDemandDetection:a3 detectedFaces:&v12 detectedPersons:&v11];
  v8 = v12;
  v9 = v11;
  if (!v7)
  {
    v10 = *(a1 + 40);
    objc_sync_enter(v10);
    if ([v8 count])
    {
      if ((a3 & 1) == 0)
      {
        ++*(*(a1 + 40) + 72);
      }

      ++*(*(a1 + 40) + 56);
      ++*(*(a1 + 40) + 64);
      *(*(a1 + 40) + 80) += [v9 count];
      *(*(a1 + 40) + 88) += [v8 count];
      [*(a1 + 48) setObject:v8 forKeyedSubscript:v5];
      [*(a1 + 56) addEntriesFromDictionary:v9];
    }

    else if (a3)
    {
      ++*(*(a1 + 40) + 56);
    }

    objc_sync_exit(v10);
  }
}

void sub_1000A1650(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((*(a1 + 32) + 26));
  if ((v2 & 1) == 0)
  {
    v5 = atomic_load((*(a1 + 32) + 25));
    if ((v5 & 1) == 0 || (*(a1 + 64) & 1) == 0)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [*(a1 + 40) objectAtIndexedSubscript:a2];
      v8 = [v7 vcp_isPano];
      v9 = *(a1 + 32);
      if (v8)
      {
        v10 = v9;
        objc_sync_enter(v10);
        [*(a1 + 48) addObject:v7];
        objc_sync_exit(v10);
      }

      else if ([v9 isAssetEligible:v7])
      {
        (*(*(a1 + 56) + 16))();
      }

      objc_autoreleasePoolPop(v6);
    }
  }
}

void sub_1000A1744(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1000A1768(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VCPJIT_Face_PersistBatch", "", buf, 2u);
  }

  [*(a1 + 32) _persistClassifiedFaces:*(a1 + 40) withDetectedPersons:*(a1 + 48)];
  v7 = VCPSignPostLog();
  v8 = v7;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v4, "VCPJIT_Face_PersistBatch", "", v9, 2u);
  }

  if (v2)
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }
}

uint64_t sub_1000A1E38(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 26));
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = atomic_load((*(a1 + 32) + 25));
  }

  return v2 & 1;
}

unint64_t sub_1000A1E64(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 prepare];
  if (!v3)
  {
    v4 = [v2 process];
    v3 = v4;
    if (v4 == -128 || !v4)
    {
      v5 = [v2 publish];
      if (v5)
      {
        v3 = v5;
      }

      else
      {
        v3 = v3;
      }
    }
  }

  return v3;
}

void sub_1000A33E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12)
{
  objc_sync_exit(v12);

  _Unwind_Resume(a1);
}

void sub_1000A52BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000A6B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);

  _Block_object_dispose((v45 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A6C18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A6C30(uint64_t a1, double a2)
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ %.2f%% complete", &v6, 0x16u);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void sub_1000A6D10(void *a1, int a2)
{
  [*(*(a1[8] + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = a1[4];
      [*(*(a1[8] + 8) + 40) elapsedTimeSeconds];
      v7 = @"interrupted";
      *buf = 138413058;
      v63 = v5;
      v64 = 2112;
      if (!a2)
      {
        v7 = @"finished";
      }

      v65 = v7;
      v66 = 2048;
      v67 = v6;
      v68 = 1024;
      LODWORD(v69) = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ processing %@ after %0.6fs (%d)", buf, 0x26u);
    }
  }

  v48 = a2;
  if (a2 != -128 && a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1000A755C(a1, a2);
  }

  if (a1[5])
  {
    v8 = +[NSMutableSet set];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v9 = [objc_opt_class() producedResultIdentifiers];
    v10 = [v9 countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v10)
    {
      v11 = *v59;
      v12 = VCPLogToOSLogType[5];
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v59 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v58 + 1) + 8 * i);
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v12))
          {
            v15 = a1[4];
            v16 = *(*(a1[9] + 8) + 24);
            *buf = 138412802;
            v63 = v15;
            v64 = 2112;
            v65 = v14;
            v66 = 1024;
            LODWORD(v67) = v16;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Collecting produced results %@: %d", buf, 0x1Cu);
          }

          v17 = [[BGSystemTaskResult alloc] initWithIdentifier:v14 cumulativeProductionCount:*(*(a1[9] + 8) + 24)];
          [v8 addObject:v17];
        }

        v10 = [v9 countByEnumeratingWithState:&v58 objects:v71 count:16];
      }

      while (v10);
    }

    if ([v8 count])
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v18 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          v19 = a1[4];
          *buf = 138412290;
          v63 = v19;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Reporting produced results ...", buf, 0xCu);
        }
      }

      v20 = a1[5];
      v57 = 0;
      v21 = [v20 producedCumulativeResults:v8 error:&v57];
      v22 = v57;
      if ((v21 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
      {
        v23 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v23))
        {
          v24 = a1[4];
          *buf = 138412546;
          v63 = v24;
          v64 = 2112;
          v65 = v22;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Failed to report produced results - %@", buf, 0x16u);
        }
      }
    }

    if (!v48)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v25 = [objc_opt_class() featureCodes];
      v26 = [v25 countByEnumeratingWithState:&v53 objects:v70 count:16];
      if (!v26)
      {
        goto LABEL_46;
      }

      v27 = *v54;
      type = VCPLogToOSLogType[5];
      v50 = VCPLogToOSLogType[3];
      while (1)
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v54 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v53 + 1) + 8 * j);
          v30 = [v29 unsignedIntegerValue];
          v52 = 0;
          v31 = [BGSystemTaskCheckpoints reportFeatureCheckpoint:30 forFeature:v30 error:&v52];
          v32 = v52;
          if (v31)
          {
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
            {
              v33 = a1[4];
              *buf = 138412802;
              v63 = v33;
              v64 = 2048;
              v65 = 30;
              v66 = 2112;
              v67 = v29;
              v34 = type;
              v35 = "%@ Reported checkpoint %lu for %@";
              v36 = 32;
LABEL_43:
              _os_log_impl(&_mh_execute_header, &_os_log_default, v34, v35, buf, v36);
            }
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v50))
          {
            v37 = a1[4];
            *buf = 138413058;
            v63 = v37;
            v64 = 2048;
            v65 = 30;
            v66 = 2112;
            v67 = v29;
            v68 = 2112;
            v69 = v32;
            v34 = v50;
            v35 = "%@ Failed to report checkpoint %lu for %@ - %@";
            v36 = 42;
            goto LABEL_43;
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v53 objects:v70 count:16];
        if (!v26)
        {
LABEL_46:

          break;
        }
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v38 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v38))
    {
      v39 = a1[4];
      *buf = 138412290;
      v63 = v39;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "%@ systemTask is nil; skip reporting progress", buf, 0xCu);
    }
  }

  v40 = *(a1[10] + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = 0;

  if (MediaAnalysisLogLevel() >= 5)
  {
    v42 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v42))
    {
      v43 = a1[4];
      *buf = 138412290;
      v63 = v43;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "%@ exiting processing task ...", buf, 0xCu);
    }
  }

  v44 = +[MADProgressReporterBackgroundSystemTask sharedTask];
  v51 = 0;
  [v44 submitTask:&v51];
  v45 = v51;

  if (v45)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v46 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v46))
      {
        v47 = a1[4];
        *buf = 138412290;
        v63 = v47;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "%@ Failed to request workload progress report task", buf, 0xCu);
      }
    }
  }

  (*(a1[7] + 16))();
}

void sub_1000A755C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = 138412546;
  v4 = v2;
  v5 = 1024;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%@ processing failed (%d)", &v3, 0x12u);
}

void sub_1000A8334(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  (*(*(a1 + 48) + 16))();
  v10 = [NSString stringWithFormat:@"[MACS][ResultFor%@][%@]", *(a1 + 32), v7];
  if (v9)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v11 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        *buf = 138412546;
        v24 = v10;
        v25 = 2112;
        v26 = v9;
        v12 = "%@ Failed to process %@";
        v13 = v11;
LABEL_13:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, v12, buf, 0x16u);
      }
    }
  }

  else if ([*(a1 + 40) startAccessingSecurityScopedResource])
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v14 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = *(a1 + 40);
        *buf = 138412546;
        v24 = v10;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Consuming secure scoped result URL %@", buf, 0x16u);
      }
    }

    v16 = *(a1 + 32);
    v17 = [v7 hash];
    v18 = +[NSDate now];
    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"result-%@-%lu-%lu.data", v16, v17, [v18 hash]);

    v20 = [*(a1 + 40) URLByAppendingPathComponent:v19];
    [*(a1 + 56) _saveResult:v8 fileURL:v20];
    [*(a1 + 40) stopAccessingSecurityScopedResource];
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v21 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      v22 = *(a1 + 40);
      *buf = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v22;
      v12 = "%@ Failed to open secure scoped result URL %@; exit";
      v13 = v21;
      goto LABEL_13;
    }
  }
}

void sub_1000A883C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  (*(*(a1 + 48) + 16))();
  v10 = [NSString stringWithFormat:@"[MACS][ResultFor%@][%@]", *(a1 + 32), v7];
  if (v9)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v11 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        *buf = 138412546;
        v25 = v10;
        v26 = 2112;
        v27 = v9;
        v12 = "%@ Failed to process %@";
        v13 = v11;
LABEL_13:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, v12, buf, 0x16u);
      }
    }
  }

  else if ([*(a1 + 40) startAccessingSecurityScopedResource])
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v14 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = *(a1 + 40);
        *buf = 138412546;
        v25 = v10;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Consuming secure scoped result URL %@", buf, 0x16u);
      }
    }

    v16 = *(a1 + 32);
    v17 = [v7 absoluteString];
    v18 = [v17 hash];
    v19 = +[NSDate now];
    v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"result-%@-%lu-%lu.data", v16, v18, [v19 hash]);

    v21 = [*(a1 + 40) URLByAppendingPathComponent:v20];
    [*(a1 + 56) _saveResult:v8 fileURL:v21];
    [*(a1 + 40) stopAccessingSecurityScopedResource];
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v22 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v22))
    {
      v23 = *(a1 + 40);
      *buf = 138412546;
      v25 = v10;
      v26 = 2112;
      v27 = v23;
      v12 = "%@ Failed to open secure scoped result URL %@; exit";
      v13 = v22;
      goto LABEL_13;
    }
  }
}

void sub_1000A9A54(uint64_t a1, void *a2)
{
  v3 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v6 = *v25;
    if (v3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0x7FFFLL;
    }

    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        [v9 setStatus:v7];
        objc_autoreleasePoolPop(v10);
      }

      v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  v11 = +[MADSystemDataStore systemDataStore];
  v23 = 0;
  v12 = [v11 commitChangesOrRollback:&v23];
  v13 = v23;

  if ((v12 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v14 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = *(a1 + 40);
        *buf = 138412546;
        v29 = v15;
        v30 = 2112;
        v31 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Failed to commit changes - %@", buf, 0x16u);
      }
    }

    v16 = v13;

    v3 = v16;
  }

  v17 = [*(a1 + 32) firstObject];
  v18 = [v17 resultDirectoryURL];
  [v18 stopAccessingSecurityScopedResource];

  if (MediaAnalysisLogLevel() >= 7)
  {
    v19 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v19))
    {
      v20 = *(a1 + 40);
      v21 = [*(a1 + 32) firstObject];
      v22 = [v21 resultDirectoryURL];
      *buf = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Closing secure scoped result URL %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000A9D78(uint64_t a1, void *a2)
{
  v12 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = *v14;
    v6 = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 assetURL];
        [v9 stopAccessingSecurityScopedResource];

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v6))
        {
          v10 = *(a1 + 40);
          v11 = [v8 assetURL];
          *buf = 138412546;
          v18 = v10;
          v19 = 2112;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Closing secure scoped URL %@", buf, 0x16u);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000AA30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = MADComputeServiceProcessingTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000AAFD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v23 = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithFormat:@"%@ Analysis failed - %d", *(a1 + 40), a2];
    v24 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v16 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v4];

    if (MediaAnalysisLogLevel() >= 3)
    {
      v5 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        *buf = 138412290;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@", buf, 0xCu);
      }
    }

    *(*(a1 + 32) + 80) = *(*(a1 + 32) + 80) + [*(*(a1 + 32) + 24) count];
    (*(*(*(a1 + 32) + 88) + 16))(*(*(a1 + 32) + 80) / *(*(a1 + 32) + 72));
    (*(*(*(a1 + 32) + 96) + 16))();
  }

  else
  {
    v16 = [*(a1 + 32) _loadAssetsForTaskID:2];
    v6 = [PHSceneClassification fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:v16];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = *(*(a1 + 32) + 24);
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = *(a1 + 32);
          v14 = [v6 objectForKeyedSubscript:v11];
          v15 = [v13 _prepareSceneResultWithClassifications:v14];

          *(*(a1 + 32) + 80) = *(*(a1 + 32) + 80) + 1.0;
          (*(*(*(a1 + 32) + 88) + 16))(*(*(a1 + 32) + 80) / *(*(a1 + 32) + 72));
          (*(*(*(a1 + 32) + 96) + 16))();

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v8);
    }
  }
}

void sub_1000ABED4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v28 = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithFormat:@"%@ Analysis failed - %d", *(a1 + 40), a2];
    v29 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v20 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v4];

    if (MediaAnalysisLogLevel() >= 3)
    {
      v5 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        *buf = 138412290;
        v27 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@", buf, 0xCu);
      }
    }

    *(*(a1 + 32) + 80) = *(*(a1 + 32) + 80) + [*(*(a1 + 32) + 24) count];
    (*(*(*(a1 + 32) + 88) + 16))(*(*(a1 + 32) + 80) / *(*(a1 + 32) + 72));
    (*(*(*(a1 + 32) + 96) + 16))();
  }

  else
  {
    v20 = [*(a1 + 32) _loadAssetsForTaskID:3];
    v6 = [v20 firstObject];
    v7 = [v6 photoLibrary];
    v8 = [v7 librarySpecificFetchOptions];

    v19 = v8;
    v9 = [PHFace fetchFacesGroupedByAssetLocalIdentifierForAssets:v20 options:v8];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = *(*(a1 + 32) + 24);
    v10 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v10)
    {
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = *(a1 + 32);
          v16 = [v9 objectForKeyedSubscript:v13];
          v17 = [v16 fetchedObjects];
          v18 = [v15 _prepareFaceResultWithFaces:v17];

          *(*(a1 + 32) + 80) = *(*(a1 + 32) + 80) + 1.0;
          (*(*(*(a1 + 32) + 88) + 16))(*(*(a1 + 32) + 80) / *(*(a1 + 32) + 72));
          (*(*(*(a1 + 32) + 96) + 16))();

          objc_autoreleasePoolPop(v14);
        }

        v10 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v10);
    }
  }
}

id sub_1000AE5CC(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(*(a1 + 32) + 8);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

void sub_1000AE718(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MADSceneClassification entryWithLabel:v5 confidence:v6 boundingBox:1.0 videoEntries:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v8 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      v9 = *(a1 + 40);
      v10 = 138412802;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Failed to create classification for label %@ from %@; skip", &v10, 0x20u);
    }
  }
}

void sub_1000AE884(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MADDetectedFace entryWithFaceID:confidence:boundingBox:videoEntries:](MADDetectedFace, "entryWithFaceID:confidence:boundingBox:videoEntries:", [v5 intValue], v6, 1.0, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v8 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[MADComputeServiceProcessingTask] Failed to create face %@ from %@; skip", &v9, 0x16u);
    }
  }
}

id sub_1000AEBC0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(*(a1 + 32) + 8);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

id sub_1000B0190(uint64_t a1)
{
  v2 = +[VCPWatchdog sharedWatchdog];
  [v2 pet];

  v3 = *(a1 + 32);

  return [v3 isCancelled];
}

id sub_1000B01F0(uint64_t a1)
{
  v2 = +[VCPWatchdog sharedWatchdog];
  [v2 pet];

  v3 = *(a1 + 32);

  return [v3 isCancelled];
}

uint64_t sub_1000B0FF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B100C(uint64_t a1, void *a2, void *a3)
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
        v8 = *(a1 + 32);
        v16 = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Request failed with error: %@", &v16, 0x16u);
      }
    }

    v9 = 48;
    v10 = v6;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v11 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        v12 = *(a1 + 32);
        v16 = 138412546;
        v17 = v12;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Request completed with analysis for assets %@", &v16, 0x16u);
      }
    }

    v9 = 56;
    v10 = v5;
  }

  v13 = *(*(a1 + v9) + 8);
  v14 = v10;
  v15 = *(v13 + 40);
  *(v13 + 40) = v14;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000B1898(uint64_t a1, void *a2, void *a3)
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
        v8 = *(a1 + 32);
        v16 = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Request failed with error: %@", &v16, 0x16u);
      }
    }

    v9 = 48;
    v10 = v6;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v11 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        v12 = *(a1 + 32);
        v16 = 138412546;
        v17 = v12;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Request completed with analysis for assets %@", &v16, 0x16u);
      }
    }

    v9 = 56;
    v10 = v5;
  }

  v13 = *(*(a1 + v9) + 8);
  v14 = v10;
  v15 = *(v13 + 40);
  *(v13 + 40) = v14;

  dispatch_semaphore_signal(*(a1 + 40));
}

id sub_1000B1A4C(uint64_t a1)
{
  v1 = [*(a1 + 32) isCancelled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

void sub_1000B3B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, const void *a11, const void *a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, id location)
{
  sub_100002CBC(&a11);
  sub_100002CBC(&a12);
  sub_100002CBC(&a13);
  objc_destroyWeak((v28 + 40));

  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000B3C10(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MADComputeServiceClientHandler] XPC connection interrupted", v7, 2u);
    }
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelAllRequests];
  }
}

void sub_1000B3CD4(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MADComputeServiceClientHandler] XPC connection invalidated", v9, 2u);
    }
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelAllRequests];
    v7 = v6[1];
    v6[1] = 0;

    v8 = +[VCPClientManager sharedManager];
    [v8 removeClientHandler:v6];
  }
}

void sub_1000B3DE0(id a1, NSError *a2)
{
  v2 = a2;
  if (MediaAnalysisLogLevel() >= 3)
  {
    v3 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[MADComputeServiceClientHandler] Connecting client proxy error %@", &v4, 0xCu);
    }
  }
}

void sub_1000B4A84(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(*(a1 + 32) + 16))
  {
    if (v9)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v11 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          *buf = 138412290;
          v24 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[MADComputeServiceClientHandler] Entering results handler group with error ... %@", buf, 0xCu);
        }
      }

      dispatch_group_enter(*(*(a1 + 32) + 48));
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = *(v13 + 16);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000B4D94;
      v21[3] = &unk_1002856B8;
      v21[4] = v13;
      [v14 handleResults:0 assetRepresentation:v7 requestID:v12 error:v10 acknowledgement:v21];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v16 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MADComputeServiceClientHandler] Entering results handler group ...", buf, 2u);
        }
      }

      dispatch_group_enter(*(*(a1 + 32) + 48));
      v17 = *(*(a1 + 32) + 16);
      v22 = v8;
      v18 = [NSArray arrayWithObjects:&v22 count:1];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000B4E84;
      v20[3] = &unk_1002856B8;
      v19 = *(a1 + 40);
      v20[4] = *(a1 + 32);
      [v17 handleResults:v18 assetRepresentation:v7 requestID:v19 error:0 acknowledgement:v20];
    }
  }

  else if (MediaAnalysisLogLevel() >= 6)
  {
    v15 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MADComputeServiceClientHandler] No remote proxy; exit resultHandler", buf, 2u);
    }
  }
}

void sub_1000B4D94(uint64_t a1, int a2)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = @"NO";
      if (a2)
      {
        v5 = @"YES";
      }

      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MADComputeServiceClientHandler] Received acknowledgement response %@", &v6, 0xCu);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 48));
}

void sub_1000B4E84(uint64_t a1, int a2)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = @"NO";
      if (a2)
      {
        v5 = @"YES";
      }

      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MADComputeServiceClientHandler] Received acknowledgement response %@", &v6, 0xCu);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 48));
}

void sub_1000B4F74(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MADComputeServiceClientHandler] Waiting for results handler group ...", v16, 2u);
    }
  }

  dispatch_group_wait(*(*(a1 + 32) + 48), 0xFFFFFFFFFFFFFFFFLL);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MADComputeServiceClientHandler] All results handler calls have returned", v16, 2u);
    }
  }

  [*(a1 + 40) timeIntervalSinceNow];
  v7 = v6;
  v17[0] = VCPAnalytics7458FieldKeyRequestQoS;
  qos_class_self();
  v8 = VCPMAQoSDescription();
  v18[0] = v8;
  v17[1] = VCPAnalytics7458FieldKeyRequestCount;
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) count]);
  v18[1] = v9;
  v18[2] = @"MACS-URL";
  v17[2] = VCPAnalytics7458FieldKeyRequestType;
  v17[3] = VCPAnalytics7458FieldKeyAssetCount;
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 56) count]);
  v18[3] = v10;
  v17[4] = VCPAnalytics7458FieldKeyClient;
  v11 = *(*(a1 + 32) + 24);
  if (!v11)
  {
    v11 = @"Unknown";
  }

  v18[4] = v11;
  v17[5] = VCPAnalytics7458FieldKeyProcessingTime;
  v12 = [NSNumber numberWithDouble:-v7];
  v18[5] = v12;
  v17[6] = VCPAnalytics7458FieldKeyError;
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 code]);
  v18[6] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:7];

  v15 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v15 sendEvent:VCPAnalytics7458EventServiceRequest withAnalytics:v14];

  (*(*(a1 + 64) + 16))();
}

void sub_1000B5718(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(*(a1 + 32) + 16))
  {
    if (v9)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v11 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          *buf = 138412290;
          v24 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[MADComputeServiceClientHandler] Entering results handler group with error ... %@", buf, 0xCu);
        }
      }

      dispatch_group_enter(*(*(a1 + 32) + 48));
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = *(v13 + 16);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000B5A28;
      v21[3] = &unk_1002856B8;
      v21[4] = v13;
      [v14 handleResults:0 assetRepresentation:v7 requestID:v12 error:v10 acknowledgement:v21];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v16 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MADComputeServiceClientHandler] Entering results handler group ...", buf, 2u);
        }
      }

      dispatch_group_enter(*(*(a1 + 32) + 48));
      v17 = *(*(a1 + 32) + 16);
      v22 = v8;
      v18 = [NSArray arrayWithObjects:&v22 count:1];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000B5B18;
      v20[3] = &unk_1002856B8;
      v19 = *(a1 + 40);
      v20[4] = *(a1 + 32);
      [v17 handleResults:v18 assetRepresentation:v7 requestID:v19 error:0 acknowledgement:v20];
    }
  }

  else if (MediaAnalysisLogLevel() >= 6)
  {
    v15 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MADComputeServiceClientHandler] No remote proxy; exit resultHandler", buf, 2u);
    }
  }
}

void sub_1000B5A28(uint64_t a1, int a2)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = @"NO";
      if (a2)
      {
        v5 = @"YES";
      }

      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MADComputeServiceClientHandler] Received acknowledgement response %@", &v6, 0xCu);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 48));
}

void sub_1000B5B18(uint64_t a1, int a2)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = @"NO";
      if (a2)
      {
        v5 = @"YES";
      }

      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MADComputeServiceClientHandler] Received acknowledgement response %@", &v6, 0xCu);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 48));
}

void sub_1000B5C08(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MADComputeServiceClientHandler] Waiting for results handler group ...", v16, 2u);
    }
  }

  dispatch_group_wait(*(*(a1 + 32) + 48), 0xFFFFFFFFFFFFFFFFLL);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MADComputeServiceClientHandler] All results handler calls have returned", v16, 2u);
    }
  }

  [*(a1 + 40) timeIntervalSinceNow];
  v7 = v6;
  v17[0] = VCPAnalytics7458FieldKeyRequestQoS;
  qos_class_self();
  v8 = VCPMAQoSDescription();
  v18[0] = v8;
  v17[1] = VCPAnalytics7458FieldKeyRequestCount;
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) count]);
  v18[1] = v9;
  v18[2] = @"MACS-Photos";
  v17[2] = VCPAnalytics7458FieldKeyRequestType;
  v17[3] = VCPAnalytics7458FieldKeyAssetCount;
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 56) count]);
  v18[3] = v10;
  v17[4] = VCPAnalytics7458FieldKeyClient;
  v11 = *(*(a1 + 32) + 24);
  if (!v11)
  {
    v11 = @"Unknown";
  }

  v18[4] = v11;
  v17[5] = VCPAnalytics7458FieldKeyProcessingTime;
  v12 = [NSNumber numberWithDouble:-v7];
  v18[5] = v12;
  v17[6] = VCPAnalytics7458FieldKeyError;
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 code]);
  v18[6] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:7];

  v15 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v15 sendEvent:VCPAnalytics7458EventServiceRequest withAnalytics:v14];

  (*(*(a1 + 64) + 16))();
}

void sub_1000B6224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_1000B6870(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(*(a1 + 32) + 16))
  {
    if (v9)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v11 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          *buf = 138412290;
          v24 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[MADComputeServiceClientHandler] Entering results handler group with error ... %@", buf, 0xCu);
        }
      }

      dispatch_group_enter(*(*(a1 + 32) + 48));
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = *(v13 + 16);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000B6B80;
      v21[3] = &unk_1002856B8;
      v21[4] = v13;
      [v14 handleResults:0 assetRepresentation:v7 requestID:v12 error:v10 acknowledgement:v21];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v16 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MADComputeServiceClientHandler] Entering results handler group ...", buf, 2u);
        }
      }

      dispatch_group_enter(*(*(a1 + 32) + 48));
      v17 = *(*(a1 + 32) + 16);
      v22 = v8;
      v18 = [NSArray arrayWithObjects:&v22 count:1];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000B6C70;
      v20[3] = &unk_1002856B8;
      v19 = *(a1 + 40);
      v20[4] = *(a1 + 32);
      [v17 handleResults:v18 assetRepresentation:v7 requestID:v19 error:0 acknowledgement:v20];
    }
  }

  else if (MediaAnalysisLogLevel() >= 6)
  {
    v15 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MADComputeServiceClientHandler] No remote proxy; exit resultHandler", buf, 2u);
    }
  }
}

void sub_1000B6B80(uint64_t a1, int a2)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = @"NO";
      if (a2)
      {
        v5 = @"YES";
      }

      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MADComputeServiceClientHandler] Received acknowledgement response %@", &v6, 0xCu);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 48));
}

void sub_1000B6C70(uint64_t a1, int a2)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = @"NO";
      if (a2)
      {
        v5 = @"YES";
      }

      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MADComputeServiceClientHandler] Received acknowledgement response %@", &v6, 0xCu);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 48));
}

void sub_1000B6D60(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MADComputeServiceClientHandler] Waiting for results handler group ...", v14, 2u);
    }
  }

  dispatch_group_wait(*(*(a1 + 32) + 48), 0xFFFFFFFFFFFFFFFFLL);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MADComputeServiceClientHandler] All results handler calls have returned", v14, 2u);
    }
  }

  [*(a1 + 40) timeIntervalSinceNow];
  v7 = v6;
  v15[0] = VCPAnalytics7458FieldKeyRequestQoS;
  qos_class_self();
  v8 = VCPMAQoSDescription();
  v16[0] = v8;
  v16[1] = @"MACS-Resume";
  v15[1] = VCPAnalytics7458FieldKeyRequestType;
  v15[2] = VCPAnalytics7458FieldKeyClient;
  v9 = *(*(a1 + 32) + 24);
  if (!v9)
  {
    v9 = @"Unknown";
  }

  v16[2] = v9;
  v15[3] = VCPAnalytics7458FieldKeyProcessingTime;
  v10 = [NSNumber numberWithDouble:-v7];
  v16[3] = v10;
  v15[4] = VCPAnalytics7458FieldKeyError;
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 code]);
  v16[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];

  v13 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v13 sendEvent:VCPAnalytics7458EventServiceRequest withAnalytics:v12];

  (*(*(a1 + 48) + 16))();
}

void sub_1000B8C80(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = *(a1 + 168);
  v3 = 138412546;
  v4 = v1;
  v5 = 2112;
  v6 = v2;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%@[%@] Task must be MADPhotosAssetProcessingTask!", &v3, 0x16u);
}

void sub_1000B93B8(void *a1)
{
  v2 = [PHAssetChangeRequest changeRequestForAsset:a1[4]];
  [v2 setVariationSuggestionStates:a1[5] forVariationType:1];
  [v2 setVariationSuggestionStates:a1[6] forVariationType:3];
}

uint64_t sub_1000BB55C(uint64_t a1)
{
  v2 = +[VCPWatchdog sharedWatchdog];
  [v2 pet];

  v3 = [*(a1 + 32) cancel];
  v4 = v3[2]();

  return v4;
}

uint64_t sub_1000BB5D4(uint64_t a1)
{
  v2 = +[VCPWatchdog sharedWatchdog];
  [v2 pet];

  v3 = [*(a1 + 32) cancel];
  v4 = v3[2]();

  return v4;
}

uint64_t sub_1000BB64C(uint64_t a1)
{
  v2 = +[VCPWatchdog sharedWatchdog];
  [v2 pet];

  v3 = [*(a1 + 32) cancel];
  v4 = v3[2]();

  return v4;
}

void sub_1000BB6C4(void *a1, void *a2)
{
  v3 = a2;
  [v3 assetWithPhotosAsset:*(a1[4] + 80) analysis:a1[5]];
  [v3 removeProcessingStatusForLocalIdentifier:a1[6] taskID:*(a1[4] + 56)];
}

uint64_t sub_1000BB74C(uint64_t a1)
{
  v1 = [*(a1 + 32) cancel];
  v2 = v1[2]();

  return v2;
}

void sub_1000BB7A0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 80) localIdentifier];
  [v5 updateProcessingStatus:3 nextAttemptDate:v3 localIdentifier:v4 taskID:*(*(a1 + 40) + 56)];
}

void sub_1000BB850(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) previousAttempts];
  v4 = *(a1 + 32);
  v5 = v4[10];
  v6 = v4[7];
  v7 = [v4 previousStatus];
  v8 = [*(a1 + 32) lastAttemptDate];
  [v9 setAttempts:v3 asset:v5 taskID:v6 status:v7 lastAttemptDate:v8];
}

void sub_1000BB924(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 80) localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v3 taskID:*(*(a1 + 32) + 56)];
}

void sub_1000BB9C4(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) previousAttempts];
  v4 = *(a1 + 32);
  v5 = v4[10];
  v6 = v4[7];
  v7 = [v4 previousStatus];
  v8 = [*(a1 + 32) lastAttemptDate];
  [v9 setAttempts:v3 asset:v5 taskID:v6 status:v7 lastAttemptDate:v8];
}

void sub_1000BBA98(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 80) localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v3 taskID:*(*(a1 + 32) + 56)];
}

void sub_1000BBF9C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) localIdentifier];
  [v5 storeStatsFlags:v3 forLocalIdentifier:v4];
}

void sub_1000BD15C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v10 = v3;
  v6 = [v3 localIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];
  [v4 updateStatsFlags:objc_msgSend(v7 forPHAsset:{"statsFlags"), v10}];

  v8 = a1[6];
  v9 = [v10 localIdentifier];
  [v8 removeObject:v9];
}

void sub_1000BDA90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v5 = VCPLogToOSLogType[6];
  *&v6 = 138412802;
  v15 = v6;
  while (v4 < [*(a1 + 32) count])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [*(a1 + 32) objectAtIndexedSubscript:v4];
    if ([v8 isVideo])
    {
      v9 = 4;
    }

    else if ([v8 vcp_isLivePhoto])
    {
      v9 = 2;
    }

    else
    {
      v9 = [v8 isPhoto];
    }

    v10 = [v8 localIdentifier];
    [v3 storeStatsFlags:v9 forLocalIdentifier:v10];

    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      v11 = *(*(a1 + 40) + 40);
      v12 = [v8 localIdentifier];
      [v11 storeStatsFlags:v9 forLocalIdentifier:v12];
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v5))
    {
      v13 = *(a1 + 48);
      v14 = [v8 localIdentifier];
      *buf = v15;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2048;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@[%@] Updated StatsFlag %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    ++v4;
  }

  if (+[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    [*(*(a1 + 40) + 40) commit];
  }
}

void sub_1000BDCF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v5 = VCPLogToOSLogType[5];
  *&v6 = 138412546;
  v14 = v6;
  while (v4 < [*(a1 + 32) count])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [*(a1 + 32) objectAtIndexedSubscript:v4];
    v9 = [v8 localIdentifier];
    [v3 setDeletePendingFlag:0 forLocalIdentifier:v9];

    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      v10 = *(*(a1 + 40) + 40);
      v11 = [v8 localIdentifier];
      [v10 setDeletePendingFlag:0 localIdentifier:v11];
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v5))
    {
      v12 = *(a1 + 48);
      v13 = [v8 localIdentifier];
      *buf = v14;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@[%@] Asset found; unset delete pending state", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    ++v4;
  }

  if (+[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    [*(*(a1 + 40) + 40) commit];
  }
}

void sub_1000BDF10(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = MediaAnalysisLogLevel();
    v5 = VCPLogToOSLogType[5];
    if (v4 >= 5 && os_log_type_enabled(&_os_log_default, VCPLogToOSLogType[5]))
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) count];
      *buf = 138412546;
      v42 = v6;
      v43 = 2048;
      v44 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Trashing %lu assets", buf, 0x16u);
    }

    v8 = 0;
    context = 138412546;
    while (v8 < [*(a1 + 32) count])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [*(a1 + 32) objectAtIndexedSubscript:v8];
      v11 = *(a1 + 48);
      v12 = [v10 localIdentifier];
      LOBYTE(v11) = [v11 containsObject:v12];

      if ((v11 & 1) == 0)
      {
        v13 = [v10 localIdentifier];
        [v3 setDeletePendingFlag:1 forLocalIdentifier:v13];

        if (+[VCPDatabaseWriter isLegacyPersistEnabled])
        {
          v14 = *(*(a1 + 56) + 40);
          v15 = [v10 localIdentifier];
          [v14 setDeletePendingFlag:1 localIdentifier:v15];
        }

        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v5))
        {
          v16 = *(a1 + 40);
          v17 = [v10 localIdentifier];
          *buf = context;
          v42 = v16;
          v43 = 2112;
          v44 = v17;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@[%@] Marked analysis for deletion", buf, 0x16u);
        }
      }

      v18 = *(a1 + 64);
      v19 = [v10 localIdentifier];
      [v18 removeObject:v19];

      objc_autoreleasePoolPop(v9);
      ++v8;
    }

    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      [*(*(a1 + 56) + 40) commit];
    }
  }

  if ([*(a1 + 64) count])
  {
    contexta = objc_autoreleasePoolPush();
    if (MediaAnalysisLogLevel() >= 5)
    {
      v20 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        v21 = *(a1 + 40);
        v22 = [*(a1 + 64) count];
        *buf = 138412546;
        v42 = v21;
        v43 = 2048;
        v44 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Purging %lu assets", buf, 0x16u);
      }
    }

    v23 = [*(a1 + 64) allObjects];
    [v3 removeAssetsWithLocalIdentifiers:v23];

    [v3 setDataStoreValue:1 forKey:@"HasDeletedAssetsSinceLastBackup"];
    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v24 = *(a1 + 64);
      v25 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v25)
      {
        v26 = *v37;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v37 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v36 + 1) + 8 * i);
            v29 = objc_autoreleasePoolPush();
            [*(*(a1 + 56) + 40) deleteAnalysisForAsset:v28];
            objc_autoreleasePoolPop(v29);
          }

          v25 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v25);
      }

      [*(*(a1 + 56) + 40) setValue:1 forKey:@"HasDeletedAssetsSinceLastBackup"];
      [*(*(a1 + 56) + 40) commit];
    }

    v30 = *(a1 + 64);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000BE470;
    v34[3] = &unk_1002857C8;
    v35 = *(a1 + 40);
    [v30 enumerateObjectsUsingBlock:v34];

    objc_autoreleasePoolPop(contextb);
  }
}

void sub_1000BE470(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@[%@] Purged analysis", &v6, 0x16u);
    }
  }
}

void sub_1000BEBC8(id *a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v3)
  {
    v5 = *v18;
    v6 = VCPLogToOSLogType[4];
    *&v4 = 138412290;
    v13 = v4;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v17 + 1) + 8 * v7);
      v9 = objc_autoreleasePoolPush();
      v10 = [v8 localIdentifier];
      if (v10)
      {
        [a1[6] addObject:v10];
        if (([v8 flags] & 0x40000000) != 0)
        {
          [a1[7] addObject:v10];
        }

        if (([v8 statsFlags] & 7) == 0)
        {
          [a1[8] addObject:v10];
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v6))
        {
          *buf = v13;
          v22 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[VCPAssetMaintenanceTask] Nil localIdentifier %@; removing asset ...", buf, 0xCu);
        }

        v11 = [a1[5] photoLibrary];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000BEE64;
        v14[3] = &unk_100282938;
        v12 = a1[5];
        v15 = 0;
        v16 = v12;
        [v11 mad_performAnalysisDataStoreChanges:v14 error:0];
      }

      objc_autoreleasePoolPop(v9);
      if (!v10)
      {
        break;
      }

      if (v3 == ++v7)
      {
        v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_1000BEE64(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v3 removeAssetsWithLocalIdentifiers:v4];

  if (+[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    [*(*(a1 + 40) + 40) deleteAnalysisForAsset:*(a1 + 32)];
    [*(*(a1 + 40) + 40) commit];
  }
}

void sub_1000BFF54(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v3 removeAssetsWithLocalIdentifiers:v4];
}

void sub_1000BFFE8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000C00BC()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B82C8;
  qword_1002B82C8 = v0;
}

void sub_1000C07A4(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[BG Service] Updating scheduling history session log", v4, 2u);
    }
  }

  v3 = [objc_opt_class() taskID];
  VCPCoreAnalyticsSessionLogDatabaseUpdate(v3, *(a1 + 40), 0, -1.0);
}

uint64_t sub_1000C0840(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C0858(uint64_t a1, double a2)
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ %.2f%% complete", &v6, 0x16u);
    }
  }
}

uint64_t sub_1000C092C(uint64_t a1, unsigned int a2)
{
  v4 = +[NSDate now];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = *(a1 + 40);
      v15 = 138412546;
      v16 = v8;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Ran for %0.6fs", &v15, 0x16u);
    }
  }

  v9 = [objc_opt_class() taskID];
  VCPCoreAnalyticsSessionLogDatabaseUpdate(v9, *(a1 + 32), a2, v6);
  [*(a1 + 56) finish];
  v10 = *(*(a1 + 72) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  if (MediaAnalysisLogLevel() >= 5)
  {
    v12 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      v13 = *(a1 + 40);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Finished background processing", &v15, 0xCu);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

uint64_t sub_1000C0AE8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 code];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

VCPBackgroundProcessingMetrics *sub_1000C1168(uint64_t a1)
{
  v1 = [[VCPBackgroundProcessingMetrics alloc] initWithPhotoLibrary:*(a1 + 32)];

  return v1;
}

void sub_1000C2190(uint64_t a1, void *a2)
{
  v9 = a2;
  [v9 setDataStoreValue:*(*(a1 + 32) + 248) + 1 forKey:@"NumberOfTimesScheduledDatabaseCreation"];
  [v9 setDataStoreValue:*(a1 + 40) + *(*(a1 + 32) + 256) forKey:@"TotalAnalyzingTimeDatabaseCreation"];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v4 + 288))
  {
    [v9 setDataStoreValue:v3 + *(v4 + 184) forKey:@"TotalTimeRunningWithPendingAnalysisToday"];
    [v9 setDataStoreValue:*(*(a1 + 32) + 192) + 1 forKey:@"NumberOfTimesScheduledWithPendingAnalysisToday"];
    [v9 setDataStoreValue:*(a1 + 40) + *(*(a1 + 32) + 200) forKey:@"TotalTimeRunningWithPendingAnalysisInLatestVersion"];
    [v9 setDataStoreValue:*(*(a1 + 32) + 208) + 1 forKey:@"NumberOfTimesScheduledWithPendingAnalysisInLatestVersion"];
    v5 = *(a1 + 32);
    if ((*(v5 + 289) & 1) != 0 || (*(v5 + 290) & 1) != 0 || *(v5 + 291) == 1)
    {
      [v9 setDataStoreValue:*(v5 + 16) + *(v5 + 8) + *(v5 + 24) forKey:@"NumberOfAssetsFullyAnalyzedToday"];
      v5 = *(a1 + 32);
      if (*(v5 + 289) == 1)
      {
        [v9 setDataStoreValue:*(v5 + 8) forKey:@"NumberOfImagesFullyAnalyzedToday"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 40) forKey:@"NumberOfImagesFullyAnalyzedInLatestVersion"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 72) forKey:@"TotalTimeSpentFullyAnalyzingImageInLatestVersion"];
        v5 = *(a1 + 32);
      }

      v6 = v9;
      if (*(v5 + 290) == 1)
      {
        [v9 setDataStoreValue:*(v5 + 16) forKey:@"NumberOfLivePhotosFullyAnalyzedToday"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 48) forKey:@"NumberOfLivePhotosFullyAnalyzedInLatestVersion"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 80) forKey:@"TotalTimeSpentFullyAnalyzingLivePhotoInLatestVersion"];
        v5 = *(a1 + 32);
        v6 = v9;
      }

      if (*(v5 + 291) == 1)
      {
        [v6 setDataStoreValue:*(v5 + 24) forKey:@"NumberOfMoviesFullyAnalyzedToday"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 56) forKey:@"NumberOfMoviesFullyAnalyzedInLatestVersion"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 32) forKey:@"MovieDurationFullyAnalyzedToday"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 88) forKey:@"TotalTimeSpentFullyAnalyzingMovieInLatestVersion"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 64) forKey:@"MovieDurationFullyAnalyzedInLatestVersion"];
        v5 = *(a1 + 32);
      }
    }

    v7 = v9;
    if ((*(v5 + 292) & 1) != 0 || (*(v5 + 293) & 1) != 0 || *(v5 + 294) == 1)
    {
      [v9 setDataStoreValue:*(v5 + 104) + *(v5 + 96) + *(v5 + 112) forKey:@"NumberOfAssetsPartiallyAnalyzedToday"];
      v8 = *(a1 + 32);
      if (*(v8 + 292) == 1)
      {
        [v9 setDataStoreValue:*(v8 + 96) forKey:@"NumberOfImagesPartiallyAnalyzedToday"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 128) forKey:@"NumberOfImagesPartiallyAnalyzedInLatestVersion"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 160) forKey:@"TotalTimeSpentPartiallyAnalyzingImageInLatestVersion"];
        v8 = *(a1 + 32);
      }

      if (*(v8 + 293) == 1)
      {
        [v9 setDataStoreValue:*(v8 + 104) forKey:@"NumberOfLivePhotosPartiallyAnalyzedToday"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 136) forKey:@"NumberOfLivePhotosPartiallyAnalyzedInLatestVersion"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 168) forKey:@"TotalTimeSpentPartiallyAnalyzingLivePhotoInLatestVersion"];
        v8 = *(a1 + 32);
      }

      v7 = v9;
      if (*(v8 + 294) == 1)
      {
        [v9 setDataStoreValue:*(v8 + 112) forKey:@"NumberOfMoviesPartiallyAnalyzedToday"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 144) forKey:@"NumberOfMoviesPartiallyAnalyzedInLatestVersion"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 120) forKey:@"MovieDurationPartiallyAnalyzedToday"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 176) forKey:@"TotalTimeSpentPartiallyAnalyzingMovieInLatestVersion"];
        [v9 setDataStoreValue:*(*(a1 + 32) + 152) forKey:@"MovieDurationPartiallyAnalyzedInLatestVersion"];
        v7 = v9;
      }
    }
  }

  else
  {
    [v9 setDataStoreValue:v3 + *(v4 + 216) forKey:@"TotalTimeRunningWithoutPendingAnalysisToday"];
    [v9 setDataStoreValue:*(*(a1 + 32) + 224) + 1 forKey:@"NumberOfTimesScheduledWithoutPendingAnalysisToday"];
    [v9 setDataStoreValue:*(a1 + 40) + *(*(a1 + 32) + 232) forKey:@"TotalTimeRunningWithoutPendingAnalysisInLatestVersion"];
    [v9 setDataStoreValue:*(*(a1 + 32) + 240) + 1 forKey:@"NumberOfTimesScheduledWithoutPendingAnalysisInLatestVersion"];
    v7 = v9;
  }
}

void sub_1000C293C()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B82D8;
  qword_1002B82D8 = v0;
}

void sub_1000C2C54()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B82E8;
  qword_1002B82E8 = v0;
}

void sub_1000C33CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, void *a35, void *a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  _Block_object_dispose(&a45, 8);

  _Block_object_dispose((v54 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C3530(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C3548(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[BG Service] Updating scheduling history session log", v4, 2u);
    }
  }

  v3 = [objc_opt_class() taskID];
  VCPCoreAnalyticsSessionLogDatabaseUpdate(v3, *(a1 + 40), 0, -1.0);
}

void sub_1000C35E4(uint64_t a1, double a2)
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ %.2f%% complete", &v6, 0x16u);
    }
  }
}

uint64_t sub_1000C36B8(uint64_t a1, unsigned int a2)
{
  [*(*(*(a1 + 72) + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      [*(*(*(a1 + 72) + 8) + 40) elapsedTimeSeconds];
      v15 = 138412546;
      v16 = v5;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Ran for %0.6fs", &v15, 0x16u);
    }
  }

  v7 = [objc_opt_class() taskID];
  v8 = *(a1 + 48);
  [*(*(*(a1 + 72) + 8) + 40) elapsedTimeSeconds];
  VCPCoreAnalyticsSessionLogDatabaseUpdate(v7, v8, a2, v9);
  [*(a1 + 56) finish];
  v10 = *(*(a1 + 80) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  if (MediaAnalysisLogLevel() >= 5)
  {
    v12 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      v13 = *(a1 + 32);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Finished background processing", &v15, 0xCu);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

void sub_1000C388C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

void sub_1000C418C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPVideoFramesCaptionTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

id sub_1000C4CA0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) requestID]);
  [v2 removeObjectForKey:v3];

  if (MediaAnalysisLogLevel() > 6)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [*(a1 + 40) task];
      v6 = objc_opt_class();
      v7 = [*(a1 + 40) requestID];
      v8 = *(a1 + 48);
      v9 = *(*(a1 + 32) + 8);
      v13 = 138413058;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      v17 = 1024;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[QueuingScheduler] Completed task %@ (MADRequestID %lu, VCPMADTaskID %u) for client %@", &v13, 0x26u);
    }
  }

  do
  {
    result = [*(*(a1 + 32) + 16) count];
    if (!result)
    {
      break;
    }

    v11 = *(a1 + 32);
    v12 = [v11[2] objectAtIndexedSubscript:0];
    LOBYTE(v11) = [v11 scheduleTask:v12];

    result = [*(*(a1 + 32) + 16) removeObjectAtIndex:0];
  }

  while ((v11 & 1) == 0);
  return result;
}

void sub_1000C54AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000C55F4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained completeTaskWithInfo:*(a1 + 32) madTaskID:a2];
  }
}

void sub_1000C58BC(uint64_t a1)
{
  v2 = [[MADServiceTaskInformation alloc] initWithTask:*(a1 + 32) requestID:*(a1 + 56) schedulingErrorHandler:*(a1 + 48)];
  v3 = [*(*(a1 + 40) + 24) count];
  if (v3 >= [objc_opt_class() scheduledRequestLimit])
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v9 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        v10 = [(MADServiceTaskInformation *)v2 task];
        v11 = objc_opt_class();
        v12 = [(MADServiceTaskInformation *)v2 requestID];
        v13 = *(*(a1 + 40) + 8);
        v14 = 138412802;
        v15 = v11;
        v16 = 2048;
        v17 = v12;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[QueuingScheduler] Queuing foreground task %@ (MADRequestID %lu) for client %@ to pending list", &v14, 0x20u);
      }
    }

    [*(*(a1 + 40) + 16) addObject:v2];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v4 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        v5 = [(MADServiceTaskInformation *)v2 task];
        v6 = objc_opt_class();
        v7 = [(MADServiceTaskInformation *)v2 requestID];
        v8 = *(*(a1 + 40) + 8);
        v14 = 138412802;
        v15 = v6;
        v16 = 2048;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[QueuingScheduler] Submitting foreground task %@ (MADRequestID %lu) for client %@ for scheduling", &v14, 0x20u);
      }
    }

    [*(a1 + 40) scheduleTask:v2];
  }
}

void sub_1000C5C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000C5C5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C5C74(void *a1)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = a1[6];
      v4 = *(a1[4] + 8);
      v24 = 134218242;
      v25 = v3;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[QueuingScheduler] Cancelling task (MADRequestID %lu) for client %@", &v24, 0x16u);
    }
  }

  v5 = *(a1[4] + 24);
  v6 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v8 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = a1[6];
        v10 = [v7 scheduledTaskID];
        v11 = *(a1[4] + 8);
        v24 = 134218498;
        v25 = v9;
        v26 = 2112;
        v27 = v10;
        v28 = 2112;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[QueuingScheduler] Attempting to cancel task (MADRequestID %lu, VCPMADTaskID %@) for client %@", &v24, 0x20u);
      }
    }

    v12 = [v7 scheduledTaskID];
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    for (i = 0; i < [*(a1[4] + 16) count]; ++i)
    {
      v16 = [*(a1[4] + 16) objectAtIndexedSubscript:i];
      v17 = [v16 requestID] == a1[6];

      if (v17)
      {
        [*(a1[4] + 16) removeObjectAtIndex:i];
        if (MediaAnalysisLogLevel() >= 7)
        {
          v18 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v18))
          {
            v22 = a1[6];
            v23 = *(a1[4] + 8);
            v24 = 134218242;
            v25 = v22;
            v26 = 2112;
            v27 = v23;
            v21 = "[QueuingScheduler] Removed task (MADRequestID %lu) for client %@ from pending list";
            goto LABEL_20;
          }
        }

        goto LABEL_9;
      }
    }

    if (MediaAnalysisLogLevel() >= 4)
    {
      v18 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        v19 = a1[6];
        v20 = *(a1[4] + 8);
        v24 = 134218242;
        v25 = v19;
        v26 = 2112;
        v27 = v20;
        v21 = "[QueuingScheduler] Task (MADRequestID %lu) for client %@ already finished or cancelled, unable to cancel";
LABEL_20:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, v21, &v24, 0x16u);
      }
    }
  }

LABEL_9:
}

id sub_1000C6088(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_1000C616C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  result = [*(*(a1 + 32) + 24) count];
  *(*(*(a1 + 40) + 8) + 24) = &v2[result];
  return result;
}

void sub_1000C67A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MADPhotosDatabaseMigrationProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000C7398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, _Unwind_Exception *exception_object, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  __cxa_guard_abort(&qword_1002B8310);

  _Unwind_Resume(a1);
}

uint64_t sub_1000C75E4(uint64_t a1)
{
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 32);
  v22 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v22)
  {
    v23 = *v35;
    type = VCPLogToOSLogType[6];
    v27 = VCPLogToOSLogType[3];
    v2 = VCPLogToOSLogType[4];
LABEL_3:
    v26 = 0;
LABEL_4:
    if (*v35 != v23)
    {
      objc_enumerationMutation(obj);
    }

    v3 = *(*(&v34 + 1) + 8 * v26);
    if (([*(a1 + 40) isCancelled] & 1) == 0)
    {
      v4 = +[VCPWatchdog sharedWatchdog];
      [v4 pet];

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v40 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MACDMigration|v1][%@] Migrating asset", buf, 0xCu);
      }

      v28 = [*(a1 + 32) objectForKeyedSubscript:v3];
      v29 = [[MADManagedPhotosAsset alloc] initWithContext:*(a1 + 48)];
      if (!v29)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v27))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[MACDMigration|v1] Failed to create Asset record", buf, 2u);
        }

LABEL_41:

        goto LABEL_42;
      }

      v5 = [v28 localIdentifier];
      [v29 setLocalIdentifier:v5];

      [v29 setVersion:{objc_msgSend(v28, "version")}];
      v6 = [v28 dateModified];
      [v29 setDateModified:v6];

      v7 = [v28 dateAnalyzed];
      [v29 setDateAnalyzed:v7];

      [v29 setAnalysisTypes:{objc_msgSend(v28, "types")}];
      [v29 setFlags:{objc_msgSend(v28, "flags")}];
      [v28 quality];
      *&v8 = v8;
      [v29 setQuality:v8];
      [v29 setStatsFlags:{objc_msgSend(v28, "statsFlags")}];
      ++*(*(*(a1 + 64) + 8) + 24);
      v9 = [*(a1 + 56) objectForKeyedSubscript:v3];
      v24 = [v9 vcp_results];

      *(*(*(a1 + 72) + 8) + 24) += [v24 count];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v10 = v24;
      v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (!v11)
      {
        goto LABEL_34;
      }

      v12 = *v31;
LABEL_13:
      v13 = 0;
      while (1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        v15 = MediaAnalysisResultsKeyToType();
        if (v15)
        {
          v16 = [v10 objectForKeyedSubscript:v14];
          if ([v16 count])
          {
            v17 = [MADManagedPhotosResult resultsDataFromArray:v16];
            if (v17)
            {
              v18 = [[MADManagedPhotosResult alloc] initWithContext:*(a1 + 48)];
              v19 = v18;
              if (!v18)
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v27))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[MACDMigration|v1] Failed to create Result record", buf, 2u);
                }

                goto LABEL_41;
              }

              [v18 setResultsType:v15];
              [v19 setResults:v17];
              [v19 setAsset:v29];
              ++*(*(*(a1 + 80) + 8) + 24);

              goto LABEL_32;
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v27))
            {
              *buf = 138412290;
              v40 = v14;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[MACDMigration|v1] Failed to serialize results for key %@, skip result", buf, 0xCu);
            }
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v2))
          {
            *buf = 138412290;
            v40 = v14;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MACDMigration|v1] No result content for key %@, skip result", buf, 0xCu);
          }
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v2))
        {
          *buf = 138412290;
          v40 = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MACDMigration|v1] Unknown results type for key %@, skip result", buf, 0xCu);
        }

LABEL_32:
        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v11)
          {
            goto LABEL_13;
          }

LABEL_34:

          if (++v26 == v22)
          {
            v22 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
            if (!v22)
            {
              break;
            }

            goto LABEL_3;
          }

          goto LABEL_4;
        }
      }
    }
  }

LABEL_42:

  return 1;
}

void sub_1000C8304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13)
{
  __cxa_guard_abort(&qword_1002B8320);

  _Unwind_Resume(a1);
}

void sub_1000C88C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14)
{
  __cxa_guard_abort(&qword_1002B8330);

  _Unwind_Resume(a1);
}

void sub_1000C8F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  __cxa_guard_abort(&qword_1002B8340);

  _Unwind_Resume(a1);
}

void sub_1000C9678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14)
{
  __cxa_guard_abort(&qword_1002B8350);

  _Unwind_Resume(a1);
}

void sub_1000C9C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14)
{
  __cxa_guard_abort(&qword_1002B8360);

  _Unwind_Resume(a1);
}

void sub_1000CADE4(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v3)
  {
    v4 = *v23;
    type = VCPLogToOSLogType[7];
    v20 = VCPLogToOSLogType[6];
    v21 = VCPLogToOSLogType[3];
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [*(a1 + 40) objectForKeyedSubscript:v6];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 mediaAnalysisProperties];
          v11 = *(a1 + 56) == [v10 imageEmbeddingVersion];

          if (v11)
          {
            v12 = [PHAssetChangeRequest changeRequestForAsset:v9];
            [v12 setImageEmbeddingVersion:*(a1 + 60)];
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              v13 = *(a1 + 48);
              *buf = 138412546;
              v27 = v13;
              v28 = 2112;
              v29 = v6;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@[%@] Bumping Photos version", buf, 0x16u);
            }
          }

          else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v20))
          {
            v15 = *(a1 + 48);
            v16 = [v9 mediaAnalysisProperties];
            v17 = [v16 imageEmbeddingVersion];
            v18 = *(a1 + 56);
            *buf = 138413058;
            v27 = v15;
            v28 = 2112;
            v29 = v6;
            v30 = 1024;
            v31 = v17;
            v32 = 1024;
            v33 = v18;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@[%@] Asset imageEmbeddingVersion %d does not meet expected version %d; ignore", buf, 0x22u);
          }
        }

        else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v21))
        {
          v14 = *(a1 + 48);
          *buf = 138412546;
          v27 = v14;
          v28 = 2112;
          v29 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@[%@] No matching asset; ignore", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
      }

      v3 = [v2 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v3);
  }
}

void sub_1000CB14C(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_1000CB874(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CB960;
  v6[3] = &unk_100285B58;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_1000CB960(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = MADBumpEmbeddingVersionInFullAnalysisResults();
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) objectForKeyedSubscript:v6];
  [v4 assetWithPhotosAsset:v5 analysis:v3];
}

void sub_1000CB9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1000CBA20(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v3)
  {
    v4 = *v23;
    type = VCPLogToOSLogType[7];
    v20 = VCPLogToOSLogType[6];
    v21 = VCPLogToOSLogType[3];
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [*(a1 + 40) objectForKeyedSubscript:v6];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 mediaAnalysisProperties];
          v11 = *(a1 + 56) == [v10 videoEmbeddingVersion];

          if (v11)
          {
            v12 = [PHAssetChangeRequest changeRequestForAsset:v9];
            [v12 setVideoEmbeddingVersion:*(a1 + 60)];
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              v13 = *(a1 + 48);
              *buf = 138412546;
              v27 = v13;
              v28 = 2112;
              v29 = v6;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@[%@] Bumping Photos version", buf, 0x16u);
            }
          }

          else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v20))
          {
            v15 = *(a1 + 48);
            v16 = [v9 mediaAnalysisProperties];
            v17 = [v16 videoEmbeddingVersion];
            v18 = *(a1 + 56);
            *buf = 138413058;
            v27 = v15;
            v28 = 2112;
            v29 = v6;
            v30 = 1024;
            v31 = v17;
            v32 = 1024;
            v33 = v18;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@[%@] Asset videoEmbeddingVersion %d does not meet expected version %d; ignore", buf, 0x22u);
          }
        }

        else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v21))
        {
          v14 = *(a1 + 48);
          *buf = 138412546;
          v27 = v14;
          v28 = 2112;
          v29 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@[%@] No matching asset; ignore", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
      }

      v3 = [v2 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v3);
  }
}

void sub_1000CBD88(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_1000CD1F0(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_1000CE6F0()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B8368;
  qword_1002B8368 = v0;
}

uint64_t sub_1000CF0D8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CF194;
  block[3] = &unk_100285BC0;
  v5 = *(a1 + 32);
  if (qword_1002B8378 != -1)
  {
    dispatch_once(&qword_1002B8378, block);
  }

  v2 = (*(*(a1 + 40) + 16))();

  return v2;
}

void sub_1000CF194(uint64_t a1)
{
  v2 = +[MADComputeServiceBackgroundSystemTask sharedTask];
  v6 = 0;
  [v2 submitTask:&v6];
  v3 = v6;

  if (v3)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v4 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        v5 = *(a1 + 32);
        *buf = 138412546;
        v8 = v5;
        v9 = 2112;
        v10 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Failed to submit the BGST task with error: %@", buf, 0x16u);
      }
    }
  }
}

uint64_t sub_1000CF29C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_1000CF8E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D02AC(va);
  _Unwind_Resume(a1);
}

void sub_1000CFF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  sub_100002CBC((v22 - 168));

  _Unwind_Resume(a1);
}

uint64_t sub_1000D0090(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelBlock];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) cancelBlock];
    v5 = v4[2]();

    if (v5)
    {
      return 1;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 pet];
  }

  return 0;
}

intptr_t sub_1000D014C(uint64_t a1)
{
  v2 = +[VCPClientManager sharedManager];
  [v2 removeClientHandler:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 40);

  return dispatch_semaphore_signal(v3);
}

uint64_t sub_1000D02AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 && !*a1 && CVPixelBufferUnlockBaseAddress(v2, *(a1 + 16)) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000D03C0();
  }

  return a1;
}

void sub_1000D03C0()
{
  sub_1000D0324();
  sub_10003B0EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000D0EA0(uint64_t a1)
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

void sub_1000D101C(uint64_t a1)
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[FaceCrop] %d downloads pending", v9, 8u);
    }
  }
}

void sub_1000D120C(uint64_t a1)
{
  v3 = +[NSDate now];
  [v3 timeIntervalSinceDate:*(*(a1 + 32) + 64)];
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

void sub_1000D1318(uint64_t a1)
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
      v18 = v3;
      v19 = 1024;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[FaceCrop][Download] Canceling %d download requests (%d)", buf, 0xEu);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [*(*(a1 + 32) + 56) allValues];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = +[PHAssetResourceManager defaultManager];
        [v11 cancelDataRequest:{objc_msgSend(v10, "intValue")}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void sub_1000D1B90(uint64_t a1, void *a2, void *a3)
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
    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = v10;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v13 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v13))
        {
          v14 = [*(a1 + 40) asset];
          v15 = [v14 localIdentifier];
          v16 = [v6 description];
          v17 = 138412546;
          v18 = v15;
          v19 = 2112;
          v20 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[FaceCrop][Download][%@] Failed to download resource (%@)", &v17, 0x16u);
        }
      }

      v11 = *(a1 + 40);
      v12 = 4294943494;
    }

    [v11 setStatus:v12];
  }

  else
  {
    [*(a1 + 40) setDownloadURL:v5];
  }

  dispatch_group_leave(*(*(a1 + 32) + 40));
}

void sub_1000D2424(uint8_t *a1, void *a2, void *a3)
{
  v5 = [a2 localIdentifier];
  *a1 = 138412290;
  *a3 = v5;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[FaceCrop] Failed to query asset for face %@; skip", a1, 0xCu);
}

void sub_1000D3A70(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 56);
  v4 = [*(a1 + 32) asset];
  [v5 setAttempts:v3 + 1 asset:v4 taskID:*(*(a1 + 40) + 48) status:1 lastAttemptDate:*(a1 + 48)];
}

void sub_1000D3B18(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) previousAttempts];
  v4 = [*(a1 + 32) asset];
  v5 = *(*(a1 + 40) + 48);
  v6 = [*(a1 + 32) previousStatus];
  v7 = [*(a1 + 32) lastAttemptDate];
  [v8 setAttempts:v3 asset:v4 taskID:v5 status:v6 lastAttemptDate:v7];
}

void sub_1000D3C00(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) asset];
  v4 = [v3 localIdentifier];
  [v5 removeProcessingStatusForLocalIdentifier:v4 taskID:*(*(a1 + 40) + 48)];
}

id sub_1000D45B8(uint64_t a1)
{
  v1 = [*(a1 + 32) isCanceled];
  if (v1)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v2 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v2))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Canceling MADProgressManager", v5, 2u);
      }
    }
  }

  else
  {
    v3 = +[VCPWatchdog sharedWatchdog];
    [v3 pet];
  }

  return v1;
}

void sub_1000D47F0()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B8380;
  qword_1002B8380 = v0;
}

void sub_1000D4970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D4988(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000D49A0(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[7] + 8) + 40))
  {
    v5 = [VCPDatabaseWriter databaseForPhotoLibrary:a1[6]];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(a1[7] + 8) + 40);
    v9 = a1[5];
    v10 = *(a1[4] + 16);

    [v10 setObject:v8 forKeyedSubscript:v9];
  }
}

void sub_1000D4BF4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:*(a1 + 40)];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v3 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        v4 = *(a1 + 40);
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[VCPDatabaseManager] Releasing shared database for %@", &v5, 0xCu);
      }
    }
  }
}

void sub_1000D5820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MADPhotosFaceAssetProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000D66BC(uint64_t a1, void *a2)
{
  v17 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(*(a1 + 32) + 64);
  v2 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v2)
  {
    v15 = *v20;
    type = VCPLogToOSLogType[7];
    do
    {
      v18 = v2;
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v19 + 1) + 8 * i);
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          v5 = [v4 asset];
          v6 = [v5 localIdentifier];
          *buf = 138412290;
          v24 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Face][%@][MACD] Setting processing status to running", buf, 0xCu);
        }

        v7 = [v4 previousAttempts];
        v8 = [v4 asset];
        v9 = *(a1 + 40);
        v10 = [v4 asset];
        v11 = [v10 mediaType];
        v12 = [v4 asset];
        [v17 setAttempts:v7 + 1 asset:v8 taskID:3 status:1 lastAttemptDate:v9 mediaType:v11 mediaSubtypes:objc_msgSend(v12 errorCode:"mediaSubtypes") errorLine:{objc_msgSend(v4, "previousErrorCode"), objc_msgSend(v4, "previousErrorLine")}];
      }

      v2 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v2);
  }
}

void sub_1000D6A50(uint64_t a1)
{
  v2 = [NSNumber numberWithInt:*(a1 + 48)];
  v3 = *(*(a1 + 32) + 136);
  v4 = [*(a1 + 40) localIdentifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = +[NSDate now];
  v6 = *(a1 + 32);
  v7 = *(v6 + 144);
  *(v6 + 144) = v5;
}

void sub_1000D6BE8(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 152);
  v2 = *(*(a1 + 32) + 136);
  v3 = [*(a1 + 40) localIdentifier];
  [v2 removeObjectForKey:v3];

  v4 = +[NSDate now];
  v5 = *(a1 + 32);
  v6 = *(v5 + 144);
  *(v5 + 144) = v4;

  if (MediaAnalysisLogLevel() >= 7)
  {
    v7 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [*(*(a1 + 32) + 136) count];
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Face] %d downloads pending", v9, 8u);
    }
  }
}

void sub_1000D6DF0(uint64_t a1)
{
  v3 = +[NSDate now];
  [v3 timeIntervalSinceDate:*(*(a1 + 32) + 144)];
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

void sub_1000D6F10(uint64_t a1)
{
  *(*(a1 + 32) + 152) = *(a1 + 40);
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = [*(*(a1 + 32) + 136) count];
      v4 = *(a1 + 40);
      *buf = 67109376;
      v17 = v3;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[Face][Download] Canceling %d download requests (%d)", buf, 0xEu);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(*(a1 + 32) + 136) allValues];
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

void sub_1000D7CAC(uint64_t a1, void *a2, void *a3)
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
      if ([v6 mad_isDownloadThrottling])
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v11 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v11))
          {
            v12 = [*(a1 + 40) asset];
            v13 = [v12 localIdentifier];
            v14 = [v6 description];
            v19 = 138412546;
            v20 = v13;
            v21 = 2112;
            v22 = v14;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[Face][Download][%@] Resource download throttled (%@)", &v19, 0x16u);
          }
        }

        v10 = 4294943488;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v15 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v15))
          {
            v16 = [*(a1 + 40) asset];
            v17 = [v16 localIdentifier];
            v18 = [v6 description];
            v19 = 138412546;
            v20 = v17;
            v21 = 2112;
            v22 = v18;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[Face][Download][%@] Resource download failed (%@)", &v19, 0x16u);
          }
        }

        v10 = 4294943494;
      }
    }

    [*(a1 + 40) setStatus:v10];
  }

  else
  {
    [*(a1 + 40) setDownloadURL:v5];
  }

  dispatch_group_leave(*(*(a1 + 32) + 120));
}

id sub_1000D9230(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 downloadResource];
  v5 = [*(a1 + 40) downloadURL];
  [v2 _asyncAnalysisWithAssetEntry:v3 resource:v4 resourceURL:v5 isBestResource:1];

  v6 = [*(a1 + 40) downloadURL];
  [PHAssetResourceManager vcp_flushResourceURL:v6];

  v7 = *(a1 + 40);

  return [v7 setDownloadURL:0];
}

void sub_1000D9304(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = [v3 privateFileURL];
  [v1 _asyncAnalysisWithAssetEntry:v2 resource:v3 resourceURL:? isBestResource:?];
}

void sub_1000DAA70(uint64_t a1, void *a2)
{
  v23 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(*(a1 + 32) + 64);
  v3 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v3)
  {
    v22 = *v28;
    type = VCPLogToOSLogType[7];
    do
    {
      v4 = 0;
      v24 = v3;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * v4);
        context = objc_autoreleasePoolPush();
        v6 = [v5 asset];
        v7 = [v6 localIdentifier];
        v26 = [NSString stringWithFormat:@"[Face][%@]", v7];

        if (![v5 status])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v32 = v26;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
          }

          goto LABEL_16;
        }

        if ([v5 status] == -128)
        {
          if (![v5 previousAttempts])
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              v32 = v26;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
            }

LABEL_16:
            v9 = [v5 asset];
            v11 = [v9 localIdentifier];
            [v23 removeProcessingStatusForLocalIdentifier:v11 taskID:3];
            goto LABEL_22;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v32 = v26;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
          }

          v8 = [v5 previousAttempts];
          v9 = [v5 asset];
          v10 = [v5 previousStatus];
          v11 = [v5 lastAttemptDate];
          v12 = [v5 asset];
          v13 = [v12 mediaType];
          v19 = [v5 asset];
          [v23 setAttempts:v8 asset:v9 taskID:3 status:v10 lastAttemptDate:v11 mediaType:v13 mediaSubtypes:objc_msgSend(v19 errorCode:"mediaSubtypes") errorLine:{objc_msgSend(v5, "previousErrorCode"), objc_msgSend(v5, "previousErrorLine")}];
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v32 = v26;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
          }

          [v5 status];
          v14 = MADProcessingStatusForOSStatus();
          v15 = [v5 asset];
          v16 = [v5 currentAttemptDate];
          v9 = [v15 mad_nextAttemptDateForStatus:v14 currentAttemptDate:v16 attemptCount:{objc_msgSend(v5, "previousAttempts") + 1}];

          v17 = [v5 errorCode];
          v18 = [v5 errorLine];
          v11 = [v5 asset];
          v12 = [v11 localIdentifier];
          [v23 updateProcessingStatus:v14 nextAttemptDate:v9 errorCode:v17 errorLine:v18 localIdentifier:v12 taskID:3];
        }

LABEL_22:
        objc_autoreleasePoolPop(context);
        v4 = v4 + 1;
      }

      while (v24 != v4);
      v3 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v3);
  }
}

void sub_1000DC214(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        [*(a1 + 32) _publishEntry:{v6, v8}];
        [*(a1 + 32) _reportCoreAnalyticsWithEntry:v6];
        objc_autoreleasePoolPop(v7);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

void sub_1000DC35C(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

uint64_t sub_1000DC5B4(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelBlock];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) cancelBlock];
    v5 = v4[2]();

    if (v5)
    {
      return 1;
    }
  }

  v7 = +[VCPWatchdog sharedWatchdog];
  [v7 pet];

  return 0;
}

void sub_1000DC644(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000DCB0C()
{
  if (__cxa_guard_acquire(&qword_1002B83A8))
  {
    byte_1002B83A0 = 1;

    __cxa_guard_release(&qword_1002B83A8);
  }
}

void sub_1000DCFDC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDataStoreValue:*(a1 + 32) forKey:@"DailyProcessTimeStamp"];
  [v3 setDataStoreValue:0 forKey:@"NumberOfAssetsFullyAnalyzedToday"];
  [v3 setDataStoreValue:0 forKey:@"TotalTimeRunningWithPendingAnalysisToday"];
  [v3 setDataStoreValue:0 forKey:@"TotalTimeRunningWithoutPendingAnalysisToday"];
  [v3 setDataStoreValue:0 forKey:@"NumberOfTimesScheduledWithPendingAnalysisToday"];
  [v3 setDataStoreValue:0 forKey:@"NumberOfTimesScheduledWithoutPendingAnalysisToday"];
  [v3 setDataStoreValue:0 forKey:@"NumberOfMoviesFullyAnalyzedToday"];
  [v3 setDataStoreValue:0 forKey:@"NumberOfImagesFullyAnalyzedToday"];
  [v3 setDataStoreValue:0 forKey:@"NumberOfLivePhotosFullyAnalyzedToday"];
  [v3 setDataStoreValue:0 forKey:@"MovieDurationFullyAnalyzedToday"];
  [v3 setDataStoreValue:0 forKey:@"NumberOfMoviesPartiallyAnalyzedToday"];
  [v3 setDataStoreValue:0 forKey:@"NumberOfImagesPartiallyAnalyzedToday"];
  [v3 setDataStoreValue:0 forKey:@"NumberOfLivePhotosPartiallyAnalyzedToday"];
  [v3 setDataStoreValue:0 forKey:@"MovieDurationPartiallyAnalyzedToday"];
}

void sub_1000DD648(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 32);
  v4 = VCPVersionKeyForTask();
  [v9 setDataStoreValue:v3 forKey:v4];

  v5 = *(a1 + 40);
  v6 = VCPStartTimestampKeyForTask();
  [v9 setDataStoreValue:v5 forKey:v6];

  v7 = VCPCompleteTimestampKeyForTask();
  [v9 removeDataStoreKey:v7];

  v8 = VCPCompleteTimestampKeyForTask();
  [v9 removeDataStoreKey:v8];

  [v9 setDataStoreValue:0 forKey:@"TotalTimeRunningWithPendingAnalysisInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"TotalTimeRunningWithoutPendingAnalysisInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"NumberOfTimesScheduledWithPendingAnalysisInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"NumberOfTimesScheduledWithoutPendingAnalysisInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"NumberOfMoviesFullyAnalyzedInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"NumberOfImagesFullyAnalyzedInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"NumberOfLivePhotosFullyAnalyzedInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"TotalTimeSpentFullyAnalyzingMovieInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"TotalTimeSpentFullyAnalyzingImageInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"TotalTimeSpentFullyAnalyzingLivePhotoInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"MovieDurationFullyAnalyzedInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"NumberOfMoviesPartiallyAnalyzedInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"NumberOfImagesPartiallyAnalyzedInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"NumberOfLivePhotosPartiallyAnalyzedInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"TotalTimeSpentPartiallyAnalyzingMovieInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"TotalTimeSpentPartiallyAnalyzingImageInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"TotalTimeSpentPartiallyAnalyzingLivePhotoInLatestVersion"];
  [v9 setDataStoreValue:0 forKey:@"MovieDurationPartiallyAnalyzedInLatestVersion"];
}

void sub_1000DFEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, char a31)
{
  _Block_object_dispose((v38 - 208), 8);

  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

id sub_1000E0054(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t sub_1000E00A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E00C0(void *a1, char a2, void *a3)
{
  v5 = a3;
  *(*(a1[5] + 8) + 24) = a2;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v6 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        v7 = *(a1[4] + 40);
        v13 = 138412290;
        v14 = v7;
        v8 = "%@ Successfully encrypted intermediate backup file";
        v9 = v6;
        v10 = 12;
LABEL_8:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, v8, &v13, v10);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v11 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      v12 = *(a1[4] + 40);
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v5;
      v8 = "%@  Failed to encrypt intermediate backup file (%@); backup failed";
      v9 = v11;
      v10 = 22;
      goto LABEL_8;
    }
  }

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

void sub_1000E064C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000E0A04(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1000E0EFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v11 = @"Gating description";
  v12 = v6;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [v5 integerValue];
  v10 = [*(a1 + 40) localIdentifier];
  [v7 saveGatingResult:v8 forVariationType:v9 assetIdentifier:v10];
}

void sub_1000E1018(uint64_t a1)
{
  v2 = [PHAssetChangeRequest changeRequestForAsset:*(a1 + 32)];
  [v2 setVariationSuggestionStates:objc_msgSend(*(a1 + 40) forVariationType:{"vcp_loopSugestionState"), 1}];
  [v2 setVariationSuggestionStates:objc_msgSend(*(a1 + 40) forVariationType:{"vcp_longExposureSugestionState"), 3}];
}

void sub_1000E1150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VCPEffectsAssetProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000E1BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPCompoundMADTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_1000E2528(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 code];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

uint64_t sub_1000E29A4(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[Unified] Pre-Analysis progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(*(a1 + 32) + 32) + 16))(*(*(*(a1 + 40) + 8) + 24) * 0.2);
}

uint64_t sub_1000E2AA8(uint64_t a1, int a2)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = @"interrupted";
      if (!a2)
      {
        v5 = @"finished";
      }

      v7 = 138412546;
      v8 = v5;
      v9 = 1024;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Pre-Analysis %@ (%d)", &v7, 0x12u);
    }
  }

  return (*(*(*(a1 + 32) + 32) + 16))(*(*(*(a1 + 40) + 8) + 24) * 0.2);
}

void sub_1000E2ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000E2F04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MADTaskCoordinator alloc];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7 = *(v5 + 24);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000E315C;
  v20[3] = &unk_100285F90;
  v20[4] = v5;
  v8 = [(MADTaskCoordinator *)v4 initWithPhotoLibraries:v3 taskProviderTypes:v6 options:v7 cancelBlock:v20 progressReporter:0];

  if (v8)
  {
    v9 = [(MADTaskCoordinator *)v8 run];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v10 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[Unified] Failed to create task coordinator.", buf, 2u);
      }
    }

    v9 = -18;
  }

  *(*(*(a1 + 40) + 8) + 24) = v9;
  v11 = *(*(*(a1 + 40) + 8) + 24);
  if (v11)
  {
    if (*(a1 + 48))
    {
      v21 = NSLocalizedDescriptionKey;
      v12 = "failed";
      if (v11 == -128)
      {
        v12 = "canceled";
      }

      v13 = [NSString stringWithFormat:@"[Unified] Analysis %s", v12];
      v22 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v11 userInfo:v14];
      v16 = *(a1 + 48);
      v17 = *v16;
      *v16 = v15;
    }

    [*(a1 + 32) purgeCachedModels];
  }

  return v11 == 0;
}

void sub_1000E418C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ -> %@", &v6, 0x16u);
    }
  }
}

void sub_1000E47E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E47FC(void *a1)
{
  v2 = VCPTransactionWithName(@"VCPFaceProcessingChangeBatch-publish");
  v3 = mach_absolute_time();
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPFaceProcessingPersistChanges", "", buf, 2u);
  }

  v8 = a1[4];
  v9 = *(v8 + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E49C4;
  v12[3] = &unk_100283210;
  v12[4] = v8;
  *(*(a1[5] + 8) + 24) = [v9 performChangesAndWait:v12 error:a1[6]];
  v10 = VCPSignPostLog();
  v11 = v10;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v5, "VCPFaceProcessingPersistChanges", "", buf, 2u);
  }

  if (v3)
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }
}

id sub_1000E51A8(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 40)) initWithPhotoLibrary:*(a1 + 32)];

  return v1;
}

uint64_t sub_1000E58EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E5904(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000E5B1C(uint64_t a1)
{
  v2 = [VCPFaceProcessingResource resourceWithResource:*(a1 + 48) resourceURL:*(a1 + 56) isBestResource:*(a1 + 68) requestDownload:*(a1 + 69) downloadStatus:*(a1 + 64)];
  [*(*(a1 + 32) + 8) setObject:? forKeyedSubscript:?];
}

void sub_1000E5C14(uint64_t a1)
{
  v2 = +[NSDate now];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  if (MediaAnalysisLogLevel() >= 7)
  {
    v5 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = *(*(a1 + 32) + 80);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Update lastest download timestamp %@", &v7, 0xCu);
    }
  }
}

void sub_1000E5D74(uint64_t a1)
{
  v2 = +[NSDate now];
  [v2 timeIntervalSinceDate:*(*(a1 + 32) + 80)];
  v4 = v3;

  if (v4 > 60.0)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v5 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = +[NSDate now];
        [v6 timeIntervalSinceDate:*(*(a1 + 32) + 80)];
        v8 = 134217984;
        v9 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "File-based download timed-out %.2f", &v8, 0xCu);
      }
    }

    *(*(a1 + 32) + 24) = 1;
  }
}

void sub_1000E65B0(uint64_t a1)
{
  v2 = +[MADVUUtilities sharedInstance];
  v3 = *(a1 + 32);
  v4 = v3[4];
  v5 = v3[18];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E66E4;
  v7[3] = &unk_100283000;
  v8 = v3;
  [v2 synchronizeVUWGallery:v4 withPhotosLibrary:v5 cancelOrExtendTimeoutBlock:v7];

  [*(a1 + 40) stop];
  v6 = +[VCPMADCoreAnalyticsManager sharedManager];
  [*(a1 + 40) elapsedTimeSeconds];
  [v6 accumulateDoubleValue:@"FaceVUSyncElapsedTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];
}

id sub_1000E66E4(uint64_t a1)
{
  v1 = [*(a1 + 32) isCancelled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

void sub_1000E68C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VCPFaceProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000E8258(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) localIdentifier];
  [v5 updateProcessingStatus:3 nextAttemptDate:v3 localIdentifier:v4 taskID:3];
}

void sub_1000E82E8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) localIdentifier];
  [v6 updateProcessingStatus:v3 nextAttemptDate:v4 localIdentifier:v5 taskID:3];
}

void sub_1000E8448(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = v3 + 1;
  v4 = [*(*(a1 + 32) + 88) objectAtIndexedSubscript:v3 % *(*(a1 + 32) + 80)];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E851C;
  block[3] = &unk_1002832A0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  dispatch_async(v4, block);
}

void sub_1000E851C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[VCPWatchdog sharedWatchdog];
  [v3 pet];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = 0;
  LODWORD(v3) = [v4 _detectAsset:v5 withResults:&v16 andBatchContext:*(a1 + 48)];
  v6 = v16;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 96);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E8658;
  v11[3] = &unk_1002860A0;
  v11[4] = v8;
  v12 = v6;
  v15 = v3;
  v13 = v7;
  v14 = *(a1 + 48);
  v10 = v6;
  dispatch_sync(v9, v11);
  dispatch_group_leave(*(*(a1 + 32) + 56));

  objc_autoreleasePoolPop(v2);
}

id sub_1000E9980(uint64_t a1)
{
  v2 = +[VCPWatchdog sharedWatchdog];
  [v2 pet];

  v3 = *(a1 + 32);

  return [v3 updateLastestDownloadTimestamp];
}

void sub_1000E99E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = 0;
  v4 = [*(a1 + 32) _copyResourceFromURL:v3 toURL:&v13 forAsset:*(a1 + 40) error:&v12];
  v5 = v13;
  v6 = v12;
  if (v4)
  {
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = [*(a1 + 40) localIdentifier];
    [v8 storeResource:v7 resourceURL:v5 isBestResource:v9 requestDownload:1 downloadStatus:0 forLocalIdentifier:v10];

    v11 = +[VCPMADCoreAnalyticsManager sharedManager];
    [v11 accumulateInt64Value:1 forField:@"NumbeOfResourceDownloads" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
  }
}

void sub_1000E9AE8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1000E9B18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mad_isDownloadThrottling];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 64);
    v9 = [*(a1 + 48) localIdentifier];
    if (v5)
    {
      v10 = 4294943488;
    }

    else
    {
      v10 = 4294966371;
    }

    [v6 storeResource:v7 resourceURL:0 isBestResource:v8 requestDownload:1 downloadStatus:v10 forLocalIdentifier:v9];

    if (MediaAnalysisLogLevel() >= 3)
    {
      v11 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        v12 = [*(a1 + 48) localIdentifier];
        v13 = *(a1 + 40);
        v14 = 138412802;
        v15 = v12;
        v16 = 2112;
        v17 = v13;
        v18 = 2112;
        v19 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[%@] Failed to download resource %@ - %@", &v14, 0x20u);
      }
    }
  }

  [*(a1 + 56) _asyncAnalyzeAsset:*(a1 + 48) andBatchContext:*(a1 + 32)];
  dispatch_group_leave(*(*(a1 + 56) + 48));
}

void sub_1000EA248(id a1, NSString *a2, NSNumber *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v7 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[%@] Cancelling download (ID:%@)", &v9, 0x16u);
    }
  }

  v8 = +[PHAssetResourceManager defaultManager];
  [v8 cancelDataRequest:{-[NSNumber intValue](v6, "intValue")}];
}

void sub_1000EA358(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000EA818(uint64_t a1, void *a2)
{
  v20 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v3)
  {
    v5 = *v22;
    type = VCPLogToOSLogType[7];
    *&v4 = 138412546;
    v17 = v4;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 40);
        v10 = [v7 localIdentifier];
        v11 = [v9 objectForKeyedSubscript:v10];

        if ([v11 previousAttempts])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            v12 = [v7 localIdentifier];
            *buf = 138412290;
            v26 = v12;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][MACD] Recovering processing status", buf, 0xCu);
          }

          v13 = [v11 previousAttempts];
          v14 = [v11 previousStatus];
          v15 = [v11 lastAttemptDate];
          [v20 setAttempts:v13 asset:v7 taskID:3 status:v14 lastAttemptDate:v15];
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            v16 = [v7 localIdentifier];
            *buf = v17;
            v26 = v16;
            v27 = 1024;
            v28 = 3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][MACD] Removing processing status for taskID %d", buf, 0x12u);
          }

          v15 = [v7 localIdentifier];
          [v20 removeProcessingStatusForLocalIdentifier:v15 taskID:3];
        }

        objc_autoreleasePoolPop(v8);
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v3);
  }
}

void sub_1000EAD5C(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_1000EB188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EB228(uint64_t a1, _BYTE *a2, double a3)
{
  if (a3 >= 0.0)
  {
    v5 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EB364;
    block[3] = &unk_1002861A0;
    block[4] = *(a1 + 48);
    *&block[5] = a3;
    dispatch_async(v5, block);
  }

  if ([*(a1 + 40) isCancelled])
  {
    *a2 = 1;
    *(*(*(a1 + 56) + 8) + 24) = -128;
    if (MediaAnalysisLogLevel() >= 6)
    {
      v6 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Cancelling Pet Promoting", v8, 2u);
      }
    }
  }

  else
  {
    v7 = +[VCPWatchdog sharedWatchdog];
    [v7 pet];
  }
}

void sub_1000EB364(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) timeIntervalSinceNow];
  if (v2 < -5.0)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v3 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        v4 = *(a1 + 40);
        v8 = 134217984;
        v9 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Pet Promoting progress: %.2f%%", &v8, 0xCu);
      }
    }

    v5 = +[NSDate now];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_1000ED5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, void *a60, void *a61, void *a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);

  _Unwind_Resume(a1);
}

id sub_1000ED9DC(uint64_t a1)
{
  v1 = [*(a1 + 32) isCancelled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

uint64_t sub_1000EDA38(uint64_t a1, float a2)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2048;
      v10 = (a2 * 100.0);
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Gallery updating - %.2f%%", &v7, 0x16u);
    }
  }

  return (*(*(a1 + 40) + 16))() ^ 1;
}

uint64_t sub_1000EDB48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[VCPWatchdog sharedWatchdog];
  [v4 pet];

  v5 = *(a1 + 32);
  v6 = [v3 entityIdentifier];
  [v5 addObject:v6];

  if (MediaAnalysisLogLevel() >= 7)
  {
    v7 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = *(a1 + 40);
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

  v13 = [*(a1 + 48) isCancelled];

  return v13 ^ 1;
}

uint64_t sub_1000EDD0C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v52 = a4;
  v53 = a5;
  v50 = mach_absolute_time();
  v10 = VCPSignPostLog();
  v11 = os_signpost_id_generate(v10);

  v12 = VCPSignPostLog();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "GalleryUpdate_updatePhotosWithEntityBlock", "", buf, 2u);
  }

  v14 = +[VCPWatchdog sharedWatchdog];
  [v14 pet];

  ++*(*(*(a1 + 88) + 8) + 24);
  v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"md:%ld", [v9 value]);
  v51 = [NSString stringWithFormat:@"%@[%@][%lu]", *(a1 + 32), v15, *(*(*(a1 + 88) + 8) + 24)];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v16 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      v17 = [v53 count];
      *buf = 138412546;
      v57 = v51;
      v58 = 2048;
      v59 = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Receiving entity with %lu face observations ... ", buf, 0x16u);
    }
  }

  if (!*(a1 + 40) || ([*(a1 + 48) containsObject:v9] & 1) != 0)
  {
LABEL_25:
    v29 = objc_autoreleasePoolPush();
    v30 = +[MADVUUtilities sharedInstance];
    v31 = [*(*(a1 + 64) + 144) vcp_isSyndicationLibrary];
    v32 = *(a1 + 64);
    v33 = *(v32 + 144);
    v34 = *(v32 + 32);
    if (v31)
    {
      v35 = *(a1 + 80);
      v55 = 0;
      v36 = [v30 updatePersonWithSyndicationLibrary:v33 gallery:v34 entityIdentifier:v9 entityClass:a3 observationIDs:v53 taggedPersonUUID:v52 cancelOrExtendTimeoutBlock:v35 error:&v55];
      v20 = v55;
      if (v36)
      {
        if (MediaAnalysisLogLevel() < 7)
        {
          goto LABEL_43;
        }

        v37 = VCPLogToOSLogType[7];
        if (!os_log_type_enabled(&_os_log_default, v37))
        {
          goto LABEL_43;
        }

        *buf = 138412290;
        v57 = v51;
        v38 = "%@ Updated Syndication Library";
        goto LABEL_34;
      }

      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_43;
      }

      v44 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v44))
      {
        goto LABEL_43;
      }

      *buf = 138412546;
      v57 = v51;
      v58 = 2112;
      v59 = v20;
      v38 = "%@ Failed to update Syndication Library - %@";
    }

    else
    {
      v39 = *(a1 + 72);
      v40 = *(a1 + 80);
      v54 = 0;
      v41 = [v30 updatePersonWithPhotosLibrary:v33 gallery:v34 entityIdentifier:v9 entityClass:a3 observationIDs:v53 taggedPersonUUID:v52 keyFaceLocalIdentifiers:v39 cancelOrExtendTimeoutBlock:v40 error:&v54];
      v20 = v54;
      if (v41)
      {
        if (MediaAnalysisLogLevel() < 7)
        {
          goto LABEL_43;
        }

        v37 = VCPLogToOSLogType[7];
        if (!os_log_type_enabled(&_os_log_default, v37))
        {
          goto LABEL_43;
        }

        *buf = 138412290;
        v57 = v51;
        v38 = "%@ Updated Photos";
LABEL_34:
        v42 = v37;
        v43 = 12;
LABEL_42:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v42, v38, buf, v43);
LABEL_43:

        objc_autoreleasePoolPop(v29);
        v45 = VCPSignPostLog();
        v46 = v45;
        if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, v11, "GalleryUpdate_updatePhotosWithEntityBlock", "", buf, 2u);
        }

        if (v50)
        {
          mach_absolute_time();
          VCPPerformance_LogMeasurement();
        }

        v47 = [*(a1 + 64) isCancelled];
LABEL_49:
        v25 = v47;
        goto LABEL_50;
      }

      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_43;
      }

      v44 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v44))
      {
        goto LABEL_43;
      }

      *buf = 138412546;
      v57 = v51;
      v58 = 2112;
      v59 = v20;
      v38 = "%@ Failed to update Photos - %@";
    }

    v42 = v44;
    v43 = 22;
    goto LABEL_42;
  }

  v62 = v15;
  v18 = [NSArray arrayWithObjects:&v62 count:1];
  v19 = [PHPerson fetchPersonsWithMdIDs:v18 options:*(a1 + 56)];
  v20 = [v19 firstObject];

  if (!v20)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v26 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v26))
      {
        *buf = 138412290;
        v57 = v51;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Person not in Photos DB (should be according to bookmark)", buf, 0xCu);
      }
    }

    goto LABEL_24;
  }

  if ([v20 verifiedType] != 1 && objc_msgSend(v20, "verifiedType") != 2)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v49 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v49))
      {
        *buf = 138412290;
        v57 = v51;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v49, "%@ Unverified person already in Photos DB; skip updating", buf, 0xCu);
      }
    }

    v47 = [*(a1 + 64) isCancelled];
    goto LABEL_49;
  }

  v21 = [*(*(a1 + 64) + 144) mad_allFacesFetchOptions];
  [v21 setShouldPrefetchCount:1];
  v22 = [PHFace fetchFacesForPerson:v20 options:v21];
  v23 = [v22 count];

  if (v23 != [v53 count])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v27 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        v28 = [v53 count];
        *buf = 138412802;
        v57 = v51;
        v58 = 2048;
        v59 = v28;
        v60 = 2048;
        v61 = v23;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Person needs update with %lu VU observations, %lu in PhotosDB", buf, 0x20u);
      }
    }

LABEL_24:
    goto LABEL_25;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v24 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v24))
    {
      *buf = 138412546;
      v57 = v51;
      v58 = 2048;
      v59 = v23;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ Person already in Photos DB (%lu observations); skip updating", buf, 0x16u);
    }
  }

  v25 = [*(a1 + 64) isCancelled];

LABEL_50:
  return v25 ^ 1;
}

uint64_t sub_1000EE610(uint64_t a1, float a2)
{
  v4 = [*(a1 + 32) isCancelled];
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v5 = +[VCPWatchdog sharedWatchdog];
    [v5 pet];
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = *(a1 + 40);
      v9 = 138412802;
      v10 = v7;
      v11 = 2048;
      v12 = a2 * 100.0;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ VUWGallery plugin update progress: %.2f%%, isCancelled %d", &v9, 0x1Cu);
    }
  }

  return v4 ^ 1;
}

void sub_1000EE928(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *buf = 138412290;
      v50 = @"[PublishDetectionAndProcessPerson]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "%@ Start to publish", buf, 0xCu);
    }
  }

  v3 = [*(a1 + 32) changeBatch];
  v47 = 0;
  v4 = [v3 publishWithError:&v47];
  v5 = v47;

  if (MediaAnalysisLogLevel() >= 7)
  {
    v6 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      *buf = 138412290;
      v50 = @"[PublishDetectionAndProcessPerson]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Finished publish", buf, 0xCu);
    }
  }

  if ((v4 & 1) == 0)
  {
    v7 = [v5 code];
    v8 = v7;
    if (v7 == -128)
    {
      v27 = *(a1 + 40);
      v17 = [*(a1 + 32) processedAssets];
      v19 = [*(a1 + 32) processingStatusMap];
      [v27 _recoverAttemptsForAssets:v17 withProcessingStatusMap:v19];
      v8 = -128;
LABEL_35:

      goto LABEL_36;
    }

    if (v7)
    {
      goto LABEL_36;
    }
  }

  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v9 = +[NSMutableArray array];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v10 = [*(a1 + 32) processedAssets];
    v11 = [v10 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v11)
    {
      v12 = *v44;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v44 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v43 + 1) + 8 * i) localIdentifier];
          [v9 addObject:v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v11);
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v15 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412802;
        v50 = @"[PublishDetectionAndProcessPerson]";
        v51 = 1024;
        *v52 = 3;
        *&v52[4] = 2112;
        *&v52[6] = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@[MACD] Removing processing status for taskID %d, localIdentifiers %@", buf, 0x1Cu);
      }
    }

    v16 = *(*(a1 + 40) + 144);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000EF198;
    v41[3] = &unk_100283AD0;
    v17 = v9;
    v42 = v17;
    v40 = 0;
    v18 = [v16 mad_performAnalysisDataStoreChanges:v41 error:&v40];
    v19 = v40;
    if ((v18 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
    {
      v20 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 138413058;
        v50 = @"[PublishDetectionAndProcessPerson]";
        v51 = 1024;
        *v52 = 3;
        *&v52[4] = 2112;
        *&v52[6] = v17;
        v53 = 2112;
        v54 = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@[MACD] Failed to remove processing status for taskID %d, localIdentifiers %@: %@", buf, 0x26u);
      }
    }

    v8 = 0;
    goto LABEL_35;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = [*(a1 + 32) processedAssets];
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v22)
  {
    v23 = *v37;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(a1 + 40) + 152);
        v26 = [*(*(&v36 + 1) + 8 * j) localIdentifier];
        [v25 removeProcessingStatusForLocalIdentifier:v26 andTaskID:3];
      }

      v22 = [v21 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v22);
  }

  [*(*(a1 + 40) + 152) commit];
  v8 = 0;
LABEL_36:
  *(*(a1 + 40) + 120) = v8;
  v28 = [*(*(a1 + 40) + 144) mad_countOfUnclusteredFaces];
  v29 = *(a1 + 40);
  v30 = *(v29 + 120);
  if (v30)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v31 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v31))
      {
        v32 = *(*(a1 + 40) + 120);
        *buf = 138412546;
        v50 = @"[PublishDetectionAndProcessPerson]";
        v51 = 1024;
        *v52 = v32;
        v33 = "%@ Failed to publish detection results (%d)";
LABEL_40:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v31, v33, buf, 0x12u);
      }
    }
  }

  else
  {
    v34 = v28;
    if ([*(v29 + 144) vcp_isSyndicationLibrary] && !_os_feature_enabled_impl())
    {
      goto LABEL_47;
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v35 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v35))
      {
        *buf = 138412546;
        v50 = @"[PublishDetectionAndProcessPerson]";
        v51 = 2048;
        *v52 = v34;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "%@ Found %lu unclustered faces", buf, 0x16u);
      }
    }

    if (v34 < +[MADVUUtilities clusterFaceCountThreshold])
    {
LABEL_47:
      v30 = 0;
      goto LABEL_58;
    }

    [MADProgressManager cacheCurrentFaceProgressForPhotoLibrary:*(*(a1 + 40) + 144)];
    if ([*(a1 + 40) isCancelled])
    {
      v30 = -128;
      goto LABEL_58;
    }

    v30 = [*(a1 + 40) processFaceCrops];
    if (v30)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v31 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v31))
        {
          *buf = 138412546;
          v50 = @"[PublishDetectionAndProcessPerson]";
          v51 = 1024;
          *v52 = 0;
          v33 = "%@ Failed to process facecrops (%d)";
          goto LABEL_40;
        }
      }
    }

    else
    {
      v30 = [*(a1 + 40) processGalleryPersons:0];
      if (v30)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v31 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v31))
          {
            *buf = 138412546;
            v50 = @"[PublishDetectionAndProcessPerson]";
            v51 = 1024;
            *v52 = 0;
            v33 = "%@ Failed to process persons (%d)";
            goto LABEL_40;
          }
        }
      }
    }
  }

LABEL_58:
  *(*(a1 + 40) + 120) = v30;
}

void sub_1000EF910(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_1000EFE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPFaceLibraryProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000F01B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  v22 = v18;

  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);

  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F0240(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained isCancelled];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void sub_1000F0C64(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v3 taskID:3];
}

void sub_1000F1444(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) allObjects];
  [v4 removeProcessingStatusForLocalIdentifiers:v3 taskID:3];
}

void sub_1000F2DD0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v3 taskID:3];
}

void sub_1000F2E58(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_1000F2EBC(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_1000F3D58(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v3 taskID:3];
}

void sub_1000F47E8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v3 taskID:3];
}

id sub_1000F4D90(uint64_t a1)
{
  v1 = [*(a1 + 32) isCancelled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

void sub_1000F4F20(id a1, int a2)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = @"interrupted";
      if (!a2)
      {
        v4 = @"finished";
      }

      v5 = 138412546;
      v6 = v4;
      v7 = 1024;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[FaceLibraryProcessing] Pre Analysis %@ (%d)", &v5, 0x12u);
    }
  }
}

uint64_t sub_1000F4FFC(uint64_t a1, double a2)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[FaceLibraryProcessing] Pre Analysis progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(*(a1 + 32) + 48) + 16))(a2 * 0.100000001 + 0.0);
}

void sub_1000F5A20(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1000F5A74(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v1 = +[VCPWatchdog sharedWatchdog];
    [v1 pet];
  }
}

void sub_1000F654C(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

id sub_1000F65B8(uint64_t a1)
{
  v1 = [*(a1 + 32) isCancelled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

void sub_1000F6C68(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v1 = +[VCPWatchdog sharedWatchdog];
    [v1 pet];
  }
}

id sub_1000F6CE8(uint64_t a1)
{
  v1 = [*(a1 + 32) isCancelled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

id sub_1000F7520(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  result = VCPIsRemoteIOSTask();
  if ((result & 1) == 0)
  {

    return +[VCPMADPECSingleRequestProcessingTask reschedule];
  }

  return result;
}

void sub_1000F76AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPMADPECSingleRequestProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000F8568(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v3 taskID:16];
}

void sub_1000F9794(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) previousAttempts];
  v4 = [*(a1 + 32) asset];
  [v5 setAttempts:v3 + 1 asset:v4 taskID:16 status:1 lastAttemptDate:*(a1 + 40)];
}

void sub_1000FA108(uint64_t a1, void *a2)
{
  v21 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
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
        v10 = [NSString stringWithFormat:@"[PECSingleRequest][%@]", v9];

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
            [v21 removeProcessingStatusForLocalIdentifier:v14 taskID:16];
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
          [v21 setAttempts:v11 asset:v12 taskID:16 status:v13 lastAttemptDate:v14];
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
          [v21 updateProcessingStatus:v15 nextAttemptDate:v12 localIdentifier:v18 taskID:16];
        }

LABEL_25:

        objc_autoreleasePoolPop(v7);
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v3);
  }
}

void sub_1000FB3A4(uint64_t a1)
{
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = *(a1 + 32);
  v33 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v33)
  {
    v32 = *v42;
    v30 = VCPPhotosPECProcessingVersion_Failures;
    v27 = VCPLogToOSLogType[6];
    v28 = VCPLogToOSLogType[4];
    type = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v1 = *(*(&v41 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        if ([v1 status] != -128)
        {
          if ([v1 status])
          {
            [v1 setVersion:v30];
          }

          v2 = [v1 asset];
          v36 = [PHAssetChangeRequest changeRequestForAsset:v2];

          v3 = [v1 result];
          v4 = [v3 count] == 0;

          if (v4)
          {
            if ([v1 version] == v30)
            {
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
              {
                v17 = [v1 asset];
                v18 = [v17 localIdentifier];
                *buf = 138412290;
                v46 = v18;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest][%@] Persisting failure version", buf, 0xCu);
              }
            }

            else
            {
              v19 = [v1 result];
              v20 = v19 == 0;

              if (v20)
              {
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v27))
                {
                  v23 = [v1 asset];
                  v24 = [v23 localIdentifier];
                  *buf = 138412290;
                  v46 = v24;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[PECSingleRequest][%@] Ineligible VI domains or no VI domains", buf, 0xCu);
                }
              }

              else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v28))
              {
                v21 = [v1 asset];
                v22 = [v21 localIdentifier];
                *buf = 138412290;
                v46 = v22;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "[PECSingleRequest][%@] VISearchResult had no CSUSearchableKnowledgeObjects", buf, 0xCu);
              }
            }

            v25 = [v1 version];
            v5 = [v1 asset];
            v26 = [v5 adjustmentVersion];
            [v36 setSceneClassifications:0 ofType:5 version:v25 timestamp:v26];
          }

          else
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v5 = [v1 result];
            v6 = [v5 countByEnumeratingWithState:&v37 objects:v47 count:16];
            if (v6)
            {
              v7 = *v38;
              do
              {
                for (j = 0; j != v6; j = j + 1)
                {
                  if (*v38 != v7)
                  {
                    objc_enumerationMutation(v5);
                  }

                  v9 = *(*(&v37 + 1) + 8 * j);
                  v10 = [v9 integerValue];
                  v11 = [v1 result];
                  v12 = [v11 objectForKeyedSubscript:v9];
                  v13 = [NSSet setWithArray:v12];

                  v14 = [v1 version];
                  v15 = [v1 asset];
                  v16 = [v15 adjustmentVersion];
                  [v36 setSceneClassifications:v13 ofType:v10 version:v14 timestamp:v16];
                }

                v6 = [v5 countByEnumeratingWithState:&v37 objects:v47 count:16];
              }

              while (v6);
            }
          }
        }

        objc_autoreleasePoolPop(context);
      }

      v33 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v33);
  }
}

void sub_1000FB994(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_1000FCC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62, uint64_t a63)
{
  _Block_object_dispose(&a57, 8);

  _Block_object_dispose((v65 - 176), 8);
  sub_100002CBC(&a64);

  _Unwind_Resume(a1);
}

uint64_t sub_1000FCF70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000FCF88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = VCPSignPostLog();
  v12 = v11;
  v13 = *(a1 + 64);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, "VIService_PECParsing", "", &v20, 2u);
  }

  if (*(a1 + 72))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  if (v10)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v14 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = [*(a1 + 32) asset];
        v16 = [v15 localIdentifier];
        v20 = 138412546;
        v21 = v16;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[PECSingleRequest][%@] getEncryptedSearchDomainsWithVisualQuery failed (%@)", &v20, 0x16u);
      }
    }

    [*(a1 + 32) setStatus:4294967278];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v17 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        v18 = [*(a1 + 32) asset];
        v19 = [v18 localIdentifier];
        v20 = 138412290;
        v21 = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[PECSingleRequest][%@] getEncryptedSearchDomainsWithVisualQuery completed", &v20, 0xCu);
      }
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(*(a1 + 40) + 24));
}

void sub_1000FD254(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = VCPSignPostLog();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "VIService_ServerSearchVISearch", "", &v24, 2u);
  }

  if (*(a1 + 72))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  if (v6)
  {
    if (MADIsPECUnsupportedDomainError(v6))
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v10 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v10))
        {
          v11 = [*(a1 + 32) asset];
          v12 = [v11 localIdentifier];
          v13 = *(a1 + 40);
          v24 = 138412546;
          v25 = v12;
          v26 = 2112;
          v27 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[PECSingleRequest][%@][%@] encryptedSearchWithParsedVisualQuery found unsupported encrypted search domain", &v24, 0x16u);
        }
      }

      [*(a1 + 32) setVersion:VCPPhotosPECProcessingVersion];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v20 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          v21 = [*(a1 + 32) asset];
          v22 = [v21 localIdentifier];
          v23 = *(a1 + 40);
          v24 = 138412802;
          v25 = v22;
          v26 = 2112;
          v27 = v23;
          v28 = 2112;
          v29 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[PECSingleRequest][%@][%@] encryptedSearchWithParsedVisualQuery failed (%@)", &v24, 0x20u);
        }
      }

      [*(a1 + 32) setStatus:4294967278];
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v14 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = [*(a1 + 32) asset];
        v16 = [v15 localIdentifier];
        v17 = *(a1 + 40);
        v24 = 138412546;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[PECSingleRequest][%@][%@] encryptedSearchWithParsedVisualQuery completed", &v24, 0x16u);
      }
    }

    [*(a1 + 32) setVersion:VCPPhotosPECProcessingVersion];
    v18 = [*(*(a1 + 48) + 48) objectForKeyedSubscript:*(a1 + 40)];
    v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 integerValue] + 1);
    [*(*(a1 + 48) + 48) setObject:v19 forKeyedSubscript:*(a1 + 40)];

    [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
  }

  dispatch_semaphore_signal(*(*(a1 + 48) + 24));
}

void sub_1000FEC84(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v3 taskID:16];
}

void sub_1000FED0C(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_1000FED70(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_1000FEF68(id a1)
{
  v1 = dispatch_queue_create("com.apple.mediaanalysisd.MADScopedWatchdog", 0);
  v2 = qword_1002B83C8;
  qword_1002B83C8 = v1;
}

void sub_1000FEFA8(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v4[0] = 67109120;
      v4[1] = qword_1002B83D0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MADScopedWatchdog] incrementing reference count %u", v4, 8u);
    }
  }

  if (!qword_1002B83D0++)
  {
    [*(*(a1 + 32) + 8) enable];
  }
}

void sub_1000FF128(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3[0] = 67109120;
      v3[1] = qword_1002B83D0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MADScopedWatchdog] decrementing reference count %u", v3, 8u);
    }
  }

  if (!--qword_1002B83D0)
  {
    [*(*(a1 + 32) + 8) disable];
  }
}

void sub_1000FF3A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

void sub_1000FF868(uint64_t a1, double a2)
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Download progress: %.2f", &v6, 0x16u);
    }
  }
}

void sub_1000FF93C(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = *(a1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "%@ Downloaded resource received", &v4, 0xCu);
    }
  }
}

void sub_1000FF9F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v4 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        v5 = *(a1 + 32);
        v11 = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v3;
        v6 = "%@ Failed to download - %@";
        v7 = v4;
        v8 = 22;
LABEL_8:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, v6, &v11, v8);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      v6 = "%@ Download completed";
      v7 = v9;
      v8 = 12;
      goto LABEL_8;
    }
  }

  dispatch_group_leave(*(*(a1 + 40) + 16));
}

void sub_10010235C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, void *a43, uint64_t a44, void *a45, void *a46, void *a47, uint64_t a48, void *a49, void *a50, void *a51, uint64_t a52, void *a53, uint64_t a54, void *a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Unwind_Resume(a1);
}

void sub_1001028C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 vcp_needsFaceProcessing])
  {
    v4 = *(a1 + 32);
    v5 = [v6 localIdentifier];
    [v4 addObject:v5];

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void sub_100102970(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 vcp_needsFaceProcessing])
  {
    v3 = *(a1 + 32);
    v4 = [v5 localIdentifier];
    [v3 addObject:v4];

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void sub_100102A24(uint64_t a1, int a2)
{
  v4 = MediaAnalysisLogLevel();
  if (a2)
  {
    if (v4 >= 3)
    {
      v5 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = *(a1 + 32);
        v12 = 138412546;
        v13 = v6;
        v14 = 1024;
        v15 = a2;
        v7 = "%@ (Callback) Failed to analyze key faces from assets (err:%d)";
        v8 = v5;
        v9 = 18;
LABEL_8:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, v7, &v12, v9);
      }
    }
  }

  else if (v4 >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      v11 = *(a1 + 32);
      v12 = 138412290;
      v13 = v11;
      v7 = "%@ Analyze key faces from assets";
      v8 = v10;
      v9 = 12;
      goto LABEL_8;
    }
  }
}

id sub_100102B60(uint64_t a1)
{
  v1 = [*(a1 + 32) isCanceled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

uint64_t sub_100102BBC(uint64_t a1, float a2)
{
  v4 = [*(a1 + 32) isCanceled];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v5 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = *(a1 + 40);
      v10 = 138412802;
      v11 = v6;
      if (v4)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v12 = 2048;
      v13 = (a2 * 100.0);
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Gallery updating - %.2f%%, cancelling: %@", &v10, 0x20u);
    }
  }

  if ((v4 & 1) == 0)
  {
    v8 = +[VCPWatchdog sharedWatchdog];
    [v8 pet];
  }

  return v4 ^ 1;
}

uint64_t sub_100102D14(uint64_t a1, float a2)
{
  v4 = [*(a1 + 32) isCanceled];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = *(a1 + 40);
      v10 = 138412802;
      v11 = v6;
      if (v4)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v12 = 2048;
      v13 = a2 * 100.0;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ VUWGallery plugin updating: %.2f%%, cancelling: %@", &v10, 0x20u);
    }
  }

  if ((v4 & 1) == 0)
  {
    v8 = +[VCPWatchdog sharedWatchdog];
    [v8 pet];
  }

  return v4 ^ 1;
}

void sub_10010375C()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B83D8;
  qword_1002B83D8 = v0;
}

void sub_100103E44(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[BG Service] Updating scheduling history session log", v4, 2u);
    }
  }

  v3 = [objc_opt_class() taskID];
  VCPCoreAnalyticsSessionLogDatabaseUpdate(v3, *(a1 + 40), 0, -1.0);
}

uint64_t sub_100103EE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100103EF8(uint64_t a1, double a2)
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ %.2f%% complete", &v6, 0x16u);
    }
  }
}

uint64_t sub_100103FCC(uint64_t a1, unsigned int a2)
{
  v4 = +[NSDate now];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = *(a1 + 40);
      v15 = 138412546;
      v16 = v8;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Ran for %0.6fs", &v15, 0x16u);
    }
  }

  v9 = [objc_opt_class() taskID];
  VCPCoreAnalyticsSessionLogDatabaseUpdate(v9, *(a1 + 32), a2, v6);
  [*(a1 + 56) finish];
  v10 = *(*(a1 + 72) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  if (MediaAnalysisLogLevel() >= 5)
  {
    v12 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      v13 = *(a1 + 40);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Finished background processing", &v15, 0xCu);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

uint64_t sub_100104188(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 code];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

void sub_1001072F8(uint64_t a1, void *a2)
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
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[PEC][%@][MACD] Setting processing status to running", buf, 0xCu);
        }

        v13 = [v10 previousAttempts];
        v14 = [v10 asset];
        [v3 setAttempts:v13 + 1 asset:v14 taskID:16 status:1 lastAttemptDate:*(a1 + 40)];

        v9 = v9 + 1;
      }

      while (v5 != v9);
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }
}

void sub_1001088A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  _Block_object_dispose(&a69, 8);

  _Block_object_dispose((v70 - 176), 8);
  sub_100002CBC(&STACK[0x218]);

  _Unwind_Resume(a1);
}

uint64_t sub_100108C24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100108C3C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = VCPSignPostLog();
  v12 = v11;
  v13 = *(a1 + 64);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, "VIService_PECParsing", "", &v20, 2u);
  }

  if (*(a1 + 72))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  if (v10)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v14 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = [*(a1 + 32) asset];
        v16 = [v15 localIdentifier];
        v20 = 138412546;
        v21 = v16;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[PEC][%@] getEncryptedSearchDomainsWithVisualQuery failed (%@)", &v20, 0x16u);
      }
    }

    [*(a1 + 32) setStatus:4294967278];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v17 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        v18 = [*(a1 + 32) asset];
        v19 = [v18 localIdentifier];
        v20 = 138412290;
        v21 = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[PEC][%@] getEncryptedSearchDomainsWithVisualQuery completed", &v20, 0xCu);
      }
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(*(a1 + 40) + 48));
  dispatch_group_leave(*(*(a1 + 40) + 56));
}

void sub_100108F14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = VCPSignPostLog();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "VIService_PECVISearch", "", &v22, 2u);
  }

  if (*(a1 + 72))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  if (v6)
  {
    if (MADIsPECUnsupportedDomainError(v6))
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v10 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v10))
        {
          v11 = [*(a1 + 32) asset];
          v12 = [v11 localIdentifier];
          v13 = *(a1 + 40);
          v22 = 138412546;
          v23 = v12;
          v24 = 2112;
          v25 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[PEC][%@][%@] encryptedSearchWithParsedVisualQuery found unsupported encrypted search domain", &v22, 0x16u);
        }
      }

      [*(a1 + 32) setVersion:VCPPhotosPECProcessingVersion];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v18 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          v19 = [*(a1 + 32) asset];
          v20 = [v19 localIdentifier];
          v21 = *(a1 + 40);
          v22 = 138412802;
          v23 = v20;
          v24 = 2112;
          v25 = v21;
          v26 = 2112;
          v27 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[PEC][%@][%@] encryptedSearchWithParsedVisualQuery failed (%@)", &v22, 0x20u);
        }
      }

      [*(a1 + 32) setStatus:4294967278];
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v14 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = [*(a1 + 32) asset];
        v16 = [v15 localIdentifier];
        v17 = *(a1 + 40);
        v22 = 138412546;
        v23 = v16;
        v24 = 2112;
        v25 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[PEC][%@][%@] encryptedSearchWithParsedVisualQuery completed", &v22, 0x16u);
      }
    }

    [*(a1 + 32) setVersion:VCPPhotosPECProcessingVersion];
    [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
  }

  dispatch_semaphore_signal(*(*(a1 + 48) + 48));
  dispatch_group_leave(*(*(a1 + 48) + 56));
}

void sub_10010988C(uint64_t a1, void *a2)
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
        v10 = [NSString stringWithFormat:@"[PEC][%@]", v9];

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
            [v21 removeProcessingStatusForLocalIdentifier:v14 taskID:16];
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
          [v21 setAttempts:v11 asset:v12 taskID:16 status:v13 lastAttemptDate:v14];
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
          [v21 updateProcessingStatus:v15 nextAttemptDate:v12 localIdentifier:v18 taskID:16];
        }

LABEL_25:

        objc_autoreleasePoolPop(v7);
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v3);
  }
}

void sub_10010A9E4(uint64_t a1)
{
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = *(*(a1 + 32) + 8);
  v34 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v34)
  {
    v33 = *v43;
    v29 = VCPLogToOSLogType[4];
    type = VCPLogToOSLogType[7];
    v31 = VCPPhotosPECProcessingVersion_Failures;
    *&v1 = 138412290;
    v28 = v1;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v2 = *(*(&v42 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        if ([v2 status] != -128)
        {
          if ([v2 status])
          {
            [v2 setVersion:v31];
          }

          v3 = [v2 asset];
          v37 = [PHAssetChangeRequest changeRequestForAsset:v3];

          v4 = [v2 result];
          v5 = [v4 count] == 0;

          if (v5)
          {
            if ([v2 version] == v31)
            {
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
              {
                v18 = [v2 asset];
                v19 = [v18 localIdentifier];
                *buf = v28;
                v47 = v19;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PEC][%@] Persisting failure version", buf, 0xCu);
              }
            }

            else
            {
              v20 = [v2 result];
              v21 = v20 == 0;

              if (v21)
              {
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v29))
                {
                  v24 = [v2 asset];
                  v25 = [v24 localIdentifier];
                  *buf = v28;
                  v47 = v25;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[PEC][%@] Ineligible VI domains or no VI domains", buf, 0xCu);
                }
              }

              else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v29))
              {
                v22 = [v2 asset];
                v23 = [v22 localIdentifier];
                *buf = v28;
                v47 = v23;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[PEC][%@] VISearchResult had no CSUSearchableKnowledgeObjects", buf, 0xCu);
              }
            }

            v26 = [v2 version];
            v6 = [v2 asset];
            v27 = [v6 adjustmentVersion];
            [v37 setSceneClassifications:0 ofType:5 version:v26 timestamp:v27];
          }

          else
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v6 = [v2 result];
            v7 = [v6 countByEnumeratingWithState:&v38 objects:v48 count:16];
            if (v7)
            {
              v8 = *v39;
              do
              {
                for (j = 0; j != v7; j = j + 1)
                {
                  if (*v39 != v8)
                  {
                    objc_enumerationMutation(v6);
                  }

                  v10 = *(*(&v38 + 1) + 8 * j);
                  v11 = [v10 integerValue];
                  v12 = [v2 result];
                  v13 = [v12 objectForKeyedSubscript:v10];
                  v14 = [NSSet setWithArray:v13];

                  v15 = [v2 version];
                  v16 = [v2 asset];
                  v17 = [v16 adjustmentVersion];
                  [v37 setSceneClassifications:v14 ofType:v11 version:v15 timestamp:v17];
                }

                v7 = [v6 countByEnumeratingWithState:&v38 objects:v48 count:16];
              }

              while (v7);
            }
          }
        }

        objc_autoreleasePoolPop(context);
      }

      v34 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v34);
  }
}

void sub_10010AFD0(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_10010B810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MADPhotosBackupProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10010DEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, char a33)
{
  _Block_object_dispose((v41 - 208), 8);

  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

id sub_10010E04C(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t sub_10010E0A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10010E0B8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v6 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        LOWORD(v11) = 0;
        v7 = "  Successfully encrypted intermediate backup file";
        v8 = v6;
        v9 = 2;
LABEL_8:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, v7, &v11, v9);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v10 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      v11 = 138412290;
      v12 = v5;
      v7 = "  Failed to encrypt intermediate backup file (%@); backup failed";
      v8 = v10;
      v9 = 12;
      goto LABEL_8;
    }
  }

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

uint64_t sub_10010E6F4(uint64_t a1)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v2)
  {
    v4 = *v29;
    v25 = VCPLogToOSLogType[3];
    type = VCPLogToOSLogType[7];
    *&v3 = 138412546;
    v24 = v3;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [v6 localIdentifier];
        v9 = [v7 objectForKeyedSubscript:v8];

        v10 = [v9 cloudIdentifier];
        if (v10)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            v11 = *(*(a1 + 48) + 8);
            v12 = [v6 localIdentifier];
            v13 = [v10 stringValue];
            *buf = 138412802;
            v33 = v11;
            v34 = 2112;
            v35 = v12;
            v36 = 2112;
            v37 = v13;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Asset local identifier: %@, cloud identifier: %@", buf, 0x20u);
          }

          v14 = [v10 stringValue];
          [v6 setLocalIdentifier:v14];
        }

        else
        {
          v15 = [v6 localIdentifier];
          v16 = v15 == 0;

          if (v16)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v25))
            {
              v22 = *(*(a1 + 48) + 8);
              *buf = v24;
              v33 = v22;
              v34 = 2112;
              v35 = v6;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Managed asset without cloudIdentifier or localIdentifier %@; skipping", buf, 0x16u);
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v25))
            {
              v17 = *(*(a1 + 48) + 8);
              v18 = [v6 localIdentifier];
              v19 = [v9 error];
              *buf = 138412802;
              v33 = v17;
              v34 = 2112;
              v35 = v18;
              v36 = 2112;
              v37 = v19;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Failed to get cloud identifier from local identifier %@ with error %@", buf, 0x20u);
            }

            v20 = *(a1 + 56);
            v21 = [v6 localIdentifier];
            [v20 addObject:v21];
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v2);
  }

  return 1;
}

BOOL sub_10010EAF0(void *a1, void *a2)
{
  v4 = [MADChangeRequest changeRequestWithManagedObjectContext:a1[4]];
  [v4 removeAssetsWithLocalIdentifiers:a1[5]];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = a1[5];
      v7 = *(a1[6] + 8);
      v10 = 138412546;
      v11 = v7;
      v12 = 1024;
      v13 = [v6 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Deleted %d assets with invalid cloud identifier", &v10, 0x12u);
    }
  }

  v8 = [v4 error];

  if (v8)
  {
    *a2 = [v4 error];
  }

  return v8 == 0;
}

void sub_10010EEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010EF34(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v3)
  {
    v5 = *v25;
    v6 = VCPLogToOSLogType[6];
    v23 = VCPLogToOSLogType[3];
    *&v4 = 138412802;
    v21 = v4;
    type = v6;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v25 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v24 + 1) + 8 * v7);
      v9 = objc_autoreleasePoolPush();
      *(*(*(a1 + 64) + 8) + 24) += [v8 count];
      v10 = [*(a1 + 40) isCancelled];
      v11 = v10;
      if (v10)
      {
        *(*(*(a1 + 72) + 8) + 24) = -128;
      }

      else
      {
        v12 = +[VCPWatchdog sharedWatchdog];
        [v12 pet];

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v6))
        {
          v13 = *(*(a1 + 40) + 8);
          v14 = *(*(*(a1 + 64) + 8) + 24);
          v15 = [v8 count];
          v16 = *(*(*(a1 + 64) + 8) + 24);
          *buf = v21;
          v29 = v13;
          v30 = 2048;
          v31 = v14 - v15;
          v32 = 2048;
          v33 = v16;
          v6 = type;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Changing local identifiers to cloud identifiers for managedAssetBatch[%ld:%ld]", buf, 0x20u);
        }

        if ([*(a1 + 40) _changeLocalIdentifierToCloudIdentifierForPhotoLibrary:*(a1 + 48) managedAssetBatch:v8 managedObjectContext:{*(a1 + 56), v21}] && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v23))
        {
          v17 = *(*(a1 + 40) + 8);
          v18 = *(*(*(a1 + 64) + 8) + 24);
          v19 = [v8 count];
          v20 = *(*(*(a1 + 64) + 8) + 24);
          *buf = v21;
          v29 = v17;
          v30 = 2048;
          v31 = v18 - v19;
          v32 = 2048;
          v33 = v20;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Failed to change local identifiers to cloud identifiers for managedAssetBatch[%ld:%ld]", buf, 0x20u);
          v6 = type;
        }
      }

      objc_autoreleasePoolPop(v9);
      if (v11)
      {
        break;
      }

      if (v3 == ++v7)
      {
        v3 = [v2 countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

uint64_t sub_10010F2EC(uint64_t a1, void *a2)
{
  v4 = [MADChangeRequest changeRequestWithManagedObjectContext:*(a1 + 32)];
  if (+[MADManagedChangeToken isMACDPersistEnabled])
  {
    [v4 removeAllChangeTokensImmediately];
    v5 = [v4 error];

    if (v5)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v6 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v6))
        {
          v7 = *(*(a1 + 40) + 8);
          v8 = [v4 error];
          v30 = 138412546;
          v31 = v7;
          v32 = 2112;
          v33 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Failed to remove all change tokens: %@", &v30, 0x16u);
        }
      }

      *a2 = [v4 error];
    }
  }

  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    [v4 removeAllProcessingStatusImmediately];
    v9 = [v4 error];
    v10 = v9 == 0;

    if (!v10)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v11 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          v12 = *(*(a1 + 40) + 8);
          v13 = [v4 error];
          v30 = 138412546;
          v31 = v12;
          v32 = 2112;
          v33 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Failed to remove all processing status: %@", &v30, 0x16u);
        }
      }

      *a2 = [v4 error];
    }
  }

  if (+[MADManagedMomentsScheduledAsset isMACDPersistEnabled])
  {
    [v4 removeAllMomentsScheduledAssetsImmediately];
    v14 = [v4 error];
    v15 = v14 == 0;

    if (!v15)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v16 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          v17 = *(*(a1 + 40) + 8);
          v18 = [v4 error];
          v30 = 138412546;
          v31 = v17;
          v32 = 2112;
          v33 = v18;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Failed to remove all moments scheduled assets: %@", &v30, 0x16u);
        }
      }

      *a2 = [v4 error];
    }
  }

  if (+[MADManagedBackgroundAnalysisProgressHistory isMACDPersistEnabled])
  {
    [v4 removeAllBackgroundAnalysisProgressHistoryImmediately];
    v19 = [v4 error];
    v20 = v19 == 0;

    if (!v20)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v21 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v21))
        {
          v22 = *(*(a1 + 40) + 8);
          v23 = [v4 error];
          v30 = 138412546;
          v31 = v22;
          v32 = 2112;
          v33 = v23;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Failed to remove all background analysis progress history: %@", &v30, 0x16u);
        }
      }

      *a2 = [v4 error];
    }
  }

  if (+[MADManagedPhotosAsset isMACDPersistEnabled])
  {
    [v4 removeAllDataStoreKeyValuePairsImmediately];
    v24 = [v4 error];
    v25 = v24 == 0;

    if (!v25)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v26 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v26))
        {
          v27 = *(*(a1 + 40) + 8);
          v28 = [v4 error];
          v30 = 138412546;
          v31 = v27;
          v32 = 2112;
          v33 = v28;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Failed to remove all key value pairs: %@", &v30, 0x16u);
        }
      }

      *a2 = [v4 error];
    }
  }

  return 1;
}

void sub_100110B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, char a36)
{
  _Block_object_dispose((v42 - 192), 8);

  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

id sub_100110D50(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100110DA4(void *a1, char a2, void *a3)
{
  v5 = a3;
  *(*(a1[7] + 8) + 24) = a2;
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v6 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        v7 = a1[5];
        v8 = *(a1[4] + 8);
        v9 = a1[6];
        v17 = 138412802;
        v18 = v8;
        v19 = 2112;
        v20 = v7;
        v21 = 2112;
        v22 = v9;
        v10 = "%@ Successfully encrypted backup file at %@ to %@";
        v11 = v6;
        v12 = 32;
LABEL_8:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, &v17, v12);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v13 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      v14 = a1[5];
      v15 = *(a1[4] + 8);
      v16 = a1[6];
      v17 = 138413058;
      v18 = v15;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v5;
      v10 = "%@ Failed to encrypt backup file at %@ to %@ with error %@; backup failed";
      v11 = v13;
      v12 = 42;
      goto LABEL_8;
    }
  }

  dispatch_semaphore_signal(*(*(a1[8] + 8) + 40));
}

void sub_100111FA0()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B83E8;
  qword_1002B83E8 = v0;
}

void sub_1001126D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, void *a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  _Block_object_dispose((v47 - 176), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1001127FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100112814(uint64_t a1, double a2)
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ %.2f%% complete", &v6, 0x16u);
    }
  }
}

uint64_t sub_1001128E8(uint64_t a1, int a2)
{
  v4 = +[NSDate now];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = *(a1 + 40);
      v14 = 138412546;
      v15 = v8;
      v16 = 2048;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Ran for %0.6fs", &v14, 0x16u);
    }
  }

  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  if (MediaAnalysisLogLevel() >= 5)
  {
    v11 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      v12 = *(a1 + 40);
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Finished background processing", &v14, 0xCu);
    }
  }

  if (!a2)
  {
    [*(a1 + 48) finish];
    +[MADSchedulerBackgroundSystemTask submitPhotosTasks];
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_100112AB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

void sub_100112D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v20 = v18;

  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100112D78(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 containsObject:MOSettingsGroupNameUserSafety])
  {
    v5 = objc_alloc_init(MOEffectiveSettingsStore);
    v6 = [v5 userSafety];
    v7 = [v6 scanningPolicy];
    [WeakRetained setScanningPolicy:v7];

    if (MediaAnalysisLogLevel() >= 5)
    {
      v8 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = [WeakRetained scanningPolicy];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[UserSafety] Updated scanning policy (%@)", &v10, 0xCu);
      }
    }
  }
}

MADUserSafetySettings *__cdecl sub_100112FBC(id a1)
{
  v1 = objc_alloc_init(MADUserSafetySettings);

  return v1;
}

void sub_100113360(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  sub_100002CBC(va);
  _Unwind_Resume(a1);
}

void sub_1001135F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_100002CBC(va);
  _Unwind_Resume(a1);
}

void sub_100114344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class sub_10011442C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002B8400)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100114570;
    v4[4] = &unk_100282998;
    v4[5] = v4;
    v5 = off_100286868;
    v6 = 0;
    qword_1002B8400 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002B8400)
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
  result = objc_getClass("SCServicePolicyChecker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001145E4();
  }

  qword_1002B83F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100114570()
{
  result = _sl_dlopen();
  qword_1002B8400 = result;
  return result;
}

void sub_100116048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPLibraryProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001167D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011683C(id a1, int a2)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = @"interrupted";
      if (!a2)
      {
        v4 = @"finished";
      }

      v5 = 138412546;
      v6 = v4;
      v7 = 1024;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Pre Analysis %@ (%d)", &v5, 0x12u);
    }
  }
}

uint64_t sub_100116918(uint64_t a1, double a2)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Pre Analysis progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(*(a1 + 32) + 32) + 16))(a2 * 0.1);
}

void sub_100116A04(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    *a4 = 1;
  }

  else if ([v7 isReadyForAnalysis])
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v8 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = [v7 photoLibraryURL];
        v10 = [v9 path];
        *buf = 138412290;
        v37 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "Processing Library %@ for full analysis", buf, 0xCu);
      }
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100116E60;
    v35[3] = &unk_100283000;
    v35[4] = *(a1 + 32);
    v11 = objc_retainBlock(v35);
    [VCPAnalysisProgressQuery reportProgressForPhotoLibrary:v7 taskID:1 logMessage:@"Checking progress before task" cancelOrExtendTimeoutBlock:v11];
    v12 = objc_alloc_init(VCPTimeMeasurement);
    [v12 start];
    v13 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v7];
    v14 = [*(a1 + 32) createTaskBacklogForPhotoLibrary:v7 withDatabase:v13];
    v15 = [v14 count];
    if (v15)
    {
      v16 = [*(*(a1 + 32) + 16) count];
      v25 = _NSConcreteStackBlock;
      v26 = 3221225472;
      v27 = sub_100116EBC;
      v28 = &unk_1002868E8;
      v33 = *(a1 + 48);
      v34 = 90.0 / v15 / v16;
      v17 = *(a1 + 40);
      v29 = *(a1 + 32);
      v31 = v17;
      v32 = a3;
      v18 = v7;
      v30 = v18;
      [v14 enumerateObjectsUsingBlock:&v25];
      v19 = [VCPBackgroundProcessingMetrics sharedMetricsWithPhotoLibrary:v18];
      [v19 persist];

      [v13 flush];
      [v12 stop];
      [v12 elapsedTimeSeconds];
      v21 = [NSString stringWithFormat:@"Checking progress after task (%.2f seconds)", v20, v25, v26, v27, v28, v29];
      [VCPAnalysisProgressQuery reportProgressForPhotoLibrary:v18 taskID:1 logMessage:v21 cancelOrExtendTimeoutBlock:v11];
      MediaAnalysisDaemonReleaseSharedDataStores(v18);
    }
  }

  else if (MediaAnalysisLogLevel() >= 5)
  {
    v22 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v22))
    {
      v23 = [v7 photoLibraryURL];
      v24 = [v23 path];
      *buf = 138412290;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "Photo Library is not ready for analysis (%@); skipping library", buf, 0xCu);
    }
  }
}

id sub_100116E60(uint64_t a1)
{
  v1 = [*(a1 + 32) isCancelled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

void sub_100116EBC(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 56) * *(a1 + 64) + 10.0 + a3 * *(a1 + 72);
  (*(*(*(a1 + 32) + 32) + 16))(v8);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10011731C;
  v21[3] = &unk_1002840A8;
  v21[4] = *(a1 + 32);
  v9 = *(a1 + 72);
  *&v21[5] = v8;
  v21[6] = v9;
  v10 = objc_retainBlock(v21);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10011740C;
  v20[3] = &unk_100283000;
  v20[4] = *(a1 + 32);
  [v7 setCancel:v20];
  [v7 setProgressHandler:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = VCPAnalyticsFieldUnifiedFullTaskTimestamp;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = VCPAnalyticsFieldResumePausedTaskTimestamp;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = VCPAnalyticsFieldFailedAssetTaskTimestamp;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = VCPAnalyticsFieldMediaTypeTaskTimestamp;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = 0;
            goto LABEL_13;
          }

          v11 = VCPAnalyticsFieldResultsSynchronizationTaskTimestamp;
        }
      }
    }
  }

  v12 = *v11;
  if (v12)
  {
    v13 = +[VCPMADCoreAnalyticsManager sharedManager];
    v14 = +[VCPLogManager dateFormatter];
    v15 = +[NSDate now];
    v16 = [v14 stringFromDate:v15];
    [v13 setValue:v16 forField:v12 andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  }

LABEL_13:
  [v7 start];
  if ([v7 error] == -128)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v7 error];
    *a4 = 1;
  }

  else if ([v7 error])
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v17 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        v18 = [*(a1 + 40) photoLibraryURL];
        v19 = [v18 path];
        *buf = 138412290;
        v23 = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "Error analyzing library %@", buf, 0xCu);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = -18;
  }
}

uint64_t sub_10011731C(uint64_t a1, double a2)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Media Analysis task progress: %.2f%%", &v6, 0xCu);
    }
  }

  return (*(*(*(a1 + 32) + 32) + 16))(*(a1 + 40) + *(a1 + 48) * a2 / 100.0);
}

void sub_100117604(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

void sub_1001188B0(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_100118914(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_100118A2C()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B8408;
  qword_1002B8408 = v0;
}

void sub_1001191F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

id sub_100119408(uint64_t a1, double a2)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [objc_opt_class() name];
      v7 = 138412546;
      v8 = v5;
      v9 = 2048;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[%@] Pre Analysis progress: %.2f%%", &v7, 0x16u);
    }
  }

  return [*(a1 + 40) setCompletedUnitCount:a2];
}

void sub_100119508(id a1, int a2)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = @"interrupted";
      if (!a2)
      {
        v4 = @"finished";
      }

      v5 = 138412546;
      v6 = v4;
      v7 = 1024;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Pre Analysis %@ (%d)", &v5, 0x12u);
    }
  }
}

void sub_10011A070(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v3 taskID:{objc_msgSend(objc_opt_class(), "taskID")}];
}

void sub_10011A104(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 hardFailAllRunningProcessingStatusForTaskID:{objc_msgSend(objc_opt_class(), "taskID")}];
}

void sub_10011B2D0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) allObjects];
  [v4 removeProcessingStatusForLocalIdentifiers:v3 taskID:{objc_msgSend(objc_opt_class(), "taskID")}];
}

void sub_10011BDEC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) allObjects];
  [v4 removeProcessingStatusForLocalIdentifiers:v3 taskID:{objc_msgSend(objc_opt_class(), "taskID")}];
}

uint64_t sub_10011C348(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelBlock];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) cancelBlock];
    v5 = v4[2]();

    if (v5)
    {
      return 1;
    }
  }

  v7 = +[VCPWatchdog sharedWatchdog];
  [v7 pet];

  return 0;
}

void sub_10011C3D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10011CD60(uint64_t a1)
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

  v5 = *(*(a1 + 32) + 36);
  if (v5)
  {
    [*(a1 + 40) fractionCompleted];
    (*(v5 + 16))(v5, v6 * 100.0);
  }
}

void sub_10011D180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v8 = v5;

  sub_100002CBC(va);
  sub_100002CBC((v7 - 40));

  _Unwind_Resume(a1);
}

VIService *__cdecl sub_10011D7E0(id a1)
{
  v1 = objc_alloc_init(VIService);

  return v1;
}

void sub_10011DC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VCPMADSceneLibraryProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10011E10C(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    do
    {
      v4 = 0;
      do
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = [PHAssetChangeRequest changeRequestForAsset:*(*(&v6 + 1) + 8 * v4), v6];
        [v5 setImageEmbeddingVersion:75];

        v4 = v4 + 1;
      }

      while (v2 != v4);
      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v2);
  }
}

uint64_t sub_100120788(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelBlock];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) cancelBlock];
    v5 = v4[2]();

    if (v5)
    {
      return 1;
    }
  }

  v7 = +[VCPWatchdog sharedWatchdog];
  [v7 pet];

  return 0;
}

void sub_100120D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100120D88(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[BG Service] XPC connection interrupted", v5, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleLostConnection];
  }
}

void sub_100120E34(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[BG Service] XPC connection invalidated", v5, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleLostConnection];
  }
}

void sub_10012116C(id a1)
{
  v1 = notify_register_check([@"com.apple.mediaanalysisd.serviceProcessID" UTF8String], &dword_1002B8420);
  v2 = MediaAnalysisLogLevel();
  if (v1)
  {
    if (v2 >= 3)
    {
      v3 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        v7 = 67109120;
        v8 = v1;
        v4 = "[BG Service] Failed to register for service pid notify token (%d)";
        v5 = v3;
LABEL_8:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, v4, &v7, 8u);
      }
    }
  }

  else if (v2 >= 7)
  {
    v6 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = 67109120;
      v8 = dword_1002B8420;
      v4 = "[BG Service] Register service pid notification token(%d)";
      v5 = v6;
      goto LABEL_8;
    }
  }
}

void sub_1001223F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  _Block_object_dispose(&STACK[0x280], 8);

  _Block_object_dispose((v17 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100122634(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10012264C(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[BG Service] Updating scheduling history session log", v3, 2u);
    }
  }

  VCPCoreAnalyticsSessionLogDatabaseUpdate(*(a1 + 40), *(a1 + 32), 0, -1.0);
}

void sub_1001226DC(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 64) + 8) + 40) destroy];
  if (a2)
  {
    if (a2 == -128)
    {
      v19 = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithFormat:@"[BG Service] Processing canceled"];
      v20 = v4;
      v5 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v5];

      if (MediaAnalysisLogLevel() >= 5)
      {
        v7 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          *buf = 0;
          v8 = "[BG Service] Processing canceled";
LABEL_13:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, v8, buf, 2u);
        }
      }
    }

    else
    {
      v17 = NSLocalizedDescriptionKey;
      v11 = [NSString stringWithFormat:@"[BG Service] Processing failed (%d)", a2];
      v18 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v12];

      if (MediaAnalysisLogLevel() >= 4)
      {
        v7 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          *buf = 0;
          v8 = "[BG Service] Processing failed";
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    v9 = [*(*(a1 + 32) + 8) remoteObjectProxy];
    [v9 updateProgress:100.0];

    if (MediaAnalysisLogLevel() >= 5)
    {
      v10 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[BG Service] Processing completed", buf, 2u);
      }
    }

    v6 = 0;
  }

  [*(a1 + 40) timeIntervalSinceNow];
  v14 = v13;
  [*(a1 + 48) destroy];
  v15 = -v14;
  VCPCoreAnalyticsSessionLogDatabaseUpdate(*(a1 + 72), *(a1 + 40), a2, v15);
  VCPCoreAnalyticsReportEventDasScheduling(*(a1 + 72), a2, v15);
  VCPCoreAnalyticsSendAllAnalysisSession(*(a1 + 72));
  (*(*(a1 + 56) + 16))();
}

void sub_100122A70(uint64_t a1, int a2, double a3)
{
  atomic_store(*&a3, (*(a1 + 32) + 24));
  if (a2)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v4 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[BG Service] Updating scheduling history session log", v8, 2u);
      }
    }

    VCPCoreAnalyticsSessionLogDatabaseUpdate(*(a1 + 56), *(a1 + 40), 0, -1.0);
    v5 = +[NSDate now];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_100122BEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

void sub_100122D14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

void sub_100122DBC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) remoteObjectProxy];
  v3 = COERCE_DOUBLE(atomic_load((*(a1 + 32) + 24)));
  v4 = v2;
  [v2 updateProgress:v3];
}

void sub_100122E44(uint64_t a1)
{
  v2 = +[VCPMADTaskScheduler sharedInstance];
  atomic_store([v2 addBackgroundTask:*(a1 + 40) withQoS:17], (*(a1 + 32) + 16));
}

void sub_100123160()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B8428;
  qword_1002B8428 = v0;
}

void sub_100123BB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    v9 = VCPLogToOSLogType[7];
    *&v6 = 138412802;
    v15 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v9))
        {
          v12 = objc_opt_class();
          v13 = *(a1 + 48);
          *buf = v15;
          v21 = v12;
          v22 = 1024;
          v23 = v13;
          v24 = 2112;
          v25 = v11;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@][MACD] Removing processing status for taskID %d, localIdentifier %@", buf, 0x1Cu);
        }

        [v3 removeProcessingStatusForLocalIdentifier:v11 taskID:{*(a1 + 48), v15, v16}];
        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v7);
  }
}

void sub_1001267C8(uint64_t a1, void *a2)
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