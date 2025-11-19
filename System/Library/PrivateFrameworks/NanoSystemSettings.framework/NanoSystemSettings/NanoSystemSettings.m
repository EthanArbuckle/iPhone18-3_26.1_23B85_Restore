uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = qword_10003DCF0;
  qword_10003DCF0 = v1;

  v3 = +[NSRunLoop currentRunLoop];
  [v3 run];

  objc_autoreleasePoolPop(v0);
  return 1;
}

id sub_100003F24()
{
  objc_opt_self();
  v0 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanosystemsettings"];

  return v0;
}

id sub_100003F64()
{
  objc_opt_self();
  v0 = objc_opt_new();

  return v0;
}

void sub_100005D34(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateCompanionGenerativeModelsEligibility replyBlock: success (%{BOOL}d), error (%@)", v6, 0x12u);
  }
}

void sub_100005E60(id a1)
{
  +[NSSLocaleInfoCache handleMemoryPressureEvent];

  +[NSSLegalDocumentsCache handleMemoryPressureEvent];
}

uint64_t sub_10000610C(uint64_t a1)
{
  v2 = sub_100003F24();
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;

  return _objc_release_x1();
}

uint64_t sub_100006204(uint64_t a1)
{
  v2 = sub_100003F64();
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;

  return _objc_release_x1();
}

void sub_100006398(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = [NSSUsageData newUsageDataFromUsageRespMsg:a2];
  v6 = [NSSUsageData createLegacyUsageDictionary:v7];
  (*(*(a1 + 32) + 16))();
}

void sub_100006584(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v3 = objc_retainBlock(*(a1 + 40));
  [v2 addObject:v3];

  if ([v2 count] == 1)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100006710;
    v11[3] = &unk_100034B98;
    v4 = v2;
    v12 = v4;
    v5 = objc_retainBlock(v11);
    v6 = *(a1 + 32);
    v7 = objc_opt_new();
    v8 = objc_retainBlock(v5);
    v9 = [v6 sendRequest:v7 expectsResponse:1 replyBlock:v8 replyDictionary:*(*(a1 + 32) + 128) sendTimeout:0 wantsAcknowledgement:0 bypassDuet:30.0];

    if (v9)
    {
      v10 = objc_retainBlock(*(a1 + 40));
      [v4 removeObject:v10];

      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_100006710(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [*(a1 + 32) removeAllObjects];
}

void sub_1000069B4(uint64_t a1)
{
  v5 = objc_opt_new();
  [v5 setBundleIdentifier:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = objc_retainBlock(*(a1 + 48));
  v4 = [v2 sendRequest:v5 expectsResponse:1 replyBlock:v3 replyDictionary:*(*(a1 + 40) + 136) sendTimeout:0 wantsAcknowledgement:1 bypassDuet:30.0];

  if (v4)
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100006C54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = objc_retainBlock(*(a1 + 48));
  v6 = [v2 sendRequest:v3 expectsResponse:1 replyBlock:v4 replyDictionary:*(*(a1 + 32) + 144) sendTimeout:0 wantsAcknowledgement:1 bypassDuet:30.0];

  v5 = v6;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
    v5 = v6;
  }
}

void sub_100006E74(uint64_t a1)
{
  v2 = [*(a1 + 32) fileTransferProgress];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) fileTransferProgress];
    v5 = [v4 objectForKey:*(a1 + 40)];
    v6 = [v5 unsignedIntegerValue];

    (*(*(a1 + 48) + 16))();
    if (v6 == 100)
    {
      v11 = [*(a1 + 32) fileTransferProgress];
      [v11 removeObjectForKey:*(a1 + 40)];
    }
  }

  else
  {
    v7 = [NSString stringWithFormat:@"No file transfer progress found for file: %@", *(a1 + 40)];
    v14 = NSLocalizedDescriptionKey;
    v15 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [NSError errorWithDomain:@"NSSErrorDomain" code:8 userInfo:v8];

    v10 = NSSLogForType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "error while retrieving progress: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100007284(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = objc_retainBlock(*(a1 + 48));
  v6 = [v2 sendRequest:v3 expectsResponse:1 replyBlock:v4 replyDictionary:*(*(a1 + 32) + 160) sendTimeout:0 wantsAcknowledgement:1 bypassDuet:30.0];

  v5 = v6;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
    v5 = v6;
  }
}

void sub_100007554(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_new();
  v4 = objc_retainBlock(*(a1 + 40));
  v6 = [v2 sendRequest:v3 expectsResponse:1 replyBlock:v4 replyDictionary:*(*(a1 + 32) + 152) sendTimeout:0 wantsAcknowledgement:1 bypassDuet:30.0];

  v5 = v6;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
    v5 = v6;
  }
}

void sub_10000771C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_new();
  v4 = objc_retainBlock(*(a1 + 40));
  v6 = [v2 sendRequest:v3 expectsResponse:1 replyBlock:v4 replyDictionary:*(*(a1 + 32) + 176) sendTimeout:0 wantsAcknowledgement:1 bypassDuet:30.0];

  v5 = v6;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
    v5 = v6;
  }
}

void sub_10000796C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = objc_retainBlock(*(a1 + 48));
  v6 = [v2 sendRequest:v3 expectsResponse:1 replyBlock:v4 replyDictionary:*(*(a1 + 32) + 176) sendTimeout:0 wantsAcknowledgement:1 bypassDuet:30.0];

  v5 = v6;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
    v5 = v6;
  }
}

void sub_100007BDC(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setLog:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = objc_retainBlock(*(a1 + 48));
  v5 = [v3 sendRequest:v2 expectsResponse:1 replyBlock:v4 replyDictionary:*(*(a1 + 40) + 168) sendTimeout:0 wantsAcknowledgement:1 bypassDuet:30.0];

  if (v5)
  {
    v6 = NSSLogForType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error when trying to send the request", v7, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100007E4C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = NSSLogForType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Storage Info received from watch: %@", buf, 0xCu);
  }

  if (v6)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v8 = +[NRPairedDeviceRegistry sharedInstance];
    v9 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v27 = v8;
    v10 = [v8 getAllDevicesWithArchivedAltAccountDevicesMatching:v9];
    v11 = [v10 firstObject];

    v29 = [v11 valueForProperty:NRDevicePropertySystemBuildVersion];
    v26 = v11;
    v28 = [v11 valueForProperty:NRDevicePropertyHWModelString];
    v31[0] = a1[4];
    v30[0] = @"requiredFreeSpace";
    v30[1] = @"availableStorage";
    v12 = kNSSAboutAvailableStorageKey;
    v13 = [v5 objectForKeyedSubscript:kNSSAboutAvailableStorageKey];
    if (v13)
    {
      v14 = [v5 objectForKeyedSubscript:v12];
    }

    else
    {
      v14 = &off_1000367B0;
    }

    v31[1] = v14;
    v30[2] = @"purgableSpace";
    v15 = kNSSAboutPurgableStorageKey;
    v16 = [v5 objectForKeyedSubscript:kNSSAboutPurgableStorageKey];
    if (v16)
    {
      v17 = [v5 objectForKeyedSubscript:v15];
    }

    else
    {
      v17 = &off_1000367B0;
    }

    v31[2] = v17;
    v30[3] = @"userDeletableSpace";
    v18 = kNSSAboutUserDeletableStorageKey;
    v19 = [v5 objectForKeyedSubscript:kNSSAboutUserDeletableStorageKey];
    if (v19)
    {
      v20 = [v5 objectForKeyedSubscript:v18];
    }

    else
    {
      v20 = &off_1000367B0;
    }

    v21 = a1[5];
    if (!v21)
    {
      v21 = @"--";
    }

    v31[3] = v20;
    v31[4] = v21;
    v30[4] = @"osBeingUpdatedTo";
    v30[5] = @"watchOS";
    v22 = v28;
    v30[6] = @"watchHardware";
    if (v29)
    {
      v23 = v29;
    }

    else
    {
      v23 = @"--";
    }

    if (!v28)
    {
      v22 = @"--";
    }

    v31[5] = v23;
    v31[6] = v22;
    v24 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:7];
    if (v19)
    {
    }

    if (v16)
    {
    }

    if (v13)
    {
    }

    v25 = NSSLogForType();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[recordSoftwareUpdateSpaceFailure] Sending recordSoftwareUpdateSpaceFailure to CoreAnalytics: %@", buf, 0xCu);
    }

    AnalyticsSendEvent();
    (*(a1[6] + 16))();
  }
}

void sub_100008358(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_new();
  v4 = objc_retainBlock(*(a1 + 40));
  v6 = [v2 sendRequest:v3 expectsResponse:1 replyBlock:v4 replyDictionary:*(*(a1 + 32) + 184) sendTimeout:0 wantsAcknowledgement:1 bypassDuet:30.0];

  v5 = v6;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
    v5 = v6;
  }
}

void sub_100008684(uint64_t a1)
{
  v7 = objc_opt_new();
  [v7 setCapability:*(a1 + 48)];
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = [NSNumber numberWithBool:*(a1 + 48)];
  objc_setAssociatedObject(v2, "kNSSObliterationRequestPreserveeSIMAssociatedObjectKey", v3, 1);

  v4 = *(a1 + 32);
  v5 = objc_retainBlock(*(a1 + 40));
  v6 = [v4 sendRequest:v7 expectsResponse:0 replyBlock:v5 replyDictionary:*(*(a1 + 32) + 192) sendTimeout:1 wantsAcknowledgement:1 bypassDuet:30.0];

  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100008900(uint64_t a1)
{
  v5 = objc_opt_new();
  [v5 setAccountType:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = objc_retainBlock(*(a1 + 48));
  v4 = [v2 sendRequest:v5 expectsResponse:1 replyBlock:v3 replyDictionary:*(*(a1 + 40) + 200) sendTimeout:0 wantsAcknowledgement:0 bypassDuet:30.0];

  if (v4)
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100008B0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_new();
  v4 = objc_retainBlock(*(a1 + 40));
  v6 = [v2 sendRequest:v3 expectsResponse:1 replyBlock:v4 replyDictionary:*(*(a1 + 32) + 208) sendTimeout:0 wantsAcknowledgement:0 bypassDuet:30.0];

  v5 = v6;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
    v5 = v6;
  }
}

void sub_100008D60(uint64_t a1)
{
  v5 = objc_opt_new();
  [v5 setIdentifier:*(a1 + 32)];
  [v5 setIncludeManagedPayloads:*(a1 + 56)];
  v2 = *(a1 + 40);
  v3 = objc_retainBlock(*(a1 + 48));
  v4 = [v2 sendRequest:v5 expectsResponse:1 replyBlock:v3 replyDictionary:*(*(a1 + 40) + 216) sendTimeout:0 wantsAcknowledgement:0 bypassDuet:30.0];

  if (v4)
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100008FB8(uint64_t a1)
{
  v5 = objc_opt_new();
  [v5 setProfileData:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = objc_retainBlock(*(a1 + 48));
  v4 = [v2 sendRequest:v5 expectsResponse:1 replyBlock:v3 replyDictionary:*(*(a1 + 40) + 224) sendTimeout:0 wantsAcknowledgement:1 bypassDuet:30.0];

  if (v4)
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000091F4(uint64_t a1)
{
  v5 = objc_opt_new();
  [v5 setIdentifier:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = objc_retainBlock(*(a1 + 48));
  v4 = [v2 sendRequest:v5 expectsResponse:1 replyBlock:v3 replyDictionary:*(*(a1 + 40) + 232) sendTimeout:0 wantsAcknowledgement:1 bypassDuet:30.0];

  if (v4)
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000095FC(uint64_t a1)
{
  v2 = +[NSLocale preferredLanguages];
  v3 = [NSSLegalDocumentsCache cachedReplyForPreferredLanguages:v2];
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = objc_opt_new();
    v5 = [v2 mutableCopy];
    [v4 setPreferredLanguages:v5];

    [v4 setAddUrlToSAR:0];
    [v4 setFetchBuiltinApps:{objc_msgSend(*(a1 + 32), "shouldFetchBuiltinAppsNotice")}];
    v6 = objc_retainBlock(*(a1 + 40));
    objc_setAssociatedObject(v6, "kNSSLegalDocumentsPreferredLanguagesAssociatedObjectKey", v2, 1);

    v7 = NSSLogForType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "request: (%@)", &v11, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = objc_retainBlock(*(a1 + 40));
    v10 = [v8 sendRequest:v4 expectsResponse:1 replyBlock:v9 replyDictionary:*(*(a1 + 32) + 240) sendTimeout:0 wantsAcknowledgement:0 bypassDuet:30.0];

    if (v10)
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_100009928(uint64_t a1)
{
  v6 = +[NSSLocaleInfoCache cachedReply];
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_new();
    v4 = objc_retainBlock(*(a1 + 40));
    v5 = [v2 sendRequest:v3 expectsResponse:1 replyBlock:v4 replyDictionary:*(*(a1 + 32) + 248) sendTimeout:0 wantsAcknowledgement:0 bypassDuet:30.0];

    if (v5)
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_100009B5C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 440);
  if (!v2)
  {
    v3 = objc_alloc_init(NSSWatchFaceCoordinator);
    v4 = *(a1 + 32);
    v5 = *(v4 + 440);
    *(v4 + 440) = v3;

    v2 = *(*(a1 + 32) + 440);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009C28;
  v6[3] = &unk_100034CB0;
  v7 = *(a1 + 40);
  [v2 watchFacesForCurrentDeviceWithCompletion:v6];
}

void sub_100009C28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = NSSLogForType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_watchFaceCoordinator watchFacesForCurrentDeviceWithCompletion - faces: %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_100009EA0(void *a1)
{
  v2 = *(a1[4] + 440);
  if (!v2)
  {
    v3 = objc_alloc_init(NSSWatchFaceCoordinator);
    v4 = a1[4];
    v5 = *(v4 + 440);
    *(v4 + 440) = v3;

    v2 = *(a1[4] + 440);
  }

  [v2 selectWatchFaceIdentifier:a1[5] forFocusModeIdentifier:a1[6]];
  v6 = *(a1[7] + 16);

  return v6();
}

BOOL sub_10000AEF8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v12 = [v9 objectForKey:v8];
    v13 = v12 != 0;
    if (v12)
    {
      v14 = NSSLogForType();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412802;
        v17 = v8;
        v18 = 2112;
        v19 = v11;
        v20 = 2048;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found match for identifier (%@) in container (%@): (%p)", &v16, 0x20u);
      }

      [v9 removeObjectForKey:v8];
      v10[2](v10, v12);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_10000B42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B44C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B464(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = NSSLogForType();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unpaired with error: (%@)", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *(*(*(a1 + 40) + 8) + 40);
  NSSOSTransactionComplete();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_10000CEF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48))
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = [*(a1 + 40) fileTransferProgress];
    v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    [v3 setObject:v4 forKey:*(a1 + 32)];

    goto LABEL_7;
  }

  if (v2)
  {
    v5 = [*(a1 + 40) fileTransferProgress];
    v6 = [v5 objectForKey:*(a1 + 32)];

    if (v6)
    {
      v3 = [*(a1 + 40) fileTransferProgress];
      [v3 removeObjectForKey:*(a1 + 32)];
LABEL_7:
    }
  }

LABEL_8:
  if (*(a1 + 32))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v8 = NSSFileTransferProgressChangedNotification;

    CFNotificationCenterPostNotification(DarwinNotifyCenter, v8, 0, 0, 0);
  }
}

void sub_10000FA58(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[NSString alloc] initWithData:v5 encoding:4];

  if (v6)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }
}

void sub_1000105E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_new();
  v4 = objc_retainBlock(*(a1 + 40));
  v6 = [v2 sendRequest:v3 expectsResponse:1 replyBlock:v4 replyDictionary:*(*(a1 + 32) + 256) sendTimeout:0 wantsAcknowledgement:0 bypassDuet:30.0];

  v5 = v6;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
    v5 = v6;
  }
}

void sub_100010B48(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = objc_retainBlock(*(a1 + 48));
  v6 = [v2 sendRequest:v3 expectsResponse:1 replyBlock:v4 replyDictionary:*(*(a1 + 32) + 264) sendTimeout:0 wantsAcknowledgement:0 bypassDuet:30.0];

  v5 = v6;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
    v5 = v6;
  }
}

id sub_100011D64(uint64_t a1)
{
  *(*(a1 + 32) + 20) = -1;
  v2 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.nanosystemsettings"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = *(a1 + 32);
  v7 = *(v5 + 24);
  v6 = *(v5 + 32);

  return [v6 setDelegate:? queue:?];
}

void sub_100012504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012528(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012610;
    block[3] = &unk_100034E88;
    block[4] = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

void sub_100012610(uint64_t a1)
{
  v2 = [*(a1 + 32) syncSession];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v3 didFetchInfoForApplication:v4 error:v5];
  }
}

void sub_100012AE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained syncSession];

  if (v1)
  {
    [WeakRetained appConduitTimerFired];
  }
}

void sub_100012D74(uint64_t a1)
{
  v2 = NSSLogForType();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received AppConduit notification", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 syncSession];

  if (v4)
  {
    [v3 checkIfAppConduitKnowsAboutVictoryWatchApp];
  }
}

void sub_10001309C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000130C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013198;
    block[3] = &unk_100034E18;
    block[4] = v7;
    v11 = a2;
    v10 = v5;
    dispatch_async(v8, block);
  }
}

void sub_100013198(uint64_t a1)
{
  v2 = [*(a1 + 32) syncSession];

  if (v2)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 32);

    [v5 didInstallVictoryAppOnWatchWithState:v3 error:v4];
  }
}

void *sub_100013AF0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[5])
  {
    return [result didUpdateVictoryAppInstallationStateOntoWatch:*(a1 + 40)];
  }

  return result;
}

void *sub_100013B80(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[5])
  {
    return [result checkForCompletionOfVictoryAppInstallationOnPhone];
  }

  return result;
}

void *sub_100013D24(void *result)
{
  if (*(result[4] + 40))
  {
    v1 = result;
    v2 = NSSLogForType();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Victory app completed installation on Phone", v3, 2u);
    }

    return [v1[4] checkForCompletionOfVictoryAppInstallationOnPhone];
  }

  return result;
}

void sub_100013F3C(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v2 = NSSLogForType();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Victory app uninstalled from Phone", v5, 2u);
    }

    v3 = *(a1 + 32);
    v4 = [NSError errorWithDomain:@"NSSErrorDomain" code:7 userInfo:0];
    [v3 reportSyncCompletionWithError:v4];
  }
}

uint64_t sub_1000141CC(uint64_t a1)
{
  qword_10003DD10 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100014624(id a1, NSError *a2)
{
  v2 = a2;
  v3 = NSSLogForType();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Added Notification request: %@", &v4, 0xCu);
  }
}

void sub_100014A40(id a1, NSError *a2)
{
  v2 = a2;
  v3 = NSSLogForType();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notification center did finish adding auto exit lpm notification with error: %@", &v4, 0xCu);
  }
}

void sub_100014CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100014CF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [objc_opt_class() serverProtocol];
  v2 = [NSXPCInterface interfaceWithProtocol:v4];
  v3 = qword_10003DD28;
  qword_10003DD28 = v2;
}

void sub_100014D68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 connectionHandlerLostConnection:v4];

    v3 = [v4 connection];
    [v3 setInvalidationHandler:0];

    WeakRetained = v4;
  }
}

uint64_t sub_100015340(uint64_t a1)
{
  qword_10003DD30 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100015484(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(HKSPSleepStore);
    [WeakRetained setSleepStore:v2];

    v3 = [WeakRetained sleepStore];
    [v3 addObserver:WeakRetained];

    v4 = [WeakRetained sleepStore];
    [WeakRetained _loadSleepSettingsFrom:v4];

    v5 = objc_alloc_init(NPSManager);
    [WeakRetained setNpsManager:v5];

    [WeakRetained _updateSettings];
    [WeakRetained _registerForSleepSettingsChanges];
    if ([WeakRetained lastKnownPowerLevelBeforeGoingOffCharger] >= 1)
    {
      v6 = NSSLogForType();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: Monitoring for power updates.", v7, 2u);
      }

      [WeakRetained _beginMonitoringForPowerUpdates];
      [WeakRetained _beginMonitoringOnWristState];
    }
  }
}

void sub_100015624(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  [*(a1 + 32) _updatePowerSourceDescription];
  if (*(*(a1 + 32) + 32))
  {
    v4 = NSSLogForType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 32);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: Processing battery state %@", &v9, 0xCu);
    }

    v6 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"Current Capacity"];
    v7 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"Is Charging"];
    if ([v7 BOOLValue])
    {
      v8 = NSSLogForType();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: Tyring to post notification for %@", &v9, 0xCu);
      }

      [*(a1 + 32) _postNotificationForPowerLevel:{objc_msgSend(v6, "integerValue")}];
      [*(a1 + 32) _beginMonitoringForPowerUpdates];
      [*(a1 + 32) _beginMonitoringOnWristState];
    }
  }
}

id sub_1000160FC(uint64_t a1)
{
  v2 = NSSLogForType();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: Power source notification received.", v4, 2u);
  }

  return [*(a1 + 32) _processOffChargerState];
}

void sub_1000161E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3 != -1)
  {
    v4 = notify_cancel(v3);
    if (v4)
    {
      v5 = v4;
      v6 = NSSLogForType();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor:Unregister failed (%lu).", &v8, 0xCu);
      }
    }

    *(*(a1 + 32) + 8) = -1;
    v2 = *(a1 + 32);
  }

  v7 = *(v2 + 24);
  *(v2 + 24) = 0;
}

id sub_1000169DC(uint64_t a1, void *a2)
{
  result = [a2 isEqualToString:@"com.apple.nanosystemsettingsd.contextstore-registration"];
  if (result)
  {
    v4 = NSSLogForType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: processing callback with identifier NSSSleepContextStoreRegistrationClientIdentifier", &v6, 0xCu);
    }

    return [*(a1 + 32) _loadSleepSettingsFrom:*(*(a1 + 32) + 48)];
  }

  return result;
}

void sub_10001725C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setPowerSourceDescription:0];
    [v3 _updatePowerSourceDescription];
    v4 = [v3 powerSourceDescription];

    if (v4)
    {
      if (*(a1 + 40))
      {
        v5 = [v3 powerSourceDescription];
        v6 = [v5 objectForKeyedSubscript:@"Is Charging"];

        LODWORD(v5) = [v6 BOOLValue];
        if (!v5)
        {
          v8 = NSSLogForType();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13) = 0;
            v10 = "Meadow not presenting timed notification the watch is not charging.";
            v11 = v8;
            v12 = 2;
            goto LABEL_11;
          }

LABEL_12:

          goto LABEL_13;
        }

        v7 = *(a1 + 40);
      }

      else
      {
        v7 = 0;
      }

      [v3 _postNotificationForLowPowerModeAutoDisabled:v7];
      v8 = NSSLogForType();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v13 = 134217984;
        v14 = v9;
        v10 = "Meadow showing the notification for type:%llu.";
        v11 = v8;
        v12 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v13, v12);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

void sub_100017550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100017574(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v4 = WeakRetained;
      [WeakRetained _removedFromChargerNotification];
      [v4 _stopMonitoringForPowerUpdates];
      [v4 _stopMonitoringOnWristState];
      WeakRetained = v4;
    }
  }
}

uint64_t sub_100017DEC()
{
  v0 = NSSLogForType();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "System language changed", v2, 2u);
  }

  return xpc_transaction_exit_clean();
}

void sub_100017E5C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v3, "Notification");
    v9 = NSSLogForType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = string;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received notification: %s", &v11, 0xCu);
    }

    if (string)
    {
      v10 = *(a1 + 32);
      v4 = [NSString stringWithUTF8String:string];
      [v10 handleDarwinNotification:v4];
      goto LABEL_11;
    }

    v4 = NSSLogForType();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v11) = 0;
    v5 = "Received unexepectedly NULL notification";
    v6 = v4;
    v7 = 2;
    goto LABEL_4;
  }

  v4 = NSSLogForType();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    v5 = "Received unexpected non-dictionary type event: (%@)";
    v6 = v4;
    v7 = 12;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v11, v7);
  }

LABEL_11:
}

void sub_10001800C(uint64_t a1)
{
  v2 = NSSLogForType();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received memory warning", v4, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *&qword_10003DD40 > 10.0)
  {
    [*(a1 + 32) handleMemoryPressureEvent];
  }

  qword_10003DD40 = *&Current;
}

void sub_1000182A0(id a1)
{
  v3 = _CFCopySystemVersionDictionary();
  v1 = [v3 objectForKey:_kCFSystemVersionBuildVersionKey];
  v2 = qword_10003DD50;
  qword_10003DD50 = v1;
}

void sub_100018448(uint64_t a1)
{
  v2 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.systemsettings"];
  v3 = qword_10003DD58;
  qword_10003DD58 = v2;

  v4 = *(a1 + 32);
  [objc_opt_class() associateProtobufHandlers:qword_10003DD58];
  v5 = qword_10003DD58;
  v6 = *(a1 + 32);
  v7 = [v6 idsQueue];
  [v5 addDelegate:v6 queue:v7];
}

void sub_100018604(uint64_t a1)
{
  v2 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.systemsettings.files"];
  v3 = qword_10003DD68;
  qword_10003DD68 = v2;

  v4 = qword_10003DD68;
  v5 = *(a1 + 32);
  v6 = [v5 idsQueue];
  [v4 addDelegate:v5 queue:v6];

  v7 = NSSLogForType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = qword_10003DD68;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DEBUG: first time this service is inited, do we have one? %@", &v8, 0xCu);
  }
}

uint64_t sub_10001A288(uint64_t a1)
{
  v2 = NSSLogForType();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Timed out waiting for reply to message (%@) in container (%@)", &v7, 0x16u);
  }

  dispatch_source_cancel(*(a1 + 48));
  [*(a1 + 56) removeObjectForKey:*(a1 + 32)];
  [*(a1 + 64) removeObjectForKey:*(a1 + 32)];
  v5 = *(a1 + 72);
  return (*(*(a1 + 80) + 16))();
}

uint64_t sub_10001A370(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001A388(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  NSSOSTransactionComplete();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_10001AEBC(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = NSSLogForType();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remote device successfully received Airplane Mode Mirroring message", &v11, 2u);
    }

    v5 = *(a1 + 32);
    [objc_opt_class() tellRadiosPrefsToEnableAirplaneMode:*(a1 + 65)];
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Airplane Mode Mirroring message (%@) failed to send with error: (%@)", &v11, 0x16u);
    }

    [*(a1 + 32) failedToMirrorAirplaneMode:*(a1 + 65)];
  }

  v8 = *(*(*(a1 + 56) + 8) + 40);
  NSSOSTransactionComplete();
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_10001B4B4(uint64_t a1)
{
  if ([*(a1 + 32) shouldSendAPMMessageToOppositeDevice:*(a1 + 48)])
  {
    [objc_opt_class() mirrorAirplaneSendTimeout];
    v3 = v2;
    v4 = objc_opt_new();
    [v4 setEnabled:*(a1 + 48)];
    v5 = *(a1 + 32);
    v26 = 0;
    v6 = [v5 sendMessage:v4 identifier:&v26 sendTimeout:0 wantsAcknowledgement:@"airplaneMode" queueOneIdentifier:1 overBluetoothOnly:v3];
    v7 = v26;
    v8 = *(a1 + 32);
    if (v6)
    {
      [v8 failedToMirrorAirplaneMode:*(a1 + 48)];
    }

    else
    {
      v12 = v8[11];
      v13 = [NSNumber numberWithBool:*(a1 + 48)];
      [v12 setObject:v13 forKey:v7];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v28 = 0x3032000000;
      v29 = sub_10001A370;
      v30 = sub_10001A380;
      v14 = [NSString stringWithFormat:@"%s-ids-timeout", "[NSSServer enableAirplaneMode:completionHandler:]_block_invoke"];
      v31 = NSSOSTransactionCreate();

      v15 = *(a1 + 32);
      v16 = *(v15 + 32);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001B798;
      block[3] = &unk_1000351F0;
      block[4] = v15;
      v17 = v7;
      v24 = v3;
      v25 = *(a1 + 48);
      v22 = v17;
      p_buf = &buf;
      dispatch_async(v16, block);

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    if (([*(a1 + 32) mirroringAirplaneMode] & 1) == 0)
    {
      v9 = NSSLogForType();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 48))
        {
          v10 = @"enable";
        }

        else
        {
          v10 = @"disable";
        }

        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not instructing opposite device to %@ airplane mode because mirroring is off", &buf, 0xCu);
      }
    }

    v11 = *(a1 + 32);
    [objc_opt_class() tellRadiosPrefsToEnableAirplaneMode:*(a1 + 48)];
  }

  v18 = *(*(*(a1 + 40) + 8) + 40);
  NSSOSTransactionComplete();
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = 0;
}

void sub_10001B798(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001B858;
  v8[3] = &unk_1000351C8;
  v8[4] = v2;
  v9 = *(a1 + 64);
  [v2 scheduleTimerForIdentifier:v3 requests:0 timeout:v8 timeoutHandler:v2[10] timers:@"airplane" utilityName:v4];
  v5 = *(*(*(a1 + 48) + 8) + 40);
  NSSOSTransactionComplete();
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_10001B858(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_10001A370;
  v7[4] = sub_10001A380;
  v2 = [NSString stringWithFormat:@"%s-ids-timeout-handler", "[NSSServer enableAirplaneMode:completionHandler:]_block_invoke_3"];
  v8 = NSSOSTransactionCreate();

  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B970;
  block[3] = &unk_1000351A0;
  v6 = *(a1 + 40);
  block[4] = v3;
  block[5] = v7;
  dispatch_async(v4, block);
  _Block_object_dispose(v7, 8);
}

void sub_10001B970(uint64_t a1)
{
  [*(a1 + 32) failedToMirrorAirplaneMode:*(a1 + 48)];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  NSSOSTransactionComplete();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_10001C2F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  [objc_opt_class() tellRadiosPrefsToEnableAirplaneMode:{objc_msgSend(*(a1 + 40), "enabled")}];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  NSSOSTransactionComplete();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_10001CDA4(uint64_t a1)
{
  v1 = [*(a1 + 32) stringByDeletingLastPathComponent];
  v2 = +[NSFileManager defaultManager];
  v4 = NSFileProtectionKey;
  v5 = NSFileProtectionNone;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:v3 error:0];
}

void sub_10001D6B0(uint64_t a1)
{
  v1 = [*(a1 + 32) stringByDeletingLastPathComponent];
  v2 = +[NSFileManager defaultManager];
  v4 = NSFileProtectionKey;
  v5 = NSFileProtectionNone;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:v3 error:0];
}

void sub_10001E800(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 UUIDString];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    [*(a1 + 40) addObject:v9];
  }
}

void sub_10001EE74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v28 = a3;
  v6 = NSSLogForType();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412290;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NSSWatchFaceCoordinator: selected face with identifier: %@", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v31;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = *(a1 + 32);
        v16 = [v14 faceIdentifier];
        v17 = [v16 UUIDString];
        LODWORD(v15) = [v15 isEqualToString:v17];

        if (v15)
        {
          v29 = [v8 indexOfObject:v14];
        }

        if ([v14 isActive])
        {
          v18 = [v14 faceIdentifier];
          v19 = [v18 UUIDString];

          v11 = v19;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = NSSLogForType();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 40);
    *buf = 138412546;
    v35 = v11;
    v36 = 2112;
    v37 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "NSSWatchFaceCoordinator: Active face identifier: %@ expectedCurrentFaceIdentifier: %@", buf, 0x16u);
  }

  v22 = *(a1 + 40);
  if (v22 && ([v22 isEqualToString:v11] & 1) == 0)
  {
    v24 = NSSLogForType();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "NSSWatchFaceCoordinator: Aborting switch back to previous face because face was switched manually";
      v26 = v24;
      v27 = 2;
      goto LABEL_30;
    }

LABEL_31:

    goto LABEL_32;
  }

  v23 = NSSLogForType();
  v24 = v23;
  if (v29 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10001F804(v24);
    }

    goto LABEL_31;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "NSSWatchFaceCoordinator: match found! setting face to %li", buf, 0xCu);
  }

  [*(*(a1 + 48) + 8) setSelectedFaceIndex:v29 suppressingCallbackToObserver:0];
  if (*(a1 + 56) == 1)
  {
    objc_storeStrong((*(a1 + 48) + 48), v11);
    [*(a1 + 48) _saveFocusFaces];
    v24 = NSSLogForType();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v11;
      v25 = "NSSWatchFaceCoordinator: Saved current face identifier: %@";
      v26 = v24;
      v27 = 12;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

LABEL_32:
}

void sub_10001F318(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

unint64_t sub_10001F358()
{
  v0 = type metadata accessor for ActivityUIDismissalPolicy();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F5DC(&qword_10003DCE8, &qword_100025A78);
  result = static Activity.activities.getter();
  v6 = result;
  if (!(result >> 62))
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_12:

    return v7 != 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v7 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v21 = 0x80;
  v8 = v7 - 1;
  if (v7 >= 1)
  {
    v14 = v7;
    v9 = 0;
    v10 = (v1 + 8);
    if ((v6 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    while (1)
    {
      v12 = *LiveActivityService.shared.unsafeMutableAddressor();

      LiveActivityText.init(title:subtitle:)();
      LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
      LiveActivityImageMap.init(imagePath:)();
      LiveActivitySetupState.init(textMap:imageMap:metadata:shouldSuppressAlert:)();
      memcpy(v15, v17, 0x1AAuLL);
      static ActivityUIDismissalPolicy.immediate.getter();
      (*(*v12 + 88))(v11, v15, v4);

      (*v10)(v4, v0);
      memcpy(v16, v15, 0x1AAuLL);
      sub_10001F624(v16);
      if (v8 == v9)
      {
        break;
      }

      ++v9;
      if ((v6 & 0xC000000000000001) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      v11 = *(v6 + 8 * v9 + 32);
    }

    v7 = v14;
    return v7 != 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001F5DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001F678(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 96);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_10001F698(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

uint64_t sub_10001F6AC(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 97);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_10001F6CC(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 97) = a2;
  }

  return result;
}

void sub_10001F77C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10001F318(&_mh_execute_header, v2, v3, "NSSWatchFaceCoordinator: Error syncing domain accessor: %@", v4, v5, v6, v7, 2u);
}