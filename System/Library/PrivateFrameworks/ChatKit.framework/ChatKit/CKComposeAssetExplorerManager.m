@interface CKComposeAssetExplorerManager
- (CKComposeAssetExplorerManager)initWithInputController:(id)a3;
- (id)browser;
- (id)clearAndDisableShelfAndReturnPreviouslyShelvedData;
- (id)generatePackageFromAssetURL:(id)a3 appendedVideoURL:(id)a4 previewImage:(id)a5;
- (void)_stageAssetPackage:(id)a3 toBrowser:(id)a4;
- (void)saveFileURL:(id)a3 filename:(id)a4 transcoderUserInfo:(id)a5 fullyRealizedPreview:(id)a6 rawPreview:(id)a7 appendedVideoURL:(id)a8;
- (void)setInputController:(id)a3;
- (void)stageAssetPackage:(id)a3;
- (void)tryToStagePendingPackages;
@end

@implementation CKComposeAssetExplorerManager

- (CKComposeAssetExplorerManager)initWithInputController:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKComposeAssetExplorerManager;
  v5 = [(CKComposeAssetExplorerManager *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    [(CKComposeAssetExplorerManager *)v5 setPackagesToStage:v6];

    v7 = +[CKBalloonPluginManager sharedInstance];
    [v7 invalidatePhotosViewController];

    v8 = [MEMORY[0x1E695DF70] array];
    [(CKComposeAssetExplorerManager *)v5 setSavedData:v8];

    [(CKComposeAssetExplorerManager *)v5 setAllItemsShouldNotAppearInShelf:0];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v5 selector:sel__balloonPluginExtensionsLoaded_ name:*MEMORY[0x1E69A56C8] object:0];

    [(CKComposeAssetExplorerManager *)v5 setInputController:v4];
  }

  return v5;
}

- (void)setInputController:(id)a3
{
  v5 = a3;
  if (![(CKComposeAssetExplorerManager *)self allItemsShouldNotAppearInShelf])
  {
    objc_storeStrong(&self->_inputController, a3);
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

  v4 = [(CKComposeAssetExplorerManager *)self packagesToStage];
  v5 = [v4 count];

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

  v6 = [(CKComposeAssetExplorerManager *)self inputController];

  if (!v6)
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

  v7 = [(CKComposeAssetExplorerManager *)self browser];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 sendDelegate];
    v10 = [(CKComposeAssetExplorerManager *)self inputController];

    if (v9 != v10)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [(CKComposeAssetExplorerManager *)self inputController];
          v31 = 138412290;
          v32 = v12;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Setting browser send delegate to %@", &v31, 0xCu);
        }
      }

      v13 = [(CKComposeAssetExplorerManager *)self inputController];
      [v8 setSendDelegate:v13];
    }

    v14 = [v8 sendDelegate];
    v15 = v14 == 0;

    v16 = IMOSLoggingEnabled();
    if (!v15)
    {
      if (v16)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [(CKComposeAssetExplorerManager *)self packagesToStage];
          v19 = [v18 count];
          v31 = 134217984;
          v32 = v19;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Staging %lu packages to browser", &v31, 0xCu);
        }
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v20 = [(CKComposeAssetExplorerManager *)self packagesToStage];
      v21 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v21)
      {
        v22 = *v27;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v27 != v22)
            {
              objc_enumerationMutation(v20);
            }

            [(CKComposeAssetExplorerManager *)self _stageAssetPackage:*(*(&v26 + 1) + 8 * i) toBrowser:v8];
          }

          v21 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v21);
      }

      v24 = [(CKComposeAssetExplorerManager *)self packagesToStage];
      [v24 removeAllObjects];

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

- (void)_stageAssetPackage:(id)a3 toBrowser:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v6 stageAssetToTransportAndNotifySendDelegate:v5];
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

- (void)stageAssetPackage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CKComposeAssetExplorerManager *)self packagesToStage];
    [v5 addObject:v4];

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

- (id)generatePackageFromAssetURL:(id)a3 appendedVideoURL:(id)a4 previewImage:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(CKComposeAssetExplorerManager *)self allItemsShouldNotAppearInShelf])
  {
    if (generatePackageFromAssetURL_appendedVideoURL_previewImage__IMAEFileAssetPackageGenerator)
    {
      if (v9)
      {
LABEL_9:
        v17[0] = v8;
        v17[1] = v9;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
LABEL_12:
        v14 = v13;
        v12 = [generatePackageFromAssetURL_appendedVideoURL_previewImage__IMAEFileAssetPackageGenerator generateAssetFromFileURLs:v13 previewImage:v10 error:0];

        goto LABEL_13;
      }
    }

    else
    {
      generatePackageFromAssetURL_appendedVideoURL_previewImage__IMAEFileAssetPackageGenerator = MEMORY[0x193AF5EC0](@"AEFileAssetPackageGenerator", @"AssetExplorer");
      if (v9)
      {
        goto LABEL_9;
      }
    }

    v18[0] = v8;
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

  v4 = [MEMORY[0x1E695DF70] array];
  [(CKComposeAssetExplorerManager *)self setPackagesToStage:v4];

  v5 = [(CKComposeAssetExplorerManager *)self browser];
  [v5 clearAllStagedPluginPackages];
  [(CKComposeAssetExplorerManager *)self setAllItemsShouldNotAppearInShelf:1];
  v6 = [(CKComposeAssetExplorerManager *)self savedData];
  v7 = [v6 copy];

  [(CKComposeAssetExplorerManager *)self setSavedData:0];

  return v7;
}

- (void)saveFileURL:(id)a3 filename:(id)a4 transcoderUserInfo:(id)a5 fullyRealizedPreview:(id)a6 rawPreview:(id)a7 appendedVideoURL:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v21 = [[CKComposeAssetExplorerManagerSavedData alloc] initWithFileURL:v19 filename:v18 transcoderUserInfo:v17 fullyRealizedPreview:v16 rawPreview:v15 appendedVideoURL:v14];

  v20 = [(CKComposeAssetExplorerManager *)self savedData];
  [v20 addObject:v21];
}

@end