void sub_1001820E8(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_100183794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36)
{
  _Block_object_dispose((v41 - 176), 8);

  _Unwind_Resume(a1);
}

void sub_1001838AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 localIdentifier];
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v8 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      v9 = *(a1 + 40);
      v10 = [v5 stringValue];
      v11 = [v6 error];
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Failed to fetch local identifier from cloud identifier %@ (%@); skipping entry", &v12, 0x20u);
    }
  }
}

uint64_t sub_100183A34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100183A4C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = a1[6];
          v12 = [v10 localIdentifier];
          [v11 setObject:v10 forKeyedSubscript:v12];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

void sub_100183BD8(uint64_t a1)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100183D0C;
  v11[3] = &unk_100287F60;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v12 = v8;
  v13 = v7;
  v9 = *(a1 + 32);
  v10 = *(a1 + 72);
  v14 = v9;
  v15 = v10;
  [v2 performBlockAndWait:v11];
}

void sub_100183D0C(uint64_t a1)
{
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *(a1 + 32);
  v31 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v31)
  {
    v30 = *v41;
    v27 = VCPLogToOSLogType[4];
    type = VCPLogToOSLogType[6];
    *&v2 = 138412802;
    v26 = v2;
    while (2)
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v40 + 1) + 8 * i);
        v35 = [*(a1 + 32) objectForKeyedSubscript:{v3, v26}];
        v33 = [*(a1 + 40) objectForKeyedSubscript:v3];
        v4 = [v33 localIdentifier];
        if (v4)
        {
          v32 = v4;
          v5 = [*(a1 + 56) objectForKeyedSubscript:v4];
          v6 = v5;
          if (v5)
          {
            v7 = [v5 version];
            if (v7 >= [v35 version])
            {
              if (MediaAnalysisLogLevel() >= 5)
              {
                v22 = VCPLogToOSLogType[5];
                if (os_log_type_enabled(&_os_log_default, v22))
                {
                  v23 = *(a1 + 48);
                  v24 = [v6 version];
                  v25 = [v35 version];
                  *buf = 138413058;
                  v46 = v23;
                  v47 = 2112;
                  v48 = v4;
                  v49 = 1024;
                  LODWORD(v50[0]) = v24;
                  WORD2(v50[0]) = 1024;
                  *(v50 + 6) = v25;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@[%@] Existing version (%d) >= Backup'd analysis version (%d); skipping entry", buf, 0x22u);
                }
              }

              goto LABEL_30;
            }
          }

          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
          {
            v8 = *(a1 + 48);
            *buf = 138412546;
            v46 = v8;
            v47 = 2112;
            v48 = v4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@[%@] Copying managed asset back to CoreData DB...", buf, 0x16u);
          }

          v9 = [[MADManagedPhotosAsset alloc] initWithContext:*(a1 + 64)];

          [v9 setLocalIdentifier:v4];
          v10 = [v35 dateModified];
          [v9 setDateModified:v10];

          v11 = [v35 dateAnalyzed];
          [v9 setDateAnalyzed:v11];

          [v9 setVersion:{objc_msgSend(v35, "version")}];
          [v9 setAnalysisTypes:{objc_msgSend(v35, "analysisTypes")}];
          [v9 setFlags:{objc_msgSend(v35, "flags")}];
          [v9 setStatsFlags:{objc_msgSend(v35, "statsFlags")}];
          [v35 quality];
          [v9 setQuality:?];
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v12 = [v35 results];
          v13 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v13)
          {
            v14 = *v37;
            do
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v37 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v36 + 1) + 8 * j);
                v17 = [[MADManagedPhotosResult alloc] initWithContext:*(a1 + 64)];
                [v17 setResultsType:{objc_msgSend(v16, "resultsType")}];
                v18 = [v16 results];
                v19 = [NSData dataWithData:v18];
                [v17 setResults:v19];

                [v17 setAsset:v9];
              }

              v13 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v13);
          }

          ++**(a1 + 72);
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v27))
        {
          v20 = *(a1 + 48);
          v21 = [v33 error];
          *buf = v26;
          v46 = v20;
          v47 = 2112;
          v48 = v3;
          v49 = 2112;
          v50[0] = v21;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Failed to fetch local identifier for cloud identifier %@ (%@); skipping entry", buf, 0x20u);
        }
      }

      v31 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:
}

void sub_100184A00(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v4 = *v17;
    v5 = VCPLogToOSLogType[4];
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 localIdentifier];
        v10 = v9 == 0;

        if (v10)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v5))
          {
            v14 = *(a1 + 40);
            *buf = 138412546;
            v21 = v14;
            v22 = 2112;
            v23 = v7;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Nil localIdentifier for %@; skipping this asset ...", buf, 0x16u);
          }
        }

        else
        {
          v11 = [PHCloudIdentifier alloc];
          v12 = [v7 localIdentifier];
          v13 = [v11 initWithStringValue:v12];

          if (v13)
          {
            [*(a1 + 48) setObject:v7 forKeyedSubscript:v13];
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v5))
          {
            v15 = *(a1 + 40);
            *buf = 138412546;
            v21 = v15;
            v22 = 2112;
            v23 = v7;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Nil cloudIdentifier for %@; skipping this asset ...", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v8);
      }

      v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v3);
  }
}

void sub_100184EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_100184F34(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStores];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [*(a1 + 32) metadataForPersistentStore:v3];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v7 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = *(a1 + 40);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Failed to retrieve persistent store", &v9, 0xCu);
    }
  }
}

void sub_100185FC0(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v2)
  {
    v3 = *v13;
    v4 = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v13 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [*(a1 + 40) objectForKeyedSubscript:v6];
        v9 = [PHAssetChangeRequest changeRequestForAsset:v8];
        [v9 setVideoEmbeddingVersion:75];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v4))
        {
          v10 = *(a1 + 48);
          *buf = 138412546;
          v17 = v10;
          v18 = 2112;
          v19 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@[%@] Restored video embeddings from backup", buf, 0x16u);
        }

        ++*(*(*(a1 + 56) + 8) + 24);

        objc_autoreleasePoolPop(v7);
      }

      v2 = [obj countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v2);
  }
}

void sub_1001861E4(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_100187A80()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B84A0;
  qword_1002B84A0 = v0;
}

uint64_t sub_100188244()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_1002B84C8;
  v5 = qword_1002B84C8;
  if (!qword_1002B84C8)
  {
    v6 = *off_100287FE0;
    v7 = *off_100287FF0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_1002B84C8 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_100188358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100188370(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002B84C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100188408()
{
  v0 = sub_100188244();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t sub_100188AD0(uint64_t a1, void *a2)
{
  v35 = a2;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v37 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v3)
  {
    v34 = *v41;
    type = VCPLogToOSLogType[7];
    v5 = VCPLogToOSLogType[3];
    *&v4 = 138412290;
    v32 = v4;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v40 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          v9 = *(v37 + 40);
          *buf = 138412546;
          v45 = v9;
          v46 = 2112;
          v47 = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Detected face %@", buf, 0x16u);
        }

        v10 = [(__CFString *)v7 imageprintWrapper];
        v11 = [v10 data];
        v12 = [VCPFaceIDModel faceObservationFromFaceprintData:v11];

        if (v12)
        {
          v13 = [[VUWGalleryContext alloc] initWithMoment:0 asset:*(v37 + 48) source:0];
          v39 = 0;
          v14 = [v35 addWithObservation:v12 context:v13 priority:1 at:0 error:&v39];
          v15 = v39;
          if (v14)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              v16 = *(v37 + 40);
              v17 = [(__CFString *)v14 value];
              *buf = 138412546;
              v45 = v16;
              v46 = 2048;
              v47 = v17;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Added VNFaceObservation (%ld) to VUGallery", buf, 0x16u);
            }

            v18 = *(v37 + 56);
            if (*(v37 + 64))
            {
              v19 = 0;
            }

            else
            {
              v19 = 2;
            }

            v38 = v15;
            v20 = [v35 tag:v14 with:v18 type:v19 error:&v38];
            v21 = v38;

            if (v20)
            {
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
              {
                v22 = *(v37 + 40);
                v23 = *(v37 + 56);
                v24 = @"NO";
                if (*(v37 + 64))
                {
                  v24 = @"YES";
                }

                *buf = 138413058;
                v45 = v22;
                v46 = 2112;
                v47 = v14;
                v48 = 2112;
                v49 = v23;
                v50 = 2112;
                v51 = v24;
                v25 = type;
                v26 = "%@ Tagged VNFaceObservation %@ with person %@ to VUGallery (Confirmed: %@)";
LABEL_32:
                _os_log_impl(&_mh_execute_header, &_os_log_default, v25, v26, buf, 0x2Au);
              }
            }

            else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v5))
            {
              v29 = *(v37 + 40);
              v30 = *(v37 + 56);
              *buf = 138413058;
              v45 = v29;
              v46 = 2112;
              v47 = v14;
              v48 = 2112;
              v49 = v30;
              v50 = 2112;
              v51 = v21;
              v25 = v5;
              v26 = "%@ Failed to tag VNFaceObservation %@ with person %@ to VUGallery - %@";
              goto LABEL_32;
            }

            v15 = v21;
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v5))
          {
            v28 = *(v37 + 40);
            *buf = 138412546;
            v45 = v28;
            v46 = 2112;
            v47 = v15;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Failed to add VNFaceObservation to VUGallery - %@", buf, 0x16u);
          }

          goto LABEL_35;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v5))
        {
          v27 = *(v37 + 40);
          *buf = v32;
          v45 = v27;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Failed to create VNFaceObservation; ignoring", buf, 0xCu);
        }

LABEL_35:

        objc_autoreleasePoolPop(v8);
      }

      v3 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v3);
  }

  return 0;
}

void sub_10018945C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100002CBC(va);

  _Unwind_Resume(a1);
}

void sub_1001898A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001899F8;
    v7[3] = &unk_100288038;
    v7[4] = *(a1 + 32);
    [v3 enumerateObjectsUsingBlock:v7];
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v5 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Cannot fetch Home Person FaceCrop", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1001899F8(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) cancelBlock];
  if (v5 && ([*(a1 + 32) cancelBlock], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6[2](), v6, v5, v7))
  {
    *a3 = 1;
  }

  else
  {
    v8 = +[VCPWatchdog sharedWatchdog];
    [v8 pet];

    [*(a1 + 32) _processFaceCrop:v9];
  }
}

uint64_t sub_10018A630(uint64_t a1, void *a2)
{
  v25 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
  v5 = 0;
  if (v3)
  {
    v6 = *v28;
    v7 = VCPLogToOSLogType[7];
    type = VCPLogToOSLogType[3];
    *&v4 = 138412802;
    v20 = v4;
    do
    {
      v8 = 0;
      v22 = v3;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = +[VCPWatchdog sharedWatchdog];
        [v11 pet];

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v7))
        {
          v12 = *(v23 + 40);
          *buf = 138412546;
          v32 = v12;
          v33 = 2112;
          v34 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Removing FaceCrop %@ ...", buf, 0x16u);
        }

        v26 = 0;
        v13 = [v25 removeWithAsset:v9 error:{&v26, v20}];
        v14 = v26;
        if (v13)
        {
          ++v5;
        }

        else if (MediaAnalysisLogLevel() >= 3)
        {
          if (os_log_type_enabled(&_os_log_default, type))
          {
            v15 = *(v23 + 40);
            *buf = v20;
            v32 = v15;
            v33 = 2112;
            v34 = v9;
            v35 = 2112;
            v36 = v14;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to remove FaceCrop %@ from Gallery - %@; ignore", buf, 0x20u);
          }

          v3 = v22;
        }

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v3 != v8);
      v3 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v3);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v16 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      v17 = *(v23 + 40);
      v18 = [*(v23 + 32) count];
      *buf = 138412802;
      v32 = v17;
      v33 = 2048;
      v34 = v5;
      v35 = 2048;
      v36 = v18;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Removed %lu (out of %lu) FaceCrop(s) from Gallery", buf, 0x20u);
    }
  }

  return 0;
}

uint64_t sub_10018A9A8(uint64_t a1, float a2)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v11 = 138412546;
      v12 = v5;
      v13 = 2048;
      v14 = (a2 * 100.0);
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Gallery updating - %.2f%%", &v11, 0x16u);
    }
  }

  v6 = [*(a1 + 40) cancelBlock];
  if (v6)
  {
    v7 = [*(a1 + 40) cancelBlock];
    v8 = v7[2]();

    if (v8)
    {
      return 0;
    }
  }

  v10 = +[VCPWatchdog sharedWatchdog];
  [v10 pet];

  return 1;
}

Class sub_10018ABC8(uint64_t a1)
{
  sub_100188408();
  result = objc_getClass("HMMutableHomeManagerConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002B84D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10018AC78();
    return sub_10018AC20(v3);
  }

  return result;
}

Class sub_10018AC20(uint64_t a1)
{
  sub_100188408();
  result = objc_getClass("HMHomeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002B84D8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10018ACA0();
    return sub_10018AC78();
  }

  return result;
}

void sub_10018AEE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

void sub_10018B208(uint64_t a1)
{
  v2 = [*(a1 + 32) publish];
  if (v2)
  {
    v3 = v2;
    if (MediaAnalysisLogLevel() >= 3)
    {
      v4 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        v5 = *(a1 + 32);
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Failed to publish batch: %@", &v12, 0xCu);
      }
    }

    *(*(a1 + 40) + 24) = v3;
  }

  else
  {
    *(*(a1 + 40) + 32) += [*(a1 + 32) count];
    v6 = *(a1 + 40);
    v7 = 100.0;
    v8 = v6[5];
    v9.n128_f64[0] = v6[4] * 100.0 / v8;
    if (v9.n128_f64[0] < 100.0)
    {
      v7 = v6[4] * 100.0 / v8;
    }

    v10 = v9.n128_f64[0] > 0.0;
    v9.n128_u64[0] = 0;
    if (v10)
    {
      v9.n128_f64[0] = v7;
    }

    v11 = *(v6[6] + 16);

    v11(v9);
  }
}

uint64_t sub_10018C140(uint64_t a1, void *a2)
{
  v35 = a2;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v37 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v3)
  {
    v34 = *v41;
    type = VCPLogToOSLogType[7];
    v5 = VCPLogToOSLogType[3];
    *&v4 = 138412290;
    v32 = v4;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v40 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          v9 = *(v37 + 40);
          *buf = 138412546;
          v45 = v9;
          v46 = 2112;
          v47 = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Detected face %@", buf, 0x16u);
        }

        v10 = [(__CFString *)v7 imageprintWrapper];
        v11 = [v10 data];
        v12 = [VCPFaceIDModel faceObservationFromFaceprintData:v11];

        if (v12)
        {
          v13 = [[VUWGalleryContext alloc] initWithMoment:0 asset:*(v37 + 48) source:0];
          v39 = 0;
          v14 = [v35 addWithObservation:v12 context:v13 priority:1 at:0 error:&v39];
          v15 = v39;
          if (v14)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              v16 = *(v37 + 40);
              v17 = [(__CFString *)v14 value];
              *buf = 138412546;
              v45 = v16;
              v46 = 2048;
              v47 = v17;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Added VNFaceObservation (%ld) to VUGallery", buf, 0x16u);
            }

            v18 = *(v37 + 56);
            if (*(v37 + 64))
            {
              v19 = 0;
            }

            else
            {
              v19 = 2;
            }

            v38 = v15;
            v20 = [v35 tag:v14 with:v18 type:v19 error:&v38];
            v21 = v38;

            if (v20)
            {
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
              {
                v22 = *(v37 + 40);
                v23 = *(v37 + 56);
                v24 = @"NO";
                if (*(v37 + 64))
                {
                  v24 = @"YES";
                }

                *buf = 138413058;
                v45 = v22;
                v46 = 2112;
                v47 = v14;
                v48 = 2112;
                v49 = v23;
                v50 = 2112;
                v51 = v24;
                v25 = type;
                v26 = "%@ Tagged VNFaceObservation %@ with contact %@ to VUGallery (Confirmed: %@)";
LABEL_32:
                _os_log_impl(&_mh_execute_header, &_os_log_default, v25, v26, buf, 0x2Au);
              }
            }

            else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v5))
            {
              v29 = *(v37 + 40);
              v30 = *(v37 + 56);
              *buf = 138413058;
              v45 = v29;
              v46 = 2112;
              v47 = v14;
              v48 = 2112;
              v49 = v30;
              v50 = 2112;
              v51 = v21;
              v25 = v5;
              v26 = "%@ Failed to tag VNFaceObservation %@ with contact %@ to VUGallery - %@";
              goto LABEL_32;
            }

            v15 = v21;
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v5))
          {
            v28 = *(v37 + 40);
            *buf = 138412546;
            v45 = v28;
            v46 = 2112;
            v47 = v15;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Failed to add VNFaceObservation to VUGallery - %@", buf, 0x16u);
          }

          goto LABEL_35;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v5))
        {
          v27 = *(v37 + 40);
          *buf = v32;
          v45 = v27;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Failed to create VNFaceObservation; ignoring", buf, 0xCu);
        }

LABEL_35:

        objc_autoreleasePoolPop(v8);
      }

      v3 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v3);
  }

  return 0;
}

void sub_10018CBBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100002CBC(va);

  _Unwind_Resume(a1);
}

id sub_10018DB04()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002B84F0;
  v7 = qword_1002B84F0;
  if (!qword_1002B84F0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10018EE64;
    v3[3] = &unk_100283450;
    v3[4] = &v4;
    sub_10018EE64(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10018DBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018E728(uint64_t a1, void *a2)
{
  v25 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
  v5 = 0;
  if (v3)
  {
    v6 = *v28;
    v7 = VCPLogToOSLogType[7];
    type = VCPLogToOSLogType[3];
    *&v4 = 138412802;
    v20 = v4;
    do
    {
      v8 = 0;
      v22 = v3;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = +[VCPWatchdog sharedWatchdog];
        [v11 pet];

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v7))
        {
          v12 = *(v23 + 40);
          *buf = 138412546;
          v32 = v12;
          v33 = 2112;
          v34 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Removing asset %@ ...", buf, 0x16u);
        }

        v26 = 0;
        v13 = [v25 removeWithAsset:v9 error:{&v26, v20}];
        v14 = v26;
        if (v13)
        {
          ++v5;
        }

        else if (MediaAnalysisLogLevel() >= 3)
        {
          if (os_log_type_enabled(&_os_log_default, type))
          {
            v15 = *(v23 + 40);
            *buf = v20;
            v32 = v15;
            v33 = 2112;
            v34 = v9;
            v35 = 2112;
            v36 = v14;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to remove asset %@ from Gallery - %@; ignore", buf, 0x20u);
          }

          v3 = v22;
        }

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v3 != v8);
      v3 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v3);
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v16 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      v17 = *(v23 + 40);
      v18 = [*(v23 + 32) count];
      *buf = 138412802;
      v32 = v17;
      v33 = 2048;
      v34 = v5;
      v35 = 2048;
      v36 = v18;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Removed %lu (out of %lu) asset(s) from Gallery", buf, 0x20u);
    }
  }

  return 0;
}

uint64_t sub_10018EAA0(uint64_t a1, float a2)
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v11 = 138412546;
      v12 = v5;
      v13 = 2048;
      v14 = (a2 * 100.0);
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Gallery updating - %.2f%%", &v11, 0x16u);
    }
  }

  v6 = [*(a1 + 40) cancelBlock];
  if (v6)
  {
    v7 = [*(a1 + 40) cancelBlock];
    v8 = v7[2]();

    if (v8)
    {
      return 0;
    }
  }

  v10 = +[VCPWatchdog sharedWatchdog];
  [v10 pet];

  return 1;
}

Class sub_10018ECAC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002B84E8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10018EDF0;
    v4[4] = &unk_100282998;
    v4[5] = v4;
    v5 = off_1002880D0;
    v6 = 0;
    qword_1002B84E8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002B84E8)
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
  result = objc_getClass("PRSPosterArchiver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10018F01C();
  }

  qword_1002B84E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10018EDF0()
{
  result = _sl_dlopen();
  qword_1002B84E8 = result;
  return result;
}

Class sub_10018EE64(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002B84F8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10018EFA8;
    v4[4] = &unk_100282998;
    v4[5] = v4;
    v5 = off_1002880E8;
    v6 = 0;
    qword_1002B84F8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002B84F8)
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
  result = objc_getClass("PISegmentationLoader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10018F044();
  }

  qword_1002B84F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10018EFA8()
{
  result = _sl_dlopen();
  qword_1002B84F8 = result;
  return result;
}

MADVUUtilities *__cdecl sub_10018F174(id a1)
{
  v1 = objc_alloc_init(MADVUUtilities);

  return v1;
}

void sub_10018F1BC(id a1)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v1 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v1))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v1, "[MADVUUtilities] Flushing operation queue ...", v2, 2u);
    }
  }
}

uint64_t sub_10018F430(uint64_t a1, void *a2)
{
  v23 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v22 = 0;
    v6 = *v26;
    v7 = VCPLogToOSLogType[3];
    type = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        v9 = v7;
        v10 = v5;
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v24 = v5;
        v13 = [v23 removeWithObservationIdentifier:v11 error:&v24];
        v5 = v24;

        v14 = MediaAnalysisLogLevel();
        if (v13)
        {
          v7 = v9;
          if (v14 >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v30 = v11;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[GallerySync] Removing %@ ...", buf, 0xCu);
          }

          ++v22;
        }

        else
        {
          v7 = v9;
          if (v14 >= 3 && os_log_type_enabled(&_os_log_default, v9))
          {
            v15 = [v11 value];
            *buf = 134218242;
            v30 = v15;
            v31 = 2112;
            v32 = v5;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[GallerySync] Failed to remove observation %ld from Gallery - %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v22 = 0;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v16 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      v17 = [*(v19 + 32) count];
      *buf = 134218240;
      v30 = v22;
      v31 = 2048;
      v32 = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[GallerySync] Removed %lu (out of %lu) observation(s) from Gallery", buf, 0x16u);
    }
  }

  return 0;
}

id sub_10018F8C4(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v4 = 0;
    v5 = VCPLogToOSLogType[7];
    *&v3 = 138412546;
    v12 = v3;
    do
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = [*(a1 + 32) objectAtIndexedSubscript:v4];
        v7 = [v6 localIdentifier];
        v8 = [*(a1 + 32) objectAtIndexedSubscript:v4];
        v9 = [v8 vuObservationID];
        *buf = v12;
        v14 = v7;
        v15 = 2048;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[GallerySync] Reset face %@ observationID %lu", buf, 0x16u);
      }

      v10 = [*(a1 + 32) objectAtIndexedSubscript:{v4, v12}];
      v11 = [PHFaceChangeRequest changeRequestForFace:v10];
      [v11 setVuObservationID:0];

      ++v4;
      result = [*(a1 + 32) count];
    }

    while (v4 < result);
  }

  return result;
}

void sub_10018FEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 176), 8);
  _Block_object_dispose((v32 - 216), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018FF4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10018FF64(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = +[VCPWatchdog sharedWatchdog];
  [v6 pet];

  v7 = *(a1 + 40);
  if (v7 && (*(v7 + 16))())
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = -128;
LABEL_13:
    *(v8 + 24) = v9;
    *a3 = 1;
    goto LABEL_14;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v10 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      v11 = *(a1 + 32);
      *buf = 138412546;
      v36 = v11;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Evaluating Change %@", buf, 0x16u);
    }
  }

  if (([v5 hasIncrementalChanges] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v29 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v29))
      {
        v30 = *(a1 + 32);
        *buf = 138412546;
        v36 = v30;
        v37 = 2112;
        v38 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "%@ Non-incremental change (%@); falling back to full scan", buf, 0x16u);
      }
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = -23801;
    goto LABEL_13;
  }

  v12 = [v5 changeToken];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = [v5 changedLocalIdentifiersForEntityClass:objc_opt_class()];
  v16 = +[NSMutableSet set];
  v17 = PHInsertedLocalIdentifiersKey;
  v18 = [v15 objectForKeyedSubscript:PHInsertedLocalIdentifiersKey];
  [v16 unionSet:v18];

  v19 = PHUpdatedLocalIdentifiersKey;
  v20 = [v15 objectForKeyedSubscript:PHUpdatedLocalIdentifiersKey];
  [v16 unionSet:v20];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001902EC;
  v31[3] = &unk_100288190;
  v21 = v5;
  v32 = v21;
  v22 = *(a1 + 32);
  v23 = *(a1 + 64);
  v33 = v22;
  v34 = v23;
  [v16 enumerateObjectsUsingBlock:v31];
  v24 = [v21 changedLocalIdentifiersForEntityClass:objc_opt_class()];
  v25 = *(*(*(a1 + 72) + 8) + 40);
  v26 = [v24 objectForKeyedSubscript:v17];
  [v25 unionSet:v26];

  v27 = *(*(*(a1 + 72) + 8) + 40);
  v28 = [v24 objectForKeyedSubscript:v19];
  [v27 unionSet:v28];

LABEL_14:
}

void sub_1001902EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) faceRelationshipChangedForPersonWithLocalIdentifier:v3])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v4 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        v5 = *(a1 + 40);
        v6 = 138412546;
        v7 = v5;
        v8 = 2112;
        v9 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Change face relationship to PHPerson %@", &v6, 0x16u);
      }
    }

    [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
  }
}

void sub_1001903EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Changed PHFaceCrop %@", &v6, 0x16u);
    }
  }
}

void sub_100190770(uint64_t a1)
{
  v3 = [PHPersonDeleteRequest deleteRequestsForObjects:*(a1 + 32) ofType:objc_opt_class() forSelector:*(a1 + 40)];
  if ([v3 count])
  {
    v1 = 0;
    do
    {
      v2 = [v3 objectAtIndexedSubscript:v1];
      [v2 setForce:1];

      ++v1;
    }

    while (v1 < [v3 count]);
  }
}

void sub_1001909B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001909CC(uint64_t a1)
{
  v1 = [*(a1 + 32) vcp_description];
  v528 = [NSString stringWithFormat:@"[GallerySync][%@]", v1];

  if (*(*(a1 + 40) + 16) != 1)
  {
    v3 = objc_alloc_init(VCPTimeMeasurement);
    [v3 start];
    v4 = *(a1 + 56);
    if (v4 && (*(v4 + 16))())
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v5 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v5))
        {
          *buf = 138412290;
          *&buf[4] = v528;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Cancelled", buf, 0xCu);
        }
      }

      goto LABEL_597;
    }

    v488 = v3;
    v493 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:*(a1 + 32)];
    if ((+[MADManagedKeyValueStore isMACDReadEnabled]& 1) != 0)
    {
      v6 = [*(a1 + 32) mad_fetchRequest];
      v7 = [v6 dataStoreValueForKey:@"VUDeepSyncTimestamp"];
    }

    else
    {
      v7 = [v493 valueForKey:@"VUDeepSyncTimestamp"];
    }

    v8 = v7;
    v482 = [NSDate dateWithTimeIntervalSinceReferenceDate:v7];
    if (v7)
    {
      v9 = +[NSDate now];
      [v9 timeIntervalSinceReferenceDate];
      v11 = v10 - v8 >= 43200.0;
    }

    else
    {
      v11 = 1;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v12 = &_os_log_default;
      v13 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        if (v11)
        {
          v14 = @"Yes";
        }

        else
        {
          v14 = @"No";
        }

        v15 = +[VCPLogManager dateFormatter];
        v16 = [v15 stringFromDate:v482];
        *buf = 138412802;
        *&buf[4] = v528;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        *&buf[22] = 2112;
        *&buf[24] = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Deep sync needed: %@ (last sync date: %@", buf, 0x20u);
      }
    }

    v479 = mach_absolute_time();
    v17 = VCPSignPostLog();
    spid = os_signpost_id_generate(v17);

    v18 = VCPSignPostLog();
    v19 = v18;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "GallerySync_EndToEnd", "", buf, 2u);
    }

    if (+[MADManagedChangeToken isMACDReadEnabled])
    {
      v20 = [*(a1 + 32) mad_fetchRequest];
      v582 = 0;
      [v20 fetchChangeToken:&v582 taskID:3 changeTokenType:3];
      v494 = v582;
    }

    else
    {
      v581 = 0;
      [v493 queryChangeToken:&v581 forTaskID:3 andChangeTokenType:3];
      v494 = v581;
    }

    v484 = [*(a1 + 32) currentToken];
    if (v494)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v21 = &_os_log_default;
        v22 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v22))
        {
          *buf = 138412546;
          *&buf[4] = v528;
          *&buf[12] = 2112;
          *&buf[14] = v494;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@ Person update change token present (%@)", buf, 0x16u);
        }
      }

      v24 = *(a1 + 32);
      v23 = *(a1 + 40);
      v580 = 0;
      v579 = 0;
      v578 = 0;
      v25 = [v23 _fetchChangedPersonSinceChangeToken:v494 photosLibrary:v24 changedPersonLocalIdentifiers:&v580 changedFaceCropLocalIdentifiers:&v579 latestChangeToken:&v578 cancelOrExtendTimeoutBlock:*(a1 + 56)];
      v487 = v580;
      v486 = v579;
      v483 = v578;
      if (!v25)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v26 = &_os_log_default;
          v27 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v27))
          {
            v28 = [v487 count];
            *buf = 138412546;
            *&buf[4] = v528;
            *&buf[12] = 2048;
            *&buf[14] = v28;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Detected %lu person-face relationship changes since last token", buf, 0x16u);
          }
        }

        if (MediaAnalysisLogLevel() >= 6)
        {
          v29 = &_os_log_default;
          v30 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v30))
          {
            v31 = [v486 count];
            *buf = 138412546;
            *&buf[4] = v528;
            *&buf[12] = 2048;
            *&buf[14] = v31;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "%@ Detected %lu PHFaceCrop changes since last token", buf, 0x16u);
          }
        }

        v492 = 0;
        goto LABEL_47;
      }
    }

    else
    {
      v486 = 0;
      v487 = 0;
      v483 = 0;
    }

    v492 = 1;
LABEL_47:
    v32 = a1;
    v33 = *(a1 + 56);
    if (v33)
    {
      v34 = (*(v33 + 16))();
      v32 = a1;
      if (v34)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v35 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v35))
          {
            *buf = 138412290;
            *&buf[4] = v528;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "%@ Cancelled", buf, 0xCu);
          }
        }

        goto LABEL_596;
      }
    }

    v503 = [*(v32 + 32) mad_allFacesFetchOptions];
    v600[0] = PHFacePropertySetIdentifier;
    v600[1] = PHFacePropertySetCore;
    v600[2] = PHFacePropertySetClustering;
    v600[3] = PHFacePropertySetPersonBuilder;
    v36 = [NSArray arrayWithObjects:v600 count:4];
    [v503 setFetchPropertySets:v36];

    if (!v11)
    {
      goto LABEL_267;
    }

    v520 = objc_autoreleasePoolPush();
    v530 = [*(a1 + 32) mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:&off_100296530];
    v37 = [NSPredicate predicateWithFormat:@"faceCount = 0"];
    v38 = [v530 predicate];

    if (v38)
    {
      v39 = [v530 predicate];
      v599[0] = v39;
      v599[1] = v37;
      v40 = [NSArray arrayWithObjects:v599 count:2];
      v41 = [NSCompoundPredicate andPredicateWithSubpredicates:v40];

      v42 = v41;
    }

    else
    {
      v42 = v37;
    }

    v515 = v42;
    [v530 setPredicate:?];
    if (v492)
    {
      v43 = +[MADStateHandler sharedStateHandler];
      [v43 addBreadcrumb:{@"[GallerySync] Fetching 0-face unverified persons with fetchOptions: %@", v530}];

      v44 = [PHPerson fetchPersonsWithOptions:v530];
      v45 = +[MADStateHandler sharedStateHandler];
      [v45 addBreadcrumb:{@"[GallerySync] Fetched %lu 0-face unverified persons", objc_msgSend(v44, "count")}];
    }

    else
    {
      v44 = 0;
    }

    if ([v44 count])
    {
      context = objc_autoreleasePoolPush();
      v504 = mach_absolute_time();
      v46 = VCPSignPostLog();
      v508 = os_signpost_id_generate(v46);

      v47 = VCPSignPostLog();
      v48 = v47;
      if (v508 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_BEGIN, v508, "GallerySync_removeZeroFaceUnverifiedPersons", "", buf, 2u);
      }

      if (MediaAnalysisLogLevel() >= 7)
      {
        v49 = &_os_log_default;
        v50 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v50))
        {
          v51 = [v44 count];
          *buf = 138412546;
          *&buf[4] = @"[GallerySync_UnverifiedPerson]";
          *&buf[12] = 2048;
          *&buf[14] = v51;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v50, "%@ Checking %lu 0-face unverified persons", buf, 0x16u);
        }
      }

      v52 = +[MADStateHandler sharedStateHandler];
      [v52 addBreadcrumb:{@"%@ Checking %lu 0-face unverified persons", @"[GallerySync_UnverifiedPerson]", objc_msgSend(v44, "count")}];

      v53 = +[NSMutableArray array];
      v54 = 0;
      if ([v44 count])
      {
        v55 = 0;
        type = VCPLogToOSLogType[7];
        while (1)
        {
          v56 = objc_autoreleasePoolPush();
          v57 = *(a1 + 56);
          if (v57)
          {
            if ((*(v57 + 16))())
            {
              break;
            }
          }

          v58 = [v44 objectAtIndexedSubscript:v55];
          v59 = [PHFace fetchFacesForPerson:v58 options:v503];
          v60 = [v59 count] == 0;

          if (v60)
          {
            [v53 addObject:v58];
            ++v54;
            if ([v53 count] >= 0x3E8)
            {
              [*(a1 + 40) _deleteUnverifiedPersonsWithZeroFaces:v53];
              [v53 removeAllObjects];
            }
          }

          else if (MediaAnalysisLogLevel() >= 7)
          {
            v61 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, type))
            {
              v62 = [v58 localIdentifier];
              *buf = 138412546;
              *&buf[4] = @"[GallerySync_UnverifiedPerson]";
              *&buf[12] = 2112;
              *&buf[14] = v62;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Ignoring unverified person %@ (has face)", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v56);
          if (++v55 >= [v44 count])
          {
            goto LABEL_79;
          }
        }

        if (MediaAnalysisLogLevel() >= 6)
        {
          v151 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v151))
          {
            *buf = 138412290;
            *&buf[4] = @"[GallerySync_UnverifiedPerson]";
            _os_log_impl(&_mh_execute_header, &_os_log_default, v151, "%@ Cancelled", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v56);
        goto LABEL_209;
      }

LABEL_79:
      if ([v53 count])
      {
        [*(a1 + 40) _deleteUnverifiedPersonsWithZeroFaces:v53];
        [v53 removeAllObjects];
      }

      if (v54)
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v63 = &_os_log_default;
          v64 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v64))
          {
            *buf = 138412546;
            *&buf[4] = @"[GallerySync_UnverifiedPerson]";
            *&buf[12] = 2048;
            *&buf[14] = v54;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v64, "%@ Deleted %lu 0-face unverified persons", buf, 0x16u);
          }
        }

        v65 = +[MADStateHandler sharedStateHandler];
        [v65 addBreadcrumb:{@"%@ Deleted %lu 0-face unverified persons", @"[GallerySync_UnverifiedPerson]", v54}];
      }

      v66 = VCPSignPostLog();
      v67 = v66;
      if (v508 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v66))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_INTERVAL_END, v508, "GallerySync_removeZeroFaceUnverifiedPersons", "", buf, 2u);
      }

      if (v504)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      v68 = *(a1 + 56);
      if (v68 && (*(v68 + 16))())
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v69 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v69))
          {
            *buf = 138412290;
            *&buf[4] = @"[GallerySync_UnverifiedPerson]";
            _os_log_impl(&_mh_execute_header, &_os_log_default, v69, "%@ Cancelled", buf, 0xCu);
          }
        }

LABEL_209:

        objc_autoreleasePoolPop(context);
        objc_autoreleasePoolPop(v520);
LABEL_595:

LABEL_596:
        v3 = v488;
LABEL_597:

        goto LABEL_598;
      }

      objc_autoreleasePoolPop(context);
    }

    objc_autoreleasePoolPop(v520);
    v471 = objc_autoreleasePoolPush();
    v473 = mach_absolute_time();
    v70 = VCPSignPostLog();
    v476 = os_signpost_id_generate(v70);

    v71 = VCPSignPostLog();
    v72 = v71;
    if (v476 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v72, OS_SIGNPOST_INTERVAL_BEGIN, v476, "GallerySync_loadObservationIDFromPhotos", "", buf, 2u);
    }

    v73 = +[MADStateHandler sharedStateHandler];
    [v73 addBreadcrumb:@"[GallerySync] Reset vuObservationIDs to all unknown vuObservationIDs from Photos DB"];

    contexta = [*(a1 + 32) mad_allFacesFetchOptions];
    v74 = [NSPredicate predicateWithFormat:@"vuObservationID != 0"];
    [contexta setInternalPredicate:v74];

    v521 = [PHFace fetchFacesWithOptions:contexta];
    v495 = +[NSMutableSet set];
    if ([v521 count])
    {
      v75 = 0;
      do
      {
        v76 = objc_autoreleasePoolPush();
        v77 = [VUWGalleryObservationIdentifier alloc];
        v78 = [v521 objectAtIndexedSubscript:v75];
        v79 = [v77 initWithValue:{objc_msgSend(v78, "vuObservationID")}];

        if (v79)
        {
          [v495 addObject:v79];
        }

        objc_autoreleasePoolPop(v76);
        ++v75;
      }

      while (v75 < [v521 count]);
    }

    v489 = [*(a1 + 32) mad_allPersonsFetchOptions];
    v80 = [NSPredicate predicateWithFormat:@"verifiedType = %ld", -2];
    [v489 setPredicate:v80];

    v509 = [PHPerson fetchPersonsWithOptions:v489];
    v531 = +[NSMutableSet set];
    if ([v509 count])
    {
      v512 = 0;
      v81 = VCPLogToOSLogType[7];
      while (1)
      {
        v505 = objc_autoreleasePoolPush();
        v82 = *(a1 + 56);
        if (v82)
        {
          if ((*(v82 + 16))())
          {
            break;
          }
        }

        v516 = [v509 objectAtIndexedSubscript:v512];
        if (MediaAnalysisLogLevel() >= 7)
        {
          v83 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, v81))
          {
            v84 = [v516 localIdentifier];
            *buf = 138412546;
            *&buf[4] = v528;
            *&buf[12] = 2112;
            *&buf[14] = v84;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v81, "%@ Checking tombstone person %@ to collect all connecting faces to remove", buf, 0x16u);
          }
        }

        v85 = [PHFace fetchFacesForPerson:v516 options:contexta];
        if ([v85 count])
        {
          v86 = 0;
          do
          {
            v87 = objc_autoreleasePoolPush();
            v88 = [v85 objectAtIndexedSubscript:v86];
            if (MediaAnalysisLogLevel() >= 7)
            {
              v89 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v81))
              {
                v90 = [v88 localIdentifier];
                v91 = [v88 vuObservationID];
                v92 = [v88 personLocalIdentifier];
                *buf = 138413058;
                *&buf[4] = v528;
                *&buf[12] = 2112;
                *&buf[14] = v90;
                *&buf[22] = 2048;
                *&buf[24] = v91;
                *&buf[32] = 2112;
                *&buf[34] = v92;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v81, "%@ Face %@ (%lu) for tombstone person %@", buf, 0x2Au);
              }
            }

            v93 = [[VUWGalleryObservationIdentifier alloc] initWithValue:{objc_msgSend(v88, "vuObservationID")}];
            if (v93)
            {
              [v531 addObject:v93];
            }

            objc_autoreleasePoolPop(v87);
            ++v86;
          }

          while (v86 < [v85 count]);
        }

        objc_autoreleasePoolPop(v505);
        if (++v512 >= [v509 count])
        {
          goto LABEL_124;
        }
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v149 = &_os_log_default;
        v150 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v150))
        {
          *buf = 138412290;
          *&buf[4] = v528;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v150, "%@ Cancelled", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v505);

      objc_autoreleasePoolPop(v471);
      goto LABEL_595;
    }

LABEL_124:
    v94 = VCPSignPostLog();
    v95 = v94;
    if (v476 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v94))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v95, OS_SIGNPOST_INTERVAL_END, v476, "GallerySync_loadObservationIDFromPhotos", "", buf, 2u);
    }

    if (v473)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    v96 = +[MADStateHandler sharedStateHandler];
    [v96 addBreadcrumb:@"[GallerySync] Finished resetting vuObservationIDs to all unknown vuObservationIDs from Photos DB"];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = sub_10018FF4C;
    *&buf[32] = sub_10018FF5C;
    *&buf[40] = +[NSMutableSet set];
    v97 = mach_absolute_time();
    v98 = VCPSignPostLog();
    v99 = os_signpost_id_generate(v98);

    v100 = VCPSignPostLog();
    v101 = v100;
    if (v99 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v100))
    {
      *v590 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v101, OS_SIGNPOST_INTERVAL_BEGIN, v99, "GallerySync_loadUnassignedObservationIDFromGallery", "", v590, 2u);
    }

    typea = [*(a1 + 48) unassignedObservations];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v102 = &_os_log_default;
      v103 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v103))
      {
        v104 = [typea count];
        *v590 = 138412546;
        v591 = v528;
        v592 = 2048;
        v593 = v104;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v103, "%@ Dicovered %lu unassigned observations", v590, 0x16u);
      }
    }

    v517 = [typea mutableCopy];
    [v517 minusSet:v495];
    if ([v517 count])
    {
      [*(*&buf[8] + 40) unionSet:v517];
      if (MediaAnalysisLogLevel() >= 5)
      {
        v105 = &_os_log_default;
        v106 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v106))
        {
          v107 = [v517 count];
          *v590 = 138412546;
          v591 = v528;
          v592 = 2048;
          v593 = v107;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v106, "%@ Dicovered %lu unassigned observations also unknown to Photos", v590, 0x16u);
        }
      }
    }

    if ([typea count])
    {
      [v495 minusSet:typea];
    }

    v108 = VCPSignPostLog();
    v109 = v108;
    if (v99 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
    {
      *v590 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v109, OS_SIGNPOST_INTERVAL_END, v99, "GallerySync_loadUnassignedObservationIDFromGallery", "", v590, 2u);
    }

    if (v97)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    v110 = mach_absolute_time();
    v111 = VCPSignPostLog();
    v112 = os_signpost_id_generate(v111);

    v113 = VCPSignPostLog();
    v114 = v113;
    if (v112 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v113))
    {
      *v590 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v114, OS_SIGNPOST_INTERVAL_BEGIN, v112, "GallerySync_checkUnknownObservationIDs", "", v590, 2u);
    }

    v577[0] = 0;
    v577[1] = v577;
    v577[2] = 0x2020000000;
    v577[3] = 0;
    [*(*&buf[8] + 40) unionSet:v531];
    v115 = +[MADStateHandler sharedStateHandler];
    [v115 addBreadcrumb:@"[GallerySync] Checking unknown observation ids"];

    v570[0] = _NSConcreteStackBlock;
    v570[1] = 3221225472;
    v570[2] = sub_100196440;
    v570[3] = &unk_100288258;
    v575 = v577;
    v574 = *(a1 + 56);
    v466 = v528;
    v571 = v466;
    v572 = v503;
    v576 = buf;
    v513 = v495;
    v573 = v513;
    v480 = objc_retainBlock(v570);
    v116 = *(a1 + 48);
    v569 = 0;
    v496 = [v116 entities:0 error:&v569 body:v480];
    v474 = v569;
    if (!v496)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v144 = &_os_log_default;
        v145 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v145))
        {
          *v590 = 138412546;
          v591 = v466;
          v592 = 2112;
          v593 = v474;
          v146 = "%@ Failed to sync - %@";
          v147 = v145;
          v148 = 22;
          goto LABEL_198;
        }

LABEL_199:
      }

LABEL_256:
      LOBYTE(v143) = 0;
      goto LABEL_258;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v117 = &_os_log_default;
      v118 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v118))
      {
        *v590 = 138412546;
        v591 = v466;
        v592 = 2112;
        v593 = v496;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v118, "%@ Sync to gallery at ChangeBookmark - %@", v590, 0x16u);
      }
    }

    v119 = +[MADStateHandler sharedStateHandler];
    [v119 addBreadcrumb:@"[GallerySync] Finished checking unknown observation ids"];

    v120 = VCPSignPostLog();
    v121 = v120;
    if (v112 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v120))
    {
      *v590 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v121, OS_SIGNPOST_INTERVAL_END, v112, "GallerySync_checkUnknownObservationIDs", "", v590, 2u);
    }

    if (v110)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    if ([*(*&buf[8] + 40) count])
    {
      v468 = objc_autoreleasePoolPush();
      if (MediaAnalysisLogLevel() >= 7)
      {
        v122 = &_os_log_default;
        v123 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v123))
        {
          v124 = [*(*&buf[8] + 40) count];
          *v590 = 138412546;
          v591 = @"[GallerySync_ObservationRemove]";
          v592 = 2048;
          v593 = v124;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v123, "%@ Removing %lu observation(s) from Gallery", v590, 0x16u);
        }
      }

      v125 = +[MADStateHandler sharedStateHandler];
      [v125 addBreadcrumb:{@"%@ Removing %lu observation(s) from Gallery", @"[GallerySync_ObservationRemove]", objc_msgSend(*(*&buf[8] + 40), "count")}];

      v464 = mach_absolute_time();
      v126 = VCPSignPostLog();
      v506 = os_signpost_id_generate(v126);

      v127 = VCPSignPostLog();
      v128 = v127;
      if (v506 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v127))
      {
        *v590 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v128, OS_SIGNPOST_INTERVAL_BEGIN, v506, "GallerySync_removeUnknownObservationIDsFromGallery", "", v590, 2u);
      }

      v129 = +[NSMutableArray array];
      v567 = 0u;
      v568 = 0u;
      v565 = 0u;
      v566 = 0u;
      v130 = *(*&buf[8] + 40);
      v131 = [v130 countByEnumeratingWithState:&v565 objects:v598 count:16];
      if (v131)
      {
        v132 = *v566;
        v133 = VCPLogToOSLogType[6];
        while (2)
        {
          for (i = 0; i != v131; i = i + 1)
          {
            if (*v566 != v132)
            {
              objc_enumerationMutation(v130);
            }

            v135 = *(*(&v565 + 1) + 8 * i);
            v136 = objc_autoreleasePoolPush();
            v137 = *(a1 + 56);
            if (v137 && (*(v137 + 16))())
            {
              if (MediaAnalysisLogLevel() >= 6)
              {
                v138 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, v133))
                {
                  *v590 = 138412290;
                  v591 = @"[GallerySync_ObservationRemove]";
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v133, "%@ Cancelled", v590, 0xCu);
                }
              }

              v139 = 0;
            }

            else
            {
              [v129 addObject:v135];
              if ([v129 count] >= 0x3E9)
              {
                [*(a1 + 40) _removeObservationIDs:v129 fromGallery:*(a1 + 48)];
                [v129 removeAllObjects];
              }

              v139 = 1;
            }

            objc_autoreleasePoolPop(v136);
            if (!v139)
            {

              v143 = 0;
              goto LABEL_211;
            }
          }

          v131 = [v130 countByEnumeratingWithState:&v565 objects:v598 count:16];
          if (v131)
          {
            continue;
          }

          break;
        }
      }

      if ([v129 count])
      {
        [*(a1 + 40) _removeObservationIDs:v129 fromGallery:*(a1 + 48)];
        [v129 removeAllObjects];
      }

      v140 = +[MADStateHandler sharedStateHandler];
      [v140 addBreadcrumb:{@"%@ Finished removing %lu observation(s) from Gallery", @"[GallerySync_ObservationRemove]", objc_msgSend(*(*&buf[8] + 40), "count")}];

      v141 = VCPSignPostLog();
      v142 = v141;
      if (v506 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v141))
      {
        *v590 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v142, OS_SIGNPOST_INTERVAL_END, v506, "GallerySync_removeUnknownObservationIDsFromGallery", "", v590, 2u);
      }

      if (v464)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      v143 = 1;
LABEL_211:

      objc_autoreleasePoolPop(v468);
      if (!v143)
      {
        goto LABEL_258;
      }
    }

    [v513 unionSet:v531];
    if (![v513 count])
    {
      goto LABEL_251;
    }

    v458 = objc_autoreleasePoolPush();
    if (MediaAnalysisLogLevel() >= 7)
    {
      v152 = &_os_log_default;
      v153 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v153))
      {
        v154 = [v513 count];
        *v590 = 138412546;
        v591 = @"[GallerySync_ObservationReset]";
        v592 = 2048;
        v593 = v154;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v153, "%@ Resetting %lu vuObservationID(s) in Photos", v590, 0x16u);
      }
    }

    v155 = +[MADStateHandler sharedStateHandler];
    [v155 addBreadcrumb:{@"%@ Resetting %lu vuObservationID(s) in Photos", @"[GallerySync_ObservationReset]", objc_msgSend(v513, "count")}];

    v456 = mach_absolute_time();
    v156 = VCPSignPostLog();
    v460 = os_signpost_id_generate(v156);

    v157 = VCPSignPostLog();
    v158 = v157;
    if (v460 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v157))
    {
      *v590 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v158, OS_SIGNPOST_INTERVAL_BEGIN, v460, "GallerySync_resetVuObservationIDsInPhotos", "", v590, 2u);
    }

    v159 = [v513 allObjects];
    v160 = 0;
    v462 = VCPLogToOSLogType[6];
    v477 = VCPLogToOSLogType[7];
    v469 = VCPLogToOSLogType[5];
    while (1)
    {
      v161 = v160;
      v162 = [v159 count];
      if (v160 >= v162)
      {
        break;
      }

      v163 = objc_autoreleasePoolPush();
      v164 = *(a1 + 56);
      if (v164 && (*(v164 + 16))())
      {
        if (MediaAnalysisLogLevel() < 6)
        {
          v166 = 0;
          goto LABEL_242;
        }

        v165 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, v462))
        {
          *v590 = 138412290;
          v591 = @"[GallerySync_ObservationReset]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v462, "%@ Cancelled", v590, 0xCu);
        }

        v166 = 0;
        v167 = &_os_log_default;
      }

      else
      {
        v168 = [v159 count];
        if (&v168[-v160] >= 0x3E8)
        {
          v169 = 1000;
        }

        else
        {
          v169 = &v168[-v160];
        }

        if (MediaAnalysisLogLevel() >= 7)
        {
          v170 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, v477))
          {
            *v590 = 138413058;
            v591 = @"[GallerySync_ObservationReset]";
            v592 = 2048;
            v593 = v169;
            v594 = 2048;
            v595 = v160;
            v596 = 2048;
            v597 = v169 + v160;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v477, "%@ Reset %lu vuObservationIDsInPhotos[%lu:%lu]", v590, 0x2Au);
          }
        }

        v167 = [v159 subarrayWithRange:{v160, v169}];
        v171 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v167 count]);
        v563[0] = _NSConcreteStackBlock;
        v563[1] = 3221225472;
        v563[2] = sub_100196A14;
        v563[3] = &unk_100288230;
        v172 = v171;
        v564 = v172;
        [v167 enumerateObjectsUsingBlock:v563];
        v173 = [PHFace fetchFacesWithVuObservationIDs:v172 options:contexta];
        v174 = [v173 count];
        if (v174 != [v167 count] && MediaAnalysisLogLevel() >= 5)
        {
          v175 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, v469))
          {
            v176 = [v173 count];
            v177 = [v167 count];
            *v590 = 138412802;
            v591 = @"[GallerySync_ObservationReset]";
            v592 = 2048;
            v593 = v176;
            v594 = 2048;
            v595 = v177;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v469, "%@ Fetched %lu faces from Photos (expected %lu)", v590, 0x20u);
          }
        }

        [*(a1 + 40) _resetObservationIDForFaces:v173 fromPhotoLibrary:*(a1 + 32)];

        v160 = v169 + v161;
        v166 = 1;
      }

LABEL_242:
      objc_autoreleasePoolPop(v163);
      if ((v166 & 1) == 0)
      {
        goto LABEL_250;
      }
    }

    v178 = +[MADStateHandler sharedStateHandler];
    [v178 addBreadcrumb:{@"%@ Finished resetting %lu vuObservationID(s) in Photos", @"[GallerySync_ObservationReset]", objc_msgSend(v513, "count")}];

    v179 = VCPSignPostLog();
    v180 = v179;
    if (v460 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v179))
    {
      *v590 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v180, OS_SIGNPOST_INTERVAL_END, v460, "GallerySync_resetVuObservationIDsInPhotos", "", v590, 2u);
    }

    if (v456)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

LABEL_250:

    objc_autoreleasePoolPop(v458);
    if (v161 < v162)
    {
      goto LABEL_256;
    }

LABEL_251:
    v181 = *(a1 + 56);
    if (v181 && (*(v181 + 16))())
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v182 = &_os_log_default;
        v183 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v183))
        {
          *v590 = 138412290;
          v591 = v466;
          v146 = "%@ Cancelled";
          v147 = v183;
          v148 = 12;
LABEL_198:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v147, v146, v590, v148);
        }

        goto LABEL_199;
      }

      goto LABEL_256;
    }

    LOBYTE(v143) = 1;
LABEL_258:

    _Block_object_dispose(v577, 8);
    _Block_object_dispose(buf, 8);

    objc_autoreleasePoolPop(v471);
    if ((v143 & 1) == 0)
    {
      goto LABEL_595;
    }

    v184 = objc_autoreleasePoolPush();
    v185 = +[NSDate now];
    [v185 timeIntervalSinceReferenceDate];
    v187 = v186;

    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      v188 = *(a1 + 32);
      v562[0] = _NSConcreteStackBlock;
      v562[1] = 3221225472;
      v562[2] = sub_100196A80;
      v562[3] = &unk_100282F90;
      v562[4] = v187;
      [v188 mad_performAnalysisDataStoreChanges:v562 error:0];
    }

    else
    {
      [v493 setValue:v187 forKey:@"VUDeepSyncTimestamp"];
      [v493 commit];
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v189 = &_os_log_default;
      v190 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v190))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v190, "[GallerySync] Updated deep sync date", buf, 2u);
      }
    }

    objc_autoreleasePoolPop(v184);
LABEL_267:
    v475 = [*(a1 + 32) mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:&off_100296548];
    if (v492)
    {
      v514 = [PHPerson fetchPersonsWithOptions:v475];
      v191 = [v514 count];
    }

    else if ([v487 count])
    {
      v192 = [v487 allObjects];
      v514 = [PHPerson fetchPersonsWithLocalIdentifiers:v192 options:v475];

      v191 = [v514 count];
    }

    else
    {
      v514 = 0;
      v191 = [0 count];
    }

    if (v191)
    {
      v478 = objc_autoreleasePoolPush();
      v193 = +[MADStateHandler sharedStateHandler];
      [v193 addBreadcrumb:{@"%@ Checking %lu verified persons for visible reject faces", @"[GallerySync_VerifiedPerson]", objc_msgSend(v514, "count")}];

      v497 = mach_absolute_time();
      v194 = VCPSignPostLog();
      v490 = os_signpost_id_generate(v194);

      v195 = VCPSignPostLog();
      v196 = v195;
      if (v490 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v195))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v196, OS_SIGNPOST_INTERVAL_BEGIN, v490, "GallerySync_loadVisibleRejectFaces", "", buf, 2u);
      }

      contextb = [*(a1 + 32) mad_allFacesFetchOptions];
      v532 = +[NSMutableDictionary dictionary];
      v197 = 0;
      if ([v514 count])
      {
        v518 = 0;
        typeb = VCPLogToOSLogType[3];
        do
        {
          v510 = objc_autoreleasePoolPush();
          v198 = *(a1 + 56);
          if (v198 && (*(v198 + 16))())
          {
            if (MediaAnalysisLogLevel() >= 6)
            {
              v218 = &_os_log_default;
              v219 = VCPLogToOSLogType[6];
              if (os_log_type_enabled(&_os_log_default, v219))
              {
                *buf = 138412290;
                *&buf[4] = @"[GallerySync_VerifiedPerson]";
                _os_log_impl(&_mh_execute_header, &_os_log_default, v219, "%@ Cancelled", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v510);
            break;
          }

          v522 = [v514 objectAtIndexedSubscript:v518];
          v199 = [NSUUID alloc];
          v200 = [v522 uuid];
          v201 = [v199 initWithUUIDString:v200];

          if (v201)
          {
            v202 = [PHFace fetchRejectedFacesForPerson:v522 options:contextb];
            if ([v202 count])
            {
              v203 = 0;
              do
              {
                v204 = objc_autoreleasePoolPush();
                v205 = [v202 objectAtIndexedSubscript:v203];
                v206 = [v205 vuObservationID];
                if (v206)
                {
                  v207 = [NSNumber numberWithInteger:v206];
                  v208 = [v532 objectForKeyedSubscript:v207];
                  v209 = v208 == 0;

                  if (v209)
                  {
                    v210 = +[NSMutableSet set];
                    v211 = [NSNumber numberWithInteger:v206];
                    [v532 setObject:v210 forKeyedSubscript:v211];
                  }

                  v212 = [NSNumber numberWithInteger:v206];
                  v213 = [v532 objectForKeyedSubscript:v212];
                  [v213 addObject:v201];

                  ++v197;
                }

                else if (MediaAnalysisLogLevel() >= 3)
                {
                  v214 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, typeb))
                  {
                    v215 = [v205 localIdentifier];
                    *buf = 138412546;
                    *&buf[4] = @"[GallerySync_VerifiedPerson]";
                    *&buf[12] = 2112;
                    *&buf[14] = v215;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, typeb, "%@ Reject face %@ does not have ObservationID; ignore", buf, 0x16u);
                  }
                }

                objc_autoreleasePoolPop(v204);
                ++v203;
              }

              while (v203 < [v202 count]);
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() < 3)
            {
              goto LABEL_293;
            }

            v216 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, typeb))
            {
              v217 = [v522 localIdentifier];
              *buf = 138412802;
              *&buf[4] = @"[GallerySync_VerifiedPerson]";
              *&buf[12] = 2112;
              *&buf[14] = v217;
              *&buf[22] = 2112;
              *&buf[24] = v522;
              _os_log_impl(&_mh_execute_header, &_os_log_default, typeb, "%@ Invalid person identification %@ for person %@; ignore", buf, 0x20u);
            }

            v202 = &_os_log_default;
          }

LABEL_293:
          objc_autoreleasePoolPop(v510);
          ++v518;
        }

        while (v518 < [v514 count]);
      }

      v220 = +[MADStateHandler sharedStateHandler];
      [v220 addBreadcrumb:{@"%@ Finished checking %lu verified persons for visible reject faces", @"[GallerySync_VerifiedPerson]", objc_msgSend(v514, "count")}];

      v221 = VCPSignPostLog();
      v222 = v221;
      if (v490 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v221))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v222, OS_SIGNPOST_INTERVAL_END, v490, "GallerySync_loadVisibleRejectFaces", "", buf, 2u);
      }

      if (v497)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      if ([v532 count])
      {
        v223 = objc_autoreleasePoolPush();
        v224 = mach_absolute_time();
        v225 = VCPSignPostLog();
        v226 = os_signpost_id_generate(v225);

        v227 = VCPSignPostLog();
        v228 = v227;
        if (v226 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v227))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v228, OS_SIGNPOST_INTERVAL_BEGIN, v226, "GallerySync_tagVisibleRejectFaces", "", buf, 2u);
        }

        v229 = +[MADStateHandler sharedStateHandler];
        [v229 addBreadcrumb:{@"%@ Tagging %lu visible reject faces", @"[GallerySync_VerifiedPerson]", objc_msgSend(v532, "count")}];

        v556[0] = _NSConcreteStackBlock;
        v556[1] = 3221225472;
        v556[2] = sub_100196A98;
        v556[3] = &unk_100288280;
        v230 = v532;
        v557 = v230;
        v559 = *(a1 + 56);
        v558 = @"[GallerySync_VerifiedPerson]";
        v561 = v492;
        v560 = v197;
        v231 = objc_retainBlock(v556);
        v232 = +[MADStateHandler sharedStateHandler];
        [v232 addBreadcrumb:{@"%@ Finished tagging %lu visible reject faces", @"[GallerySync_VerifiedPerson]", objc_msgSend(v230, "count")}];

        v233 = *(a1 + 48);
        v555 = 0;
        LOBYTE(v232) = [v233 mutateAndReturnError:&v555 handler:v231];
        v234 = v555;
        if ((v232 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
        {
          v235 = &_os_log_default;
          v236 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v236))
          {
            *buf = 138412546;
            *&buf[4] = @"[GallerySync_VerifiedPerson]";
            *&buf[12] = 2112;
            *&buf[14] = v234;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v236, "%@ Failed to tag reject faces in Gallery - %@", buf, 0x16u);
          }
        }

        v237 = VCPSignPostLog();
        v238 = v237;
        if (v226 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v237))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v238, OS_SIGNPOST_INTERVAL_END, v226, "GallerySync_tagVisibleRejectFaces", "", buf, 2u);
        }

        if (v224)
        {
          mach_absolute_time();
          VCPPerformance_LogMeasurement();
        }

        objc_autoreleasePoolPop(v223);
      }

      v239 = *(a1 + 56);
      if (v239 && (*(v239 + 16))())
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v240 = &_os_log_default;
          v241 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v241))
          {
            *buf = 138412290;
            *&buf[4] = @"[GallerySync_VerifiedPerson]";
            _os_log_impl(&_mh_execute_header, &_os_log_default, v241, "%@ Cancelled", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v478);
LABEL_594:

        goto LABEL_595;
      }

      objc_autoreleasePoolPop(v478);
    }

    if (v492)
    {
      v242 = mach_absolute_time();
      v243 = VCPSignPostLog();
      v244 = os_signpost_id_generate(v243);

      v245 = VCPSignPostLog();
      v246 = v245;
      if (v244 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v245))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v246, OS_SIGNPOST_INTERVAL_BEGIN, v244, "GallerySync_loadFacecropFaceObservationIDFromPhotos", "", buf, 2u);
      }

      v247 = [*(a1 + 32) mad_allFacesFetchOptions];
      v248 = [NSPredicate predicateWithFormat:@"vuObservationID != 0 && (trainingType = %d || trainingType = %d || trainingType = %d)", 1, 2, 5];
      [v247 setInternalPredicate:v248];

      v249 = +[MADStateHandler sharedStateHandler];
      [v249 addBreadcrumb:{@"[GallerySync] Fetching facecrops with fetchOptions: %@", v247}];

      v250 = [PHFace fetchFacesWithOptions:v247];
      v251 = +[MADStateHandler sharedStateHandler];
      [v251 addBreadcrumb:{@"[GallerySync] Fetched %lu facecrops", objc_msgSend(v250, "count")}];

      v523 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v250 count]);
      if ([v250 count])
      {
        v252 = 0;
        do
        {
          v253 = objc_autoreleasePoolPush();
          v254 = [v250 objectAtIndexedSubscript:v252];
          v255 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v254 vuObservationID]);
          [v523 addObject:v255];

          objc_autoreleasePoolPop(v253);
          ++v252;
        }

        while (v252 < [v250 count]);
      }

      v256 = VCPSignPostLog();
      v257 = v256;
      if (v244 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v256))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v257, OS_SIGNPOST_INTERVAL_END, v244, "GallerySync_loadFacecropFaceObservationIDFromPhotos", "", buf, 2u);
      }

      if (v242)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }
    }

    else
    {
      v523 = 0;
    }

    v470 = [*(a1 + 32) librarySpecificFetchOptions];
    if (v492)
    {
      v519 = [PHFaceCrop fetchFaceCropsWithOptions:v470];
      v258 = [v519 count];
    }

    else if ([v486 count])
    {
      v259 = [v486 allObjects];
      v519 = [PHFaceCrop fetchFaceCropsWithLocalIdentifiers:v259 options:v470];

      v258 = [v519 count];
    }

    else
    {
      v519 = 0;
      v258 = [0 count];
    }

    if (v258)
    {
      v454 = objc_autoreleasePoolPush();
      v260 = +[MADStateHandler sharedStateHandler];
      [v260 addBreadcrumb:{@"%@ Checking %lu facecrops", @"[GallerySync_FaceCrop]", objc_msgSend(v519, "count")}];

      v459 = mach_absolute_time();
      v261 = VCPSignPostLog();
      v457 = os_signpost_id_generate(v261);

      v262 = VCPSignPostLog();
      v263 = v262;
      if (v457 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v262))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v263, OS_SIGNPOST_INTERVAL_BEGIN, v457, "GallerySync_loadFaceCrops", "", buf, 2u);
      }

      v467 = +[NSMutableDictionary dictionary];
      v465 = +[NSMutableDictionary dictionary];
      v463 = +[NSMutableDictionary dictionary];
      v455 = +[NSMutableDictionary dictionary];
      v498 = [*(a1 + 32) mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:&off_100296560];
      if ([v519 count])
      {
        v264 = 0;
        v481 = VCPLogToOSLogType[3];
        v507 = VCPLogToOSLogType[7];
        v461 = VCPLogToOSLogType[6];
        do
        {
          contextc = objc_autoreleasePoolPush();
          v265 = *(a1 + 56);
          if (v265 && (*(v265 + 16))())
          {
            if (MediaAnalysisLogLevel() >= 6)
            {
              v373 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v461))
              {
                *buf = 138412290;
                *&buf[4] = @"[GallerySync_FaceCrop]";
                _os_log_impl(&_mh_execute_header, &_os_log_default, v461, "%@ Cancelled", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(contextc);
            break;
          }

          v533 = [v519 objectAtIndexedSubscript:v264];
          v266 = [PHPerson fetchPersonForFaceCrop:v533 options:v498];
          typec = [v266 firstObject];

          if (typec)
          {
            if (![typec hidden])
            {
              v267 = [PHFace fetchFacesForFaceCrop:v533 options:v503];
              v273 = [v267 firstObject];
              v274 = v273;
              if (v273)
              {
                if ([v273 vuObservationID])
                {
                  v275 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v274 vuObservationID]);
                  [v523 removeObject:v275];
                }

                if ([v267 count] >= 2)
                {
                  if (MediaAnalysisLogLevel() >= 3)
                  {
                    v276 = &_os_log_default;
                    if (os_log_type_enabled(&_os_log_default, v481))
                    {
                      v277 = [v533 localIdentifier];
                      *buf = 138412546;
                      *&buf[4] = @"[GallerySync_FaceCrop]";
                      *&buf[12] = 2112;
                      *&buf[14] = v277;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v481, "%@ Fetched multiple faces for faceCrop %@; prefer the first one with vuObservationID", buf, 0x16u);
                    }
                  }

                  if ([v267 count])
                  {
                    v278 = 0;
                    do
                    {
                      v279 = objc_autoreleasePoolPush();
                      v280 = [v267 objectAtIndexedSubscript:v278];
                      if (![v274 vuObservationID] && objc_msgSend(v280, "vuObservationID"))
                      {
                        v281 = v280;

                        v274 = v281;
                      }

                      v282 = [v274 localIdentifier];
                      v283 = [v280 localIdentifier];
                      v284 = [v282 isEqualToString:v283];

                      if (MediaAnalysisLogLevel() >= 7)
                      {
                        v285 = &_os_log_default;
                        if (os_log_type_enabled(&_os_log_default, v507))
                        {
                          v286 = [v280 localIdentifier];
                          v287 = [v280 vuObservationID];
                          v288 = [v280 trainingType];
                          *buf = 138413314;
                          v289 = @"ignored";
                          if (v284)
                          {
                            v289 = @"preferred";
                          }

                          *&buf[4] = @"[GallerySync_FaceCrop]";
                          *&buf[12] = 2112;
                          *&buf[14] = v286;
                          *&buf[22] = 2048;
                          *&buf[24] = v287;
                          *&buf[32] = 1024;
                          *&buf[34] = v288;
                          *&buf[38] = 2112;
                          *&buf[40] = v289;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, v507, "%@ --> multiple face %@ (%ld)(trainingType:%d) - %@", buf, 0x30u);
                        }
                      }

                      if ([v280 vuObservationID])
                      {
                        v290 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v280 vuObservationID]);
                        [v523 removeObject:v290];
                      }

                      objc_autoreleasePoolPop(v279);
                      ++v278;
                    }

                    while (v278 < [v267 count]);
                  }
                }

                v472 = [v274 vuObservationID];
                if (v472)
                {
                  v511 = [PHPerson fetchPersonForFaceCrop:v533 options:v498];
                  if ([v511 count])
                  {
                    v491 = [v511 firstObject];
                    if ([v511 count] >= 2)
                    {
                      if (MediaAnalysisLogLevel() >= 3)
                      {
                        v291 = &_os_log_default;
                        if (os_log_type_enabled(&_os_log_default, v481))
                        {
                          v292 = [v533 localIdentifier];
                          *buf = 138412546;
                          *&buf[4] = @"[GallerySync_FaceCrop]";
                          *&buf[12] = 2112;
                          *&buf[14] = v292;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, v481, "%@ Fetched multiple people for faceCrop %@; prefer the first one", buf, 0x16u);
                        }
                      }

                      if ([v511 count])
                      {
                        v293 = 0;
                        do
                        {
                          v294 = objc_autoreleasePoolPush();
                          v295 = [v491 localIdentifier];
                          v296 = [v511 objectAtIndexedSubscript:v293];
                          v297 = [v296 localIdentifier];
                          v298 = [v295 isEqualToString:v297];

                          if (MediaAnalysisLogLevel() >= 7)
                          {
                            v299 = &_os_log_default;
                            if (os_log_type_enabled(&_os_log_default, v507))
                            {
                              v300 = [v511 objectAtIndexedSubscript:v293];
                              v301 = [v300 localIdentifier];
                              v302 = [v511 objectAtIndexedSubscript:v293];
                              v303 = [v302 mdID];
                              v304 = v303;
                              *buf = 138413058;
                              v305 = @"ignored";
                              if (v298)
                              {
                                v305 = @"preferred";
                              }

                              *&buf[4] = @"[GallerySync_FaceCrop]";
                              *&buf[12] = 2112;
                              *&buf[14] = v301;
                              *&buf[22] = 2112;
                              *&buf[24] = v303;
                              *&buf[32] = 2112;
                              *&buf[34] = v305;
                              _os_log_impl(&_mh_execute_header, &_os_log_default, v507, "%@ --> person %@ (%@) - %@", buf, 0x2Au);
                            }
                          }

                          objc_autoreleasePoolPop(v294);
                          ++v293;
                        }

                        while (v293 < [v511 count]);
                      }
                    }

                    if ((v492 & 1) == 0)
                    {
                      v306 = [v491 localIdentifier];
                      v307 = [v487 containsObject:v306];

                      if ((v307 & 1) == 0)
                      {
                        if (MediaAnalysisLogLevel() >= 7)
                        {
                          v337 = &_os_log_default;
                          if (os_log_type_enabled(&_os_log_default, v507))
                          {
                            v338 = [v533 localIdentifier];
                            *buf = 138412546;
                            *&buf[4] = @"[GallerySync_FaceCrop]";
                            *&buf[12] = 2112;
                            *&buf[14] = v338;
                            _os_log_impl(&_mh_execute_header, &_os_log_default, v507, "%@ Ignoring unchanged person %@ during incremental sync", buf, 0x16u);
                          }
                        }

                        goto LABEL_489;
                      }
                    }

                    if ([v491 type] == -1 && objc_msgSend(v491, "verifiedType") == 2)
                    {
                      if (MediaAnalysisLogLevel() >= 6)
                      {
                        v308 = &_os_log_default;
                        if (os_log_type_enabled(&_os_log_default, v461))
                        {
                          v309 = [v491 localIdentifier];
                          v310 = [v491 mdID];
                          v311 = [v533 localIdentifier];
                          v312 = [v274 localIdentifier];
                          *buf = 138413570;
                          *&buf[4] = @"[GallerySync_FaceCrop]";
                          *&buf[12] = 2112;
                          *&buf[14] = v309;
                          *&buf[22] = 2112;
                          *&buf[24] = v310;
                          *&buf[32] = 2112;
                          *&buf[34] = v311;
                          *&buf[42] = 2112;
                          *&buf[44] = v312;
                          v584 = 2048;
                          v585 = v472;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, v461, "%@ Hidden Graph-Verified person %@-%@ facecrop %@ face %@-%ld", buf, 0x3Eu);
                        }
                      }

                      v313 = [NSNumber numberWithInteger:v472];
                      [v455 setObject:v274 forKeyedSubscript:v313];
                    }

                    v314 = [v274 trainingType];
                    v315 = v314;
                    if (v314 == 5)
                    {
LABEL_418:
                      v316 = [v491 localIdentifier];
                      v317 = [v274 personLocalIdentifier];
                      v318 = [v316 isEqualToString:v317];

                      if ((v318 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
                      {
                        v319 = &_os_log_default;
                        if (os_log_type_enabled(&_os_log_default, v481))
                        {
                          v320 = [v533 localIdentifier];
                          v321 = [v491 localIdentifier];
                          v322 = [v491 mdID];
                          v323 = [v274 localIdentifier];
                          v324 = [v274 personLocalIdentifier];
                          v325 = [v491 localIdentifier];
                          *buf = 138414082;
                          *&buf[4] = @"[GallerySync_FaceCrop]";
                          *&buf[12] = 2112;
                          *&buf[14] = v320;
                          *&buf[22] = 2112;
                          *&buf[24] = v321;
                          *&buf[32] = 2112;
                          *&buf[34] = v322;
                          *&buf[42] = 2112;
                          *&buf[44] = v323;
                          v584 = 2048;
                          v585 = v472;
                          v586 = 2112;
                          v587 = v324;
                          v588 = 2112;
                          v589 = v325;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, v481, "%@ Mismatch confirmed faceCrop(%@).person (%@-%@) vs. faceCropFace(%@-%ld).person (%@); tag with faceCrop.person %@", buf, 0x52u);
                        }
                      }

                      v326 = [v491 localIdentifier];
                      v327 = [PHObject uuidFromLocalIdentifier:v326];

                      v328 = [[NSUUID alloc] initWithUUIDString:v327];
                      if (v328)
                      {
                        v329 = [NSNumber numberWithInteger:v472];
                        if (v315 == 1)
                        {
                          v330 = v467;
                        }

                        else
                        {
                          v330 = v465;
                        }

                        [v330 setObject:v328 forKeyedSubscript:v329];
                      }

                      else if (MediaAnalysisLogLevel() >= 3)
                      {
                        v365 = &_os_log_default;
                        if (os_log_type_enabled(&_os_log_default, v481))
                        {
                          v366 = [v491 localIdentifier];
                          v367 = [v274 localIdentifier];
                          *buf = 138412802;
                          *&buf[4] = @"[GallerySync_FaceCrop]";
                          *&buf[12] = 2112;
                          *&buf[14] = v366;
                          *&buf[22] = 2112;
                          *&buf[24] = v367;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, v481, "%@ Invalid UUID for confirmed person %@ for training face %@", buf, 0x20u);
                        }
                      }

                      goto LABEL_483;
                    }

                    if (v314 != 2)
                    {
                      if (v314 == 1)
                      {
                        goto LABEL_418;
                      }

                      if (MediaAnalysisLogLevel() >= 6)
                      {
                        v327 = &_os_log_default;
                        v363 = &_os_log_default;
                        if (os_log_type_enabled(&_os_log_default, v461))
                        {
                          v364 = [v274 localIdentifier];
                          *buf = 138413058;
                          *&buf[4] = @"[GallerySync_FaceCrop]";
                          *&buf[12] = 1024;
                          *&buf[14] = v315;
                          *&buf[18] = 2112;
                          *&buf[20] = v364;
                          *&buf[28] = 2048;
                          *&buf[30] = v472;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, v461, "%@ Ignored face training type %d for training face %@ (ObservationID %ld)", buf, 0x26u);
                        }

LABEL_483:
                      }

LABEL_489:

                      objc_autoreleasePoolPop(contextc);
                      goto LABEL_447;
                    }

                    v339 = [PHPerson fetchRejectedPersonsForFace:v274 options:v498];
                    v453 = [v339 firstObject];
                    if (!v453)
                    {
                      if (MediaAnalysisLogLevel() >= 3)
                      {
                        v368 = &_os_log_default;
                        if (os_log_type_enabled(&_os_log_default, v481))
                        {
                          v369 = [v274 localIdentifier];
                          *buf = 138412802;
                          *&buf[4] = @"[GallerySync_FaceCrop]";
                          *&buf[12] = 2112;
                          *&buf[14] = v369;
                          *&buf[22] = 2048;
                          *&buf[24] = v472;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, v481, "%@ Failed to find rejected person for training face %@-%lu", buf, 0x20u);
                        }
                      }

                      goto LABEL_489;
                    }

                    if ([v339 count] >= 2)
                    {
                      if (MediaAnalysisLogLevel() >= 3)
                      {
                        v340 = &_os_log_default;
                        if (os_log_type_enabled(&_os_log_default, v481))
                        {
                          v341 = [v274 localIdentifier];
                          *buf = 138412802;
                          *&buf[4] = @"[GallerySync_FaceCrop]";
                          *&buf[12] = 2112;
                          *&buf[14] = v341;
                          *&buf[22] = 2048;
                          *&buf[24] = v472;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, v481, "%@ Found multiple rejected people for training face %@-%lu; tag with faceCrop.rejectPerson", buf, 0x20u);
                        }
                      }

                      if ([v339 count])
                      {
                        v342 = 0;
                        do
                        {
                          v343 = objc_autoreleasePoolPush();
                          if (MediaAnalysisLogLevel() >= 7)
                          {
                            v344 = &_os_log_default;
                            if (os_log_type_enabled(&_os_log_default, v507))
                            {
                              v345 = [v339 objectAtIndexedSubscript:v342];
                              v346 = [v345 localIdentifier];
                              v347 = [v339 objectAtIndexedSubscript:v342];
                              v348 = [v347 mdID];
                              *buf = 138412802;
                              *&buf[4] = @"[GallerySync_FaceCrop]";
                              *&buf[12] = 2112;
                              *&buf[14] = v346;
                              *&buf[22] = 2112;
                              *&buf[24] = v348;
                              _os_log_impl(&_mh_execute_header, &_os_log_default, v507, "%@ --> reject person %@ (%@)", buf, 0x20u);
                            }
                          }

                          objc_autoreleasePoolPop(v343);
                          ++v342;
                        }

                        while (v342 < [v339 count]);
                      }
                    }

                    v349 = [v491 localIdentifier];
                    v350 = [v453 localIdentifier];
                    v351 = [v349 isEqualToString:v350];

                    if ((v351 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
                    {
                      v352 = &_os_log_default;
                      if (os_log_type_enabled(&_os_log_default, v481))
                      {
                        v353 = [v533 localIdentifier];
                        v354 = [v491 localIdentifier];
                        v355 = [v491 mdID];
                        v356 = [v274 localIdentifier];
                        v357 = [v453 localIdentifier];
                        v358 = [v453 mdID];
                        *buf = 138414082;
                        *&buf[4] = @"[GallerySync_FaceCrop]";
                        *&buf[12] = 2112;
                        *&buf[14] = v353;
                        *&buf[22] = 2112;
                        *&buf[24] = v354;
                        *&buf[32] = 2112;
                        *&buf[34] = v355;
                        *&buf[42] = 2112;
                        *&buf[44] = v356;
                        v584 = 2048;
                        v585 = v472;
                        v586 = 2112;
                        v587 = v357;
                        v588 = 2112;
                        v589 = v358;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v481, "%@ Mismatch rejected faceCrop(%@).rejectPerson (%@-%@) vs. faceCropFace(%@-%ld).rejectPerson (%@-%@); correct with faceCrop.rejectPerson", buf, 0x52u);
                      }
                    }

                    v359 = [v491 localIdentifier];
                    v360 = [PHObject uuidFromLocalIdentifier:v359];

                    v361 = [[NSUUID alloc] initWithUUIDString:v360];
                    if (v361)
                    {
                      v362 = [NSNumber numberWithInteger:v472];
                      [v463 setObject:v361 forKeyedSubscript:v362];
                      goto LABEL_473;
                    }

                    if (MediaAnalysisLogLevel() >= 3)
                    {
                      v362 = &_os_log_default;
                      v370 = &_os_log_default;
                      if (os_log_type_enabled(&_os_log_default, v481))
                      {
                        v371 = [v491 localIdentifier];
                        v372 = [v274 localIdentifier];
                        *buf = 138413058;
                        *&buf[4] = @"[GallerySync_FaceCrop]";
                        *&buf[12] = 2112;
                        *&buf[14] = v371;
                        *&buf[22] = 2112;
                        *&buf[24] = v372;
                        *&buf[32] = 2048;
                        *&buf[34] = v472;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v481, "%@ Invalid UUID for rejected person %@ for training face %@-%ld", buf, 0x2Au);

                        v362 = &_os_log_default;
                      }

LABEL_473:
                    }

                    goto LABEL_489;
                  }

                  if (MediaAnalysisLogLevel() >= 3)
                  {
                    v335 = &_os_log_default;
                    if (os_log_type_enabled(&_os_log_default, v481))
                    {
                      v336 = [v533 localIdentifier];
                      *buf = 138412546;
                      *&buf[4] = @"[GallerySync_FaceCrop]";
                      *&buf[12] = 2112;
                      *&buf[14] = v336;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v481, "%@ Failed to find person for PHFaceCrop %@; ignore", buf, 0x16u);
                    }
                  }

                  goto LABEL_445;
                }

                if (MediaAnalysisLogLevel() >= 3)
                {
                  v333 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, v481))
                  {
                    v334 = [v274 localIdentifier];
                    *buf = 138412546;
                    *&buf[4] = @"[GallerySync_FaceCrop]";
                    *&buf[12] = 2112;
                    *&buf[14] = v334;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v481, "%@ FaceCrop face %@ does not have valid ObservationID; ignore", buf, 0x16u);
                  }

                  goto LABEL_443;
                }
              }

              else if (MediaAnalysisLogLevel() < 3)
              {
                v274 = 0;
              }

              else
              {
                v331 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, v481))
                {
                  v332 = [v533 localIdentifier];
                  *buf = 138412546;
                  *&buf[4] = @"[GallerySync_FaceCrop]";
                  *&buf[12] = 2112;
                  *&buf[14] = v332;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v481, "%@ Failed to fetch face for faceCrop %@; ignore", buf, 0x16u);
                }

                v274 = 0;
LABEL_443:
              }

LABEL_445:
              goto LABEL_446;
            }

            if (MediaAnalysisLogLevel() >= 6)
            {
              v267 = &_os_log_default;
              v268 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v461))
              {
                v269 = [v533 localIdentifier];
                v270 = [typec uuid];
                *buf = 138412802;
                *&buf[4] = @"[GallerySync_FaceCrop]";
                *&buf[12] = 2112;
                *&buf[14] = v269;
                *&buf[22] = 2112;
                *&buf[24] = v270;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v461, "%@[%@] Facecrop for hidden person %@; skip", buf, 0x20u);
              }

              goto LABEL_445;
            }
          }

          else if (MediaAnalysisLogLevel() >= 3)
          {
            v267 = &_os_log_default;
            v271 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, v481))
            {
              v272 = [v533 localIdentifier];
              *buf = 138412546;
              *&buf[4] = @"[GallerySync_FaceCrop]";
              *&buf[12] = 2112;
              *&buf[14] = v272;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v481, "%@[%@] Facecrop for non-verified person; skip", buf, 0x16u);
            }

            goto LABEL_445;
          }

LABEL_446:

          objc_autoreleasePoolPop(contextc);
LABEL_447:
          ++v264;
        }

        while (v264 < [v519 count]);
      }

      v374 = [v467 count];
      v375 = [v465 count];
      v376 = [v463 count];
      if (MediaAnalysisLogLevel() >= 7)
      {
        v377 = &_os_log_default;
        v378 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v378))
        {
          v379 = [v467 count];
          *buf = 138412546;
          *&buf[4] = @"[GallerySync_FaceCrop]";
          *&buf[12] = 2048;
          *&buf[14] = v379;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v378, "%@ %lu user verified person tags", buf, 0x16u);
        }
      }

      if (MediaAnalysisLogLevel() >= 7)
      {
        v380 = &_os_log_default;
        v381 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v381))
        {
          v382 = [v465 count];
          *buf = 138412546;
          *&buf[4] = @"[GallerySync_FaceCrop]";
          *&buf[12] = 2048;
          *&buf[14] = v382;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v381, "%@ %lu graph verified person tags", buf, 0x16u);
        }
      }

      if (MediaAnalysisLogLevel() >= 7)
      {
        v383 = &_os_log_default;
        v384 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v384))
        {
          v385 = [v463 count];
          *buf = 138412546;
          *&buf[4] = @"[GallerySync_FaceCrop]";
          *&buf[12] = 2048;
          *&buf[14] = v385;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v384, "%@ %lu rejected person tags", buf, 0x16u);
        }
      }

      v386 = +[MADStateHandler sharedStateHandler];
      [v386 addBreadcrumb:{@"%@ Found %lu user verified tags, %lu graph verified tags, %lu rejected tags", @"[GallerySync_FaceCrop]", objc_msgSend(v467, "count"), objc_msgSend(v465, "count"), objc_msgSend(v463, "count")}];

      v387 = VCPSignPostLog();
      v388 = v387;
      if (v457 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v387))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v388, OS_SIGNPOST_INTERVAL_END, v457, "GallerySync_loadFaceCrops", "", buf, 2u);
      }

      if (v459)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      v389 = mach_absolute_time();
      v390 = VCPSignPostLog();
      v391 = os_signpost_id_generate(v390);

      v392 = VCPSignPostLog();
      v393 = v392;
      if (v391 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v392))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v393, OS_SIGNPOST_INTERVAL_BEGIN, v391, "GallerySync_tagFaceCrops", "", buf, 2u);
      }

      v394 = +[MADStateHandler sharedStateHandler];
      v395 = &v374[v375 + v376];
      [v394 addBreadcrumb:{@"%@ Tagging %lu facecrops", @"[GallerySync_FaceCrop]", v395}];

      v544[0] = _NSConcreteStackBlock;
      v544[1] = 3221225472;
      v544[2] = sub_100197070;
      v544[3] = &unk_100288348;
      v396 = v455;
      v545 = v396;
      v553 = *(a1 + 56);
      v546 = @"[GallerySync_FaceCrop]";
      v547 = *(a1 + 32);
      v397 = v467;
      v548 = v397;
      v398 = v465;
      v549 = v398;
      v399 = v463;
      v550 = v399;
      v551 = v519;
      v554 = v395;
      v552 = v523;
      v400 = objc_retainBlock(v544);
      v401 = +[MADStateHandler sharedStateHandler];
      [v401 addBreadcrumb:{@"%@ Finished tagging %lu facecrops", @"[GallerySync_FaceCrop]", v395}];

      v402 = *(a1 + 48);
      v543 = 0;
      LOBYTE(v395) = [v402 mutateAndReturnError:&v543 handler:v400];
      v403 = v543;
      if ((v395 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
      {
        v404 = &_os_log_default;
        v405 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v405))
        {
          *buf = 138412546;
          *&buf[4] = @"[GallerySync_FaceCrop]";
          *&buf[12] = 2112;
          *&buf[14] = v403;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v405, "%@ Failed to tag training faces in Gallery - %@", buf, 0x16u);
        }
      }

      v406 = VCPSignPostLog();
      v407 = v406;
      if (v391 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v406))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v407, OS_SIGNPOST_INTERVAL_END, v391, "GallerySync_tagFaceCrops", "", buf, 2u);
      }

      if (v389)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      objc_autoreleasePoolPop(v454);
    }

    if (v492)
    {
      if (v484)
      {
        v408 = +[NSDate date];
        if (+[MADManagedChangeToken isMACDPersistEnabled])
        {
          v409 = *(a1 + 32);
          v540[0] = _NSConcreteStackBlock;
          v540[1] = 3221225472;
          v540[2] = sub_1001989D4;
          v540[3] = &unk_100282ED8;
          v541 = v484;
          v542 = v408;
          [v409 mad_performAnalysisDataStoreChanges:v540 error:0];
        }

        else
        {
          [v493 setChangeToken:v484 forTaskID:3 andChangeTokenType:3 date:v408];
          [v493 commit];
        }

        if (MediaAnalysisLogLevel() >= 6)
        {
          v416 = &_os_log_default;
          v417 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v417))
          {
            *buf = 138412290;
            *&buf[4] = v528;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v417, "%@ Set PHPersistentChangeToken for Gallery sync", buf, 0xCu);
          }
        }

        goto LABEL_554;
      }

      if (MediaAnalysisLogLevel() < 5)
      {
        goto LABEL_555;
      }

      v408 = &_os_log_default;
      v411 = &_os_log_default;
      v412 = VCPLogToOSLogType[5];
      if (!os_log_type_enabled(&_os_log_default, v412))
      {
        goto LABEL_554;
      }

      *buf = 138412290;
      *&buf[4] = v528;
      v413 = "%@ Full-scan returned without change token; skip setting";
    }

    else if (v483)
    {
      if (+[MADManagedChangeToken isMACDPersistEnabled])
      {
        v410 = *(a1 + 32);
        v538[0] = _NSConcreteStackBlock;
        v538[1] = 3221225472;
        v538[2] = sub_1001989E8;
        v538[3] = &unk_100282F00;
        v539 = v483;
        [v410 mad_performAnalysisDataStoreChanges:v538 error:0];
      }

      else
      {
        [v493 updateChangeToken:v483 forTaskID:3 andChangeTokenType:3];
        [v493 commit];
      }

      if (MediaAnalysisLogLevel() < 6)
      {
LABEL_555:
        *(*(*(a1 + 64) + 8) + 24) = 1;
        *(*(a1 + 40) + 16) = 1;
        if ((+[MADManagedKeyValueStore isMACDReadEnabled]& 1) != 0)
        {
          v418 = [*(a1 + 32) mad_fetchRequest];
          v419 = [v418 dataStoreValueForKey:MADPersonProcessingStatusKey];
        }

        else
        {
          v419 = [v493 valueForKey:MADPersonProcessingStatusKey];
        }

        v420 = [*(a1 + 48) ready];
        if (v419)
        {
          v421 = 1;
        }

        else
        {
          v421 = v420;
        }

        if (v421)
        {
          if (MediaAnalysisLogLevel() < 7)
          {
            goto LABEL_586;
          }

          v422 = &_os_log_default;
          v423 = &_os_log_default;
          v424 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v424))
          {
            v425 = MADPersonProcessingStatusDescription();
            *buf = 138412546;
            *&buf[4] = v528;
            *&buf[12] = 2112;
            *&buf[14] = v425;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v424, "%@ Gallery is ready (Person processing state: %@); skip updating", buf, 0x16u);
          }

LABEL_585:

LABEL_586:
          [v488 stop];
          v447 = VCPSignPostLog();
          v448 = v447;
          if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v447))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v448, OS_SIGNPOST_INTERVAL_END, spid, "GallerySync_EndToEnd", "", buf, 2u);
          }

          if (v479)
          {
            mach_absolute_time();
            VCPPerformance_LogMeasurement();
          }

          v449 = +[VCPMADCoreAnalyticsManager sharedManager];
          v450 = _os_feature_enabled_impl();
          v451 = VCPAnalyticsEventPersonAnalysisRunSession;
          if (!v450)
          {
            v451 = VCPAnalyticsEvent7794FaceAnalysisRunSession;
          }

          v452 = *v451;
          [v449 accumulateInt64Value:1 forField:@"NumberOfFaceVUSyncEvents" andEvent:v452];
          [v488 elapsedTimeSeconds];
          [v449 accumulateDoubleValue:@"TimeAnalyzingInSeconds" forField:v452 andEvent:?];

          goto LABEL_594;
        }

        v426 = VCPSignPostLog();
        v427 = os_signpost_id_generate(v426);

        v428 = VCPSignPostLog();
        v429 = v428;
        if (v427 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v428))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v429, OS_SIGNPOST_INTERVAL_BEGIN, v427, "GallerySync_Update", "", buf, 2u);
        }

        v430 = +[MADStateHandler sharedStateHandler];
        [v430 addBreadcrumb:{@"%@ Updating VU Gallery", v528}];

        if (MediaAnalysisLogLevel() >= 6)
        {
          v431 = &_os_log_default;
          v432 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v432))
          {
            *buf = 138412290;
            *&buf[4] = v528;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v432, "%@ Start Gallery update (mode: fast)", buf, 0xCu);
          }
        }

        v433 = *(a1 + 48);
        v535[0] = _NSConcreteStackBlock;
        v535[1] = 3221225472;
        v535[2] = sub_1001989FC;
        v535[3] = &unk_100288370;
        v434 = v528;
        v536 = v434;
        v537 = *(a1 + 56);
        v534 = 0;
        v435 = [v433 updateForType:1 mode:1 progressHandler:v535 error:&v534];
        v422 = v534;
        v436 = +[MADStateHandler sharedStateHandler];
        [v436 addBreadcrumb:{@"%@ Finished updating VU Gallery", v434}];

        v437 = MediaAnalysisLogLevel();
        if (v435)
        {
          if (v437 < 7)
          {
            goto LABEL_581;
          }

          v438 = &_os_log_default;
          v439 = VCPLogToOSLogType[7];
          if (!os_log_type_enabled(&_os_log_default, v439))
          {
            goto LABEL_580;
          }

          *buf = 138412290;
          *&buf[4] = v434;
          v440 = "%@ Gallery updated!";
          v441 = v439;
          v442 = 12;
        }

        else
        {
          if (v437 < 3)
          {
            goto LABEL_581;
          }

          v443 = &_os_log_default;
          v444 = VCPLogToOSLogType[3];
          if (!os_log_type_enabled(&_os_log_default, v444))
          {
LABEL_580:

LABEL_581:
            v445 = VCPSignPostLog();
            v446 = v445;
            if (v427 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v445))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v446, OS_SIGNPOST_INTERVAL_END, v427, "GallerySync_Update", "", buf, 2u);
            }

            goto LABEL_585;
          }

          *buf = 138412546;
          *&buf[4] = v434;
          *&buf[12] = 2112;
          *&buf[14] = v422;
          v440 = "%@ Failed to update gallery - %@";
          v441 = v444;
          v442 = 22;
        }

        _os_log_impl(&_mh_execute_header, &_os_log_default, v441, v440, buf, v442);
        goto LABEL_580;
      }

      v408 = &_os_log_default;
      v415 = &_os_log_default;
      v412 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v412))
      {
LABEL_554:

        goto LABEL_555;
      }

      *buf = 138412290;
      *&buf[4] = v528;
      v413 = "%@ Updated PHPersistentChangeToken for Gallery sync";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 5)
      {
        goto LABEL_555;
      }

      v408 = &_os_log_default;
      v414 = &_os_log_default;
      v412 = VCPLogToOSLogType[5];
      if (!os_log_type_enabled(&_os_log_default, v412))
      {
        goto LABEL_554;
      }

      *buf = 138412290;
      *&buf[4] = v528;
      v413 = "%@ Incremental-scan returned without change token; skip updating";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v412, v413, buf, 0xCu);
    goto LABEL_554;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *buf = 138412290;
      *&buf[4] = v528;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "%@ Current session already synced; skip re-syncing", buf, 0xCu);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_598:
}

void sub_100196378(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x448], 8);
  _Block_object_dispose(&STACK[0x490], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100196440(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v36 = a4;
  v9 = a5;
  ++*(*(a1[8] + 8) + 24);
  v37 = v8;
  v38 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[GallerySync][md:%ld][%lu]", [v8 value], *(*(a1[8] + 8) + 24));
  if (MediaAnalysisLogLevel() >= 7)
  {
    v10 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 138412546;
      v46 = v38;
      v47 = 2048;
      v48 = [v9 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Checking entity with %lu face observations ... ", buf, 0x16u);
    }
  }

  if ([v9 count])
  {
    v11 = 0;
    type = VCPLogToOSLogType[7];
    v39 = a1;
    v40 = v9;
    while (1)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = a1[7];
      if (v13)
      {
        if ((*(v13 + 16))())
        {
          break;
        }
      }

      v14 = [v9 count];
      if (&v14[-v11] >= 0x3E8)
      {
        v15 = 1000;
      }

      else
      {
        v15 = &v14[-v11];
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138413058;
        v46 = v38;
        v47 = 2048;
        v48 = v15;
        v49 = 2048;
        v50 = v11;
        v51 = 2048;
        v52 = v15 + v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Checking Photos with %lu faceObservationIDs[%lu:%lu]", buf, 0x2Au);
      }

      context = v12;
      v16 = [v9 subarrayWithRange:{v11, v15}];
      v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v16 count]);
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_1001969A8;
      v43[3] = &unk_100288230;
      v18 = v17;
      v44 = v18;
      [v16 enumerateObjectsUsingBlock:v43];
      v19 = [PHFace fetchFacesWithVuObservationIDs:v18 options:a1[5]];
      v20 = [v19 count];
      if (v20 != [v16 count] && MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        v21 = [v19 count];
        v22 = [v16 count];
        *buf = 138412802;
        v46 = v38;
        v47 = 2048;
        v48 = v21;
        v49 = 2048;
        v50 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Found %lu out of %lu faces from Photos", buf, 0x20u);
      }

      v23 = +[NSMutableSet set];
      if ([v19 count])
      {
        v24 = 0;
        do
        {
          v25 = [VUWGalleryObservationIdentifier alloc];
          v26 = [v19 objectAtIndexedSubscript:v24];
          v27 = [v25 initWithValue:{objc_msgSend(v26, "vuObservationID")}];

          if (v27)
          {
            [v23 addObject:v27];
          }

          ++v24;
        }

        while (v24 < [v19 count]);
      }

      v28 = [NSMutableSet setWithArray:v16];
      [v28 minusSet:v23];
      a1 = v39;
      [*(*(v39[9] + 8) + 40) unionSet:v28];
      [v39[6] minusSet:v23];
      v11 += v15;

      objc_autoreleasePoolPop(context);
      v9 = v40;
      if (v11 >= [v40 count])
      {
        goto LABEL_24;
      }
    }

    v32 = v36;
    v31 = v37;
    if (MediaAnalysisLogLevel() >= 6)
    {
      v33 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v33))
      {
        v34 = a1[4];
        *buf = 138412290;
        v46 = v34;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "%@ Cancelled", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v12);
    v30 = 0;
  }

  else
  {
LABEL_24:
    v29 = a1[7];
    if (v29)
    {
      v30 = (*(v29 + 16))() ^ 1;
    }

    else
    {
      v30 = 1;
    }

    v32 = v36;
    v31 = v37;
  }

  return v30;
}

void sub_1001969A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 value]);
  [v2 addObject:v3];
}

void sub_100196A14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 value]);
  [v2 addObject:v3];
}

uint64_t sub_100196A98(uint64_t a1, void *a2)
{
  v51 = a2;
  v47 = a1;
  v3 = [*(a1 + 32) allKeys];
  if (![v3 count])
  {
    v50 = 0;
    goto LABEL_41;
  }

  v50 = 0;
  v5 = 0;
  v6 = VCPLogToOSLogType[7];
  v7 = VCPLogToOSLogType[3];
  *&v4 = 138412546;
  v41 = v4;
  v42 = v3;
  type = v6;
  v48 = v7;
LABEL_3:
  v8 = objc_autoreleasePoolPush();
  v9 = *(v47 + 48);
  if (!v9 || !(*(v9 + 16))())
  {
    v10 = [v3 objectAtIndexedSubscript:{v5, v41}];
    v11 = [[VUWGalleryObservationIdentifier alloc] initWithValue:{objc_msgSend(v10, "integerValue")}];
    v12 = v11;
    context = v8;
    v45 = v5;
    if (*(v47 + 64) != 1)
    {
      v14 = 0;
LABEL_17:
      v43 = v10;
      v22 = [*(v47 + 32) objectForKeyedSubscript:v10];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v22;
      v23 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
      if (!v23)
      {
        goto LABEL_34;
      }

      v24 = v23;
      v25 = *v54;
      while (1)
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v54 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v53 + 1) + 8 * i);
          v28 = objc_autoreleasePoolPush();
          if (v12)
          {
            v52 = v14;
            v29 = [v51 tag:v12 with:v27 type:1 error:&v52];
            v30 = v52;

            if (v29)
            {
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
              {
                v31 = *(v47 + 40);
                v32 = [v12 value];
                *buf = 138412802;
                v59 = v31;
                v60 = 2048;
                v61 = v32;
                v62 = 2112;
                v63 = v27;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Tagged rejecting face %ld to person %@", buf, 0x20u);
              }

              ++v50;
              v14 = v30;
              goto LABEL_32;
            }

            v14 = v30;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v48))
          {
            v33 = *(v47 + 40);
            v34 = [v12 value];
            *buf = 138413058;
            v59 = v33;
            v60 = 2048;
            v61 = v34;
            v62 = 2112;
            v63 = v27;
            v64 = 2112;
            v65 = v14;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v48, "%@ Failed to tag rejecting face %ld to person %@ - %@", buf, 0x2Au);
          }

LABEL_32:
          objc_autoreleasePoolPop(v28);
        }

        v24 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
        if (!v24)
        {
LABEL_34:

          objc_autoreleasePoolPop(context);
          v5 = v45 + 1;
          v3 = v42;
          v6 = type;
          v7 = v48;
          if (v45 + 1 >= [v42 count])
          {
            goto LABEL_41;
          }

          goto LABEL_3;
        }
      }
    }

    if (v11)
    {
      v57 = 0;
      v13 = [v51 untag:v11 error:&v57];
      v14 = v57;
      if (v13)
      {
        if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(&_os_log_default, v6))
        {
          goto LABEL_17;
        }

        v15 = *(v47 + 40);
        v16 = [v12 value];
        *buf = v41;
        v59 = v15;
        v60 = 2048;
        v61 = v16;
        v17 = v6;
        v18 = "%@ Untagged rejecting face %ld";
        v19 = 22;
        goto LABEL_16;
      }
    }

    else
    {
      v14 = 0;
    }

    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(&_os_log_default, v7))
    {
      goto LABEL_17;
    }

    v20 = *(v47 + 40);
    v21 = [v12 value];
    *buf = 138412802;
    v59 = v20;
    v60 = 2048;
    v61 = v21;
    v62 = 2112;
    v63 = v14;
    v17 = v7;
    v18 = "%@ Failed to untag rejecting face %ld - %@";
    v19 = 32;
LABEL_16:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v17, v18, buf, v19);
    goto LABEL_17;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v35 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v35))
    {
      v36 = *(v47 + 40);
      *buf = 138412290;
      v59 = v36;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "%@ Cancelled", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v8);
LABEL_41:
  if (MediaAnalysisLogLevel() >= 6)
  {
    v37 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v37))
    {
      v38 = *(v47 + 40);
      v39 = *(v47 + 56);
      *buf = 138412802;
      v59 = v38;
      v60 = 2048;
      v61 = v50;
      v62 = 2048;
      v63 = v39;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "%@ Tagged %lu (out of %lu) reject observation(s) in Gallery", buf, 0x20u);
    }
  }

  return 0;
}

uint64_t sub_100197070(uint64_t a1, void *a2)
{
  v3 = a2;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  if ([*(a1 + 32) count])
  {
    v4 = objc_autoreleasePoolPush();
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_1001977C4;
    v63[3] = &unk_1002882D0;
    v64 = *(a1 + 32);
    v67 = *(a1 + 96);
    v65 = *(a1 + 40);
    v66 = v3;
    v68 = &v69;
    v5 = objc_retainBlock(v63);
    v6 = *(a1 + 48);
    v62 = 0;
    v7 = [v6 performChangesAndWait:v5 error:&v62];
    v8 = v62;
    if (v7)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v9 = &_os_log_default;
        v10 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v10))
        {
          v11 = v70[3];
          v12 = *(a1 + 40);
          v13 = [*(a1 + 32) count];
          *buf = 138412802;
          *&buf[4] = v12;
          *&buf[12] = 2048;
          *&buf[14] = v11;
          *&buf[22] = 2048;
          v84 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Remove %lu (out of %lu) observations for hidden Graph-Verified person", buf, 0x20u);
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v14 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = *(a1 + 40);
        *buf = 138412546;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Failed to remove observations for hidden Graph-Verified person - %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v4);
  }

  v16 = *(a1 + 56);
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100197C08;
  v57[3] = &unk_1002882F8;
  v60 = *(a1 + 96);
  v58 = *(a1 + 40);
  v17 = v3;
  v59 = v17;
  v61 = &v73;
  [v16 enumerateKeysAndObjectsUsingBlock:v57];
  v18 = *(a1 + 64);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100197F40;
  v52[3] = &unk_1002882F8;
  v55 = *(a1 + 96);
  v53 = *(a1 + 40);
  v19 = v17;
  v54 = v19;
  v56 = &v73;
  [v18 enumerateKeysAndObjectsUsingBlock:v52];
  v20 = *(a1 + 72);
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100198278;
  v47[3] = &unk_1002882F8;
  v50 = *(a1 + 96);
  v48 = *(a1 + 40);
  v21 = v19;
  v49 = v21;
  v51 = &v73;
  [v20 enumerateKeysAndObjectsUsingBlock:v47];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v22 = &_os_log_default;
    v23 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v23))
    {
      v24 = *(a1 + 40);
      v25 = v74[3];
      v26 = [*(a1 + 80) count];
      v27 = *(a1 + 104);
      *buf = 138413058;
      *&buf[4] = v24;
      *&buf[12] = 2048;
      *&buf[14] = v25;
      *&buf[22] = 2048;
      v84 = v26;
      v85 = 2048;
      v86 = v27;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Tagged %lu (out of %lu valid among %lu faceCrops) observations in Gallery", buf, 0x2Au);
    }
  }

  if ([*(a1 + 88) count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v84 = 0;
    if (MediaAnalysisLogLevel() >= 4)
    {
      v28 = &_os_log_default;
      v29 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v29))
      {
        v30 = *(a1 + 40);
        v31 = [*(a1 + 88) count];
        *v77 = 138412546;
        v78 = v30;
        v79 = 2048;
        v80 = v31;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "%@ Found %lu orphan faces without facecrop; untagging from VUGallery ...", v77, 0x16u);
      }
    }

    v39 = _NSConcreteStackBlock;
    v40 = 3221225472;
    v41 = sub_1001986EC;
    v42 = &unk_100288320;
    v32 = *(a1 + 88);
    v45 = *(a1 + 96);
    v43 = *(a1 + 40);
    v44 = v21;
    v46 = buf;
    [v32 enumerateObjectsUsingBlock:&v39];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v33 = &_os_log_default;
      v34 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v34))
      {
        v35 = *(a1 + 40);
        v36 = *(*&buf[8] + 24);
        v37 = [*(a1 + 88) count];
        *v77 = 138412802;
        v78 = v35;
        v79 = 2048;
        v80 = v36;
        v81 = 2048;
        v82 = v37;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "%@ Untagged %lu (out of %lu) orphan training faces in Gallery", v77, 0x20u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);

  return 0;
}

void sub_100197770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1001977C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001978A0;
  v9[3] = &unk_1002882A8;
  v3 = (a1 + 64);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = *v3;
  v10 = v7;
  v11 = v8;
  [v2 enumerateKeysAndObjectsUsingBlock:v9];
}

void sub_1001978A0(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1[6];
  if (!v9 || !(*(v9 + 16))())
  {
    v12 = [v7 integerValue];
    if (v12)
    {
      if (v8)
      {
        v13 = [[VUWGalleryObservationIdentifier alloc] initWithValue:v12];
        if (v13)
        {
          v14 = a1[5];
          v26 = 0;
          v15 = [v14 removeWithObservationIdentifier:v13 error:&v26];
          v16 = v26;
          if (v15)
          {
            if (MediaAnalysisLogLevel() >= 7)
            {
              v17 = VCPLogToOSLogType[7];
              if (os_log_type_enabled(&_os_log_default, v17))
              {
                v18 = a1[4];
                *buf = 138412546;
                v28 = v18;
                v29 = 2112;
                v30 = v13;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ Removing %@ ...", buf, 0x16u);
              }
            }

            v19 = [PHFaceChangeRequest changeRequestForFace:v8];
            [v19 setVuObservationID:-1];
            ++*(*(a1[7] + 8) + 24);

LABEL_26:
            goto LABEL_27;
          }
        }

        else
        {
          v16 = 0;
        }

        if (MediaAnalysisLogLevel() >= 3)
        {
          v24 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v24))
          {
            v25 = a1[4];
            *buf = 138412802;
            v28 = v25;
            v29 = 2112;
            v30 = v7;
            v31 = 2112;
            v32 = v16;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ Failed to remove observationID %@ from Gallery - %@", buf, 0x20u);
          }
        }

        goto LABEL_26;
      }

      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_27;
      }

      v20 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v20))
      {
        goto LABEL_27;
      }

      v23 = a1[4];
      *buf = 138412290;
      v28 = v23;
      v22 = "%@ invalid facecrop face for hidden person";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_27;
      }

      v20 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v20))
      {
        goto LABEL_27;
      }

      v21 = a1[4];
      *buf = 138412290;
      v28 = v21;
      v22 = "%@ vuObservationID = 0 for face to hidden person";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v20, v22, buf, 0xCu);
    goto LABEL_27;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      v11 = a1[4];
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Cancelled", buf, 0xCu);
    }
  }

  *a4 = 1;
LABEL_27:
}

void sub_100197C08(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = a1[6];
  if (v10 && (*(v10 + 16))())
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v11 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        v12 = a1[4];
        *buf = 138412290;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Cancelled", buf, 0xCu);
      }
    }

    *a4 = 1;
    goto LABEL_22;
  }

  v13 = [v7 integerValue];
  if (v13)
  {
    v14 = [[VUWGalleryObservationIdentifier alloc] initWithValue:v13];
    if (v14)
    {
      v15 = a1[5];
      v26 = 0;
      v16 = [v15 tag:v14 with:v8 type:0 error:&v26];
      v17 = v26;
      if (v16)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v18 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v18))
          {
            v19 = a1[4];
            v20 = [v14 value];
            *buf = 138412802;
            v28 = v19;
            v29 = 2048;
            v30 = v20;
            v31 = 2112;
            v32 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Tagged user confirmed training face %ld to person %@", buf, 0x20u);
          }
        }

        ++*(*(a1[7] + 8) + 24);
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v17 = 0;
    }

    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        v24 = a1[4];
        v25 = [v14 value];
        *buf = 138413058;
        v28 = v24;
        v29 = 2048;
        v30 = v25;
        v31 = 2112;
        v32 = v8;
        v33 = 2112;
        v34 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Failed to tag user confirmed training face %ld to person %@ - %@", buf, 0x2Au);
      }
    }

    goto LABEL_21;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v21 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      v22 = a1[4];
      *buf = 138412546;
      v28 = v22;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ vuObservationID = 0 for user confirmed training face to person %@", buf, 0x16u);
    }
  }

LABEL_22:
  objc_autoreleasePoolPop(v9);
}

void sub_100197F40(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = a1[6];
  if (v10 && (*(v10 + 16))())
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v11 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        v12 = a1[4];
        *buf = 138412290;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Cancelled", buf, 0xCu);
      }
    }

    *a4 = 1;
    goto LABEL_22;
  }

  v13 = [v7 integerValue];
  if (v13)
  {
    v14 = [[VUWGalleryObservationIdentifier alloc] initWithValue:v13];
    if (v14)
    {
      v15 = a1[5];
      v26 = 0;
      v16 = [v15 tag:v14 with:v8 type:2 error:&v26];
      v17 = v26;
      if (v16)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v18 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v18))
          {
            v19 = a1[4];
            v20 = [v14 value];
            *buf = 138412802;
            v28 = v19;
            v29 = 2048;
            v30 = v20;
            v31 = 2112;
            v32 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Tagged graph confirmed training face %ld to person %@", buf, 0x20u);
          }
        }

        ++*(*(a1[7] + 8) + 24);
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v17 = 0;
    }

    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        v24 = a1[4];
        v25 = [v14 value];
        *buf = 138413058;
        v28 = v24;
        v29 = 2048;
        v30 = v25;
        v31 = 2112;
        v32 = v8;
        v33 = 2112;
        v34 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Failed to tag graph confirmed training face %ld to person %@ - %@", buf, 0x2Au);
      }
    }

    goto LABEL_21;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v21 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      v22 = a1[4];
      *buf = 138412546;
      v28 = v22;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ vuObservationID = 0 for graph confirmed training face to person %@", buf, 0x16u);
    }
  }

LABEL_22:
  objc_autoreleasePoolPop(v9);
}

void sub_100198278(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = a1[6];
  if (v10 && (*(v10 + 16))())
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v11 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        v12 = a1[4];
        *buf = 138412290;
        v38 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Cancelled", buf, 0xCu);
      }
    }

    *a4 = 1;
    goto LABEL_30;
  }

  v13 = [v7 integerValue];
  if (v13)
  {
    v14 = [[VUWGalleryObservationIdentifier alloc] initWithValue:v13];
    if (v14)
    {
      v15 = a1[5];
      v36 = 0;
      v16 = [v15 untag:v14 error:&v36];
      v17 = v36;
      if (v16)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v18 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v18))
          {
            v19 = a1[4];
            v20 = [v14 value];
            *buf = 138412546;
            v38 = v19;
            v39 = 2048;
            v40 = v20;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Untagged rejecting training face %ld", buf, 0x16u);
          }
        }

LABEL_21:
        v26 = v17;
        v27 = a1[5];
        v35 = v17;
        v28 = [v27 tag:v14 with:v8 type:1 error:&v35];
        v17 = v35;

        if (v28)
        {
          if (MediaAnalysisLogLevel() >= 7)
          {
            v29 = VCPLogToOSLogType[7];
            if (os_log_type_enabled(&_os_log_default, v29))
            {
              v30 = a1[4];
              v31 = [v14 value];
              *buf = 138412802;
              v38 = v30;
              v39 = 2048;
              v40 = v31;
              v41 = 2112;
              v42 = v8;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "%@ Tagged rejected training face %ld to person %@", buf, 0x20u);
            }
          }

          ++*(*(a1[7] + 8) + 24);
LABEL_29:

          goto LABEL_30;
        }

LABEL_26:
        if (MediaAnalysisLogLevel() >= 3)
        {
          v32 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v32))
          {
            v33 = a1[4];
            v34 = [v14 value];
            *buf = 138413058;
            v38 = v33;
            v39 = 2048;
            v40 = v34;
            v41 = 2112;
            v42 = v8;
            v43 = 2112;
            v44 = v17;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ Failed to tag rejected training face %ld to person %@ - %@", buf, 0x2Au);
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
      v17 = 0;
    }

    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        v24 = a1[4];
        v25 = [v14 value];
        *buf = 138412802;
        v38 = v24;
        v39 = 2048;
        v40 = v25;
        v41 = 2112;
        v42 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Failed to untag rejecting training face %ld - %@", buf, 0x20u);
      }
    }

    if (!v14)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v21 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      v22 = a1[4];
      *buf = 138412546;
      v38 = v22;
      v39 = 2112;
      v40 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ vuObservationID = 0 for rejected training face to person %@", buf, 0x16u);
    }
  }

LABEL_30:
  objc_autoreleasePoolPop(v9);
}

void sub_1001986EC(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = a1[6];
  if (v6 && (*(v6 + 16))())
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v7 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        v8 = a1[4];
        *buf = 138412290;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Cancelled", buf, 0xCu);
      }
    }

    *a3 = 1;
    goto LABEL_22;
  }

  v9 = [v5 integerValue];
  if (v9)
  {
    v10 = [[VUWGalleryObservationIdentifier alloc] initWithValue:v9];
    if (v10)
    {
      v11 = a1[5];
      v22 = 0;
      v12 = [v11 untag:v10 error:&v22];
      v13 = v22;
      if (v12)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v14 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v14))
          {
            v15 = a1[4];
            v16 = [v10 value];
            *buf = 138412546;
            v24 = v15;
            v25 = 2048;
            v26 = v16;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Untagged orphan training face %ld", buf, 0x16u);
          }
        }

        ++*(*(a1[7] + 8) + 24);
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v13 = 0;
    }

    if (MediaAnalysisLogLevel() >= 3)
    {
      v19 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        v20 = a1[4];
        v21 = [v10 value];
        *buf = 138412802;
        v24 = v20;
        v25 = 2048;
        v26 = v21;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Failed to untag orphan training face %ld - %@", buf, 0x20u);
      }
    }

    goto LABEL_21;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v17 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      v18 = a1[4];
      *buf = 138412290;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ vuObservationID = 0 for orphan face", buf, 0xCu);
    }
  }

LABEL_22:
}

uint64_t sub_1001989FC(uint64_t a1, float a2)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v9 = 138412546;
      v10 = v5;
      v11 = 2048;
      v12 = (a2 * 100.0);
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Gallery updating - %.2f%%", &v9, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  if (v6 && ((*(v6 + 16))() & 1) != 0)
  {
    return 0;
  }

  v8 = +[VCPWatchdog sharedWatchdog];
  [v8 pet];

  return 1;
}

void sub_10019901C(uint64_t a1, _BYTE *a2)
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100199208;
  v16[3] = &unk_1002883C0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v20 = *(a1 + 80);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v17 = v9;
  v18 = v8;
  v19 = *(a1 + 64);
  v10 = objc_retainBlock(v16);
  v11 = *(a1 + 72);
  v15 = 0;
  LOBYTE(v6) = [v11 mutateAndReturnError:&v15 handler:v10];
  v12 = v15;
  if ((v6 & 1) == 0)
  {
    *a2 = 1;
    if (MediaAnalysisLogLevel() >= 3)
    {
      v13 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        v14 = *(a1 + 48);
        *buf = 138412546;
        v22 = v14;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Failed to add faces to Gallery %@; rollback Photos persistence transaction", buf, 0x16u);
      }
    }
  }
}

uint64_t sub_100199208(uint64_t a1, void *a2)
{
  v117 = a2;
  v108 = [*(a1 + 32) mad_allPersonsFetchOptions];
  if (![*(a1 + 40) count])
  {
    v115 = 0;
    goto LABEL_124;
  }

  v115 = 0;
  v3 = 0;
  type = VCPLogToOSLogType[5];
  v4 = VCPLogToOSLogType[7];
  v105 = VNAnimalFaceIdentifierCatFace;
  v106 = VNAnimalFaceIdentifierDogFace;
  v119 = v4;
  v110 = VCPLogToOSLogType[4];
  v111 = VCPLogToOSLogType[3];
  while (1)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 72);
    if (v6)
    {
      if ((*(v6 + 16))())
      {
        break;
      }
    }

    v123 = v5;
    v7 = [*(a1 + 40) objectAtIndexedSubscript:v3];
    v8 = [v7 detectionType];
    v9 = @"Animal";
    if (v8 == 1)
    {
      v9 = @"Human";
    }

    v10 = v9;
    v11 = *(a1 + 48);
    v12 = [v7 localIdentifier];
    v122 = v10;
    v124 = [NSString stringWithFormat:@"%@[%@][%@]", v11, v10, v12];

    v13 = *(a1 + 56);
    v14 = [v7 uuid];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (v15)
    {
      v16 = *(a1 + 64);
      v17 = [v15 uuid];
      v18 = [v16 objectForKeyedSubscript:v17];

      if (v18)
      {
        v19 = [NSUUID alloc];
        v20 = *(a1 + 64);
        v21 = [v15 uuid];
        v22 = [v20 objectForKeyedSubscript:v21];
        v23 = [v19 initWithUUIDString:v22];
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
        {
          v25 = [v15 localIdentifier];
          *buf = 138412546;
          v130 = v124;
          v131 = 2112;
          *v132 = v25;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ asset %@ does not have a moment", buf, 0x16u);
        }

        v23 = 0;
      }

      v26 = [v15 importProperties];
      v27 = [v26 importedBy];

      if (v27 == 2)
      {
        v28 = 1;
      }

      else
      {
        v29 = [v15 importProperties];
        v30 = [v29 importedBy];

        if (v30 == 1)
        {
          v28 = 2;
        }

        else
        {
          v28 = 3;
        }
      }

      v31 = [VUWGalleryContext alloc];
      v32 = [NSUUID alloc];
      v33 = [v15 uuid];
      v34 = [v32 initWithUUIDString:v33];
      v24 = [v31 initWithMoment:v23 asset:v34 source:v28];

      v4 = v119;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v4))
      {
        *buf = 138412290;
        v130 = v124;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Face does not have assocated asset", buf, 0xCu);
      }

      v24 = 0;
    }

    v35 = [v7 faceClusteringProperties];
    v36 = [v35 faceprint];

    if (!v36)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v110))
      {
        *buf = 138412290;
        v130 = v124;
        v42 = v110;
        v43 = "%@ Failed to obtain PHFaceprint; skip";
        goto LABEL_56;
      }

LABEL_57:
      v63 = 0;
      goto LABEL_91;
    }

    v120 = v36;
    v121 = v24;
    if ([v7 detectionType] == 1)
    {
      v37 = [v36 faceprintData];
      v38 = [VCPFaceIDModel faceObservationFromFaceprintData:v37];

      if (!v38)
      {
        v24 = v121;
        if (MediaAnalysisLogLevel() < 4)
        {
          v63 = 0;
          v36 = v120;
          goto LABEL_91;
        }

        v36 = v120;
        if (!os_log_type_enabled(&_os_log_default, v110))
        {
          goto LABEL_57;
        }

        *buf = 138412290;
        v130 = v124;
        v42 = v110;
        v43 = "%@ Failed to create VNFaceObservation; ignoring";
LABEL_56:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v42, v43, buf, 0xCu);
        goto LABEL_57;
      }

      [v7 quality];
      v39 = [NSNumber numberWithDouble:?];
      [v38 setValue:v39 forKey:@"faceCaptureQuality"];

      [v7 duration];
      v24 = v121;
      if (v40 <= 0.0)
      {
        v41 = [*(a1 + 32) vcp_isSyndicationLibrary];
      }

      else
      {
        v41 = 1;
      }

      v128 = 0;
      v62 = [v117 addWithObservation:v38 context:v121 priority:v41 at:0 error:&v128];
      v118 = v128;
LABEL_61:

      if (v62)
      {
        context = objc_autoreleasePoolPush();
        v112 = [PHFaceChangeRequest changeRequestForFace:v7];
        [v112 setVuObservationID:{objc_msgSend(v62, "value")}];
        v36 = v120;
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v4))
        {
          v64 = [v7 trainingType];
          v65 = [v62 value];
          *buf = 138412802;
          v130 = v124;
          v131 = 1024;
          *v132 = v64;
          *&v132[4] = 2048;
          *&v132[6] = v65;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Added face (trainingType:%d) %ld", buf, 0x1Cu);
        }

        if ([v7 trainingType] == 1 || objc_msgSend(v7, "trainingType") == 3 || objc_msgSend(v7, "trainingType") == 5)
        {
          v66 = [v7 personLocalIdentifier];
          v67 = [PHObject uuidFromLocalIdentifier:v66];

          v116 = v67;
          v68 = [[NSUUID alloc] initWithUUIDString:v67];
          if (v68)
          {
            v69 = [v7 trainingType];
            v126 = 0;
            v70 = [v117 tag:v62 with:v68 type:2 * (v69 == 5) error:&v126];
            v71 = v126;
            v72 = MediaAnalysisLogLevel();
            if (v70)
            {
              v4 = v119;
              if (v72 >= 7 && os_log_type_enabled(&_os_log_default, v119))
              {
                v73 = [v62 value];
                [v7 personLocalIdentifier];
                v75 = v74 = v62;
                *buf = 138412802;
                v130 = v124;
                v131 = 2048;
                *v132 = v73;
                v4 = v119;
                *&v132[8] = 2112;
                *&v132[10] = v75;
                v76 = v119;
                v77 = "%@ Tagged confirming face (%ld)to person %@";
                v78 = 32;
                goto LABEL_84;
              }
            }

            else
            {
              v4 = v119;
              if (v72 >= 3 && os_log_type_enabled(&_os_log_default, v111))
              {
                v79 = [v62 value];
                [v7 personLocalIdentifier];
                v75 = v74 = v62;
                *buf = 138413058;
                v130 = v124;
                v131 = 2048;
                *v132 = v79;
                v4 = v119;
                *&v132[8] = 2112;
                *&v132[10] = v75;
                v133 = 2112;
                v134 = v71;
                v76 = v111;
                v77 = "%@ Failed to tag confirming face (%ld) to person %@ - %@";
                v78 = 42;
LABEL_84:
                _os_log_impl(&_mh_execute_header, &_os_log_default, v76, v77, buf, v78);

                v62 = v74;
                v36 = v120;
              }
            }

LABEL_85:
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v111))
          {
            v71 = [v7 personLocalIdentifier];
            *buf = 138412546;
            v130 = v124;
            v131 = 2112;
            *v132 = v71;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v111, "%@ Invalid confirming person identification %@ for face", buf, 0x16u);
            goto LABEL_85;
          }

LABEL_87:
          v24 = v121;
          goto LABEL_88;
        }

        if ([v7 trainingType] == 2 || objc_msgSend(v7, "trainingType") == 4)
        {
          v80 = [PHPerson fetchRejectedPersonsForFace:v7 options:v108];
          v116 = v80;
          if ([v80 count])
          {
            if ([v80 count])
            {
              v109 = v62;
              v81 = 0;
              v82 = v116;
              while (1)
              {
                v114 = objc_autoreleasePoolPush();
                v83 = [v82 objectAtIndexedSubscript:v81];
                v84 = [v83 uuid];
                v85 = [PHObject uuidFromLocalIdentifier:v84];

                v86 = [[NSUUID alloc] initWithUUIDString:v85];
                if (!v86)
                {
                  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v111))
                  {
                    v103 = [v116 objectAtIndexedSubscript:v81];
                    v94 = [v103 localIdentifier];
                    *buf = 138412546;
                    v130 = v124;
                    v131 = 2112;
                    *v132 = v94;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v111, "%@ Invalid rejecting person identification %@ for face", buf, 0x16u);
                  }

                  goto LABEL_113;
                }

                v125 = 0;
                v87 = [v117 tag:v109 with:v86 type:1 error:&v125];
                v88 = v125;
                v89 = MediaAnalysisLogLevel();
                if (v87)
                {
                  if (v89 < 7 || !os_log_type_enabled(&_os_log_default, v119))
                  {
                    goto LABEL_112;
                  }

                  v102 = [v109 value];
                  v90 = [v7 personLocalIdentifier];
                  *buf = 138412802;
                  v130 = v124;
                  v131 = 2048;
                  *v132 = v102;
                  *&v132[8] = 2112;
                  *&v132[10] = v90;
                  v91 = v119;
                  v92 = "%@ Tagged rejecting face (%ld) to person %@";
                  v93 = 32;
                }

                else
                {
                  if (v89 < 3 || !os_log_type_enabled(&_os_log_default, v111))
                  {
                    goto LABEL_112;
                  }

                  v104 = [v109 value];
                  v90 = [v7 personLocalIdentifier];
                  *buf = 138413058;
                  v130 = v124;
                  v131 = 2048;
                  *v132 = v104;
                  *&v132[8] = 2112;
                  *&v132[10] = v90;
                  v133 = 2112;
                  v134 = v88;
                  v91 = v111;
                  v92 = "%@ Failed to tag rejecting face (%ld) to person %@ - %@";
                  v93 = 42;
                }

                _os_log_impl(&_mh_execute_header, &_os_log_default, v91, v92, buf, v93);

LABEL_112:
LABEL_113:

                objc_autoreleasePoolPop(v114);
                ++v81;
                v82 = v116;
                if (v81 >= [v116 count])
                {
                  v4 = v119;
                  v24 = v121;
                  v62 = v109;
                  goto LABEL_88;
                }
              }
            }

            v4 = v119;
          }

          else
          {
            v4 = v119;
            if (MediaAnalysisLogLevel() >= 3)
            {
              if (os_log_type_enabled(&_os_log_default, v111))
              {
                v95 = [v62 value];
                *buf = 138412546;
                v130 = v124;
                v131 = 2048;
                *v132 = v95;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v111, "%@ Failed to find reject person for face (%ld)", buf, 0x16u);
              }

              goto LABEL_87;
            }
          }

LABEL_88:
        }

        ++v115;

        objc_autoreleasePoolPop(context);
        goto LABEL_90;
      }

      v36 = v120;
      goto LABEL_74;
    }

    if ([v7 detectionType] == 3 || objc_msgSend(v7, "detectionType") == 4)
    {
      v44 = [v36 faceprintData];
      v38 = [VCPFaceIDModel animalObservationFromAnimalprintData:v44];

      if (!v38)
      {
        if (MediaAnalysisLogLevel() < 4)
        {
          v63 = 0;
          v36 = v120;
          v24 = v121;
          goto LABEL_91;
        }

        v36 = v120;
        v24 = v121;
        if (!os_log_type_enabled(&_os_log_default, v110))
        {
          goto LABEL_57;
        }

        *buf = 138412290;
        v130 = v124;
        v42 = v110;
        v43 = "%@ Failed to create VNAnimalObservation; ignoring";
        goto LABEL_56;
      }

      v45 = +[NSMutableArray array];
      v46 = [v7 detectionType];
      [v7 bodyWidth];
      if (v47 != 0.0)
      {
        v48 = VNAnimalIdentifierDog;
        if (v46 != 3)
        {
          v48 = VNAnimalIdentifierCat;
        }

        v49 = v48;
        v50 = [VNClassificationObservation alloc];
        LODWORD(v51) = 1.0;
        v52 = [v50 initWithRequestRevision:0 identifier:v49 confidence:v51];

        [v45 addObject:v52];
      }

      [v7 size];
      if (v53 != 0.0)
      {
        v54 = v106;
        if (v46 != 3)
        {
          v54 = v105;
        }

        v55 = v54;
        v56 = [VNClassificationObservation alloc];
        LODWORD(v57) = 1.0;
        v58 = [v56 initWithRequestRevision:0 identifier:v55 confidence:v57];

        [v45 addObject:v58];
      }

      [v38 setValue:v45 forKey:@"labels"];
      v4 = v119;
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v119))
      {
        v59 = [v38 labels];
        *buf = 138412546;
        v130 = v124;
        v131 = 2112;
        *v132 = v59;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v119, "%@ Set animalObservation labels %@ to Gallery", buf, 0x16u);
      }

      [v7 duration];
      if (v60 <= 0.0)
      {
        v61 = [*(a1 + 32) vcp_isSyndicationLibrary];
      }

      else
      {
        v61 = 1;
      }

      v24 = v121;
      v127 = 0;
      v62 = [v117 addWithObservation:v38 context:v121 priority:v61 at:0 error:&v127];
      v118 = v127;

      goto LABEL_61;
    }

    v118 = 0;
LABEL_74:
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_90;
    }

    if (!os_log_type_enabled(&_os_log_default, v111))
    {
      v24 = v121;
LABEL_90:
      v63 = v118;
      goto LABEL_91;
    }

    *buf = 138412546;
    v130 = v124;
    v131 = 2112;
    v63 = v118;
    *v132 = v118;
    _os_log_impl(&_mh_execute_header, &_os_log_default, v111, "%@ Failed to add face - %@; ignoring", buf, 0x16u);
    v24 = v121;
LABEL_91:

    objc_autoreleasePoolPop(v123);
    if (++v3 >= [*(a1 + 40) count])
    {
      goto LABEL_124;
    }
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v96 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v96))
    {
      v97 = *(a1 + 48);
      *buf = 138412290;
      v130 = v97;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v96, "%@ Cancelled during adding faces to Gallery; skip remaining faces", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v5);
LABEL_124:
  if (MediaAnalysisLogLevel() >= 7)
  {
    v98 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v98))
    {
      v99 = *(a1 + 48);
      v100 = [*(a1 + 40) count];
      *buf = 138412802;
      v130 = v99;
      v131 = 2048;
      *v132 = v115;
      *&v132[8] = 2048;
      *&v132[10] = v100;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v98, "%@ Added %lu of %lu face(s) to Gallery", buf, 0x20u);
    }
  }

  return 0;
}

void sub_10019A4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10019A4C4(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v3 = [v2 photoLibrary];

  v4 = [v3 vcp_description];
  v5 = [NSString stringWithFormat:@"[GalleryFace][%@]", v4];

  v6 = [*(a1 + 32) count];
  v7 = MediaAnalysisLogLevel();
  if (!v6)
  {
    if (v7 >= 7)
    {
      v25 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v25))
      {
        *buf = 138412290;
        v40 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ No face to add to Gallery; skip", buf, 0xCu);
      }
    }

    goto LABEL_29;
  }

  if (v7 >= 6)
  {
    v8 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      v9 = [*(a1 + 32) count];
      *buf = 138412546;
      v40 = v5;
      v41 = 2048;
      v42 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Preparing to add %lu faces to Gallery", buf, 0x16u);
    }
  }

  v10 = +[NSMutableArray array];
  if (![*(a1 + 32) count])
  {
LABEL_13:
    if ([v10 count])
    {
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      v23 = *(*(a1 + 64) + 8);
      v35 = *(v23 + 40);
      v24 = [v20 _addFacesWithFaceBatch:v10 gallery:v21 cancelOrExtendTimeoutBlock:v22 error:&v35];
      objc_storeStrong((v23 + 40), v35);
      if ((v24 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v26 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v26))
          {
            v27 = *(*(*(a1 + 64) + 8) + 40);
            *buf = 138412546;
            v40 = v5;
            v41 = 2112;
            v42 = v27;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Failed to add faces (last batch) to Gallery - %@", buf, 0x16u);
          }
        }

        goto LABEL_28;
      }

      [v10 removeAllObjects];
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_28;
  }

  v11 = 0;
  while (1)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 56);
    if (v13 && (*(v13 + 16))())
    {
      v37 = NSLocalizedDescriptionKey;
      v28 = [NSString stringWithFormat:@"Cancelled during preparing faces"];
      v38 = v28;
      v29 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v30 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v29];
      v31 = *(*(a1 + 64) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      goto LABEL_27;
    }

    v14 = [*(a1 + 32) objectAtIndexedSubscript:v11];
    [v10 addObject:v14];

    if ([v10 count] >= 0x3E8)
    {
      break;
    }

LABEL_12:
    objc_autoreleasePoolPop(v12);
    if (++v11 >= [*(a1 + 32) count])
    {
      goto LABEL_13;
    }
  }

  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(*(a1 + 64) + 8);
  obj = *(v18 + 40);
  v19 = [v15 _addFacesWithFaceBatch:v10 gallery:v16 cancelOrExtendTimeoutBlock:v17 error:&obj];
  objc_storeStrong((v18 + 40), obj);
  if (v19)
  {
    [v10 removeAllObjects];
    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v33 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v33))
    {
      v34 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412546;
      v40 = v5;
      v41 = 2112;
      v42 = v34;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "%@ Failed to add faces to Gallery - %@", buf, 0x16u);
    }
  }

LABEL_27:
  objc_autoreleasePoolPop(v12);
LABEL_28:

LABEL_29:
}

void sub_10019AA48(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10019AC44;
    v9[3] = &unk_100288168;
    v10 = *(a1 + 32);
    v2 = objc_retainBlock(v9);
    v3 = *(a1 + 40);
    v8 = 0;
    v4 = [v3 mutateAndReturnError:&v8 handler:v2];
    v5 = v8;
    if (v4)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v7 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          *buf = 138412290;
          v12 = v5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[GalleryFace] Failed to delete faces from Gallery %@", buf, 0xCu);
        }
      }

      if (*(a1 + 56))
      {
        **(a1 + 56) = [v5 copy];
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v6 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[GalleryFace] No face to remove to Gallery; skip", buf, 2u);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

uint64_t sub_10019AC44(uint64_t a1, void *a2)
{
  v20 = a2;
  v17 = a1;
  [PHAsset uuidsFromLocalIdentifiers:*(a1 + 32)];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v19 = 0;
    v5 = *v23;
    v6 = VCPLogToOSLogType[3];
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        v8 = v6;
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [[NSUUID alloc] initWithUUIDString:v9];
        v21 = 0;
        v12 = [v20 removeWithAsset:v11 error:&v21];
        v13 = v21;

        if (v12)
        {
          ++v19;
          v6 = v8;
        }

        else
        {
          v6 = v8;
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v8))
          {
            *buf = 138412546;
            v27 = v9;
            v28 = 2112;
            v29 = v13;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[GalleryFace] Failed to remove observations with asset (uuid:%@) from Gallery - %@; ignore", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v10);
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v4);
  }

  else
  {
    v19 = 0;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v14 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      v15 = [*(v17 + 32) count];
      *buf = 134218240;
      v27 = v19;
      v28 = 2048;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[GalleryFace] Removed observation(s) with %lu (out of %lu) asset(s) from Gallery", buf, 0x16u);
    }
  }

  return 0;
}

void sub_10019B684(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    v7 = VCPLogToOSLogType[6];
    *&v4 = 138412546;
    v12 = v4;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v7))
        {
          v10 = *(a1 + 40);
          *buf = v12;
          v18 = v10;
          v19 = 2112;
          v20 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[VUDedupe] Dedupping graph-verified persons %@ for user-verified person %@", buf, 0x16u);
        }

        v11 = [PHPersonChangeRequest changeRequestForDedupingGraphPersons:*(a1 + 40) withUserVerifiedPerson:v9, v12, v13];
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }
}

void sub_10019BA18(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1 || !(*(v1 + 16))())
  {
    v193 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"md:%ld", [*(a1 + 32) value]);
    v2 = @"Animal";
    v189 = *(a1 + 112);
    if (v189 == 1)
    {
      v2 = @"Human";
    }

    v194 = [NSString stringWithFormat:@"[GalleryUpdate][%@][%@]", v2, v193];
    v3 = +[NSMutableArray array];
    v4 = *(a1 + 40);
    v238[0] = _NSConcreteStackBlock;
    v238[1] = 3221225472;
    v238[2] = sub_10019DC8C;
    v238[3] = &unk_100288230;
    v191 = v3;
    v239 = v191;
    [v4 enumerateObjectsUsingBlock:v238];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v5 = &_os_log_default;
      v6 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        v7 = [v191 count];
        *buf = 138412546;
        v252 = v194;
        v253 = 2048;
        v254 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Updating entity with %lu face observations ... ", buf, 0x16u);
      }
    }

    v188 = [[VCPPhotosPersistenceDelegate alloc] initWithPhotoLibrary:*(a1 + 48)];
    v196 = [*(a1 + 48) mad_allPersonsFetchOptions];
    if (v189 == 1)
    {
      v8 = &off_100296578;
    }

    else
    {
      v8 = &off_100296590;
    }

    [v196 setIncludedDetectionTypes:v8];
    v9 = [NSPredicate predicateWithFormat:@"verifiedType != %ld", -2];
    [v196 setPredicate:v9];

    v262 = v193;
    v10 = [NSArray arrayWithObjects:&v262 count:1];
    v192 = [PHPerson fetchPersonsWithMdIDs:v10 options:v196];

    v195 = [v192 firstObject];
    if ([v192 count] >= 2 && MediaAnalysisLogLevel() >= 3)
    {
      v11 = &_os_log_default;
      v12 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        v13 = [v192 count];
        v14 = [v195 localIdentifier];
        *buf = 138413058;
        v252 = v194;
        v253 = 2048;
        v254 = v13;
        v255 = 2112;
        v256 = v192;
        v257 = 2112;
        v258 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Photos has %lu connected person %@; prefer first %@", buf, 0x2Au);
      }
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      goto LABEL_20;
    }

    v197 = [*(a1 + 48) mad_allFacesFetchOptions];
    v186 = [PHFace fetchFacesWithVuObservationIDs:v191 options:v197];
    if (![v186 count])
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v46 = &_os_log_default;
        v47 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v47))
        {
          v48 = [v191 count];
          v49 = [v186 fetchError];
          *buf = 138412802;
          v252 = v194;
          v253 = 2048;
          v254 = v48;
          v255 = 2112;
          v256 = v49;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v47, "%@ No faces correspondent to %lu observations (error: %@)", buf, 0x20u);
        }
      }

      v198 = 0;
      v27 = v186;
      goto LABEL_52;
    }

    v183 = [*(a1 + 48) librarySpecificFetchOptions];
    v181 = [PHFaceCrop fetchFaceCropByFaceLocalIdentifierForFaces:v186 fetchOptions:v183];
    v200 = +[NSMutableSet set];
    v199 = +[NSMutableSet set];
    [v181 allValues];
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v28 = v235 = 0u;
    v29 = [v28 countByEnumeratingWithState:&v234 objects:v261 count:16];
    if (v29)
    {
      v30 = *v235;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v235 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v234 + 1) + 8 * i);
          v33 = objc_autoreleasePoolPush();
          if ([v32 type] == 1)
          {
            v34 = [*(a1 + 48) mad_allPersonsFetchOptions];
            v35 = [PHPerson fetchPersonForFaceCrop:v32 options:v34];
            if ([v35 count])
            {
              v36 = [v35 firstObject];
              v37 = v200;
              if ([v36 verifiedType] == 1 || (v37 = v199, objc_msgSend(v36, "verifiedType") == 2))
              {
                v38 = [v36 localIdentifier];
                [v37 addObject:v38];
              }
            }
          }

          objc_autoreleasePoolPop(v33);
        }

        v29 = [v28 countByEnumeratingWithState:&v234 objects:v261 count:16];
      }

      while (v29);
    }

    v232[0] = _NSConcreteStackBlock;
    v232[1] = 3221225472;
    v232[2] = sub_10019DCF8;
    v232[3] = &unk_1002881E0;
    v39 = v194;
    v233 = v39;
    [v200 enumerateObjectsUsingBlock:v232];
    v230[0] = _NSConcreteStackBlock;
    v230[1] = 3221225472;
    v230[2] = sub_10019DDD4;
    v230[3] = &unk_1002881E0;
    v40 = v39;
    v231 = v40;
    [v199 enumerateObjectsUsingBlock:v230];
    if ([v200 count])
    {
      v41 = [v200 anyObject];
      v42 = [PHPerson uuidFromLocalIdentifier:v41];
    }

    else
    {
      if (!v199)
      {
        v132 = 0;
        goto LABEL_176;
      }

      v41 = [v199 anyObject];
      v42 = [PHPerson uuidFromLocalIdentifier:v41];
    }

    v132 = v42;

    if (v132)
    {
      v133 = [[NSUUID alloc] initWithUUIDString:v132];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v134 = &_os_log_default;
        v135 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v135))
        {
          *buf = 138412546;
          v252 = v40;
          v253 = 2112;
          v254 = v132;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v135, "%@ No tagging information from Gallery, but observations contain tagged person %@", buf, 0x16u);
        }
      }

LABEL_177:

      v15 = v133;
      if (!v133)
      {
        v198 = 0;
LABEL_54:
        v197 = [*(a1 + 48) mad_allFacesFetchOptions];
        v50 = [NSPredicate predicateWithFormat:@"nameSource != %ld", 3];
        [v197 setInternalPredicate:v50];

        v201 = [v197 copy];
        [v201 setShouldPrefetchCount:1];
        if (v189 == 1)
        {
          v51 = &off_1002965A8;
        }

        else
        {
          v51 = &off_1002965C0;
        }

        [v197 setIncludedDetectionTypes:v51];
        v52 = [PHFace fetchFacesWithVuObservationIDs:v191 options:v197];
        if (![v52 count])
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v68 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v68))
            {
              v69 = [v191 count];
              *buf = 138412546;
              v252 = v194;
              v253 = 2048;
              v254 = v69;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v68, "%@ Failed to fetched face (expected: %lu)", buf, 0x16u);
            }
          }

          goto LABEL_155;
        }

        v53 = [v52 count];
        if (v53 != [v191 count] && MediaAnalysisLogLevel() >= 4)
        {
          v54 = &_os_log_default;
          v55 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v55))
          {
            v56 = [v52 count];
            v57 = [v191 count];
            *buf = 138412802;
            v252 = v194;
            v253 = 2048;
            v254 = v56;
            v255 = 2048;
            v256 = v57;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v55, "%@ Fetched %lu faces (expected: %lu); ignoring missed faces", buf, 0x20u);
          }
        }

        v58 = v189;
        if (v189 != 1)
        {
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v59 = v52;
          v60 = 0;
          v61 = 0;
          v62 = [v59 countByEnumeratingWithState:&v226 objects:v248 count:16];
          if (v62)
          {
            v63 = *v227;
            do
            {
              for (j = 0; j != v62; j = j + 1)
              {
                if (*v227 != v63)
                {
                  objc_enumerationMutation(v59);
                }

                v65 = *(*(&v226 + 1) + 8 * j);
                if ([v65 detectionType] == 3)
                {
                  ++v61;
                }

                else if ([v65 detectionType] == 4)
                {
                  ++v60;
                }
              }

              v62 = [v59 countByEnumeratingWithState:&v226 objects:v248 count:16];
            }

            while (v62);
          }

          if (MediaAnalysisLogLevel() >= 6)
          {
            v66 = &_os_log_default;
            v67 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v67))
            {
              *buf = 138412802;
              v252 = v194;
              v253 = 2048;
              v254 = v61;
              v255 = 2048;
              v256 = v60;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v67, "%@ Count observations when fetching faces: Dog: %lu, Cat: %lu", buf, 0x20u);
            }
          }

          if (v61 <= v60)
          {
            if (v61 >= v60)
            {
              v136 = [*(a1 + 64) keyObservationsFor:*(a1 + 32) limit:1 offset:1];
              v137 = [v136 firstObject];

              v138 = [v137 allKeys];
              v139 = [v138 firstObject];

              if (v139)
              {
                v140 = [v137 allKeys];
                v141 = [v140 firstObject];
                v142 = [v141 value];

                v143 = [NSNumber numberWithInteger:v142];
                v247 = v143;
                v144 = [NSArray arrayWithObjects:&v247 count:1];
                v145 = [PHFace fetchFacesWithVuObservationIDs:v144 options:v197];
                v146 = [v145 firstObject];

                if (v146)
                {
                  v184 = [v146 detectionType];
                }

                else
                {
                  if (MediaAnalysisLogLevel() >= 3)
                  {
                    v158 = &_os_log_default;
                    v159 = VCPLogToOSLogType[3];
                    if (os_log_type_enabled(&_os_log_default, v159))
                    {
                      *buf = 138412290;
                      v252 = v194;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v159, "%@ Failed to fetch key face from Photos DB.Use detection type from the first observation IDs in fetchedFacesWithObservationIDs", buf, 0xCu);
                    }
                  }

                  v160 = [v59 firstObject];
                  v184 = [v160 detectionType];
                }
              }

              else
              {
                if (MediaAnalysisLogLevel() >= 3)
                {
                  v147 = &_os_log_default;
                  v148 = VCPLogToOSLogType[3];
                  if (os_log_type_enabled(&_os_log_default, v148))
                  {
                    *buf = 138412546;
                    v252 = v194;
                    v253 = 2112;
                    v254 = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v148, "%@ Failed to get key observation from VU with error: %@.Use detection type from the first observation IDs in fetchedFacesWithObservationIDs", buf, 0x16u);
                  }
                }

                v146 = [v59 firstObject];
                v184 = [v146 detectionType];
              }

LABEL_87:
              v70 = +[NSMutableArray array];
              if ([v52 count])
              {
                v71 = 0;
                v72 = VCPLogToOSLogType[3];
                do
                {
                  v73 = objc_autoreleasePoolPush();
                  v74 = [v52 objectAtIndexedSubscript:v71];
                  if ([v74 trainingType] != 5 && objc_msgSend(v74, "trainingType") != 1)
                  {
                    goto LABEL_94;
                  }

                  v75 = [v74 personLocalIdentifier];
                  v76 = v75 == 0;

                  if (v76)
                  {
                    if (MediaAnalysisLogLevel() < 3)
                    {
                      goto LABEL_94;
                    }

                    v78 = &_os_log_default;
                    v77 = &_os_log_default;
                    if (os_log_type_enabled(&_os_log_default, v72))
                    {
                      v79 = [v74 localIdentifier];
                      *buf = 138412546;
                      v252 = v194;
                      v253 = 2112;
                      v254 = v79;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v72, "%@ training face (%@) with no personLocalIdentifier; skipping", buf, 0x16u);

                      v77 = &_os_log_default;
                    }
                  }

                  else
                  {
                    v77 = [v74 personLocalIdentifier];
                    [v70 addObject:v77];
                  }

LABEL_94:
                  objc_autoreleasePoolPop(v73);
                  ++v71;
                }

                while (v71 < [v52 count]);
              }

              if ([v70 count])
              {
                v80 = [PHPerson fetchPersonsWithLocalIdentifiers:v70 options:v196];
                v81 = [v80 count];
                if (v81 != [v70 count] && MediaAnalysisLogLevel() >= 3)
                {
                  v82 = &_os_log_default;
                  v83 = VCPLogToOSLogType[3];
                  if (os_log_type_enabled(&_os_log_default, v83))
                  {
                    v84 = [v80 count];
                    v85 = [v70 count];
                    *buf = 138412802;
                    v252 = v194;
                    v253 = 2048;
                    v254 = v84;
                    v255 = 2048;
                    v256 = v85;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v83, "%@ Retrived %lu (out of %lu) tagged person to merge; ignoring missed person(s)", buf, 0x20u);
                  }
                }
              }

              else
              {
                v80 = 0;
              }

              if ([v52 count])
              {
                v86 = [v52 fetchedObjects];
                v87 = [NSSet setWithArray:v86];
              }

              else
              {
                v86 = +[NSSet set];
                v87 = v86;
              }

              v190 = [PHFace fetchFacesForPerson:v195 options:v197];
              if ([v190 count])
              {
                v88 = [v190 fetchedObjects];
                v187 = [NSSet setWithArray:v88];
              }

              else
              {
                v88 = +[NSSet set];
                v187 = v88;
              }

              v89 = [v87 mutableCopy];
              if ([*(a1 + 72) count])
              {
                v90 = +[NSMutableSet set];
                v222[0] = _NSConcreteStackBlock;
                v222[1] = 3221225472;
                v222[2] = sub_10019DEB0;
                v222[3] = &unk_100288460;
                v223 = *(a1 + 72);
                v91 = v90;
                v224 = v91;
                v225 = v194;
                [v89 enumerateObjectsUsingBlock:v222];
                [v89 minusSet:v91];
              }

              v92 = v195;
              if (v195)
              {
                [v89 minusSet:v187];
                v92 = v195;
              }

              v216 = 0;
              v217 = &v216;
              v218 = 0x3032000000;
              v219 = sub_10018FF4C;
              v220 = sub_10018FF5C;
              v221 = [v92 localIdentifier];
              v208[0] = _NSConcreteStackBlock;
              v208[1] = 3221225472;
              v208[2] = sub_10019DFD4;
              v208[3] = &unk_100288488;
              v93 = v195;
              v209 = v93;
              v94 = v193;
              v210 = v94;
              v214 = &v216;
              v95 = v194;
              v211 = v95;
              v182 = v80;
              v212 = v182;
              v96 = v89;
              v213 = v96;
              v215 = v184;
              v185 = objc_retainBlock(v208);
              v97 = [v96 count];
              if (!v195 || v97)
              {
                if (!v97)
                {
                  goto LABEL_119;
                }
              }

              else
              {
                v98 = [v93 mdID];
                v99 = [v98 isEqualToString:v94];

                if (v99)
                {
LABEL_119:
                  if (MediaAnalysisLogLevel() < 7)
                  {
                    goto LABEL_129;
                  }

                  v100 = &_os_log_default;
                  v101 = &_os_log_default;
                  v102 = VCPLogToOSLogType[7];
                  if (os_log_type_enabled(&_os_log_default, v102))
                  {
                    v103 = v217[5];
                    *buf = 138412546;
                    v252 = v95;
                    v253 = 2112;
                    v254 = v103;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v102, "%@ Person %@ is up-to-date", buf, 0x16u);
                  }

LABEL_128:

LABEL_129:
                  v111 = v217[5];
                  if (!v111)
                  {
LABEL_146:
                    *(*(*(a1 + 96) + 8) + 24) = 1;
LABEL_154:

                    _Block_object_dispose(&v216, 8);
LABEL_155:

LABEL_156:
                    goto LABEL_157;
                  }

                  [*(a1 + 80) _dedupeGraphVerifiedPersonsForPerson:v111 photoLibrary:*(a1 + 48)];
                  v179 = mach_absolute_time();
                  v112 = VCPSignPostLog();
                  spid = os_signpost_id_generate(v112);

                  v113 = VCPSignPostLog();
                  v114 = v113;
                  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v113))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v114, OS_SIGNPOST_INTERVAL_BEGIN, spid, "GalleryUpdate_UpdateKeyface", "", buf, 2u);
                  }

                  if (MediaAnalysisLogLevel() >= 7)
                  {
                    v115 = &_os_log_default;
                    v116 = VCPLogToOSLogType[7];
                    if (os_log_type_enabled(&_os_log_default, v116))
                    {
                      v117 = v217[5];
                      *buf = 138412546;
                      v252 = v95;
                      v253 = 2112;
                      v254 = v117;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v116, "%@ Checking key face for person %@ ... ", buf, 0x16u);
                    }
                  }

                  v118 = [v196 copy];
                  [v118 setIncludeTorsoOnlyPerson:0];
                  v244 = v217[5];
                  v119 = [NSArray arrayWithObjects:&v244 count:1];
                  v120 = [PHPerson fetchPersonsWithLocalIdentifiers:v119 options:v118];
                  v180 = [v120 firstObject];

                  v121 = [*(a1 + 48) mad_allFacesFetchOptions];
                  [v121 setIncludeNonvisibleFaces:0];
                  [v121 setFetchLimit:1];
                  if (!v180 || [v180 verifiedType] || (+[PHFace fetchKeyFaceForPerson:options:](PHFace, "fetchKeyFaceForPerson:options:", v180, v121), v122 = objc_claimAutoreleasedReturnValue(), v123 = objc_msgSend(v122, "count") == 0, v122, !v123))
                  {
LABEL_140:
                    v124 = VCPSignPostLog();
                    v125 = v124;
                    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v124))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&_mh_execute_header, v125, OS_SIGNPOST_INTERVAL_END, spid, "GalleryUpdate_UpdateKeyface", "", buf, 2u);
                    }

                    if (v179)
                    {
                      mach_absolute_time();
                      VCPPerformance_LogMeasurement();
                    }

                    goto LABEL_146;
                  }

                  v149 = [v188 bestRepresentativeFaceForPerson:v180 qualityMeasureByFace:0 candidateFaces:0 cancelOrExtendTimeoutBlock:*(a1 + 88)];
                  if (!v149)
                  {
                    if (MediaAnalysisLogLevel() >= 3)
                    {
                      v161 = &_os_log_default;
                      v162 = VCPLogToOSLogType[3];
                      if (os_log_type_enabled(&_os_log_default, v162))
                      {
                        v163 = v217[5];
                        *buf = 138412546;
                        v252 = v95;
                        v253 = 2112;
                        v254 = v163;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v162, "%@ Failed to load key face for person %@", buf, 0x16u);
                      }
                    }

                    if (*(a1 + 104))
                    {
                      v240 = NSLocalizedDescriptionKey;
                      v164 = [NSString stringWithFormat:@"Failed to load key face for person %@", v217[5]];
                      v241 = v164;
                      v165 = [NSDictionary dictionaryWithObjects:&v241 forKeys:&v240 count:1];
                      **(a1 + 104) = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v165];
                    }

                    goto LABEL_212;
                  }

                  v150 = *(a1 + 48);
                  v204[0] = _NSConcreteStackBlock;
                  v204[1] = 3221225472;
                  v204[2] = sub_10019E5AC;
                  v204[3] = &unk_100282F50;
                  v205 = v180;
                  v177 = v149;
                  v206 = v177;
                  v203 = 0;
                  v176 = [v150 performChangesAndWait:v204 error:&v203];
                  v175 = v203;
                  if (v176)
                  {
                    if (MediaAnalysisLogLevel() >= 7)
                    {
                      v151 = &_os_log_default;
                      v152 = VCPLogToOSLogType[7];
                      if (os_log_type_enabled(&_os_log_default, v152))
                      {
                        v173 = [v177 localIdentifier];
                        v153 = [v177 vuObservationID];
                        v154 = v217[5];
                        *buf = 138413058;
                        v252 = v95;
                        v253 = 2112;
                        v254 = v173;
                        v255 = 2048;
                        v256 = v153;
                        v257 = 2112;
                        v258 = v154;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v152, "%@ Set key face %@-%ld for person %@", buf, 0x2Au);
                      }
                    }

                    v155 = [v177 localIdentifier];

                    if (v155)
                    {
                      v156 = *(a1 + 72);
                      v157 = [v177 localIdentifier];
                      [v156 addObject:v157];
LABEL_210:
                    }
                  }

                  else
                  {
                    if (MediaAnalysisLogLevel() >= 3)
                    {
                      v166 = &_os_log_default;
                      v167 = VCPLogToOSLogType[3];
                      if (os_log_type_enabled(&_os_log_default, v167))
                      {
                        v174 = [v177 localIdentifier];
                        v168 = [v177 vuObservationID];
                        v169 = v217[5];
                        *buf = 138413314;
                        v252 = v95;
                        v253 = 2112;
                        v254 = v174;
                        v255 = 2048;
                        v256 = v168;
                        v257 = 2112;
                        v258 = v169;
                        v259 = 2112;
                        v260 = v175;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v167, "%@ Failed to set key face %@-%ld  for person %@ - %@", buf, 0x34u);
                      }
                    }

                    if (*(a1 + 104))
                    {
                      v242 = NSLocalizedDescriptionKey;
                      v157 = [v177 localIdentifier];
                      v170 = [v177 vuObservationID];
                      v171 = [NSString stringWithFormat:@"Failed to set key face %@-%ld for person %@ - %@", v157, v170, v217[5], v175];
                      v243 = v171;
                      v172 = [NSDictionary dictionaryWithObjects:&v243 forKeys:&v242 count:1];
                      **(a1 + 104) = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v172];

                      goto LABEL_210;
                    }
                  }

                  if (v176)
                  {
                    goto LABEL_140;
                  }

LABEL_212:

                  goto LABEL_154;
                }
              }

              if (MediaAnalysisLogLevel() >= 6)
              {
                v104 = &_os_log_default;
                v105 = VCPLogToOSLogType[6];
                if (os_log_type_enabled(&_os_log_default, v105))
                {
                  v106 = v217[5];
                  v107 = [v96 count];
                  v108 = [v93 mdID];
                  *buf = 138413058;
                  v252 = v95;
                  v253 = 2112;
                  v254 = v106;
                  v255 = 2048;
                  v256 = v107;
                  v257 = 2112;
                  v258 = v108;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v105, "%@ Person %@ (%lu faces) (%@) needs update", buf, 0x2Au);
                }
              }

              v109 = *(a1 + 48);
              v207 = 0;
              v110 = [v109 performChangesAndWait:v185 error:&v207];
              v100 = v207;
              if ((v110 & 1) == 0)
              {
                if (MediaAnalysisLogLevel() >= 3)
                {
                  v126 = &_os_log_default;
                  v127 = VCPLogToOSLogType[3];
                  if (os_log_type_enabled(&_os_log_default, v127))
                  {
                    v128 = v217[5];
                    *buf = 138412802;
                    v252 = v95;
                    v253 = 2112;
                    v254 = v128;
                    v255 = 2112;
                    v256 = v100;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v127, "%@ Failed to update person %@ - %@", buf, 0x20u);
                  }
                }

                if (*(a1 + 104))
                {
                  v245 = NSLocalizedDescriptionKey;
                  v129 = [NSString stringWithFormat:@"Failed to update person %@ - %@", v217[5], v100];
                  v246 = v129;
                  v130 = [NSDictionary dictionaryWithObjects:&v246 forKeys:&v245 count:1];
                  **(a1 + 104) = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v130];
                }

                goto LABEL_154;
              }

              goto LABEL_128;
            }

            v58 = 4;
          }

          else
          {
            v58 = 3;
          }
        }

        v184 = v58;
        goto LABEL_87;
      }

LABEL_20:
      v198 = v15;
      v16 = [v15 UUIDString];
      v197 = [PHPerson localIdentifierWithUUID:v16];

      if (v195)
      {
        v17 = [v195 localIdentifier];
        v18 = [v17 isEqualToString:v197];

        if (v18)
        {
LABEL_53:

          goto LABEL_54;
        }

        if (MediaAnalysisLogLevel() >= 5)
        {
          v19 = &_os_log_default;
          v20 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v20))
          {
            v21 = [v195 localIdentifier];
            v22 = [v195 localIdentifier];
            *buf = 138413314;
            v252 = v194;
            v253 = 2112;
            v254 = v21;
            v255 = 2112;
            v256 = v197;
            v257 = 2112;
            v258 = v22;
            v259 = 2112;
            v260 = v197;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ mdID Person (%@) is not tagged person (%@); Merge %@ to %@", buf, 0x34u);
          }
        }

        v250 = v197;
        v23 = [NSArray arrayWithObjects:&v250 count:1];
        v24 = [PHPerson fetchPersonsWithLocalIdentifiers:v23 options:v196];
        v25 = [v24 firstObject];

        if (v25)
        {
          v26 = v25;

          v27 = v26;
          v195 = v26;
LABEL_52:

          goto LABEL_53;
        }

        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_156;
        }

        v131 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v131))
        {
          goto LABEL_156;
        }
      }

      else
      {
        v249 = v197;
        v43 = [NSArray arrayWithObjects:&v249 count:1];
        v44 = [PHPerson fetchPersonsWithLocalIdentifiers:v43 options:v196];
        v45 = [v44 firstObject];

        if (v45)
        {
          v27 = v45;
          v195 = v27;
          goto LABEL_52;
        }

        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_156;
        }

        v131 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v131))
        {
          goto LABEL_156;
        }
      }

      *buf = 138412546;
      v252 = v194;
      v253 = 2112;
      v254 = v197;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v131, "%@ tagged Person (%@) does not exist!", buf, 0x16u);
      goto LABEL_156;
    }

LABEL_176:
    v133 = 0;
    goto LABEL_177;
  }

  if (!*(a1 + 104))
  {
    return;
  }

  v263 = NSLocalizedDescriptionKey;
  v193 = [NSString stringWithFormat:@"Update person with photosLibrary cancelled ..."];
  v264 = v193;
  v194 = [NSDictionary dictionaryWithObjects:&v264 forKeys:&v263 count:1];
  **(a1 + 104) = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v194];
LABEL_157:
}

void sub_10019DC8C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 value]);
  [v2 addObject:v3];
}

void sub_10019DCF8(uint64_t a1, void *a2)
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ tagged person (user) %@", &v6, 0x16u);
    }
  }
}

void sub_10019DDD4(uint64_t a1, void *a2)
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ tagged person (graph) %@", &v6, 0x16u);
    }
  }
}

void sub_10019DEB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 localIdentifier];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(a1 + 40) addObject:v3];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v6 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        v7 = *(a1 + 48);
        v8 = [v3 localIdentifier];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Ignoring key face %@ from facesToAdd", &v9, 0x16u);
      }
    }
  }
}

void sub_10019DFD4(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v41) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "GalleryUpdate_personChangeBlock", "", &v41, 2u);
  }

  if (*(a1 + 32))
  {
    v7 = [PHPersonChangeRequest changeRequestForPerson:?];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v8 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = *(a1 + 48);
        v10 = *(*(*(a1 + 72) + 8) + 40);
        v41 = 138412546;
        v42 = v9;
        v43 = 2112;
        *v44 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ The person (%@) exists, updating ...", &v41, 0x16u);
      }
    }

    v11 = [*(a1 + 32) mdID];
    v12 = [v11 isEqualToString:*(a1 + 40)];

    if ((v12 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v13 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v13))
        {
          v14 = *(a1 + 48);
          v15 = *(*(*(a1 + 72) + 8) + 40);
          v16 = [*(a1 + 32) mdID];
          v17 = *(a1 + 40);
          v41 = 138413058;
          v42 = v14;
          v43 = 2112;
          *v44 = v15;
          *&v44[8] = 2112;
          *&v44[10] = v16;
          v45 = 2112;
          v46 = v17;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Person %@:%@ mismatches %@; update Photos with mdID", &v41, 0x2Au);
        }
      }

      [v7 setMdID:*(a1 + 40)];
    }

    if ([*(a1 + 56) count])
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v18 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          v19 = *(a1 + 48);
          v20 = [*(a1 + 56) count];
          v21 = [*(a1 + 32) localIdentifier];
          v22 = [*(a1 + 32) mdID];
          v23 = [*(a1 + 32) verifiedType];
          v41 = 138413314;
          v42 = v19;
          v43 = 2048;
          *v44 = v20;
          *&v44[8] = 2112;
          *&v44[10] = v21;
          v45 = 2112;
          v46 = v22;
          v47 = 2048;
          v48 = v23;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Merging %lu persons to person %@(%@)(VerifyType-%ld)", &v41, 0x34u);
        }
      }

      [v7 mergePersons:*(a1 + 56)];
    }
  }

  else
  {
    v7 = +[PHPersonChangeRequest creationRequestForPerson];
    [v7 setMdID:*(a1 + 40)];
    [v7 setVerifiedType:0];
    v24 = [v7 placeholderForCreatedPerson];
    v25 = [v24 localIdentifier];
    v26 = *(*(a1 + 72) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    if (MediaAnalysisLogLevel() >= 6)
    {
      v28 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        v29 = *(a1 + 48);
        v30 = *(*(*(a1 + 72) + 8) + 40);
        v41 = 138412546;
        v42 = v29;
        v43 = 2112;
        *v44 = v30;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Creating new person (%@)", &v41, 0x16u);
      }
    }
  }

  if ([*(a1 + 64) count])
  {
    [v7 addFaces:*(a1 + 64)];
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v31 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v31))
    {
      v32 = *(a1 + 48);
      v33 = [*(a1 + 64) count];
      v34 = *(*(*(a1 + 72) + 8) + 40);
      v41 = 138412802;
      v42 = v32;
      v43 = 2048;
      *v44 = v33;
      *&v44[8] = 2112;
      *&v44[10] = v34;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "%@ Add %lu faces for the person (%@)", &v41, 0x20u);
    }
  }

  [v7 setDetectionType:*(a1 + 80)];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v35 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v35))
    {
      v36 = *(a1 + 48);
      v37 = [v7 detectionType];
      v38 = *(*(*(a1 + 72) + 8) + 40);
      v41 = 138412802;
      v42 = v36;
      v43 = 1024;
      *v44 = v37;
      *&v44[4] = 2112;
      *&v44[6] = v38;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "%@ Set detectionType = %d for this person (%@)", &v41, 0x1Cu);
    }
  }

  v39 = VCPSignPostLog();
  v40 = v39;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    LOWORD(v41) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_END, v4, "GalleryUpdate_personChangeBlock", "", &v41, 2u);
  }

  if (v2)
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }
}

void sub_10019E5AC(uint64_t a1)
{
  v2 = [PHPersonChangeRequest changeRequestForPerson:*(a1 + 32)];
  [v2 setKeyFace:*(a1 + 40) forCluster:0];
}

void sub_10019E788(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 && (*(v2 + 16))())
  {
    if (!*(a1 + 80))
    {
      return;
    }

    v48 = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithFormat:@"Update person with photosLibrary cancelled ..."];
    v49 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    **(a1 + 80) = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v4];
  }

  else
  {
    v5 = +[NSMutableArray array];
    v6 = *(a1 + 32);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10019ED64;
    v34[3] = &unk_100288230;
    v3 = v5;
    v35 = v3;
    [v6 enumerateObjectsUsingBlock:v34];
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"md:%ld", [*(a1 + 40) value]);
    if (*(a1 + 88) == 1)
    {
      v8 = @"Human";
    }

    else
    {
      v8 = @"Animal";
    }

    v9 = [NSString stringWithFormat:@"[GalleryUpdateSyndication][%@][%@]", v8, v7];
    if (*(a1 + 48))
    {
      v10 = [*(a1 + 56) mad_allFacesFetchOptions];
      v11 = [PHFace fetchFacesWithVuObservationIDs:v3 options:v10];
      v12 = [v11 count];
      if (v12 != [v3 count] && MediaAnalysisLogLevel() >= 6)
      {
        v13 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v13))
        {
          v14 = [v11 count];
          v15 = [v3 count];
          v16 = *(a1 + 48);
          *buf = 138413314;
          v39 = v9;
          v40 = 2048;
          v41 = v14;
          v42 = 2048;
          v43 = v15;
          v44 = 2112;
          v45 = v7;
          v46 = 2112;
          v47 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Fetched %lu faces (expected %lu) for entity %@ (%@)", buf, 0x34u);
        }
      }

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10019EDD0;
      v31[3] = &unk_100282F50;
      v17 = v11;
      v32 = v17;
      v33 = *(a1 + 48);
      v18 = objc_retainBlock(v31);
      v19 = *(a1 + 56);
      v30 = 0;
      v20 = [v19 performChangesAndWait:v18 error:&v30];
      v21 = v30;
      v22 = MediaAnalysisLogLevel();
      if (v20)
      {
        if (v22 >= 6)
        {
          v23 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v23))
          {
            *buf = 138412290;
            v39 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Successfully persisted identification results", buf, 0xCu);
          }
        }

        *(*(*(a1 + 72) + 8) + 24) = 1;
      }

      else
      {
        if (v22 >= 3)
        {
          v26 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v26))
          {
            *buf = 138412546;
            v39 = v9;
            v40 = 2112;
            v41 = v21;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Failed to persist identification results - %@", buf, 0x16u);
          }
        }

        if (*(a1 + 80))
        {
          v36 = NSLocalizedDescriptionKey;
          [NSString stringWithFormat:@"Failed to update face to person %@ in Syndicatin Library - %@", *(a1 + 48), v21];
          v27 = v29 = v10;
          v37 = v27;
          v28 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          **(a1 + 80) = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v28];

          v10 = v29;
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v24 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          v25 = [v3 count];
          *buf = 138412802;
          v39 = v9;
          v40 = 2048;
          v41 = v25;
          v42 = 2112;
          v43 = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ %lu faces in Syndication clustered to entity %@ without tag; Ignoring", buf, 0x20u);
        }
      }

      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    v4 = v35;
  }
}

void sub_10019ED64(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 value]);
  [v2 addObject:v3];
}

id sub_10019EDD0(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v6 = [PHFaceChangeRequest changeRequestForFace:v5];
      v7 = [*(a1 + 40) UUIDString];
      [v6 associateFaceWithPersonUUID:v7];

      [v6 setNameSource:6];
      objc_autoreleasePoolPop(v4);
      result = [*(a1 + 32) count];
    }
  }

  return result;
}

void sub_10019F9C8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) localIdentifier];
  [v4 removeProcessingStatusForLocalIdentifier:v3 taskID:*(*(a1 + 40) + 40)];
}

uint64_t sub_1001A0BC4(uint64_t a1)
{
  v2 = +[VCPWatchdog sharedWatchdog];
  [v2 pet];

  v3 = [*(a1 + 32) cancel];
  v4 = v3[2]();

  return v4;
}

void sub_1001A1110(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [*(a1 + 32) vcp_description];
      v8 = 138412546;
      v9 = v5;
      v10 = 1024;
      v11 = 3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[FaceModelBump][%@][MACD] Removing all processing status for taskID %d", &v8, 0x12u);
    }
  }

  [v3 removeAllProcessingStatusImmediatelyForTaskID:3];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v6 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = [*(a1 + 32) vcp_description];
      v8 = 138412546;
      v9 = v7;
      v10 = 1024;
      v11 = 3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[FaceModelBump][%@][MACD] Removing all change tokens for taskID %d", &v8, 0x12u);
    }
  }

  [v3 removeAllChangeTokensImmediatelyForTaskID:3];
}

void sub_1001A1A78(id a1, MADChangeRequest *a2)
{
  v2 = a2;
  [(MADChangeRequest *)v2 removeDataStoreKey:@"ContactIngestionTimestamp"];
  [(MADChangeRequest *)v2 removeDataStoreKey:@"HomePersonIngestionTimestamp"];
  [(MADChangeRequest *)v2 removeDataStoreKey:@"VUDeepSyncTimestamp"];
  [(MADChangeRequest *)v2 removeDataStoreKey:VCPKeyValueFaceAnalysisLastFullModeClusterTimestamp];
}

void sub_1001A3358(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDataStoreValueIfNotExist:0 forKey:@"NumberOfTimesScheduledDatabaseCreation"];
  [v3 setDataStoreValueIfNotExist:0 forKey:@"TotalAnalyzingTimeDatabaseCreation"];
  [v3 setDataStoreValueIfNotExist:*(a1 + 56) forKey:@"DailyProcessTimeStamp"];
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v4 = +[NSProcessInfo processInfo];
  v5 = v4;
  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  v6 = v26;
  v7 = MajorOSVersionNumberKey;
  v8 = [*(a1 + 32) dataStoreValueForKey:MajorOSVersionNumberKey];
  v9 = MinorOSVersionNumberKey;
  v10 = [*(a1 + 32) dataStoreValueForKey:MinorOSVersionNumberKey];
  if (v8 != v25 || v10 != v26)
  {
    v12 = v10;
    if (MediaAnalysisLogLevel() >= 5)
    {
      v13 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        *buf = 134218752;
        v30 = v8;
        v31 = 2048;
        v32 = v12;
        v33 = 2048;
        v34 = v25;
        v35 = 2048;
        v36 = v26;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MACDMigration] Operating System version changed from %lld.%lld to %lld.%lld", buf, 0x2Au);
      }
    }

    [v3 setDataStoreValue:v25 forKey:v7];
    [v3 setDataStoreValue:v6 forKey:v9];
    [v3 setDataStoreValue:*(a1 + 56) forKey:OSVersionUpdateTimestampKey];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = *(a1 + 40);
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([*(a1 + 48) clearCheckpointTimestampForTask:objc_msgSend(*(*(&v21 + 1) + 8 * i) changeRequest:{"intValue", v21), v3}])
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v19 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v19))
              {
                v20 = VCPTaskIDDescription();
                *buf = 138412290;
                v30 = v20;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MACDMigration] Failed to check/update analysis version for %@", buf, 0xCu);
              }
            }

            goto LABEL_23;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v28 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:
  }
}

void sub_1001A367C(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(a1 + 40) _updateAnalysisInfoWithCurrentVersion:VCPVersionForTask() timestamp:*(a1 + 56) taskID:objc_msgSend(*(*(&v11 + 1) + 8 * i) fetchRequest:"intValue" changeRequest:{v11), *(a1 + 48), v3}])
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v9 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v9))
            {
              v10 = VCPTaskIDDescription();
              *buf = 138412290;
              v16 = v10;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[MACDMigration] Failed to check/update analysis version for %@", buf, 0xCu);
            }
          }

          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_1001A38B0(void *a1, int a2)
{
  v3 = [a1 photoLibraryURL];
  v4 = 138412546;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[MACDRebuild] Failed to recreate new database for photo library %@ (%d)", &v4, 0x12u);
}

void sub_1001A39F8()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B8500;
  qword_1002B8500 = v0;
}

void sub_1001A46EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(*(a1 + 32) + 16) addObject:v3];
    v4 = *(*(a1 + 32) + 24);
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 taskID]);
    [v4 addObject:v5];
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v6 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = objc_opt_class();
      v10 = a1 + 40;
      v8 = *(a1 + 40);
      v9 = *(v10 + 8);
      v11 = v7;
      v12 = [v8 photoLibraryURL];
      v13 = [v12 path];
      v14 = 138412802;
      v15 = v7;
      v16 = 2048;
      v17 = v9;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[%@] Failed to create task provider (type %lu) for Library %@; skipping", &v14, 0x20u);
    }
  }
}

int64_t sub_1001A4874(id a1, MADTaskProvider *a2, MADTaskProvider *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(MADTaskProvider *)v4 priority];
  if (v6 <= [(MADTaskProvider *)v5 priority])
  {
    v8 = [(MADTaskProvider *)v4 priority];
    if (v8 < [(MADTaskProvider *)v5 priority])
    {
      v7 = 1;
      goto LABEL_7;
    }

    v9 = [(MADTaskProvider *)v4 iterations];
    if (v9 <= [(MADTaskProvider *)v5 iterations])
    {
      v10 = [(MADTaskProvider *)v4 iterations];
      v7 = v10 < [(MADTaskProvider *)v5 iterations];
      goto LABEL_7;
    }
  }

  v7 = -1;
LABEL_7:

  return v7;
}

void sub_1001A4CFC(uint64_t a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MADTaskCoordinator_Prepare", "", buf, 2u);
  }

  v6 = +[MADStateHandler sharedStateHandler];
  v7 = [*(a1 + 32) logDescription];
  [v6 addBreadcrumb:{@"[%@] Preparing assets", v7}];

  [*(a1 + 40) prepare];
  v8 = +[MADStateHandler sharedStateHandler];
  v9 = [*(a1 + 32) logDescription];
  [v8 addBreadcrumb:{@"[%@] Finished preparing assets", v9}];

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v3, "MADTaskCoordinator_Prepare", "", buf, 2u);
  }

  dispatch_semaphore_wait(*(*(a1 + 48) + 80), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_signal(*(*(a1 + 48) + 72));
  dispatch_group_enter(*(*(a1 + 48) + 48));
  v12 = *(a1 + 48);
  v13 = *(v12 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A523C;
  block[3] = &unk_100285BC0;
  block[4] = v12;
  dispatch_async(v13, block);
  v14 = VCPSignPostLog();
  v15 = os_signpost_id_generate(v14);

  v16 = VCPSignPostLog();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "MADTaskCoordinator_Process", "", buf, 2u);
  }

  v18 = +[MADStateHandler sharedStateHandler];
  v19 = [*(a1 + 32) logDescription];
  [v18 addBreadcrumb:{@"[%@] Processing assets", v19}];

  [*(a1 + 40) process];
  v20 = +[MADStateHandler sharedStateHandler];
  v21 = [*(a1 + 32) logDescription];
  [v20 addBreadcrumb:{@"[%@] Finished processing assets", v21}];

  v22 = VCPSignPostLog();
  v23 = v22;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v15, "MADTaskCoordinator_Process", "", buf, 2u);
  }

  dispatch_semaphore_wait(*(*(a1 + 48) + 88), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_signal(*(*(a1 + 48) + 80));
  v24 = VCPSignPostLog();
  v25 = os_signpost_id_generate(v24);

  v26 = VCPSignPostLog();
  v27 = v26;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "MADTaskCoordinator_Publish", "", buf, 2u);
  }

  v28 = +[MADStateHandler sharedStateHandler];
  v29 = [*(a1 + 32) logDescription];
  [v28 addBreadcrumb:{@"[%@] Publishing assets", v29}];

  [*(a1 + 40) publish];
  v30 = +[MADStateHandler sharedStateHandler];
  v31 = [*(a1 + 32) logDescription];
  [v30 addBreadcrumb:{@"[%@] Publishing assets", v31}];

  v32 = VCPSignPostLog();
  v33 = v32;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v25, "MADTaskCoordinator_Publish", "", buf, 2u);
  }

  dispatch_semaphore_signal(*(*(a1 + 48) + 88));
  [*(a1 + 32) retireTask:*(a1 + 40)];
  dispatch_group_enter(*(*(a1 + 48) + 48));
  dispatch_group_leave(*(*(a1 + 48) + 56));
  v34 = *(a1 + 48);
  v35 = *(v34 + 40);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001A5244;
  v36[3] = &unk_100285BC0;
  v36[4] = v34;
  dispatch_async(v35, v36);
}

void sub_1001A55A4(uint64_t a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MADTaskCoordinator_Prepare", "", buf, 2u);
  }

  v6 = +[MADStateHandler sharedStateHandler];
  v7 = [*(a1 + 32) logDescription];
  [v6 addBreadcrumb:{@"[%@] Preparing assets", v7}];

  [*(a1 + 40) prepare];
  v8 = +[MADStateHandler sharedStateHandler];
  v9 = [*(a1 + 32) logDescription];
  [v8 addBreadcrumb:{@"[%@] Finished preparing assets", v9}];

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v3, "MADTaskCoordinator_Prepare", "", buf, 2u);
  }

  v12 = VCPSignPostLog();
  v13 = os_signpost_id_generate(v12);

  v14 = VCPSignPostLog();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MADTaskCoordinator_Download", "", buf, 2u);
  }

  v16 = +[MADStateHandler sharedStateHandler];
  v17 = [*(a1 + 32) logDescription];
  [v16 addBreadcrumb:{@"[%@] Downloading assets", v17}];

  [*(a1 + 40) download];
  v18 = +[MADStateHandler sharedStateHandler];
  v19 = [*(a1 + 32) logDescription];
  [v18 addBreadcrumb:{@"[%@] Finished downloading assets", v19}];

  v20 = VCPSignPostLog();
  v21 = v20;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v13, "MADTaskCoordinator_Download", "", buf, 2u);
  }

  dispatch_semaphore_wait(*(*(a1 + 48) + 120), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_signal(*(*(a1 + 48) + 112));
  dispatch_group_enter(*(*(a1 + 48) + 48));
  v22 = *(a1 + 48);
  v23 = *(v22 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A5C4C;
  block[3] = &unk_100285BC0;
  block[4] = v22;
  dispatch_async(v23, block);
  dispatch_semaphore_wait(*(*(a1 + 48) + 80), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_signal(*(*(a1 + 48) + 120));
  v24 = VCPSignPostLog();
  v25 = os_signpost_id_generate(v24);

  v26 = VCPSignPostLog();
  v27 = v26;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "MADTaskCoordinator_Process", "", buf, 2u);
  }

  v28 = +[MADStateHandler sharedStateHandler];
  v29 = [*(a1 + 32) logDescription];
  [v28 addBreadcrumb:{@"[%@] Processing assets", v29}];

  [*(a1 + 40) process];
  v30 = +[MADStateHandler sharedStateHandler];
  v31 = [*(a1 + 32) logDescription];
  [v30 addBreadcrumb:{@"[%@] Finished processing assets", v31}];

  v32 = VCPSignPostLog();
  v33 = v32;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v25, "MADTaskCoordinator_Process", "", buf, 2u);
  }

  dispatch_semaphore_wait(*(*(a1 + 48) + 88), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_signal(*(*(a1 + 48) + 80));
  v34 = VCPSignPostLog();
  v35 = os_signpost_id_generate(v34);

  v36 = VCPSignPostLog();
  v37 = v36;
  if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_BEGIN, v35, "MADTaskCoordinator_Publish", "", buf, 2u);
  }

  v38 = +[MADStateHandler sharedStateHandler];
  v39 = [*(a1 + 32) logDescription];
  [v38 addBreadcrumb:{@"[%@] Publishing assets", v39}];

  [*(a1 + 40) publish];
  v40 = +[MADStateHandler sharedStateHandler];
  v41 = [*(a1 + 32) logDescription];
  [v40 addBreadcrumb:{@"[%@] Finished publishing assets", v41}];

  v42 = VCPSignPostLog();
  v43 = v42;
  if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_END, v35, "MADTaskCoordinator_Publish", "", buf, 2u);
  }

  dispatch_semaphore_signal(*(*(a1 + 48) + 88));
  [*(a1 + 32) retireTask:*(a1 + 40)];
  dispatch_group_enter(*(*(a1 + 48) + 48));
  dispatch_group_leave(*(*(a1 + 48) + 56));
  v44 = *(a1 + 48);
  v45 = *(v44 + 40);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001A5C54;
  v46[3] = &unk_100285BC0;
  v46[4] = v44;
  dispatch_async(v45, v46);
}

void sub_1001A5F24(uint64_t a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MADTaskCoordinator_ClusterProcess", "", buf, 2u);
  }

  v6 = +[MADStateHandler sharedStateHandler];
  v7 = [*(a1 + 32) logDescription];
  [v6 addBreadcrumb:{@"[%@] Processing cluster task", v7}];

  [*(a1 + 40) process];
  v8 = +[MADStateHandler sharedStateHandler];
  v9 = [*(a1 + 32) logDescription];
  [v8 addBreadcrumb:{@"[%@] Finished processing cluster task", v9}];

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v3, "MADTaskCoordinator_ClusterProcess", "", buf, 2u);
  }

  dispatch_semaphore_signal(*(*(a1 + 48) + 144));
  [*(a1 + 32) retireTask:*(a1 + 40)];
  dispatch_group_enter(*(*(a1 + 48) + 48));
  dispatch_group_leave(*(*(a1 + 48) + 56));
  v12 = *(a1 + 48);
  v13 = *(v12 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A6130;
  block[3] = &unk_100285BC0;
  block[4] = v12;
  dispatch_async(v13, block);
}

void sub_1001A6890()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B8510;
  qword_1002B8510 = v0;
}

void sub_1001A6F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);

  _Block_object_dispose((v44 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A70D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001A70EC(uint64_t a1, double a2)
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

void sub_1001A71CC(void *a1, void *a2, void *a3)
{
  v44 = a2;
  v43 = a3;
  v4 = +[NSMutableSet set];
  v42 = VCPRequestBGSTProgressReportKeyForTask();
  v5 = [v44 objectForKeyedSubscript:?];
  if (v5)
  {
    v6 = [v44 objectForKeyedSubscript:v42];
    v45 = [v6 intValue];
  }

  else
  {
    v45 = 0;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = +[MADPhotosSceneBackgroundSystemTask producedResultIdentifiers];
  v8 = [v7 countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (v8)
  {
    v9 = *v54;
    v10 = VCPLogToOSLogType[6];
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v53 + 1) + 8 * i);
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v10))
        {
          v13 = a1[4];
          *buf = 138412802;
          v58 = v13;
          v59 = 2112;
          v60 = v12;
          v61 = 1024;
          LODWORD(v62) = v45;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Collecting produced results %@: %d", buf, 0x1Cu);
        }

        v14 = [[BGSystemTaskResult alloc] initWithIdentifier:v12 cumulativeProductionCount:v45];
        [v4 addObject:v14];
      }

      v8 = [v7 countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v8);
  }

  v41 = VCPRequestBGSTProgressReportKeyForTask();
  v15 = [v44 objectForKeyedSubscript:?];
  if (v15)
  {
    v16 = [v44 objectForKeyedSubscript:v41];
    v46 = [v16 intValue];
  }

  else
  {
    v46 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = +[MADPhotosFaceBackgroundSystemTask producedResultIdentifiers];
  v18 = [v17 countByEnumeratingWithState:&v49 objects:v65 count:16];
  if (v18)
  {
    v19 = *v50;
    v20 = VCPLogToOSLogType[6];
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v49 + 1) + 8 * j);
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v20))
        {
          v23 = a1[4];
          *buf = 138412802;
          v58 = v23;
          v59 = 2112;
          v60 = v22;
          v61 = 1024;
          LODWORD(v62) = v46;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Collecting produced results %@: %d", buf, 0x1Cu);
        }

        v24 = [[BGSystemTaskResult alloc] initWithIdentifier:v22 cumulativeProductionCount:v46];
        [v4 addObject:v24];
      }

      v18 = [v17 countByEnumeratingWithState:&v49 objects:v65 count:16];
    }

    while (v18);
  }

  if ([v4 count])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v25 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v25))
      {
        v26 = a1[4];
        *buf = 138412290;
        v58 = v26;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Reporting produced results ...", buf, 0xCu);
      }
    }

    v27 = a1[5];
    v48 = 0;
    v28 = [v27 producedCumulativeResults:v4 error:&v48];
    v29 = v48;
    if ((v28 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
    {
      v30 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v30))
      {
        v31 = a1[4];
        *buf = 138412546;
        v58 = v31;
        v59 = 2112;
        v60 = v29;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "%@ Failed to report produced results - %@", buf, 0x16u);
      }
    }
  }

  [*(*(a1[7] + 8) + 40) stop];
  v32 = [v43 code];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v33 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v33))
    {
      v34 = a1[4];
      [*(*(a1[7] + 8) + 40) elapsedTimeSeconds];
      v36 = @"interrupted";
      *buf = 138413058;
      v58 = v34;
      v59 = 2112;
      if (!v32)
      {
        v36 = @"finished";
      }

      v60 = v36;
      v61 = 2048;
      v62 = v35;
      v63 = 1024;
      v64 = v32;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "%@ Processing %@ after %0.6fs (%d)", buf, 0x26u);
    }
  }

  if (v32 != -128 && v32 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1001A7998(a1, v32);
  }

  v37 = *(a1[8] + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = 0;

  if (MediaAnalysisLogLevel() >= 5)
  {
    v39 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v39))
    {
      v40 = a1[4];
      *buf = 138412290;
      v58 = v40;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "%@ Exiting processing task ...", buf, 0xCu);
    }
  }

  (*(a1[6] + 16))();
}

void sub_1001A7998(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = 138412546;
  v4 = v2;
  v5 = 1024;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%@ Processing failed (%d)", &v3, 0x12u);
}

void sub_1001A7D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MADSpotlightImageAssetEntry;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001A7F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1001A7F48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001A7F60(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v8 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      v9 = [*(a1 + 32) logPrefix];
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[%@][Process] Failed to obtain blastdoor media metadata: %@", &v10, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

id sub_1001A8578()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002B8520;
  v7 = qword_1002B8520;
  if (!qword_1002B8520)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001AAF4C;
    v3[3] = &unk_100283450;
    v3[4] = &v4;
    sub_1001AAF4C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001A8640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void **sub_1001A8658(CGImage *a1, CVPixelBufferRef *a2)
{
  *a2 = 0;
  Property = CGImageGetProperty();
  if (Property)
  {
    result = CVPixelBufferCreateWithIOSurface(0, Property, 0, a2);
    if (!result)
    {
      return result;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[CGImage->CVPixelBuffer] Failed to create CVPixelBuffer with existing IOSurface", &buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1001AB104();
  }

  *a2 = 0;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v8 = *&CGAffineTransformIdentity.c;
  *&buf.a = *&CGAffineTransformIdentity.a;
  *&buf.c = v8;
  *&buf.tx = *&CGAffineTransformIdentity.tx;
  cf = 0;
  ColorSpace = CGImageGetColorSpace(a1);
  v10 = ColorSpace;
  v11 = 1111970369;
  if (ColorSpace)
  {
    if (CGColorSpaceSupportsOutput(ColorSpace))
    {
      NumberOfComponents = CGColorSpaceGetNumberOfComponents(v10);
      if (NumberOfComponents == 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = 8194;
      }

      if (NumberOfComponents == 1)
      {
        v11 = 1278226488;
      }

      else
      {
        v11 = 1111970369;
      }
    }

    else
    {
      v13 = 8194;
    }

    if (CGColorSpaceSupportsOutput(v10) && !CGColorSpaceUsesExtendedRange(v10))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v13 = 8194;
  }

  v10 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  cf = v10;
  v21.a = 0.0;
  sub_100002CBC(&v21);
LABEL_20:
  value = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  pixelBufferAttributes = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(pixelBufferAttributes, kCVPixelBufferIOSurfacePropertiesKey, value);
  pixelBufferOut = 0;
  CVPixelBufferCreate(0, Width, Height, v11, pixelBufferAttributes, &pixelBufferOut);
  if (pixelBufferOut)
  {
    CVBufferSetAttachment(pixelBufferOut, kCVImageBufferCGColorSpaceKey, v10, kCVAttachmentMode_ShouldPropagate);
    LODWORD(v23) = 0;
    pixelBuffer = pixelBufferOut;
    unlockFlags = 0;
    if (pixelBufferOut)
    {
      v14 = CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
      LODWORD(v23) = v14;
      if (!v14 || os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) && sub_1001AB14C(&pixelBuffer, v14, &v23))
      {
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
        v16 = CVPixelBufferGetWidth(pixelBufferOut);
        v17 = CVPixelBufferGetHeight(pixelBufferOut);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
        v19 = CGBitmapContextCreate(BaseAddress, v16, v17, 8uLL, BytesPerRow, v10, v13);
        c = v19;
        if (v19)
        {
          v21 = buf;
          CGContextConcatCTM(v19, &v21);
          v31.size.width = Width;
          v31.size.height = Height;
          v31.origin.x = 0.0;
          v31.origin.y = 0.0;
          CGContextDrawImage(c, v31, a1);
          if (!sub_1000337A8(&v23))
          {
            v20 = pixelBufferOut;
            if (pixelBufferOut)
            {
              v20 = CFRetain(pixelBufferOut);
            }

            *a2 = v20;
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1001AB1E4();
        }

        sub_100002CBC(&c);
        if (pixelBuffer && !v23 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000D03C0();
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10003B104();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1001AB228();
  }

  sub_100002CBC(&pixelBufferOut);
  sub_100002CBC(&pixelBufferAttributes);
  sub_100002CBC(&value);
  return sub_100002CBC(&cf);
}

void sub_1001A8A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va5, a7);
  va_start(va4, a7);
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v16 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v18 = va_arg(va5, const void *);
  sub_100002CBC(va);
  sub_1000D02AC(va1);
  sub_100002CBC(va2);
  sub_100002CBC(va3);
  sub_100002CBC(va4);
  sub_100002CBC(va5);
  _Unwind_Resume(a1);
}

void sub_1001A8E40(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_1001A8ECC(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void sub_1001A8EE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = [v7 image];
    v9 = [v8 cgImage];

    if (v9)
    {
      v10 = [v7 image];
      v11 = [v10 cgImage];
      v12 = *(*(a1 + 48) + 8);
      v15 = *(v12 + 48);
      v14 = (v12 + 48);
      v13 = v15;
      if (v15)
      {
        CFRelease(v13);
        *v14 = 0;
      }

      sub_1001A8658(v11, v14);

      dispatch_semaphore_signal(*(a1 + 40));
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v18 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        v19 = [*(a1 + 32) logPrefix];
        v20 = 138412290;
        v21 = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[%@][Process] Failed to obtain cgImage from preview video", &v20, 0xCu);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v16 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      v17 = [*(a1 + 32) logPrefix];
      v20 = 138412546;
      v21 = v17;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[%@][Process] Failed to obtain blastdoor thumbnail: %@", &v20, 0x16u);
    }
  }
}

void sub_1001A9F1C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001AAB8C(uint64_t a1, void *a2)
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