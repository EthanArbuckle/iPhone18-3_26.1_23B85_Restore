@interface _UIDocumentPickerViewServiceViewController
+ (id)_exportedInterface;
+ (id)_logicalURLForPhysicalURL:(id)l;
+ (id)_urlByResolvingExternalDocumentReferenceForURL:(id)l;
- (BOOL)_shouldWarnForSharing;
- (CGSize)_updatedContentSizeForPreferredContentSize:(CGSize)size;
- (id)_mangledFilenameForURL:(id)l;
- (void)_cloudEnabledStatusDidChange:(id)change;
- (void)_createBookmarkAndDismissWithCloudURL:(id)l;
- (void)_didInstantiateThirdPartyPickerWithDescription:(id)description placeholder:(id)placeholder;
- (void)_didSelectURL:(id)l;
- (void)_dismissWithFileProviderURL:(id)l bundleIdentifier:(id)identifier;
- (void)_dismissWithImportURL:(id)l;
- (void)_documentPickerDidDismiss;
- (void)_doneButton:(id)button;
- (void)_invalidatePicker:(id)picker;
- (void)_prepareForDisplayWithCompletion:(id)completion;
- (void)_presentError:(id)error forThirdPartyPickerWithDescription:(id)description;
- (void)_setTintColor:(id)color;
- (void)_setUploadURL:(id)l;
- (void)_setUploadURLWrapper:(id)wrapper;
- (void)_showExistsAlertForFile:(id)file withSourceURL:(id)l;
- (void)_showLocationPopupFromBarButtonItem:(id)item rect:(CGRect)rect;
- (void)_showPicker:(id)picker;
- (void)_showTopLevelViewController;
- (void)_tryExportingFile:(id)file toLocation:(id)location;
- (void)_updateDefaultPicker;
- (void)_waitForDownloadOfURL:(id)l completion:(id)completion;
- (void)_warnSharingForTarget:(id)target completion:(id)completion;
- (void)_warnSharingPreMove;
- (void)_willAppearInRemoteViewController;
- (void)dealloc;
- (void)dismissWithURL:(id)l forBundleIdentifier:(id)identifier;
- (void)documentListController:(id)controller didSelectContainerWithViewController:(id)viewController;
- (void)documentListController:(id)controller didSelectItemAtURL:(id)l;
- (void)documentTargetSelectionController:(id)controller didSelectItemAtURL:(id)l;
- (void)overviewController:(id)controller selectedAuxiliaryOptionWithIdentifier:(id)identifier;
- (void)overviewController:(id)controller selectedDocumentPickerWithIdentifier:(id)identifier;
- (void)pickLocationForUpload:(id)upload;
- (void)setNavigationItemSpinner:(BOOL)spinner;
- (void)setupNavigationItemForPicker:(id)picker isRoot:(BOOL)root;
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

- (void)_setUploadURL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = cdui_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = lCopy;
    _os_log_impl(&dword_243823000, v6, OS_LOG_TYPE_INFO, "[INFO] received upload URL %@", buf, 0xCu);
  }

  if (([(NSURL *)self->_uploadURL isEqual:lCopy]& 1) == 0)
  {
    [(NSURL *)self->_uploadURL stopAccessingSecurityScopedResource];
    objc_storeStrong(&self->_uploadURL, l);
    [(NSURL *)self->_uploadURL startAccessingSecurityScopedResource];
    uploadURL = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];

    if (uploadURL)
    {
      array = [MEMORY[0x277CBEB18] array];
      v28 = 0;
      v9 = [lCopy getPromisedItemResourceValue:&v28 forKey:*MEMORY[0x277CBE918] error:0];
      v10 = v28;
      if (v9)
      {
        [array addObject:*MEMORY[0x277CC20C0]];
        [array addObject:v10];
        v27 = 0;
        v11 = [lCopy getPromisedItemResourceValue:&v27 forKey:*MEMORY[0x277CBE890] error:0];
        v12 = v27;
        v13 = v12;
        if (v11)
        {
          bOOLValue = [v12 BOOLValue];
          v15 = MEMORY[0x277CC2128];
          if (!bOOLValue)
          {
            v15 = MEMORY[0x277CC2050];
          }

          [array addObject:*v15];
        }
      }

      else
      {
        v16 = cdui_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [_UIDocumentPickerViewServiceViewController _setUploadURL:];
        }

        path = [(NSURL *)self->_uploadURL path];
        fileSystemRepresentation = [path fileSystemRepresentation];
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
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          path2 = [(NSURL *)self->_uploadURL path];
          v24 = [defaultManager fileExistsAtPath:path2];

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

      [(_UIDocumentPickerViewServiceViewController *)self _setPickableTypes:array];
    }
  }
}

- (void)_createBookmarkAndDismissWithCloudURL:(id)l
{
  lCopy = l;
  [(_UIDocumentPickerViewServiceViewController *)self _hostApplicationBundleIdentifier];
  v5 = lCopy;
  FPExtendBookmarkForDocumentURL();
}

- (void)_dismissWithFileProviderURL:(id)l bundleIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  identifierCopy = identifier;
  _hostApplicationBundleIdentifier = [(_UIDocumentPickerViewServiceViewController *)self _hostApplicationBundleIdentifier];
  v9 = cdui_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = identifierCopy;
    v21 = 2112;
    v22 = lCopy;
    _os_log_impl(&dword_243823000, v9, OS_LOG_TYPE_INFO, "[INFO] 3rd party document picker %@ selected URL %@", buf, 0x16u);
  }

  mEMORY[0x277CC63A8] = [MEMORY[0x277CC63A8] sharedConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91___UIDocumentPickerViewServiceViewController__dismissWithFileProviderURL_bundleIdentifier___block_invoke;
  v14[3] = &unk_278DD6BD8;
  v15 = lCopy;
  selfCopy = self;
  v17 = identifierCopy;
  v18 = _hostApplicationBundleIdentifier;
  v11 = _hostApplicationBundleIdentifier;
  v12 = identifierCopy;
  v13 = lCopy;
  [mEMORY[0x277CC63A8] extendSandboxAndCreatePlaceholderForFileURL:v13 fromProviderID:v12 toConsumerID:v11 completionHandler:v14];
}

- (void)_dismissWithImportURL:(id)l
{
  lCopy = l;
  hostingViewController = [(_UIDocumentPickerViewServiceViewController *)self hostingViewController];
  v5 = [MEMORY[0x277D75ED8] wrapperWithURL:lCopy];

  [hostingViewController _didSelectURLWrapper:v5];
}

- (void)dismissWithURL:(id)l forBundleIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  if (![(_UIDocumentPickerViewServiceViewController *)self hasBeenDismissed])
  {
    [(_UIDocumentPickerViewServiceViewController *)self setHasBeenDismissed:1];
    if (lCopy)
    {
      if ([(_UIDocumentPickerViewServiceViewController *)self pickerMode]&& [(_UIDocumentPickerViewServiceViewController *)self pickerMode]!= 2)
      {
        if (identifierCopy && ![identifierCopy isEqualToString:*MEMORY[0x277CFAD68]])
        {
          [(_UIDocumentPickerViewServiceViewController *)self _dismissWithFileProviderURL:lCopy bundleIdentifier:identifierCopy];
        }

        else
        {
          [(_UIDocumentPickerViewServiceViewController *)self _createBookmarkAndDismissWithCloudURL:lCopy];
        }

        goto LABEL_8;
      }

      [(_UIDocumentPickerViewServiceViewController *)self setNavigationItemSpinner:1];
      hostingViewController = [(_UIDocumentPickerViewServiceViewController *)self hostingViewController];
      v8 = [MEMORY[0x277D75ED8] wrapperWithURL:lCopy];
      [hostingViewController _didSelectURLWrapper:v8];
    }

    else
    {
      hostingViewController = [(_UIDocumentPickerViewServiceViewController *)self hostingViewController];
      [hostingViewController _dismissViewController];
    }
  }

LABEL_8:
}

- (void)_waitForDownloadOfURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v73[0] = 0;
  v7 = [lCopy getPromisedItemResourceValue:v73 forKey:*MEMORY[0x277CBE8D0] error:0];
  v8 = v73[0];
  if ((v7 & 1) == 0)
  {
    lastPathComponent = [lCopy lastPathComponent];

    v8 = lastPathComponent;
  }

  v72 = 0;
  v10 = *MEMORY[0x277CBE838];
  v71 = 0;
  v11 = [lCopy getPromisedItemResourceValue:&v72 forKey:v10 error:&v71];
  v12 = v72;
  v43 = v71;
  v44 = v12;
  if (v11)
  {
    unsignedIntegerValue = [v12 unsignedIntegerValue];
  }

  else
  {
    v14 = cdui_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [_UIDocumentPickerViewServiceViewController _waitForDownloadOfURL:completion:];
    }

    unsignedIntegerValue = 0;
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
  v23 = lCopy;
  v58 = v23;
  v24 = v21;
  v60 = v24;
  v25 = v19;
  v59 = v25;
  v26 = completionCopy;
  v61 = v26;
  dispatch_async(v22, block);

  v27 = [MEMORY[0x277CCA8E8] stringFromByteCount:unsignedIntegerValue countStyle:0];
  v28 = MEMORY[0x277CCAC48];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_6;
  v50[3] = &unk_278DD6CF0;
  v55 = v69;
  v56 = unsignedIntegerValue;
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
  containedNavController = [(_UIViewServiceViewController *)self containedNavController];
  [containedNavController setViewControllers:MEMORY[0x277CBEBF8]];

  +[_UIDocumentPickerContainerItem clearLRUThumbnailCache];
}

- (void)_setTintColor:(id)color
{
  colorCopy = color;
  view = [(_UIDocumentPickerViewServiceViewController *)self view];
  [view setTintColor:colorCopy];
}

- (void)_updateDefaultPicker
{
  pickerMode = [(_UIDocumentPickerViewServiceViewController *)self pickerMode];
  pickableTypes = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
  v5 = [_UIDocumentPickerDescriptor defaultPickerIdentifierForMode:pickerMode documentTypes:pickableTypes];
  [(_UIDocumentPickerViewServiceViewController *)self setCurrentPickerIdentifier:v5];

  currentPickerIdentifier = [(_UIDocumentPickerViewServiceViewController *)self currentPickerIdentifier];

  if (!currentPickerIdentifier)
  {

    [(_UIDocumentPickerViewServiceViewController *)self setCurrentPickerIdentifier:@"_UIDocumentPickerUnavailableIdentifier"];
  }
}

- (void)_setUploadURLWrapper:(id)wrapper
{
  v4 = [wrapper url];
  [(_UIDocumentPickerViewServiceViewController *)self _setUploadURL:v4];
}

- (void)_prepareForDisplayWithCompletion:(id)completion
{
  completionCopy = completion;
  [(_UIDocumentPickerViewServiceViewController *)self _showTopLevelViewController];
  containedNavController = [(_UIViewServiceViewController *)self containedNavController];
  viewControllers = [containedNavController viewControllers];
  lastObject = [viewControllers lastObject];

  [lastObject preferredContentSize];
  [(_UIDocumentPickerViewServiceViewController *)self setPreferredContentSize:?];
  [lastObject preferredContentSize];
  completionCopy[2](completionCopy);

  if (self->_currentPickerIdentifier)
  {
    [(_UIDocumentPickerViewServiceViewController *)self _warnSharingPreMove];
  }
}

- (void)_cloudEnabledStatusDidChange:(id)change
{
  [(_UIDocumentPickerViewServiceViewController *)self _updateDefaultPicker];
  currentPickerIdentifier = [(_UIDocumentPickerViewServiceViewController *)self currentPickerIdentifier];
  [(_UIDocumentPickerViewServiceViewController *)self _showPicker:currentPickerIdentifier];
}

- (void)_willAppearInRemoteViewController
{
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(_UIDocumentPickerViewServiceViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  _hostApplicationBundleIdentifier = [(_UIDocumentPickerViewServiceViewController *)self _hostApplicationBundleIdentifier];
  [_UIDocumentPickerDescriptor setHostBundleID:_hostApplicationBundleIdentifier];

  [(_UIDocumentPickerViewServiceViewController *)self _hostAuditToken];
  [_UIDocumentPickerDescriptor setHostAuditToken:&v7];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__cloudEnabledStatusDidChange_ name:@"_UIDocumentPickerDescriptorCloudEnabledStatusDidChange" object:0];
}

- (void)_showTopLevelViewController
{
  v17[1] = *MEMORY[0x277D85DE8];
  currentPickerIdentifier = [(_UIDocumentPickerViewServiceViewController *)self currentPickerIdentifier];

  containedNavController = [(_UIViewServiceViewController *)self containedNavController];
  v5 = containedNavController;
  if (currentPickerIdentifier)
  {
    [containedNavController setNavigationBarHidden:0];

    v6 = objc_alloc_init(MEMORY[0x277D75D28]);
    containedNavController2 = [(_UIViewServiceViewController *)self containedNavController];
    v17[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [containedNavController2 setViewControllers:v8 animated:0];

    navigationItem = [v6 navigationItem];
    [(_UIDocumentPickerViewServiceViewController *)self setupNavigationItemForPicker:navigationItem isRoot:1];

    currentPickerIdentifier2 = [(_UIDocumentPickerViewServiceViewController *)self currentPickerIdentifier];
    [(_UIDocumentPickerViewServiceViewController *)self _showPicker:currentPickerIdentifier2];
  }

  else
  {
    [containedNavController setNavigationBarHidden:1];

    v11 = [_UIDocumentPickerOverviewViewController alloc];
    pickableTypes = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
    pickerMode = [(_UIDocumentPickerViewServiceViewController *)self pickerMode];
    auxiliaryOptions = [(_UIDocumentPickerViewServiceViewController *)self auxiliaryOptions];
    v16 = [(_UIDocumentPickerOverviewViewController *)v11 initWithFileTypes:pickableTypes mode:pickerMode auxiliaryOptions:auxiliaryOptions includeManagementItem:1];

    [(_UIDocumentPickerOverviewViewController *)v16 setDelegate:self];
    [(_UIDocumentPickerViewServiceViewController *)self setDisplayedAsMenu:1];
    containedNavController3 = [(_UIViewServiceViewController *)self containedNavController];
    [containedNavController3 pushViewController:v16 animated:0];
  }
}

- (void)setupNavigationItemForPicker:(id)picker isRoot:(BOOL)root
{
  rootCopy = root;
  pickerCopy = picker;
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__doneButton_];
  [pickerCopy setRightBarButtonItem:v6];
  pickerMode = [(_UIDocumentPickerViewServiceViewController *)self pickerMode];
  pickableTypes = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
  v9 = [_UIDocumentPickerDescriptor allPickersForMode:pickerMode documentTypes:pickableTypes];

  v10 = [_UIDocumentPickerDescriptor filteredPickersForPickers:v9 filter:0];
  v11 = [v10 count];

  v12 = [_UIDocumentPickerDescriptor filteredPickersForPickers:v9 filter:1];
  v13 = [v12 count];

  if (rootCopy && (v11 > 1 || v13 >= 1))
  {
    v14 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v16 = [v15 localizedStringForKey:@"Locations" value:@"Locations" table:@"Localizable"];
    v17 = [v14 initWithTitle:v16 style:0 target:self action:sel__showLocationPopup_];

    [pickerCopy setLeftBarButtonItem:v17];
  }
}

- (void)_showPicker:(id)picker
{
  v47[1] = *MEMORY[0x277D85DE8];
  pickerCopy = picker;
  currentPicker = [(_UIDocumentPickerViewServiceViewController *)self currentPicker];
  [(_UIDocumentPickerViewServiceViewController *)self setCurrentPicker:0];
  if ([pickerCopy isEqualToString:*MEMORY[0x277D773A0]])
  {
    containedNavController = [(_UIViewServiceViewController *)self containedNavController];
    [containedNavController setNavigationBarHidden:0];

    if ([(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 2 || [(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 3)
    {
      v7 = [(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 2;
      v8 = [_UIDocumentTargetSelectionController alloc];
      uploadURL = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
      v10 = uploadURL;
      if (v7)
      {
        v47[0] = uploadURL;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
        v12 = [(_UIDocumentTargetSelectionController *)v8 initForCopyWithItems:v11];
      }

      else
      {
        v46 = uploadURL;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        v12 = [(_UIDocumentTargetSelectionController *)v8 initForCrossContainerMoveWithItemsToMove:v11];
      }

      v14 = v12;

      [(_UIDocumentListController *)v14 setDelegate:self];
    }

    else
    {
      v28 = [_UIDocumentPickerRootContainerModel alloc];
      pickableTypes = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
      v30 = [(_UIDocumentPickerRootContainerModel *)v28 initWithPickableTypes:pickableTypes mode:[(_UIDocumentPickerViewServiceViewController *)self pickerMode]];

      v14 = [[_UIDocumentListController alloc] initWithModel:v30];
      [(_UIDocumentListController *)v14 setDelegate:self];
      [(_UIDocumentListController *)v14 setAvailableActions:0];
    }

    containedNavController2 = [(_UIViewServiceViewController *)self containedNavController];
    v45 = v14;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    [containedNavController2 setViewControllers:v32 animated:0];

    navigationItem = [(_UIDocumentListController *)v14 navigationItem];
    [(_UIDocumentPickerViewServiceViewController *)self setupNavigationItemForPicker:navigationItem isRoot:1];

    [(_UIDocumentPickerViewServiceViewController *)self setCurrentPickerIdentifier:pickerCopy];
    [(_UIDocumentPickerViewServiceViewController *)self setCurrentPicker:v14];
  }

  else if ([pickerCopy isEqualToString:@"_UIDocumentPickerUnavailableIdentifier"])
  {
    containedNavController3 = [(_UIViewServiceViewController *)self containedNavController];
    [containedNavController3 setNavigationBarHidden:0];

    v14 = objc_alloc_init(_UIDocumentPickerUnavailableViewController);
    navigationItem2 = [(_UIDocumentListController *)v14 navigationItem];
    [(_UIDocumentPickerViewServiceViewController *)self setupNavigationItemForPicker:navigationItem2 isRoot:1];

    containedNavController4 = [(_UIViewServiceViewController *)self containedNavController];
    v44 = v14;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    [containedNavController4 setViewControllers:v17 animated:0];

    [(_UIDocumentPickerViewServiceViewController *)self setCurrentPickerIdentifier:pickerCopy];
  }

  else
  {
    v18 = [_UIDocumentPickerDescriptor descriptorWithIdentifier:pickerCopy];
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__3;
    v41 = __Block_byref_object_dispose__3;
    v42 = 0;
    v19 = MEMORY[0x277D761B8];
    extension = [v18 extension];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __58___UIDocumentPickerViewServiceViewController__showPicker___block_invoke;
    v34[3] = &unk_278DD6D40;
    v34[4] = self;
    v14 = v18;
    v35 = v14;
    v36 = &v37;
    v21 = [v19 instantiateWithExtension:extension completion:v34];
    v22 = v38[5];
    v38[5] = v21;

    [v38[5] delayDisplayOfRemoteController];
    navigationItem3 = [v38[5] navigationItem];
    [(_UIDocumentPickerViewServiceViewController *)self setupNavigationItemForPicker:navigationItem3 isRoot:1];

    localizedName = [(_UIDocumentListController *)v14 localizedName];
    [v38[5] setTitle:localizedName];

    containedNavController5 = [(_UIViewServiceViewController *)self containedNavController];
    [containedNavController5 setNavigationBarHidden:0];

    containedNavController6 = [(_UIViewServiceViewController *)self containedNavController];
    v43 = v38[5];
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    [containedNavController6 setViewControllers:v27 animated:0];

    _Block_object_dispose(&v37, 8);
  }

  [(_UIDocumentPickerViewServiceViewController *)self _invalidatePicker:currentPicker];
}

- (void)_didInstantiateThirdPartyPickerWithDescription:(id)description placeholder:(id)placeholder
{
  descriptionCopy = description;
  placeholderCopy = placeholder;
  remoteViewController = [placeholderCopy remoteViewController];
  nonUIIdentifier = [descriptionCopy nonUIIdentifier];
  [remoteViewController setPublicController:self];
  [remoteViewController setIdentifier:nonUIIdentifier];
  [remoteViewController setEdgesForExtendedLayout:0];
  [(_UIDocumentPickerViewServiceViewController *)self setCurrentPicker:remoteViewController];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __105___UIDocumentPickerViewServiceViewController__didInstantiateThirdPartyPickerWithDescription_placeholder___block_invoke;
  v25[3] = &unk_278DD6D68;
  v25[4] = self;
  v10 = [remoteViewController serviceViewControllerProxyWithErrorHandler:v25];
  if ([(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 2 || [(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 3)
  {
    v11 = MEMORY[0x277D75ED8];
    uploadURL = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
    v13 = [v11 wrapperWithURL:uploadURL];
    [v10 _setUploadURLWrapper:v13];
  }

  pickableTypes = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
  [v10 _setPickableTypes:pickableTypes];

  [v10 _setPickerMode:{-[_UIDocumentPickerViewServiceViewController pickerMode](self, "pickerMode")}];
  mEMORY[0x277CC63A8] = [MEMORY[0x277CC63A8] sharedConnection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __105___UIDocumentPickerViewServiceViewController__didInstantiateThirdPartyPickerWithDescription_placeholder___block_invoke_2;
  v20[3] = &unk_278DD6DB8;
  v20[4] = self;
  v21 = descriptionCopy;
  v22 = nonUIIdentifier;
  v23 = v10;
  v24 = placeholderCopy;
  v16 = placeholderCopy;
  v17 = v10;
  v18 = nonUIIdentifier;
  v19 = descriptionCopy;
  [mEMORY[0x277CC63A8] providersCompletionHandler:v20];
}

- (void)_presentError:(id)error forThirdPartyPickerWithDescription:(id)description
{
  errorCopy = error;
  descriptionCopy = description;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95___UIDocumentPickerViewServiceViewController__presentError_forThirdPartyPickerWithDescription___block_invoke;
  block[3] = &unk_278DD64E0;
  v12 = descriptionCopy;
  v8 = errorCopy;
  v13 = v8;
  selfCopy = self;
  v9 = descriptionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v10 = cdui_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [_UIDocumentPickerViewServiceViewController _presentError:forThirdPartyPickerWithDescription:];
  }
}

- (void)_showLocationPopupFromBarButtonItem:(id)item rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  itemCopy = item;
  v9 = [_UIDocumentPickerOverviewViewController alloc];
  pickableTypes = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
  v11 = [(_UIDocumentPickerOverviewViewController *)v9 initWithFileTypes:pickableTypes mode:[(_UIDocumentPickerViewServiceViewController *)self pickerMode] auxiliaryOptions:0 includeManagementItem:1];

  traitCollection = [(_UIDocumentPickerViewServiceViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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
  popoverPresentationController = [(_UIPreferredContentSizeRelayingNavigationController *)v14 popoverPresentationController];
  if (objc_opt_respondsToSelector())
  {
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v17 = [v16 localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
    [popoverPresentationController setDismissActionTitle:v17];
  }

  [popoverPresentationController setBarButtonItem:itemCopy];
  [popoverPresentationController setSourceRect:{x, y, width, height}];
  view = [(_UIDocumentPickerViewServiceViewController *)self view];
  [popoverPresentationController setSourceView:view];

  [popoverPresentationController setPermittedArrowDirections:15];
  [(_UIDocumentPickerOverviewViewController *)v11 setDelegate:self];
  [(_UIDocumentPickerViewServiceViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)overviewController:(id)controller selectedDocumentPickerWithIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  v8 = [identifierCopy isEqualToString:@"__UIDocumentPickerManageIdentifier"];
  displayedAsMenu = [(_UIDocumentPickerViewServiceViewController *)self displayedAsMenu];
  if (v8)
  {
    if (displayedAsMenu || (-[_UIDocumentPickerViewServiceViewController traitCollection](self, "traitCollection"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 userInterfaceIdiom], v10, v11 != 1))
    {
      v13 = [_UIDocumentPickerManagementViewController alloc];
      pickableTypes = [(_UIDocumentPickerViewServiceViewController *)self pickableTypes];
      v15 = [(_UIDocumentPickerManagementViewController *)v13 initWithFileTypes:pickableTypes mode:[(_UIDocumentPickerViewServiceViewController *)self pickerMode]];

      navigationItem = [(_UIDocumentPickerManagementViewController *)v15 navigationItem];
      [navigationItem setHidesBackButton:1];

      navigationController = [controllerCopy navigationController];
      [navigationController setNavigationBarHidden:0 animated:1];

      navigationController2 = [controllerCopy navigationController];
      [navigationController2 pushViewController:v15 animated:1];
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

  else if (displayedAsMenu)
  {
    [(_UIDocumentPickerViewServiceViewController *)self setCurrentPickerIdentifier:identifierCopy];
    hostingViewController = [(_UIDocumentPickerViewServiceViewController *)self hostingViewController];
    [hostingViewController _didSelectPicker];

    [(_UIDocumentPickerViewServiceViewController *)self setDisplayedAsMenu:0];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __102___UIDocumentPickerViewServiceViewController_overviewController_selectedDocumentPickerWithIdentifier___block_invoke_2;
    v19[3] = &unk_278DD6200;
    v19[4] = self;
    v20 = identifierCopy;
    [(_UIDocumentPickerViewServiceViewController *)self dismissViewControllerAnimated:1 completion:v19];
  }
}

- (void)overviewController:(id)controller selectedAuxiliaryOptionWithIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:@"__UIDocumentPickerManageIdentifier"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"_UIDocumentPickerUnavailableIdentifier"))
  {
    [(_UIDocumentPickerViewServiceViewController *)self overviewController:controllerCopy selectedDocumentPickerWithIdentifier:identifierCopy];
  }

  else
  {
    hostingViewController = [(_UIDocumentPickerViewServiceViewController *)self hostingViewController];
    [hostingViewController _dismissWithOption:identifierCopy];
  }
}

- (CGSize)_updatedContentSizeForPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  traitCollection = [(_UIDocumentPickerViewServiceViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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

- (void)_doneButton:(id)button
{
  +[_UIDocumentPickerContainerItem clearLRUThumbnailCache];
  currentPicker = [(_UIDocumentPickerViewServiceViewController *)self currentPicker];
  [(_UIDocumentPickerViewServiceViewController *)self _invalidatePicker:currentPicker];

  [(_UIDocumentPickerViewServiceViewController *)self setCurrentPicker:0];

  [(_UIDocumentPickerViewServiceViewController *)self dismissWithURL:0 forBundleIdentifier:0];
}

- (void)_invalidatePicker:(id)picker
{
  pickerCopy = picker;
  if ([pickerCopy conformsToProtocol:&unk_2856CAE60])
  {
    [pickerCopy invalidate];
  }
}

- (void)_didSelectURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    currentPicker = [(_UIDocumentPickerViewServiceViewController *)self currentPicker];
    identifier = [currentPicker identifier];
    [(_UIDocumentPickerViewServiceViewController *)self dismissWithURL:lCopy forBundleIdentifier:identifier];
  }

  else
  {
    [(_UIDocumentPickerViewServiceViewController *)self dismissWithURL:0 forBundleIdentifier:0];
  }
}

- (void)setNavigationItemSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  containedNavController = [(_UIViewServiceViewController *)self containedNavController];
  topViewController = [containedNavController topViewController];
  navigationItem = [topViewController navigationItem];

  v7 = MEMORY[0x277CBEB18];
  leftBarButtonItems = [navigationItem leftBarButtonItems];
  v9 = [v7 arrayWithArray:leftBarButtonItems];

  if (spinnerCopy)
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

  [navigationItem setLeftBarButtonItems:v9];
  view = [(_UIDocumentPickerViewServiceViewController *)self view];
  [view setUserInteractionEnabled:!spinnerCopy];
}

+ (id)_urlByResolvingExternalDocumentReferenceForURL:(id)l
{
  lCopy = l;
  if (![lCopy br_isExternalDocumentReference])
  {
    goto LABEL_4;
  }

  v11 = 0;
  v5 = [lCopy br_URLByResolvingExternalDocumentReferenceWithError:&v11];
  v6 = v11;
  if (v5)
  {
    v7 = [self _logicalURLForPhysicalURL:v5];

    lCopy = v7;
LABEL_4:
    lCopy = lCopy;
    v8 = lCopy;
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

+ (id)_logicalURLForPhysicalURL:(id)l
{
  lCopy = l;
  if (lCopy && _CFURLIsItemPromiseAtURL())
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
    v4 = lCopy;
  }

  return v4;
}

- (void)documentListController:(id)controller didSelectItemAtURL:(id)l
{
  lCopy = l;
  v6 = [objc_opt_class() _urlByResolvingExternalDocumentReferenceForURL:lCopy];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88___UIDocumentPickerViewServiceViewController_documentListController_didSelectItemAtURL___block_invoke;
  v8[3] = &unk_278DD6200;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  _UIDocumentListControllerPresentOSAlert(v7, self, v8, 0);
}

- (void)documentListController:(id)controller didSelectContainerWithViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __106___UIDocumentPickerViewServiceViewController_documentListController_didSelectContainerWithViewController___block_invoke;
    v10[3] = &unk_278DD6200;
    v11 = viewControllerCopy;
    selfCopy = self;
    [(_UIDocumentPickerViewServiceViewController *)self dismissViewControllerAnimated:1 completion:v10];
  }

  else
  {
    containedNavController = [(_UIViewServiceViewController *)self containedNavController];
    [containedNavController pushViewController:viewControllerCopy animated:1];
  }
}

- (void)documentTargetSelectionController:(id)controller didSelectItemAtURL:(id)l
{
  lCopy = l;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99___UIDocumentPickerViewServiceViewController_documentTargetSelectionController_didSelectItemAtURL___block_invoke;
  v7[3] = &unk_278DD6200;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  [(_UIDocumentPickerViewServiceViewController *)self _warnSharingForTarget:v6 completion:v7];
}

- (void)pickLocationForUpload:(id)upload
{
  uploadCopy = upload;
  uploadURL = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
  lastPathComponent = [uploadURL lastPathComponent];
  v7 = [uploadCopy URLByAppendingPathComponent:lastPathComponent];

  [(_UIDocumentPickerViewServiceViewController *)self _tryExportingFile:uploadURL toLocation:v7];
}

- (id)_mangledFilenameForURL:(id)l
{
  lCopy = l;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  pathExtension = [lCopy pathExtension];
  v27 = lCopy;
  lastPathComponent = [lCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v9 = [stringByDeletingPathExtension rangeOfCharacterFromSet:decimalDigitCharacterSet options:4];
  v11 = v10;

  if (v9 + v11 != [stringByDeletingPathExtension length])
  {
    v12 = [stringByDeletingPathExtension stringByAppendingString:@" 2"];

    decimalDigitCharacterSet2 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v9 = [v12 rangeOfCharacterFromSet:decimalDigitCharacterSet2 options:4];
    v11 = v14;

    stringByDeletingPathExtension = v12;
  }

  v15 = [stringByDeletingPathExtension substringWithRange:{v9, v11}];
  integerValue = [v15 integerValue];

  v17 = [stringByDeletingPathExtension substringToIndex:v9];

  v18 = integerValue + 999;
  while (1)
  {
    v19 = [v17 stringByAppendingFormat:@"%li", integerValue];
    lastPathComponent2 = [v19 stringByAppendingPathExtension:pathExtension];

    v21 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:lastPathComponent2];
    path = [v21 path];
    v23 = [defaultManager fileExistsAtPath:path];

    if (!v23)
    {
      break;
    }

    if (integerValue++ >= v18)
    {
      v25 = v27;
      lastPathComponent2 = [v27 lastPathComponent];
      goto LABEL_8;
    }
  }

  v25 = v27;
LABEL_8:

  return lastPathComponent2;
}

- (void)_showExistsAlertForFile:(id)file withSourceURL:(id)l
{
  fileCopy = file;
  lCopy = l;
  lastPathComponent = [fileCopy lastPathComponent];
  pathExtension = [fileCopy pathExtension];
  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v12 = [v11 localizedStringForKey:@"This location already contains a file named %@" value:@"This location already contains a file named %@" table:@"Localizable"];
  v32 = lastPathComponent;
  v33 = [v10 stringWithFormat:v12, lastPathComponent];

  pickerMode = [(_UIDocumentPickerViewServiceViewController *)self pickerMode];
  v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v15 = v14;
  if (pickerMode == 2)
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
  v19 = fileCopy;
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
  v23 = pathExtension;
  v36 = v23;
  v24 = v19;
  v37 = v24;
  selfCopy = self;
  v25 = lCopy;
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

- (void)_tryExportingFile:(id)file toLocation:(id)location
{
  fileCopy = file;
  locationCopy = location;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__3;
  v37 = __Block_byref_object_dispose__3;
  v38 = 0;
  v8 = objc_alloc_init(MEMORY[0x277CCA9E8]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [locationCopy path];
  v11 = [defaultManager fileExistsAtPath:path];

  if (v11)
  {
    [(_UIDocumentPickerViewServiceViewController *)self _showExistsAlertForFile:locationCopy withSourceURL:fileCopy];
  }

  else
  {
    hostingViewController = [(_UIDocumentPickerViewServiceViewController *)self hostingViewController];
    [hostingViewController _stitchFileCreationAtURL:locationCopy];

    if ([(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 3)
    {
      v32 = 0;
      v13 = v31;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __75___UIDocumentPickerViewServiceViewController__tryExportingFile_toLocation___block_invoke;
      v31[3] = &unk_278DD6E80;
      v31[4] = defaultManager;
      v31[5] = &v33;
      v14 = &v32;
      [v8 coordinateWritingItemAtURL:fileCopy options:2 writingItemAtURL:locationCopy options:0 error:&v32 byAccessor:v31];
    }

    else
    {
      v30 = 0;
      v13 = v29;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __75___UIDocumentPickerViewServiceViewController__tryExportingFile_toLocation___block_invoke_2;
      v29[3] = &unk_278DD6E80;
      v29[4] = defaultManager;
      v29[5] = &v33;
      v14 = &v30;
      [v8 coordinateReadingItemAtURL:fileCopy options:0 writingItemAtURL:locationCopy options:0 error:&v30 byAccessor:v29];
    }

    v15 = *v14;

    v16 = v34[5];
    if (v15 | v16)
    {
      domain = [v16 domain];
      if ([domain isEqualToString:*MEMORY[0x277CCA050]])
      {
        code = [v34[5] code];

        if (code == 516)
        {
          [(_UIDocumentPickerViewServiceViewController *)self _showExistsAlertForFile:locationCopy withSourceURL:fileCopy];
          goto LABEL_9;
        }
      }

      else
      {
      }

      v19 = MEMORY[0x277D75110];
      v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v21 = [v20 localizedStringForKey:@"Copying file failed" value:@"Copying file failed" table:@"Localizable"];
      localizedDescription = [v15 localizedDescription];
      v23 = [v19 alertControllerWithTitle:v21 message:localizedDescription preferredStyle:1];

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

    [(_UIDocumentPickerViewServiceViewController *)self dismissWithURL:locationCopy forBundleIdentifier:0];
  }

  v15 = 0;
LABEL_9:

  _Block_object_dispose(&v33, 8);
}

- (BOOL)_shouldWarnForSharing
{
  if ([(_UIDocumentPickerViewServiceViewController *)self pickerMode]== 3)
  {
    uploadURL = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
    v8 = 0;
    v4 = [uploadURL getPromisedItemResourceValue:&v8 forKey:*MEMORY[0x277CBE970] error:0];
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

    uploadURL = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
    v17 = 0;
    v5 = [uploadURL getPromisedItemResourceValue:&v17 forKey:*MEMORY[0x277CBE9D8] error:0];
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

- (void)_warnSharingForTarget:(id)target completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  completionCopy = completion;
  if ([(_UIDocumentPickerViewServiceViewController *)self _shouldWarnForSharing])
  {
    v8 = cdui_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_243823000, v8, OS_LOG_TYPE_INFO, "[INFO] We're in move mode and the file is shared", buf, 2u);
    }

    uploadURL = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
    v34 = 0;
    v10 = [uploadURL br_capabilityToMoveToURL:targetCopy error:&v34];
    v11 = v34;

    if ((v10 & 0x204) != 0)
    {
      uploadURL2 = [(_UIDocumentPickerViewServiceViewController *)self uploadURL];
      v33 = 0;
      v13 = [uploadURL2 getPromisedItemResourceValue:&v33 forKey:*MEMORY[0x277CBE9D8] error:0];
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
          v32 = completionCopy;
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
          completionCopy[2](completionCopy);
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

  completionCopy[2](completionCopy);
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