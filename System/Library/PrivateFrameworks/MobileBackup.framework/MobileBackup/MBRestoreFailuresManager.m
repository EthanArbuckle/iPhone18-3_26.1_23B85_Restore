@interface MBRestoreFailuresManager
+ (id)sharedManager;
- (BOOL)recordRestoreFailure:(id)a3 persona:(id)a4 error:(id *)a5;
- (id)_iconDataForRestoreFailure:(id)a3 persona:(id)a4 error:(id *)a5;
- (id)restoreFailuresForDataClass:(id)a3 assetType:(id)a4 range:(_NSRange)a5;
- (unint64_t)countOfRestoreFailuresForDataclass:(id)a3 assetType:(id)a4;
@end

@implementation MBRestoreFailuresManager

+ (id)sharedManager
{
  if (qword_100421B98 != -1)
  {
    dispatch_once(&qword_100421B98, &stru_1003C2638);
  }

  return qword_100421B90;
}

- (id)_iconDataForRestoreFailure:(id)a3 persona:(id)a4 error:(id *)a5
{
  v19 = 0;
  v7 = -[MBMobileInstallation userAppWithBundleID:placeholder:persona:error:](objc_alloc_init(MBMobileInstallation), "userAppWithBundleID:placeholder:persona:error:", [a3 identifier], 1, a4, &v19);
  if (!v7)
  {
    if (!a5)
    {
      return 0;
    }

    v15 = +[MBError errorWithCode:error:format:](MBError, "errorWithCode:error:format:", 1, v19, @"Could not lookup installation info for '%@'", [a3 identifier]);
LABEL_13:
    v17 = v15;
    result = 0;
    *a5 = v17;
    return result;
  }

  v8 = v7;
  if (![v7 objectForKeyedSubscript:{objc_msgSend(a3, "identifier")}])
  {
    if (!a5)
    {
      return 0;
    }

    v18 = [a3 identifier];
    v16 = @"Could not find installation info for '%@'";
    goto LABEL_12;
  }

  v9 = [objc_msgSend(v8 objectForKeyedSubscript:{objc_msgSend(a3, "identifier")), "objectForKeyedSubscript:", @"Path"}];
  if (!v9)
  {
    if (!a5)
    {
      return 0;
    }

    v18 = [a3 identifier];
    v16 = @"Could not find bundle path information for '%@'";
LABEL_12:
    v15 = [MBError errorWithCode:4 format:v16, v18];
    goto LABEL_13;
  }

  v10 = CFBundleCreate(0, [NSURL fileURLWithPath:v9]);
  if (v10)
  {
    v11 = v10;
    v12 = LICreateIconForBundle();
    v13 = LICreateCachedUncompressedDataFromImage();
    CFRelease(v12);
    CFRelease(v11);
    return v13;
  }

  if (a5)
  {
    v15 = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 1, @"Could not load bundle for app '%@'", [a3 identifier]);
    goto LABEL_13;
  }

  return 0;
}

- (BOOL)recordRestoreFailure:(id)a3 persona:(id)a4 error:(id *)a5
{
  if (![a3 identifier])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"MBRestoreFailuresManager.m" description:75, @"identifier must not be nil"];
  }

  if (![a3 dataclass])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"MBRestoreFailuresManager.m" description:76, @"dataclass must not be nil"];
  }

  if (![objc_msgSend(a3 "dataclass")])
  {
    goto LABEL_10;
  }

  v14 = 0;
  [a3 setIcon:{-[MBRestoreFailuresManager _iconDataForRestoreFailure:persona:error:](self, "_iconDataForRestoreFailure:persona:error:", a3, a4, &v14)}];
  v10 = [a3 icon];
  if (!a5 || v10)
  {
    if (!v10)
    {
      return v10;
    }

LABEL_10:
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10025C880;
    v13[3] = &unk_1003C2180;
    v13[4] = a3;
    MBPerformWithCache(v13);
    LOBYTE(v10) = 1;
    return v10;
  }

  v11 = +[MBError errorWithCode:error:format:](MBError, "errorWithCode:error:format:", 4, v14, @"Could not retrieve icon for asset '%@'", [a3 identifier]);
  LOBYTE(v10) = 0;
  *a5 = v11;
  return v10;
}

- (id)restoreFailuresForDataClass:(id)a3 assetType:(id)a4 range:(_NSRange)a5
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_10025C974;
  v13 = sub_10025C984;
  v14 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025C990;
  v7[3] = &unk_1003C2660;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = &v9;
  v8 = a5;
  MBPerformWithCache(v7);
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (unint64_t)countOfRestoreFailuresForDataclass:(id)a3 assetType:(id)a4
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10025CA8C;
  v6[3] = &unk_1003C2688;
  v6[5] = a4;
  v6[6] = &v7;
  v6[4] = a3;
  MBPerformWithCache(v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

@end