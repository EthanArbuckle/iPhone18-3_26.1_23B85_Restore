@interface MediaCaptureStatusBarManager
+ (MediaCaptureStatusBarManager)sharedManager;
- (id)statusString;
- (void)activateApp;
- (void)browserControllerDidEnterBackground:(id)a3;
- (void)browserControllerWillEnterForeground:(id)a3;
- (void)browserControllerWillEnterTabView:(id)a3;
- (void)browserControllerWillExitTabView:(id)a3;
- (void)tabDidBecomeActive:(id)a3;
@end

@implementation MediaCaptureStatusBarManager

+ (MediaCaptureStatusBarManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[MediaCaptureStatusBarManager sharedManager];
  }

  v3 = sharedManager_sharedInstance_0;

  return v3;
}

void __45__MediaCaptureStatusBarManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MediaCaptureStatusBarManager);
  v1 = sharedManager_sharedInstance_0;
  sharedManager_sharedInstance_0 = v0;
}

- (void)tabDidBecomeActive:(id)a3
{
  v12 = a3;
  v4 = [(SFMediaCaptureStatusBarManager *)self _recordingDocument];
  if (v4)
  {
    v5 = [v12 browserController];
    v6 = [v5 tabCollectionViewProvider];
    v7 = [v6 tabThumbnailCollectionView];

    v8 = v7;
    if ([v8 presentationState] == 1)
    {
    }

    else
    {
      v9 = [v8 presentationState];

      if (v9 != 2)
      {
        v10 = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
        v11 = [v10 browserController];

        if (v5 == v11)
        {
          if (v4 == v12 && [(SFMediaCaptureStatusBarManager *)self _hasStatusBarOverride])
          {
            [(SFMediaCaptureStatusBarManager *)self _releaseStatusBarOverride];
          }

          else if (![(SFMediaCaptureStatusBarManager *)self _hasStatusBarOverride])
          {
            [(SFMediaCaptureStatusBarManager *)self _acquireStatusBarOverride];
          }
        }
      }
    }
  }
}

- (void)browserControllerWillEnterTabView:(id)a3
{
  v8 = a3;
  v4 = [(SFMediaCaptureStatusBarManager *)self _recordingDocument];
  if (v4 && [(SFMediaCaptureStatusBarManager *)self _hasStatusBarOverride])
  {
    v5 = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
    v6 = [v5 browserController];

    v7 = v8;
    if (v6 != v8)
    {
      goto LABEL_7;
    }

    [(SFMediaCaptureStatusBarManager *)self _releaseStatusBarOverride];
  }

  else
  {
  }

  v7 = v8;
LABEL_7:
}

- (void)browserControllerWillExitTabView:(id)a3
{
  v9 = a3;
  v4 = [(SFMediaCaptureStatusBarManager *)self _recordingDocument];
  if (!v4 || [(SFMediaCaptureStatusBarManager *)self _hasStatusBarOverride])
  {
    goto LABEL_5;
  }

  v5 = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
  v6 = [v5 browserController];
  if (v6 != v9)
  {

LABEL_5:
    goto LABEL_6;
  }

  v7 = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
  v8 = [v7 isActive];

  if ((v8 & 1) == 0)
  {
    [(SFMediaCaptureStatusBarManager *)self _acquireStatusBarOverride];
  }

LABEL_6:
}

- (void)browserControllerDidEnterBackground:(id)a3
{
  v11 = a3;
  v4 = [(SFMediaCaptureStatusBarManager *)self _recordingDocument];
  if (v4)
  {
    v5 = v4;
    v6 = [(SFMediaCaptureStatusBarManager *)self _hasStatusBarOverride];

    if (!v6)
    {
      v7 = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
      v8 = [v7 ownerUUID];
      v9 = [v11 UUID];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        [(SFMediaCaptureStatusBarManager *)self _acquireStatusBarOverride];
      }
    }
  }
}

- (void)browserControllerWillEnterForeground:(id)a3
{
  v17 = a3;
  v4 = [(SFMediaCaptureStatusBarManager *)self _recordingDocument];

  if (v4)
  {
    v5 = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
    v6 = [v5 ownerUUID];
    v7 = [v17 UUID];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
      v10 = [v9 browserController];
      v11 = [v10 tabCollectionViewProvider];
      v12 = [v11 tabThumbnailCollectionView];

      v13 = v12;
      if ([v13 presentationState] == 1)
      {
      }

      else
      {
        v14 = [v13 presentationState];

        if (v14 != 2)
        {
          v15 = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
          if (([v15 isActive] & 1) == 0)
          {

            goto LABEL_14;
          }

          v16 = [(SFMediaCaptureStatusBarManager *)self _hasStatusBarOverride];

          if (!v16)
          {
            goto LABEL_14;
          }

          goto LABEL_9;
        }
      }

      if (![(SFMediaCaptureStatusBarManager *)self _hasStatusBarOverride])
      {
LABEL_14:

        goto LABEL_15;
      }

LABEL_9:
      [(SFMediaCaptureStatusBarManager *)self _releaseStatusBarOverride];
      goto LABEL_14;
    }

    if (![(SFMediaCaptureStatusBarManager *)self _hasStatusBarOverride])
    {
      [(SFMediaCaptureStatusBarManager *)self _acquireStatusBarOverride];
    }
  }

LABEL_15:
}

- (void)activateApp
{
  v5 = [MEMORY[0x277D75128] sharedApplication];
  if (([v5 supportsMultipleScenes] & 1) == 0 && objc_msgSend(v5, "applicationState"))
  {
    v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 bundleIdentifier];
    [v2 openApplicationWithBundleID:v4];
  }
}

- (id)statusString
{
  v3 = MEMORY[0x277CCACA8];
  v4 = _WBSLocalizedString();
  v5 = [(SFMediaCaptureStatusBarManager *)self simplifiedURLString];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

@end