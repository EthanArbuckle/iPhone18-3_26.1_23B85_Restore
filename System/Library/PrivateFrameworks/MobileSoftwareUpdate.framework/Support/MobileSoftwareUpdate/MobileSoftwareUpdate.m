uint64_t NRDGetUpdateBrainConnection(void *a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = objc_alloc_init(NRDUpdateDaemonClientImpl);
  if (v8)
  {
    v38[0] = @"ActionText";
    v38[1] = @"ElapsedTime";
    v39[0] = @"Connecting to RecoveryOSUpdateBrain...";
    v39[1] = &off_100053B80;
    v38[2] = @"PercentComplete";
    v38[3] = @"PercentBytesComplete";
    v39[2] = &off_100053B80;
    v39[3] = &off_100053B80;
    v9 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
    v10 = v9;
    if (a3)
    {
      a3(v9, a4);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __NRDGetUpdateBrainConnection_block_invoke;
    v15[3] = &unk_100048E58;
    v17 = &v30;
    v18 = &v20;
    v19 = &v24;
    v11 = dispatch_semaphore_create(0);
    v16 = v11;
    [(NRDUpdateDaemonClientImpl *)v8 acquireNRDUpdateBrain:0 reply:v15];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v36 = NSDebugDescriptionErrorKey;
    v37 = @"could not alloc/init NRDUpdated object";
    v10 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v12 = [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:14 userInfo:v10];
    v11 = v25[5];
    v25[5] = v12;
  }

  if (a1)
  {
    *a1 = v31[5];
  }

  if (a2)
  {
    *a2 = v25[5];
  }

  v13 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v13 & 1;
}

void sub_1000017D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __NRDGetUpdateBrainConnection_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if (a3)
  {
    v6 = [a3 copy];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id NRDAcquireActivityLock(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v5 = a1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__296;
  v20 = __Block_byref_object_dispose__297;
  v21 = 0;
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___NRDUpdateBrainClientInterface])
  {
    v6 = v5;
    v22[0] = @"ActionText";
    v22[1] = @"ElapsedTime";
    v23[0] = @"Waiting for RecoveryOSUpdateBrain...";
    v23[1] = &off_100053B80;
    v22[2] = @"PercentComplete";
    v22[3] = @"PercentBytesComplete";
    v23[2] = &off_100053B80;
    v23[3] = &off_100053B80;
    v7 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
    v8 = v7;
    if (a2)
    {
      a2(v7, a3);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __NRDAcquireActivityLock_block_invoke;
    v13[3] = &unk_100048E80;
    v15 = &v16;
    v9 = dispatch_semaphore_create(0);
    v14 = v9;
    [v6 finishNeRDUpdate:v13];
    v10 = dispatch_time(0, 300000000000);
    dispatch_semaphore_wait(v9, v10);
  }

  v11 = objc_retainBlock(v17[5]);
  _Block_object_dispose(&v16, 8);

  return v11;
}

void sub_100001AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __Block_byref_object_copy__296(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

intptr_t __NRDAcquireActivityLock_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void NRDReleaseActivityLock(void *a1)
{
  if (a1)
  {
    v1 = objc_retainBlock(a1);
    v1[2]();
  }
}

uint64_t NRDQueryRecoveryOS(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void (*a8)(uint64_t, uint64_t), uint64_t a9)
{
  v16 = a1;
  v28 = a2;
  v17 = a3;
  v18 = a4;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy_;
  v55 = __Block_byref_object_dispose_;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy_;
  v43 = __Block_byref_object_dispose_;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if ([v16 conformsToProtocol:&OBJC_PROTOCOL___NRDUpdateBrainClientInterface])
  {
    v19 = v16;
    v59[0] = @"ActionText";
    v59[1] = @"ElapsedTime";
    v60[0] = @"Checking for RecoveryOS update...";
    v60[1] = &off_100053B80;
    v59[2] = @"PercentComplete";
    v59[3] = @"PercentBytesComplete";
    v60[2] = &off_100053B80;
    v60[3] = &off_100053B80;
    v20 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:4];
    v21 = v20;
    if (a8)
    {
      a8(v20, a9);
    }

    v22 = dispatch_semaphore_create(0);
    v23 = [&off_100053CE8 mutableCopy];
    [v23 addEntriesFromDictionary:v18];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __NRDQueryRecoveryOS_block_invoke;
    v29[3] = &unk_100048EA8;
    v31 = &v45;
    v32 = &v51;
    v33 = &v35;
    v34 = &v39;
    v24 = v22;
    v30 = v24;
    [v19 queryNeRDUpdate:v28 build:v17 options:v23 callback:v29];
    dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v57[0] = NSDebugDescriptionErrorKey;
    v57[1] = @"InvalidArgument";
    v58[0] = @"bad brain connection object";
    v19 = [NSString stringWithFormat:@"brainConn=%@", v16];
    v58[1] = v19;
    v21 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
    v25 = [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:9 userInfo:v21];
    v24 = v40[5];
    v40[5] = v25;
  }

  if (a5)
  {
    *a5 = v52[5];
  }

  if (a6)
  {
    *a6 = v46[5];
  }

  if (a7)
  {
    *a7 = v40[5];
  }

  v26 = *(v36 + 24);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  return v26 & 1;
}

void sub_100001FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void __NRDQueryRecoveryOS_block_invoke(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v43 = a2;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 copy];
    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (!v9)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  v15 = objc_alloc_init(NSMutableDictionary);
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  if (a3)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:&__kCFBooleanTrue forKeyedSubscript:@"targetNeRDOSIsRequired"];
    v18 = [v43 copy];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
    goto LABEL_8;
  }

  if (v9)
  {
    v20 = [v9 objectForKeyedSubscript:@"ProductVersion"];
    if (v20)
    {
LABEL_8:

      if (!v43)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  if (!v43)
  {
    goto LABEL_16;
  }

  [*(*(*(a1 + 40) + 8) + 40) setObject:&__kCFBooleanFalse forKeyedSubscript:@"targetNeRDOSIsRequired"];
  v21 = [v43 copy];
  v22 = *(*(a1 + 48) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

LABEL_12:
  v24 = [v43 objectForKeyedSubscript:@"OSVersion"];

  if (v24)
  {
    v25 = [v43 objectForKeyedSubscript:@"OSVersion"];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v25 forKeyedSubscript:@"targetNeRDOSVersion"];
  }

  v26 = [v43 objectForKeyedSubscript:@"Build"];

  if (v26)
  {
    v27 = [v43 objectForKeyedSubscript:@"Build"];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v27 forKeyedSubscript:@"targetNeRDOSBuild"];
  }

LABEL_16:
  *(*(*(a1 + 56) + 8) + 24) = 1;
  if (!v9)
  {
    goto LABEL_29;
  }

LABEL_17:
  v28 = [v9 objectForKeyedSubscript:@"ProductBuild"];

  if (v28)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v29 = objc_alloc_init(NSMutableDictionary);
      v30 = *(*(a1 + 40) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;
    }

    v32 = [v9 objectForKeyedSubscript:@"ProductBuild"];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v32 forKeyedSubscript:@"currentNeRDOSVersion"];
  }

  v33 = [v9 objectForKeyedSubscript:@"ReleaseType"];

  if (v33)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v34 = objc_alloc_init(NSMutableDictionary);
      v35 = *(*(a1 + 40) + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = v34;
    }

    v37 = [v9 objectForKeyedSubscript:@"ReleaseType"];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v37 forKeyedSubscript:@"currentNeRDOSType"];
  }

  v38 = [v9 objectForKeyedSubscript:@"BrainVersion"];

  if (v38)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v39 = objc_alloc_init(NSMutableDictionary);
      v40 = *(*(a1 + 40) + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;
    }

    v42 = [v9 objectForKeyedSubscript:@"BrainVersion"];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v42 forKeyedSubscript:@"nerdBrainVersion"];
  }

LABEL_29:
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t NRDDownloadRecoveryOS(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  v23 = a2;
  v24 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if ([v13 conformsToProtocol:&OBJC_PROTOCOL___NRDUpdateBrainClientInterface])
  {
    v14 = v13;
    v15 = dispatch_semaphore_create(0);
    v44[0] = @"Foreground";
    v44[1] = @"Timeout";
    v45[0] = &__kCFBooleanTrue;
    v16 = [NSNumber numberWithUnsignedInteger:3600];
    v45[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
    v18 = [v17 mutableCopy];

    [v18 addEntriesFromDictionary:v24];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __NRDDownloadRecoveryOS_block_invoke;
    v31[3] = &__block_descriptor_48_e8_v16__0d8l;
    v31[4] = a6;
    v31[5] = a7;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __NRDDownloadRecoveryOS_block_invoke_2;
    v25[3] = &unk_100048EF0;
    v29 = a6;
    v30 = a7;
    v27 = &v36;
    v28 = &v32;
    v19 = v15;
    v26 = v19;
    [v14 downloadNeRDUpdate:v23 options:v18 progress:v31 completion:v25];
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v42[0] = NSDebugDescriptionErrorKey;
    v42[1] = @"InvalidArgument";
    v43[0] = @"bad brain connection object";
    v14 = [NSString stringWithFormat:@"brainConn=%@", v13];
    v43[1] = v14;
    v19 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
    v20 = [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:9 userInfo:v19];
    v18 = v37[5];
    v37[5] = v20;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = v37[5];
  }

  v21 = *(v33 + 24);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v21 & 1;
}

void sub_10000277C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void __NRDDownloadRecoveryOS_block_invoke(uint64_t a1, double a2)
{
  v3 = [NSNumber numberWithDouble:a2 * 100.0 * 0.075 + 90.0];
  v7[0] = @"ActionText";
  v7[1] = @"ElapsedTime";
  v8[0] = @"Downloading RecoveryOS update...";
  v8[1] = &off_100053B80;
  v7[2] = @"PercentComplete";
  v7[3] = @"PercentBytesComplete";
  v8[2] = v3;
  v8[3] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6(v4, *(a1 + 40));
  }
}

intptr_t __NRDDownloadRecoveryOS_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!a2)
  {
    v11[0] = @"ActionText";
    v11[1] = @"ElapsedTime";
    v12[0] = @"Downloading RecoveryOS completed.";
    v12[1] = &off_100053B80;
    v11[2] = @"PercentComplete";
    v11[3] = @"PercentBytesComplete";
    v12[2] = &off_100053D88;
    v12[3] = &off_100053D88;
    v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
    v8 = v7;
    v9 = *(a1 + 56);
    if (v9)
    {
      v9(v7, *(a1 + 64));
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t NRDInstallRecoveryOS(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if ([v13 conformsToProtocol:&OBJC_PROTOCOL___NRDUpdateBrainClientInterface])
  {
    v16 = v13;
    v17 = dispatch_semaphore_create(0);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __NRDInstallRecoveryOS_block_invoke;
    v31[3] = &__block_descriptor_48_e8_v16__0d8l;
    v31[4] = a6;
    v31[5] = a7;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __NRDInstallRecoveryOS_block_invoke_2;
    v24[3] = &unk_100048F58;
    v29 = a6;
    v30 = a7;
    v27 = &v36;
    v28 = &v32;
    v18 = v16;
    v25 = v18;
    v19 = v17;
    v26 = v19;
    [v18 installNeRDUpdate:v14 options:v15 progress:v31 completion:v24];
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);

    v20 = v25;
  }

  else
  {
    v42[0] = NSDebugDescriptionErrorKey;
    v42[1] = @"InvalidArgument";
    v43[0] = @"bad brain connection object";
    v18 = [NSString stringWithFormat:@"brainConn=%@", v13];
    v43[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
    v21 = [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:9 userInfo:v19];
    v20 = v37[5];
    v37[5] = v21;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = v37[5];
  }

  v22 = *(v33 + 24);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v22 & 1;
}

void sub_100002CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void __NRDInstallRecoveryOS_block_invoke(uint64_t a1, double a2)
{
  v3 = [NSNumber numberWithDouble:(a2 * 0.025 + 0.075) * 100.0 + 90.0];
  v7[0] = @"ActionText";
  v7[1] = @"ElapsedTime";
  v8[0] = @"Installing RecoveryOS update...";
  v8[1] = &off_100053B80;
  v7[2] = @"PercentComplete";
  v7[3] = @"PercentBytesComplete";
  v8[2] = v3;
  v8[3] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6(v4, *(a1 + 40));
  }
}

intptr_t __NRDInstallRecoveryOS_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 copy];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (a2)
  {
    [*(a1 + 32) purgeNeRDUpdate:&__block_literal_global];
  }

  else
  {
    v11[0] = @"ActionText";
    v11[1] = @"ElapsedTime";
    v12[0] = @"Installing RecoveryOS completed.";
    v12[1] = &off_100053B80;
    v11[2] = @"PercentComplete";
    v11[3] = @"PercentBytesComplete";
    v12[2] = &off_100053D98;
    v12[3] = &off_100053D98;
    v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
    v8 = v7;
    v9 = *(a1 + 64);
    if (v9)
    {
      v9(v7, *(a1 + 72));
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t NRDCancelRecoveryOSUpdate(void *a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = a1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___NRDUpdateBrainClientInterface])
  {
    v8 = v7;
    v33[0] = @"ActionText";
    v33[1] = @"ElapsedTime";
    v34[0] = @"Canceling RecoveryOS update...";
    v34[1] = &off_100053B80;
    v33[2] = @"PercentComplete";
    v33[3] = @"PercentBytesComplete";
    v34[2] = &off_100053B80;
    v34[3] = &off_100053B80;
    v9 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
    v10 = v9;
    if (a3)
    {
      a3(v9, a4);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __NRDCancelRecoveryOSUpdate_block_invoke;
    v15[3] = &unk_100048EF0;
    v19 = a3;
    v20 = a4;
    v17 = &v25;
    v18 = &v21;
    v11 = dispatch_semaphore_create(0);
    v16 = v11;
    [v8 cancelNeRDUpdate:0 callback:v15];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v32[0] = @"bad brain connection object";
    v31[0] = NSDebugDescriptionErrorKey;
    v31[1] = @"InvalidArgument";
    v8 = [NSString stringWithFormat:@"brainConn=%@", v7];
    v32[1] = v8;
    v10 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
    v12 = [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:9 userInfo:v10];
    v11 = v26[5];
    v26[5] = v12;
  }

  if (a2)
  {
    *a2 = v26[5];
  }

  v13 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v13 & 1;
}

void sub_100003250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

intptr_t __NRDCancelRecoveryOSUpdate_block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!a2)
  {
    v11[0] = @"ActionText";
    v11[1] = @"ElapsedTime";
    v12[0] = @"Canceling RecoveryOS update completed.";
    v12[1] = &off_100053B80;
    v11[2] = @"PercentComplete";
    v11[3] = @"PercentBytesComplete";
    v12[2] = &off_100053B80;
    v12[3] = &off_100053B80;
    v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
    v8 = v7;
    v9 = *(a1 + 56);
    if (v9)
    {
      v9(v7, *(a1 + 64));
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100004410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef copy_nvram_variable_with_system_nvram_check(const __CFString *a1)
{
  mainPort = 0;
  if (IOMasterPort(bootstrap_port, &mainPort))
  {
    v7 = @"Could not get master port\n";
  }

  else
  {
    v9 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
    if (v9)
    {
      v10 = v9;
      CFProperty = IORegistryEntryCreateCFProperty(v9, a1, kCFAllocatorDefault, 0);
      IOObjectRelease(v10);
      return CFProperty;
    }

    v7 = @"Could not get options entry from the device tree\n";
  }

  logfunction("", 1, v7, v2, v3, v4, v5, v6, v12);
  return 0;
}

BOOL set_nvram_object_with_system_nvram_check(const __CFString *a1, _BOOL8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v18 = @"Can't insert nil key into registry\n";
LABEL_10:
    logfunction("", 1, v18, a4, a5, a6, a7, a8, v20);
    return 0;
  }

  v8 = a2;
  if (!a2)
  {
    logfunction("", 1, @"Can't insert nil object into registry\n", a4, a5, a6, a7, a8, v20);
    return v8;
  }

  v10 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/options");
  if (!v10)
  {
    v18 = @"Failed to locate IODeviceTree options in IO registry\n";
    goto LABEL_10;
  }

  v11 = v10;
  v12 = IORegistryEntrySetCFProperty(v10, a1, v8);
  v8 = v12 == 0;
  if (v12)
  {
    logfunction("", 1, @"Failed to set key %@ in IO registry: %d\n", v13, v14, v15, v16, v17, a1);
  }

  IOObjectRelease(v11);
  return v8;
}

uint64_t msu_delete_nvram_variable_if_exists(const __CFString *a1, _BYTE *a2)
{
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *buffer = 0u;
  v15 = 0u;
  v4 = msu_nvram_exists(a1);
  CFStringGetCString(a1, buffer, 511, 0x8000100u);
  if (!v4)
  {
    v12 = @"%s: NVRAM %s not found..Nothing to do\n\n";
    goto LABEL_5;
  }

  v10 = set_nvram_object_with_system_nvram_check(@"IONVRAM-DELETE-PROPERTY", a1, 0, v5, v6, v7, v8, v9);
  v11 = 0;
  if (v10)
  {
    v12 = @"%s: Deleted value %s\n\n";
LABEL_5:
    v11 = 1;
    logfunction("", 1, v12, v5, v6, v7, v8, v9, "msu_delete_nvram_variable_if_exists");
  }

  *a2 = v4;
  return v11;
}

BOOL msu_nvram_exists(const __CFString *a1)
{
  v1 = copy_nvram_variable_with_system_nvram_check(a1);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

BOOL msu_sync_nvram(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = @"IONVRAM-FORCESYNCNOW-PROPERTY";
  }

  else
  {
    v8 = @"IONVRAM-SYNCNOW-PROPERTY";
  }

  return set_nvram_object_with_system_nvram_check(v8, v8, 0, a4, a5, a6, a7, a8);
}

uint64_t msuSharedLogger()
{
  if (msuSharedLogger_pred != -1)
  {
    msuSharedLogger_cold_1();
  }

  return msuSharedLogger___instance;
}

id MSUCopyPreviousUpdateAllToleratedFailures()
{
  v0 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"MSUCopyPreviousUpdateAllToleratedFailures";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", &v5, 0xCu);
  }

  v1 = copyPreviousToleratedFailures(1);
  v2 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [NSDictionary safeSummaryForDictionary:v1];
    v5 = 138412546;
    v6 = @"MSUCopyPreviousUpdateAllToleratedFailures";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | DONE | toleratedFailures:%{public}@", &v5, 0x16u);
  }

  return v1;
}

id copyPreviousToleratedFailures(int a1)
{
  if (!a1)
  {
    v6 = [NSDictionary dictionaryWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/lastOTA/ota_tolerated_failures.plist"];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__2;
    v20 = __Block_byref_object_dispose__2;
    v21 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__2;
    v26 = __Block_byref_object_dispose__2;
    v27 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __retrieve_previous_update_first_tolerated_failure_block_invoke;
    v15[3] = &unk_100049238;
    v15[4] = &v16;
    v15[5] = &v22;
    [(NSDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v15];
    v7 = *(v17 + 40);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __retrieve_previous_update_first_tolerated_failure_block_invoke_2;
      v14[3] = &unk_100049238;
      v14[4] = &v16;
      v14[5] = &v22;
      [(NSDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v14];
      v7 = *(v17 + 40);
      v8 = v7 != 0;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    v9 = [objc_msgSend(v7 objectForKeyedSubscript:{@"StepName", "compare:", @"update_baseband"}];
    v10 = &kMSUUpdateToleratedStepValueUpdateBaseband;
    if (v9)
    {
      v10 = &kMSUUpdateToleratedStepValueUnrecognizedStep;
    }

    v11 = *v10;
    if (*v10)
    {
      v3 = objc_alloc_init(NSMutableDictionary);
      [v3 setObject:v11 forKeyedSubscript:@"StepIdentifier"];
      [v3 setObject:objc_msgSend(*(v17 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"StepName", @"StepName"}];
      [v3 setObject:objc_msgSend(*(v17 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", v23[5]), @"EventUnique"}];
      if (v8)
      {
        [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"RebootRetry"];
        [v3 setObject:objc_msgSend(*(v17 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"RetryFailureNumber", @"FailureNumber"}];
        [v3 setObject:objc_msgSend(*(v17 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"RetryResult", @"Result"}];
        [v3 setObject:objc_msgSend(*(v17 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"RetryError", @"Error"}];
        v12 = @"RetrySkipped";
      }

      else
      {
        [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"RebootRetry"];
        [v3 setObject:objc_msgSend(*(v17 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"InitialFailureNumber", @"FailureNumber"}];
        [v3 setObject:objc_msgSend(*(v17 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"InitialResult", @"Result"}];
        [v3 setObject:objc_msgSend(*(v17 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"InitialError", @"Error"}];
        v12 = @"InitialSkipped";
      }

      [v3 setObject:objc_msgSend(*(v17 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", v12), @"Skipped"}];
      goto LABEL_16;
    }

LABEL_13:
    v3 = 0;
LABEL_16:
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v16, 8);
    return v3;
  }

  v1 = [NSDictionary dictionaryWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/lastOTA/ota_tolerated_failures.plist"];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_alloc_init(NSMutableArray);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = __retrieve_previous_update_all_tolerated_failures_block_invoke;
  v19 = &unk_100049260;
  v20 = @"retrieve_previous_update_all_tolerated_failures";
  v21 = v4;
  [(NSDictionary *)v2 enumerateKeysAndObjectsUsingBlock:&v16];
  v5 = [[NSSortDescriptor alloc] initWithKey:@"Index" ascending:1];
  v22 = v5;
  [v3 setObject:objc_msgSend(v4 forKeyedSubscript:{"sortedArrayUsingDescriptors:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v22, 1)), @"toleratedStepsArray"}];

  return v3;
}

void sub_100007164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose((v14 - 104), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __retrieve_previous_update_first_tolerated_failure_block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a2 isEqualToString:@"uuid"];
  if ((result & 1) == 0)
  {
    result = [objc_msgSend(a3 objectForKeyedSubscript:{@"InitialAttempted", "BOOLValue"}];
    if (result)
    {
      v7 = *(*(a1 + 32) + 8);
      v9 = *(v7 + 40);
      v8 = (v7 + 40);
      result = v9;
      if (v9)
      {
        v10 = [result objectForKeyedSubscript:@"InitialFailureNumber"];
        v11 = [a3 objectForKeyedSubscript:@"InitialFailureNumber"];
        LODWORD(v10) = [v10 intValue];
        result = [v11 intValue];
        if (result > v10)
        {
          return result;
        }

        v8 = (*(*(a1 + 32) + 8) + 40);
      }

      *v8 = a3;
      *(*(*(a1 + 40) + 8) + 40) = a2;
    }
  }

  return result;
}

id __retrieve_previous_update_first_tolerated_failure_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 objectForKeyedSubscript:{@"RetryAttempted", "BOOLValue"}];
  if (result)
  {
    v7 = *(*(a1 + 32) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    result = v9;
    if (v9)
    {
      v10 = [result objectForKeyedSubscript:@"RetryFailureNumber"];
      v11 = [a3 objectForKeyedSubscript:@"RetryFailureNumber"];
      LODWORD(v10) = [v10 intValue];
      result = [v11 intValue];
      if (result > v10)
      {
        return result;
      }

      v8 = (*(*(a1 + 32) + 8) + 40);
    }

    *v8 = a3;
    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  return result;
}

void __retrieve_previous_update_all_tolerated_failures_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (([a2 isEqualToString:@"uuid"] & 1) == 0)
  {
    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"InitialAttempted", "BOOLValue"}])
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      if (v5)
      {
        v6 = v5;
        [v5 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"StepName", @"CheckPoint"}];
        [v6 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"InitialFailureNumber", @"Index"}];
        [v6 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"InitialError", @"Description"}];
        [v6 setObject:@"initial" forKeyedSubscript:@"Attempt"];
        [v6 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"InitialResult", @"rcode"}];
        [*(a1 + 40) addObject:v6];
      }

      else if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
      {
        __retrieve_previous_update_all_tolerated_failures_block_invoke_cold_1(a1);
      }
    }

    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"RetryAttempted", "BOOLValue"}])
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      if (v7)
      {
        v8 = v7;
        [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"StepName", @"CheckPoint"}];
        [v8 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"RetryFailureNumber", @"Index"}];
        [v8 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"RetryError", @"Description"}];
        [v8 setObject:@"reboot-retry" forKeyedSubscript:@"Attempt"];
        [v8 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"RetryResult", @"rcode"}];
        [*(a1 + 40) addObject:v8];
      }

      else if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
      {
        __retrieve_previous_update_all_tolerated_failures_block_invoke_cold_2(a1);
      }
    }
  }
}

void sub_1000077E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t trigger_cache_delete(uint64_t a1, const void *a2, int a3, void *a4)
{
  v6 = a1;
  valuePtr = a1;
  v42 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  if (&_os_variant_uses_ephemeral_storage && os_variant_uses_ephemeral_storage())
  {
    v12 = 1;
    logfunction("", 1, @"Skipping CacheDelete for %lld bytes (urgencyLevel=%d), %s\n", v7, v8, v9, v10, v11, v6);
    goto LABEL_24;
  }

  v18 = dispatch_semaphore_create(0);
  if (v18)
  {
    logfunction("", 1, @"Triggering CacheDelete for %lld bytes (urgencyLevel=%d)\n", v13, v14, v15, v16, v17, v6);
    v19 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v42);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v27 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"CACHE_DELETE_VOLUME", a2);
      CFDictionarySetValue(v27, @"CACHE_DELETE_AMOUNT", v19);
      CFDictionarySetValue(v27, @"CACHE_DELETE_URGENCY_LIMIT", v20);
      if (_os_feature_enabled_impl())
      {
        logfunction("", 1, @"[PAS] Reserved Auto-Update Space will be used.\n", v28, v29, v30, v31, v32, v37);
        CFDictionarySetValue(v27, @"CACHE_DELETE_RELEASE_SPACE", kCFBooleanTrue);
      }

      CFRetain(v27);
      dispatch_retain(v18);
      v33 = CacheDeletePurgeSpaceWithInfo();
      v34 = dispatch_time(0, 300000000000);
      dispatch_semaphore_wait(v18, v34);
      v12 = 1;
      if (!a4)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    logfunction("", 1, @"Failed to create info dictionary\n", v22, v23, v24, v25, v26, v37);
    v33 = 0;
  }

  else
  {
    logfunction("", 1, @"Failed to create semaphore for CacheDelete\n", v13, v14, v15, v16, v17, v36);
    v27 = 0;
    v33 = 0;
    v20 = 0;
    v19 = 0;
  }

  v12 = 0;
  if (a4)
  {
LABEL_13:
    *a4 = v39[3];
  }

LABEL_14:
  if (v18)
  {
    dispatch_release(v18);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

LABEL_24:
  _Block_object_dispose(&v38, 8);
  return v12;
}

void __trigger_cache_delete_block_invoke(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(a2)))
  {
    Value = CFDictionaryGetValue(a2, @"CACHE_DELETE_AMOUNT");
    if (Value)
    {
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
      v12 = valuePtr;
      *(*(*(a1 + 32) + 8) + 24) = valuePtr;
      logfunction("", 1, @"Purged %lld bytes (%lld MB)\n", v13, v14, v15, v16, v17, v12);
    }
  }

  else
  {
    logfunction("", 1, @"results dictionary is NULL\n", a4, a5, a6, a7, a8, v18);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_release(*(a1 + 40));
}

BOOL is_user_volume()
{
  bzero(v2, 0x40CuLL);
  v1[2] = 0;
  v1[0] = 5;
  v1[1] = 2147491840;
  return getattrlist("/private/var/mobile", v1, v2, 0x40CuLL, 0) != -1 && !strncmp(v3 + v3[0], "User", 4uLL);
}

uint64_t purgeable_space(const void *a1, int a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  valuePtr = a2;
  v38 = -1;
  if (&_os_variant_uses_ephemeral_storage && (os_variant_uses_ephemeral_storage() & 1) != 0)
  {
    return 0;
  }

  if (a1)
  {
    v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v11)
    {
      v12 = v11;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
        error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 14, 0, 0, @"failed to allocate info dictionary for cache delete.", v14, v15, v16, v36);
        if (a3)
        {
          *a3 = error_internal_cf;
LABEL_30:
          CFRelease(v12);
          return v38;
        }

LABEL_29:
        CFRelease(error_internal_cf);
        goto LABEL_30;
      }

      v17 = Mutable;
      CFDictionarySetValue(Mutable, @"CACHE_DELETE_URGENCY", v12);
      CFDictionarySetValue(v17, @"CACHE_DELETE_VOLUME", a1);
      v18 = CacheDeleteCopyPurgeableSpaceWithInfo();
      if (!v18)
      {
        v34 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"CacheDeleteCopyPurgeableSpaceWithInfo failed", v21, v22, v23, v36);
        if (a3)
        {
          *a3 = v34;
LABEL_28:
          error_internal_cf = v17;
          goto LABEL_29;
        }

LABEL_27:
        CFRelease(v34);
        goto LABEL_28;
      }

      v24 = v18;
      logfunction("", 1, @"CacheDeleteCopyPurgeableSpaceWithInfo() => %@\n", v19, v20, v21, v22, v23, v18);
      Value = CFDictionaryGetValue(v24, @"CACHE_DELETE_TOTAL_AVAILABLE");
      if (Value || (Value = CFDictionaryGetValue(v24, @"CACHE_DELETE_AMOUNT")) != 0)
      {
        if (CFNumberGetValue(Value, kCFNumberSInt64Type, &v38))
        {
LABEL_26:
          v34 = v24;
          goto LABEL_27;
        }

        v29 = @"failed to convert purgeableNum to int64";
      }

      else
      {
        v29 = @"CACHE_DELETE_TOTAL_AVAILABLE_KEY and CACHE_DELETE_AMOUNT_KEY are both NULL";
      }

      v35 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, v29, v26, v27, v28, v37);
      if (a3)
      {
        *a3 = v35;
      }

      else
      {
        CFRelease(v35);
      }

      goto LABEL_26;
    }

    v30 = @"failed to allocate urgency number.";
    v31 = 14;
  }

  else
  {
    v30 = @"Unable to determine purgeable space for null path";
    v31 = 9;
  }

  v32 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", v31, 0, 0, v30, a6, a7, a8, v36);
  if (a3)
  {
    *a3 = v32;
  }

  else
  {
    CFRelease(v32);
  }

  return -1;
}

uint64_t purgeable_data_space(int a1, CFErrorRef *a2)
{
  if (is_user_volume())
  {
    v14 = purgeable_space(@"/private/var/mobile", a1, a2, v4, v5, v6, v7, v8);
    if (!a2)
    {
      v14 += purgeable_space(@"/private/var", a1, 0, v9, v10, v11, v12, v13);
    }

    return v14;
  }

  else
  {

    return purgeable_space(@"/private/var", a1, a2, v4, v5, v6, v7, v8);
  }
}

uint64_t openRestoreLogFileWithPath(const char *a1, int a2)
{
  v2 = _restoreLogFD;
  if (_restoreLogFD < 0)
  {
    if (!a2 && _restoreLogFD == -2)
    {
      return 0xFFFFFFFFLL;
    }

    _restoreLogFD = -2;
    if (mkparentdir(a1, 0x1EDu))
    {
      __error();
      v4 = __error();
      strerror(*v4);
      v5 = @"Could not create path %s: %s\n";
    }

    else
    {
      v7 = open_dprotected_np(a1, 536871434, 4, 0, 420);
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      if (*__error() == 13 || *__error() == 1)
      {
        if (unlink(a1) == -1 && *__error() != 2)
        {
          v9 = __error();
          strerror(*v9);
          v5 = @"Failed to unlink '%s': %s\n";
          goto LABEL_6;
        }

        v7 = open_dprotected_np(a1, 536871434, 4, 0, 420);
        if ((v7 & 0x80000000) == 0)
        {
LABEL_10:
          v2 = v7;
          atomic_store(0, &_restoreLogGrowth);
          _restoreLogFD = v7;
          _rotateRestoreLogFD(v7);
          return v2;
        }
      }

      __error();
      v8 = __error();
      strerror(*v8);
      v5 = @"Could not open '%s': %s\n";
    }

LABEL_6:
    logfunction("", 0, v5);
    return 0xFFFFFFFFLL;
  }

  return v2;
}

int *_rotateRestoreLogFD(int a1)
{
  memset(&v9, 0, sizeof(v9));
  if (fstat(a1, &v9))
  {
    return __error();
  }

  flock(a1, 2);
  if (v9.st_size > 3145728)
  {
    v3 = malloc_type_malloc(0x100000uLL, 0xE6EB862FuLL);
    if ((((v9.st_size >= 0x100000uLL) + (v9.st_size >> 63) + 1) & 1) != (v9.st_size - 0x100000) >> 63)
    {
      v4 = 0;
    }

    else
    {
      v4 = v9.st_size - 0x100000;
    }

    v5 = pread(a1, v3, 0x100000uLL, v4);
    if (v5 >= 1 && (v6 = v5, (v7 = memchr(v3, 10, v5)) != 0))
    {
      v8 = v3 - (v7 + 1) + v6;
      pwrite(a1, v7 + 1, v8, 0);
    }

    else
    {
      v8 = 0;
    }

    ftruncate(a1, v8);
    free(v3);
  }

  return flock(a1, 8);
}

uint64_t closeRestoreLogFile()
{
  result = _restoreLogFD;
  if ((_restoreLogFD & 0x80000000) == 0)
  {
    result = close(_restoreLogFD);
  }

  atomic_store(0, &_restoreLogGrowth);
  _restoreLogFD = -2;
  return result;
}

uint64_t checkForRestoreLogFD(int a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v69, 0, sizeof(v69));
  logfunction("", 0, @"entering %s\n", a4, a5, a6, a7, a8, "checkForRestoreLogFD");
  if (fstat(a1, &v69) != -1)
  {
    logfunction("", 0, @"found restore log (size = %llu)\n", v10, v11, v12, v13, v14, v69.st_size);
    if (v69.st_size < 3145728)
    {
      v42 = malloc_type_malloc(v69.st_size + 1, 0xFDAB33EBuLL);
      if (v42)
      {
        v26 = v42;
        v43 = read(a1, v42, v69.st_size);
        if ((v43 & 0x8000000000000000) == 0)
        {
          v44 = v43;
LABEL_21:
          result = 0;
          v26[v44] = 0;
          *a2 = v26;
          return result;
        }

        v47 = __error();
        v67 = strerror(*v47);
        logfunction("", 0, @"unable to read from restore log file: %s\n", v48, v49, v50, v51, v52, v67);
        goto LABEL_28;
      }
    }

    else
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      *__str = 0u;
      v71 = 0u;
      logfunction("", 0, @"restore log is suspiciously large - truncating\n", v15, v16, v17, v18, v19, v65);
      v20 = malloc_type_malloc(0x300000uLL, 0xE206B481uLL);
      if (v20)
      {
        v26 = v20;
        v27 = read(a1, v20, 0x180000uLL);
        if ((v27 & 0x8000000000000000) == 0)
        {
          v28 = v27;
          if (lseek(a1, v27 - 3145727, 2) < 0)
          {
            v46 = @"unable to seek in restore log file: %s\n";
            goto LABEL_27;
          }

          v29 = &v26[v28];
          v30 = read(a1, &v26[v28], 3145727 - v28);
          if (v30 != -1)
          {
            v31 = v30;
            v32 = &v26[v28];
            do
            {
              if (v28 >= 1)
              {
                v26[v28 - 1] = 0;
                v33 = strrchr(v26, 10);
                if (v33)
                {
                  v34 = v33 + 1;
                }

                else
                {
                  v34 = v26;
                }

                *v34 = 0;
                v28 = v34 - v26;
              }

              if (v31 < 1)
              {
                break;
              }

              v35 = memchr(v29, 10, v31);
              if (!v35)
              {
                v31 = 0;
                break;
              }

              v29 = v35 + 1;
              v31 = &v32[v31] - (v35 + 1);
              v32 = v35 + 1;
            }

            while (v35 + 1 - &v26[v28] < 160);
            snprintf(__str, 0xA0uLL, "--------------------\n------ Truncated %lld bytes ------\n--------------------\n", v69.st_size - (v28 + v31));
            v59 = &v26[v28];
            v60 = v77;
            *(v59 + 6) = v76;
            *(v59 + 7) = v60;
            v61 = v79;
            *(v59 + 8) = v78;
            *(v59 + 9) = v61;
            v62 = v73;
            *(v59 + 2) = v72;
            *(v59 + 3) = v62;
            v63 = v75;
            *(v59 + 4) = v74;
            *(v59 + 5) = v63;
            v64 = v71;
            *v59 = *__str;
            *(v59 + 1) = v64;
            v44 = strlen(__str) + v28;
            if (v31)
            {
              if (v29 > &v26[v44])
              {
                memmove(&v26[v44], v29, v31);
                v44 += v31;
              }
            }

            goto LABEL_21;
          }
        }

        v46 = @"unable to read from restore log file: %s\n";
LABEL_27:
        v53 = __error();
        v68 = strerror(*v53);
        logfunction("", 0, v46, v54, v55, v56, v57, v58, v68);
LABEL_28:
        free(v26);
        return 0xFFFFFFFFLL;
      }
    }

    logfunction("", 0, @"unable to allocate memory to read restore log\n", v21, v22, v23, v24, v25, v65);
    return 0xFFFFFFFFLL;
  }

  v36 = __error();
  v66 = strerror(*v36);
  logfunction("", 1, @"fstat on restore log failed: %s\n", v37, v38, v39, v40, v41, v66);
  return 0xFFFFFFFFLL;
}

size_t writeToRestoreLogFile(void *__buf, size_t __nbyte)
{
  v2 = __nbyte;
  v3 = _restoreLogFD;
  if ((_restoreLogFD & 0x80000000) == 0)
  {
    v4 = write(_restoreLogFD, __buf, __nbyte);
    v2 = v4;
    if (v4 >= 1)
    {
      v5 = atomic_fetch_add_explicit(&_restoreLogGrowth, v4, memory_order_relaxed) + v4;
      if (v5 > 0x10000)
      {
        atomic_fetch_add_explicit(&_restoreLogGrowth, -v5, memory_order_relaxed);
        _rotateRestoreLogFD(v3);
      }
    }
  }

  return v2;
}

uint64_t submitRestoreLogFileToLogDir(__CFError *a1, uint64_t a2, const char *a3, const char *a4, const __CFString *a5)
{
  v122 = 0;
  bzero(v136, 0x400uLL);
  v10 = os_transaction_create();
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = "/private/var/mobile/MobileSoftwareUpdate/restore.log";
  }

  v12 = open(v11, 2);
  v19 = v12;
  if (v12 == -1)
  {
    v42 = __error();
    strerror(*v42);
    logfunction("", 1, @"unable to open restore log (%s): %s (%d)\n", v43, v44, v45, v46, v47, v11);
    v26 = 0;
LABEL_16:
    v33 = 0;
    goto LABEL_40;
  }

  v20 = checkForRestoreLogFD(v12, &v122, v13, v14, v15, v16, v17, v18);
  v26 = v122;
  if (v20 || !v122)
  {
    logfunction("", 1, @"unable to read from restore log file\n", v21, v22, v23, v24, v25, v112);
    goto LABEL_16;
  }

  _rotateRestoreLogFD(v19);
  v27 = MGCopyAnswer();
  v33 = v27;
  if (!v27)
  {
    v48 = @"failed to query device serial number\n";
LABEL_39:
    logfunction("", 1, v48, v28, v29, v30, v31, v32, v112);
LABEL_40:
    free(v26);
    v50 = 0;
    v51 = 0;
    v52 = 0xFFFFFFFFLL;
    if (!v33)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (CFStringGetLength(v27) < 1)
  {
    v49 = @"device has no serial number for scrubbing\n";
LABEL_20:
    logfunction("", 1, v49, v34, v35, v36, v37, v38, v112);
    goto LABEL_21;
  }

  *buffer = 0u;
  v138 = 0u;
  if (CFStringGetCString(v33, buffer, 32, 0x8000100u) != 1)
  {
    v49 = @"unable to get c string for device serial number\n";
    goto LABEL_20;
  }

  v39 = strcasestr(v26, buffer);
  if (v39)
  {
    v40 = v39;
    do
    {
      v41 = strlen(buffer);
      memset(v40, 88, v41);
      v40 = strcasestr(v40, buffer);
    }

    while (v40);
  }

LABEL_21:
  if (_AMRRegexSubstitution(v26, "'[^\n]*' has been added", "'<<File name>>' has been added ") || _AMRRegexSubstitution(v26, "verify_callback: '[^\n]*' did not verify and is not on the exception list.", "verify_callback: '<<File name>>' did not verify and is not on the exception list.") || _AMRRegexSubstitution(v26, "'[^\n]*' is on the exception list", "'<<File name>>' is on the exception list") || _AMRRegexSubstitution(v26, "[:-][0-9a-fA-F]{8}", "XXXX") || _AMRRegexSubstitution(v26, "[:-] [0-9a-fA-F]{8}", "XXXX") || _AMRRegexSubstitution(v26, "[:-] [a-zA-Z0-9]{18}[[:>:]]", "XXXX") || _AMRRegexSubstitution(v26, "[:-][a-zA-Z0-9]{8}[:-][a-zA-Z0-9]{16}", "XXXX") || _AMRRegexSubstitution(v26, "[0-9a-fA-F]{40}", "<<<<<<<<<<<<<<<<<<UDID>>>>>>>>>>>>>>>>>>") || _AMRRegexSubstitution(v26, "[0-9a-fA-F]{20}", "<<<<<<<<ICCID>>>>>>>") || _AMRRegexSubstitution(v26, "[0-9a-fA-F]{19}", "<<<<<<<ICCID>>>>>>>") || _AMRRegexSubstitution(v26, "[0-9]{15}", "<<<<<IMEI>>>>>>") || _AMRRegexSubstitution(v26, "ecid=0x[0-9a-fA-F]*,", "ecid=0xXXXXXXXXXXX") || _AMRRegexSubstitution(v26, "ApECID[^\n]*value = [+-][0-9<>IMEI]*", "ApECID} = X {X") || _AMRRegexSubstitution(v26, "[0-9a-fA-F]{14}", "<<<<<MEID>>>>>") || _AMRRegexSubstitution(v26, "ChipSerialNo[^\n]*bytes = 0x[0-9a-fA-F]*}", "ChipSerialNo ") || _AMRRegexSubstitution(v26, "snum=0x[0-9a-fA-F]*,", "snum=0xXXXXXXXX") || _AMRRegexSubstitution(v26, "BbSNUM[^\n]*", "BbSNUM} = 0xXXXXXXXX }"))
  {
    v48 = @"failed to scrub log\n";
    goto LABEL_39;
  }

  err = a1;
  theDict = strlen(v26);
  if (theDict)
  {
    v54 = v26;
    do
    {
      v55 = *v54;
      if (v55 < 0)
      {
        if (!__maskrune(*v54, 0x40000uLL))
        {
          v56 = __maskrune(v55, 0x4000uLL);
LABEL_57:
          if (!v56)
          {
            *v54 = 46;
          }
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v55] & 0x40000) == 0)
      {
        v56 = _DefaultRuneLocale.__runetype[v55] & 0x4000;
        goto LABEL_57;
      }

      ++v54;
      theDict = (theDict - 1);
    }

    while (theDict);
  }

  theDicta = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!theDicta)
  {
    v48 = @"failed to create crashReporterDictionary\n";
    goto LABEL_39;
  }

  if (err)
  {
    v57 = CFErrorCopyUserInfo(err);
    if (v57)
    {
      v58 = v57;
      Value = CFDictionaryGetValue(v57, @"target_update");
      Code = CFErrorGetCode(err);
      CFRelease(v58);
    }

    else
    {
      Code = CFErrorGetCode(err);
      Value = 0;
    }
  }

  else
  {
    Value = 0;
    Code = -1;
  }

  if (Value)
  {
    v60 = Value;
  }

  else
  {
    v60 = @"Unknown";
  }

  erra = v60;
  v61 = MGCopyAnswer();
  if (v61)
  {
    v62 = v61;
  }

  else
  {
    v62 = @"Unknown";
  }

  CFDictionarySetValue(theDicta, @"itunes_version", v62);
  CFDictionarySetValue(theDicta, @"restore_payload_version", erra);
  CFDictionarySetValue(theDicta, @"restore_type", @"OTAUpdate");
  CFDictionarySetValue(theDicta, @"name", @"iPhoneRestore");
  v114 = v62;
  CFDictionarySetValue(theDicta, @"os_version", v62);
  CFDictionarySetValue(theDicta, @"bug_type", @"183");
  errb = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%ld");
  if (!errb)
  {
    logfunction("", 1, @"failed to create CFString from %ld\n", v63, v64, v65, v66, v67, Code);
LABEL_94:
    v76 = 0;
LABEL_95:
    v83 = 0;
LABEL_100:
    v98 = 0;
    goto LABEL_101;
  }

  CFDictionarySetValue(theDicta, @"restore_error", errb);
  if (!a4)
  {
    Default = CFAllocatorGetDefault();
    v83 = CFURLCreateWithFileSystemPath(Default, @"/private/var/mobile/Library/Logs/CrashReporter", kCFURLPOSIXPathStyle, 0);
    goto LABEL_84;
  }

  v68 = CFStringCreateWithCString(0, a4, 0x8000100u);
  if (!v68)
  {
    logfunction("", 1, @"failed to create dataPartitionMountPointStr\n", v69, v70, v71, v72, v73, Code);
    goto LABEL_94;
  }

  v74 = v68;
  v75 = CFAllocatorGetDefault();
  v76 = CFURLCreateWithFileSystemPath(v75, v74, kCFURLPOSIXPathStyle, 0);
  CFRelease(v74);
  if (!v76)
  {
    logfunction("", 1, @"failed to create mountPointURL\n", v77, v78, v79, v80, v81, Code);
    goto LABEL_95;
  }

  if (a5)
  {
    v82 = a5;
  }

  else
  {
    v82 = @"/mobile/Library/Logs/CrashReporter";
  }

  v83 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v76, v82, 1u);
  CFRelease(v76);
  if (!v83)
  {
    v89 = @"mountPointURL CFURLCreateCopyAppendingPathComponent failed\n";
LABEL_99:
    logfunction("", 1, v89, v84, v85, v86, v87, v88, Code);
    v76 = 0;
    goto LABEL_100;
  }

LABEL_84:
  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  *v123 = 0u;
  v124 = 0u;
  if (a2 <= 0)
  {
    a2 = time(0);
  }

  v121 = a2;
  v91 = localtime(&v121);
  if (!v91)
  {
    v89 = @"localtime failed\n";
    goto LABEL_99;
  }

  if (!strftime(v123, 0xC8uLL, "%F-%H-%M-%S", v91))
  {
    v89 = @"strftime failed\n";
    goto LABEL_99;
  }

  v92 = CFAllocatorGetDefault();
  v113 = v123;
  v98 = CFStringCreateWithFormat(v92, 0, @"OTAUpdate-%s.ips");
  if (!v98)
  {
    logfunction("", 1, @"failed to create crashReporterFileName\n", v93, v94, v95, v96, v97, v123);
    v76 = 0;
    goto LABEL_101;
  }

  v99 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v83, v98, 0);
  v76 = v99;
  if (!v99)
  {
    v110 = @"failed to create log file name\n";
LABEL_112:
    logfunction("", 1, v110, v100, v101, v102, v103, v104, v113);
LABEL_101:
    free(v26);
    CFRelease(theDicta);
    v52 = 0xFFFFFFFFLL;
    if (!v76)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  if (!CFURLGetFileSystemRepresentation(v99, 1u, v136, 1024))
  {
    LOBYTE(v113) = v76;
    v110 = @"Could not get file path from %@\n";
    goto LABEL_112;
  }

  logfunction("", 1, @"Trying to write crashreporter log file %s\n", v100, v101, v102, v103, v104, v136);
  if (_storeIpsWithMode(theDicta, v26, v136))
  {
    logfunction("", 1, @"failed to create %s\n", v105, v106, v107, v108, v109, v136);
    goto LABEL_101;
  }

  v111 = ftruncate(v19, 0);
  if (a4 || v111)
  {
    unlink(v11);
  }

  free(v26);
  CFRelease(theDicta);
  v52 = 0;
LABEL_102:
  CFRelease(v76);
LABEL_103:
  if (v83)
  {
    CFRelease(v83);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  v51 = v114;
  v50 = errb;
  if (v33)
  {
LABEL_41:
    CFRelease(v33);
  }

LABEL_42:
  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  os_release(v10);
  if (v19 != -1 && close(v19) == -1)
  {
    submitRestoreLogFileToLogDir_cold_1();
  }

  return v52;
}

uint64_t _storeIpsWithMode(const __CFDictionary *a1, const char *a2, const char *a3)
{
  Mutable = CFStringCreateMutable(0, 0);
  v7 = open(a3, 1537);
  if (v7 != -1)
  {
    v13 = v7;
    CFStringAppend(Mutable, @"{");
    CFDictionaryApplyFunction(a1, append_item_to_string, Mutable);
    CFStringTrim(Mutable, @",");
    CFStringAppend(Mutable, @"}\n");
    ExternalRepresentation = CFStringCreateExternalRepresentation(0, Mutable, 0x8000100u, 0x3Fu);
    v20 = ExternalRepresentation;
    if (ExternalRepresentation)
    {
      Length = CFDataGetLength(ExternalRepresentation);
      BytePtr = CFDataGetBytePtr(v20);
      if (write(v13, BytePtr, Length) == Length)
      {
        CFRelease(v20);
        v23 = strlen(a2);
        if (write(v13, a2, v23) == v23)
        {
          v29 = getpwnam("mobile");
          if (v29)
          {
            if (!chown(a3, v29->pw_uid, v29->pw_gid))
            {
              v20 = 0;
              v36 = 0;
LABEL_18:
              close(v13);
              if (!Mutable)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }

            v30 = __error();
            strerror(*v30);
            logfunction("", 1, @"unable to chown file '%s': %s\n\n", v31, v32, v33, v34, v35, a3);
            goto LABEL_16;
          }

          v38 = @"unable to look up mobile user uid/gid. Defaulting to 501/501\n\n";
        }

        else
        {
          v38 = @"write payload\n";
        }

        logfunction("", 1, v38, v24, v25, v26, v27, v28, 164);
LABEL_16:
        v20 = 0;
        goto LABEL_17;
      }

      v37 = @"write hdr\n";
    }

    else
    {
      v37 = @"CFStringCreateExternalRepresentation\n";
    }

    logfunction("", 1, v37, v15, v16, v17, v18, v19, 164);
LABEL_17:
    v36 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  logfunction("", 1, @"open\n", v8, v9, v10, v11, v12, 164);
  v20 = 0;
  v36 = 0xFFFFFFFFLL;
  if (Mutable)
  {
LABEL_19:
    CFRelease(Mutable);
  }

LABEL_20:
  if (v20)
  {
    CFRelease(v20);
  }

  return v36;
}

uint64_t _AMRRegexSubstitution(const char *a1, const char *a2, const char *a3)
{
  v4 = a2;
  memset(&v24, 0, sizeof(v24));
  if (regcomp(&v24, a2, 1))
  {
    logfunction("", 1, @"unable to compile regex '%s': %d\n", v6, v7, v8, v9, v10, v4);
    return 0xFFFFFFFFLL;
  }

  else
  {
    __pmatch.rm_so = 0;
    for (__pmatch.rm_eo = 0; ; a1 += __pmatch.rm_eo)
    {
      v12 = regexec(&v24, a1, 1uLL, &__pmatch, 0);
      if (v12)
      {
        break;
      }

      v18 = __pmatch.rm_eo - __pmatch.rm_so;
      v19 = strlen(a3);
      v20 = LODWORD(__pmatch.rm_eo) - LODWORD(__pmatch.rm_so) - v19;
      if (v19 < __pmatch.rm_eo - __pmatch.rm_so)
      {
        v18 = v19;
      }

      memcpy(&a1[__pmatch.rm_so], a3, v18);
      if (v20 >= 1)
      {
        v21 = v20 & 0x7FFFFFFF;
        memset(&a1[__pmatch.rm_so + v18], 62, v21);
        a1 += v21;
      }
    }

    if (v12 == 1)
    {
      v11 = 0;
    }

    else
    {
      logfunction("", 1, @"regex matching failed for '%s': %d\n", v13, v14, v15, v16, v17, v4);
      v11 = 0xFFFFFFFFLL;
    }

    regfree(&v24);
  }

  return v11;
}

uint64_t msu_get_os_env()
{
  if (msu_get_os_env_onceToken != -1)
  {
    msu_get_os_env_cold_1();
  }

  return msu_get_os_env_os_env;
}

void __msu_get_os_env_block_invoke(id a1)
{
  count = 0;
  if (sysctlbyname("hw.osenvironment", 0, &count, 0, 0) == -1)
  {
    v29 = __error();
    strerror(*v29);
    logfunction("", 1, @"Unable to determine size of %s variable(%s)\n", v30, v31, v32, v33, v34, "hw.osenvironment");
  }

  else
  {
    v1 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
    if (v1)
    {
      v7 = v1;
      if (sysctlbyname("hw.osenvironment", v1, &count, 0, 0) == -1)
      {
        v35 = __error();
        strerror(*v35);
        logfunction("", 1, @"Failed to read %s sysctl: %s\n", v36, v37, v38, v39, v40, "hw.osenvironment");
      }

      else
      {
        logfunction("", 1, @"%s = '%s'\n", v8, v9, v10, v11, v12, "hw.osenvironment");
        if (*v7)
        {
          if (!strcmp(v7, "device-recovery"))
          {
            logfunction("", 1, @"Detected DRE environment (%s=%s)\n", v18, v19, v20, v21, v22, "hw.osenvironment");
            v28 = 16;
          }

          else if (!strcmp(v7, "recovery"))
          {
            logfunction("", 1, @"Detected NeRD environment (%s=%s)\n", v23, v24, v25, v26, v27, "hw.osenvironment");
            v28 = 8;
          }

          else
          {
            logfunction("", 1, @"Unknown environment '%s'\n", v23, v24, v25, v26, v27, v7);
            v28 = 2;
          }
        }

        else
        {
          logfunction("", 1, @"Detected BootedOS environment (%s=<empty>)\n", v13, v14, v15, v16, v17, "hw.osenvironment");
          v28 = 4;
        }

        msu_get_os_env_os_env = v28;
      }

      free(v7);
    }

    else
    {
      logfunction("", 1, @"Failed to allocate buffer for %s sysctl\n", v2, v3, v4, v5, v6, "hw.osenvironment");
    }
  }
}

uint64_t get_system_partition_padding(const __CFDictionary *a1)
{
  valuePtr = 0;
  if (!a1)
  {
    goto LABEL_40;
  }

  v2 = IOBSDNameMatching(kIOMasterPortDefault, 0, "disk0");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  if (!MatchingService)
  {
    logfunction("", 1, @"Could not find service for device with BSD name %s\n", v4, v5, v6, v7, v8, "disk0");
LABEL_40:
    v52 = 0;
    return v52 << 20;
  }

  v9 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"Size", kCFAllocatorDefault, 0);
  v16 = CFProperty;
  if (!CFProperty || (v17 = CFGetTypeID(CFProperty), v17 != CFNumberGetTypeID()))
  {
    logfunction("", 1, @"Invalid value '%@' for property key '%@'\n", v11, v12, v13, v14, v15, v16);
    v52 = 0;
    goto LABEL_37;
  }

  if (!CFNumberGetValue(v16, kCFNumberLongLongType, &valuePtr))
  {
    logfunction("", 1, @"Failed to convert '%@' to primitive value\n", v18, v19, v20, v21, v22, v16);
LABEL_44:
    IOObjectRelease(v9);
    v52 = 0;
LABEL_45:
    CFRelease(v16);
    return v52 << 20;
  }

  if (valuePtr >= 0)
  {
    v23 = valuePtr;
  }

  else
  {
    v23 = valuePtr + 0x3FFFFFFF;
  }

  Value = CFDictionaryGetValue(a1, @"SystemPartitionPadding");
  if (!Value)
  {
    logfunction("", 1, @"No padding dictionary specified, returning default padding value %llu\n\n", v25, v26, v27, v28, v29, 0);
    goto LABEL_44;
  }

  v30 = Value;
  Count = CFDictionaryGetCount(Value);
  if (!Count)
  {
    logfunction("", 1, @"No padding entries, returning default padding value %llu\n\n", v32, v33, v34, v35, v36, 0);
    goto LABEL_44;
  }

  v37 = Count;
  v38 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  v39 = malloc_type_calloc(v37, 8uLL, 0x6004044C4A2DFuLL);
  v45 = v39;
  if (!v38 || !v39)
  {
    logfunction("", 1, @"Failed to allocate key/value buffers to fetch system padding value\n\n", v40, v41, v42, v43, v44, v62);
    v52 = 0;
    if (v38)
    {
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  CFDictionaryGetKeysAndValues(v30, v38, v39);
  v69 = 0;
  *buffer = 0;
  if (v37 < 1)
  {
    v52 = 0;
    goto LABEL_50;
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
  v63 = v23 >> 30;
  v64 = 0;
  do
  {
    v54 = v38[v51];
    v55 = v45[v51];
    v66 = 0;
    v65 = 0;
    if (!v54)
    {
      v60 = @"Failed to get marketing size key from padding dict\n\n";
LABEL_32:
      logfunction("", 1, v60, v46, v47, v48, v49, v50, v62);
      goto LABEL_33;
    }

    if (!v55)
    {
      v60 = @"Failed to get padding size for key in padding dict\n\n";
      goto LABEL_32;
    }

    v69 = 0;
    *buffer = 0;
    if (!CFStringGetCString(v54, buffer, 10, 0x8000100u))
    {
      v60 = @"Failed to get C string from CFStringRef padding key\n\n";
      goto LABEL_32;
    }

    if (!sscanf(buffer, "%d", &v65))
    {
      v60 = @"Failed to parse out padding value from capacity string\n\n";
      goto LABEL_32;
    }

    if (!CFNumberGetValue(v55, kCFNumberSInt64Type, &v66))
    {
      v60 = @"Failed to convert CFNumberRef value into int\n\n";
      goto LABEL_32;
    }

    v56 = v63 - v65;
    if (v63 - v65 < 0)
    {
      v56 = v65 - v63;
    }

    v57 = v51 != 0;
    v58 = v56 > v53;
    if (v57 && v58)
    {
      v59 = v64;
    }

    else
    {
      v53 = v56;
      v59 = v65;
    }

    v64 = v59;
    if (!v57 || !v58)
    {
      v52 = v66;
    }

LABEL_33:
    ++v51;
  }

  while (v37 != v51);
  if (v53 >= 11)
  {
    logfunction("", 1, @"Closest marketing capacity entry for padding was %dGB however this device is %dGB, this might not be optimal\n\n", v46, v47, v48, v49, v50, v64);
  }

LABEL_50:
  free(v38);
LABEL_51:
  if (v45)
  {
    free(v45);
  }

LABEL_37:
  IOObjectRelease(v9);
  if (v16)
  {
    goto LABEL_45;
  }

  return v52 << 20;
}

CFPropertyListRef load_plist_with_mutability_option(CFURLRef fileURL, CFOptionFlags a2)
{
  if (!fileURL)
  {
    return 0;
  }

  v3 = CFReadStreamCreateWithFile(kCFAllocatorDefault, fileURL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFReadStreamOpen(v3))
  {
    v5 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v4, 0, a2, 0, 0);
  }

  else
  {
    v5 = 0;
  }

  CFReadStreamClose(v4);
  CFRelease(v4);
  return v5;
}

CFPropertyListRef load_dict(char *cStr)
{
  if (!cStr)
  {
    return 0;
  }

  v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFURLCreateWithFileSystemPath(0, v1, kCFURLPOSIXPathStyle, 0);
  if (v3)
  {
    v4 = v3;
    plist_with_mutability_option = load_plist_with_mutability_option(v3, 0);
    CFRelease(v4);
  }

  else
  {
    plist_with_mutability_option = 0;
  }

  CFRelease(v2);
  return plist_with_mutability_option;
}

uint64_t mkparentdir(uint64_t a1, mode_t a2)
{
  bzero(&v8, 0x400uLL);
  if (a1)
  {
    __strlcpy_chk();
    if (v8 == 47)
    {
      v4 = v9;
    }

    else
    {
      v4 = &v8;
    }

    do
    {
      if (!*v4)
      {
        break;
      }

      v5 = strchr(v4, 47);
      v4 = v5;
      if (v5 > &v8)
      {
        memset(&v7, 0, sizeof(v7));
        *v5 = 0;
        if (lstat(&v8, &v7) == -1 && mkdir(&v8, a2) == -1 && *__error() != 17)
        {
          return 0xFFFFFFFFLL;
        }

        *v4++ = 47;
      }
    }

    while (v4);
    return 0;
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

CFErrorRef _vcreate_error_internal_with_userinfo_cf(const __CFString *a1, CFIndex a2, const void *a3, const void *a4, const __CFDictionary *a5, const __CFString *a6, va_list a7)
{
  v14 = *__error();
  if (a5)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a5);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v16 = MutableCopy;
  if (MutableCopy)
  {
    v17 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a6, a7);
    if (v17)
    {
      v23 = v17;
      logfunction("", 1, @"%@ error %ld - %@\n", v18, v19, v20, v21, v22, a1);
      CFDictionaryAddValue(v16, kCFErrorLocalizedDescriptionKey, v23);
      CFRelease(v23);
    }

    if (a3)
    {
      CFDictionaryAddValue(v16, kCFErrorUnderlyingErrorKey, a3);
    }

    if (a4)
    {
      CFDictionaryAddValue(v16, @"target_update", a4);
    }

    v24 = CFErrorCreate(kCFAllocatorDefault, a1, a2, v16);
    CFRelease(v16);
  }

  else
  {
    v24 = 0;
  }

  *__error() = v14;
  return v24;
}

__CFString *copy_underlying_error_description(__CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(0, 0);
  if (Mutable)
  {
    copy_underlying_error_description_cold_1(a1, Mutable);
  }

  return Mutable;
}

CFDictionaryRef cferror_to_dictionary_embedded(__CFError *a1, int a2)
{
  valuePtr = CFErrorGetCode(a1);
  Domain = CFErrorGetDomain(a1);
  v5 = CFErrorCopyUserInfo(a1);
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
  if (!v6)
  {
    logfunction("", 1, @"could not create cfnumber\n", v7, v8, v9, v10, v11, v29);
    v22 = 0;
    if (!v5)
    {
      return v22;
    }

    goto LABEL_24;
  }

  v12 = v6;
  *keys = *off_100049520;
  v35 = *&off_100049530;
  values[0] = v6;
  values[1] = Domain;
  v32 = v5;
  v33 = 0;
  if (v5)
  {
    Value = CFDictionaryGetValue(v5, kCFErrorUnderlyingErrorKey);
    v14 = Value;
    if (Value)
    {
      v15 = CFGetTypeID(Value);
      if (v15 != CFErrorGetTypeID() || (v16 = cferror_to_dictionary_embedded(v14, 0)) == 0)
      {
        v14 = 0;
        if (a2)
        {
          goto LABEL_10;
        }

LABEL_17:
        v21 = 3;
        goto LABEL_19;
      }

      v17 = v16;
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v5);
      v14 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionarySetValue(MutableCopy, kCFErrorUnderlyingErrorKey, v17);
        v32 = v14;
      }

      CFRelease(v17);
    }

    if (a2)
    {
LABEL_10:
      v19 = (&v35 + 8);
      v20 = &v33;
      v21 = 4;
LABEL_15:
      *v19 = @"_MSU_Embedded_Error";
      *v20 = kCFBooleanTrue;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v14 = 0;
  if (a2)
  {
    v19 = &v35;
    v20 = &v32;
    v21 = 3;
    goto LABEL_15;
  }

  v21 = 2;
LABEL_19:
  v22 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, v21, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v22)
  {
    logfunction("", 1, @"could not create cfdictionary\n", v23, v24, v25, v26, v27, v29);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  CFRelease(v12);
  if (v5)
  {
LABEL_24:
    CFRelease(v5);
  }

  return v22;
}

const __CFString *copy_dictionary_to_cferror(const void *a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    v21 = @"marshalled cferror is not a dictionary.\n";
LABEL_17:
    logfunction("", 1, v21, v3, v4, v5, v6, v7, v23);
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"Code");
  if (!Value)
  {
    v21 = @"marshalled cferror is incomplete. missing code.\n";
    goto LABEL_17;
  }

  if (!CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr))
  {
    v21 = @"code not convert cfnumber code to cfindex\n";
    goto LABEL_17;
  }

  v14 = CFDictionaryGetValue(a1, @"Domain");
  if (!v14)
  {
    logfunction("", 1, @"marshalled cferror is incomplete. missing domain.\n", v9, v10, v11, v12, v13, v23);
    return v14;
  }

  v15 = CFDictionaryGetValue(a1, @"UserInfo");
  if (!v15)
  {
    v21 = @"marshalled cferror is incomplete. missing UserInfo.\n";
    goto LABEL_17;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v15);
  if (!MutableCopy)
  {
    v21 = @"code not create mutable copy of userInfo\n";
    goto LABEL_17;
  }

  v17 = MutableCopy;
  v18 = CFDictionaryGetValue(MutableCopy, kCFErrorUnderlyingErrorKey);
  v19 = copy_dictionary_to_cferror(v18);
  if (v19)
  {
    v20 = v19;
    CFDictionarySetValue(v17, kCFErrorUnderlyingErrorKey, v19);
    CFRelease(v20);
  }

  v14 = CFErrorCreate(kCFAllocatorDefault, v14, valuePtr, v17);
  CFRelease(v17);
  return v14;
}

uint64_t performCryptegraftSemiSplat(const void *a1, const __CFString **a2)
{
  v4 = copy_shared_cryptegraft_service_connection();
  if (v4)
  {
    v8 = v4;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v9, "Command", "CryptegraftSemiSplat");
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (a1)
    {
      v16 = CFGetTypeID(a1);
      if (v16 == CFStringGetTypeID())
      {
        CFDictionarySetValue(Mutable, @"TargetVolume", a1);
      }
    }

    msu_serialize_cf_object_into_xpc_dict(v9, "CommandParameters", Mutable, v10, v11, v12, v13, v14);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v17 = xpc_connection_send_message_with_reply_sync(v8, v9);
    v22 = msu_demux_reply(v17, 0, 0, a2, v18, v19, v20, v21);
    xpc_release(v9);
    if (v17)
    {
      xpc_release(v17);
    }

    xpc_release(v8);
  }

  else
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"No cryptegraft connection", v5, v6, v7, v25);
    if (a2)
    {
      v22 = 0;
      *a2 = error_internal_cf;
    }

    else
    {
      CFRelease(error_internal_cf);
      return 0;
    }
  }

  return v22;
}

uint64_t copy_shared_cryptegraft_service_connection()
{
  if (get_cryptegraft_service_queue_queue_once != -1)
  {
    copy_shared_cryptegraft_service_connection_cold_1();
  }

  dispatch_sync(get_cryptegraft_service_queue_queue, &__block_literal_global_6);
  return copy_shared_cryptegraft_service_connection_service_connection;
}

uint64_t performCryptegraftDownlevel(const void *a1, const void *a2, const __CFString **a3)
{
  v6 = copy_shared_cryptegraft_service_connection();
  if (v6)
  {
    v10 = v6;
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v11, "Command", "CryptegraftDownlevel");
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (a1)
    {
      v18 = CFGetTypeID(a1);
      if (v18 == CFStringGetTypeID())
      {
        CFDictionarySetValue(Mutable, @"TargetVolume", a1);
      }
    }

    if (a2)
    {
      v19 = CFGetTypeID(a2);
      if (v19 == CFURLGetTypeID())
      {
        CFDictionarySetValue(Mutable, @"SourcePath", a2);
      }
    }

    msu_serialize_cf_object_into_xpc_dict(v11, "CommandParameters", Mutable, v12, v13, v14, v15, v16);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v20 = xpc_connection_send_message_with_reply_sync(v10, v11);
    v25 = msu_demux_reply(v20, 0, 0, a3, v21, v22, v23, v24);
    xpc_release(v11);
    if (v20)
    {
      xpc_release(v20);
    }

    xpc_release(v10);
  }

  else
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"No cryptegraft connection", v7, v8, v9, v28);
    if (a3)
    {
      v25 = 0;
      *a3 = error_internal_cf;
    }

    else
    {
      CFRelease(error_internal_cf);
      return 0;
    }
  }

  return v25;
}

void __copy_shared_cryptegraft_service_connection_block_invoke(id a1)
{
  v1 = copy_shared_cryptegraft_service_connection_service_connection;
  if (!copy_shared_cryptegraft_service_connection_service_connection)
  {
    if (!dlopen("/System/Library/PrivateFrameworks/MobileSoftwareUpdate.framework/MobileSoftwareUpdate", 1))
    {
      v13 = dlerror();
      logfunction("", 1, @"failed to dlopen(3) MobileSoftwareUpdate framework: %s\n", v8, v9, v10, v11, v12, v13);
      return;
    }

    if (get_cryptegraft_service_queue_queue_once != -1)
    {
      copy_shared_cryptegraft_service_connection_cold_1();
    }

    v2 = xpc_connection_create("com.apple.MobileSoftwareUpdate.CryptegraftService", get_cryptegraft_service_queue_queue);
    copy_shared_cryptegraft_service_connection_service_connection = v2;
    if (!v2)
    {
      logfunction("", 1, @"Could not create connection to service %s\n", v3, v4, v5, v6, v7, "com.apple.MobileSoftwareUpdate.CryptegraftService");
      return;
    }

    xpc_connection_set_event_handler(v2, &__block_literal_global_23);
    xpc_connection_resume(copy_shared_cryptegraft_service_connection_service_connection);
    v1 = copy_shared_cryptegraft_service_connection_service_connection;
  }

  xpc_retain(v1);
}

void __copy_shared_cryptegraft_service_connection_block_invoke_2(id a1, OS_xpc_object *a2)
{
  log_xpc_event("Cryptegraft service connection handler", a2);
  if (xpc_get_type(a2) == &_xpc_type_error && copy_shared_cryptegraft_service_connection_service_connection != 0)
  {
    xpc_release(copy_shared_cryptegraft_service_connection_service_connection);
    copy_shared_cryptegraft_service_connection_service_connection = 0;
  }
}

void __get_cryptegraft_service_queue_block_invoke(id a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  *__str = 0u;
  v2 = 0u;
  snprintf(__str, 0x100uLL, "%s.queue", "com.apple.MobileSoftwareUpdate.CryptegraftService");
  get_cryptegraft_service_queue_queue = dispatch_queue_create(__str, 0);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  openlog("softwareupdated", 1, 24);
  v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MAIN] softwareupdated starting up", buf, 2u);
  }

  if ((openRestoreLogFile(1) & 0x80000000) != 0 && os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    main_cold_1();
  }

  v5 = atexit(closeRestoreLogFile);
  if (v5)
  {
    v5 = os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR);
    if (v5)
    {
      main_cold_2();
    }
  }

  cf = 0;
  v13 = msu_running_in_limited_environment(v5, v6, v7, v8, v9, v10, v11, v12);
  v14 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MAIN] softwareupdated running in limited environment..Skipping cleanup and saveCurrentEnv calls", buf, 2u);
    }

    goto LABEL_65;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MAIN] softwareupdated running in regular environment..Performing cleanup and saveCurrentEnv calls", buf, 2u);
  }

  handle_update_metrics();
  v16 = +[NSFileManager defaultManager];
  if (is_first_boot_after_update())
  {
    *v49 = 0;
    [(NSFileManager *)v16 removeItemAtPath:@"/var/MobileSoftwareUpdate/Controller/SUCoreAnalytics/updateDate" error:v49];
    if (*v49)
    {
      v17 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = *v49;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MAIN] Unable to remove date file : %{public}@", buf, 0xCu);
      }
    }

    v18 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[MAIN] Creating new date file", buf, 2u);
    }

    v48 = 0;
    v19 = +[NSKeyedArchiver archivedDataWithRootObject:requiringSecureCoding:error:](NSKeyedArchiver, "archivedDataWithRootObject:requiringSecureCoding:error:", +[NSDate date], 1, &v48);
    if (!v19 || v48)
    {
      v27 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v48;
        if (!v48)
        {
          v28 = @"Unknown Error";
        }

        *buf = 138543362;
        *&buf[4] = v28;
        v24 = "[MAIN] Unable to create date data : %{public}@";
        v25 = v27;
        v26 = 12;
        goto LABEL_32;
      }
    }

    else
    {
      v20 = v19;
      v21 = [@"/var/MobileSoftwareUpdate/Controller/SUCoreAnalytics/updateDate" stringByDeletingLastPathComponent];
      if (![(NSFileManager *)v16 fileExistsAtPath:v21])
      {
        v47 = 0;
        [(NSFileManager *)v16 createDirectoryAtPath:v21 withIntermediateDirectories:1 attributes:0 error:&v47];
        if (v47)
        {
          v22 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v47;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MAIN] Unable to create controller folder for softwareupdated: %{public}@", buf, 0xCu);
          }
        }
      }

      [(NSFileManager *)v16 createFileAtPath:@"/var/MobileSoftwareUpdate/Controller/SUCoreAnalytics/updateDate" contents:v20 attributes:0];
      v23 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v24 = "[MAIN] Done writing update date";
        v25 = v23;
        v26 = 2;
LABEL_32:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
      }
    }
  }

  previous_update_state = retrieve_previous_update_state();
  if (is_first_boot_after_update() && previous_update_state == 2)
  {
    v30 = perform_cleanup_and_disable_staged_assets_command(0, 0, &cf);
    v31 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    v32 = v31;
    if (v30)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v33 = "[MAIN] Called clean up prepare path and staged assets";
LABEL_41:
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
        goto LABEL_48;
      }

      goto LABEL_48;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      main_cold_4(&cf);
    }

LABEL_46:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_48;
  }

  v34 = perform_cleanup_command(0, 1, 0, &cf);
  v35 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  v32 = v35;
  if ((v34 & 1) == 0)
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      main_cold_3(&cf);
    }

    goto LABEL_46;
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v33 = "[MAIN] Called clean up prepare path";
    goto LABEL_41;
  }

LABEL_48:
  v36 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[MAIN] Cleaning up RecoveryOS state files", buf, 2u);
  }

  *buf = 0;
  v37 = perform_cleanup_recoveryos_saved_state_command(buf);
  v38 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  v39 = v38;
  if (v37)
  {
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[MAIN] Successfully cleaned up RecoveryOS state files", v49, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      main_cold_5(buf);
    }

    if (*buf)
    {
      CFRelease(*buf);
      *buf = 0;
    }
  }

  if (msu_should_save_env_info_for_recovery())
  {
    v40 = copyAdditionalOptionsForBootedOSState();
    v41 = saveCurrentBootedOSStateForRecoveryModes(v40);
    v42 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    v43 = v42;
    if (v41)
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[MAIN] Successfully wrote out bootedOS environment information", v49, 2u);
      }
    }

    else if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      main_cold_6();
    }

    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserverForName:"addObserverForName:object:queue:usingBlock:" object:NSCurrentLocaleDidChangeNotification queue:0 usingBlock:0, &__block_literal_global_7];
  }

  xpc_activity_register("com.apple.softwareupdated.logs-cleanup", XPC_ACTIVITY_CHECK_IN, &__block_literal_global_14);
LABEL_65:
  mach_service = xpc_connection_create_mach_service("com.apple.mobile.softwareupdated", 0, 1uLL);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_17);
  v45 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[MAIN] softwareupdated ready to handle client messages", buf, 2u);
  }

  xpc_connection_resume(mach_service);
  objc_autoreleasePoolPop(v3);
  CFRunLoopRun();
  return 0;
}

void __main_block_invoke(id a1, NSNotification *a2)
{
  v2 = copyAdditionalOptionsForBootedOSState();
  v3 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Locale/Language updated. Updating BootedOSState with additional info: %@", &v4, 0xCu);
  }

  saveCurrentBootedOSStateForRecoveryModes(v2);
}

void __main_block_invoke_11(id a1, OS_xpc_object *a2)
{
  v3 = objc_autoreleasePoolPush();
  cf = 0;
  state = xpc_activity_get_state(a2);
  v5 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "clean_update_logs";
    v26 = 2048;
    v27 = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s state=%ld", buf, 0x16u);
  }

  v6 = xpc_activity_copy_criteria(a2);
  v7 = v6;
  if (state == 2)
  {
    if (xpc_activity_should_defer(a2))
    {
      v11 = xpc_activity_set_state(a2, 3);
      v12 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v13 = "failure";
      if (v11)
      {
        v13 = "success";
      }

      *buf = 136315394;
      v25 = "clean_update_logs";
      v26 = 2080;
      v27 = v13;
      v14 = "%s should defer activity, %s";
      v15 = v12;
      v16 = 22;
      goto LABEL_17;
    }
  }

  else
  {
    if (state)
    {
      goto LABEL_18;
    }

    if (v6)
    {
      int64 = xpc_dictionary_get_int64(v6, XPC_ACTIVITY_DELAY);
      v9 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (int64 != XPC_ACTIVITY_INTERVAL_7_DAYS)
      {
        if (v10)
        {
          *buf = 136315394;
          v25 = "clean_update_logs";
          v26 = 2048;
          v27 = int64;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s activity already set, delay=%lld", buf, 0x16u);
        }

        goto LABEL_38;
      }

      if (v10)
      {
        *buf = 136315394;
        v25 = "clean_update_logs";
        v26 = 2048;
        v27 = int64;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s activity is set with default retention %lld", buf, 0x16u);
      }
    }
  }

  if (os_variant_is_recovery())
  {
    v17 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v25 = "clean_update_logs";
    v14 = "%s os variant is recovery";
    v15 = v17;
    v16 = 12;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
LABEL_18:
    if (!v7)
    {
      goto LABEL_39;
    }

LABEL_38:
    xpc_release(v7);
    goto LABEL_39;
  }

  v22 = -1;
  if (perform_logs_cleanup_command(XPC_ACTIVITY_INTERVAL_7_DAYS, &v22, &cf))
  {
    v18 = XPC_ACTIVITY_INTERVAL_1_DAY;
    if (v22 >= 0)
    {
      v19 = XPC_ACTIVITY_INTERVAL_7_DAYS - v22;
    }

    else
    {
      v19 = XPC_ACTIVITY_INTERVAL_7_DAYS;
    }

    if (XPC_ACTIVITY_INTERVAL_7_DAYS - v22 >= XPC_ACTIVITY_INTERVAL_1_DAY)
    {
      v20 = v19;
    }

    else
    {
      v20 = XPC_ACTIVITY_INTERVAL_1_DAY;
    }

    v21 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v25 = "clean_update_logs";
      v26 = 2048;
      v27 = v22;
      v28 = 2048;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s oldest=%lld, new delay=%lld", buf, 0x20u);
    }

    if (v7)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __main_block_invoke_11_cold_1(&cf);
    }

    v18 = XPC_ACTIVITY_INTERVAL_1_DAY;
    v20 = XPC_ACTIVITY_INTERVAL_1_DAY;
    if (v7)
    {
      goto LABEL_37;
    }
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
LABEL_37:
    xpc_dictionary_set_int64(v7, XPC_ACTIVITY_DELAY, v20);
    xpc_dictionary_set_int64(v7, XPC_ACTIVITY_GRACE_PERIOD, v18);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v7, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_activity_set_criteria(a2, v7);
    goto LABEL_38;
  }

  if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    __main_block_invoke_11_cold_2();
  }

LABEL_39:
  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v3);
}

void __main_block_invoke_2(id a1, OS_xpc_object *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    xpc_connection_set_target_queue(a2, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __main_block_invoke_3;
    handler[3] = &unk_100049988;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    if ((msu_client_is_entitled(a2, "com.apple.private.softwareupdated-helpers") & 1) == 0)
    {
      v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v8 = "com.apple.private.softwareupdated-helpers";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[PEER_CONNECTION] Connection is not a helper service since it doesn't have the %s entitlement. Adding it as an active client.", buf, 0xCu);
      }

      if (get_peer_connections_queue_peer_connections_queue_once != -1)
      {
        __main_block_invoke_2_cold_2();
      }

      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = __main_block_invoke_20;
      v5[3] = &unk_100049960;
      v5[4] = a2;
      dispatch_sync(get_peer_connections_queue_peer_connections_queue, v5);
    }

    xpc_connection_resume(a2);
  }

  else if (type == &_xpc_type_error)
  {
    if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __main_block_invoke_2_cold_1(a2);
    }

    exit(0);
  }
}

void __main_block_invoke_3(uint64_t a1, xpc_object_t object, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  type = xpc_get_type(object);
  if (type != &_xpc_type_dictionary)
  {
    if (type != &_xpc_type_error)
    {
      v16 = xpc_copy_description(object);
      if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
      {
        __main_block_invoke_3_cold_1();
      }

      free(v16);
      return;
    }

    if (get_peer_connections_queue_peer_connections_queue_once != -1)
    {
      __main_block_invoke_3_cold_2();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __main_block_invoke_4;
    block[3] = &unk_100049960;
    block[4] = *(a1 + 32);
    dispatch_sync(get_peer_connections_queue_peer_connections_queue, block);
    if (object == &_xpc_error_connection_interrupted)
    {
      v20 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      string = xpc_dictionary_get_string(&_xpc_error_connection_interrupted, _xpc_error_key_description);
      *buf = 136315138;
      v28 = string;
      v22 = "[PEER_CONNECTION] Remote service has exited (%s) | Connection remains live as means to trigger remote service re-launch on-demand";
    }

    else
    {
      if (object != &_xpc_error_connection_invalid)
      {
        v18 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
        v19 = v18;
        if (object != &_xpc_error_termination_imminent)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            __main_block_invoke_3_cold_3(object);
          }

          return;
        }

        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v25 = xpc_dictionary_get_string(&_xpc_error_termination_imminent, _xpc_error_key_description);
        *buf = 136315138;
        v28 = v25;
        v22 = "[PEER_CONNECTION] Connection will terminate soon (%s) | All outstanding transactions must be wound down, no new transactions";
        v24 = v19;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
        return;
      }

      v20 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v23 = xpc_dictionary_get_string(&_xpc_error_connection_invalid, _xpc_error_key_description);
      *buf = 136315138;
      v28 = v23;
      v22 = "[PEER_CONNECTION] Connection has become invalid (%s) | Connection is no longer part of the XPC namespace";
    }

    v24 = v20;
    goto LABEL_22;
  }

  v17 = *(a1 + 32);

  handle_message(v17, object, &jump_table, 27, v12, v13, v14, v15, a9);
}

uint64_t get_peer_connections_queue()
{
  if (get_peer_connections_queue_peer_connections_queue_once != -1)
  {
    __main_block_invoke_3_cold_2();
  }

  return get_peer_connections_queue_peer_connections_queue;
}

id __main_block_invoke_4(uint64_t a1)
{
  if (get_peer_connections_array_peer_connections_array_once != -1)
  {
    __main_block_invoke_4_cold_1();
  }

  v2 = get_peer_connections_array_peer_connections_array;
  v3 = *(a1 + 32);

  return [v2 removeObject:v3];
}

id __main_block_invoke_20(uint64_t a1)
{
  if (get_peer_connections_array_peer_connections_array_once != -1)
  {
    __main_block_invoke_4_cold_1();
  }

  v2 = get_peer_connections_array_peer_connections_array;
  v3 = *(a1 + 32);

  return [v2 addObject:v3];
}

id initDecodeClasses()
{
  v0 = [NSSet alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v1 = [NSArray arrayWithObjects:&v3 count:9];
  result = [v0 initWithArray:{v1, v3, v4, v5, v6, v7, v8, v9, v10}];
  _decodeClasses = result;
  return result;
}

void handle_update_metrics()
{
  v0 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = @"handle_update_metrics";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %@ | BEGIN", buf, 0xCu);
  }

  v1 = +[UMEventRecorder recorder];
  cf = 0;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (has_internal_diagnostics)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    *buf = 138412802;
    v58 = @"handle_update_metrics";
    v59 = 2112;
    *v60 = @"TestInhibitPromptForTTR";
    *&v60[8] = 2114;
    *&v60[10] = @"msu-test-inhibit-ttr";
    v5 = "[UPDATE_METRICS] %@ | softwareupdated supporting TTR prompt disable [preference %@, NVRAM %{public}@]";
    v6 = v3;
    v7 = 32;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v58 = @"handle_update_metrics";
    v5 = "[UPDATE_METRICS] %@ | softwareupdated running on iOS";
    v6 = v3;
    v7 = 12;
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
LABEL_9:
  previous_update_unresolved_tolerated_failures_count = get_previous_update_unresolved_tolerated_failures_count();
  updated = MSUCopyPreviousUpdateAllToleratedFailures();
  v10 = objc_alloc_init(NSMutableDictionary);
  if (updated)
  {
LABEL_12:
    v12 = [[[NSString stringWithFormat:?]stringByReplacingOccurrencesOfString:@"\n" withString:@" "], "stringByReplacingOccurrencesOfString:withString:", @"=", @":"];
    if (v10)
    {
      [v10 setObject:v12 forKeyedSubscript:@"toleratedSteps"];
      [v10 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", previous_update_unresolved_tolerated_failures_count), @"toleratedFailureCount"}];
    }

    goto LABEL_15;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  if (v11)
  {
    updated = v11;
    goto LABEL_12;
  }

  v13 = os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR);
  if (v13)
  {
    handle_update_metrics_cold_1();
  }

LABEL_15:
  if ((msu_running_in_limited_environment(v13, v14, v15, v16, v17, v18, v19, v20) & 1) == 0)
  {
    v21 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS]: | Attempting to read asset audience", buf, 2u);
    }

    v22 = MAGetPallasAudience();
    v23 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v24)
      {
        *buf = 138543362;
        v58 = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS]: | Asset audience %{public}@ found", buf, 0xCu);
      }

      if (v10)
      {
        [v10 setValue:v22 forKey:@"MobileAssetAssetAudience"];
        v25 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v26 = "[UPDATE_METRICS]: | Set asset audience in dict";
LABEL_30:
          v27 = v25;
          goto LABEL_31;
        }
      }

      else
      {
        v25 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v26 = "[UPDATE_METRICS]: | Dict does not exist. Unable to set asset audience";
          goto LABEL_30;
        }
      }
    }

    else if (v24)
    {
      *buf = 0;
      v26 = "[UPDATE_METRICS]: | Unable to determine asset audience";
      v27 = v23;
LABEL_31:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
    }
  }

  v28 = gpu_dynamic_stats();
  if (v28 && v10)
  {
    [v10 setValue:v28 forKey:@"GPUDynamicStats"];
  }

  v29 = MSUShouldPromptTTR();
  v30 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    if (v31)
    {
      *buf = 138412290;
      v58 = @"handle_update_metrics";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %@ | record updateFinished (should prompt for TTR)", buf, 0xCu);
    }

    softwareupdated_add_additional_analytics_data_for_phase(v10);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = __handle_update_metrics_block_invoke;
    v55[3] = &unk_1000499B0;
    v55[4] = @"handle_update_metrics";
    [v1 recordPostUpdateEvent:@"updateFinished" additionalInfo:v10 withCallback:v55];
    if (!v10)
    {
      goto LABEL_44;
    }

LABEL_43:

    goto LABEL_44;
  }

  if (v31)
  {
    *buf = 138412290;
    v58 = @"handle_update_metrics";
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %@ | record updateFinished", buf, 0xCu);
  }

  softwareupdated_add_additional_analytics_data_for_phase(v10);
  [v1 recordPostUpdateEvent:@"updateFinished" additionalInfo:v10];
  if (v10)
  {
    goto LABEL_43;
  }

LABEL_44:
  previous_apply_date = retrieve_previous_apply_date();
  previous_update_state = retrieve_previous_update_state();
  v34 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v58 = @"report_logs_for_long_ramdisk_if_needed";
    v59 = 1024;
    *v60 = previous_update_state;
    *&v60[4] = 2114;
    *&v60[6] = previous_apply_date;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %@ | previous_update_state=%d lastApplyDate=%{public}@", buf, 0x1Cu);
  }

  [+[NSDate now](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", previous_apply_date];
  if (v35 > 7200.0)
  {
    if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      handle_update_metrics_cold_2();
    }

    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 78, 0, 0, @"Update finish took too long since apply finish event", v36, v37, v38, v54);
    submitRestoreLogFile(error_internal_cf, 0, 0, 0);
    if (error_internal_cf)
    {
      CFRelease(error_internal_cf);
    }
  }

  v40 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = @"handle_update_metrics";
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %@ | Clean up NVRAM", buf, 0xCu);
  }

  if ((perform_cleanup_NVRAM_command(&cf) & 1) == 0)
  {
    if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      handle_update_metrics_cold_3(&cf);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v41 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = @"handle_update_metrics";
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %@ | Submit any accumulated events", buf, 0xCu);
  }

  v42 = [v1 submitEventsInBackground:1];
  if ((msu_running_in_limited_environment(v42, v43, v44, v45, v46, v47, v48, v49) & 1) == 0)
  {
    v50 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = @"handle_update_metrics";
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %@ | Flushing RecoveryOS controller events", buf, 0xCu);
    }

    v51 = [[NSString alloc] initWithFormat:@"%s/%s", "/private/var/MobileSoftwareUpdate/", "Controller/NeRD"];
    if (v51)
    {
      v52 = v51;
      [+[SUCoreEventReporter initSharedReporterStoringToPath:](SUCoreEventReporter initSharedReporterStoringToPath:{v51), "flushEvent"}];
    }

    else if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      handle_update_metrics_cold_4();
    }
  }

  v53 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = @"handle_update_metrics";
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %@ | DONE", buf, 0xCu);
  }
}

void softwareupdated_add_additional_analytics_data_for_phase(void *a1)
{
  v2 = [[MSUAnalytics alloc] initWithPhase:5];
  v3 = [(MSUAnalytics *)v2 copyAnalyticsData];
  v4 = MGGetBoolAnswer();
  if (v3)
  {
    v5 = v4;
    v6 = [v3 mutableCopy];
    if (v6)
    {
      v7 = v6;
      if ((v5 & 1) == 0)
      {
        [v6 removeObjectForKey:@"personId"];
        [v7 removeObjectForKey:@"serialNumber"];
      }

      previous_apply_date = retrieve_previous_apply_date();
      if (previous_apply_date)
      {
        v9 = previous_apply_date;
        [previous_apply_date timeIntervalSince1970];
        v11 = [[NSString alloc] initWithFormat:@"%llu", (v10 * 1000.0)];
        [v7 setObject:v11 forKeyedSubscript:@"lastApplyTime"];
      }

      v12 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS]: Adding additional data to eventStats: %@", buf, 0xCu);
      }

      [a1 addEntriesFromDictionary:v7];
    }

    else
    {
      v13 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS]: Failed to make a copy of the analyticsData dict", buf, 2u);
      }
    }
  }
}

void __handle_update_metrics_block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
  v6 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  v7 = &off_100032000;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v57 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %@ | updateFinished callback | BEGIN", buf, 0xCu);
  }

  v9 = [a2 objectForKeyedSubscript:@"otaOutcome"];
  v10 = [a2 objectForKeyedSubscript:@"failureReason"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if ([a2 objectForKeyedSubscript:@"migratorMetrics"] && (objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"migratorMetrics"), "containsString:", @"result=0") & 1) == 0)
  {
    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      v13 = @"during APFS Migrator";
      v12 = 1;
    }

    else
    {
      v55 = v10;
      v21 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found migrator failure, but no verification log", buf, 2u);
      }

      v12 = 0;
      v13 = 0;
      v10 = v55;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  v14 = [v11 isEqualToString:@"success"] ^ 1;
  if (v10)
  {
    v14 = 1;
  }

  if ((v12 | v14) == 1)
  {
LABEL_13:
    v53 = v4;
    v54 = v10;
    v15 = a1;
    v16 = [a2 objectForKeyedSubscript:@"deviceModel"];
    v17 = [a2 objectForKeyedSubscript:@"targetOSVersion"];
    v18 = [a2 objectForKeyedSubscript:@"originalOSVersion"];
    v19 = [a2 objectForKeyedSubscript:@"toleratedFailureCount"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = 0;
    }

    if ([v11 containsString:@"fail_forward"])
    {
      v13 = @"while cleaning up, but booted the new OS anyway";
    }

    else if ([v11 containsString:@"back"])
    {
      v13 = @"to install";
    }

    else if (v19 && ![v19 isEqualToNumber:&off_100053BB0])
    {
      v13 = @"to update all device firmware";
    }

    else
    {
      v20 = [v11 isEqualToString:@"success_on_reboot_retry"];
      if (v20)
      {
        v13 = @"initially and had to restart";
      }

      if (((v12 | v20) & 1) == 0)
      {
        if ([v11 isEqualToString:@"success"])
        {
          v13 = @"in a non-fatal way";
        }

        else
        {
          v13 = @"in an unexpected way";
        }
      }
    }

    a1 = v15;
    v22 = [NSString stringWithFormat:@"Your OTA update failed %@", v13];
    v23 = [NSString stringWithFormat:@"%@/%@: OTA Update outcome %@ with reason %@", v16, v17, v9, v54];
    v24 = [NSString stringWithFormat:@"My OTA update attempt from %@ to %@ failed %@...\n\nEvent details:\n%@", v18, v17, v13, a2];
    CFPreferencesAppSynchronize(@"com.apple.MobileSoftwareUpdate");
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"TestInhibitPromptForTTR", @"com.apple.MobileSoftwareUpdate", 0);
    v5 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
    v26 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (AppBooleanValue)
    {
      if (v27)
      {
        *buf = 138543618;
        v57 = @"is_tap_to_radar_inhibited";
        v58 = 2114;
        v59 = @"TestInhibitPromptForTTR";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %{public}@ | %{public}@=true | not prompting for TTR", buf, 0x16u);
      }

LABEL_36:
      v28 = [objc_msgSend(v5[372] "sharedLogger")];
      v4 = v53;
      v7 = &off_100032000;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 32);
        *buf = 138412546;
        v57 = v29;
        v58 = 2114;
        v59 = v22;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %@ | updateFinished callback | WARNING(INTERNAL-ONLY) | not prompting for TTR: %{public}@", buf, 0x16u);
      }

      goto LABEL_60;
    }

    if (v27)
    {
      *buf = 138543618;
      v57 = @"is_tap_to_radar_inhibited";
      v58 = 2114;
      v59 = @"TestInhibitPromptForTTR";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %{public}@ | checked %{public}@ | no preference based inhibit of prompting for TTR", buf, 0x16u);
    }

    v30 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/options");
    if (!v30)
    {
      v38 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v57 = @"is_tap_to_radar_inhibited";
        v39 = "[UPDATE_METRICS] %{public}@ | WARNING | unable to obtain reference to IO device tree options";
        v40 = v38;
        v41 = 12;
LABEL_56:
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v39, buf, v41);
      }

LABEL_57:
      v49 = [objc_msgSend(v5[372] "sharedLogger")];
      v4 = v53;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *(a1 + 32);
        *buf = 138412546;
        v57 = v50;
        v58 = 2114;
        v59 = v22;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %@ | updateFinished callback | prompting for TTR: %{public}@", buf, 0x16u);
      }

      MSUPromptForTTR(v22, v23, v24);
      v7 = &off_100032000;
      goto LABEL_60;
    }

    v31 = v30;
    CFProperty = IORegistryEntryCreateCFProperty(v30, @"msu-test-inhibit-ttr", kCFAllocatorDefault, 0);
    IOObjectRelease(v31);
    if (CFProperty)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [CFProperty bytes];
        v34 = [NSString alloc];
        v35 = strnlen(v33, [CFProperty length]);
        v36 = v34;
        v5 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
        v37 = [v36 initWithBytes:v33 length:v35 encoding:4];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_54;
        }

        v37 = [CFProperty copy];
      }

      v42 = v37;

      if (v42)
      {
        v43 = [v42 isEqualToString:@"true"];
        v44 = v5;
        v45 = v43;
        v46 = [objc_msgSend(v44[372] "sharedLogger")];
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
        if (v45)
        {
          if (v47)
          {
            *buf = 138543618;
            v57 = @"is_tap_to_radar_inhibited";
            v58 = 2114;
            v59 = @"msu-test-inhibit-ttr";
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %{public}@ | %{public}@=true | not prompting for TTR", buf, 0x16u);
          }

          v5 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
          goto LABEL_36;
        }

        if (v47)
        {
          *buf = 138543874;
          v57 = @"is_tap_to_radar_inhibited";
          v58 = 2114;
          v59 = @"msu-test-inhibit-ttr";
          v60 = 2114;
          v61 = v42;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %{public}@ | %{public}@=%{public}@ | no NVRAM based inhibit of prompting for TTR", buf, 0x20u);
        }

        v5 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
        goto LABEL_57;
      }
    }

LABEL_54:
    v48 = [objc_msgSend(v5[372] "sharedLogger")];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v57 = @"is_tap_to_radar_inhibited";
      v58 = 2114;
      v59 = @"msu-test-inhibit-ttr";
      v39 = "[UPDATE_METRICS] %{public}@ | checked %{public}@ | no valid value for NVRAM based inhibit of prompting for TTR";
      v40 = v48;
      v41 = 22;
      goto LABEL_56;
    }

    goto LABEL_57;
  }

LABEL_60:
  v51 = [objc_msgSend(v5[372] "sharedLogger")];
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v52 = *(a1 + 32);
    *buf = *(v7 + 345);
    v57 = v52;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[UPDATE_METRICS] %@ | updateFinished callback | DONE", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
}

id copyAdditionalOptionsForBootedOSState()
{
  v0 = -[NSLocale languageCode](+[NSLocale localeWithLocaleIdentifier:](NSLocale, "localeWithLocaleIdentifier:", [(NSArray *)+[NSLocale preferredLanguages](NSLocale firstObject]), "languageCode");
  v1 = objc_alloc_init(NSMutableDictionary);
  [v1 setObject:v0 forKeyedSubscript:@"BootedOSLanguage"];
  return v1;
}

void handle_create_update_brain_connection(_xpc_connection_s *a1, void *a2, void *a3)
{
  cf = 0;
  v6 = msu_deserialize_cf_object_from_xpc_dict(a2, "UpdateAttributes");
  v7 = v6;
  if (get_softwareupdated_queue_queue_once != -1)
  {
    handle_create_update_brain_connection_cold_1();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __copy_shared_update_brain_connection_block_invoke;
  block[3] = &unk_100049A20;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  block[7] = v6;
  block[8] = &cf;
  dispatch_sync(get_softwareupdated_queue_queue, block);
  v11 = copy_shared_update_brain_connection_brain_connection;
  error_internal_cf = cf;
  if (copy_shared_update_brain_connection_brain_connection)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __handle_create_update_brain_connection_block_invoke;
    v15[3] = &unk_1000499D8;
    v15[4] = a3;
    v15[5] = v7;
    if (handle_create_update_brain_connection_onceToken != -1)
    {
      dispatch_once(&handle_create_update_brain_connection_onceToken, v15);
    }

    reply = xpc_dictionary_create_reply(a2);
    v14 = xpc_endpoint_create(v11);
    xpc_dictionary_set_value(reply, "UpdateBrainServiceEndPoint", v14);
    xpc_connection_send_message(a1, reply);
    xpc_release(reply);
    xpc_release(v11);
    xpc_release(v14);
  }

  else
  {
    if (!cf)
    {
      error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"No service connection", v8, v9, v10, v15[0]);
      cf = error_internal_cf;
    }

    record_brain_load_event(a3, v7, error_internal_cf);
    msu_send_error(a1, a2, cf, 0);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void handle_purge_suspended_update(_xpc_connection_s *a1, void *a2, CFDictionaryRef theDict)
{
  cf = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"TargetUUID");
  }

  else
  {
    Value = 0;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v7 = +[UMEventRecorder recorder];
  [v7 recordEvent:@"purge" information:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __handle_purge_suspended_update_block_invoke;
  v8[3] = &unk_100049960;
  v8[4] = v7;
  dispatch_async(global_queue, v8);
  if (perform_cleanup_staged_assets_command(1, Value, &cf))
  {
    msu_send_status(a1, a2, 0);
  }

  else
  {
    msu_send_error(a1, a2, cf, 1);
    CFRelease(cf);
  }
}

void handle_calculate_prepare_size(_xpc_connection_s *a1, void *a2, CFDictionaryRef theDict)
{
  v18 = 0;
  valuePtr = 0;
  error_internal_cf = 0;
  Value = CFDictionaryGetValue(theDict, @"AssetProperties");
  if (Value)
  {
    v10 = CFDictionaryGetValue(theDict, @"TargetUUID");
    if (MSUAssetCalculatePrepareSizes_server(v10, Value, &valuePtr, &v18, &error_internal_cf))
    {
      Value = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
      if (Value)
      {
        v14 = +[NSMutableDictionary dictionary];
        [v14 setObject:Value forKeyedSubscript:@"Size"];
        [v14 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", v18), @"SnapshotSize"}];
        msu_send_status(a1, a2, v14);
      }

      else
      {
        error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"Could not create CFNumber from %llu", v11, v12, v13, valuePtr);
        msu_send_error(a1, a2, error_internal_cf, 1);
      }
    }

    else
    {
      msu_send_error(a1, a2, error_internal_cf, 1);
      Value = 0;
    }

    v15 = error_internal_cf;
    if (error_internal_cf)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"No asset properties in request", v6, v7, v8, v16);
    error_internal_cf = v15;
    msu_send_error(a1, a2, v15, 1);
    if (v15)
    {
LABEL_10:
      CFRelease(v15);
      error_internal_cf = 0;
    }
  }

  if (Value)
  {
    CFRelease(Value);
  }
}

void handle_calculate_apply_size(_xpc_connection_s *a1, void *a2, CFDictionaryRef theDict)
{
  v17 = 0;
  valuePtr = 0;
  error_internal_cf = 0;
  Value = CFDictionaryGetValue(theDict, @"AssetProperties");
  if (Value)
  {
    if (MSUAssetCalculateApplySizes_server(Value, &valuePtr, &v17, &error_internal_cf))
    {
      v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
      if (v12)
      {
        v13 = +[NSMutableDictionary dictionary];
        [v13 setObject:v12 forKeyedSubscript:@"Size"];
        [v13 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", v17), @"SnapshotSize"}];
        msu_send_status(a1, a2, v13);
      }

      else
      {
        error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"Could not create CFNumber from %llu", v9, v10, v11, valuePtr);
        msu_send_error(a1, a2, error_internal_cf, 1);
      }
    }

    else
    {
      msu_send_error(a1, a2, error_internal_cf, 1);
      v12 = 0;
    }

    v14 = error_internal_cf;
    if (error_internal_cf)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"No asset properties in request", v6, v7, v8, v15);
    error_internal_cf = v14;
    msu_send_error(a1, a2, v14, 1);
    v12 = 0;
    if (v14)
    {
LABEL_10:
      CFRelease(v14);
      error_internal_cf = 0;
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

id handle_ma_load_brain(void *a1, void *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"AssetProperties");
  ObjectFromMessage = getObjectFromMessage(a2);
  if (ObjectFromMessage)
  {
    if (objc_opt_respondsToSelector())
    {
      ObjectFromMessage = [ObjectFromMessage objectForKey:@"DownloadOptions"];
      logfunction("", 1, @"Caller has pased in downloadOptions: %@\n", v13, v14, v15, v16, v17, ObjectFromMessage);
    }

    else
    {
      ObjectFromMessage = 0;
    }
  }

  logfunction("", 1, @"The attributes are: %@\n", v7, v8, v9, v10, v11, Value);
  v18 = [MSUUpdateBrainLocator brainLocatorWithUpdateAttributes:Value];
  xpc_retain(a1);
  xpc_retain(a2);
  v19 = os_transaction_create();
  if (ObjectFromMessage)
  {
    v20 = ObjectFromMessage;
  }

  else
  {
    ObjectFromMessage = objc_opt_new();
    [ObjectFromMessage setDiscretionary:0];
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __handle_ma_load_brain_block_invoke;
  v22[3] = &unk_100049A88;
  v22[4] = v18;
  v22[5] = theDict;
  v22[6] = Value;
  v22[7] = a1;
  v22[8] = a2;
  v22[9] = v19;
  v22[10] = ObjectFromMessage;
  return [(MSUUpdateBrainLocator *)v18 installMAUpdateBrain:ObjectFromMessage handler:v22];
}

void handle_cancel_load_brain(_xpc_connection_s *a1, void *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"AssetProperties");
  if (Value)
  {
    v16 = 0;
    if ([[MSUUpdateBrainLocator brainLocatorWithUpdateAttributes:?], "cancelInstall:", &v16])
    {
      msu_send_status(a1, a2, 0);
    }

    else
    {
      logfunction("", 1, @"Failed to cancel update brain: %@\n", v9, v10, v11, v12, v13, v16);
      msu_send_error(a1, a2, v16, 1);
    }
  }

  else
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"No asset attributes in request", v6, v7, v8, v15);
    msu_send_error(a1, a2, error_internal_cf, 1);

    CFRelease(error_internal_cf);
  }
}

void handle_adjust_load_brain_options(void *a1, void *a2, CFDictionaryRef theDict)
{
  if (CFDictionaryGetValue(theDict, @"AssetProperties"))
  {
    xpc_retain(a1);
    xpc_retain(a2);
    v10 = os_transaction_create();
    msu_send_status(a1, a2, 0);
    xpc_release(a1);
    xpc_release(a2);
  }

  else
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"No asset attributes in request", v5, v6, v7, v9);
    msu_send_error(a1, a2, error_internal_cf, 1);

    CFRelease(error_internal_cf);
  }
}

void handle_ma_adjust_load_brain_options(void *a1, void *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  logfunction("", 1, @"in handle_ma_adjust_load_brain_options\n", a4, a5, a6, a7, a8, v24);
  Value = CFDictionaryGetValue(a3, @"AssetProperties");
  ObjectFromMessage = getObjectFromMessage(a2);
  if (ObjectFromMessage)
  {
    v18 = ObjectFromMessage;
    logfunction("", 1, @"The secure encoded object is: %@\n", v13, v14, v15, v16, v17, ObjectFromMessage);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(NSData *)v18 objectForKey:@"DownloadConfig"];
      if (Value)
      {
        v20 = v19;
        if (v19)
        {
          v21 = [MSUUpdateBrainLocator brainLocatorWithUpdateAttributes:Value];
          xpc_retain(a1);
          xpc_retain(a2);
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = __handle_ma_adjust_load_brain_options_block_invoke;
          v26[3] = &unk_100049AB0;
          v26[4] = a1;
          v26[5] = a2;
          v26[6] = os_transaction_create();
          [(MSUUpdateBrainLocator *)v21 adjustMADownloadOptions:v20 callback:v26];
          return;
        }
      }
    }

    v22 = @"No asset attributes or config in request";
  }

  else
  {
    v22 = @"No secure encoded object in request";
  }

  error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, v22, v15, v16, v17, v25);
  msu_send_error(a1, a2, error_internal_cf, 1);

  CFRelease(error_internal_cf);
}

void handle_purge_update_brains(_xpc_connection_s *a1, void *a2)
{
  v9 = 0;
  [[MSUUpdateBrainLocator brainLocatorWithUpdateAttributes:?], "purgeInstalledUpdateBrains:", &v9];
  if (v9)
  {
    logfunction("", 1, @"Failed to purge update brains: %@\n", v4, v5, v6, v7, v8, v9);
    msu_send_error(a1, a2, v9, 0);
  }

  else
  {
    msu_send_status(a1, a2, 0);
  }
}

uint64_t handle_mark_self_dirty(int a1, xpc_object_t xdict)
{
  if (handle_mark_self_dirty_arrayOnce != -1)
  {
    handle_mark_self_dirty_cold_1();
  }

  v3 = xpc_dictionary_get_BOOL(xdict, "IsDirty");
  v4 = handle_mark_self_dirty_outstandingJobs;
  objc_sync_enter(handle_mark_self_dirty_outstandingJobs);
  if (v3)
  {
    [handle_mark_self_dirty_outstandingJobs addObject:os_transaction_create()];
  }

  else if ([handle_mark_self_dirty_outstandingJobs count])
  {

    [handle_mark_self_dirty_outstandingJobs removeLastObject];
  }

  return objc_sync_exit(v4);
}

id handle_required_disk_space(void *a1, void *a2, CFDictionaryRef theDict)
{
  if (theDict)
  {
    theDict = CFDictionaryGetValue(theDict, @"AssetProperties");
  }

  v5 = [MSUUpdateBrainLocator brainLocatorWithUpdateAttributes:theDict];
  xpc_retain(a1);
  xpc_retain(a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __handle_required_disk_space_block_invoke;
  v7[3] = &unk_100049AF8;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = os_transaction_create();
  return [(MSUUpdateBrainLocator *)v5 requiredDiskSpace:v7];
}

void handle_reboot_to_nerd_call(_xpc_connection_s *a1, void *a2)
{
  v13 = 0;
  v4 = copyAdditionalOptionsForBootedOSState();
  v5 = saveCurrentBootedOSStateForRecoveryModes(v4);
  v11 = @"Failed to save";
  if (v5)
  {
    v11 = @"Successfully saved";
  }

  logfunction("", 1, @"%@ booted os state for NeRD\n", v6, v7, v8, v9, v10, v11);

  if (!perform_reboot_to_nerd_command(&v13) || v13)
  {
    v12 = cferror_to_dictionary(v13);
  }

  else
  {
    v12 = kCFNull;
  }

  msu_send_status(a1, a2, v12);
}

void handle_check_preparation_size(_xpc_connection_s *a1, void *a2, CFDictionaryRef theDict)
{
  valuePtr = 0;
  v23 = 0;
  cf = 0;
  Value = CFDictionaryGetValue(theDict, @"ClientOptions");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
    MSUCheckPreparationSize_server(valuePtr, &v23, &cf);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v23);
      if (v16)
      {
        CFDictionarySetValue(Mutable, @"RequiredSize", v16);
        if (cf)
        {
          TypeID = CFErrorGetTypeID();
          if (TypeID == CFGetTypeID(cf))
          {
            v18 = cferror_to_dictionary(cf);
            CFDictionarySetValue(Mutable, @"ErrorInfo", v18);
            CFRelease(v18);
          }
        }

        msu_send_status(a1, a2, Mutable);
      }

      else
      {
        cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"Could not create CFNumber from %llu", v13, v14, v15, v23);
        msu_send_error(a1, a2, cf, 1);
      }
    }

    else
    {
      cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 14, 0, 0, @"Could not allocate CFMutableDictionary", v9, v10, v11, v20);
      msu_send_error(a1, a2, cf, 1);
      v16 = 0;
    }

    error_internal_cf = cf;
    if (cf)
    {
      goto LABEL_13;
    }
  }

  else
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"No prep size in request", v6, v7, v8, v20);
    cf = error_internal_cf;
    msu_send_error(a1, a2, error_internal_cf, 1);
    v16 = 0;
    Mutable = 0;
    if (error_internal_cf)
    {
LABEL_13:
      CFRelease(error_internal_cf);
      cf = 0;
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void handle_check_installation_size(_xpc_connection_s *a1, void *a2, CFDictionaryRef theDict)
{
  cf = 0;
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"AssetProperties");
  if (!Value)
  {
    v12 = @"No asset properties in request";
    v13 = 9;
    v11 = 0;
    goto LABEL_5;
  }

  MSUCheckInstallationSize_server(Value, &valuePtr, &cf, v6, v7, v8, v9, v10);
  v11 = cf;
  if (cf)
  {
    v12 = @"MSUCheckInstallationSize_server failed";
    v13 = 7;
LABEL_5:
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", v13, v11, 0, v12, v8, v9, v10, v23);
    msu_send_error(a1, a2, error_internal_cf, 1);
    v15 = 0;
    Mutable = 0;
    goto LABEL_6;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    if (v15)
    {
      CFDictionarySetValue(Mutable, @"RequiredSize", v15);
      msu_send_status(a1, a2, Mutable);
      error_internal_cf = 0;
    }

    else
    {
      error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"Could not create CFNumber from %llu", v20, v21, v22, valuePtr);
      msu_send_error(a1, a2, error_internal_cf, 1);
    }
  }

  else
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 14, 0, 0, @"Could not allocate CFMutableDictionary", v17, v18, v19, v23);
    msu_send_error(a1, a2, error_internal_cf, 1);
    v15 = 0;
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (error_internal_cf)
  {
    CFRelease(error_internal_cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void handle_brain_is_loadable(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  logfunction("", 1, @"Entering handle_brain_is_loadable\n", a4, a5, a6, a7, a8, v35);
  if (brain_is_loaded == 1)
  {
    logfunction("", 1, @"brain has been loaded\n", v10, v11, v12, v13, v14, v36);
    v15 = 0;
LABEL_3:
    msu_send_status(a1, a2, 0);
    free(v15);
    return;
  }

  v15 = msu_deserialize_cf_object_from_xpc_dict(a2, "UpdateAttributes");
  if (v15)
  {
    v21 = [MSUUpdateBrainLocator brainLocatorWithUpdateAttributes:v15];
    CFRelease(v15);
    v22 = [(MSUUpdateBrainLocator *)v21 copyUpdateBrainPath:&cf];
    if (v22)
    {
      v15 = v22;
      if (load_trust_cache(v22, &cf))
      {
        goto LABEL_3;
      }

      if ([objc_msgSend(objc_msgSend(cf "userInfo")])
      {
        v38 = @"LoadTrustCachePurgedBrain";
        v39 = &__kCFBooleanTrue;
        v28 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      }

      else
      {
        v28 = 0;
      }

      error_internal_with_userinfo_cf = _create_error_internal_with_userinfo_cf(@"MobileSoftwareUpdateErrorDomain", 39, 0, 0, v28, @"Failed to load update brain trust cache", v26, v27, v36);
    }

    else
    {
      if (cf)
      {
        error_internal_with_userinfo_cf = CFRetain(cf);
        logfunction("", 1, @"Error locating installed update brain: %@\n", v30, v31, v32, v33, v34, error_internal_with_userinfo_cf);
      }

      else
      {
        error_internal_with_userinfo_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 28, 0, 0, @"No update brain is installed", v23, v24, v25, v36);
      }

      v15 = 0;
    }
  }

  else
  {
    logfunction("", 1, @"failed to get update attributs\n", v16, v17, v18, v19, v20, v36);
    error_internal_with_userinfo_cf = 0;
  }

  msu_send_error(a1, a2, error_internal_with_userinfo_cf, 1);
  free(v15);
  if (error_internal_with_userinfo_cf)
  {
    CFRelease(error_internal_with_userinfo_cf);
  }
}

void handle_retreive_last_update_result(_xpc_connection_s *a1, void *a2)
{
  v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = @"handle_retreive_last_update_result";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | BEGIN", &v9, 0xCu);
  }

  updated = MSURetrievePreviousUpdateResults_server();
  v6 = updated;
  if (updated)
  {
    v7 = cferror_to_dictionary(updated);
  }

  else
  {
    v7 = kCFNull;
  }

  msu_send_status(a1, a2, v7);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v8 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = @"handle_retreive_last_update_result";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | DONE", &v9, 0xCu);
  }
}

void handle_retreive_previous_update_state(_xpc_connection_s *a1, void *a2)
{
  v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = @"handle_retreive_previous_update_state";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | BEGIN", buf, 0xCu);
  }

  valuePtr = retrieve_previous_update_state();
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = kCFNull;
  }

  msu_send_status(a1, a2, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = @"handle_retreive_previous_update_state";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | DONE", buf, 0xCu);
  }
}

void handle_is_first_boot_after_update(_xpc_connection_s *a1, void *a2)
{
  v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"handle_is_first_boot_after_update";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | BEGIN", &v8, 0xCu);
  }

  boot_after_update = is_first_boot_after_update();
  v6 = &kCFBooleanTrue;
  if (!boot_after_update)
  {
    v6 = &kCFBooleanFalse;
  }

  msu_send_status(a1, a2, *v6);
  v7 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"handle_is_first_boot_after_update";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | DONE", &v8, 0xCu);
  }
}

void handle_retrieve_previous_update_date(_xpc_connection_s *a1, void *a2)
{
  v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"handle_retrieve_previous_update_date";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | BEGIN", &v8, 0xCu);
  }

  previous_update_date = retrieve_previous_update_date();
  if (previous_update_date)
  {
    v6 = previous_update_date;
  }

  else
  {
    v6 = kCFNull;
  }

  msu_send_status(a1, a2, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"handle_retrieve_previous_update_date";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | DONE", &v8, 0xCu);
  }
}

void handle_get_stashed_connectivity_data_command(_xpc_connection_s *a1, void *a2)
{
  v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = @"handle_get_stashed_connectivity_data_command";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | BEGIN", buf, 0xCu);
  }

  v5 = [[NSString alloc] initWithFormat:@"%s/%s/%s", "/private/var/MobileSoftwareUpdate/", "Controller/NeRD", "ConnectivityData.plist"];
  cf = 0;
  v6 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      handle_get_stashed_connectivity_data_command_cold_5();
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = @"handle_get_stashed_connectivity_data_command";
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | Attempting to load connectivity data from %@", buf, 0x16u);
  }

  v8 = [[NSDictionary alloc] initWithContentsOfFile:v5];
  if (!v8)
  {
    if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      handle_get_stashed_connectivity_data_command_cold_4();
    }

LABEL_17:
    v12 = 0;
    v10 = 0;
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = v8;
  v10 = [v8 objectForKey:@"BootedOSEncryptedWiFiData"];
  if (v10)
  {

    if (NRDCryptoDecrypt(v10, &cf))
    {
      *buf = 0;
      v11 = [NSKeyedUnarchiver alloc];
      v12 = [v11 initForReadingFromData:cf error:buf];
      if (v12)
      {
        v13 = [NSSet alloc];
        v17[0] = objc_opt_class();
        v17[1] = objc_opt_class();
        v17[2] = objc_opt_class();
        v17[3] = objc_opt_class();
        v14 = [v13 initWithArray:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v17, 4)}];
        v9 = [v12 decodeObjectOfClasses:v14 forKey:NSKeyedArchiveRootObjectKey];

        if (v9)
        {
          goto LABEL_19;
        }

        if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
        {
          handle_get_stashed_connectivity_data_command_cold_2();
        }
      }

      else
      {
        if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
        {
          handle_get_stashed_connectivity_data_command_cold_3(buf);
        }
      }
    }

    else
    {
      if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
      {
        handle_get_stashed_connectivity_data_command_cold_1();
      }

      v12 = 0;
    }

    goto LABEL_18;
  }

  v12 = 0;
LABEL_19:
  msu_send_status(a1, a2, v9);

  if (cf)
  {
    CFRelease(cf);
  }

  v15 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = @"handle_get_stashed_connectivity_data_command";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | DONE", buf, 0xCu);
  }
}

void handle_retrieve_previous_restore_date(_xpc_connection_s *a1, void *a2)
{
  v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"handle_retrieve_previous_restore_date";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | BEGIN", &v8, 0xCu);
  }

  previous_restore_date = retrieve_previous_restore_date();
  if (previous_restore_date)
  {
    v6 = previous_restore_date;
  }

  else
  {
    v6 = kCFNull;
  }

  msu_send_status(a1, a2, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"handle_retrieve_previous_restore_date";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | DONE", &v8, 0xCu);
  }
}

void handle_perform_report_and_cleanup_command(_xpc_connection_s *a1, void *a2)
{
  cf = 0;
  v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = @"handle_perform_report_and_cleanup_command";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | BEGIN", buf, 0xCu);
  }

  handle_update_metrics();
  if (perform_cleanup_staged_assets_command(0, 0, &cf))
  {
    v5 = kCFBooleanTrue;
    v6 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = @"handle_perform_report_and_cleanup_command";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | SUCCESS | Completed cleanup command on behalf of client", buf, 0xCu);
    }
  }

  else
  {
    v5 = kCFBooleanFalse;
    if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      handle_perform_report_and_cleanup_command_cold_1(&cf);
    }
  }

  msu_send_status(a1, a2, v5);
  v7 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = @"handle_perform_report_and_cleanup_command";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | DONE", buf, 0xCu);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void handle_get_update_information_command(_xpc_connection_s *a1, void *a2, void *a3)
{
  v6 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = @"handle_get_stashed_connectivity_data_command";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | BEGIN", &v12, 0xCu);
  }

  v7 = +[MSUSupport sharedSupport];
  v8 = [a3 objectForKey:@"TargetUUID"];
  v9 = [v7 MSUSupportGetUpdateInfo:v8 for:{objc_msgSend(a3, "objectForKey:", @"AssetProperties"}];
  if (!v9)
  {
    v10 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = @"handle_get_stashed_connectivity_data_command";
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | getUpdateInfo didn't get any update information, assuming no update process on going for targetUUID %{public}@", &v12, 0x16u);
    }
  }

  msu_send_status(a1, a2, v9);
  v11 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = @"handle_get_stashed_connectivity_data_command";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | DONE", &v12, 0xCu);
  }
}

void handle_perform_cryptegraft_semisplat(_xpc_connection_s *a1, void *a2, void *a3)
{
  cf = 0;
  v6 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = @"handle_perform_cryptegraft_semisplat";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | BEGIN", buf, 0xCu);
  }

  v7 = [a3 objectForKey:@"TargetVolume"];
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  v9 = performCryptegraftSemiSplat(v7, &cf);
  v10 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = @"handle_perform_cryptegraft_semisplat";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | SUCCESS | Completed cryptegraft semi-splat command on behalf of client", buf, 0xCu);
    }

    msu_send_status(a1, a2, kCFBooleanTrue);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      handle_perform_cryptegraft_semisplat_cold_1(&cf);
    }

    msu_send_error(a1, a2, cf, 0);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    handle_perform_cryptegraft_semisplat_cold_2();
  }
}

void handle_perform_cryptegraft_downlevel(_xpc_connection_s *a1, void *a2, void *a3)
{
  cf = 0;
  v6 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = @"handle_perform_cryptegraft_downlevel";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | BEGIN", buf, 0xCu);
  }

  v7 = [a3 objectForKey:@"TargetVolume"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
    }
  }

  v8 = [a3 objectForKey:@"SourcePath"];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = performCryptegraftDownlevel(v7, v10, &cf);
  v12 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = @"handle_perform_cryptegraft_downlevel";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[HANDLER] %@ | SUCCESS | Completed cryptegraft downlevel command on behalf of client", buf, 0xCu);
    }

    msu_send_status(a1, a2, kCFBooleanTrue);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      handle_perform_cryptegraft_downlevel_cold_1(&cf);
    }

    msu_send_error(a1, a2, cf, 0);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    handle_perform_cryptegraft_downlevel_cold_2();
  }
}

void handle_perform_rv_nerd_update(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  logfunction("", 1, @"[RV] Triggering forced NeRD OS update for Release Validation testing\n", a4, a5, a6, a7, a8, v22);
  msu_send_status(a1, a2, kCFNull);
  v10 = +[MSUNRDUpdateBrainController sharedInstance];
  v11 = [(MSUNRDUpdateBrainController *)v10 status];
  logfunction("", 1, @"[RV] NeRD update status: %@\n", v12, v13, v14, v15, v16, v11);
  [(MSUNRDUpdateBrainController *)v10 startForMSUUpdate:&__NSDictionary0__struct withMSUBrainVersion:0 withOptions:&off_100053D38];
  logfunction("", 1, @"[RV] NeRD update started\n", v17, v18, v19, v20, v21, v23);
  msu_send_status(a1, a2, kCFNull);
  if (kCFNull)
  {

    CFRelease(kCFNull);
  }
}

void record_brain_load_event(void *a1, uint64_t a2, __CFString *a3)
{
  v6 = +[UMEventRecorder recorder];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 objectForKeyedSubscript:@"ClientOptions"];
    [v7 startRecordingInstall:a2];
    if (v8)
    {
      v9 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [v8 objectForKeyedSubscript:@"EventStats"]);
    }

    else
    {
      v9 = +[NSMutableDictionary dictionary];
    }

    v10 = v9;
    [(NSMutableDictionary *)v9 setObject:targetBrainVersion forKeyedSubscript:@"targetBrainVersion"];
    if (a3)
    {
      v11 = [NSString stringWithFormat:@"%@ %ld", get_short_error_domain(a3), [(__CFString *)a3 code]];
      v12 = copy_underlying_error_description(a3);
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = @"unknown error";
      }

      [(NSMutableDictionary *)v10 setObject:v13 forKeyedSubscript:@"result"];
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = @"unknown reason";
      }

      v15 = @"failureReason";
    }

    else
    {
      v14 = @"success";
      v15 = @"result";
    }

    [(NSMutableDictionary *)v10 setObject:v14 forKeyedSubscript:v15];
    [v7 recordEvent:@"brainLoad" information:v10];
    global_queue = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __record_brain_load_event_block_invoke;
    block[3] = &unk_1000499D8;
    block[4] = v7;
    block[5] = v8;
    dispatch_async(global_queue, block);
  }
}

void __copy_shared_update_brain_connection_block_invoke(uint64_t a1)
{
  cf = 0;
  v2 = copy_shared_update_brain_connection_brain_connection;
  if (!copy_shared_update_brain_connection_brain_connection)
  {
    v4 = [[MSUUpdateBrainLocator brainLocatorWithUpdateAttributes:?], "copyUpdateBrainPath:", &cf];
    if (v4)
    {
      v3 = v4;
      if (load_trust_cache(v4, &cf))
      {
        bzero(__str, 0x400uLL);
        snprintf(__str, 0x400uLL, "%s/%s.xpc", v3, "com.apple.MobileSoftwareUpdate.UpdateBrainService");
        v11 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = __str;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[BRAIN_CONNECTION] Loading update brain bundle at %{public}s", buf, 0xCu);
        }

        xpc_add_bundle();
        copy_shared_update_brain_connection_brain_connection = xpc_connection_create("com.apple.MobileSoftwareUpdate.UpdateBrainService", 0);
        xpc_connection_set_event_handler(copy_shared_update_brain_connection_brain_connection, &__block_literal_global_237);
        xpc_connection_resume(copy_shared_update_brain_connection_brain_connection);
        v12 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v12, "Command", "PingService");
        Name = protocol_getName([+[MSUBrainDelegateImpl_softwareupdated delegateProtocol] sharedInstance];
        v14 = protocol_getName([+[MSUBrainDelegateImpl_softwareupdated brainProtocol] sharedInstance];
        xpc_dictionary_set_string(v12, "MSUBrainDelegateNSXPCInterfaceName", Name);
        xpc_dictionary_set_string(v12, "MSUBrainNSXPCInterfaceName", v14);
        v15 = xpc_connection_send_message_with_reply_sync(copy_shared_update_brain_connection_brain_connection, v12);
        v16 = v15;
        v17 = &OBJC_METACLASS___MSUUpdateBrainLocator;
        v18 = msubrain;
        if (v15)
        {
          value = xpc_dictionary_get_value(v15, "MSUBrainEndpoint");
          if (value)
          {
            v20 = value;
            v21 = objc_alloc_init(NSXPCListenerEndpoint);
            if (v21)
            {
              v22 = v21;
              v33 = v18;
              string = xpc_dictionary_get_string(v16, "MSUBrainVersion");
              v24 = xpc_dictionary_get_string(v16, "MSUBrainUUID");
              if (string)
              {
                string = [NSString stringWithUTF8String:string];
              }

              if (v24)
              {
                v24 = [NSString stringWithUTF8String:v24];
              }

              [v22 _setEndpoint:v20];
              v25 = [[MSUBrainClientImpl alloc] init:v24 version:string endpoint:v22 delgate:+[MSUBrainDelegateImpl_softwareupdated sharedInstance]];
              v17 = &OBJC_METACLASS___MSUUpdateBrainLocator;
              v18 = v33;
              goto LABEL_34;
            }

            v41 = NSDebugDescriptionErrorKey;
            *buf = @"Could not create NSXPCListenerEndpoint";
            v28 = [NSDictionary dictionaryWithObjects:buf forKeys:&v41 count:1];
            v29 = 1363;
          }

          else
          {
            v39 = NSDebugDescriptionErrorKey;
            v40 = @"UpdateBrainService did not return MSUBrainInterface endpoint";
            v28 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
            v29 = 1301;
          }
        }

        else
        {
          v37 = NSDebugDescriptionErrorKey;
          v38 = @"reply message is nil";
          v28 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v29 = 1350;
        }

        if ([NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:v29 userInfo:v28])
        {
          msubrain = 0;

          v30 = msuSharedLogger();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            __copy_shared_update_brain_connection_block_invoke_cold_1();
          }

LABEL_36:
          xpc_release(v12);
          xpc_release(v16);
          brain_is_loaded = 1;
          v2 = copy_shared_update_brain_connection_brain_connection;
          if (!copy_shared_update_brain_connection_brain_connection)
          {
            goto LABEL_25;
          }

          goto LABEL_3;
        }

        v25 = 0;
LABEL_34:
        v17[70].cache = v25;

        v31 = msuSharedLogger();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Successfully copied MSUBrain endpoint from ping reply", buf, 2u);
        }

        goto LABEL_36;
      }

      error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 39, cf, 0, @"Failed to load update brain trust cache", v8, v9, v10, v32);
      v27 = *(a1 + 64);
      if (!v27)
      {
        CFRelease(error_internal_cf);
        goto LABEL_25;
      }
    }

    else if (cf)
    {
      if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
      {
        __copy_shared_update_brain_connection_block_invoke_cold_2(&cf);
      }

      error_internal_cf = CFRetain(cf);
      v3 = 0;
      v27 = *(a1 + 64);
    }

    else
    {
      error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 28, 0, 0, @"No update brain is installed", v5, v6, v7, v32);
      v27 = *(a1 + 64);
      if (!v27)
      {
        CFRelease(error_internal_cf);
        v3 = 0;
        goto LABEL_25;
      }

      v3 = 0;
    }

    *v27 = error_internal_cf;
    goto LABEL_25;
  }

  v3 = 0;
LABEL_3:
  xpc_retain(v2);
LABEL_25:
  free(v3);
}

uint64_t load_trust_cache(uint64_t a1, NSError **a2)
{
  trust_cache_at_path = load_trust_cache_at_path([[[NSString stringWithUTF8String:?]fileSystemRepresentation:@".TrustCache"]], a2);
  if (a2)
  {
    if (*a2)
    {
      if ([(NSDictionary *)[(NSError *)*a2 userInfo] objectForKeyedSubscript:@"ShouldPurgeBrain"])
      {
        if ([-[NSDictionary objectForKeyedSubscript:](-[NSError userInfo](*a2 "userInfo")])
        {
          logfunction("", 1, @"Load TrustCache failed with: %@, attempting to purge update brains\n", v4, v5, v6, v7, v8, *a2);
          v15 = 0;
          [[MSUUpdateBrainLocator brainLocatorWithUpdateAttributes:?], "purgeInstalledUpdateBrains:", &v15];
          if (v15)
          {
            logfunction("", 1, @"Failed to purge update brains: %@\n", v9, v10, v11, v12, v13, v15);
          }
        }
      }
    }
  }

  return trust_cache_at_path;
}

void __copy_shared_update_brain_connection_block_invoke_235(id a1, OS_xpc_object *a2)
{
  v3 = xpc_copy_description(a2);
  v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BRAIN_CONNECTION] Update brain connection handler | %{public}s", &v6, 0xCu);
  }

  free(v3);
  if (xpc_get_type(a2) == &_xpc_type_error && copy_shared_update_brain_connection_brain_connection != 0)
  {
    xpc_release(copy_shared_update_brain_connection_brain_connection);
    copy_shared_update_brain_connection_brain_connection = 0;
  }
}

void __get_softwareupdated_queue_block_invoke(id a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  *__str = 0u;
  v2 = 0u;
  snprintf(__str, 0x100uLL, "%s.queue", "com.apple.mobile.softwareupdated");
  get_softwareupdated_queue_queue = dispatch_queue_create(__str, 0);
}

id __handle_purge_suspended_update_block_invoke(uint64_t a1)
{
  [*(a1 + 32) submitEvents];
  v2 = *(a1 + 32);

  return [v2 stopRecordingInstall];
}

NSData *getObjectFromMessage(void *a1)
{
  length = xpc_dictionary_get_double(a1, [objc_msgSend(@"SecureEncodedObjects" stringByAppendingString:{@"Length", "UTF8String"}]);
  logfunction("", 1, @"The secure object length value is: %ld\n", v2, v3, v4, v5, v6, length);
  if (!length)
  {
    return 0;
  }

  data = xpc_dictionary_get_data(a1, [@"SecureEncodedObjects" UTF8String], &length);
  if (!data)
  {
    v22 = [@"SecureEncodedObjects" UTF8String];
    logfunction("", 1, @"nil bytes from xpc message for key %s\n", v23, v24, v25, v26, v27, v22);
    return 0;
  }

  v13 = [NSData dataWithBytes:data length:length];
  if (!v13)
  {
    v21 = @"nil data from xpc message\n";
    goto LABEL_11;
  }

  v30 = 0;
  v14 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v13 error:&v30];
  v13 = [v14 decodeObjectOfClasses:_decodeClasses forKey:NSKeyedArchiveRootObjectKey];
  if ([v14 error])
  {
    v15 = [v14 error];
    logfunction("", 1, @"Error while decoding archived object from xpc message: %@\n", v16, v17, v18, v19, v20, v15);
  }

  [v14 finishDecoding];

  if (!v13)
  {
    v21 = @"decoded object from xpc message\n";
LABEL_11:
    logfunction("", 1, v21, v8, v9, v10, v11, v12, v29);
  }

  return v13;
}

void __handle_ma_load_brain_block_invoke(uint64_t a1, void *a2, __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 & 1) == 0)
  {
    v11 = [*(a1 + 32) brainVersion];
    logfunction("", 1, @"Setting targetBrainVersion to %@\n", v12, v13, v14, v15, v16, v11);

    targetBrainVersion = [v11 copy];
  }

  if (a3)
  {
    logfunction("", 1, @"Failed to install update brain: %@\n", a4, a5, a6, a7, a8, a3);
    record_brain_load_event(*(a1 + 40), *(a1 + 48), a3);
    msu_send_error(*(a1 + 56), 0, a3, 1);
  }

  else if (a2 && [a2 objectForKey:@"CommitSelfDestruct"])
  {
    if (get_softwareupdated_queue_queue_once != -1)
    {
      handle_create_update_brain_connection_cold_1();
    }

    dispatch_sync(get_softwareupdated_queue_queue, &__block_literal_global_339);
    msu_send_progress(*(a1 + 56), a2);
  }

  logfunction("", 1, @"Sending load complete without error\n", a4, a5, a6, a7, a8, v18);
  msu_send_status(*(a1 + 56), 0, 0);
  xpc_release(*(a1 + 56));
  xpc_release(*(a1 + 64));

  v17 = *(a1 + 80);
}

void __handle_ma_load_brain_block_invoke_2(id a1)
{
  if (brain_is_loaded == 1)
  {
    block[5] = v2;
    block[6] = v1;
    block[7] = v3;
    block[8] = v4;
    v5 = dispatch_group_create();
    peer_connections_queue = get_peer_connections_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __perform_self_destruct_block_invoke;
    block[3] = &unk_100049960;
    block[4] = v5;
    dispatch_sync(peer_connections_queue, block);
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
    exit(0);
  }
}

id __perform_self_destruct_block_invoke(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (get_peer_connections_array_peer_connections_array_once != -1)
  {
    __main_block_invoke_4_cold_1();
  }

  result = [get_peer_connections_array_peer_connections_array countByEnumeratingWithState:&v10 objects:v14 count:{16, get_peer_connections_array_peer_connections_array}];
  if (result)
  {
    v3 = result;
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        dispatch_group_enter(*(a1 + 32));
        v7 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v7, "Command", "ResendMessage");
        xpc_connection_send_message(v6, v7);
        xpc_release(v7);
        barrier[0] = _NSConcreteStackBlock;
        barrier[1] = 3221225472;
        barrier[2] = __perform_self_destruct_block_invoke_2;
        barrier[3] = &unk_100049960;
        barrier[4] = *(a1 + 32);
        xpc_connection_send_barrier(v6, barrier);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void __handle_ma_adjust_load_brain_options_block_invoke(uint64_t a1, __CFError *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    logfunction("", 1, @"Failed to adjust brain madownload config: %@\n", a4, a5, a6, a7, a8, a2);
    msu_send_error(*(a1 + 32), *(a1 + 40), a2, 1);
  }

  else
  {
    msu_send_status(*(a1 + 32), *(a1 + 40), 0);
  }

  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  v10 = *(a1 + 48);
}

void __handle_required_disk_space_block_invoke(uint64_t a1, void *a2, __CFError *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    msu_send_status(*(a1 + 32), *(a1 + 40), a2);
  }

  else
  {
    logfunction("", 1, @"Failed to compute required disk space: %@\n", a4, a5, a6, a7, a8, a3);
    msu_send_error(*(a1 + 32), *(a1 + 40), a3, 1);
  }

  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  v10 = *(a1 + 48);
}

uint64_t *OUTLINED_FUNCTION_1_1@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

int *logfunctionv(const char *a1, int a2, const __CFString *a3, va_list a4)
{
  v8 = *__error();
  memcpy(__dst, "Error creating CFString", sizeof(__dst));
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = "";
  }

  if (logfunctionv_onceToken != -1)
  {
    logfunctionv_cold_1();
  }

  v10 = CFStringCreateWithFormatAndArguments(0, 0, a3, a4);
  v11 = pthread_self();
  v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%08llx %s: %@", v11, v9, v10);
  CFRelease(v10);
  if (v12)
  {
    v13 = __dst;
    if (CFStringGetCString(v12, __dst, 1024, 0x8000100u))
    {
      v14 = 0;
    }

    else
    {
      Length = CFStringGetLength(v12);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v13 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x6FEB6E8AuLL);
      CFStringGetCString(v12, v13, MaximumSizeForEncoding + 1, 0x8000100u);
      v14 = v13;
    }

    v15 = strlen(v13);
    CFRelease(v12);
  }

  else
  {
    v15 = 0;
    v13 = 0;
    v14 = 0;
  }

  v18 = logfunctionv_logObject;
  if (logfunctionv_logObject || (v18 = os_log_create("com.apple.MobileSoftwareUpdate", "Info"), (logfunctionv_logObject = v18) != 0))
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
    }
  }

  if (console_fd != -1)
  {
    write(console_fd, v13, v15);
  }

  if (a2)
  {
    openRestoreLogFile(0);
    writeToRestoreLogFile(v13, v15);
  }

  fprintf(__stderrp, "%s: %s", v9, v13);
  free(v14);
  result = __error();
  *result = v8;
  return result;
}

void __logfunctionv_block_invoke(id a1)
{
  if (getenv("__OSINSTALL_ENVIRONMENT"))
  {
    console_fd = open("/dev/console", 131082);
  }
}

void *CryptoBufferAllocate(size_t size)
{
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, size, 0x7D56A5FDuLL))
  {
    logfunction("", 1, @"Failed to allocate aligned crypto buffer\n\n", v2, v3, v4, v5, v6, v8);
  }

  else
  {
    bzero(memptr, size);
  }

  return memptr;
}

void log_xpc_event(char a1, xpc_object_t object)
{
  v8 = xpc_copy_description(object);
  logfunction("", 1, @"%s: %s\n", v3, v4, v5, v6, v7, a1);

  free(v8);
}

void msu_process_dictionary_values_for_xpc_serialization(const void *a1, uint64_t a2, __CFDictionary **a3)
{
  v5 = msu_process_cf_object_for_xpc_serialization(a2);
  if (v5)
  {
    v6 = v5;
    if (a3 && !*a3)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *a3 = Mutable;
      CFDictionarySetValue(Mutable, a1, v6);
    }

    CFRelease(v6);
  }
}

CFDictionaryRef msu_process_cf_object_for_xpc_serialization(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFDictionaryGetTypeID())
  {
    context = 0;
    CFDictionaryApplyFunction(a1, msu_process_dictionary_values_for_xpc_serialization, &context);
    if (context)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a1);
      CFDictionaryApplyFunction(context, msu_merge_dictionary_values, MutableCopy);
      CFRelease(context);
      return MutableCopy;
    }

    return 0;
  }

  if (v2 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      MutableCopy = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
        v8 = msu_process_cf_object_for_xpc_serialization(ValueAtIndex);
        if (v8)
        {
          v9 = v8;
          if (!MutableCopy)
          {
            MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, a1);
          }

          CFArraySetValueAtIndex(MutableCopy, v6, v9);
          CFRelease(v9);
        }

        ++v6;
      }

      while (v5 != v6);
      return MutableCopy;
    }

    return 0;
  }

  if (v2 != CFErrorGetTypeID())
  {
    return 0;
  }

  return cferror_to_dictionary_embedded(a1, 1);
}

void msu_serialize_cf_object_into_xpc_dict(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    logfunction("", 1, @"%s: API misuse - object is NULL\n", a4, a5, a6, a7, a8, "msu_serialize_cf_object_into_xpc_dict");
    return;
  }

  v10 = msu_process_cf_object_for_xpc_serialization(a3);
  if (!v10)
  {
    v12 = _CFXPCCreateXPCObjectFromCFObject();
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_9:
    logfunction("", 1, @"could not create object for key %s:%@\n", v13, v14, v15, v16, v17, a2);
    return;
  }

  v11 = v10;
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  CFRelease(v11);
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_4:
  xpc_dictionary_set_value(a1, a2, v12);

  xpc_release(v12);
}

void msu_process_dictionary_values_from_xpc_deserialization(const void *a1, uint64_t a2, __CFDictionary **a3)
{
  v5 = msu_process_cf_object_from_xpc_deserialization(a2);
  if (v5)
  {
    v6 = v5;
    if (a3 && !*a3)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *a3 = Mutable;
      CFDictionarySetValue(Mutable, a1, v6);
    }

    CFRelease(v6);
  }
}

const __CFString *msu_process_cf_object_from_xpc_deserialization(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    if (v2 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v5 = Count;
        v6 = 0;
        MutableCopy = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
          v9 = msu_process_cf_object_from_xpc_deserialization(ValueAtIndex);
          if (v9)
          {
            v10 = v9;
            if (!MutableCopy)
            {
              MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, a1);
            }

            CFArraySetValueAtIndex(MutableCopy, v6, v10);
            CFRelease(v10);
          }

          ++v6;
        }

        while (v5 != v6);
        return MutableCopy;
      }
    }

    return 0;
  }

  if (!CFDictionaryContainsKey(a1, @"_MSU_Embedded_Error"))
  {
    context = 0;
    CFDictionaryApplyFunction(a1, msu_process_dictionary_values_from_xpc_deserialization, &context);
    if (context)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a1);
      CFDictionaryApplyFunction(context, msu_merge_dictionary_values, MutableCopy);
      CFRelease(context);
      return MutableCopy;
    }

    return 0;
  }

  return copy_dictionary_to_cferror(a1);
}

const __CFString *msu_deserialize_cf_object_from_xpc_dict(void *a1, const char *a2)
{
  if (!xpc_dictionary_get_value(a1, a2))
  {
    return 0;
  }

  v2 = _CFXPCCreateCFObjectFromXPCObject();
  v3 = msu_process_cf_object_from_xpc_deserialization(v2);
  if (v3)
  {
    v4 = v3;
    CFRelease(v2);
    return v4;
  }

  return v2;
}

void handle_message(_xpc_connection_s *a1, xpc_object_t xdict, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  string = xpc_dictionary_get_string(xdict, "Command");
  if (string)
  {
    v19 = string;
    v23 = msu_deserialize_cf_object_from_xpc_dict(xdict, "CommandParameters");
    if (a4)
    {
      v24 = 0;
      v25 = (a3 + 16);
      while (1)
      {
        v26 = strlen(*(v25 - 2));
        if (!strncmp(v19, *(v25 - 2), v26))
        {
          break;
        }

        ++v24;
        v25 += 3;
        if (a4 == v24)
        {
          goto LABEL_14;
        }
      }

      if ((msu_client_is_entitled(a1, *v25) & 1) == 0)
      {
        error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"Client does not have entitlement %s", v27, v28, v29, *v25);
        goto LABEL_16;
      }

      v30 = os_transaction_create();
      (*(v25 - 1))(a1, xdict, v23);
      os_release(v30);
    }

    else
    {
      LODWORD(v24) = 0;
    }

    if (v24 != a4)
    {
LABEL_18:
      if (v23)
      {

        CFRelease(v23);
      }

      return;
    }

LABEL_14:
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"Unknown command '%s'", v20, v21, v22, v19);
LABEL_16:
    v32 = error_internal_cf;
    msu_send_error(a1, 0, error_internal_cf, 0);
    if (v32)
    {
      CFRelease(v32);
    }

    goto LABEL_18;
  }

  logfunction("", 1, @"No command in request\n", v14, v15, v16, v17, v18, a9);
}

uint64_t msu_client_is_entitled(_xpc_connection_s *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2;
  v4 = xpc_connection_copy_entitlement_value();
  if (v4)
  {
    v5 = v4;
    if (xpc_get_type(v4) == &_xpc_type_BOOL)
    {
      if (xpc_BOOL_get_value(v5))
      {
        v12 = 1;
LABEL_17:
        xpc_release(v5);
        return v12;
      }

      v11 = @"Value for entitlement '%s' is false\n";
    }

    else
    {
      v11 = @"Entitlement '%s' is not a BOOLean\n";
    }

    logfunction("", 1, v11, v6, v7, v8, v9, v10, v2);
    v12 = 0;
    goto LABEL_17;
  }

  pid = xpc_connection_get_pid(a1);
  bzero(buffer, 0x400uLL);
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  memset(&audittoken, 0, sizeof(audittoken));
  xpc_connection_get_audit_token();
  if (proc_pidpath_audittoken(&audittoken, buffer, 0x400u) < 1)
  {
    v21 = proc_pidinfo(pid, 13, 0, &v24, 64);
    v20 = v25;
    if (!v21)
    {
      v20 = "<unknown>";
    }
  }

  else
  {
    v14 = strrchr(buffer, 47);
    if (v14)
    {
      LOBYTE(v20) = v14 + 1;
    }

    else
    {
      v20 = buffer;
    }
  }

  logfunction("", 1, @"Client %s[%d] does not have the '%s' entitlement\n", v15, v16, v17, v18, v19, v20);
  return 0;
}

void msu_send_error(_xpc_connection_s *a1, xpc_object_t original, __CFError *a3, int a4)
{
  if (original)
  {
    reply = xpc_dictionary_create_reply(original);
  }

  else
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v8 = reply;
  if (reply)
  {
    xpc_dictionary_set_string(reply, "IPCStatus", "Error");
    if (a3)
    {
      v9 = cferror_to_dictionary(a3);
      if (v9)
      {
        v15 = v9;
        msu_serialize_cf_object_into_xpc_dict(v8, "ErrorInfo", v9, v10, v11, v12, v13, v14);
        CFRelease(v15);
      }
    }

    xpc_connection_send_message(a1, v8);
    xpc_release(v8);
    if (a4)
    {

      submitRestoreLogFile(a3, 0, 0, 0);
    }
  }
}

void msu_send_status_with_reply(_xpc_connection_s *a1, xpc_object_t original, void *a3, uint64_t a4)
{
  if (original)
  {
    reply = xpc_dictionary_create_reply(original);
  }

  else
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v8 = reply;
  if (reply)
  {
    xpc_dictionary_set_string(reply, "IPCStatus", "Complete");
    if (a3)
    {
      msu_serialize_cf_object_into_xpc_dict(v8, "Results", a3, v9, v10, v11, v12, v13);
    }

    if (a4)
    {
      (*(a4 + 16))(a4, v8);
    }

    xpc_connection_send_message(a1, v8);

    xpc_release(v8);
  }
}

void msu_send_progress(_xpc_connection_s *a1, void *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "IPCStatus", "Callback");
  if (a2)
  {
    msu_serialize_cf_object_into_xpc_dict(v4, "CallbackStatus", a2, v5, v6, v7, v8, v9);
  }

  xpc_connection_send_message(a1, v4);

  xpc_release(v4);
}

uint64_t msu_demux_reply(void *a1, const __CFString **a2, __CFDictionary **a3, const __CFString **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v18 = @"No reply from daemon";
LABEL_9:
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, v18, a6, a7, a8, v28);
LABEL_10:
    v19 = error_internal_cf;
    if (a4)
    {
      result = 0;
      *a4 = v19;
      return result;
    }

    goto LABEL_12;
  }

  string = xpc_dictionary_get_string(a1, "IPCStatus");
  if (!string)
  {
    v18 = @"No status key in reply from daemon";
    goto LABEL_9;
  }

  v13 = string;
  if (!strncmp(string, "Complete", 8uLL))
  {
    if (a2)
    {
      *a2 = msu_deserialize_cf_object_from_xpc_dict(a1, "Results");
    }

    return 1;
  }

  if (!strncmp(v13, "Callback", 8uLL))
  {
    if (a3)
    {
      v21 = msu_deserialize_cf_object_from_xpc_dict(a1, "CallbackStatus");
      Value = CFDictionaryGetValue(v21, @"StallError");
      if (Value)
      {
        v23 = Value;
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v21);
        if (v21)
        {
          CFRelease(v21);
        }

        v25 = copy_dictionary_to_cferror(v23);
        if (v25)
        {
          v26 = v25;
          CFDictionarySetValue(MutableCopy, @"StallError", v25);
          CFRelease(v26);
        }
      }

      else
      {
        MutableCopy = v21;
      }

      *a3 = MutableCopy;
    }

    return 1;
  }

  if (strncmp(v13, "Error", 5uLL))
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"Unexpected IPC status %s in reply hander", v14, v15, v16, v13);
    goto LABEL_10;
  }

  if (!a4)
  {
    return 0;
  }

  result = msu_deserialize_cf_object_from_xpc_dict(a1, "ErrorInfo");
  if (result)
  {
    v27 = result;
    *a4 = copy_dictionary_to_cferror(result);
    error_internal_cf = v27;
LABEL_12:
    CFRelease(error_internal_cf);
    return 0;
  }

  return result;
}

CFPropertyListRef _MSUPreferencesCopyValueForDomain(const __CFString *a1, const __CFString *a2)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  if (v4)
  {
    return v4;
  }

  if (_getManagedPreferencesDict_managedPreferencesOnce != -1)
  {
    _MSUPreferencesCopyValueForDomain_cold_1();
  }

  if (_getManagedPreferencesDict__managedPreferencesCache)
  {
    Value = CFDictionaryGetValue(_getManagedPreferencesDict__managedPreferencesCache, a1);
    if (Value)
    {
      v4 = Value;
      CFRetain(Value);
      return v4;
    }
  }

  return CFPreferencesCopyValue(a1, a2, @"mobile", kCFPreferencesAnyHost);
}

void ___getManagedPreferencesDict_block_invoke(id a1)
{
  v1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@.plist", @"/Library/Managed Preferences/mobile", @"com.apple.MobileSoftwareUpdate");
  if (v1)
  {
    v2 = v1;
    _getManagedPreferencesDict__managedPreferencesCache = [[NSDictionary alloc] initWithContentsOfFile:v1];

    CFRelease(v2);
  }
}

uint64_t _perform_cleanup_command(int a1, int a2, int a3, char a4, const void *a5, const __CFString **a6)
{
  v12 = copy_shared_cleanup_service_connection();
  if (v12)
  {
    v16 = v12;
    v17 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v17, "Command", "CleanupPreparePath");
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v19 = Mutable;
    if (a1)
    {
      v20 = kCFBooleanTrue;
    }

    else
    {
      v20 = kCFBooleanFalse;
    }

    CFDictionarySetValue(Mutable, @"ShouldPurge", v20);
    if (a2)
    {
      v21 = kCFBooleanTrue;
    }

    else
    {
      v21 = kCFBooleanFalse;
    }

    CFDictionarySetValue(v19, @"ShouldPurgeStagedAssets", v21);
    if (a3)
    {
      v22 = kCFBooleanTrue;
    }

    else
    {
      v22 = kCFBooleanFalse;
    }

    CFDictionarySetValue(v19, @"ShouldDisableAssetStaging", v22);
    if ((a4 & 1) == 0)
    {
      CFDictionarySetValue(v19, @"ShouldResetAPFSReserve", kCFBooleanFalse);
    }

    if (a5)
    {
      CFDictionarySetValue(v19, @"TargetUUID", a5);
    }

    msu_serialize_cf_object_into_xpc_dict(v17, "CommandParameters", v19, v23, v24, v25, v26, v27);
    if (v19)
    {
      CFRelease(v19);
    }

    v28 = xpc_connection_send_message_with_reply_sync(v16, v17);
    v33 = msu_demux_reply(v28, 0, 0, a6, v29, v30, v31, v32);
    xpc_release(v17);
    if (v28)
    {
      xpc_release(v28);
    }

    xpc_release(v16);
  }

  else
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"No cleanup service connection", v13, v14, v15, v36);
    if (a6)
    {
      v33 = 0;
      *a6 = error_internal_cf;
    }

    else
    {
      CFRelease(error_internal_cf);
      return 0;
    }
  }

  return v33;
}

uint64_t copy_shared_cleanup_service_connection()
{
  if (get_cleanup_service_queue_queue_once != -1)
  {
    copy_shared_cleanup_service_connection_cold_1();
  }

  dispatch_sync(get_cleanup_service_queue_queue, &__block_literal_global_10);
  return copy_shared_cleanup_service_connection_service_connection;
}

uint64_t perform_cleanup_recoveryos_saved_state_command(const __CFString **a1)
{
  v2 = copy_shared_cleanup_service_connection();
  if (v2)
  {
    v6 = v2;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "Command", "CleanupRecoveryOSSavedState");
    v8 = xpc_connection_send_message_with_reply_sync(v6, v7);
    v13 = msu_demux_reply(v8, 0, 0, a1, v9, v10, v11, v12);
    xpc_release(v7);
    if (v8)
    {
      xpc_release(v8);
    }

    xpc_release(v6);
  }

  else
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"No cleanup service connection to cleanup recoveryOS state", v3, v4, v5, v16);
    if (a1)
    {
      v13 = 0;
      *a1 = error_internal_cf;
    }

    else
    {
      CFRelease(error_internal_cf);
      return 0;
    }
  }

  return v13;
}

uint64_t perform_cleanup_NVRAM_command(const __CFString **a1)
{
  v2 = copy_shared_cleanup_service_connection();
  if (v2)
  {
    v6 = v2;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "Command", "CleanupNVRAM");
    v8 = xpc_connection_send_message_with_reply_sync(v6, v7);
    v13 = msu_demux_reply(v8, 0, 0, a1, v9, v10, v11, v12);
    xpc_release(v7);
    if (v8)
    {
      xpc_release(v8);
    }

    xpc_release(v6);
  }

  else
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"No cleanup service connection", v3, v4, v5, v16);
    if (a1)
    {
      v13 = 0;
      *a1 = error_internal_cf;
    }

    else
    {
      CFRelease(error_internal_cf);
      return 0;
    }
  }

  return v13;
}

uint64_t perform_reboot_to_nerd_command(const __CFString **a1)
{
  v2 = copy_shared_cleanup_service_connection();
  if (v2)
  {
    v6 = v2;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "Command", "RebootToNerd");
    v8 = xpc_connection_send_message_with_reply_sync(v6, v7);
    v13 = msu_demux_reply(v8, 0, 0, a1, v9, v10, v11, v12);
    xpc_release(v7);
    if (v8)
    {
      xpc_release(v8);
    }

    xpc_release(v6);
  }

  else
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"No cleanup service connection", v3, v4, v5, v16);
    if (a1)
    {
      v13 = 0;
      *a1 = error_internal_cf;
    }

    else
    {
      CFRelease(error_internal_cf);
      return 0;
    }
  }

  return v13;
}

uint64_t perform_logs_cleanup_command(uint64_t a1, void *a2, const __CFString **a3)
{
  cf = 0;
  valuePtr = a1;
  v5 = copy_shared_cleanup_service_connection();
  if (!v5)
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"No cleanup service connection", v6, v7, v8, v31);
    if (a3)
    {
      v23 = 0;
      *a3 = error_internal_cf;
    }

    else
    {
      CFRelease(error_internal_cf);
      return 0;
    }

    return v23;
  }

  v9 = v5;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, "Command", "CleanupLogs");
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"LogsRetention", v12);
  msu_serialize_cf_object_into_xpc_dict(v10, "CommandParameters", Mutable, v13, v14, v15, v16, v17);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v18 = xpc_connection_send_message_with_reply_sync(v9, v10);
  v23 = msu_demux_reply(v18, &cf, 0, a3, v19, v20, v21, v22);
  if (cf)
  {
    v24 = CFGetTypeID(cf);
    if (v24 == CFNumberGetTypeID())
    {
      if (a2)
      {
        v32 = 0;
        CFNumberGetValue(cf, kCFNumberSInt64Type, &v32);
        *a2 = v32;
        if (!v12)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v29 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"oldest is not a number", v25, v26, v27, v31);
      if (!a3)
      {
        CFRelease(v29);
        v23 = 0;
        if (!v12)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v23 = 0;
      *a3 = v29;
    }
  }

  if (v12)
  {
LABEL_14:
    CFRelease(v12);
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  xpc_release(v10);
  if (v18)
  {
    xpc_release(v18);
  }

  xpc_release(v9);
  return v23;
}

uint64_t perform_save_booted_os_state_command(const void *a1, const __CFString **a2)
{
  v4 = copy_shared_cleanup_service_connection();
  if (v4)
  {
    v8 = v4;
    v9 = xpc_dictionary_create(0, 0, 0);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v16 = Mutable;
    if (a1)
    {
      CFDictionarySetValue(Mutable, @"AdditionalBootedOSData", a1);
    }

    msu_serialize_cf_object_into_xpc_dict(v9, "CommandParameters", v16, v11, v12, v13, v14, v15);
    if (v16)
    {
      CFRelease(v16);
    }

    xpc_dictionary_set_string(v9, "Command", "SaveBootedOSState");
    v17 = xpc_connection_send_message_with_reply_sync(v8, v9);
    v22 = msu_demux_reply(v17, 0, 0, a2, v18, v19, v20, v21);
    if (v9)
    {
      xpc_release(v9);
    }

    if (v17)
    {
      xpc_release(v17);
    }

    xpc_release(v8);
  }

  else
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"No cleanup service connection", v5, v6, v7, v25);
    if (a2)
    {
      v22 = 0;
      *a2 = error_internal_cf;
    }

    else
    {
      CFRelease(error_internal_cf);
      return 0;
    }
  }

  return v22;
}

void __copy_shared_cleanup_service_connection_block_invoke(id a1)
{
  v1 = copy_shared_cleanup_service_connection_service_connection;
  if (!copy_shared_cleanup_service_connection_service_connection)
  {
    if (!dlopen("/System/Library/PrivateFrameworks/MobileSoftwareUpdate.framework/MobileSoftwareUpdate", 1))
    {
      v13 = dlerror();
      logfunction("", 1, @"failed to dlopen(3) MobileSoftwareUpdate framework: %s\n", v8, v9, v10, v11, v12, v13);
      return;
    }

    if (get_cleanup_service_queue_queue_once != -1)
    {
      copy_shared_cleanup_service_connection_cold_1();
    }

    v2 = xpc_connection_create("com.apple.MobileSoftwareUpdate.CleanupPreparePathService", get_cleanup_service_queue_queue);
    copy_shared_cleanup_service_connection_service_connection = v2;
    if (!v2)
    {
      logfunction("", 1, @"Could not create connection to service %s\n", v3, v4, v5, v6, v7, "com.apple.MobileSoftwareUpdate.CleanupPreparePathService");
      return;
    }

    xpc_connection_set_event_handler(v2, &__block_literal_global_50);
    xpc_connection_resume(copy_shared_cleanup_service_connection_service_connection);
    v1 = copy_shared_cleanup_service_connection_service_connection;
  }

  xpc_retain(v1);
}

void __copy_shared_cleanup_service_connection_block_invoke_2(id a1, void *a2)
{
  log_xpc_event("Purge update service connection handler", a2);
  if (xpc_get_type(a2) == &_xpc_type_error && copy_shared_cleanup_service_connection_service_connection != 0)
  {
    xpc_release(copy_shared_cleanup_service_connection_service_connection);
    copy_shared_cleanup_service_connection_service_connection = 0;
  }
}

void __get_cleanup_service_queue_block_invoke(id a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  *__str = 0u;
  v2 = 0u;
  snprintf(__str, 0x100uLL, "%s.queue", "com.apple.MobileSoftwareUpdate.CleanupPreparePathService");
  get_cleanup_service_queue_queue = dispatch_queue_create(__str, 0);
}

uint64_t get_nonsnapshot_preparation_size(void *a1, void *a2, CFErrorRef *a3)
{
  v6 = +[MSULogAnnotatedSum sum];
  v7 = [a1 objectForKey:@"InstallationSize"];
  if (v7)
  {
    v13 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = objc_alloc_init(NSNumberFormatter);
      [v14 setFormatterBehavior:{+[NSNumberFormatter defaultFormatterBehavior](NSNumberFormatter, "defaultFormatterBehavior")}];
      v13 = [v14 numberFromString:v13];
      v15 = @"update_attributes[InstallationSize] (string)";
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = @"update_attributes[InstallationSize] (number)";
LABEL_7:
      v25 = [v13 longLongValue];
      [v6 add:v25 annotation:v15];
      v26 = 1;
      logfunction("", 1, @"nonsnapshot preparation size : %lld (%lld MB)\n", v27, v28, v29, v30, v31, v25);
      logfunction("", 1, @"\n%s():%@\n", v32, v33, v34, v35, v36, "get_nonsnapshot_preparation_size");
      if (!a2)
      {
        return v26;
      }

      goto LABEL_12;
    }

    logfunction("", 1, @"InstallationSize has invalid type in update attributes\n", v20, v21, v22, v23, v24, v39);
    v19 = @"Invalid update attributes: invalid type InstallationSize";
  }

  else
  {
    logfunction("", 1, @"InstallationSize not present in update attributes\n", v8, v9, v10, v11, v12, v39);
    v19 = @"Invalid update attributes: missing InstallationSize";
  }

  error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, v19, v16, v17, v18, v40);
  if (!a3)
  {
    CFRelease(error_internal_cf);
    v25 = 0;
    v26 = 0;
    if (!a2)
    {
      return v26;
    }

    goto LABEL_12;
  }

  v25 = 0;
  v26 = 0;
  *a3 = error_internal_cf;
  if (a2)
  {
LABEL_12:
    *a2 = v25;
  }

  return v26;
}

uint64_t get_snapshot_preparation_size(void *a1, char **a2, CFErrorRef *a3)
{
  v6 = +[MSULogAnnotatedSum sum];
  v7 = [a1 objectForKey:@"InstallationSize-Snapshot"];
  if (v7)
  {
    v13 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = objc_alloc_init(NSNumberFormatter);
      [v14 setFormatterBehavior:{+[NSNumberFormatter defaultFormatterBehavior](NSNumberFormatter, "defaultFormatterBehavior")}];
      v13 = [v14 numberFromString:v13];
      v15 = @"update_attributes[InstallationSize-Snapshot] (string)";
LABEL_10:
      v46 = [v13 longLongValue];
      [v6 add:v46 annotation:v15];
      updated = cryptex_size_requirement_for_update_type(0, a1);
      v34 = &v46[updated];
      [v6 add:updated annotation:@"cryptex_size_requirement_for_update_type(msu_update_type_snapshot)"];
      v35 = 1;
      logfunction("", 1, @"snapshot preparation size (mastered) : %lld (%lld MB)\n", v48, v49, v50, v51, v52, v34);
      logfunction("", 1, @"\n%s():%@\n", v53, v54, v55, v56, v57, "get_snapshot_preparation_size");
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = @"update_attributes[InstallationSize-Snapshot] (number)";
      goto LABEL_10;
    }

    logfunction("", 1, @"InstallationSize-Snapshot has invalid type in update attributes\n", v41, v42, v43, v44, v45, v63);
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"Invalid update attributes: invalid type InstallationSize-Snapshot", v59, v60, v61, v67);
    if (a3)
    {
      v34 = 0;
      v35 = 0;
      *a3 = error_internal_cf;
    }

    else
    {
      CFRelease(error_internal_cf);
      v34 = 0;
      v35 = 0;
    }
  }

  else
  {
    logfunction("", 1, @"InstallationSize-Snapshot not present in update attributes\n", v8, v9, v10, v11, v12, v63);
    v16 = [a1 objectForKey:@"ActualMinimumSystemPartition"];
    if (!v16)
    {
      logfunction("", 1, @"ActualMinimumSystemPartition not present in update attributes\n", v17, v18, v19, v20, v21, v64);
      v16 = [a1 objectForKey:@"MinimumSystemPartition"];
      if (!v16)
      {
        logfunction("", 1, @"MinimumSystemPartition not present in update attributes. Using the default.\n", v22, v23, v24, v25, v26, v65);
        logfunction("", 1, @"*** Warning *** This is not a normal path *** Users shouldn't get here *** Engineers can\n", v27, v28, v29, v30, v31, v66);
        v16 = [NSNumber numberWithInt:2500];
      }
    }

    v32 = calculate_snapshot_overhead([(NSNumber *)v16 longLongValue]<< 20);
    v33 = cryptex_size_requirement_for_update_type(0, a1);
    v34 = (v33 + v32);
    v35 = 1;
    logfunction("", 1, @"snapshot preparation size (worst case) : %lld (%lld MB)\n", v36, v37, v38, v39, v40, v33 + v32);
  }

LABEL_11:
  if (a2)
  {
    *a2 = v34;
  }

  return v35;
}

uint64_t cryptex_size_requirement_for_update_type(int a1, void *a2)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31[1] = 3221225472;
  v31[0] = _NSConcreteStackBlock;
  v32 = __cryptex_size_requirement_for_update_type_block_invoke;
  v33 = &unk_100049CC0;
  v34 = +[MSULogAnnotatedSum sum];
  v35 = &v37;
  v36 = a1;
  if (a2)
  {
    v9 = [a2 objectForKeyedSubscript:@"CryptexSizeInfo"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = [a2 objectForKeyedSubscript:@"ComboAsset"];
      if (!v10)
      {
        goto LABEL_31;
      }

      v11 = MGCopyAnswer();
      v44 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      v12 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (!v12)
      {
        goto LABEL_31;
      }

      v13 = *v42;
LABEL_7:
      v14 = 0;
      while (1)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * v14);
        v16 = [v15 objectForKeyedSubscript:@"PrerequisiteBuild"];
        if (v16)
        {
          if ([v16 isEqualToString:v11])
          {
            break;
          }
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v12)
          {
            goto LABEL_7;
          }

          goto LABEL_31;
        }
      }

      v9 = [v15 objectForKeyedSubscript:@"CryptexSizeInfo"];
      if (!v9)
      {
        goto LABEL_31;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    v17 = [[NSArray alloc] initWithObjects:{@"cryptex-system-arm64e", @"cryptex-app", 0}];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        v18 = [v9 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v18)
        {
          v19 = *v42;
          v20 = -1;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v42 != v19)
              {
                objc_enumerationMutation(v9);
              }

              v22 = *(*(&v41 + 1) + 8 * i);
              objc_opt_class();
              ++v20;
              if (objc_opt_isKindOfClass())
              {
                v23 = [v22 objectForKey:@"CryptexTag"];
                if (v23)
                {
                  if ([v17 containsObject:v23])
                  {
                    v32(v31, v20, v23, v22);
                  }
                }
              }
            }

            v18 = [v9 countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v18);
        }
      }
    }
  }

LABEL_31:
  logfunction("", 1, @"cryptex size requirement: %lld (%lld MB)\n", v4, v5, v6, v7, v8, v38[3]);
  logfunction("", 1, @"\n%s(%s):%@\n", v24, v25, v26, v27, v28, "cryptex_size_requirement_for_update_type");
  v29 = v38[3];
  _Block_object_dispose(&v37, 8);
  return v29;
}

void sub_100016F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_nonsnapshot_apply_and_reserve_sizes(const __CFDictionary *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, CFErrorRef *a5)
{
  v166 = 0;
  bzero(&v170, 0x878uLL);
  v165 = 0;
  valuePtr = 2500;
  v9 = +[MSULogAnnotatedSum sum];
  [v9 add:314572800 annotation:@"UPDATE_PARTITION_SIZE * 2"];
  [v9 add:104857600 annotation:@"UPDATE_APFS_RESERVE"];
  system_partition_padding = get_system_partition_padding(a1);
  [v9 add:system_partition_padding annotation:@"systemPartitionPadding = get_system_partition_padding()"];
  updated = cryptex_size_requirement_for_update_type(1, a1);
  v12 = system_partition_padding + 419430400 + updated;
  [v9 add:updated annotation:@"cryptex_size_requirement_for_update_type(msu_update_type_legacy)"];
  Value = CFDictionaryGetValue(a1, @"ActualMinimumSystemPartition");
  if (Value || (Value = CFDictionaryGetValue(a1, @"MinimumSystemPartition")) != 0)
  {
    v14 = Value;
    CFRetain(Value);
  }

  else
  {
    logfunction("", 1, @"Couldn't find ActualMinimumSystemPartition or MinimumSystemPartition in the asset properties\n", v15, v16, v17, v18, v19, v152);
    v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  }

  v163 = 0;
  LOBYTE(v167.st_dev) = 0;
  APFSShouldSealSystemVolume();
  if (v167.st_dev)
  {
    v20 = CFDictionaryGetValue(a1, @"SystemVolumeSealingOverhead");
    if (v20)
    {
      CFNumberGetValue(v20, kCFNumberSInt64Type, &v163);
      logfunction("", 1, @"Sealing requires %d MiB overhead\n", v21, v22, v23, v24, v25, v163);
      v26 = v163;
      v27 = a1;
      v28 = a4;
      v29 = system_partition_padding;
      v30 = a5;
      v31 = v14;
      v32 = a3;
      v163 <<= 20;
      v33 = v163;
      v12 += v26 << 20;
      v152 = @"SystemVolumeSealingOverhead";
      v34 = [NSString stringWithFormat:@"update_attributes[%@]"];
      v35 = v33;
      a3 = v32;
      v14 = v31;
      a5 = v30;
      system_partition_padding = v29;
      a4 = v28;
      a1 = v27;
      [v9 add:v35 annotation:v34];
    }
  }

  if (RCGetSystemPartitionExtrasSizeForDevice(0, a1, &v165, 0))
  {
    v159 = a3;
    v160 = a4;
    v41 = v165;
    [v9 add:v165 annotation:@"RCGetSystemPartitionExtrasSizeForDevice()"];
    CFNumberGetValue(v14, kCFNumberSInt64Type, &v166);
    v42 = v166;
    v166 <<= 20;
    [v9 add:? annotation:?];
    logfunction("", 1, @"Minimum system partition is %llu (%llu MB)\n", v43, v44, v45, v46, v47, v166);
    logfunction("", 1, @"System partition padding is %llu (%llu MB)\n", v48, v49, v50, v51, v52, system_partition_padding);
    logfunction("", 1, @"System partition firmware is %llu (%llu MB)\n", v53, v54, v55, v56, v57, v165);
    bzero(&v170, 0x878uLL);
    if (statfs("/", &v170))
    {
      logfunction("", 1, @"Failed to statfs / to find free filesystem space\n", v58, v59, v60, v61, v62, v153);
      v63 = __error();
      error_internal_cf = _create_error_internal_cf(kCFErrorDomainPOSIX, *v63, 0, 0, @"statfs(/) failed", v64, v65, v66, v154);
      a4 = v160;
      if (a5)
      {
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *a5 = error_internal_cf;
      }

      else
      {
        CFRelease(error_internal_cf);
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v71 = 0;
      }

LABEL_52:
      a3 = v159;
      goto LABEL_53;
    }

    if (booted_from_recoveryos_onceToken != -1)
    {
      get_nonsnapshot_apply_and_reserve_sizes_cold_1();
    }

    if (booted_from_recoveryos_booted_from_recoveryos == 1)
    {
      *&v167.st_dev = 0;
      get_main_container_space_info(&v167, 0, 0, 0, 0, v60, v61, v62);
      logfunction("", 1, @"get_main_container_space_info: system volume is using %llu (%llu MB)\n", v76, v77, v78, v79, v80, v167.st_dev);
      v86 = *&v167.st_dev;
      v87 = @"-currentSystemPartitionSize (get_main_container_space_info)";
    }

    else
    {
      memset(v162, 0, 12);
      *&v167.st_uid = 0;
      *&v167.st_dev = 5;
      v167.st_ino = 2155872256;
      if (getattrlist("/", &v167, v162, 0xCuLL, 0))
      {
        v88 = __error();
        logfunction("", 1, @"getattrlist(ATTR_VOL_SPACEUSED) to get filesystem used space failed: %d\n", v89, v90, v91, v92, v93, *v88);
        v86 = (v170.f_blocks - v170.f_bfree) * v170.f_bsize;
        v87 = @"-currentSystemPartitionSize (statfs)";
      }

      else
      {
        v87 = @"-currentSystemPartitionSize (getattrlist)";
        v86 = *(v162 + 4);
      }
    }

    v94 = v41 + v12;
    logfunction("", 1, @"APFS system volume is using %llu (%llu MB)\n", v81, v82, v83, v84, v85, v86);
    logfunction("", 1, @"Checking for overprovisioning volume\n", v95, v96, v97, v98, v99, v156);
    v100 = [objc_msgSend(+[LPStaticMedia mediaForPath:](LPStaticMedia mediaForPath:{@"/", "container"), "devNodePath"}];
    v162[0] = 0;
    v106 = v100 != 0;
    if (v100)
    {
      v107 = v100;
      logfunction("", 1, @"Attempting to check container %@ for overprovisioning volume\n", v101, v102, v103, v104, v105, v100);
      [v107 UTF8String];
      if (APFSVolumeRoleFind() || ![v162[0] count])
      {
        v106 = 0;
LABEL_30:
        v109 = v94 + (v42 << 20);
        memset(&v167, 0, sizeof(v167));
        logfunction("", 1, @"Checking for overprovisioning file\n", v101, v102, v103, v104, v105, v157);
        if (lstat("/private/var/.overprovisioning_file", &v167) && *__error() == 2)
        {
          if (!v106)
          {
            logfunction("", 1, @"nand is %@\n", v110, v111, v112, v113, v114, @"not overprovisioned");
            goto LABEL_36;
          }
        }

        else
        {
          logfunction("", 1, @"nand already over-provisioned(overprovisioning file present)\n", v110, v111, v112, v113, v114, v158);
        }

        logfunction("", 1, @"nand is %@\n", v110, v111, v112, v113, v114, @"overprovisioned");
        v109 -= system_partition_padding;
        [v9 add:-system_partition_padding annotation:@"-systemPartitionPadding (nand already over-provisioned)"];
LABEL_36:
        v70 = v109 - v86;
        [v9 add:-v86 annotation:v87];
        v168 = @"PrebootMountpoint";
        v169 = @"/private/preboot";
        v115 = 1;
        v116 = [NSDictionary dictionaryWithObjects:&v169 forKeys:&v168 count:1];
        v117 = 0;
        do
        {
          v118 = v115;
          v119 = (&get_nonsnapshot_apply_and_reserve_sizes_CRYPTEX_TAGS)[v117];
          v120 = ramrod_splat_copy_object_path(v119, v116);
          v121 = [v120 fileSystemRepresentation];
          if (v121)
          {
            memset(&v167, 0, sizeof(v167));
            if (!stat(v121, &v167))
            {
              v70 -= v167.st_blocks << 9;
              [v9 add:-512 * v167.st_blocks annotationFormat:@"-%@ (%s)", v120, v119];
            }
          }

          v115 = 0;
          v117 = 1;
        }

        while ((v118 & 1) != 0);
        if ((v70 & 0x8000000000000000) != 0)
        {
          logfunction("", 1, @"\n%s():\nrequiredFreeSpace:%@\n", v122, v123, v124, v125, v126, "get_nonsnapshot_apply_and_reserve_sizes");
          v133 = +[MSULogAnnotatedSum sum];
          v134 = 419430400;
          [v133 add:419430400 annotation:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"2*UPDATE_PARTITION_SIZE + UPDATE_APFS_RESERVE"}];
          LOBYTE(v167.st_dev) = 0;
          APFSShouldSealSystemVolume();
          if (v167.st_dev)
          {
            v140 = (v163 + v70) & ~((v163 + v70) >> 63);
            v134 = v140 + 419430400;
            [v133 add:v140 annotation:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"MAX(requiredFreeSpace + systemPartitionSealingOverhead, 0) == MAX(%lld + %lld, 0) == MAX(%lld, 0)", -(-v70 >> 20), v163 >> 20, (v163 >> 20) - (-v70 >> 20))}];
          }

          v71 = 1;
          logfunction("", 1, @"%llu MB minimum free space required for personalization and Update volume\n", v135, v136, v137, v138, v139, v134 >> 20);
          logfunction("", 1, @"\n%s():%@\n", v141, v142, v143, v144, v145, "get_nonsnapshot_apply_and_reserve_sizes");
          v68 = 0;
          v69 = 0;
          v70 = v134;
          a4 = v160;
        }

        else
        {
          if (get_apfs_preallocate_min_is_allowed(a1))
          {
            v69 = v70 - 419430400;
            a4 = v160;
            if (v70 < 0x19000001 || (logfunction("", 1, @"%llu MB reserve file will be needed (non-snapshot)\n", v127, v128, v129, v130, v131, v69 >> 20), apfs_preallocate_min = get_apfs_preallocate_min(v70 - 419430400), v68 = apfs_preallocate_min - v69, apfs_preallocate_min <= v69))
            {
              v68 = 0;
            }

            else
            {
              logfunction("", 1, @"preallocating a %lld MB reserve file will require an additional %lld MB of free space\n", v127, v128, v129, v130, v131, v69 >> 20);
              v70 += v68;
              [v9 add:v68 annotation:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"get_apfs_preallocate_min(%lld MB)", v69 >> 20, v68 >> 20)}];
            }
          }

          else
          {
            v68 = 0;
            v69 = 0;
            a4 = v160;
          }

          v71 = 1;
          logfunction("", 1, @"free space required is %lld (%lld MB)\n", v127, v128, v129, v130, v131, v70);
          logfunction("", 1, @"\n%s():%@\n", v146, v147, v148, v149, v150, "get_nonsnapshot_apply_and_reserve_sizes");
        }

        goto LABEL_52;
      }

      v108 = @"Found overprovisioning volume\n";
    }

    else
    {
      v108 = @"Failed to get container path. Unable to check for overprovisioning volume\n";
    }

    logfunction("", 1, v108, v101, v102, v103, v104, v105, v157);
    goto LABEL_30;
  }

  logfunction("", 1, @"Failed to get the system partition extras size\n", v36, v37, v38, v39, v40, v152);
  v75 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"failed to query partition sizes", v72, v73, v74, v155);
  if (a5)
  {
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    *a5 = v75;
  }

  else
  {
    CFRelease(v75);
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
  }

LABEL_53:
  if (v14)
  {
    CFRelease(v14);
  }

  if (a2)
  {
    *a2 = v70;
  }

  if (a3)
  {
    *a3 = v69 & ~(v69 >> 63);
  }

  if (a4)
  {
    *a4 = v68;
  }

  return v71;
}

uint64_t get_apfs_preallocate_min_is_allowed(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"SUDisableAPFSGetPreallocateMin"];
  if (!v1)
  {
    v9 = @"Use of APFSIOC_GET_PREALLOCATE_MIN_SPACE is not expressly disallowed by asset attributes\n";
LABEL_8:
    v8 = 1;
    logfunction("", 1, v9, v2, v3, v4, v5, v6, v11);
    return v8;
  }

  v7 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = @"SUDisableAPFSGetPreallocateMin";
    v9 = @"%@ property has an unexpected type\n";
    goto LABEL_8;
  }

  if (![v7 BOOLValue])
  {
    v9 = @"Use of APFSIOC_GET_PREALLOCATE_MIN_SPACE is expressly allowed by asset attributes\n";
    goto LABEL_8;
  }

  logfunction("", 1, @"Use of APFSIOC_GET_PREALLOCATE_MIN_SPACE is disabled by asset attributes\n", v2, v3, v4, v5, v6, v11);
  return 0;
}

unint64_t get_apfs_preallocate_min(unint64_t a1)
{
  v2 = "/private/var/MobileSoftwareUpdate/.reserved";
  v3 = open("/private/var/MobileSoftwareUpdate/.reserved", 1538, 438);
  if (v3 == -1)
  {
    if (*__error() != 1 && *__error() != 13 || (v2 = "/tmp/.reserved", v4 = open("/tmp/.reserved", 1538, 438), v4 == -1))
    {
      v13 = __error();
      strerror(*v13);
      logfunction("", 1, @"open(%s) failed: (%s)\n", v14, v15, v16, v17, v18, v2);
      return a1;
    }
  }

  else
  {
    v4 = v3;
  }

  v19[0] = 0;
  v19[1] = a1;
  v20 = 0;
  if (ffsctl(v4, 0xC0184A68uLL, v19, 0) == -1)
  {
    v5 = __error();
    v6 = strerror(*v5);
    logfunction("", 1, @"ffsctl() failed: (%s)\n", v7, v8, v9, v10, v11, v6);
  }

  else if (v20 > a1)
  {
    a1 = v20;
  }

  close(v4);
  unlink(v2);
  return a1;
}

uint64_t get_snapshot_apply_and_reserve_sizes(void *a1, void *a2, void *a3, void *a4)
{
  [+[MSULogAnnotatedSum sum](MSULogAnnotatedSum "sum")];
  APFSShouldSealSystemVolume();
  get_apfs_preallocate_min_is_allowed(a1);
  logfunction("", 1, @"snapshot application size : %lld (%lld MB)\n", v8, v9, v10, v11, v12, 0);
  logfunction("", 1, @"\n%s():%@\n", v13, v14, v15, v16, v17, "get_snapshot_apply_and_reserve_sizes");
  if (a2)
  {
    *a2 = 419430400;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

void __booted_from_recoveryos_block_invoke(id a1)
{
  v1 = objc_autoreleasePoolPush();
  if (&_os_variant_is_recovery && os_variant_is_recovery())
  {
    booted_from_recoveryos_booted_from_recoveryos = 1;
  }

  objc_autoreleasePoolPop(v1);
}

NSDictionary *snapshot_is_prepared(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSDictionary dictionaryWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/Update.plist"];
  v4 = v3;
  if (v3)
  {
    v5 = [(NSDictionary *)v3 objectForKey:@"update-asset-attributes"];
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = [v5 objectForKey:@"Build"];
    v7 = [a1 objectForKey:@"Build"];
    if (!v7)
    {
      v7 = [a1 objectForKey:@"TargetUpdate"];
    }

    if ([v7 isEqualToString:v6])
    {
      v4 = [-[NSDictionary objectForKey:](v4 objectForKey:{@"prepare-snapshot", "BOOLValue"}];
    }

    else
    {
LABEL_7:
      v4 = 0;
    }
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

BOOL saveCurrentBootedOSStateForRecoveryModes(const void *a1)
{
  v9 = 0;
  perform_save_booted_os_state_command(a1, &v9);
  v6 = v9;
  if (v9)
  {
    logfunction("", 1, @"Failed to save booted os state(%@)\n", v1, v2, v3, v4, v5, v9);
  }

  else
  {
    logfunction("", 1, @"Successfully saved booted os state\n", v1, v2, v3, v4, v5, v8);
  }

  return v6 == 0;
}

uint64_t msu_running_in_limited_environment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (&_os_variant_uses_ephemeral_storage)
  {
    v8 = os_variant_uses_ephemeral_storage();
    if (v8)
    {
      v9 = @"MSU running in limited env\n";
    }

    else
    {
      v9 = @"MSU running in normal env\n";
    }
  }

  else
  {
    v8 = 1;
    v9 = @"MSU running in normal env(default)\n";
  }

  logfunction("", 1, v9, a4, a5, a6, a7, a8, v11);
  return v8;
}

id __cryptex_size_requirement_for_update_type_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [NSString stringWithFormat:@"update_attributes[%@][%lu(%@)]", @"CryptexSizeInfo", a2, a3];
  v7 = [a4 objectForKeyedSubscript:@"CryptexSize"];
  v8 = [v7 unsignedLongLongValue];
  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) += (v8 << 20) / 5uLL + (v8 << 20);
    [*(a1 + 32) add:v6 annotationFormat:@"CryptexSize"];
  }

  v9 = [a4 objectForKeyedSubscript:@"ReversePatchSize"];
  v10 = [v9 unsignedLongLongValue];
  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) += v10 << 20;
    [*(a1 + 32) add:v10 << 20 annotationFormat:@"%@[%@]", v6, @"ReversePatchSize"];
  }

  v11 = [a4 objectForKeyedSubscript:@"CryptexSizeDelta"];
  result = [v11 unsignedLongLongValue];
  if (v11)
  {
    if (*(a1 + 48) == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) += result << 20;
      return [*(a1 + 32) add:v6 annotationFormat:@"CryptexSizeDelta"];
    }
  }

  return result;
}

void sub_100018690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSErrorUserInfoKey a10, const __CFString *a11, const __CFString *a12, id a13)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    a10 = NSDebugDescriptionErrorKey;
    a11 = @"ExceptionDescription";
    a12 = @"Exception invoking MSUBrain";
    a13 = [v14 description];
    (*(v13 + 16))(v13, [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:1365 userInfo:[NSDictionary dictionaryWithObjects:&a12 forKeys:&a10 count:2]]);
    objc_end_catch();
    JUMPOUT(0x100018664);
  }

  _Unwind_Resume(exception_object);
}

void sub_100018A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

CFErrorRef MSURetrievePreviousUpdateResults_server()
{
  dict = load_dict("/private/var/MobileSoftwareUpdate/last_update_result.plist");
  if (dict)
  {
    v1 = dict;
    Value = CFDictionaryGetValue(dict, @"ota-result");
    v3 = CFDictionaryGetValue(v1, @"ota-failure-reason");
    if (!Value)
    {
      goto LABEL_30;
    }

    v4 = v3;
    if (CFStringCompare(Value, @"crash", 1uLL) == kCFCompareEqualTo)
    {
      error_internal_with_userinfo_cf = _create_error_internal_with_userinfo_cf(@"MobileSoftwareUpdateErrorDomain", 1105, 0, 0, v1, @"OTA failed. Preserved reason: %@", v5, v6, v4);
      goto LABEL_36;
    }

    if (CFStringCompare(Value, @"panic", 1uLL) == kCFCompareEqualTo)
    {
      error_internal_with_userinfo_cf = _create_error_internal_with_userinfo_cf(@"MobileSoftwareUpdateErrorDomain", 1104, 0, 0, v1, @"OTA failed. Preserved reason: %@", v7, v8, v4);
      goto LABEL_36;
    }

    if (CFStringCompare(Value, @"success", 1uLL) == kCFCompareEqualTo)
    {
LABEL_30:
      v33 = 0;
      goto LABEL_37;
    }

    v36 = v4;
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, Value, @";");
    if (CFArrayGetCount(ArrayBySeparatingStrings) < 1)
    {
      v13 = 0;
      if (!ArrayBySeparatingStrings)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v12);
        v15 = ValueAtIndex;
        v16 = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, ValueAtIndex, @" ");
        if (v16)
        {
          v17 = v16;
          if (CFArrayGetCount(v16) < 2)
          {
            if (CFArrayGetCount(v17) == 1 && !v13)
            {
              v13 = _create_error_internal_with_userinfo_cf(@"MobileSoftwareUpdateErrorDomain", 1106, 0, 0, 0, @"%@", v27, v28, v15);
            }
          }

          else
          {
            v18 = CFArrayGetValueAtIndex(v17, 0);
            v19 = CFArrayGetValueAtIndex(v17, 1);
            IntValue = CFStringGetIntValue(v19);
            v23 = CFStringCompare(v18, @"MSU", 1uLL);
            v24 = @"MobileSoftwareUpdateErrorDomain";
            if (v23)
            {
              if (CFStringCompare(v18, @"RRD", 1uLL))
              {
                v24 = v18;
              }

              else
              {
                v24 = @"RamrodErrorDomain";
              }
            }

            if (IntValue)
            {
              v25 = IntValue;
            }

            else
            {
              v25 = 1106;
            }

            v26 = _create_error_internal_with_userinfo_cf(v24, v25, v13, 0, 0, @"%@", v21, v22, v15);
            if (v13)
            {
              CFRelease(v13);
            }

            v13 = v26;
          }

          CFRelease(v17);
        }

        ++v12;
      }

      while (CFArrayGetCount(ArrayBySeparatingStrings) > v12);
      if (!ArrayBySeparatingStrings)
      {
        goto LABEL_27;
      }
    }

    CFRelease(ArrayBySeparatingStrings);
LABEL_27:
    if (v13)
    {
      Domain = CFErrorGetDomain(v13);
      Code = CFErrorGetCode(v13);
      v33 = _create_error_internal_with_userinfo_cf(Domain, Code, v13, 0, v1, @"OTA failed. Preserved reason: %@", v31, v32, v36);
      CFRelease(v13);
LABEL_37:
      CFRelease(v1);
      return v33;
    }

    error_internal_with_userinfo_cf = _create_error_internal_with_userinfo_cf(@"MobileSoftwareUpdateErrorDomain", 1106, 0, 0, v1, @"OTA failed. Preserved reason: %@", v10, v11, v36);
LABEL_36:
    v33 = error_internal_with_userinfo_cf;
    goto LABEL_37;
  }

  return 0;
}

uint64_t MSUAssetCalculatePrepareSizes_server(uint64_t a1, const __CFDictionary *a2, void *a3, void *a4, CFErrorRef *a5)
{
  v61 = 0;
  v62 = 0;
  msubrain = get_msubrain();
  if (msubrain)
  {
    v16 = msubrain;
    v59 = 0;
    v60 = 0;
    v17 = +[NSMutableDictionary dictionary];
    [v17 setObject:a1 forKeyedSubscript:@"TargetUUID"];
    if ([v17 count])
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (![v16 calculateUpdateStorageRequirements:40 attributes:a2 options:v18 info:&v60 error:&v59])
    {
      logfunction("", 1, @"Using OS prepare calculation because MSUBrain call failed: %@\n", v19, v20, v21, v22, v23, v59);
      goto LABEL_14;
    }

    v24 = [v60 objectForKeyedSubscript:@"PrepareSize"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      logfunction("", 1, @"Using MSUBrain prepare calculation\n", v25, v26, v27, v28, v29, v56);
      v62 = [v24 unsignedLongLongValue];
      v30 = [v60 objectForKeyedSubscript:@"SnapshotPrepareSize"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v61 = [v30 unsignedLongLongValue];
        v31 = 1;
        goto LABEL_28;
      }

      v56 = objc_opt_class();
      v32 = @"Using OS prepare calculation because MSUBrain returned an invalid object type (snapshot) : %@\n";
    }

    else
    {
      v56 = objc_opt_class();
      v32 = @"Using OS prepare calculation because MSUBrain returned invalid object type : %@\n";
    }
  }

  else
  {
    v32 = @"Using OS prepare calculation because MSUBrain is not loaded\n";
  }

  logfunction("", 1, v32, v11, v12, v13, v14, v15, v56);
LABEL_14:
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"SplatOnly");
    if (Value && (v42 = Value, v43 = CFGetTypeID(Value), v43 == CFBooleanGetTypeID()) && CFBooleanGetValue(v42))
    {
      logfunction("", 1, @"Returning snapshot preparation size for splat\n", v37, v38, v39, v40, v41, v57);
      if ((get_snapshot_preparation_size(a2, &v62, a5) & 1) == 0)
      {
        logfunction("", 1, @"Error determining snapshot preparation size: %@.\n", v44, v45, v46, v47, v48, *a5);
        goto LABEL_27;
      }
    }

    else
    {
      logfunction("", 1, @"Returning non-snapshot preparation size\n", v37, v38, v39, v40, v41, v57);
      if ((get_nonsnapshot_preparation_size(a2, &v62, a5) & 1) == 0)
      {
        logfunction("", 1, @"Error determining the non-snapshot preparation size: %@.\n", v44, v45, v46, v47, v48, *a5);
        goto LABEL_27;
      }
    }

    v31 = 1;
    logfunction("", 1, @"Also returning snapshot prepare size\n", v44, v45, v46, v47, v48, v58);
    if (get_snapshot_preparation_size(a2, &v61, a5))
    {
      goto LABEL_28;
    }

    logfunction("", 1, @"Error determining the snapshot prepare size: %@.\n", v49, v50, v51, v52, v53, *a5);
    goto LABEL_27;
  }

  error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"Update attributes dictionary is NULL", v33, v34, v35, v57);
  if (a5)
  {
    v31 = 0;
    *a5 = error_internal_cf;
    goto LABEL_28;
  }

  CFRelease(error_internal_cf);
LABEL_27:
  v31 = 0;
LABEL_28:
  if (a3)
  {
    *a3 = v62;
  }

  if (a4)
  {
    *a4 = v61;
  }

  return v31;
}

uint64_t _MSUAssetCalculateApplyAndReserveSizes(void *a1, void *a2, void *a3, unint64_t *a4, unint64_t *a5, CFErrorRef *a6)
{
  v68 = 0;
  v69 = 0;
  msubrain = get_msubrain();
  if (msubrain)
  {
    v66 = 0;
    v67 = 0;
    if (![msubrain calculateUpdateStorageRequirements:80 attributes:a1 options:0 info:&v67 error:&v66])
    {
      logfunction("", 1, @"Using OS apply calculation because MSUBrain call failed: %@\n", v18, v19, v20, v21, v22, v66);
      goto LABEL_11;
    }

    v23 = [v67 objectForKeyedSubscript:@"ApplySize"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      logfunction("", 1, @"Using MSUBrain apply calculation\n", v24, v25, v26, v27, v28, v62);
      v69 = [v23 unsignedLongLongValue];
      v29 = [v67 objectForKeyedSubscript:@"SnapshotApplySize"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = 1;
        logfunction("", 1, @"Using MSUBrain apply calculation (snapshot)\n", v30, v31, v32, v33, v34, v63);
        v68 = [v29 unsignedLongLongValue];
        goto LABEL_24;
      }

      v62 = objc_opt_class();
      v36 = @"Using OS apply calculation because MSUBrain returned an invalid object type (snapshot) : %@\n";
    }

    else
    {
      v62 = objc_opt_class();
      v36 = @"Using OS apply calculation because MSUBrain returned an invalid object type : %@\n";
    }
  }

  else
  {
    v36 = @"Using OS apply calculation because MSUBrain is not loaded\n";
  }

  logfunction("", 1, v36, v13, v14, v15, v16, v17, v62);
LABEL_11:
  if (a1)
  {
    if (snapshot_is_prepared(a1))
    {
      logfunction("", 1, @"Returning snapshot apply size\n", v40, v41, v42, v43, v44, v64);
      if (get_snapshot_apply_and_reserve_sizes(a1, &v69, a4, a5))
      {
        v68 = v69;
        v35 = 1;
        goto LABEL_24;
      }

      logfunction("", 1, @"Error determining what the snapshot apply size: %@.\n", v45, v46, v47, v48, v49, *a6);
    }

    else
    {
      logfunction("", 1, @"Returning non-snapshot apply size\n", v40, v41, v42, v43, v44, v64);
      if (get_nonsnapshot_apply_and_reserve_sizes(a1, &v69, a4, a5, a6))
      {
        v35 = 1;
        logfunction("", 1, @"Also returning snapshot apply size\n", v51, v52, v53, v54, v55, v65);
        if (get_snapshot_apply_and_reserve_sizes(a1, &v68, 0, 0))
        {
          goto LABEL_24;
        }

        logfunction("", 1, @"Error determining the snapshot apply size: %@.\n", v56, v57, v58, v59, v60, *a6);
      }

      else
      {
        logfunction("", 1, @"Error determining the non-snapshot apply size: %@.\n", v51, v52, v53, v54, v55, *a6);
      }
    }
  }

  else
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"Update attributes dictionary is NULL", v37, v38, v39, v64);
    if (a6)
    {
      v35 = 0;
      *a6 = error_internal_cf;
      goto LABEL_24;
    }

    CFRelease(error_internal_cf);
  }

  v35 = 0;
LABEL_24:
  if (a2)
  {
    *a2 = v69;
  }

  if (a3)
  {
    *a3 = v68;
  }

  return v35;
}

uint64_t check_available_size(unint64_t a1, void *a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    available_space = get_available_space(a3);
    if (*a3)
    {
      return 0;
    }

    v17 = a1 - available_space;
    if (a1 <= available_space)
    {
      goto LABEL_15;
    }

    logfunction("", 1, @"sizeNeeded = (%lld - %lld) = %lld\n", v12, v13, v14, v15, v16, a1);
    if (trigger_cache_delete(v17, @"/private/var", 4, 0))
    {
      v21 = get_available_space(a3);
      if (!*a3)
      {
        if (a1 > v21)
        {
          *a2 = a1 - v21;
          logfunction("", 1, @"prequiredsize = (%lld - %lld) = %lld\n", v12, v13, v14, v15, v16, a1);
          error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 20, 0, 0, @"There is not enough space to proceed with the update. %lld is required", v22, v23, v24, *a2);
          *a3 = error_internal_cf;
          v26 = CFGetTypeID(error_internal_cf);
          TypeID = CFErrorGetTypeID();
          v33 = "not";
          if (v26 == TypeID)
          {
            v33 = "";
          }

          v43 = *a3;
          logfunction("", 1, @"*perrorinfo (%s error)= %@\n", v28, v29, v30, v31, v32, v33);
          return 0;
        }

LABEL_15:
        v38 = 1;
        logfunction("", 1, @"Required space (%lld) is available (%lld)\n", v12, v13, v14, v15, v16, a1);
        *a2 = 0;
        return v38;
      }

      return 0;
    }

    v37 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"Cache delete failed", v18, v19, v20, v41);
  }

  else
  {
    logfunction("", 1, @"No point in calculating needed size since out param is NULL\n", a4, a5, a6, a7, a8, v40);
    v37 = _create_error_internal_cf(kCFErrorDomainPOSIX, 22, 0, 0, @"missing prequiredsize parameter", v34, v35, v36, v42);
    if (!a3)
    {
      CFRelease(v37);
      return 0;
    }
  }

  v38 = 0;
  *a3 = v37;
  return v38;
}

uint64_t MSUCheckInstallationSize_server(void *a1, void *a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  v19 = 0;
  if (a1)
  {
    if (_MSUAssetCalculateApplyAndReserveSizes(a1, &v19, 0, 0, 0, &cf))
    {
      v12 = check_available_size(v19, a2, a3, v10, v11, a6, a7, a8);
      goto LABEL_9;
    }

    v15 = cf;
    v13 = @"Failed to calculate apply size";
    v14 = 7;
  }

  else
  {
    v13 = @"No asset properties provided";
    v14 = 9;
    v15 = 0;
  }

  error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", v14, v15, 0, v13, a6, a7, a8, cf);
  if (a3)
  {
    v12 = 0;
    *a3 = error_internal_cf;
  }

  else
  {
    CFRelease(error_internal_cf);
    v12 = 0;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t get_available_space(CFErrorRef *a1)
{
  bzero(&v8, 0x878uLL);
  if (!statfs("/private/var", &v8))
  {
    return v8.f_bavail * v8.f_bsize;
  }

  v2 = __error();
  error_internal_cf = _create_error_internal_cf(kCFErrorDomainPOSIX, *v2, 0, 0, @"Failed to get filesystem stats", v3, v4, v5, v8.f_bsize);
  if (a1)
  {
    *a1 = error_internal_cf;
  }

  else
  {
    CFRelease(error_internal_cf);
  }

  return -1;
}

void MSUPromptForTTR(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (os_variant_has_internal_diagnostics())
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __MSUPromptForTTR_block_invoke;
    v11[3] = &unk_100049E98;
    v11[4] = a1;
    v11[5] = @"MSUPromptForTTR";
    v11[6] = a2;
    v11[7] = a3;
    v6 = MSUTTRIsKeybagLocked();
    if (v6)
    {
      v7 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = @"MSUTTRWaitForUnlock";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[TTR] %@ | Waiting for first unlock to prompt", &buf, 0xCu);
      }

      v8 = "com.apple.mobile.keybagd.first_unlock";
    }

    else
    {
      v8 = 0;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x3052000000;
    v21 = __Block_byref_object_copy__5;
    v22 = __Block_byref_object_dispose__5;
    v23 = [v11 copy];
    if (v6)
    {
      out_token = 0;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = __MSUTTRWaitForUnlock_block_invoke;
      handler[3] = &unk_100049EC0;
      handler[4] = @"MSUTTRWaitForUnlock";
      handler[5] = &buf;
      notify_register_dispatch(v8, &out_token, &_dispatch_main_q, handler);
      if (MSUTTRIsKeybagLocked())
      {
LABEL_15:
        _Block_object_dispose(&buf, 8);
        return;
      }

      v9 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(block) = 138412290;
        *(&block + 4) = @"MSUTTRWaitForUnlock";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[TTR] %@ | Device now ready, cancelling notification", &block, 0xCu);
      }

      notify_cancel(out_token);
    }

    v10 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(block) = 138412290;
      *(&block + 4) = @"MSUTTRWaitForUnlock";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[TTR] %@ | Device unlocked and available, queueing up async prompt", &block, 0xCu);
    }

    *&block = _NSConcreteStackBlock;
    *(&block + 1) = 3221225472;
    v15 = __MSUTTRWaitForUnlock_block_invoke_38;
    v16 = &unk_100049EE8;
    v17 = @"MSUTTRWaitForUnlock";
    p_buf = &buf;
    dispatch_async(&_dispatch_main_q, &block);
    goto LABEL_15;
  }
}

void __MSUPromptForTTR_block_invoke(uint64_t a1)
{
  error = 0;
  v2 = *(a1 + 32);
  v18[0] = kCFUserNotificationAlertHeaderKey;
  v18[1] = kCFUserNotificationAlertMessageKey;
  v19[0] = v2;
  v19[1] = @"File a radar now?";
  v18[2] = kCFUserNotificationDefaultButtonTitleKey;
  v18[3] = kCFUserNotificationAlternateButtonTitleKey;
  v19[2] = @"OK";
  v19[3] = @"Cancel";
  v3 = CFUserNotificationCreate(kCFAllocatorSystemDefault, 0.0, 0, &error, [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4]);
  if (v3 && !error)
  {
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v3, MSUTTRUserNotificationCallback, 0);
    if (RunLoopSource)
    {
      v5 = RunLoopSource;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = __MSUPromptForTTR_block_invoke_30;
      v11[3] = &unk_100049E70;
      v12 = *(a1 + 48);
      if (callbackBlock)
      {

        callbackBlock = 0;
      }

      callbackBlock = [v11 copy];
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, v5, kCFRunLoopCommonModes);
      v3 = v5;
    }

    else
    {
      v9 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[TTR] %@ | FAILURE | Failed to create run loop source for TTR notification", buf, 0xCu);
      }
    }

LABEL_13:
    CFRelease(v3);
    return;
  }

  v7 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    *buf = 138412546;
    v15 = v8;
    v16 = 1024;
    v17 = error;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[TTR] %@ | FAILURE | Failed to display TTR prompt with code %d", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_13;
  }
}

void MSUTTRUserNotificationCallback()
{
  v0 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"MSUTTRUserNotificationCallback";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[TTR] %@ | BEGIN", &v3, 0xCu);
  }

  if (callbackBlock)
  {
    (*(callbackBlock + 16))();

    callbackBlock = 0;
  }

  else
  {
    v1 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = @"MSUTTRUserNotificationCallback";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[TTR] %@ | ERROR | Callback not defined", &v3, 0xCu);
    }
  }

  v2 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"MSUTTRUserNotificationCallback";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[TTR] %@ | DONE", &v3, 0xCu);
  }
}

void __MSUPromptForTTR_block_invoke_30(uint64_t a1, CFTypeRef cf, char a3)
{
  if ((a3 & 3) == 0)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = objc_autoreleasePoolPush();
    if (objc_opt_class())
    {
      v31 = v4;
      v32 = v6;
      if (CFStringGetLength(v5) >= 241)
      {
        v5 = [(__CFString *)v5 substringToIndex:240];
      }

      v7 = objc_alloc_init(NSMutableDictionary);
      [v7 setObject:kDefaultClassification forKeyedSubscript:@"Classification"];
      [v7 setObject:kMSUComponentId forKeyedSubscript:@"ComponentID"];
      [v7 setObject:kMSUComponentName forKeyedSubscript:@"ComponentName"];
      [v7 setObject:kMSUComponentVersion forKeyedSubscript:@"ComponentVersion"];
      [v7 setObject:kDefaultReproducibility forKeyedSubscript:@"Reproducibility"];
      [v7 setObject:+[NSString stringWithFormat:](NSString forKeyedSubscript:{"stringWithFormat:", @"%@", v5), @"Title"}];
      [v7 setObject:kASUOTAAnomalyKeyword forKeyedSubscript:@"Keywords"];
      v8 = [NSMutableArray arrayWithArray:&off_100053DF0];
      v9 = +[NSFileManager defaultManager];
      if ([(NSMutableArray *)v8 count])
      {
        v10 = 0;
        do
        {
          v11 = [(NSMutableArray *)v8 objectAtIndexedSubscript:v10];
          v33 = 0;
          if ([(NSFileManager *)v9 fileExistsAtPath:v11 isDirectory:&v33])
          {
            if (v33)
            {
              [(NSMutableArray *)v8 removeObjectAtIndex:v10];
              v12 = [(NSFileManager *)v9 contentsOfDirectoryAtPath:v11 error:0];
              if (v12)
              {
                v13 = v12;
                v36 = 0u;
                v37 = 0u;
                v34 = 0u;
                v35 = 0u;
                v14 = [(NSArray *)v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
                if (v14)
                {
                  v15 = v14;
                  v16 = *v35;
                  do
                  {
                    for (i = 0; i != v15; i = i + 1)
                    {
                      if (*v35 != v16)
                      {
                        objc_enumerationMutation(v13);
                      }

                      -[NSMutableArray addObject:](v8, "addObject:", [v11 stringByAppendingPathComponent:*(*(&v34 + 1) + 8 * i)]);
                    }

                    v15 = [(NSArray *)v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
                  }

                  while (v15);
                }
              }
            }

            else
            {
              ++v10;
            }
          }

          else
          {
            [(NSMutableArray *)v8 removeObjectAtIndex:v10];
          }
        }

        while (v10 < [(NSMutableArray *)v8 count]);
      }

      if ([(NSMutableArray *)v8 count]&& v8)
      {
        [v7 setObject:-[NSMutableArray componentsJoinedByString:](v8 forKeyedSubscript:{"componentsJoinedByString:", @", "), @"Attachments"}];
        v18 = [NSMutableArray arrayWithCapacity:[(NSMutableArray *)v8 count]];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v19 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v35;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v35 != v21)
              {
                objc_enumerationMutation(v8);
              }

              -[NSMutableArray addObject:](v18, "addObject:", [*(*(&v34 + 1) + 8 * j) lastPathComponent]);
            }

            v20 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
          }

          while (v20);
        }

        v23 = [NSString stringWithFormat:@"%@\nExpected attachments:\n(sysdiagnose)\n%@", v31, [(NSMutableArray *)v18 componentsJoinedByString:@"\n"]];
      }

      else
      {
        v23 = [NSString stringWithFormat:@"%@\nExpected attachments:\n(sysdiagnose)", v31, v30];
      }

      [v7 setObject:v23 forKeyedSubscript:@"Description"];
      v24 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
      v25 = objc_opt_new();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v26 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v35;
        do
        {
          for (k = 0; k != v27; k = k + 1)
          {
            if (*v35 != v28)
            {
              objc_enumerationMutation(v7);
            }

            [v25 addObject:{+[NSURLQueryItem queryItemWithName:value:](NSURLQueryItem, "queryItemWithName:value:", *(*(&v34 + 1) + 8 * k), objc_msgSend(v7, "objectForKeyedSubscript:", *(*(&v34 + 1) + 8 * k)))}];
          }

          v27 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v27);
      }

      [(NSURLComponents *)v24 setQueryItems:v25];
      [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];

      v6 = v32;
    }

    objc_autoreleasePoolPop(v6);
  }

  CFRelease(cf);
}

void __MSUTTRWaitForUnlock_block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[TTR] %@ | Got notification, prompting for TTR", &v7, 0xCu);
    }

    (*(*(*(*(a1 + 40) + 8) + 40) + 16))();

    *(*(*(a1 + 40) + 8) + 40) = 0;
  }

  else if (v4)
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[TTR] %@ | Got notification, but already prompted", &v7, 0xCu);
  }
}

void __MSUTTRWaitForUnlock_block_invoke_38(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();

    *(*(*(a1 + 40) + 8) + 40) = 0;
  }

  else
  {
    v3 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[TTR] %@ | Called async to prompt, but already prompted", &v5, 0xCu);
    }
  }
}

id retrieve_previous_update_state()
{
  v0 = [NSDictionary dictionaryWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/last_update_result.plist"];
  if (!v0)
  {
    goto LABEL_5;
  }

  v6 = [(NSDictionary *)v0 objectForKey:@"PreviousUpdateState"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v6 longValue];
      goto LABEL_6;
    }

LABEL_5:
    v6 = 0;
  }

LABEL_6:
  logfunction("", 1, @"%s: found previous update state MSUPreviousUpdateState=%u\n", v1, v2, v3, v4, v5, "retrieve_previous_update_state");
  return v6;
}

BOOL is_first_boot_after_update()
{
  v0 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:", @"/var/run/FirstBootAfterUpdate"];
  logfunction("", 1, @"%s: is first boot: %@\n", v1, v2, v3, v4, v5, "is_first_boot_after_update");
  return v0;
}

const void *retreive_date_object_from_state_file(uint64_t a1)
{
  v2 = [NSDictionary dictionaryWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/last_update_result.plist"];
  if (!v2)
  {
    return 0;
  }

  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:a1];
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 == CFDateGetTypeID())
    {
      CFRetain(v4);
      return v4;
    }

    return 0;
  }

  return v4;
}

uint64_t get_previous_update_unresolved_tolerated_failures_count()
{
  v0 = [NSDictionary dictionaryWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/lastOTA/ota_tolerated_failures.plist"];
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if (v0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = __get_previous_update_unresolved_tolerated_failures_count_block_invoke;
    v3[3] = &unk_100049F10;
    v3[4] = &v4;
    [(NSDictionary *)v0 enumerateKeysAndObjectsUsingBlock:v3];
    v1 = *(v5 + 6);
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10001C688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __get_previous_update_unresolved_tolerated_failures_count_block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a2 isEqualToString:@"uuid"];
  if ((result & 1) == 0)
  {
    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"InitialAttempted", "BOOLValue"}])
    {
      v6 = [objc_msgSend(a3 objectForKey:{@"InitialResult", "intValue"}] != 0;
    }

    else
    {
      v6 = 0;
    }

    result = [objc_msgSend(a3 objectForKeyedSubscript:{@"RetryAttempted", "BOOLValue"}];
    if (result)
    {
      result = [objc_msgSend(a3 objectForKey:{@"RetryResult", "intValue"}];
      if (!result)
      {
        return result;
      }
    }

    else if (!v6)
    {
      return result;
    }

    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

uint64_t load_trust_cache_at_path(const char *a1, NSError **a2)
{
  v3 = a1;
  memset(&v66, 0, sizeof(v66));
  connect = 0;
  v4 = open(a1, 0);
  if (v4 < 0)
  {
    v16 = *__error();
    v78 = NSDebugDescriptionErrorKey;
    v17 = __error();
    v79 = [NSString stringWithFormat:@"open() failed: %s", strerror(*v17)];
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v16 userInfo:[NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1]];
    v18 = __error();
    strerror(*v18);
    logfunction("", 1, @"Could not open trust cache at path %s: %s.\n", v19, v20, v21, v22, v23, v3);
    v24 = MGCopyAnswer();
    if (v24 == kCFBooleanFalse && (bzero(__s1, 0x400uLL), v64 = 1024, !sysctlbyname("kern.bootargs", __s1, &v64, 0, 0)) && strstr(__s1, "msu_eng_brain=1"))
    {
      v15 = 1;
      logfunction("", 1, @"System policy for update brain is in effect.\n", v53, v54, v55, v56, v57, outputStructa);
      v8 = 0;
    }

    else
    {
      v15 = 0;
    }

    CFRelease(v24);
    goto LABEL_9;
  }

  v5 = v4;
  if (fstat(v4, &v66))
  {
    v6 = *__error();
    v75 = NSDebugDescriptionErrorKey;
    v7 = __error();
    v76 = [NSString stringWithFormat:@"fstat() failed: %s", strerror(*v7)];
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:[NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1]];
    v9 = __error();
    outputStructb = strerror(*v9);
    logfunction("", 1, @"Could not fstat trust cache: %s\n", v10, v11, v12, v13, v14, outputStructb);
LABEL_4:
    close(v5);
    v15 = 0;
    goto LABEL_9;
  }

  v26 = mmap(0, v66.st_size, 1, 1026, v5, 0);
  if (v26 == -1)
  {
    v39 = *__error();
    v73 = NSDebugDescriptionErrorKey;
    v40 = __error();
    v74 = [NSString stringWithFormat:@"mmap() failed: %s", strerror(*v40)];
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v39 userInfo:[NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1]];
    v41 = __error();
    strerror(*v41);
    logfunction("", 1, @"Could not map file %s: %s\n", v42, v43, v44, v45, v46, v3);
    goto LABEL_4;
  }

  v27 = v26;
  v28 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v28);
  v30 = MatchingService;
  if (!MatchingService)
  {
    v71 = NSDebugDescriptionErrorKey;
    v72 = @"Could not find AppleMobileFileIntegrity service";
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:3 userInfo:[NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1]];
    v52 = @"Could not find AppleMobileFileIntegrity service\n";
LABEL_22:
    logfunction("", 1, v52, v47, v48, v49, v50, v51, outputStruct);
    goto LABEL_23;
  }

  v31 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
  if (!v31)
  {
    v58 = IOConnectCallMethod(connect, 2u, 0, 0, v27, v66.st_size, 0, 0, 0, 0);
    if (!v58)
    {
      v8 = 0;
      v15 = 1;
      goto LABEL_24;
    }

    v59 = v58;
    v60 = v58;
    v67 = NSDebugDescriptionErrorKey;
    v68 = [NSString stringWithFormat:@"IOConnectCallMethod() failed: 0x%x", v58];
    v8 = [NSError errorWithDomain:@"IOKitErrorDomain" code:v60 userInfo:[NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1]];
    outputStruct = v59;
    v52 = @"Unable to load trust cache: 0x%x\n";
    goto LABEL_22;
  }

  v32 = v31;
  v33 = v31;
  v69 = NSDebugDescriptionErrorKey;
  v70 = [NSString stringWithFormat:@"IOServiceOpen() failed: 0x%x", v31];
  v8 = [NSError errorWithDomain:@"IOKitErrorDomain" code:v33 userInfo:[NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1]];
  logfunction("", 1, @"Unable to open user client: 0x%x\n", v34, v35, v36, v37, v38, v32);
LABEL_23:
  v15 = 0;
LABEL_24:
  close(v5);
  munmap(v27, v66.st_size);
  if (connect)
  {
    IOServiceClose(connect);
  }

  if (v30)
  {
    IOObjectRelease(v30);
  }

LABEL_9:
  if (a2)
  {
    *a2 = v8;
  }

  return v15;
}

void sub_10001CFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id nrdSharedLogger()
{
  if (nrdSharedLogger_pred != -1)
  {
    nrdSharedLogger_cold_1();
  }

  v1 = nrdSharedLogger___instance;

  return v1;
}

void __nrdSharedLogger_block_invoke(id a1)
{
  nrdSharedLogger___instance = os_log_create("com.apple.MobileSoftwareUpdate", "NRD");

  _objc_release_x1();
}

void sub_10001E1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSErrorUserInfoKey a10, const __CFString *a11, const __CFString *a12, uint64_t a13)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    a10 = NSDebugDescriptionErrorKey;
    a11 = @"ExceptionDescription";
    a12 = @"Exception invoking NRDUpdateBrain";
    v15 = [v14 description];
    a13 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&a12 forKeys:&a10 count:2];
    v17 = [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:113 userInfo:v16];

    (*(v13 + 16))(v13, v17);
    objc_end_catch();
    JUMPOUT(0x10001E16CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001E6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _longFromNVRAMVar(id a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a1 = [[NSString alloc] initWithData:a1 encoding:4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  if (!a1)
  {
    return 0;
  }

  return [a1 longLongValue];
}

void _log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = [[NSString alloc] initWithFormat:a2 arguments:&a9];
  logfunction("", 1, @"%@\n", v10, v11, v12, v13, v14, v9);
}

void __copy_helper_block_e8_32o40o(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 3);
}

void __destroy_helper_block_e8_32o40o(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 3);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

void __copy_helper_block_e8_32o40o48o56o64o72o80b(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  _Block_object_assign((a1 + 40), *(a2 + 40), 3);
  _Block_object_assign((a1 + 48), *(a2 + 48), 3);
  _Block_object_assign((a1 + 56), *(a2 + 56), 3);
  _Block_object_assign((a1 + 64), *(a2 + 64), 3);
  _Block_object_assign((a1 + 72), *(a2 + 72), 3);
  v4 = *(a2 + 80);

  _Block_object_assign((a1 + 80), v4, 7);
}

void __destroy_helper_block_e8_32o40o48o56o64o72o80b(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 80), 7);
  _Block_object_dispose(*(a1 + 72), 3);
  _Block_object_dispose(*(a1 + 64), 3);
  _Block_object_dispose(*(a1 + 56), 3);
  _Block_object_dispose(*(a1 + 48), 3);
  _Block_object_dispose(*(a1 + 40), 3);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

void __copy_helper_block_e8_32o40o48o56o64b(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  _Block_object_assign((a1 + 40), *(a2 + 40), 3);
  _Block_object_assign((a1 + 48), *(a2 + 48), 3);
  _Block_object_assign((a1 + 56), *(a2 + 56), 3);
  v4 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v4, 7);
}

void __destroy_helper_block_e8_32o40o48o56o64b(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 64), 7);
  _Block_object_dispose(*(a1 + 56), 3);
  _Block_object_dispose(*(a1 + 48), 3);
  _Block_object_dispose(*(a1 + 40), 3);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

void __copy_helper_block_e8_32o40o48o(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  _Block_object_assign((a1 + 40), *(a2 + 40), 3);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 3);
}

void __destroy_helper_block_e8_32o40o48o(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 3);
  _Block_object_dispose(*(a1 + 40), 3);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

uint64_t _partition_log(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (_loggingPtr)
  {
    return _loggingPtr(result, &a9);
  }

  return result;
}

uint64_t get_main_container_space_info(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _partition_log("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "get_main_container_space_info");
  if (apfs_container_device_node_path)
  {
    SpaceInfo = APFSContainerGetSpaceInfo();
    if (SpaceInfo)
    {
      _partition_log("APFSContainerGetSpaceInfo failed with result:%d", v21, v22, v23, v24, v25, v26, v27, SpaceInfo);
    }
  }

  else
  {
    _partition_log("No container device found, can't retrieve space info", v13, v14, v15, v16, v17, v18, v19, v52);
  }

  if (system_device_node_path)
  {
    v28 = APFSVolumeGetSpaceInfo();
    if (v28)
    {
      _partition_log("APFSVolumeGetSpaceInfo for system volume failed with result:%d", v29, v30, v31, v32, v33, v34, v35, v28);
    }
  }

  else
  {
    _partition_log("No system device found, can't retrieve space info", v21, v22, v23, v24, v25, v26, v27, v52);
  }

  if (data_device_node_path)
  {
    v36 = APFSVolumeGetSpaceInfo();
    if (v36)
    {
      _partition_log("APFSVolumeGetSpaceInfo for data volume failed with result:%d", v37, v38, v39, v40, v41, v42, v43, v36);
    }
  }

  else
  {
    _partition_log("No data device found, can't retrieve space info", v29, v30, v31, v32, v33, v34, v35, v52);
  }

  if (!preboot_partition_device_node_path)
  {
    result = _partition_log("No preboot device found, can't retrieve space info", v37, v38, v39, v40, v41, v42, v43, v52);
LABEL_17:
    if (!a1)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  result = APFSVolumeGetSpaceInfo();
  if (result)
  {
    result = _partition_log("APFSVolumeGetSpaceInfo for preboot volume failed with result:%d", v45, v46, v47, v48, v49, v50, v51, result);
    goto LABEL_17;
  }

  if (a1)
  {
LABEL_18:
    *a1 = 0;
  }

LABEL_19:
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return result;
}

BOOL RCGetSystemPartitionExtrasSizeForDevice(int a1, CFDictionaryRef theDict, void *a3, CFStringRef *a4)
{
  if (a3)
  {
    if (theDict && (Value = CFDictionaryGetValue(theDict, @"SystemFirmwareExtrasSize")) != 0)
    {
      CFNumberGetValue(Value, kCFNumberSInt64Type, a3);
      v7 = *a3;
      if (a4)
      {
        *a4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d MB as defined by the value of the SystemFirmwareExtrasSize in the options dictionary.", v7 >> 20);
        v7 = *a3;
      }
    }

    else
    {
      if (a4)
      {
        *a4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d MB for APFS padding + %d MB for Restore Log + %d MB for Baseband FW + %d MB for Calibration Data + %d MB for SEP FW + 5 MB of wiggle room.", 25, 1, 80, 5, 5);
      }

      v7 = 121;
    }

    *a3 = v7 << 20;
  }

  return a3 != 0;
}

uint64_t wait_for_io_service_matching_dict(CFTypeRef cf, unsigned int a2)
{
  v4 = 0;
  do
  {
    CFRetain(cf);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, cf);
    if (MatchingService)
    {
      break;
    }

    v6 = a2 - v4 >= 3 ? 3 : a2 - v4;
    v7 = CFCopyDescription(cf);
    CStringPtr = CFStringGetCStringPtr(v7, 0);
    ramrod_log_msg("waiting for matching IOKit service: %s\n", v9, v10, v11, v12, v13, v14, v15, CStringPtr);
    sleep(v6);
    v4 += v6;
    CFRelease(v7);
  }

  while (v4 < a2);
  CFRelease(cf);
  return MatchingService;
}

__CFDictionary *create_embedded_storage_service_query_dict(char *cStr)
{
  v1 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionaryAddValue(Mutable, v2, kCFBooleanTrue);
    v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = v5;
    if (v5)
    {
      CFDictionaryAddValue(v5, @"IOPropertyMatch", v4);
    }

    CFRelease(v2);
  }

  else
  {
    v6 = 0;
    v4 = v2;
  }

  CFRelease(v4);
  return v6;
}