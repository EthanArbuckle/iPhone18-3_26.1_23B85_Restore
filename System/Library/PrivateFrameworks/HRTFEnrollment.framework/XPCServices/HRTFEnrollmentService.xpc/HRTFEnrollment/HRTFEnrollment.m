int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100001188(id a1)
{
  qword_100016488 = os_log_create("com.apple.HRTFEnrollment", "Main");

  _objc_release_x1();
}

id sub_100003650()
{
  if (qword_1000164A0 != -1)
  {
    sub_1000085F8();
  }

  v1 = qword_100016498;

  return v1;
}

void sub_100003694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  if (a2)
  {
    sub_10000860C();
  }

  for (i = a4; i; --i)
  {
    v7 = *a5++;
    free(v7);
  }
}

void sub_100003E48(id a1)
{
  qword_100016498 = os_log_create("com.apple.HRTFEnrollment", "HRTFSerializableCaptureData");

  _objc_release_x1();
}

void sub_1000044BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (v2)
  {
    *(v1 + 24) = 0;

    v1 = *(a1 + 32);
  }

  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
}

void sub_100005344(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HRTFEnrollmentAssetDownloadProgress alloc];
  v5 = [v3 totalExpected];
  v6 = [v3 totalWritten];
  v7 = [v3 isStalled];
  [v3 expectedTimeRemaining];
  v9 = v8;

  v11 = [(HRTFEnrollmentAssetDownloadProgress *)v4 initWithTotalBytes:v5 downloadedBytes:v6 isStalled:v7 estimatedRemainingTime:v9];
  v10 = [*(*(a1 + 32) + 16) remoteObjectProxy];
  [v10 assetDownloadSessionProgressUpdate:v11];
}

void sub_100005438(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  *(v1 + 72) = 0;
}

void sub_100005508(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  [v2 _checkForAssetExistence:*(a1 + 48) assetURL:0 error:&v4];
  v3 = v4;
  (*(*(a1 + 40) + 16))();
}

void sub_100005660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005678(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000589C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[2] && v2[3])
  {
    v5 = [v2 connection];
    v3 = [v5 remoteObjectProxy];
    LODWORD(v4) = *(a1 + 72);
    [v3 updateState:*(a1 + 64) withProgress:*(a1 + 40) facePoseStatus:*(a1 + 48) earPoseStatus:*(a1 + 56) errorStatus:v4];
  }
}

void sub_1000059B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[2] && v2[3])
  {
    v4 = [v2 connection];
    v3 = [v4 remoteObjectProxy];
    [v3 updateResultSize:*(a1 + 40)];
  }
}

void sub_1000062E4(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  if (qword_1000164B0 != -1)
  {
    sub_100008710();
  }

  v5 = qword_1000164A8;
  if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[HRTFEnrollmentService] Initializing Visage session.\n", buf, 2u);
  }

  v6 = objc_opt_new();
  [v6 setWriteDebugData:0];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v6 setDelegate:WeakRetained];

  [v6 setVersion:0];
  [v6 setDebugDataRootPath:0];
  [v6 setModelsRootPath:0];
  if (_os_feature_enabled_impl())
  {
    if (qword_1000164B0 != -1)
    {
      sub_1000086E8();
    }

    v8 = qword_1000164A8;
    if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(a1 + 32) + 112);
      if (!v9)
      {
        v9 = @"nil";
      }

      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Initializing Visage session with sessionConfig.modelsRootPath %@ .\n", buf, 0xCu);
    }

    [v6 setModelsRootPath:*(*(a1 + 32) + 112)];
  }

  v24 = 0;
  v10 = [[VGHRTFSession alloc] initWithConfig:v6 error:&v24];
  v11 = v24;
  v12 = *(a1 + 32);
  v13 = *(v12 + 24);
  *(v12 + 24) = v10;

  if (!*(*(a1 + 32) + 24))
  {
    if (qword_1000164B0 != -1)
    {
      sub_1000086E8();
    }

    v14 = qword_1000164A8;
    if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[HRTFEnrollmentService] Failed to initialize Visage session\n", buf, 2u);
    }
  }

  if (v11)
  {
    v15 = v11;
    if (qword_1000164B0 != -1)
    {
      sub_1000086E8();
    }

    v16 = qword_1000164A8;
    if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
      v18 = [v15 description];
      v19 = [v18 UTF8String];
      *buf = 136315138;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to create Visage session: %s", buf, 0xCu);
    }

    v20 = [*(*(a1 + 32) + 16) remoteObjectProxy];
    [v20 sessionStarted:0 error:v15];
  }

  else
  {
    if (qword_1000164B0 != -1)
    {
      sub_1000086E8();
    }

    v21 = qword_1000164A8;
    if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[HRTFEnrollmentService] session started\n", buf, 2u);
    }

    v22 = [*(*(a1 + 32) + 16) remoteObjectProxy];
    [v22 sessionStarted:1 error:0];

    v23 = *(a1 + 32);
    v15 = *(v23 + 56);
    *(v23 + 56) = 0;
  }
}

void sub_1000066D0(id a1)
{
  if (qword_1000164B0 != -1)
  {
    sub_100008710();
  }

  v1 = qword_1000164A8;
  if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "session terminated", v2, 2u);
  }
}

void sub_1000067E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v2[3] = 0;

    v2 = *(a1 + 32);
  }

  v4 = v2[4];
  if (v4)
  {
    (*(v4 + 16))();
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = 0;

    v2 = *(a1 + 32);
  }

  v7 = v2[5];
  if (v7)
  {
    (*(v7 + 16))(v7, 0, 0, 0);
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v2 = *(a1 + 32);
  }

  v10 = v2[6];
  if (v10)
  {
    (*(v10 + 16))(v10, 0, 0, 0, 0);
    v11 = *(a1 + 32);
    v12 = *(v11 + 48);
    *(v11 + 48) = 0;
  }
}

void sub_100006994(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    v2 = [*(a1 + 40) distortionLookupTable];

    v3 = objc_opt_new();
    [v3 setLensDistortionLut:v2];
    [*(a1 + 40) depthIntrinsics];
    [v3 setIntrinsicMatrix:?];
    [*(a1 + 40) referenceDimensions];
    v31 = v4;
    [*(a1 + 40) referenceDimensions];
    v5.f64[0] = v31;
    v5.f64[1] = v6;
    [v3 setIntrinsicMatrixReferenceDimension:COERCE_DOUBLE(vcvt_f32_f64(v5))];
    [*(a1 + 40) distortionCenter];
    v32 = v7;
    [*(a1 + 40) distortionCenter];
    v8.f64[0] = v32;
    v8.f64[1] = v9;
    [v3 setLensDistortionCenter:COERCE_DOUBLE(vcvt_f32_f64(v8))];
    v10 = objc_opt_new();
    v11 = [*(a1 + 40) colorSurface];
    [v10 setColorBuffer:v11];

    [*(a1 + 40) colorIntrinsics];
    [v10 setColorIntrinsics:?];
    v12 = [*(a1 + 40) depthSurface];
    [v10 setDepthBuffer:v12];

    [v10 setDepthCalibrationData:v3];
    [*(a1 + 40) timestamp];
    [v10 setTimestamp:?];
    v13 = *(a1 + 48);
    if (v13)
    {
      v14 = *(a1 + 32);
      [v13 bounds];
      v14[10] = v15;
      v14[11] = v16;
      v14[12] = v17;
      v14[13] = v18;
      v19 = objc_opt_new();
      [*(a1 + 48) bounds];
      [v19 setBoundingBox:?];
      v20 = [NSNumber alloc];
      [*(a1 + 48) yawAngle];
      v21 = [v20 initWithDouble:?];
      [v19 setYawAngle:v21];

      v22 = [NSNumber alloc];
      [*(a1 + 48) rollAngle];
      v23 = [v22 initWithDouble:?];
      [v19 setRollAngle:v23];

      [v19 setTrackedId:{objc_msgSend(*(a1 + 48), "faceID")}];
    }

    else
    {
      v19 = 0;
    }

    v24 = *(*(a1 + 32) + 24);
    v33 = 0;
    [v24 processCaptureData:v10 faceData:v19 userData:0 error:&v33];
    v25 = v33;
    [*(*(a1 + 32) + 24) waitWithError:0];
    if (v25)
    {
      v26 = v25;
      if (qword_1000164B0 != -1)
      {
        sub_1000086E8();
      }

      v27 = qword_1000164A8;
      if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_ERROR))
      {
        v28 = v27;
        v29 = [v26 description];
        v30 = [v29 UTF8String];
        *buf = 136315138;
        v35 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "error in HRTF processing: %s", buf, 0xCu);
      }
    }
  }
}

void sub_100006D60(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[7];
    if (v4 >= [v2 length])
    {
      v3 = 0;
    }

    else if (v3 > [*(a1[4] + 56) length] - a1[7])
    {
      v3 = [*(a1[4] + 56) length] - a1[7];
    }

    v5 = [[NSData alloc] initWithBytes:objc_msgSend(*(a1[4] + 56) length:{"bytes") + a1[7], v3}];
    (*(a1[5] + 16))();
  }
}

void sub_100007444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 240), 8);
  _Block_object_dispose((v35 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1000074B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (qword_1000164B0 != -1)
  {
    sub_100008710();
  }

  v7 = qword_1000164A8;
  if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
  {
    v36 = 134217984;
    v37 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Download completed for HRTF asset with status: %zu", &v36, 0xCu);
  }

  *(*(*(a1 + 64) + 8) + 24) = a2;
  if (a2 > 50)
  {
    if (a2 != 51)
    {
      if (a2 == 65)
      {
        v8 = 1;
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v8 = 4;
  }

  else
  {
    if (a2 != 37)
    {
      if (a2 == 48)
      {
        v8 = 2;
        goto LABEL_15;
      }

LABEL_12:
      v8 = 0;
      goto LABEL_15;
    }

    v8 = 3;
  }

LABEL_15:
  *(*(*(a1 + 72) + 8) + 24) = v8;
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), a3);
  v9 = *(*(*(a1 + 64) + 8) + 24);
  if (!v9)
  {
    goto LABEL_21;
  }

  if (v9 == 10)
  {
    if (qword_1000164B0 != -1)
    {
      sub_1000086E8();
    }

    v10 = qword_1000164A8;
    if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "HRTF asset already installed", &v36, 2u);
    }

LABEL_21:
    if ([*(a1 + 32) refreshState])
    {
      if (qword_1000164B0 != -1)
      {
        sub_1000086E8();
      }

      v11 = qword_1000164A8;
      if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v13 = v11;
        v14 = [v12 assetId];
        v15 = [*(a1 + 32) getLocalFileUrl];
        v16 = [v15 path];
        v36 = 138412546;
        v37 = v14;
        v38 = 2112;
        v39 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Download of HRTF asset with id: %@ successful, at download path: %@", &v36, 0x16u);
      }

      v17 = [*(a1 + 32) getLocalFileUrl];
      v18 = [v17 path];
      v19 = *(*(a1 + 96) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      if (*(*(*(a1 + 96) + 8) + 40))
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
        v21 = *(*(*(a1 + 96) + 8) + 40);
      }

      else
      {
        v21 = 0;
      }

      objc_storeStrong((*(a1 + 40) + 112), v21);
      if (qword_1000164B0 != -1)
      {
        sub_1000086E8();
      }

      v32 = qword_1000164A8;
      if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
      {
        v33 = *(*(*(a1 + 96) + 8) + 40);
        v34 = *(*(*(a1 + 80) + 8) + 40);
        if (!v34)
        {
          v34 = @"nil";
        }

        v36 = 138412546;
        v37 = v33;
        v38 = 2112;
        v39 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "downloadAsset succeeded path %@ error %@", &v36, 0x16u);
      }

      *(*(*(a1 + 104) + 8) + 24) = 0;
      if (*(a1 + 112) == 1)
      {
        dispatch_group_leave(*(a1 + 48));
      }

      goto LABEL_46;
    }

    if (qword_1000164B0 != -1)
    {
      sub_1000086E8();
    }

    v22 = qword_1000164A8;
    if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 32);
      v24 = v22;
      v25 = [v23 assetId];
      v36 = 138412290;
      v37 = v25;
      v26 = "Failed to refresh state for asset id: %@";
      v27 = v24;
      v28 = 12;
LABEL_36:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, v26, &v36, v28);

      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (qword_1000164B0 != -1)
  {
    sub_1000086E8();
  }

  v29 = qword_1000164A8;
  if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
  {
    v30 = *(a1 + 32);
    v24 = v29;
    v25 = [v30 assetId];
    v31 = *(*(*(a1 + 64) + 8) + 24);
    v36 = 138412546;
    v37 = v25;
    v38 = 2048;
    v39 = v31;
    v26 = "Downloading of HRTF asset failed for asset id %@ with result: %zu";
    v27 = v24;
    v28 = 22;
    goto LABEL_36;
  }

LABEL_46:
  v35 = *(a1 + 56);
  if (v35)
  {
    (*(v35 + 16))(v35, *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 96) + 8) + 40), *(*(*(a1 + 80) + 8) + 40), *(*(*(a1 + 72) + 8) + 24));
  }
}

void sub_100007F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_100007FB4(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (qword_1000164B0 != -1)
  {
    sub_100008710();
  }

  v7 = qword_1000164A8;
  if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
  {
    v35 = 134217984;
    v36 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Download completed for HRTF asset with status: %zu", &v35, 0xCu);
  }

  *(*(*(a1 + 64) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  v8 = *(*(*(a1 + 64) + 8) + 24);
  if (!v8)
  {
LABEL_11:
    if ([*(a1 + 32) refreshState])
    {
      if (qword_1000164B0 != -1)
      {
        sub_1000086E8();
      }

      v10 = qword_1000164A8;
      if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v12 = v10;
        v13 = [v11 assetId];
        v14 = [*(a1 + 32) getLocalFileUrl];
        v15 = [v14 path];
        v35 = 138412546;
        v36 = v13;
        v37 = 2112;
        v38 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Download of HRTF asset with id: %@ successful, at download path: %@", &v35, 0x16u);
      }

      v16 = [*(a1 + 32) getLocalFileUrl];
      v17 = [v16 path];
      v18 = *(*(a1 + 88) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      if (*(*(*(a1 + 88) + 8) + 40))
      {
        *(*(*(a1 + 80) + 8) + 24) = 1;
        v20 = *(*(*(a1 + 88) + 8) + 40);
      }

      else
      {
        v20 = 0;
      }

      objc_storeStrong((*(a1 + 40) + 112), v20);
      if (qword_1000164B0 != -1)
      {
        sub_1000086E8();
      }

      v31 = qword_1000164A8;
      if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
      {
        v32 = *(*(*(a1 + 88) + 8) + 40);
        v33 = *(*(*(a1 + 72) + 8) + 40);
        if (!v33)
        {
          v33 = @"nil";
        }

        v35 = 138412546;
        v36 = v32;
        v37 = 2112;
        v38 = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "downloadAsset succeeded path %@ error %@", &v35, 0x16u);
      }

      *(*(*(a1 + 96) + 8) + 24) = 0;
      if (*(a1 + 104) == 1)
      {
        dispatch_group_leave(*(a1 + 48));
      }

      goto LABEL_36;
    }

    if (qword_1000164B0 != -1)
    {
      sub_1000086E8();
    }

    v21 = qword_1000164A8;
    if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
    {
      v22 = *(a1 + 32);
      v23 = v21;
      v24 = [v22 assetId];
      v35 = 138412290;
      v36 = v24;
      v25 = "Failed to refresh state for asset id: %@";
      v26 = v23;
      v27 = 12;
LABEL_26:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, v25, &v35, v27);

      goto LABEL_36;
    }

    goto LABEL_36;
  }

  if (v8 == 10)
  {
    if (qword_1000164B0 != -1)
    {
      sub_1000086E8();
    }

    v9 = qword_1000164A8;
    if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "HRTF asset already installed", &v35, 2u);
    }

    goto LABEL_11;
  }

  if (qword_1000164B0 != -1)
  {
    sub_1000086E8();
  }

  v28 = qword_1000164A8;
  if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
  {
    v29 = *(a1 + 32);
    v23 = v28;
    v24 = [v29 assetId];
    v30 = *(*(*(a1 + 64) + 8) + 24);
    v35 = 138412546;
    v36 = v24;
    v37 = 2048;
    v38 = v30;
    v25 = "Downloading of HRTF asset failed for asset id %@ with result: %zu";
    v26 = v23;
    v27 = 22;
    goto LABEL_26;
  }

LABEL_36:
  v34 = *(a1 + 56);
  if (v34)
  {
    (*(v34 + 16))(v34, *(*(*(a1 + 80) + 8) + 24), *(*(*(a1 + 88) + 8) + 40), *(*(*(a1 + 72) + 8) + 40));
  }
}

void sub_100008548(id a1)
{
  qword_1000164A8 = os_log_create("com.apple.HRTFEnrollment", "HRTFEnrollmentService");

  _objc_release_x1();
}