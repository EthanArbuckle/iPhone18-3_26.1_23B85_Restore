@interface CKComposeAssetExplorerManager
- (CKComposeAssetExplorerManager)initWithInputController:(id)controller;
- (id)browser;
- (id)clearAndDisableShelfAndReturnPreviouslyShelvedData;
- (id)generatePackageFromAssetURL:(id)l appendedVideoURL:(id)rL previewImage:(id)image;
- (void)_stageAssetPackage:(id)package toBrowser:(id)browser;
- (void)saveFileURL:(id)l filename:(id)filename transcoderUserInfo:(id)info fullyRealizedPreview:(id)preview rawPreview:(id)rawPreview appendedVideoURL:(id)rL;
- (void)setInputController:(id)controller;
- (void)stageAssetPackage:(id)package;
- (void)tryToStagePendingPackages;
@end

@implementation CKComposeAssetExplorerManager

- (CKComposeAssetExplorerManager)initWithInputController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = CKComposeAssetExplorerManager;
  v5 = [(CKComposeAssetExplorerManager *)&v11 init];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(CKComposeAssetExplorerManager *)v5 setPackagesToStage:array];

    v7 = +[CKBalloonPluginManager sharedInstance];
    [v7 invalidatePhotosViewController];

    array2 = [MEMORY[0x1E695DF70] array];
    [(CKComposeAssetExplorerManager *)v5 setSavedData:array2];

    [(CKComposeAssetExplorerManager *)v5 setAllItemsShouldNotAppearInShelf:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__balloonPluginExtensionsLoaded_ name:*MEMORY[0x1E69A56C8] object:0];

    [(CKComposeAssetExplorerManager *)v5 setInputController:controllerCopy];
  }

  return v5;
}

- (void)setInputController:(id)controller
{
  controllerCopy = controller;
  if (![(CKComposeAssetExplorerManager *)self allItemsShouldNotAppearInShelf])
  {
    objc_storeStrong(&self->_inputController, controller);
    [(CKComposeAssetExplorerManager *)self tryToStagePendingPackages];
  }
}

- (id)browser
{
  v2 = IMBalloonExtensionIDWithSuffix();
  v3 = +[CKBalloonPluginManager sharedInstance];
  v4 = [v3 viewControllerForPluginIdentifier:v2];

  if (!v4)
  {
    v5 = +[CKBalloonPluginManager sharedInstance];
    v4 = [v5 photosBrowserViewControllerWithPluginPayloads:0];

    if (!v4)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v8 = 0;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Warning: Browser is nil!", v8, 2u);
        }
      }

      v4 = 0;
    }
  }

  return v4;
}

- (void)tryToStagePendingPackages
{
  v33 = *MEMORY[0x1E69E9840];
  if ([(CKComposeAssetExplorerManager *)self allItemsShouldNotAppearInShelf])
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Staging: Items should not appear in shelf, not staging package", &v31, 2u);
    }

LABEL_35:

    return;
  }

  packagesToStage = [(CKComposeAssetExplorerManager *)self packagesToStage];
  v5 = [packagesToStage count];

  if (!v5)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Staging: No packages to try to stage, no staging", &v31, 2u);
    }

    goto LABEL_35;
  }

  inputController = [(CKComposeAssetExplorerManager *)self inputController];

  if (!inputController)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Staging: No packages to try to stage, no staging", &v31, 2u);
    }

    goto LABEL_35;
  }

  browser = [(CKComposeAssetExplorerManager *)self browser];
  v8 = browser;
  if (browser)
  {
    sendDelegate = [browser sendDelegate];
    inputController2 = [(CKComposeAssetExplorerManager *)self inputController];

    if (sendDelegate != inputController2)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          inputController3 = [(CKComposeAssetExplorerManager *)self inputController];
          v31 = 138412290;
          v32 = inputController3;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Setting browser send delegate to %@", &v31, 0xCu);
        }
      }

      inputController4 = [(CKComposeAssetExplorerManager *)self inputController];
      [v8 setSendDelegate:inputController4];
    }

    sendDelegate2 = [v8 sendDelegate];
    v15 = sendDelegate2 == 0;

    v16 = IMOSLoggingEnabled();
    if (!v15)
    {
      if (v16)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          packagesToStage2 = [(CKComposeAssetExplorerManager *)self packagesToStage];
          v19 = [packagesToStage2 count];
          v31 = 134217984;
          v32 = v19;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Staging %lu packages to browser", &v31, 0xCu);
        }
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      packagesToStage3 = [(CKComposeAssetExplorerManager *)self packagesToStage];
      v21 = [packagesToStage3 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v21)
      {
        v22 = *v27;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v27 != v22)
            {
              objc_enumerationMutation(packagesToStage3);
            }

            [(CKComposeAssetExplorerManager *)self _stageAssetPackage:*(*(&v26 + 1) + 8 * i) toBrowser:v8];
          }

          v21 = [packagesToStage3 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v21);
      }

      packagesToStage4 = [(CKComposeAssetExplorerManager *)self packagesToStage];
      [packagesToStage4 removeAllObjects];

      goto LABEL_44;
    }

    if (v16)
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Browser send delegate is nil", &v31, 2u);
      }

LABEL_43:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Staging: browser is nil, no staging", &v31, 2u);
    }

    goto LABEL_43;
  }

LABEL_44:
}

- (void)_stageAssetPackage:(id)package toBrowser:(id)browser
{
  packageCopy = package;
  browserCopy = browser;
  if (objc_opt_respondsToSelector())
  {
    [browserCopy stageAssetToTransportAndNotifySendDelegate:packageCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Failed to dispatch asset archive to the photos browser", v8, 2u);
    }
  }
}

- (void)stageAssetPackage:(id)package
{
  packageCopy = package;
  if (packageCopy)
  {
    packagesToStage = [(CKComposeAssetExplorerManager *)self packagesToStage];
    [packagesToStage addObject:packageCopy];

    [(CKComposeAssetExplorerManager *)self tryToStagePendingPackages];
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Received nil package, returning", v7, 2u);
    }
  }
}

- (id)generatePackageFromAssetURL:(id)l appendedVideoURL:(id)rL previewImage:(id)image
{
  v18[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  imageCopy = image;
  if (![(CKComposeAssetExplorerManager *)self allItemsShouldNotAppearInShelf])
  {
    if (generatePackageFromAssetURL_appendedVideoURL_previewImage__IMAEFileAssetPackageGenerator)
    {
      if (rLCopy)
      {
LABEL_9:
        v17[0] = lCopy;
        v17[1] = rLCopy;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
LABEL_12:
        v14 = v13;
        v12 = [generatePackageFromAssetURL_appendedVideoURL_previewImage__IMAEFileAssetPackageGenerator generateAssetFromFileURLs:v13 previewImage:imageCopy error:0];

        goto LABEL_13;
      }
    }

    else
    {
      generatePackageFromAssetURL_appendedVideoURL_previewImage__IMAEFileAssetPackageGenerator = MEMORY[0x193AF5EC0](@"AEFileAssetPackageGenerator", @"AssetExplorer");
      if (rLCopy)
      {
        goto LABEL_9;
      }
    }

    v18[0] = lCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    goto LABEL_12;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "generatePackageFromAssetURL: Items should not appear in shelf, not generating a package", v16, 2u);
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)clearAndDisableShelfAndReturnPreviouslyShelvedData
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "clearAndDisableShelfAndReturnPreviouslyShelvedData called.", v9, 2u);
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  [(CKComposeAssetExplorerManager *)self setPackagesToStage:array];

  browser = [(CKComposeAssetExplorerManager *)self browser];
  [browser clearAllStagedPluginPackages];
  [(CKComposeAssetExplorerManager *)self setAllItemsShouldNotAppearInShelf:1];
  savedData = [(CKComposeAssetExplorerManager *)self savedData];
  v7 = [savedData copy];

  [(CKComposeAssetExplorerManager *)self setSavedData:0];

  return v7;
}

- (void)saveFileURL:(id)l filename:(id)filename transcoderUserInfo:(id)info fullyRealizedPreview:(id)preview rawPreview:(id)rawPreview appendedVideoURL:(id)rL
{
  rLCopy = rL;
  rawPreviewCopy = rawPreview;
  previewCopy = preview;
  infoCopy = info;
  filenameCopy = filename;
  lCopy = l;
  v21 = [[CKComposeAssetExplorerManagerSavedData alloc] initWithFileURL:lCopy filename:filenameCopy transcoderUserInfo:infoCopy fullyRealizedPreview:previewCopy rawPreview:rawPreviewCopy appendedVideoURL:rLCopy];

  savedData = [(CKComposeAssetExplorerManager *)self savedData];
  [savedData addObject:v21];
}

@end