id _MAClientLog(void *a1)
{
  v1 = a1;
  if (qword_10000CB58 != -1)
  {
    sub_100004658();
  }

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"DEFAULT";
  }

  v3 = [qword_10000CB50 objectForKey:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [qword_10000CB50 objectForKey:@"DEFAULT"];
  }

  v6 = v5;

  return v6;
}

void sub_100000FA0(id a1)
{
  v1 = +[SUCore sharedCore];
  [v1 useDomain:@"com.apple.MobileAsset"];

  v15[0] = @"DEFAULT";
  v14 = os_log_create("com.apple.MobileAsset", [@"DEFAULT" UTF8String]);
  v16[0] = v14;
  v15[1] = @"V2";
  v2 = os_log_create("com.apple.MobileAsset", [@"V2" UTF8String]);
  v16[1] = v2;
  v15[2] = @"Brain";
  v3 = os_log_create("com.apple.MobileAsset", [@"Brain" UTF8String]);
  v16[2] = v3;
  v15[3] = @"SSO";
  v4 = os_log_create("com.apple.MobileAsset", [@"SSO" UTF8String]);
  v16[3] = v4;
  v15[4] = @"PushNotification";
  v5 = os_log_create("com.apple.MobileAsset", [@"PushNotification" UTF8String]);
  v16[4] = v5;
  v15[5] = @"SecureMA";
  v6 = os_log_create("com.apple.MobileAsset", [@"SecureMA" UTF8String]);
  v16[5] = v6;
  v15[6] = @"Manifest";
  v7 = os_log_create("com.apple.MobileAsset", [@"Manifest" UTF8String]);
  v16[6] = v7;
  v15[7] = @"KeyManager";
  v8 = os_log_create("com.apple.MobileAsset", [@"KeyManager" UTF8String]);
  v16[7] = v8;
  v15[8] = @"Auto";
  v9 = os_log_create("com.apple.MobileAsset", [@"Auto" UTF8String]);
  v16[8] = v9;
  v15[9] = @"AutoSet";
  v10 = os_log_create("com.apple.MobileAsset", [@"AutoSet" UTF8String]);
  v16[9] = v10;
  v15[10] = @"AutoStager";
  v11 = os_log_create("com.apple.MobileAsset", [@"AutoStager" UTF8String]);
  v16[10] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:11];
  v13 = qword_10000CB50;
  qword_10000CB50 = v12;
}

id getRepositoryPath(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v3 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446210;
      v6 = "getRepositoryPath";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "ERROR: Invalid string passed to %{public}s", &v5, 0xCu);
    }

    v2 = 0;
  }

  return v2;
}

void sub_100001368(id a1)
{
  qword_10000CB68 = objc_alloc_init(MASecureMobileAssetTypes);

  _objc_release_x1();
}

void sub_100001BA4(uint64_t a1)
{
  v2 = _MAClientLog(@"Manifest");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client disconnected: %{public}@", &v4, 0xCu);
  }
}

void sub_100001C54(uint64_t a1)
{
  v2 = _MAClientLog(@"Manifest");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted: %{public}@", &v4, 0xCu);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = _MAClientLog(@"Manifest");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446722;
    v9 = "1";
    v10 = 2082;
    v11 = "Oct 22 2025";
    v12 = 2082;
    v13 = "21:21:29";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting with MobileAsset-%{public}s (built %{public}s %{public}s)", &v8, 0x20u);
  }

  v5 = objc_alloc_init(MAManifestStorageServiceDelegate);
  v6 = +[NSXPCListener serviceListener];
  [v6 setDelegate:v5];
  [v6 resume];

  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_100002124(uint64_t a1)
{
  v2 = _MAClientLog(@"Manifest");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 72);
    if (*(a1 + 64) == 1)
    {
      v4 = "classic";
    }

    else
    {
      v4 = "code";
    }

    v7 = 136315394;
    v8 = v4;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Storing manifest (type = %s, stage = %i)", &v7, 0x12u);
  }

  v5 = [*(a1 + 32) storeManifest:*(a1 + 40) manifestType:*(a1 + 64) infoPlist:*(a1 + 48) stage:*(a1 + 72)];
  if (v5)
  {
    v6 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Store failed: %{public}@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10000236C(uint64_t a1)
{
  v2 = _MAClientLog(@"Manifest");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Committing staged manifests", &v5, 2u);
  }

  v3 = [*(a1 + 32) commitStagedManifestsForSelectors:*(a1 + 40)];
  if (v3)
  {
    v4 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Commit failed: %{public}@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100002598(uint64_t a1)
{
  v2 = _MAClientLog(@"Manifest");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidating manifest for %{public}@:%{public}@", &v7, 0x16u);
  }

  v5 = [*(a1 + 48) invalidateManifestForAssetType:*(a1 + 32) specifier:*(a1 + 40)];
  if (v5)
  {
    v6 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Remove failed: %{public}@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 56) + 16))();
}

uint64_t sub_100002F60(uint64_t a1, uint64_t a2, void *a3)
{
  if (image4_environment_new())
  {
    image4_environment_set_nonce_domain();
    memset(__src, 0, sizeof(__src));
    v4 = image4_environment_copy_nonce_digest();
    image4_environment_destroy();
    if (!v4)
    {
      *a3 = 0;
    }
  }

  else
  {
    v5 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__src[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to instantiate environment", __src, 2u);
    }

    return 12;
  }

  return v4;
}

void sub_1000033D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a5 = a4;
  if (!a4)
  {
    v6 = [NSData dataWithBytes:a2 length:a3];
    v11 = 0;
    v7 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:&v11];
    v8 = v11;
    v9 = *(a5 + 8);
    *(a5 + 8) = v7;

    if (!*(a5 + 8))
    {
      v10 = _MAClientLog(@"Manifest");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to deserialize info plist: %{public}@", buf, 0xCu);
      }

      *a5 = 79;
    }
  }
}