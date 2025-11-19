@interface _UIDocumentPickerViewServiceViewController
+ (id)_exportedInterface;
+ (id)_logicalURLForPhysicalURL:(id)a3;
+ (id)_urlByResolvingExternalDocumentReferenceForURL:(id)a3;
- (BOOL)_shouldWarnForSharing;
- (CGSize)_updatedContentSizeForPreferredContentSize:(CGSize)a3;
- (id)_mangledFilenameForURL:(id)a3;
- (void)_cloudEnabledStatusDidChange:(id)a3;
- (void)_createBookmarkAndDismissWithCloudURL:(id)a3;
- (void)_didInstantiateThirdPartyPickerWithDescription:(id)a3 placeholder:(id)a4;
- (void)_didSelectURL:(id)a3;
- (void)_dismissWithFileProviderURL:(id)a3 bundleIdentifier:(id)a4;
- (void)_dismissWithImportURL:(id)a3;
- (void)_documentPickerDidDismiss;
- (void)_doneButton:(id)a3;
- (void)_invalidatePicker:(id)a3;
- (void)_prepareForDisplayWithCompletion:(id)a3;
- (void)_presentError:(id)a3 forThirdPartyPickerWithDescription:(id)a4;
- (void)_setTintColor:(id)a3;
- (void)_setUploadURL:(id)a3;
- (void)_setUploadURLWrapper:(id)a3;
- (void)_showExistsAlertForFile:(id)a3 withSourceURL:(id)a4;
- (void)_showLocationPopupFromBarButtonItem:(id)a3 rect:(CGRect)a4;
- (void)_showPicker:(id)a3;
- (void)_showTopLevelViewController;
- (void)_tryExportingFile:(id)a3 toLocation:(id)a4;
- (void)_updateDefaultPicker;
- (void)_waitForDownloadOfURL:(id)a3 completion:(id)a4;
- (void)_warnSharingForTarget:(id)a3 completion:(id)a4;
- (void)_warnSharingPreMove;
- (void)_willAppearInRemoteViewController;
- (void)dealloc;
- (void)dismissWithURL:(id)a3 forBundleIdentifier:(id)a4;
- (void)documentListController:(id)a3 didSelectContainerWithViewController:(id)a4;
- (void)documentListController:(id)a3 didSelectItemAtURL:(id)a4;
- (void)documentTargetSelectionController:(id)a3 didSelectItemAtURL:(id)a4;
- (void)overviewController:(id)a3 selectedAuxiliaryOptionWithIdentifier:(id)a4;
- (void)overviewController:(id)a3 selectedDocumentPickerWithIdentifier:(id)a4;
- (void)pickLocationForUpload:(id)a3;
- (void)setNavigationItemSpinner:(BOOL)a3;
- (void)setupNavigationItemForPicker:(id)a3 isRoot:(BOOL)a4;
@end

@implementation _UIDocumentPickerViewServiceViewController

+ (id)_exportedInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856D9838];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel__setAuxiliaryOptions_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)dealloc
{
  [(NSURL *)self->_uploadURL stopAccessingSecurityScopedResource];
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerViewServiceViewController;
  [(_UIDocumentPickerViewServiceViewController *)&v3 dealloc];
}

- (void)_setUploadURL:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = cdui_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = v5;
    _os_log_impl(&dword_243823000, v6, OS_LOG_TYPE_INFO, "[INFO] received upload URL %@", buf, 0xCu);
  }

  if (([(NSURL *)self->_uploadURL isEqual:v5]& 1) == 0)
  {
    [(NSURL *)self->_uploadURL stopAccessingSecurityScopedResource];
    objc_storeStrong(&self->_uploadURL, a3);
    [(NSURL *)self->_uploadURL startAccessingSecurityScopedResource];
    v7 = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEB18] array];
      v28 = 0;
      v9 = [v5 getPromisedItemResourceValue:&v28 forKey:*MEMORY[0x277CBE918] error:0];
      v10 = v28;
      if (v9)
      {
        [v8 addObject:*MEMORY[0x277CC20C0]];
        [v8 addObject:v10];
        v27 = 0;
        v11 = [v5 getPromisedItemResourceValue:&v27 forKey:*MEMORY[0x277CBE890] error:0];
        v12 = v27;
        v13 = v12;
        if (v11)
        {
          v14 = [v12 BOOLValue];
          v15 = MEMORY[0x277CC2128];
          if (!v14)
          {
            v15 = MEMORY[0x277CC2050];
          }

          [v8 addObject:*v15];
        }
      }

      else
      {
        v16 = cdui_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [_UIDocumentPickerViewServiceViewController _setUploadURL:];
        }

        v17 = [(NSURL *)self->_uploadURL path];
        v26 = [v17 fileSystemRepresentation];
        v18 = sandbox_check();

        if (v18)
        {
          v19 = cdui_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            [_UIDocumentPickerViewServiceViewController _setUploadURL:];
          }

          v13 = MEMORY[0x245D41990](self->_uploadURL);
          v20 = cdui_default_log();
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);
          if (v13)
          {
            if (v21)
            {
              [_UIDocumentPickerViewServiceViewController _setUploadURL:];
            }
          }

          else if (v21)
          {
            [_UIDocumentPickerViewServiceViewController _setUploadURL:];
          }
        }

        else
        {
          v22 = [MEMORY[0x277CCAA00] defaultManager];
          v23 = [(NSURL *)self->_uploadURL path];
          v24 = [v22 fileExistsAtPath:v23];

          v13 = cdui_default_log();
          v25 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
          if (v24)
          {
            if (v25)
            {
              [_UIDocumentPickerViewServiceViewController _setUploadURL:];
            }
          }

          else if (v25)
          {
            [_UIDocumentPickerViewServiceViewController _setUploadURL:];
          }
        }
      }

      [(_UIDocumentPickerViewServiceViewController *)self _setPickableTypes:v8];
    }
  }
}

- (void)_createBookmarkAndDismissWithCloudURL:(id)a3
{
  v4 = a3;
  [(_UIDocumentPickerViewServiceViewController *)self _hostApplicationBundleIdentifier];
  v5 = v4;
  FPExtendBookmarkForDocumentURL();
}

- (void)_dismissWithFileProviderURL:(id)a3 bundleIdentifier:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_UIDocumentPickerViewServiceViewController *)self _hostApplicationBundleIdentifier];
  v9 = cdui_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_243823000, v9, OS_LOG_TYPE_INFO, "[INFO] 3rd party document picker %@ selected URL %@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CC63A8] sharedConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91___UIDocumentPickerViewServiceViewController__dismissWithFileProviderURL_bundleIdentifier___block_invoke;
  v14[3] = &unk_278DD6BD8;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v6;
  [v10 extendSandboxAndCreatePlaceholderForFileURL:v13 fromProviderID:v12 toConsumerID:v11 completionHandler:v14];
}

- (void)_dismissWithImportURL:(id)a3
{
  v4 = a3;
  v6 = [(_UIDocumentPickerViewServiceViewController *)self hostingViewController];
  v5 = [MEMORY[0x277D75ED8] wrapperWithURL:v4];

  [v6 _didSelectURLWrapper:v5];
}

- (void)dismissWithURL:(id)a3 forBundleIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (![(_UIDocumentPickerViewServiceViewController *)self hasBeenDismissed])
  {
    [(_UIDocumentPickerViewServiceViewController *)self setHasBeenDismissed:1];
    if (v9)
    {
      if ([(_UIDocumentPickerViewServiceViewController *)self pickerMode]&& [(_UIDocumentPickerViewServiceViewController *)self pickerMode]!= 2)
      {
        if (v6 && ![v6 isEqualToString:*MEMORY[0x277CFAD68]])
        {
          [(_UIDocumentPickerViewServiceViewController *)self _dismissWithFileProviderURL:v9 bundleIdentifier:v6];
        }

        else
        {
          [(_UIDocumentPickerViewServiceViewController *)self _createBookmarkAndDismissWithCloudURL:v9];
        }

        goto LABEL_8;
      }

      [(_UIDocumentPickerViewServiceViewController *)self setNavigationItemSpinner:1];
      v7 = [(_UIDocumentPickerViewServiceViewController *)self hostingViewController];
      v8 = [MEMORY[0x277D75ED8] wrapperWithURL:v9];
      [v7 _didSelectURLWrapper:v8];
    }

    else
    {
      v7 = [(_UIDocumentPickerViewServiceViewController *)self hostingViewController];
      [v7 _dismissViewController];
    }
  }

LABEL_8:
}

- (void)_waitForDownloadOfURL:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v73[0] = 0;
  v7 = [v5 getPromisedItemResourceValue:v73 forKey:*MEMORY[0x277CBE8D0] error:0];
  v8 = v73[0];
  if ((v7 & 1) == 0)
  {
    v9 = [v5 lastPathComponent];

    v8 = v9;
  }

  v72 = 0;
  v10 = *MEMORY[0x277CBE838];
  v71 = 0;
  v11 = [v5 getPromisedItemResourceValue:&v72 forKey:v10 error:&v71];
  v12 = v72;
  v43 = v71;
  v44 = v12;
  if (v11)
  {
    v13 = [v12 unsignedIntegerValue];
  }

  else
  {
    v14 = cdui_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [_UIDocumentPickerViewServiceViewController _waitForDownloadOfURL:completion:];
    }

    v13 = 0;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v17 = [v16 localizedStringForKey:@"Downloading %@" value:@"Downloading a Copy of “%@”" table:@"Localizable"];
  v18 = [v15 localizedStringWithFormat:v17, v8];

  v42 = v18;
  v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v18 message:0 preferredStyle:1];
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x3032000000;
  v69[3] = __Block_byref_object_copy__3;
  v69[4] = __Block_byref_object_dispose__3;
  v70 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__3;
  v67 = __Block_byref_object_dispose__3;
  v68 = 0;
  v20 = objc_opt_new();
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke;
  v62[3] = &unk_278DD6C00;
  v62[4] = v69;
  v62[5] = &v63;
  v21 = MEMORY[0x245D41DF0](v62);
  v22 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_2;
  block[3] = &unk_278DD6CA0;
  v23 = v5;
  v58 = v23;
  v24 = v21;
  v60 = v24;
  v25 = v19;
  v59 = v25;
  v26 = v6;
  v61 = v26;
  dispatch_async(v22, block);

  v27 = [MEMORY[0x277CCA8E8] stringFromByteCount:v13 countStyle:0];
  v28 = MEMORY[0x277CCAC48];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_6;
  v50[3] = &unk_278DD6CF0;
  v55 = v69;
  v56 = v13;
  v29 = v27;
  v51 = v29;
  v30 = v25;
  v52 = v30;
  v31 = v20;
  v53 = v31;
  v32 = v24;
  v54 = v32;
  v33 = [v28 _addSubscriberForFileURL:v23 withPublishingHandler:v50];
  v34 = v64[5];
  v64[5] = v33;

  [v31 addObject:v64[5]];
  v35 = MEMORY[0x277D750F8];
  v36 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v37 = [v36 localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_10;
  v46[3] = &unk_278DD6D18;
  v38 = v32;
  v48 = v38;
  v39 = v31;
  v47 = v39;
  v40 = v26;
  v49 = v40;
  v41 = [v35 actionWithTitle:v37 style:1 handler:v46];
  [v30 addAction:v41];

  [(_UIDocumentPickerViewServiceViewController *)self presentViewController:v30 animated:1 completion:&__block_literal_global_122_0];
  _Block_object_dispose(&v63, 8);

  _Block_object_dispose(v69, 8);
}

- (void)_documentPickerDidDismiss
{
  v2 = [(_UIViewServiceViewController *)self containedNavController];
  [v2 setViewControllers:MEMORY[0x277CBEBF8]];

  +[_UIDocumentPickerContainerItem clearLRUThumbnailCache];
}

- (void)_setTintColor:(id)a3
{
  v4 = a3;
  v5 = [(_UIDocumentPickerViewServiceViewController *)self view];
  [v5 setTintColor:v4];
}

- (void)_updateDefaultPicker
{
  v3 = [(_UIDocumentPickerViewServiceViewController *)self pickerMode];
  v4 = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
  v5 = [_UIDocumentPickerDescriptor defaultPickerIdentifierForMode:v3 documentTypes:v4];
  [(_UIDocumentPickerViewServiceViewController *)self setCurrentPickerIdentifier:v5];

  v6 = [(_UIDocumentPickerViewServiceViewController *)self currentPickerIdentifier];

  if (!v6)
  {

    [(_UIDocumentPickerViewServiceViewController *)self setCurrentPickerIdentifier:@"_UIDocumentPickerUnavailableIdentifier"];
  }
}

- (void)_setUploadURLWrapper:(id)a3
{
  v4 = [a3 url];
  [(_UIDocumentPickerViewServiceViewController *)self _setUploadURL:v4];
}

- (void)_prepareForDisplayWithCompletion:(id)a3
{
  v4 = a3;
  [(_UIDocumentPickerViewServiceViewController *)self _showTopLevelViewController];
  v5 = [(_UIViewServiceViewController *)self containedNavController];
  v6 = [v5 viewControllers];
  v7 = [v6 lastObject];

  [v7 preferredContentSize];
  [(_UIDocumentPickerViewServiceViewController *)self setPreferredContentSize:?];
  [v7 preferredContentSize];
  v4[2](v4);

  if (self->_currentPickerIdentifier)
  {
    [(_UIDocumentPickerViewServiceViewController *)self _warnSharingPreMove];
  }
}

- (void)_cloudEnabledStatusDidChange:(id)a3
{
  [(_UIDocumentPickerViewServiceViewController *)self _updateDefaultPicker];
  v4 = [(_UIDocumentPickerViewServiceViewController *)self currentPickerIdentifier];
  [(_UIDocumentPickerViewServiceViewController *)self _showPicker:v4];
}

- (void)_willAppearInRemoteViewController
{
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(_UIDocumentPickerViewServiceViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(_UIDocumentPickerViewServiceViewController *)self _hostApplicationBundleIdentifier];
  [_UIDocumentPickerDescriptor setHostBundleID:v5];

  [(_UIDocumentPickerViewServiceViewController *)self _hostAuditToken];
  [_UIDocumentPickerDescriptor setHostAuditToken:&v7];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__cloudEnabledStatusDidChange_ name:@"_UIDocumentPickerDescriptorCloudEnabledStatusDidChange" object:0];
}

- (void)_showTopLevelViewController
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [(_UIDocumentPickerViewServiceViewController *)self currentPickerIdentifier];

  v4 = [(_UIViewServiceViewController *)self containedNavController];
  v5 = v4;
  if (v3)
  {
    [v4 setNavigationBarHidden:0];

    v6 = objc_alloc_init(MEMORY[0x277D75D28]);
    v7 = [(_UIViewServiceViewController *)self containedNavController];
    v17[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v7 setViewControllers:v8 animated:0];

    v9 = [v6 navigationItem];
    [(_UIDocumentPickerViewServiceViewController *)self setupNavigationItemForPicker:v9 isRoot:1];

    v10 = [(_UIDocumentPickerViewServiceViewController *)self currentPickerIdentifier];
    [(_UIDocumentPickerViewServiceViewController *)self _showPicker:v10];
  }

  else
  {
    [v4 setNavigationBarHidden:1];

    v11 = [_UIDocumentPickerOverviewViewController alloc];
    v12 = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
    v13 = [(_UIDocumentPickerViewServiceViewController *)self pickerMode];
    v14 = [(_UIDocumentPickerViewServiceViewController *)self auxiliaryOptions];
    v16 = [(_UIDocumentPickerOverviewViewController *)v11 initWithFileTypes:v12 mode:v13 auxiliaryOptions:v14 includeManagementItem:1];

    [(_UIDocumentPickerOverviewViewController *)v16 setDelegate:self];
    [(_UIDocumentPickerViewServiceViewController *)self setDisplayedAsMenu:1];
    v15 = [(_UIViewServiceViewController *)self containedNavController];
    [v15 pushViewController:v16 animated:0];
  }
}

- (void)setupNavigationItemForPicker:(id)a3 isRoot:(BOOL)a4
{
  v4 = a4;
  v18 = a3;
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__doneButton_];
  [v18 setRightBarButtonItem:v6];
  v7 = [(_UIDocumentPickerViewServiceViewController *)self pickerMode];
  v8 = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
  v9 = [_UIDocumentPickerDescriptor allPickersForMode:v7 documentTypes:v8];

  v10 = [_UIDocumentPickerDescriptor filteredPickersForPickers:v9 filter:0];
  v11 = [v10 count];

  v12 = [_UIDocumentPickerDescriptor filteredPickersForPickers:v9 filter:1];
  v13 = [v12 count];

  if (v4 && (v11 > 1 || v13 >= 1))
  {
    v14 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v16 = [v15 localizedStringForKey:@"Locations" value:@"Locations" table:@"Localizable"];
    v17 = [v14 initWithTitle:v16 style:0 target:self action:sel__showLocationPopup_];

    [v18 setLeftBarButtonItem:v17];
  }
}

- (void)_showPicker:(id)a3
{
  v47[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_UIDocumentPickerViewServiceViewController *)self currentPicker];
  [(_UIDocumentPickerViewServiceViewController *)self setCurrentPicker:0];
  if ([v4 isEqualToString:*MEMORY[0x277D773A0]])
  {
    v6 = [(_UIViewServiceViewController *)self containedNavController];
    [v6 setNavigationBarHidden:0];

    if ([(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 2 || [(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 3)
    {
      v7 = [(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 2;
      v8 = [_UIDocumentTargetSelectionController alloc];
      v9 = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
      v10 = v9;
      if (v7)
      {
        v47[0] = v9;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
        v12 = [(_UIDocumentTargetSelectionController *)v8 initForCopyWithItems:v11];
      }

      else
      {
        v46 = v9;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        v12 = [(_UIDocumentTargetSelectionController *)v8 initForCrossContainerMoveWithItemsToMove:v11];
      }

      v14 = v12;

      [(_UIDocumentListController *)v14 setDelegate:self];
    }

    else
    {
      v28 = [_UIDocumentPickerRootContainerModel alloc];
      v29 = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
      v30 = [(_UIDocumentPickerRootContainerModel *)v28 initWithPickableTypes:v29 mode:[(_UIDocumentPickerViewServiceViewController *)self pickerMode]];

      v14 = [[_UIDocumentListController alloc] initWithModel:v30];
      [(_UIDocumentListController *)v14 setDelegate:self];
      [(_UIDocumentListController *)v14 setAvailableActions:0];
    }

    v31 = [(_UIViewServiceViewController *)self containedNavController];
    v45 = v14;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    [v31 setViewControllers:v32 animated:0];

    v33 = [(_UIDocumentListController *)v14 navigationItem];
    [(_UIDocumentPickerViewServiceViewController *)self setupNavigationItemForPicker:v33 isRoot:1];

    [(_UIDocumentPickerViewServiceViewController *)self setCurrentPickerIdentifier:v4];
    [(_UIDocumentPickerViewServiceViewController *)self setCurrentPicker:v14];
  }

  else if ([v4 isEqualToString:@"_UIDocumentPickerUnavailableIdentifier"])
  {
    v13 = [(_UIViewServiceViewController *)self containedNavController];
    [v13 setNavigationBarHidden:0];

    v14 = objc_alloc_init(_UIDocumentPickerUnavailableViewController);
    v15 = [(_UIDocumentListController *)v14 navigationItem];
    [(_UIDocumentPickerViewServiceViewController *)self setupNavigationItemForPicker:v15 isRoot:1];

    v16 = [(_UIViewServiceViewController *)self containedNavController];
    v44 = v14;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    [v16 setViewControllers:v17 animated:0];

    [(_UIDocumentPickerViewServiceViewController *)self setCurrentPickerIdentifier:v4];
  }

  else
  {
    v18 = [_UIDocumentPickerDescriptor descriptorWithIdentifier:v4];
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__3;
    v41 = __Block_byref_object_dispose__3;
    v42 = 0;
    v19 = MEMORY[0x277D761B8];
    v20 = [v18 extension];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __58___UIDocumentPickerViewServiceViewController__showPicker___block_invoke;
    v34[3] = &unk_278DD6D40;
    v34[4] = self;
    v14 = v18;
    v35 = v14;
    v36 = &v37;
    v21 = [v19 instantiateWithExtension:v20 completion:v34];
    v22 = v38[5];
    v38[5] = v21;

    [v38[5] delayDisplayOfRemoteController];
    v23 = [v38[5] navigationItem];
    [(_UIDocumentPickerViewServiceViewController *)self setupNavigationItemForPicker:v23 isRoot:1];

    v24 = [(_UIDocumentListController *)v14 localizedName];
    [v38[5] setTitle:v24];

    v25 = [(_UIViewServiceViewController *)self containedNavController];
    [v25 setNavigationBarHidden:0];

    v26 = [(_UIViewServiceViewController *)self containedNavController];
    v43 = v38[5];
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    [v26 setViewControllers:v27 animated:0];

    _Block_object_dispose(&v37, 8);
  }

  [(_UIDocumentPickerViewServiceViewController *)self _invalidatePicker:v5];
}

- (void)_didInstantiateThirdPartyPickerWithDescription:(id)a3 placeholder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 remoteViewController];
  v9 = [v6 nonUIIdentifier];
  [v8 setPublicController:self];
  [v8 setIdentifier:v9];
  [v8 setEdgesForExtendedLayout:0];
  [(_UIDocumentPickerViewServiceViewController *)self setCurrentPicker:v8];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __105___UIDocumentPickerViewServiceViewController__didInstantiateThirdPartyPickerWithDescription_placeholder___block_invoke;
  v25[3] = &unk_278DD6D68;
  v25[4] = self;
  v10 = [v8 serviceViewControllerProxyWithErrorHandler:v25];
  if ([(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 2 || [(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 3)
  {
    v11 = MEMORY[0x277D75ED8];
    v12 = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
    v13 = [v11 wrapperWithURL:v12];
    [v10 _setUploadURLWrapper:v13];
  }

  v14 = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
  [v10 _setPickableTypes:v14];

  [v10 _setPickerMode:{-[_UIDocumentPickerViewServiceViewController pickerMode](self, "pickerMode")}];
  v15 = [MEMORY[0x277CC63A8] sharedConnection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __105___UIDocumentPickerViewServiceViewController__didInstantiateThirdPartyPickerWithDescription_placeholder___block_invoke_2;
  v20[3] = &unk_278DD6DB8;
  v20[4] = self;
  v21 = v6;
  v22 = v9;
  v23 = v10;
  v24 = v7;
  v16 = v7;
  v17 = v10;
  v18 = v9;
  v19 = v6;
  [v15 providersCompletionHandler:v20];
}

- (void)_presentError:(id)a3 forThirdPartyPickerWithDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95___UIDocumentPickerViewServiceViewController__presentError_forThirdPartyPickerWithDescription___block_invoke;
  block[3] = &unk_278DD64E0;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = self;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v10 = cdui_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [_UIDocumentPickerViewServiceViewController _presentError:forThirdPartyPickerWithDescription:];
  }
}

- (void)_showLocationPopupFromBarButtonItem:(id)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v19 = a3;
  v9 = [_UIDocumentPickerOverviewViewController alloc];
  v10 = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
  v11 = [(_UIDocumentPickerOverviewViewController *)v9 initWithFileTypes:v10 mode:[(_UIDocumentPickerViewServiceViewController *)self pickerMode] auxiliaryOptions:0 includeManagementItem:1];

  v12 = [(_UIDocumentPickerViewServiceViewController *)self traitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 1)
  {
    [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:1];
    v14 = v11;
    [(_UIPreferredContentSizeRelayingNavigationController *)v14 setModalPresentationStyle:7];
  }

  else
  {
    v14 = [[_UIPreferredContentSizeRelayingNavigationController alloc] initWithRootViewController:v11];
    [(_UIPreferredContentSizeRelayingNavigationController *)v14 setModalPresentationStyle:100];
    [(_UIPreferredContentSizeRelayingNavigationController *)v14 setNavigationBarHidden:1];
  }

  [(_UIPreferredContentSizeRelayingNavigationController *)v14 setModalTransitionStyle:12];
  v15 = [(_UIPreferredContentSizeRelayingNavigationController *)v14 popoverPresentationController];
  if (objc_opt_respondsToSelector())
  {
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v17 = [v16 localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
    [v15 setDismissActionTitle:v17];
  }

  [v15 setBarButtonItem:v19];
  [v15 setSourceRect:{x, y, width, height}];
  v18 = [(_UIDocumentPickerViewServiceViewController *)self view];
  [v15 setSourceView:v18];

  [v15 setPermittedArrowDirections:15];
  [(_UIDocumentPickerOverviewViewController *)v11 setDelegate:self];
  [(_UIDocumentPickerViewServiceViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)overviewController:(id)a3 selectedDocumentPickerWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 isEqualToString:@"__UIDocumentPickerManageIdentifier"];
  v9 = [(_UIDocumentPickerViewServiceViewController *)self displayedAsMenu];
  if (v8)
  {
    if (v9 || (-[_UIDocumentPickerViewServiceViewController traitCollection](self, "traitCollection"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 userInterfaceIdiom], v10, v11 != 1))
    {
      v13 = [_UIDocumentPickerManagementViewController alloc];
      v14 = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
      v15 = [(_UIDocumentPickerManagementViewController *)v13 initWithFileTypes:v14 mode:[(_UIDocumentPickerViewServiceViewController *)self pickerMode]];

      v16 = [(_UIDocumentPickerManagementViewController *)v15 navigationItem];
      [v16 setHidesBackButton:1];

      v17 = [v6 navigationController];
      [v17 setNavigationBarHidden:0 animated:1];

      v18 = [v6 navigationController];
      [v18 pushViewController:v15 animated:1];
    }

    else
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __102___UIDocumentPickerViewServiceViewController_overviewController_selectedDocumentPickerWithIdentifier___block_invoke;
      v21[3] = &unk_278DD61B0;
      v21[4] = self;
      [(_UIDocumentPickerViewServiceViewController *)self dismissViewControllerAnimated:1 completion:v21];
    }
  }

  else if (v9)
  {
    [(_UIDocumentPickerViewServiceViewController *)self setCurrentPickerIdentifier:v7];
    v12 = [(_UIDocumentPickerViewServiceViewController *)self hostingViewController];
    [v12 _didSelectPicker];

    [(_UIDocumentPickerViewServiceViewController *)self setDisplayedAsMenu:0];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __102___UIDocumentPickerViewServiceViewController_overviewController_selectedDocumentPickerWithIdentifier___block_invoke_2;
    v19[3] = &unk_278DD6200;
    v19[4] = self;
    v20 = v7;
    [(_UIDocumentPickerViewServiceViewController *)self dismissViewControllerAnimated:1 completion:v19];
  }
}

- (void)overviewController:(id)a3 selectedAuxiliaryOptionWithIdentifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (([v6 isEqualToString:@"__UIDocumentPickerManageIdentifier"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"_UIDocumentPickerUnavailableIdentifier"))
  {
    [(_UIDocumentPickerViewServiceViewController *)self overviewController:v8 selectedDocumentPickerWithIdentifier:v6];
  }

  else
  {
    v7 = [(_UIDocumentPickerViewServiceViewController *)self hostingViewController];
    [v7 _dismissWithOption:v6];
  }
}

- (CGSize)_updatedContentSizeForPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_UIDocumentPickerViewServiceViewController *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    [(_UIDocumentPickerViewServiceViewController *)self preferredContentSize];
    if (v9 <= height)
    {
      v9 = height;
    }

    if (v8 <= width)
    {
      v8 = width;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIDocumentPickerViewServiceViewController;
    [(_UIViewServiceViewController *)&v10 _updatedContentSizeForPreferredContentSize:width, height];
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_doneButton:(id)a3
{
  +[_UIDocumentPickerContainerItem clearLRUThumbnailCache];
  v4 = [(_UIDocumentPickerViewServiceViewController *)self currentPicker];
  [(_UIDocumentPickerViewServiceViewController *)self _invalidatePicker:v4];

  [(_UIDocumentPickerViewServiceViewController *)self setCurrentPicker:0];

  [(_UIDocumentPickerViewServiceViewController *)self dismissWithURL:0 forBundleIdentifier:0];
}

- (void)_invalidatePicker:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_2856CAE60])
  {
    [v3 invalidate];
  }
}

- (void)_didSelectURL:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(_UIDocumentPickerViewServiceViewController *)self currentPicker];
    v5 = [v4 identifier];
    [(_UIDocumentPickerViewServiceViewController *)self dismissWithURL:v6 forBundleIdentifier:v5];
  }

  else
  {
    [(_UIDocumentPickerViewServiceViewController *)self dismissWithURL:0 forBundleIdentifier:0];
  }
}

- (void)setNavigationItemSpinner:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIViewServiceViewController *)self containedNavController];
  v6 = [v5 topViewController];
  v14 = [v6 navigationItem];

  v7 = MEMORY[0x277CBEB18];
  v8 = [v14 leftBarButtonItems];
  v9 = [v7 arrayWithArray:v8];

  if (v3)
  {
    if (!self->_showingSpinner)
    {
      v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v10 startAnimating];
      v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
      v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v10];
      [v9 addObject:v11];
      [v9 addObject:v12];
      self->_showingSpinner = 1;
    }
  }

  else if (self->_showingSpinner)
  {
    [v9 removeLastObject];
    [v9 removeLastObject];
    self->_showingSpinner = 0;
  }

  [v14 setLeftBarButtonItems:v9];
  v13 = [(_UIDocumentPickerViewServiceViewController *)self view];
  [v13 setUserInteractionEnabled:!v3];
}

+ (id)_urlByResolvingExternalDocumentReferenceForURL:(id)a3
{
  v4 = a3;
  if (![v4 br_isExternalDocumentReference])
  {
    goto LABEL_4;
  }

  v11 = 0;
  v5 = [v4 br_URLByResolvingExternalDocumentReferenceWithError:&v11];
  v6 = v11;
  if (v5)
  {
    v7 = [a1 _logicalURLForPhysicalURL:v5];

    v4 = v7;
LABEL_4:
    v4 = v4;
    v8 = v4;
    goto LABEL_5;
  }

  v10 = cdui_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    +[_UIDocumentPickerViewServiceViewController _urlByResolvingExternalDocumentReferenceForURL:];
  }

  v8 = 0;
LABEL_5:

  return v8;
}

+ (id)_logicalURLForPhysicalURL:(id)a3
{
  v3 = a3;
  if (v3 && _CFURLIsItemPromiseAtURL())
  {
    v4 = _CFURLCopyLogicalURLOfPromiseAtURL();
    if (!v4)
    {
      v5 = cdui_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        +[_UIDocumentPickerViewServiceViewController _logicalURLForPhysicalURL:];
      }
    }
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)documentListController:(id)a3 didSelectItemAtURL:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() _urlByResolvingExternalDocumentReferenceForURL:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88___UIDocumentPickerViewServiceViewController_documentListController_didSelectItemAtURL___block_invoke;
  v8[3] = &unk_278DD6200;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  _UIDocumentListControllerPresentOSAlert(v7, self, v8, 0);
}

- (void)documentListController:(id)a3 didSelectContainerWithViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __106___UIDocumentPickerViewServiceViewController_documentListController_didSelectContainerWithViewController___block_invoke;
    v10[3] = &unk_278DD6200;
    v11 = v6;
    v12 = self;
    [(_UIDocumentPickerViewServiceViewController *)self dismissViewControllerAnimated:1 completion:v10];
  }

  else
  {
    v9 = [(_UIViewServiceViewController *)self containedNavController];
    [v9 pushViewController:v6 animated:1];
  }
}

- (void)documentTargetSelectionController:(id)a3 didSelectItemAtURL:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99___UIDocumentPickerViewServiceViewController_documentTargetSelectionController_didSelectItemAtURL___block_invoke;
  v7[3] = &unk_278DD6200;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(_UIDocumentPickerViewServiceViewController *)self _warnSharingForTarget:v6 completion:v7];
}

- (void)pickLocationForUpload:(id)a3
{
  v4 = a3;
  v5 = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
  v6 = [v5 lastPathComponent];
  v7 = [v4 URLByAppendingPathComponent:v6];

  [(_UIDocumentPickerViewServiceViewController *)self _tryExportingFile:v5 toLocation:v7];
}

- (id)_mangledFilenameForURL:(id)a3
{
  v3 = a3;
  v28 = [v3 URLByDeletingLastPathComponent];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 pathExtension];
  v27 = v3;
  v6 = [v3 lastPathComponent];
  v7 = [v6 stringByDeletingPathExtension];

  v8 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v9 = [v7 rangeOfCharacterFromSet:v8 options:4];
  v11 = v10;

  if (v9 + v11 != [v7 length])
  {
    v12 = [v7 stringByAppendingString:@" 2"];

    v13 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v9 = [v12 rangeOfCharacterFromSet:v13 options:4];
    v11 = v14;

    v7 = v12;
  }

  v15 = [v7 substringWithRange:{v9, v11}];
  v16 = [v15 integerValue];

  v17 = [v7 substringToIndex:v9];

  v18 = v16 + 999;
  while (1)
  {
    v19 = [v17 stringByAppendingFormat:@"%li", v16];
    v20 = [v19 stringByAppendingPathExtension:v5];

    v21 = [v28 URLByAppendingPathComponent:v20];
    v22 = [v21 path];
    v23 = [v4 fileExistsAtPath:v22];

    if (!v23)
    {
      break;
    }

    if (v16++ >= v18)
    {
      v25 = v27;
      v20 = [v27 lastPathComponent];
      goto LABEL_8;
    }
  }

  v25 = v27;
LABEL_8:

  return v20;
}

- (void)_showExistsAlertForFile:(id)a3 withSourceURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 lastPathComponent];
  v9 = [v6 pathExtension];
  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v12 = [v11 localizedStringForKey:@"This location already contains a file named %@" value:@"This location already contains a file named %@" table:@"Localizable"];
  v32 = v8;
  v33 = [v10 stringWithFormat:v12, v8];

  v13 = [(_UIDocumentPickerViewServiceViewController *)self pickerMode];
  v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v15 = v14;
  if (v13 == 2)
  {
    v16 = @"Would you like to rename the file you are about to export?";
  }

  else
  {
    v16 = @"Would you like to rename the file you are about to move?";
  }

  v17 = [v14 localizedStringForKey:v16 value:v16 table:@"Localizable"];

  v31 = v17;
  v18 = [MEMORY[0x277D75110] alertControllerWithTitle:v33 message:v17 preferredStyle:1];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __84___UIDocumentPickerViewServiceViewController__showExistsAlertForFile_withSourceURL___block_invoke;
  v42[3] = &unk_278DD6E30;
  v42[4] = self;
  v19 = v6;
  v43 = v19;
  [v18 addTextFieldWithConfigurationHandler:v42];
  objc_initWeak(&location, v18);
  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v22 = [v21 localizedStringForKey:@"Rename" value:@"Rename" table:@"Localizable"];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __84___UIDocumentPickerViewServiceViewController__showExistsAlertForFile_withSourceURL___block_invoke_2;
  v35[3] = &unk_278DD6E58;
  objc_copyWeak(&v40, &location);
  v23 = v9;
  v36 = v23;
  v24 = v19;
  v37 = v24;
  v38 = self;
  v25 = v7;
  v39 = v25;
  v26 = [v20 actionWithTitle:v22 style:0 handler:v35];
  [v18 addAction:v26];

  v27 = MEMORY[0x277D750F8];
  v28 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v29 = [v28 localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __84___UIDocumentPickerViewServiceViewController__showExistsAlertForFile_withSourceURL___block_invoke_3;
  v34[3] = &unk_278DD6A08;
  v34[4] = self;
  v30 = [v27 actionWithTitle:v29 style:1 handler:v34];
  [v18 addAction:v30];

  [(_UIDocumentPickerViewServiceViewController *)self presentViewController:v18 animated:1 completion:&__block_literal_global_215];
  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

- (void)_tryExportingFile:(id)a3 toLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__3;
  v37 = __Block_byref_object_dispose__3;
  v38 = 0;
  v8 = objc_alloc_init(MEMORY[0x277CCA9E8]);
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v7 path];
  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    [(_UIDocumentPickerViewServiceViewController *)self _showExistsAlertForFile:v7 withSourceURL:v6];
  }

  else
  {
    v12 = [(_UIDocumentPickerViewServiceViewController *)self hostingViewController];
    [v12 _stitchFileCreationAtURL:v7];

    if ([(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 3)
    {
      v32 = 0;
      v13 = v31;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __75___UIDocumentPickerViewServiceViewController__tryExportingFile_toLocation___block_invoke;
      v31[3] = &unk_278DD6E80;
      v31[4] = v9;
      v31[5] = &v33;
      v14 = &v32;
      [v8 coordinateWritingItemAtURL:v6 options:2 writingItemAtURL:v7 options:0 error:&v32 byAccessor:v31];
    }

    else
    {
      v30 = 0;
      v13 = v29;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __75___UIDocumentPickerViewServiceViewController__tryExportingFile_toLocation___block_invoke_2;
      v29[3] = &unk_278DD6E80;
      v29[4] = v9;
      v29[5] = &v33;
      v14 = &v30;
      [v8 coordinateReadingItemAtURL:v6 options:0 writingItemAtURL:v7 options:0 error:&v30 byAccessor:v29];
    }

    v15 = *v14;

    v16 = v34[5];
    if (v15 | v16)
    {
      v17 = [v16 domain];
      if ([v17 isEqualToString:*MEMORY[0x277CCA050]])
      {
        v18 = [v34[5] code];

        if (v18 == 516)
        {
          [(_UIDocumentPickerViewServiceViewController *)self _showExistsAlertForFile:v7 withSourceURL:v6];
          goto LABEL_9;
        }
      }

      else
      {
      }

      v19 = MEMORY[0x277D75110];
      v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v21 = [v20 localizedStringForKey:@"Copying file failed" value:@"Copying file failed" table:@"Localizable"];
      v22 = [v15 localizedDescription];
      v23 = [v19 alertControllerWithTitle:v21 message:v22 preferredStyle:1];

      v24 = MEMORY[0x277D750F8];
      v25 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v26 = [v25 localizedStringForKey:@"Dismiss" value:@"Dismiss" table:@"Localizable"];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __75___UIDocumentPickerViewServiceViewController__tryExportingFile_toLocation___block_invoke_3;
      v28[3] = &unk_278DD6A08;
      v28[4] = self;
      v27 = [v24 actionWithTitle:v26 style:0 handler:v28];
      [v23 addAction:v27];

      [(_UIDocumentPickerViewServiceViewController *)self presentViewController:v23 animated:1 completion:&__block_literal_global_223];
      goto LABEL_9;
    }

    [(_UIDocumentPickerViewServiceViewController *)self dismissWithURL:v7 forBundleIdentifier:0];
  }

  v15 = 0;
LABEL_9:

  _Block_object_dispose(&v33, 8);
}

- (BOOL)_shouldWarnForSharing
{
  if ([(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 3)
  {
    v3 = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
    v8 = 0;
    v4 = [v3 getPromisedItemResourceValue:&v8 forKey:*MEMORY[0x277CBE970] error:0];
    v5 = v8;
    v6 = v5;
    if (v4)
    {
      LOBYTE(v4) = [v5 BOOLValue];
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_warnSharingPreMove
{
  if ([(_UIDocumentPickerViewServiceViewController *)self _shouldWarnForSharing])
  {
    v3 = cdui_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_243823000, v3, OS_LOG_TYPE_INFO, "[INFO] we're in move mode and the file is shared", buf, 2u);
    }

    v4 = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
    v17 = 0;
    v5 = [v4 getPromisedItemResourceValue:&v17 forKey:*MEMORY[0x277CBE9D8] error:0];
    v6 = v17;

    if (!v5)
    {
      goto LABEL_11;
    }

    v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v8 = [v7 localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];

    if ([v6 isEqualToString:*MEMORY[0x277CBE9E8]])
    {
      v9 = cdui_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_243823000, v9, OS_LOG_TYPE_INFO, "[INFO] presenting can't-move alert for participant", buf, 2u);
      }

      v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v11 = [v10 localizedStringForKey:@"You cannot move this document" value:@"You cannot move this document" table:@"Localizable"];

      v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v13 = [v12 localizedStringForKey:@"This document has been shared to you. You cannot move it to a different location." value:@"This document has been shared to you. You cannot move it to a different location." table:@"Localizable"];

      v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v11 message:v13 preferredStyle:1];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __65___UIDocumentPickerViewServiceViewController__warnSharingPreMove__block_invoke;
      v16[3] = &unk_278DD6A08;
      v16[4] = self;
      v15 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:1 handler:v16];
      [v14 addAction:v15];

      if (!v14)
      {
        goto LABEL_11;
      }

      [(_UIDocumentPickerViewServiceViewController *)self presentViewController:v14 animated:1 completion:0];
      v8 = v14;
    }

LABEL_11:
  }
}

- (void)_warnSharingForTarget:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(_UIDocumentPickerViewServiceViewController *)self _shouldWarnForSharing])
  {
    v8 = cdui_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_243823000, v8, OS_LOG_TYPE_INFO, "[INFO] We're in move mode and the file is shared", buf, 2u);
    }

    v9 = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
    v34 = 0;
    v10 = [v9 br_capabilityToMoveToURL:v6 error:&v34];
    v11 = v34;

    if ((v10 & 0x204) != 0)
    {
      v12 = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
      v33 = 0;
      v13 = [v12 getPromisedItemResourceValue:&v33 forKey:*MEMORY[0x277CBE9D8] error:0];
      v14 = v33;

      if (v13)
      {
        v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v16 = [v15 localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];

        if ([v14 isEqualToString:*MEMORY[0x277CBE9E0]])
        {
          v29 = v16;
          v17 = cdui_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_243823000, v17, OS_LOG_TYPE_INFO, "[INFO] presenting share-will-break alert for owner", buf, 2u);
          }

          v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v28 = [v18 localizedStringForKey:@"Moving this document will unshare it" value:@"Moving this document will unshare it" table:@"Localizable"];

          v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v20 = [v19 localizedStringForKey:@"This document is shared. Moving it to a different location will stop sharing the document. You can share again from the new location." value:@"This document is shared. Moving it to a different location will stop sharing the document. You can share again from the new location." table:@"Localizable"];

          v21 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v22 = [v21 localizedStringForKey:@"Move and stop sharing" value:@"Move and stop sharing" table:@"Localizable"];

          v23 = [MEMORY[0x277D75110] alertControllerWithTitle:v28 message:v20 preferredStyle:1];
          v24 = MEMORY[0x277D750F8];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __79___UIDocumentPickerViewServiceViewController__warnSharingForTarget_completion___block_invoke;
          v31[3] = &unk_278DD62C0;
          v32 = v7;
          v25 = [v24 actionWithTitle:v22 style:2 handler:v31];
          [v23 addAction:v25];

          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __79___UIDocumentPickerViewServiceViewController__warnSharingForTarget_completion___block_invoke_239;
          v30[3] = &unk_278DD6A08;
          v30[4] = self;
          v26 = [MEMORY[0x277D750F8] actionWithTitle:v29 style:1 handler:v30];
          [v23 addAction:v26];

          if (v23)
          {
            [(_UIDocumentPickerViewServiceViewController *)self presentViewController:v23 animated:1 completion:0];

LABEL_21:
            goto LABEL_22;
          }

LABEL_20:
          v7[2](v7);
          goto LABEL_21;
        }

        if (([v14 isEqualToString:*MEMORY[0x277CBE9E8]]& 1) == 0)
        {
          v27 = cdui_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v36 = v14;
            _os_log_impl(&dword_243823000, v27, OS_LOG_TYPE_DEFAULT, "[WARNING] Moving a file, but we're neither participant nor owner? (role is %@)", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      v14 = cdui_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_243823000, v14, OS_LOG_TYPE_INFO, "[INFO] ...but we can move the file around between these locations", buf, 2u);
      }
    }

    goto LABEL_20;
  }

  v7[2](v7);
LABEL_22:
}

- (void)_setUploadURL:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setUploadURL:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_setUploadURL:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setUploadURL:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setUploadURL:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_presentError:forThirdPartyPickerWithDescription:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end