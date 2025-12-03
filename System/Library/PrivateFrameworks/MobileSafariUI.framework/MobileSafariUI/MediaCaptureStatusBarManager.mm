@interface MediaCaptureStatusBarManager
+ (MediaCaptureStatusBarManager)sharedManager;
- (id)statusString;
- (void)activateApp;
- (void)browserControllerDidEnterBackground:(id)background;
- (void)browserControllerWillEnterForeground:(id)foreground;
- (void)browserControllerWillEnterTabView:(id)view;
- (void)browserControllerWillExitTabView:(id)view;
- (void)tabDidBecomeActive:(id)active;
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

- (void)tabDidBecomeActive:(id)active
{
  activeCopy = active;
  _recordingDocument = [(SFMediaCaptureStatusBarManager *)self _recordingDocument];
  if (_recordingDocument)
  {
    browserController = [activeCopy browserController];
    tabCollectionViewProvider = [browserController tabCollectionViewProvider];
    tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];

    v8 = tabThumbnailCollectionView;
    if ([v8 presentationState] == 1)
    {
    }

    else
    {
      presentationState = [v8 presentationState];

      if (presentationState != 2)
      {
        recordingTabDocument = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
        browserController2 = [recordingTabDocument browserController];

        if (browserController == browserController2)
        {
          if (_recordingDocument == activeCopy && [(SFMediaCaptureStatusBarManager *)self _hasStatusBarOverride])
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

- (void)browserControllerWillEnterTabView:(id)view
{
  viewCopy = view;
  _recordingDocument = [(SFMediaCaptureStatusBarManager *)self _recordingDocument];
  if (_recordingDocument && [(SFMediaCaptureStatusBarManager *)self _hasStatusBarOverride])
  {
    recordingTabDocument = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
    browserController = [recordingTabDocument browserController];

    v7 = viewCopy;
    if (browserController != viewCopy)
    {
      goto LABEL_7;
    }

    [(SFMediaCaptureStatusBarManager *)self _releaseStatusBarOverride];
  }

  else
  {
  }

  v7 = viewCopy;
LABEL_7:
}

- (void)browserControllerWillExitTabView:(id)view
{
  viewCopy = view;
  _recordingDocument = [(SFMediaCaptureStatusBarManager *)self _recordingDocument];
  if (!_recordingDocument || [(SFMediaCaptureStatusBarManager *)self _hasStatusBarOverride])
  {
    goto LABEL_5;
  }

  recordingTabDocument = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
  browserController = [recordingTabDocument browserController];
  if (browserController != viewCopy)
  {

LABEL_5:
    goto LABEL_6;
  }

  recordingTabDocument2 = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
  isActive = [recordingTabDocument2 isActive];

  if ((isActive & 1) == 0)
  {
    [(SFMediaCaptureStatusBarManager *)self _acquireStatusBarOverride];
  }

LABEL_6:
}

- (void)browserControllerDidEnterBackground:(id)background
{
  backgroundCopy = background;
  _recordingDocument = [(SFMediaCaptureStatusBarManager *)self _recordingDocument];
  if (_recordingDocument)
  {
    v5 = _recordingDocument;
    _hasStatusBarOverride = [(SFMediaCaptureStatusBarManager *)self _hasStatusBarOverride];

    if (!_hasStatusBarOverride)
    {
      recordingTabDocument = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
      ownerUUID = [recordingTabDocument ownerUUID];
      uUID = [backgroundCopy UUID];
      v10 = [ownerUUID isEqual:uUID];

      if (v10)
      {
        [(SFMediaCaptureStatusBarManager *)self _acquireStatusBarOverride];
      }
    }
  }
}

- (void)browserControllerWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  _recordingDocument = [(SFMediaCaptureStatusBarManager *)self _recordingDocument];

  if (_recordingDocument)
  {
    recordingTabDocument = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
    ownerUUID = [recordingTabDocument ownerUUID];
    uUID = [foregroundCopy UUID];
    v8 = [ownerUUID isEqual:uUID];

    if (v8)
    {
      recordingTabDocument2 = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
      browserController = [recordingTabDocument2 browserController];
      tabCollectionViewProvider = [browserController tabCollectionViewProvider];
      tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];

      v13 = tabThumbnailCollectionView;
      if ([v13 presentationState] == 1)
      {
      }

      else
      {
        presentationState = [v13 presentationState];

        if (presentationState != 2)
        {
          recordingTabDocument3 = [(MediaCaptureStatusBarManager *)self recordingTabDocument];
          if (([recordingTabDocument3 isActive] & 1) == 0)
          {

            goto LABEL_14;
          }

          _hasStatusBarOverride = [(SFMediaCaptureStatusBarManager *)self _hasStatusBarOverride];

          if (!_hasStatusBarOverride)
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
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if (([mEMORY[0x277D75128] supportsMultipleScenes] & 1) == 0 && objc_msgSend(mEMORY[0x277D75128], "applicationState"))
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [defaultWorkspace openApplicationWithBundleID:bundleIdentifier];
  }
}

- (id)statusString
{
  v3 = MEMORY[0x277CCACA8];
  v4 = _WBSLocalizedString();
  simplifiedURLString = [(SFMediaCaptureStatusBarManager *)self simplifiedURLString];
  v6 = [v3 stringWithFormat:v4, simplifiedURLString];

  return v6;
}

@end