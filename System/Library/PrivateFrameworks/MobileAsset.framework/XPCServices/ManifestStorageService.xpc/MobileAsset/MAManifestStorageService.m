@interface MAManifestStorageService
- (BOOL)_assetTypeSupported:(id)a3 manifestType:(unint64_t)a4;
- (BOOL)_parseSelector:(id)a3 assetType:(id *)a4 specifier:(id *)a5;
- (BOOL)_writeManifest:(id)a3 destination:(id)a4 error:(id *)a5;
- (MAManifestStorageService)init;
- (NSString)repositoryPath;
- (id)_errorWithCode:(unint64_t)a3 underlyingError:(id)a4;
- (id)_errorWithCode:(unint64_t)a3 underlyingPOSIXError:(int)a4;
- (id)_manifestPathForAssetType:(id)a3 specifier:(id)a4 stage:(BOOL)a5;
- (id)_normalizedIdentifier:(id)a3;
- (id)commitStagedManifestsForSelectors:(id)a3;
- (id)invalidateManifestForAssetType:(id)a3 specifier:(id)a4;
- (int)__authenticateLiveManifest:(id)a3;
- (int)__flashManifest:(id)a3;
- (int)_authenticatePlist:(id)a3 manifest:(id)a4 manifestType:(unint64_t)a5 result:(id *)a6;
- (int)_verifyManifest:(id)a3 manifestType:(unint64_t)a4;
- (void)_logBase64Data:(id)a3 description:(id)a4;
- (void)commitStagedManifestsForSelectors:(id)a3 completion:(id)a4;
- (void)invalidateManifestForAssetType:(id)a3 specifier:(id)a4 completion:(id)a5;
- (void)storeManifest:(id)a3 manifestType:(unint64_t)a4 infoPlist:(id)a5 stage:(BOOL)a6 completion:(id)a7;
@end

@implementation MAManifestStorageService

- (MAManifestStorageService)init
{
  v6.receiver = self;
  v6.super_class = MAManifestStorageService;
  v2 = [(MAManifestStorageService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Manifest Storage Queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (NSString)repositoryPath
{
  v2 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  v3 = [v2 stringByAppendingPathComponent:@"manifests"];

  return v3;
}

- (void)storeManifest:(id)a3 manifestType:(unint64_t)a4 infoPlist:(id)a5 stage:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = [(MAManifestStorageService *)self queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100002124;
  v19[3] = &unk_100008338;
  v22 = v14;
  v23 = a4;
  v24 = a6;
  v19[4] = self;
  v20 = v12;
  v21 = v13;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(v15, v19);
}

- (void)commitStagedManifestsForSelectors:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MAManifestStorageService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000236C;
  block[3] = &unk_100008360;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)invalidateManifestForAssetType:(id)a3 specifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MAManifestStorageService *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002598;
  v15[3] = &unk_100008388;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (int)_verifyManifest:(id)a3 manifestType:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [(MAManifestStorageService *)self __authenticateLiveManifest:v6];
  }

  else
  {
    if (a4 != 1)
    {
      v8 = 45;
      goto LABEL_7;
    }

    v7 = [(MAManifestStorageService *)self __flashManifest:v6];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

- (int)__flashManifest:(id)a3
{
  v4 = a3;
  v5 = _MAClientLog(@"Manifest");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Flashing manifest", buf, 2u);
  }

  if (image4_environment_new())
  {
    [v4 bytes];
    [v4 length];
    v6 = image4_environment_flash();
    image4_environment_destroy();
    v7 = _MAClientLog(@"Manifest");
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = strerror(v6);
        *buf = 67109378;
        v13 = v6;
        v14 = 2082;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to flash manifest: %d (%{public}s)", buf, 0x12u);
      }

      [(MAManifestStorageService *)self _logBase64Data:v4 description:@"failing manifest"];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully flashed manifest", buf, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    v10 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to instantiate environment", buf, 2u);
    }

    v6 = 12;
  }

  return v6;
}

- (int)__authenticateLiveManifest:(id)a3
{
  v4 = a3;
  v5 = _MAClientLog(@"Manifest");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Authenticating live manifest", buf, 2u);
  }

  if (image4_environment_new())
  {
    *buf = xmmword_1000083A8;
    v12 = *&off_1000083B8;
    v13 = xmmword_1000083C8;
    image4_environment_set_callbacks();
    [v4 bytes];
    [v4 length];
    image4_trust_new();
    image4_trust_evaluate();
    image4_trust_destroy();
    image4_environment_destroy();
    v6 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = strerror(1);
      *v15 = 67109378;
      v16 = 1;
      v17 = 2082;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Live manifest trust evaluation failed: %d (%{public}s)", v15, 0x12u);
    }

    [(MAManifestStorageService *)self _logBase64Data:v4 description:@"failing manifest"];
    v8 = 1;
  }

  else
  {
    v9 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to instantiate environment", buf, 2u);
    }

    v8 = 12;
  }

  return v8;
}

- (int)_authenticatePlist:(id)a3 manifest:(id)a4 manifestType:(unint64_t)a5 result:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = _MAClientLog(@"Manifest");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Authenticating info plist", buf, 2u);
  }

  if (image4_environment_new())
  {
    v11 = v9;
    [v9 bytes];
    [v9 length];
    image4_trust_new();
    v12 = v8;
    [v8 bytes];
    [v8 length];
    image4_trust_set_payload();
    image4_trust_evaluate();
    image4_trust_destroy();
    image4_environment_destroy();
    v13 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = strerror(1);
      *buf = 67109378;
      v19[0] = 1;
      LOWORD(v19[1]) = 2082;
      *(&v19[1] + 2) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Plist trust evaluation failed: %d (%{public}s)", buf, 0x12u);
    }

    [(MAManifestStorageService *)self _logBase64Data:v9 description:@"failing manifest"];
    [(MAManifestStorageService *)self _logBase64Data:v8 description:@"failing payload"];
    v15 = 1;
  }

  else
  {
    v16 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to instantiate environment", buf, 2u);
    }

    v15 = 12;
  }

  return v15;
}

- (BOOL)_assetTypeSupported:(id)a3 manifestType:(unint64_t)a4
{
  v5 = a3;
  v6 = +[MASecureMobileAssetTypes sharedInstance];
  if (([v6 supportsDarwin:v5] & 1) == 0)
  {
    v8 = _MAClientLog(@"Manifest");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      v7 = 0;
      goto LABEL_9;
    }

    v11 = 138543362;
    v12 = v5;
    v9 = "Asset type does not support Darwin: %{public}@";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v9, &v11, 0xCu);
    goto LABEL_8;
  }

  if (a4 == 2 && ([v6 supportsLoadableTrustCache:v5] & 1) == 0)
  {
    v8 = _MAClientLog(@"Manifest");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v11 = 138543362;
    v12 = v5;
    v9 = "Asset type does not support code: %{public}@";
    goto LABEL_7;
  }

  v7 = 1;
LABEL_9:

  return v7;
}

- (BOOL)_writeManifest:(id)a3 destination:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[NSFileManager defaultManager];
  v10 = [v7 stringByDeletingLastPathComponent];
  [v9 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:0];
  [v9 removeItemAtPath:v7 error:0];
  v11 = [v8 writeToFile:v7 options:0 error:a5];

  if (v11)
  {
    v12 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Wrote manifest to %{public}@", &v14, 0xCu);
    }
  }

  return v11;
}

- (id)commitStagedManifestsForSelectors:(id)a3
{
  v49 = a3;
  v4 = [v49 count];
  v44 = malloc_type_calloc(v4, 0x18uLL, 0x1050040A9DC7973uLL);
  v51 = +[NSFileManager defaultManager];
  if (!v4)
  {
LABEL_41:
    v45 = 0;
    goto LABEL_42;
  }

  v46 = v4;
  v6 = 0;
  v7 = v44 + 17;
  *&v5 = 138543362;
  v43 = v5;
  v50 = self;
  do
  {
    v8 = [v49 objectAtIndexedSubscript:{v6, v43}];
    v53 = 0;
    v54 = 0;
    v9 = [(MAManifestStorageService *)self _parseSelector:v8 assetType:&v54 specifier:&v53];
    v10 = v54;
    v11 = v53;
    if ((v9 & 1) == 0)
    {
      v41 = _MAClientLog(@"Manifest");
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = v43;
        v56 = v8;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Selector missing type or specifier: %{public}@", buf, 0xCu);
      }

      v45 = [(MAManifestStorageService *)self _errorWithCode:10 underlyingPOSIXError:22];

      goto LABEL_42;
    }

    v12 = [(MAManifestStorageService *)self _manifestPathForAssetType:v10 specifier:v11 stage:1];
    v13 = [(MAManifestStorageService *)self _manifestPathForAssetType:v10 specifier:v11 stage:0];
    if ([v51 fileExistsAtPath:v12])
    {
      v14 = [v13 stringByDeletingLastPathComponent];
      if ([v51 fileExistsAtPath:v14])
      {
        v48 = 0;
      }

      else
      {
        v52 = 0;
        v17 = [v51 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v52];
        v48 = v52;
        if ((v17 & 1) == 0)
        {
          v23 = _MAClientLog(@"Manifest");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = v43;
            v56 = v48;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to create containing directory: %{public}@", buf, 0xCu);
          }

          v45 = [(MAManifestStorageService *)v50 _errorWithCode:10 underlyingError:v48];
          v16 = 0;
          goto LABEL_15;
        }
      }

      v18 = v12;
      v19 = [v12 fileSystemRepresentation];
      v20 = v13;
      v21 = [v13 fileSystemRepresentation];
      v22 = [v51 fileExistsAtPath:v13];
      *(v7 - 17) = v19;
      *(v7 - 9) = v21;
      *(v7 - 1) = v22;
      *v7 = 0;
      v16 = 1;
      *(v7 + 3) = 0;
LABEL_15:

      goto LABEL_16;
    }

    v15 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = v43;
      v56 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Staged manifest does not exist: %{public}@", buf, 0xCu);
    }

    v45 = [(MAManifestStorageService *)v50 _errorWithCode:10 underlyingPOSIXError:2];
    v16 = 0;
LABEL_16:

    if ((v16 & 1) == 0)
    {
      goto LABEL_42;
    }

    ++v6;
    v7 += 6;
    self = v50;
  }

  while (v46 != v6);
  v25 = v44 + 16;
  v26 = v46;
  do
  {
    v27 = *(v25 - 2);
    v28 = *(v25 - 1);
    if (*v25)
    {
      if (!renamex_np(v27, v28, 2u))
      {
        goto LABEL_25;
      }
    }

    else
    {
      rename(v27, v28, v24);
      if (!v29)
      {
        goto LABEL_25;
      }
    }

    if (*__error())
    {
      __error();
    }

LABEL_25:
    v25 += 24;
    --v26;
  }

  while (v26);
  v30 = 0;
  v31 = -v46;
  v32 = 1;
  while (2)
  {
    v47 = v32;
    v33 = &v44[24 * v30++];
    while (1)
    {
      v35 = *v33;
      v34 = *(v33 + 1);
      v36 = *(v33 + 5);
      v37 = [NSString stringWithUTF8String:*v33];
      [v51 removeItemAtPath:v37 error:0];

      if (v36)
      {
        break;
      }

      v38 = _MAClientLog(@"Manifest");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v56 = v35;
        v57 = 2082;
        v58 = v34;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Commit %{public}s -> %{public}s succeeded", buf, 0x16u);
      }

      v33 += 24;
      ++v30;
      if (v31 + v30 == 1)
      {
        if (v47)
        {
          goto LABEL_41;
        }

        goto LABEL_45;
      }
    }

    v39 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = strerror(v36);
      *buf = 136446978;
      v56 = v35;
      v57 = 2082;
      v58 = v34;
      v59 = 1024;
      v60 = v36;
      v61 = 2082;
      v62 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Commit %{public}s -> %{public}s failed: %d %{public}s", buf, 0x26u);
    }

    v32 = 0;
    if (v31 + v30)
    {
      continue;
    }

    break;
  }

LABEL_45:
  v45 = [(MAManifestStorageService *)v50 _errorWithCode:11];
LABEL_42:

  free(v44);

  return v45;
}

- (id)invalidateManifestForAssetType:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(MAManifestStorageService *)self _manifestPathForAssetType:v6 specifier:v7 stage:0];
    v10 = [v9 stringByDeletingLastPathComponent];

    v11 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing %{public}@", buf, 0xCu);
    }

    v12 = +[NSFileManager defaultManager];
    v23 = 0;
    v13 = [v12 removeItemAtPath:v10 error:&v23];
    v14 = v23;

    v15 = 0;
    if (v13)
    {
      goto LABEL_17;
    }

    v16 = [v14 userInfo];
    v17 = [v16 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v18 = [v17 domain];
    if ([v18 isEqualToString:NSPOSIXErrorDomain])
    {
      v19 = [v17 code];

      if (v19 == 2)
      {
        v20 = _MAClientLog(@"Manifest");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v25 = v10;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Ignoring ENOENT for %{public}@", buf, 0xCu);
        }

        v15 = 0;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v15 = [(MAManifestStorageService *)self _errorWithCode:8 underlyingError:v14];
LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  v21 = _MAClientLog(@"Manifest");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v25 = v6;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Missing asset type (%{public}@) or specifier (%{public}@)", buf, 0x16u);
  }

  v15 = [(MAManifestStorageService *)self _errorWithCode:8 underlyingPOSIXError:22];
LABEL_18:

  return v15;
}

- (id)_manifestPathForAssetType:(id)a3 specifier:(id)a4 stage:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(MAManifestStorageService *)self repositoryPath];
  v11 = v10;
  if (v5)
  {
    v12 = [v10 stringByAppendingPathComponent:@"staged"];

    v11 = v12;
  }

  v13 = [(MAManifestStorageService *)self _normalizedIdentifier:v8];
  v14 = [v11 stringByAppendingPathComponent:v13];

  v15 = [(MAManifestStorageService *)self _normalizedIdentifier:v9];

  v16 = [v14 stringByAppendingPathComponent:v15];

  v17 = [v16 stringByAppendingPathComponent:@"SecureMobileAssetCryptex1Ticket.img4"];

  return v17;
}

- (id)_normalizedIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 stringByReplacingOccurrencesOfString:@"." withString:@"_" options:2 range:{0, objc_msgSend(v3, "length")}];

  return v4;
}

- (BOOL)_parseSelector:(id)a3 assetType:(id *)a4 specifier:(id *)a5
{
  v7 = a3;
  v8 = [v7 componentsSeparatedByString:@":"];
  if ([v8 count] == 2)
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v8 objectAtIndexedSubscript:1];
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = !v12;
    if (v12)
    {
      v16 = _MAClientLog(@"Manifest");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = 138543362;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid selector: %{public}@", &v18, 0xCu);
      }
    }

    else
    {
      v14 = v9;
      *a4 = v9;
      v15 = v11;
      *a5 = v11;
    }
  }

  else
  {
    v9 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543362;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid selector: %{public}@", &v18, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (void)_logBase64Data:(id)a3 description:(id)a4
{
  v5 = a4;
  v6 = [a3 base64EncodedStringWithOptions:0];
  v7 = _MAClientLog(@"Manifest");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@:<<<<<<<<<<\n%{public}@\n%{public}@:>>>>>>>>>>", &v8, 0x20u);
  }
}

- (id)_errorWithCode:(unint64_t)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v10 = NSUnderlyingErrorKey;
    v11 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [NSError errorWithDomain:@"ManifestStorageServiceErrorDomain" code:a3 userInfo:v7];

  return v8;
}

- (id)_errorWithCode:(unint64_t)a3 underlyingPOSIXError:(int)a4
{
  v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:a4 userInfo:0];
  v7 = [(MAManifestStorageService *)self _errorWithCode:a3 underlyingError:v6];

  return v7;
}

@end