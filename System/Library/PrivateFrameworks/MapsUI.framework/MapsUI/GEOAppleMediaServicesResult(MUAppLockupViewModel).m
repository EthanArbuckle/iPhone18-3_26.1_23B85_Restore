@interface GEOAppleMediaServicesResult(MUAppLockupViewModel)
- (id)actionButtonText;
- (void)loadAppArtworkWithScale:()MUAppLockupViewModel size:completion:;
@end

@implementation GEOAppleMediaServicesResult(MUAppLockupViewModel)

- (void)loadAppArtworkWithScale:()MUAppLockupViewModel size:completion:
{
  v10 = a6;
  v11 = objc_alloc_init(MUAppLockupImageMetrics);
  [(MUAppLockupImageMetrics *)v11 setFrameSize:a3, a4];
  [(MUAppLockupImageMetrics *)v11 setScale:a2];
  [(MUAppLockupImageMetrics *)v11 setVariant:1];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__12821;
  v23 = __Block_byref_object_dispose__12822;
  v12 = [MUAppLockupImage alloc];
  v13 = [a1 artworkURL];
  v24 = [(MUAppLockupImage *)v12 initWithRemoteURL:v13 metrics:v11];

  v14 = v20[5];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__GEOAppleMediaServicesResult_MUAppLockupViewModel__loadAppArtworkWithScale_size_completion___block_invoke;
  v16[3] = &unk_1E8219870;
  v15 = v10;
  v17 = v15;
  v18 = &v19;
  [v14 loadImageWithCompletion:v16];

  _Block_object_dispose(&v19, 8);
}

- (id)actionButtonText
{
  if ([a1 isInstalled])
  {
    v1 = @"OPEN [Placecard]";
  }

  else
  {
    v1 = @"GET [Placecard]";
  }

  v2 = _MULocalizedStringFromThisBundle(v1);

  return v2;
}

@end