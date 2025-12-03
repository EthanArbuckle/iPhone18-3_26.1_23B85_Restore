@interface DOCConfiguration
+ (id)configurationForExportingDocumentsToURLs:(id)ls mode:(unint64_t)mode;
+ (id)configurationForFolderPicking;
+ (id)configurationForImportingDocumentContentTypes:(id)types mode:(unint64_t)mode;
+ (id)configurationForImportingDocumentsWithContentTypes:(id)types mode:(unint64_t)mode;
+ (id)configurationForImportingDocumentsWithConversionRules:(id)rules;
+ (id)configurationForOpeningDocumentsOfApplicationWithBundleIdentifier:(id)identifier;
+ (id)pickableContentTypesFromAllowedConversions:(id)conversions;
- (BOOL)forPickingFoldersOnly;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (BOOL)isFilesApp;
- (BOOL)isPopoverOrWidget;
- (DOCConfiguration)init;
- (DOCConfiguration)initWithCoder:(id)coder;
- (NSArray)documentContentTypes;
- (NSArray)recentDocumentsContentTypes;
- (NSString)hostBundleTitle;
- (NSString)roleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)interactionModeForPreparing;
- (void)encodeWithCoder:(id)coder;
- (void)setHostIdentifier:(id)identifier;
- (void)setIsContentManaged:(BOOL)managed;
@end

@implementation DOCConfiguration

- (DOCConfiguration)init
{
  v14.receiver = self;
  v14.super_class = DOCConfiguration;
  v2 = [(DOCConfiguration *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldIgnoreInteractionMode = 0;
    [(DOCConfiguration *)v2 setIsContentManaged:0];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [(DOCConfiguration *)v3 setHostIdentifier:bundleIdentifier];

    forbiddenActionIdentifiers = v3->_forbiddenActionIdentifiers;
    v7 = MEMORY[0x277CBEBF8];
    v3->_forbiddenActionIdentifiers = MEMORY[0x277CBEBF8];

    v3->_neverCreateBookmarkForOpenInPlace = 0;
    v3->_showCollectionControls = 1;
    hiddenSourcesIdentifiers = v3->_hiddenSourcesIdentifiers;
    v3->_hiddenSourcesIdentifiers = v7;

    v3->_useExpandedSourceList = 0;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    *&v3->_maximumNumberOfItemsToFetch = vnegq_f64(v9);
    v3->_restoreLastVisitedLocation = 0;
    defaultEffectiveTabIdentifierForLocationRestore = v3->_defaultEffectiveTabIdentifierForLocationRestore;
    v3->_defaultEffectiveTabIdentifierForLocationRestore = @"Browse";

    *&v3->_saveLastVisitedLocation = 256;
    *&v3->_pickingItemsShouldBumpLastOpenDate = 1;
    *&v3->_forPickingDocuments = 0;
    *&v3->_forPickingDownloadsFolder = 0;
    v3->_forMovingDocuments = 0;
    v3->_browserViewContext = 0;
    v3->_thumbnailFetchingTimeOut = 0.25;
    v3->_presentingMakesCollectionFirstResponder = 1;
    *&v3->_supportsColumnView = 65792;
    *&v3->_isInUIPDocumentLanding = 256;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    LODWORD(bundleIdentifier) = [standardUserDefaults BOOLForKey:@"DOCForceUIPDocumentLandingAlways"];

    if (bundleIdentifier)
    {
      v3->_isInUIPDocumentLanding = 1;
    }

    v12 = v3;
  }

  return v3;
}

- (BOOL)isFilesApp
{
  hostIdentifier = [(DOCConfiguration *)self hostIdentifier];
  if ([hostIdentifier isEqualToString:@"com.apple.DocumentsApp"])
  {
    v4 = [(DOCConfiguration *)self browserViewContext]== 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)hostBundleTitle
{
  hostBundleTitle = self->_hostBundleTitle;
  if (hostBundleTitle)
  {
    v3 = hostBundleTitle;
  }

  else if (self->_hostIdentifier)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v7 = [bundleIdentifier isEqualToString:self->_hostIdentifier];

    if (v7)
    {
      localizedInfoDictionary = [mainBundle localizedInfoDictionary];
      v9 = [localizedInfoDictionary objectForKey:*MEMORY[0x277CBED50]];
      v10 = self->_hostBundleTitle;
      self->_hostBundleTitle = v9;

      v3 = self->_hostBundleTitle;
    }

    else
    {
      if (DOCSelfCanMapLSDatabase_onceToken != -1)
      {
        [DOCConfiguration documentContentTypes];
      }

      if (DOCSelfCanMapLSDatabase_canMapLSDatabase == 1)
      {
        v11 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:self->_hostIdentifier allowPlaceholder:0 error:0];
        localizedName = [v11 localizedName];
        v13 = [localizedName copy];
        v14 = self->_hostBundleTitle;
        self->_hostBundleTitle = v13;

        v3 = self->_hostBundleTitle;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)documentContentTypes
{
  v11[1] = *MEMORY[0x277D85DE8];
  documentContentTypes = self->_documentContentTypes;
  if (documentContentTypes)
  {
LABEL_2:
    v3 = documentContentTypes;
    goto LABEL_3;
  }

  if (self->_hostIdentifier)
  {
    if (DOCSelfCanMapLSDatabase_onceToken != -1)
    {
      [DOCConfiguration documentContentTypes];
    }

    if (DOCSelfCanMapLSDatabase_canMapLSDatabase == 1)
    {
      hostIdentifier = self->_hostIdentifier;
    }

    else
    {
      hostIdentifier = 0;
    }

    v8 = DOCContentTypesReadableByApplicationWithBundleIdentifier(hostIdentifier);
    v9 = self->_documentContentTypes;
    self->_documentContentTypes = v8;

    v10 = [(NSArray *)self->_documentContentTypes count];
    documentContentTypes = self->_documentContentTypes;
    if (!v10)
    {
      self->_documentContentTypes = 0;

      documentContentTypes = self->_documentContentTypes;
    }

    goto LABEL_2;
  }

  v11[0] = *MEMORY[0x277CE1D40];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
LABEL_3:
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)recentDocumentsContentTypes
{
  recentDocumentsContentTypes = self->_recentDocumentsContentTypes;
  if (recentDocumentsContentTypes)
  {
    documentContentTypes = recentDocumentsContentTypes;
  }

  else
  {
    documentContentTypes = [(DOCConfiguration *)self documentContentTypes];
  }

  return documentContentTypes;
}

- (BOOL)isPopoverOrWidget
{
  if ([(DOCConfiguration *)self isPopover])
  {
    return 1;
  }

  return [(DOCConfiguration *)self isWidget];
}

- (BOOL)forPickingFoldersOnly
{
  if (![(DOCConfiguration *)self forPickingFolders])
  {
    return 0;
  }

  documentContentTypes = [(DOCConfiguration *)self documentContentTypes];
  v4 = [documentContentTypes count] == 0;

  return v4;
}

+ (id)configurationForOpeningDocumentsOfApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setInteractionMode:1];
  [v4 setHostIdentifier:identifierCopy];

  return v4;
}

+ (id)configurationForImportingDocumentsWithContentTypes:(id)types mode:(unint64_t)mode
{
  if (types)
  {
    v6 = [MEMORY[0x277CE1CB8] doc_contentTypesForIdentifiers:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [self configurationForImportingDocumentContentTypes:v6 mode:mode];

  return v7;
}

+ (id)configurationForImportingDocumentContentTypes:(id)types mode:(unint64_t)mode
{
  typesCopy = types;
  if (mode >= 2)
  {
    [DOCConfiguration configurationForImportingDocumentContentTypes:a2 mode:self];
  }

  v8 = objc_opt_new();
  [v8 setInteractionMode:mode];
  [v8 setDocumentContentTypes:typesCopy];
  if ([typesCopy containsObject:*MEMORY[0x277CE1D80]])
  {
    [v8 setForPickingFolders:1];
  }

  return v8;
}

+ (id)configurationForImportingDocumentsWithConversionRules:(id)rules
{
  rulesCopy = rules;
  v5 = objc_opt_new();
  [v5 setInteractionMode:0];
  v6 = [self pickableContentTypesFromAllowedConversions:rulesCopy];
  [v5 setShouldConvert:1];
  [v5 setAllowedConversions:rulesCopy];

  allObjects = [v6 allObjects];
  [v5 setDocumentContentTypes:allObjects];

  return v5;
}

+ (id)pickableContentTypesFromAllowedConversions:(id)conversions
{
  conversionsCopy = conversions;
  v4 = CGImageDestinationCopyTypeIdentifiers();
  v5 = CGImageSourceCopyTypeIdentifiers();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__DOCConfiguration_pickableContentTypesFromAllowedConversions___block_invoke;
  v10[3] = &unk_278F9C1D8;
  v13 = &v14;
  v6 = v4;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  [conversionsCopy enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __63__DOCConfiguration_pickableContentTypesFromAllowedConversions___block_invoke(void *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(*(a1[6] + 8) + 40) addObject:v5];
  v7 = a1[4];
  v25 = v5;
  v8 = [v5 identifier];
  LODWORD(v7) = [v7 containsObject:v8];

  if (v7)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = a1[5];
          v16 = [v14 identifier];
          LODWORD(v15) = [v15 containsObject:v16];

          if (v15)
          {
            [*(*(a1[6] + 8) + 40) addObject:v14];
          }

          else
          {
            v17 = docLogHandle;
            if (!docLogHandle)
            {
              DOCInitLogging();
              v17 = docLogHandle;
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = v17;
              v19 = [v14 identifier];
              v20 = [v14 identifier];
              v21 = [v25 identifier];
              *buf = 138412802;
              v31 = v19;
              v32 = 2112;
              v33 = v20;
              v34 = 2112;
              v35 = v21;
              _os_log_error_impl(&dword_249340000, v18, OS_LOG_TYPE_ERROR, "%@ is not part of Image I/O Source types so conversion from %@ to %@ not allowed", buf, 0x20u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v11);
    }

    v6 = v24;
  }

  else
  {
    v22 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v22 = docLogHandle;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __63__DOCConfiguration_pickableContentTypesFromAllowedConversions___block_invoke_cold_1(v22, v5);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (id)configurationForExportingDocumentsToURLs:(id)ls mode:(unint64_t)mode
{
  v32 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  if (!lsCopy)
  {
    [DOCConfiguration configurationForExportingDocumentsToURLs:a2 mode:self];
  }

  if ((mode & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    [DOCConfiguration configurationForExportingDocumentsToURLs:a2 mode:self];
  }

  v20 = objc_opt_new();
  [v20 setInteractionMode:mode];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(lsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = lsCopy;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v22 = 0;
        v15 = [MEMORY[0x277CC6438] wrapperWithURL:v13 readonly:mode == 2 error:&v22];
        v16 = v22;
        if (v15)
        {
          [v8 addObject:v15];
        }

        else
        {
          v17 = docLogHandle;
          if (!docLogHandle)
          {
            DOCInitLogging();
            v17 = docLogHandle;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v28 = v13;
            v29 = 2112;
            v30 = v16;
            _os_log_error_impl(&dword_249340000, v17, OS_LOG_TYPE_ERROR, "Failed to create FPSandboxingURLWrapper for %@. %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v10);
  }

  [v20 setUrls:v8];
  v18 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)configurationForFolderPicking
{
  v2 = objc_opt_new();
  [v2 setInteractionMode:1];
  [v2 setForPickingFolders:1];

  return v2;
}

- (NSString)roleIdentifier
{
  roleIdentifier = self->_roleIdentifier;
  if (!roleIdentifier)
  {
    forPickingDocuments = [(DOCConfiguration *)self forPickingDocuments];
    roleIdentifier = @"com.apple.DocumentManager.Role.Picker";
    if (!forPickingDocuments)
    {
      roleIdentifier = 0;
    }
  }

  v4 = roleIdentifier;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[DOCConfiguration allocWithZone:?]];
  v5 = [(DOCConcreteLocation *)self->_defaultLocation copy];
  defaultLocation = v4->_defaultLocation;
  v4->_defaultLocation = v5;

  v4->_shouldOpenInApp = self->_shouldOpenInApp;
  v4->_inProcess = self->_inProcess;
  v4->_interactionMode = self->_interactionMode;
  v4->_shouldIgnoreInteractionMode = self->_shouldIgnoreInteractionMode;
  v7 = [(NSArray *)self->_documentContentTypes copy];
  documentContentTypes = v4->_documentContentTypes;
  v4->_documentContentTypes = v7;

  v9 = [(NSArray *)self->_excludedDocumentContentTypes copy];
  excludedDocumentContentTypes = v4->_excludedDocumentContentTypes;
  v4->_excludedDocumentContentTypes = v9;

  v11 = [(NSArray *)self->_recentDocumentsContentTypes copy];
  recentDocumentsContentTypes = v4->_recentDocumentsContentTypes;
  v4->_recentDocumentsContentTypes = v11;

  v13 = [(NSString *)self->_hostIdentifier copy];
  [(DOCConfiguration *)v4 setHostIdentifier:v13];

  [(DOCConfiguration *)v4 setIsContentManaged:self->_isContentManaged];
  v14 = [(NSArray *)self->_urls copy];
  urls = v4->_urls;
  v4->_urls = v14;

  v16 = [(NSArray *)self->_forbiddenActionIdentifiers copy];
  forbiddenActionIdentifiers = v4->_forbiddenActionIdentifiers;
  v4->_forbiddenActionIdentifiers = v16;

  v4->_neverCreateBookmarkForOpenInPlace = self->_neverCreateBookmarkForOpenInPlace;
  v4->_showCollectionControls = self->_showCollectionControls;
  v18 = [(NSArray *)self->_hiddenSourcesIdentifiers copy];
  hiddenSourcesIdentifiers = v4->_hiddenSourcesIdentifiers;
  v4->_hiddenSourcesIdentifiers = v18;

  v4->_useExpandedSourceList = self->_useExpandedSourceList;
  v20 = [(NSString *)self->_roleIdentifier copy];
  roleIdentifier = v4->_roleIdentifier;
  v4->_roleIdentifier = v20;

  v22 = [(NSString *)self->_stateIdentifier copy];
  stateIdentifier = v4->_stateIdentifier;
  v4->_stateIdentifier = v22;

  v24 = [(NSString *)self->_sceneIdentifier copy];
  sceneIdentifier = v4->_sceneIdentifier;
  v4->_sceneIdentifier = v24;

  v4->_maximumNumberOfItemsToFetch = self->_maximumNumberOfItemsToFetch;
  v4->_maximumNumberOfRows = self->_maximumNumberOfRows;
  v4->_restoreLastVisitedLocation = self->_restoreLastVisitedLocation;
  objc_storeStrong(&v4->_defaultEffectiveTabIdentifierForLocationRestore, self->_defaultEffectiveTabIdentifierForLocationRestore);
  v4->_saveLastVisitedLocation = self->_saveLastVisitedLocation;
  v4->_pickingItemsShouldBumpLastOpenDate = self->_pickingItemsShouldBumpLastOpenDate;
  v4->_shouldAdjustContentInset = self->_shouldAdjustContentInset;
  v4->_forPickingDocuments = self->_forPickingDocuments;
  v4->_forPickingFolders = self->_forPickingFolders;
  v4->_forPickingDownloadsFolder = self->_forPickingDownloadsFolder;
  v4->_forMovingDocuments = self->_forMovingDocuments;
  v4->_supportsRelatedFilesInPicker = self->_supportsRelatedFilesInPicker;
  v4->_useSharedQuickLook = self->_useSharedQuickLook;
  v4->_suppressBlackCallout = self->_suppressBlackCallout;
  v4->_preferLastUsedDate = self->_preferLastUsedDate;
  v4->_browserViewContext = self->_browserViewContext;
  v4->_skipDownload = self->_skipDownload;
  v4->_presentingMakesCollectionFirstResponder = self->_presentingMakesCollectionFirstResponder;
  v4->_thumbnailFetchingTimeOut = self->_thumbnailFetchingTimeOut;
  v4->_collectionSupportsDragAndDrop = self->_collectionSupportsDragAndDrop;
  v4->_supportsColumnView = self->_supportsColumnView;
  v4->_supportsNavigationTitleMenus = self->_supportsNavigationTitleMenus;
  v4->_supportsRemovableFileProviders = self->_supportsRemovableFileProviders;
  v4->_isInUIPDocumentLanding = self->_isInUIPDocumentLanding;
  v4->_shouldHideCatalystHostWindow = self->_shouldHideCatalystHostWindow;
  return v4;
}

- (DOCConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v48.receiver = self;
  v48.super_class = DOCConfiguration;
  v5 = [(DOCConfiguration *)&v48 init];
  if (v5)
  {
    v5->_interactionMode = [coderCopy decodeIntegerForKey:@"interactionMode"];
    v5->_shouldIgnoreInteractionMode = [coderCopy decodeBoolForKey:@"shouldIgnoreInteractionMode"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"documentContentTypes"];
    documentContentTypes = v5->_documentContentTypes;
    v5->_documentContentTypes = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"excludedDocumentContentTypes"];
    excludedDocumentContentTypes = v5->_excludedDocumentContentTypes;
    v5->_excludedDocumentContentTypes = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"recentDocumentsContentTypes"];
    recentDocumentsContentTypes = v5->_recentDocumentsContentTypes;
    v5->_recentDocumentsContentTypes = v19;

    -[DOCConfiguration setIsContentManaged:](v5, "setIsContentManaged:", [coderCopy decodeBoolForKey:@"isContentManaged"]);
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"urls"];
    urls = v5->_urls;
    v5->_urls = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hostIdentifier"];
    [(DOCConfiguration *)v5 setHostIdentifier:v26];

    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"forbiddenActionIdentifiers"];
    forbiddenActionIdentifiers = v5->_forbiddenActionIdentifiers;
    v5->_forbiddenActionIdentifiers = v30;

    v5->_neverCreateBookmarkForOpenInPlace = [coderCopy decodeBoolForKey:@"neverCreateBookmarkForOpenInPlace"];
    v5->_showCollectionControls = [coderCopy decodeBoolForKey:@"showCollectionControls"];
    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"hiddenSourcesIdentifiers"];
    hiddenSourcesIdentifiers = v5->_hiddenSourcesIdentifiers;
    v5->_hiddenSourcesIdentifiers = v35;

    v5->_useExpandedSourceList = [coderCopy decodeBoolForKey:@"useExpandedSourceList"];
    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roleIdentifier"];
    roleIdentifier = v5->_roleIdentifier;
    v5->_roleIdentifier = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateIdentifier"];
    stateIdentifier = v5->_stateIdentifier;
    v5->_stateIdentifier = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneIdentifier"];
    sceneIdentifier = v5->_sceneIdentifier;
    v5->_sceneIdentifier = v41;

    v5->_maximumNumberOfItemsToFetch = [coderCopy decodeIntegerForKey:@"maximumNumberOfItemsToFetch"];
    v5->_maximumNumberOfRows = [coderCopy decodeIntegerForKey:@"maximumNumberOfRows"];
    v5->_restoreLastVisitedLocation = [coderCopy decodeBoolForKey:@"restoreLastVisitedLocation"];
    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultEffectiveTabIdentifierForLocationRestore"];
    defaultEffectiveTabIdentifierForLocationRestore = v5->_defaultEffectiveTabIdentifierForLocationRestore;
    v5->_defaultEffectiveTabIdentifierForLocationRestore = v43;

    v5->_saveLastVisitedLocation = [coderCopy decodeBoolForKey:@"saveLastVisitedLocation"];
    v5->_pickingItemsShouldBumpLastOpenDate = [coderCopy decodeBoolForKey:@"pickingItemsShouldBumpLastOpenDate"];
    v5->_shouldAdjustContentInset = [coderCopy decodeBoolForKey:@"shouldAdjustContentInset"];
    v5->_forPickingDocuments = [coderCopy decodeBoolForKey:@"forPickingDocuments"];
    v5->_forPickingFolders = [coderCopy decodeBoolForKey:@"forPickingFolders"];
    v5->_forPickingDownloadsFolder = [coderCopy decodeBoolForKey:@"forPickingDownloadsFolder"];
    v5->_forMovingDocuments = [coderCopy decodeBoolForKey:@"forMovingDocuments"];
    v5->_supportsRelatedFilesInPicker = [coderCopy decodeBoolForKey:@"supportsRelatedFilesInPicker"];
    v5->_useSharedQuickLook = [coderCopy decodeBoolForKey:@"useSharedQuickLook"];
    v5->_shouldOpenInApp = [coderCopy decodeBoolForKey:@"shouldOpenInApp"];
    v5->_suppressBlackCallout = [coderCopy decodeBoolForKey:@"suppressBlackCallout"];
    v5->_preferLastUsedDate = [coderCopy decodeBoolForKey:@"preferLastUsedDate"];
    v5->_browserViewContext = [coderCopy decodeIntegerForKey:@"browserViewContext"];
    v5->_skipDownload = [coderCopy decodeBoolForKey:@"skipDownload"];
    v5->_presentingMakesCollectionFirstResponder = [coderCopy decodeBoolForKey:@"presentingMakesCollectionFirstResponder"];
    [coderCopy decodeDoubleForKey:@"thumbnailFetchingTimeOut"];
    v5->_thumbnailFetchingTimeOut = v45;
    v5->_collectionSupportsDragAndDrop = [coderCopy decodeBoolForKey:@"collectionSupportsDragAndDrop"];
    v5->_supportsColumnView = [coderCopy decodeBoolForKey:@"supportsColumnView"];
    v5->_supportsNavigationTitleMenus = [coderCopy decodeBoolForKey:@"supportsNavigationTitleMenus"];
    v5->_supportsRemovableFileProviders = [coderCopy decodeBoolForKey:@"supportsRemovableFileProviders"];
    v5->_isInUIPDocumentLanding = [coderCopy decodeBoolForKey:@"isInUIPDocumentLanding"];
    v5->_shouldHideCatalystHostWindow = [coderCopy decodeBoolForKey:@"shouldHideCatalystHostWindow"];
    v46 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_interactionMode forKey:@"interactionMode"];
  [coderCopy encodeBool:self->_shouldIgnoreInteractionMode forKey:@"shouldIgnoreInteractionMode"];
  [coderCopy encodeObject:self->_documentContentTypes forKey:@"documentContentTypes"];
  [coderCopy encodeObject:self->_excludedDocumentContentTypes forKey:@"excludedDocumentContentTypes"];
  [coderCopy encodeObject:self->_recentDocumentsContentTypes forKey:@"recentDocumentsContentTypes"];
  urls = self->_urls;
  if (urls)
  {
    [coderCopy encodeObject:urls forKey:@"urls"];
  }

  [coderCopy encodeObject:self->_hostIdentifier forKey:@"hostIdentifier"];
  [coderCopy encodeBool:self->_isContentManaged forKey:@"isContentManaged"];
  [coderCopy encodeObject:self->_forbiddenActionIdentifiers forKey:@"forbiddenActionIdentifiers"];
  [coderCopy encodeBool:self->_neverCreateBookmarkForOpenInPlace forKey:@"neverCreateBookmarkForOpenInPlace"];
  [coderCopy encodeBool:self->_showCollectionControls forKey:@"showCollectionControls"];
  [coderCopy encodeObject:self->_hiddenSourcesIdentifiers forKey:@"hiddenSourcesIdentifiers"];
  [coderCopy encodeBool:self->_useExpandedSourceList forKey:@"useExpandedSourceList"];
  [coderCopy encodeBool:self->_restoreLastVisitedLocation forKey:@"restoreLastVisitedLocation"];
  [coderCopy encodeObject:self->_defaultEffectiveTabIdentifierForLocationRestore forKey:@"defaultEffectiveTabIdentifierForLocationRestore"];
  [coderCopy encodeBool:self->_saveLastVisitedLocation forKey:@"saveLastVisitedLocation"];
  [coderCopy encodeBool:self->_shouldOpenInApp forKey:@"shouldOpenInApp"];
  [coderCopy encodeObject:self->_roleIdentifier forKey:@"roleIdentifier"];
  [coderCopy encodeObject:self->_stateIdentifier forKey:@"stateIdentifier"];
  [coderCopy encodeObject:self->_sceneIdentifier forKey:@"sceneIdentifier"];
  [coderCopy encodeInteger:self->_maximumNumberOfItemsToFetch forKey:@"maximumNumberOfItemsToFetch"];
  [coderCopy encodeInteger:self->_maximumNumberOfRows forKey:@"maximumNumberOfRows"];
  [coderCopy encodeBool:self->_pickingItemsShouldBumpLastOpenDate forKey:@"pickingItemsShouldBumpLastOpenDate"];
  [coderCopy encodeBool:self->_shouldAdjustContentInset forKey:@"shouldAdjustContentInset"];
  [coderCopy encodeBool:self->_forPickingDocuments forKey:@"forPickingDocuments"];
  [coderCopy encodeBool:self->_forPickingFolders forKey:@"forPickingFolders"];
  [coderCopy encodeBool:self->_forPickingDownloadsFolder forKey:@"forPickingDownloadsFolder"];
  [coderCopy encodeBool:self->_forMovingDocuments forKey:@"forMovingDocuments"];
  [coderCopy encodeBool:self->_supportsRelatedFilesInPicker forKey:@"supportsRelatedFilesInPicker"];
  [coderCopy encodeBool:self->_useSharedQuickLook forKey:@"useSharedQuickLook"];
  [coderCopy encodeBool:self->_suppressBlackCallout forKey:@"suppressBlackCallout"];
  [coderCopy encodeBool:self->_preferLastUsedDate forKey:@"preferLastUsedDate"];
  [coderCopy encodeInteger:self->_browserViewContext forKey:@"browserViewContext"];
  [coderCopy encodeBool:self->_skipDownload forKey:@"skipDownload"];
  [coderCopy encodeBool:self->_presentingMakesCollectionFirstResponder forKey:@"presentingMakesCollectionFirstResponder"];
  [coderCopy encodeDouble:@"thumbnailFetchingTimeOut" forKey:self->_thumbnailFetchingTimeOut];
  [coderCopy encodeBool:self->_collectionSupportsDragAndDrop forKey:@"collectionSupportsDragAndDrop"];
  [coderCopy encodeBool:self->_supportsColumnView forKey:@"supportsColumnView"];
  [coderCopy encodeBool:self->_supportsNavigationTitleMenus forKey:@"supportsNavigationTitleMenus"];
  [coderCopy encodeBool:self->_supportsRemovableFileProviders forKey:@"supportsRemovableFileProviders"];
  [coderCopy encodeBool:self->_isInUIPDocumentLanding forKey:@"isInUIPDocumentLanding"];
  [coderCopy encodeBool:self->_shouldHideCatalystHostWindow forKey:@"shouldHideCatalystHostWindow"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(DOCConfiguration *)equalCopy isEqualToConfiguration:self];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (self->_interactionMode != configurationCopy[6])
  {
    goto LABEL_53;
  }

  if (self->_shouldIgnoreInteractionMode != *(configurationCopy + 8))
  {
    goto LABEL_53;
  }

  documentContentTypes = self->_documentContentTypes;
  if (documentContentTypes != v5[7] && ![(NSArray *)documentContentTypes isEqual:?])
  {
    goto LABEL_53;
  }

  excludedDocumentContentTypes = self->_excludedDocumentContentTypes;
  if (excludedDocumentContentTypes != v5[9] && ![(NSArray *)excludedDocumentContentTypes isEqual:?])
  {
    goto LABEL_53;
  }

  recentDocumentsContentTypes = self->_recentDocumentsContentTypes;
  if (recentDocumentsContentTypes != v5[10] && ![(NSArray *)recentDocumentsContentTypes isEqual:?])
  {
    goto LABEL_53;
  }

  if (((urls = self->_urls, urls == v5[11]) || [(NSArray *)urls isEqual:?]) && ((hostIdentifier = self->_hostIdentifier, hostIdentifier == v5[12]) || [(NSString *)hostIdentifier isEqual:?]) && self->_isContentManaged == *(v5 + 17) && ((forbiddenActionIdentifiers = self->_forbiddenActionIdentifiers, forbiddenActionIdentifiers == v5[22]) || [(NSArray *)forbiddenActionIdentifiers isEqual:?]) && self->_neverCreateBookmarkForOpenInPlace == *(v5 + 18) && self->_showCollectionControls == *(v5 + 30) && ((hiddenSourcesIdentifiers = self->_hiddenSourcesIdentifiers, hiddenSourcesIdentifiers == v5[14]) || [(NSArray *)hiddenSourcesIdentifiers isEqual:?]) && self->_useExpandedSourceList == *(v5 + 35) && self->_restoreLastVisitedLocation == *(v5 + 25) && hasEqual_defaultEffectiveTabIdentifierForLocationRestore(self, v5) && self->_saveLastVisitedLocation == *(v5 + 26) && self->_shouldOpenInApp == *(v5 + 24) && ((roleIdentifier = self->_roleIdentifier, roleIdentifier == v5[19]) || [(NSString *)roleIdentifier isEqual:?]) && ((stateIdentifier = self->_stateIdentifier, stateIdentifier == v5[20]) || [(NSString *)stateIdentifier isEqual:?]) && ((sceneIdentifier = self->_sceneIdentifier, sceneIdentifier == v5[21]) || [(NSString *)sceneIdentifier isEqual:?]) && self->_maximumNumberOfItemsToFetch == v5[16] && self->_maximumNumberOfRows == v5[17] && self->_pickingItemsShouldBumpLastOpenDate == *(v5 + 19) && self->_shouldAdjustContentInset == *(v5 + 33) && self->_forPickingDocuments == *(v5 + 11) && self->_forPickingFolders == *(v5 + 12) && self->_forPickingDownloadsFolder == *(v5 + 15) && self->_forMovingDocuments == *(v5 + 13) && self->_supportsRelatedFilesInPicker == *(v5 + 16) && self->_useSharedQuickLook == *(v5 + 34) && self->_suppressBlackCallout == *(v5 + 20) && self->_preferLastUsedDate == *(v5 + 21) && self->_browserViewContext == v5[18] && self->_skipDownload == *(v5 + 28) && self->_presentingMakesCollectionFirstResponder == *(v5 + 29) && self->_thumbnailFetchingTimeOut == *(v5 + 23) && self->_collectionSupportsDragAndDrop == *(v5 + 27) && self->_supportsColumnView == *(v5 + 31) && self->_supportsNavigationTitleMenus == *(v5 + 32) && self->_supportsRemovableFileProviders == *(v5 + 14) && self->_isInUIPDocumentLanding == *(v5 + 22))
  {
    v16 = self->_shouldHideCatalystHostWindow == *(v5 + 23);
  }

  else
  {
LABEL_53:
    v16 = 0;
  }

  return v16;
}

- (unint64_t)interactionModeForPreparing
{
  if ([(DOCConfiguration *)self shouldIgnoreInteractionMode])
  {
    return 1;
  }

  return [(DOCConfiguration *)self interactionMode];
}

- (void)setHostIdentifier:(id)identifier
{
  v4 = [identifier copy];
  hostIdentifier = self->_hostIdentifier;
  self->_hostIdentifier = v4;

  v6 = self->_hostIdentifier;
  v7 = +[DOCManagedPermission defaultPermission];
  [v7 setHostIdentifier:v6];
}

- (void)setIsContentManaged:(BOOL)managed
{
  managedCopy = managed;
  v11 = *MEMORY[0x277D85DE8];
  v5 = docPersonaLogHandle;
  if (!docPersonaLogHandle)
  {
    DOCInitLogging();
    v5 = docPersonaLogHandle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (managedCopy)
    {
      v6 = @"YES";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_249340000, v5, OS_LOG_TYPE_DEFAULT, "MDM : setting isContentManaged to : %@", &v9, 0xCu);
  }

  self->_isContentManaged = managedCopy;
  v7 = +[DOCManagedPermission defaultPermission];
  objc_sync_enter(v7);
  [v7 setHostAccountDataOwnerState:managedCopy];
  objc_sync_exit(v7);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)configurationForImportingDocumentContentTypes:(uint64_t)a1 mode:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCConfiguration.m" lineNumber:87 description:@"mode must be one of DOCDocumentInteractionModeImportOpen or DOCDocumentInteractionModeImportCopy."];
}

void __63__DOCConfiguration_pickableContentTypesFromAllowedConversions___block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 identifier];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_249340000, v3, OS_LOG_TYPE_ERROR, "%@ is not part of Image I/O Destination types so conversion not allowed", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)configurationForExportingDocumentsToURLs:(uint64_t)a1 mode:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCConfiguration.m" lineNumber:147 description:@"urls cannot be nil."];
}

+ (void)configurationForExportingDocumentsToURLs:(uint64_t)a1 mode:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCConfiguration.m" lineNumber:149 description:@"mode must be one of DOCDocumentInteractionModeExportMove or DOCDocumentInteractionModeExportCopy."];
}

@end