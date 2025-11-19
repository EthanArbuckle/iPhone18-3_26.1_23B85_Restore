int main(int argc, const char **argv, const char **envp)
{
  v3 = ICNotesAppBundleIdentifier();
  v23 = 0;
  v4 = [LSBundleRecord bundleRecordWithApplicationIdentifier:v3 error:&v23];
  v5 = v23;

  if (v5)
  {
  }

  v6 = [v4 dataContainerURL];
  v7 = [v6 URLByAppendingPathComponent:@"tmp" isDirectory:1];
  if (!v7)
  {
    v10 = 0;
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v8 = +[NSFileManager defaultManager];
  v22 = 0;
  v9 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v22];
  v10 = v22;

  if ((v9 & 1) == 0)
  {
    NSLog(@"Error creating temporary directory: %@", v10);
  }

  if (v6)
  {
LABEL_9:
    v11 = [v6 path];
    v12 = setenv("HOME", [v11 fileSystemRepresentation], 1);

    if (v12)
    {
      v13 = __error();
      v14 = strerror(*v13);
      NSLog(@"setenv HOME %@ failed because %s", v6, v14);
    }
  }

LABEL_11:
  if (v7)
  {
    v15 = [v7 path];
    v16 = setenv("TMPDIR", [v15 fileSystemRepresentation], 1);

    if (v16)
    {
      v17 = __error();
      v18 = strerror(*v17);
      NSLog(@"setenv TMPDIR %@ failed because %s", v7, v18);
    }
  }

  v19 = objc_opt_new();
  v20 = +[NSXPCListener serviceListener];
  [v20 setDelegate:v19];
  [v20 resume];

  return 0;
}

void sub_100001304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001328(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001340(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(WebPreferences);
  [v3 setDefaultFontSize:12];
  [v3 setDefaultFixedFontSize:12];
  [v3 setUserStyleSheetEnabled:0];
  [v3 setJavaEnabled:0];
  [v3 setJavaScriptEnabled:0];
  [v3 setJavaScriptCanOpenWindowsAutomatically:0];
  [v3 setPlugInsEnabled:0];
  [v3 setAllowsAnimatedImages:0];
  [v3 setAllowsAnimatedImageLooping:0];
  [v3 setLoadsImagesAutomatically:0];
  [v3 setAutosaves:0];
  [v3 setUsesPageCache:0];
  [v3 setStorageTrackerEnabled:0];
  [v3 setOfflineWebApplicationCacheEnabled:0];
  [v3 setLocalStorageEnabled:0];
  [v3 setDatabasesEnabled:0];
  [v3 setWebAudioEnabled:0];
  [v3 setAcceleratedDrawingEnabled:0];
  [v3 setAcceleratedCompositingEnabled:0];
  [v3 setCanvasUsesAcceleratedDrawing:0];
  [v3 setRequestAnimationFrameEnabled:0];
  [v3 setCacheModel:0];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"WebPreferences"];
  v4 = *(a1 + 40);
  if (v4)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:@"BaseURL"];
  }

  v5 = [NSAttributedString alloc];
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 72) + 8);
  obj = *(v8 + 40);
  v9 = [v5 initWithData:v6 options:v7 documentAttributes:0 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (*(a1 + 56))
  {
    v12 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v12 encodeObject:*(*(*(a1 + 64) + 8) + 40) forKey:NSKeyedArchiveRootObjectKey];
    v13 = [v12 encodedData];
    v14 = *(*(*(a1 + 72) + 8) + 40);
    (*(*(a1 + 56) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}