@interface BRContainer
+ (BOOL)canMoveFilesWithoutDownloadingFromContainer:(id)a3 toContainer:(id)a4;
+ (BOOL)isDocumentScopePublicWithProperties:(id)a3 mangledID:(id)a4;
+ (BOOL)versionOfBundle:(id)a3 changedFromVersion:(id)a4;
+ (id)_URLForPlistOfMangledID:(id)a3;
+ (id)_bundleIDVersionsWithProperties:(id)a3 mangledID:(id)a4;
+ (id)_bundleIDsWithProperties:(id)a3;
+ (id)_containerRepositoryURLForMangledID:(id)a3;
+ (id)_documentsTypesWithProperties:(id)a3;
+ (id)_exportedTypesWithProperties:(id)a3;
+ (id)_iconGeneratorVersionWithProperties:(id)a3;
+ (id)_iconMetadataWithProperties:(id)a3;
+ (id)_iconURLsWithProperties:(id)a3 mangledID:(id)a4;
+ (id)_importedTypesWithProperties:(id)a3;
+ (id)_isDocumentScopePublicAsNumberWithProperties:(id)a3 mangledID:(id)a4;
+ (id)_localizedNameWithProperties:(id)a3 mangledID:(id)a4 preferredLanguages:(id)a5;
+ (id)_pathForIconName:(id)a3 mangledID:(id)a4;
+ (id)_sanitizedContainerFallbackNameForMangledID:(id)a3;
+ (id)allContainersByContainerID;
+ (id)bundleIdentifiersEnumeratorForProperties:(id)a3;
+ (id)bundlePropertyEnumerator:(id)a3 valuesOfClass:(Class)a4 forProperties:(id)a5;
+ (id)classesForDecoding;
+ (id)containerForItemAtURL:(id)a3 error:(id *)a4;
+ (id)containerForMangledID:(id)a3;
+ (id)containerInRepositoryURL:(id)a3 createIfMissing:(BOOL)a4 error:(id *)a5;
+ (id)containersRepositoryURL;
+ (id)documentContainers;
+ (id)documentsContainersInBackupHomeAtURL:(id)a3 error:(id *)a4;
+ (id)localizedNameForDefaultCloudDocsContainer;
+ (id)localizedNameForDesktopContainer;
+ (id)localizedNameForDocumentsContainer;
+ (id)propertiesForMangledID:(id)a3 usingBundle:(__CFBundle *)a4 minimumBundleVersion:(id)a5 bundleIcons:(id *)a6;
+ (void)_generateiOSIconsForMangledID:(id)a3 usingBundle:(__CFBundle *)a4 generatedIcons:(id)a5;
+ (void)forceRefreshAllContainersWithCompletion:(id)a3;
+ (void)forceRefreshContainers:(id)a3 completion:(id)a4;
+ (void)initialize;
+ (void)postContainerListUpdateNotification;
+ (void)postContainerStatusChangeNotificationWithID:(id)a3 key:(id)a4 value:(id)a5;
+ (void)unregisterCurrentProcessAsPriorityHint;
- (BOOL)_updateMetadataOnDiskWithProperties:(id)a3;
- (BOOL)containsExcludedDocumentsOnTheFSWithExcludedButPreservedFilename:(id)a3 excludedButPreservedExtensions:(id)a4 andStampUploadedAppWithXattr:(BOOL)a5;
- (BOOL)deleteAllContentsOnClientAndServer:(BOOL)a3 error:(id *)a4;
- (BOOL)hasIconWithName:(id)a3;
- (BOOL)isDocumentScopePublic;
- (BOOL)registerCurrentProcessAsPriorityHintWithError:(id *)a3;
- (BOOL)updateMetadataWithExtractorProperties:(id)a3 iconPaths:(id)a4 bundleID:(id)a5;
- (BOOL)updateMetadataWithRecordData:(id)a3 iconPaths:(id)a4;
- (BRContainer)initWithCoder:(id)a3;
- (BRContainer)initWithDocsOrDesktopContainerID:(id)a3;
- (BRContainer)initWithMangledID:(id)a3;
- (BRContainer)initWithMangledID:(id)a3 dataRepresentation:(id)a4;
- (NSDate)lastServerUpdate;
- (NSSet)bundleIdentifiers;
- (NSSet)documentsTypes;
- (NSSet)exportedTypes;
- (NSSet)importedTypes;
- (NSString)localizedName;
- (NSURL)documentsURL;
- (NSURL)trashURL;
- (NSURL)url;
- (id)_containerRepositoryURL;
- (id)_imageDataForSize:(CGSize)a3 scale:(int64_t)a4 isiOSIcon:(BOOL *)a5 shouldTransformToAppIcon:(BOOL *)a6;
- (id)_pathForIconName:(id)a3;
- (id)_pathForPlist;
- (id)bestFittingImageDataForSize:(CGSize)a3 shouldTransformToAppIcon:(BOOL *)a4;
- (id)bundleIDVersions;
- (id)computedProperties;
- (id)copyDataRepresentation;
- (id)description;
- (id)iconGeneratorVersion;
- (id)iconMetadata;
- (id)iconURLs;
- (id)imageRepresentationsAvailable;
- (id)localizedNameWithPreferredLanguages:(id)a3;
- (id)shortDescription;
- (id)trashRestoreStringForURL:(id)a3;
- (id)versionNumberForBundleIdentifier:(id)a3;
- (unsigned)currentStatus;
- (void)_performWhileAccessingSecurityScopedContainer:(id)a3;
- (void)_replaceDataRepresentationWithData:(id)a3;
- (void)accessDataRepresentationInBlock:(id)a3;
- (void)accessPropertiesInBlock:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)forceRefreshWithCompletion:(id)a3;
- (void)setCurrentStatus:(unsigned int)a3;
- (void)setLastServerUpdate:(id)a3;
- (void)setUrlRoot:(id)a3;
@end

@implementation BRContainer

+ (void)initialize
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___BRContainer;
  objc_msgSendSuper2(&v4, sel_initialize);
  v2 = BRContainerFormatVersionNumberValue;
  BRContainerFormatVersionNumberValue = &unk_1F23E6898;

  v3 = BRContainerIconGeneratorVersionNumberValue;
  BRContainerIconGeneratorVersionNumberValue = &unk_1F23E68B0;
}

+ (id)classesForDecoding
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, objc_opt_class(), 0}];
}

+ (id)localizedNameForDefaultCloudDocsContainer
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat(@"iCloud Drive", @"Localizable", v2, v3, v4, v5, v6, v7, v10);

  return v8;
}

- (BOOL)isDocumentScopePublic
{
  v2 = self;
  objc_sync_enter(v2);
  isDocumentScopePublicAsNumber = v2->_isDocumentScopePublicAsNumber;
  if (!isDocumentScopePublicAsNumber)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__BRContainer_isDocumentScopePublic__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = v2;
    [(BRContainer *)v2 accessPropertiesInBlock:v6];
    isDocumentScopePublicAsNumber = v2->_isDocumentScopePublicAsNumber;
  }

  v4 = [(NSNumber *)isDocumentScopePublicAsNumber BOOLValue];
  objc_sync_exit(v2);

  return v4;
}

- (NSString)localizedName
{
  v2 = self;
  objc_sync_enter(v2);
  localizedName = v2->_localizedName;
  if (!localizedName)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28__BRContainer_localizedName__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = v2;
    [(BRContainer *)v2 accessPropertiesInBlock:v6];
    localizedName = v2->_localizedName;
  }

  v4 = localizedName;
  objc_sync_exit(v2);

  return v4;
}

- (BRContainer)initWithMangledID:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = BRContainer;
  v6 = [(BRContainer *)&v21 init];
  if (v6)
  {
    if (initWithMangledID__onceToken != -1)
    {
      [BRContainer initWithMangledID:];
    }

    objc_storeStrong(&v6->_mangledID, a3);
    v6->_shouldUsePurgeableData = 1;
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v8 = containerWorkloop;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create_with_target_V2("clouddocs.container.default", v9, v8);

    observationSetupQueueForDefaultConnection = v6->_observationSetupQueueForDefaultConnection;
    v6->_observationSetupQueueForDefaultConnection = v10;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v13 = containerWorkloop;
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(v12, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create_with_target_V2("clouddocs.container.secondary", v14, v13);

    observationSetupQueueForSecondaryConnection = v6->_observationSetupQueueForSecondaryConnection;
    v6->_observationSetupQueueForSecondaryConnection = v15;

    v17 = [MEMORY[0x1E69DF068] sharedManager];
    v18 = [v17 br_currentPersonaID];
    personaID = v6->_personaID;
    v6->_personaID = v18;
  }

  return v6;
}

uint64_t __33__BRContainer_initWithMangledID___block_invoke()
{
  containerWorkloop = dispatch_workloop_create("cloudocs.container.workloop");

  return MEMORY[0x1EEE66BB8]();
}

- (BRContainer)initWithDocsOrDesktopContainerID:(id)a3
{
  v4 = a3;
  v5 = [[BRMangledID alloc] initWithAppLibraryName:v4];

  v6 = [(BRContainer *)self initWithMangledID:v5];
  v7 = v6;
  if (v6)
  {
    isDocumentScopePublicAsNumber = v6->_isDocumentScopePublicAsNumber;
    v6->_isDocumentScopePublicAsNumber = MEMORY[0x1E695E118];

    v7->_isInCloudDocsZone = 1;
  }

  return v7;
}

- (BRContainer)initWithMangledID:(id)a3 dataRepresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [BRContainer initWithMangledID:dataRepresentation:];
  }

  v8 = [(BRContainer *)self initWithMangledID:v6];
  v9 = v8;
  if (v8)
  {
    v8->_shouldUsePurgeableData = 0;
    if (!v7)
    {
      v10 = brc_bread_crumbs("[BRContainer initWithMangledID:dataRepresentation:]", 325);
      v11 = brc_default_log(1, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [BRContainer initWithMangledID:dataRepresentation:];
      }
    }

    [(BRContainer *)v9 _replaceDataRepresentationWithData:v7];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  mangledID = self->_mangledID;
  v6 = [(BRContainer *)self shortDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p id:%@ %@>", v4, self, mangledID, v6];

  return v7;
}

- (BRContainer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [[BRMangledID alloc] initWithAppLibraryName:v5];
  v7 = [(BRContainer *)self initWithMangledID:v6];
  if (v7)
  {
    v7->_isCloudSyncTCCDisabled = [v4 decodeBoolForKey:@"BRContainerIsCloudSyncTCCDisabledKey"];
    v7->_isInInitialState = [v4 decodeBoolForKey:@"BRContainerIsInInitialState"];
    v7->_isInCloudDocsZone = [v4 decodeBoolForKey:@"BRContainerIsInCloudDocsZone"];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "decodeBoolForKey:", @"BRContainerIsDocumentScopePublic"}];
    isDocumentScopePublicAsNumber = v7->_isDocumentScopePublicAsNumber;
    v7->_isDocumentScopePublicAsNumber = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BRContainerDataKey"];
    dataRepresentation = v7->_dataRepresentation;
    v7->_dataRepresentation = v10;

    v7->_shouldUsePurgeableData = [v4 decodeBoolForKey:@"BRContainerShouldUsePurgeableDataKey"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BRContainerPersonaID"];
    personaID = v7->_personaID;
    v7->_personaID = v12;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BRMangledID *)self->_mangledID appLibraryOrZoneName];
  [v4 encodeObject:v5 forKey:@"identifier"];

  [v4 encodeBool:self->_isCloudSyncTCCDisabled forKey:@"BRContainerIsCloudSyncTCCDisabledKey"];
  [v4 encodeBool:self->_isInInitialState forKey:@"BRContainerIsInInitialState"];
  [v4 encodeBool:self->_isInCloudDocsZone forKey:@"BRContainerIsInCloudDocsZone"];
  [v4 encodeBool:-[BRContainer isDocumentScopePublic](self forKey:{"isDocumentScopePublic"), @"BRContainerIsDocumentScopePublic"}];
  [v4 encodeObject:self->_personaID forKey:@"BRContainerPersonaID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [v6 userInfo];
    NSClassFromString(@"BRCClientPrivilegesDescriptor");
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 userInfo];
    }

    else
    {
      v8 = 0;
    }

    if (([v8 hasAuditToken] & 1) == 0)
    {
      goto LABEL_12;
    }

    if (v8)
    {
      [v8 auditToken];
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0;
    if (![0 hasAuditToken])
    {
      goto LABEL_12;
    }
  }

  v8 = 0;
  v14 = 0u;
  v15 = 0u;
LABEL_11:
  v9 = *MEMORY[0x1E69E9BD0];
  v10 = [(BRContainer *)self _pathForPlist];
  v11 = [v10 fileSystemRepresentation];
  LODWORD(v9) = sandbox_check_by_audit_token();

  if (!v9)
  {
    [v4 encodeBool:1 forKey:{@"BRContainerShouldUsePurgeableDataKey", v11}];
    goto LABEL_13;
  }

LABEL_12:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __31__BRContainer_encodeWithCoder___block_invoke;
  v12[3] = &unk_1E7A164B8;
  v13 = v4;
  [(BRContainer *)self accessDataRepresentationInBlock:v12];

LABEL_13:
}

uint64_t __31__BRContainer_encodeWithCoder___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) encodeObject:a2 forKey:@"BRContainerDataKey"];
  }

  return result;
}

- (void)accessPropertiesInBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__BRContainer_accessPropertiesInBlock___block_invoke;
  v6[3] = &unk_1E7A164E0;
  v7 = v4;
  v5 = v4;
  [(BRContainer *)self accessDataRepresentationInBlock:v6];
}

void __39__BRContainer_accessPropertiesInBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v7 = 0;
    v3 = [MEMORY[0x1E696AE40] propertyListWithData:a2 options:0 format:0 error:&v7];
    v4 = v7;
    if (!v3)
    {
      v5 = brc_bread_crumbs("[BRContainer accessPropertiesInBlock:]_block_invoke", 456);
      v6 = brc_default_log(0, 0);
      if (os_log_type_enabled(v6, 0x90u))
      {
        __39__BRContainer_accessPropertiesInBlock___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (id)computedProperties
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__BRContainer_computedProperties__block_invoke;
  v4[3] = &unk_1E7A16508;
  v4[4] = &v5;
  [(BRContainer *)self accessPropertiesInBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __36__BRContainer_isDocumentScopePublic__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _isDocumentScopePublicAsNumberWithProperties:v4 mangledID:*(*(a1 + 32) + 8)];

  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;
}

- (id)bundleIDVersions
{
  v2 = self;
  objc_sync_enter(v2);
  bundleIDVersions = v2->_bundleIDVersions;
  if (!bundleIDVersions)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __31__BRContainer_bundleIDVersions__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = v2;
    [(BRContainer *)v2 accessPropertiesInBlock:v6];
    bundleIDVersions = v2->_bundleIDVersions;
  }

  v4 = bundleIDVersions;
  objc_sync_exit(v2);

  return v4;
}

void __31__BRContainer_bundleIDVersions__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _bundleIDVersionsWithProperties:v4 mangledID:*(*(a1 + 32) + 8)];

  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;
}

- (NSSet)bundleIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  bundleIDs = v2->_bundleIDs;
  if (!bundleIDs)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__BRContainer_bundleIdentifiers__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = v2;
    [(BRContainer *)v2 accessPropertiesInBlock:v6];
    bundleIDs = v2->_bundleIDs;
  }

  v4 = bundleIDs;
  objc_sync_exit(v2);

  return v4;
}

void __32__BRContainer_bundleIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _bundleIDsWithProperties:v4];

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;
}

void __28__BRContainer_localizedName__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _localizedNameWithProperties:v4 mangledID:*(*(a1 + 32) + 8)];

  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)localizedNameForDesktopContainer
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat(@"Desktop", @"Localizable", v2, v3, v4, v5, v6, v7, v10);

  return v8;
}

+ (id)localizedNameForDocumentsContainer
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat(@"Documents", @"Localizable", v2, v3, v4, v5, v6, v7, v10);

  return v8;
}

- (id)localizedNameWithPreferredLanguages:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BRContainer *)self computedProperties];
  v6 = [v5 mutableCopy];

  if (v6 || ([MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"purgeableData" value:0], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [objc_opt_class() _localizedNameWithProperties:v6 mangledID:self->_mangledID preferredLanguages:v4];
  }

  else
  {
    v9 = v8;
    v10 = brc_bread_crumbs("[BRContainer localizedNameWithPreferredLanguages:]", 550);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      mangledID = self->_mangledID;
      v15 = 138412802;
      v16 = mangledID;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_debug_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] failed parsing plist for container %@: %@%@", &v15, 0x20u);
    }

    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSSet)documentsTypes
{
  v2 = self;
  objc_sync_enter(v2);
  documentsTypes = v2->_documentsTypes;
  if (!documentsTypes)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__BRContainer_documentsTypes__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = v2;
    [(BRContainer *)v2 accessPropertiesInBlock:v6];
    documentsTypes = v2->_documentsTypes;
  }

  v4 = documentsTypes;
  objc_sync_exit(v2);

  return v4;
}

void __29__BRContainer_documentsTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _documentsTypesWithProperties:v4];

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = v5;
}

- (NSSet)exportedTypes
{
  v2 = self;
  objc_sync_enter(v2);
  exportedTypes = v2->_exportedTypes;
  if (!exportedTypes)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28__BRContainer_exportedTypes__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = v2;
    [(BRContainer *)v2 accessPropertiesInBlock:v6];
    exportedTypes = v2->_exportedTypes;
  }

  v4 = exportedTypes;
  objc_sync_exit(v2);

  return v4;
}

void __28__BRContainer_exportedTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _exportedTypesWithProperties:v4];

  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = v5;
}

- (NSSet)importedTypes
{
  v2 = self;
  objc_sync_enter(v2);
  importedTypes = v2->_importedTypes;
  if (!importedTypes)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28__BRContainer_importedTypes__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = v2;
    [(BRContainer *)v2 accessPropertiesInBlock:v6];
    importedTypes = v2->_importedTypes;
  }

  v4 = importedTypes;
  objc_sync_exit(v2);

  return v4;
}

void __28__BRContainer_importedTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _importedTypesWithProperties:v4];

  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;
}

- (id)iconMetadata
{
  v2 = self;
  objc_sync_enter(v2);
  iconMetadata = v2->_iconMetadata;
  if (!iconMetadata)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __27__BRContainer_iconMetadata__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = v2;
    [(BRContainer *)v2 accessPropertiesInBlock:v6];
    iconMetadata = v2->_iconMetadata;
  }

  v4 = iconMetadata;
  objc_sync_exit(v2);

  return v4;
}

void __27__BRContainer_iconMetadata__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _iconMetadataWithProperties:v4];

  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;
}

- (id)iconGeneratorVersion
{
  v2 = self;
  objc_sync_enter(v2);
  iconGeneratorVersion = v2->_iconGeneratorVersion;
  if (!iconGeneratorVersion)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__BRContainer_iconGeneratorVersion__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = v2;
    [(BRContainer *)v2 accessPropertiesInBlock:v6];
    iconGeneratorVersion = v2->_iconGeneratorVersion;
  }

  v4 = iconGeneratorVersion;
  objc_sync_exit(v2);

  return v4;
}

void __35__BRContainer_iconGeneratorVersion__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _iconGeneratorVersionWithProperties:v4];

  v6 = *(a1 + 32);
  v7 = *(v6 + 88);
  *(v6 + 88) = v5;
}

- (id)imageRepresentationsAvailable
{
  v2 = [(BRContainer *)self iconMetadata];
  v3 = [v2 allValues];

  return v3;
}

- (void)setUrlRoot:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(BRMangledID *)v4->_mangledID mangledIDString];
  v6 = [v8 URLByAppendingPathComponent:v5 isDirectory:1];
  url = v4->_url;
  v4->_url = v6;

  objc_sync_exit(v4);
}

- (NSURL)url
{
  v2 = self;
  objc_sync_enter(v2);
  url = v2->_url;
  if (!url)
  {
    personaID = v2->_personaID;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __18__BRContainer_url__block_invoke;
    v7[3] = &unk_1E7A14830;
    v7[4] = v2;
    BRPerformWithPersonaAndError(personaID, v7);
    url = v2->_url;
  }

  v5 = url;
  objc_sync_exit(v2);

  return v5;
}

void __18__BRContainer_url__block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [BRDaemonConnection mobileDocumentsURLForPersonaID:*(*(a1 + 32) + 184) needsPersonaSwitch:a2 != 0];
  v3 = [*(*(a1 + 32) + 8) mangledIDString];
  v4 = [v7 URLByAppendingPathComponent:v3 isDirectory:1];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
}

- (NSURL)documentsURL
{
  v3 = [(BRMangledID *)self->_mangledID isCloudDocsMangledID];
  v4 = [(BRContainer *)self url];
  v5 = v4;
  if (!v3)
  {
    v6 = [v4 URLByAppendingPathComponent:@"Documents" isDirectory:1];

    v5 = v6;
  }

  return v5;
}

- (NSURL)trashURL
{
  if (![(BRMangledID *)self->_mangledID isDesktopMangledID])
  {
    [(BRMangledID *)self->_mangledID isDocumentsMangledID];
  }

  v3 = [(BRContainer *)self documentsURL];
  v4 = [v3 URLByAppendingPathComponent:@".Trash" isDirectory:1];

  return v4;
}

- (id)trashRestoreStringForURL:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BRContainer *)self documentsURL];
  v6 = [v5 path];

  if (v6)
  {
    v7 = [v4 path];
    v8 = [v7 br_realpath];
    v9 = [v6 br_realpath];
    v10 = [v8 br_pathRelativeToPath:v9];

    if (v10)
    {
      goto LABEL_9;
    }

    v11 = brc_bread_crumbs("[BRContainer trashRestoreStringForURL:]", 675);
    v12 = brc_default_log(1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 path];
      v19 = 138412802;
      v20 = v13;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v11;
      v14 = "[WARNING] Can't find the put back relative URL of %@ to %@%@";
      v15 = v12;
      v16 = 32;
LABEL_7:
      _os_log_impl(&dword_1AE2A9000, v15, OS_LOG_TYPE_DEFAULT, v14, &v19, v16);
    }
  }

  else
  {
    v11 = brc_bread_crumbs("[BRContainer trashRestoreStringForURL:]", 670);
    v12 = brc_default_log(1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 path];
      v19 = 138412546;
      v20 = v13;
      v21 = 2112;
      v22 = v11;
      v14 = "[WARNING] Can't find the put back relative URL of %@%@";
      v15 = v12;
      v16 = 22;
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_9:

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)containersRepositoryURL
{
  v2 = +[BRDaemonConnection cloudDocsAppSupportURL];
  v3 = [v2 URLByAppendingPathComponent:@"session/containers" isDirectory:1];

  return v3;
}

+ (id)allContainersByContainerID
{
  v2 = +[BRContainerCache containerCache];
  v3 = [v2 allContainersByID];

  return v3;
}

+ (id)documentContainers
{
  v2 = +[BRContainerCache containerCache];
  v3 = [v2 documentContainers];

  return v3;
}

- (id)_imageDataForSize:(CGSize)a3 scale:(int64_t)a4 isiOSIcon:(BOOL *)a5 shouldTransformToAppIcon:(BOOL *)a6
{
  height = a3.height;
  width = a3.width;
  v44 = *MEMORY[0x1E69E9840];
  memset(v31, 0, sizeof(v31));
  __brc_create_section(0, "[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 741, 0, v31);
  v11 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 741);
  v12 = brc_default_log(1, 0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    mangledID = self->_mangledID;
    *buf = 134219266;
    v33 = v31[0];
    v34 = 2112;
    v35 = mangledID;
    v36 = 2048;
    v37 = width;
    v38 = 2048;
    v39 = height;
    v40 = 2048;
    v41 = a4;
    v42 = 2112;
    v43 = v11;
    _os_log_debug_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx requesting image for %@ (size:%.1fx%.1f@%ld)%@", buf, 0x3Eu);
  }

  v13 = BRContainerIconNameForSizeAndScale(width, height, a4);
  if (v13)
  {
    v14 = [(BRContainer *)self _pathForIconName:v13];
    if (!v14)
    {
      v15 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 751);
      v18 = brc_default_log(1, 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v33 = v13;
        v34 = 2112;
        v35 = v15;
        _os_log_impl(&dword_1AE2A9000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] can't construct a path for imageName=%@%@", buf, 0x16u);
      }

      v16 = 0;
      goto LABEL_26;
    }

    v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
    v30 = 0;
    v16 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v15 options:0 error:&v30];
    v17 = v30;
    v18 = v17;
    if (v16)
    {
      v19 = [v13 hasSuffix:@"iOS"];
      v20 = v19;
      if (a5)
      {
        *a5 = v19;
        v21 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 767);
        v22 = brc_default_log(1, 0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [BRContainer _imageDataForSize:a5 scale:? isiOSIcon:? shouldTransformToAppIcon:?];
        }
      }

      if (!a6)
      {
        goto LABEL_26;
      }

      v23 = [(BRContainer *)self iconGeneratorVersion];
      *a6 = ([v23 longLongValue] < 1) & v20;

      v24 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 771);
      v25 = brc_default_log(1, 0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [BRContainer _imageDataForSize:a6 scale:? isiOSIcon:? shouldTransformToAppIcon:?];
      }
    }

    else if (([v17 br_isCocoaErrorCode:4]& 1) != 0 || [v18 br_isCocoaErrorCode:260])
    {
      v24 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 759);
      v25 = brc_default_log(1, 0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:];
      }
    }

    else
    {
      v24 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 761);
      v25 = brc_default_log(1, 0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v33 = v15;
        v34 = 2112;
        v35 = v18;
        v36 = 2112;
        v37 = *&v24;
        _os_log_impl(&dword_1AE2A9000, v25, OS_LOG_TYPE_DEFAULT, "[WARNING] can't create NSData with contents of '%@'; %@%@", buf, 0x20u);
      }
    }

LABEL_26:
    goto LABEL_27;
  }

  v14 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 744);
  v15 = brc_default_log(1, 0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:];
  }

  v16 = 0;
LABEL_27:

  __brc_leave_section(v31);
  v27 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (BOOL)canMoveFilesWithoutDownloadingFromContainer:(id)a3 toContainer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_6;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = v5[23];
  if (v8 | v7[23])
  {
    if (![v8 isEqualToString:?])
    {
      goto LABEL_9;
    }
  }

  v9 = [v5 identifier];
  v10 = [v7 identifier];
  v11 = [v9 isEqualToString:v10];

  if (v11 & 1) != 0 || [v5 isInCloudDocsZone] && (objc_msgSend(v7, "isInCloudDocsZone"))
  {
LABEL_6:
    v12 = 1;
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  return v12;
}

- (void)forceRefreshWithCompletion:(id)a3
{
  v4 = a3;
  personaID = self->_personaID;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__BRContainer_forceRefreshWithCompletion___block_invoke;
  v7[3] = &unk_1E7A15590;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  BRPerformWithPersonaAndError(personaID, v7);
}

void __42__BRContainer_forceRefreshWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = +[BRDaemonConnection defaultConnection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__BRContainer_forceRefreshWithCompletion___block_invoke_2;
    v10[3] = &unk_1E7A148D0;
    v11 = *(a1 + 40);
    v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
    v7 = [*(a1 + 32) identifier];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__BRContainer_forceRefreshWithCompletion___block_invoke_3;
    v8[3] = &unk_1E7A148D0;
    v9 = *(a1 + 40);
    [v6 forceSyncWithBarrierContainerID:v7 timeout:0 reply:v8];
  }
}

+ (void)forceRefreshAllContainersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [BRContainer allContainersBlockIfNeeded:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__BRContainer_forceRefreshAllContainersWithCompletion___block_invoke;
  v7[3] = &unk_1E7A148D0;
  v8 = v4;
  v6 = v4;
  [a1 forceRefreshContainers:v5 completion:v7];
}

void __55__BRContainer_forceRefreshAllContainersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs("+[BRContainer forceRefreshAllContainersWithCompletion:]_block_invoke", 863);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, 0x90u))
    {
      __55__BRContainer_forceRefreshAllContainersWithCompletion___block_invoke_cold_1();
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

+ (id)bundleIdentifiersEnumeratorForProperties:(id)a3
{
  v3 = a3;
  v4 = [[BRContainerBundleIdentifiersEnumerator alloc] initWithContainerPlist:v3];

  return v4;
}

+ (id)bundlePropertyEnumerator:(id)a3 valuesOfClass:(Class)a4 forProperties:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[BRContainerBundlePropertyEnumerator alloc] initWithContainerPlist:v7 propertyKey:v8 valuesOfClass:a4];

  return v9;
}

- (void)_replaceDataRepresentationWithData:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  memset(v27, 0, sizeof(v27));
  __brc_create_section(0, "[BRContainer _replaceDataRepresentationWithData:]", 884, 0, v27);
  v6 = brc_bread_crumbs("[BRContainer _replaceDataRepresentationWithData:]", 884);
  v7 = brc_default_log(1, 0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    mangledID = self->_mangledID;
    if (self->_shouldUsePurgeableData)
    {
      v25 = "YES";
    }

    else
    {
      v25 = "NO";
    }

    *buf = 134218754;
    v29 = v27[0];
    v30 = 2112;
    v31 = mangledID;
    v32 = 2080;
    v33 = v25;
    v34 = 2112;
    v35 = v6;
    _os_log_debug_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Replace data for container %@. Use purgeable data [%s].%@", buf, 0x2Au);
  }

  v8 = self;
  objc_sync_enter(v8);
  if (!v8->_shouldUsePurgeableData)
  {
    objc_storeStrong(&v8->_dataRepresentation, a3);
    if (v5)
    {
      v26 = 0;
      v9 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:2 format:0 error:&v26];
      v10 = v26;

      if (!v9)
      {
        v11 = brc_bread_crumbs("[BRContainer _replaceDataRepresentationWithData:]", 893);
        v12 = brc_default_log(0, 0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          [BRContainer _replaceDataRepresentationWithData:];
        }
      }
    }
  }

  purgeableDataRepresentation = v8->_purgeableDataRepresentation;
  v8->_purgeableDataRepresentation = 0;

  bundleIDs = v8->_bundleIDs;
  v8->_bundleIDs = 0;

  bundleIDVersions = v8->_bundleIDVersions;
  v8->_bundleIDVersions = 0;

  localizedName = v8->_localizedName;
  v8->_localizedName = 0;

  isDocumentScopePublicAsNumber = v8->_isDocumentScopePublicAsNumber;
  v8->_isDocumentScopePublicAsNumber = 0;

  documentsTypes = v8->_documentsTypes;
  v8->_documentsTypes = 0;

  exportedTypes = v8->_exportedTypes;
  v8->_exportedTypes = 0;

  importedTypes = v8->_importedTypes;
  v8->_importedTypes = 0;

  iconMetadata = v8->_iconMetadata;
  v8->_iconMetadata = 0;

  iconURLs = v8->_iconURLs;
  v8->_iconURLs = 0;

  objc_sync_exit(v8);
  if (+[BRContainerCache hasDaemonicParts])
  {
    +[BRContainer postContainerListUpdateNotification];
  }

  __brc_leave_section(v27);

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_containerRepositoryURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  personaID = self->_personaID;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__BRContainer__containerRepositoryURL__block_invoke;
  v5[3] = &unk_1E7A15CA0;
  v5[4] = self;
  v5[5] = &v6;
  BRPerformWithPersonaAndError(personaID, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __38__BRContainer__containerRepositoryURL__block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v3 = result;
    v4 = [BRContainer _containerRepositoryURLForMangledID:*(*(result + 32) + 8)];
    v5 = *(*(v3 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)_containerRepositoryURLForMangledID:(id)a3
{
  v4 = a3;
  v5 = [a1 containersRepositoryURL];
  v6 = [v4 appLibraryOrZoneName];

  v7 = [v5 URLByAppendingPathComponent:v6];

  return v7;
}

- (id)_pathForPlist
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  personaID = self->_personaID;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__BRContainer__pathForPlist__block_invoke;
  v5[3] = &unk_1E7A15CA0;
  v5[4] = self;
  v5[5] = &v6;
  BRPerformWithPersonaAndError(personaID, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__BRContainer__pathForPlist__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v7 = [BRContainer _URLForPlistOfMangledID:*(*(a1 + 32) + 8)];
    v4 = [v7 path];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)_pathForIconName:(id)a3
{
  v4 = a3;
  v5 = [(BRContainer *)self _containerRepositoryURL];
  v6 = [v4 stringByAppendingPathExtension:@"png"];

  v7 = [v5 URLByAppendingPathComponent:v6];
  v8 = [v7 path];

  return v8;
}

+ (id)_pathForIconName:(id)a3 mangledID:(id)a4
{
  v6 = a3;
  v7 = [a1 _containerRepositoryURLForMangledID:a4];
  v8 = [v6 stringByAppendingPathExtension:@"png"];

  v9 = [v7 URLByAppendingPathComponent:v8];
  v10 = [v9 path];

  return v10;
}

+ (id)_URLForPlistOfMangledID:(id)a3
{
  v3 = [BRContainer _containerRepositoryURLForMangledID:a3];
  v4 = [v3 URLByAppendingPathExtension:@"plist"];

  return v4;
}

- (void)_performWhileAccessingSecurityScopedContainer:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  imageSandboxExtension = self->_imageSandboxExtension;
  if (!imageSandboxExtension)
  {
LABEL_7:
    v4[2](v4);
    goto LABEL_8;
  }

  [(NSData *)imageSandboxExtension bytes];
  if (sandbox_extension_consume() < 0)
  {
    v6 = *__error();
    v7 = brc_bread_crumbs("[BRContainer _performWhileAccessingSecurityScopedContainer:]", 970);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v10 = self->_imageSandboxExtension;
      v11 = 138412802;
      v12 = v10;
      v13 = 1024;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] Failed to consume extension %@ %{errno}d%@", &v11, 0x1Cu);
    }

    *__error() = v6;
    goto LABEL_7;
  }

  v4[2](v4);
  sandbox_extension_release();
LABEL_8:

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)_bundleIDsWithProperties:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [a1 bundleIdentifiersEnumeratorForProperties:{v4, 0}];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObject:*(*(&v13 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_isDocumentScopePublicAsNumberWithProperties:(id)a3 mangledID:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 isCloudDocsMangledID])
  {
    v8 = MEMORY[0x1E695E118];
  }

  else
  {
    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [v9 persistentDomainForName:@"com.apple.bird"];

    v11 = [v7 appLibraryOrZoneName];
    v12 = [v10 objectForKey:v11];
    v13 = [v12 objectForKey:@"BRContainerIsDocumentScopePublic"];
    v14 = [v13 BOOLValue];

    if (v14)
    {
      v8 = MEMORY[0x1E695E118];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = [a1 bundlePropertyEnumerator:@"BRContainerIsDocumentScopePublic" valuesOfClass:objc_opt_class() forProperties:{v6, 0}];
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        v17 = 0;
        v18 = *v23;
        while (2)
        {
          v19 = 0;
          v17 += v16;
          do
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v15);
            }

            if (![*(*(&v22 + 1) + 8 * v19) BOOLValue])
            {

              v8 = MEMORY[0x1E695E110];
              goto LABEL_16;
            }

            ++v19;
          }

          while (v16 != v19);
          v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        v16 = v17 > 0;
      }

      v8 = [MEMORY[0x1E696AD98] numberWithInt:v16];
    }

LABEL_16:
  }

  v20 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_bundleIDVersionsWithProperties:(id)a3 mangledID:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v28 = [MEMORY[0x1E695DF90] dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = [a1 bundleIdentifiersEnumeratorForProperties:v5];
    v7 = [v6 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (!v7)
    {
      goto LABEL_24;
    }

    v8 = v7;
    v9 = *v30;
    v27 = *v30;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:{v11, v27}];
        if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v13 = brc_bread_crumbs("+[BRContainer _bundleIDVersionsWithProperties:mangledID:]", 1039);
          v14 = brc_default_log(1, 0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = objc_opt_class();
            *buf = 138412802;
            v36 = v11;
            v37 = 2112;
            v38 = v16;
            v39 = 2112;
            v40 = v13;
            v17 = v16;
            _os_log_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] failed retrieving bundle properties for %@: unexpected kind of class (expected: NSDictionary, actual: %@)%@", buf, 0x20u);
          }
        }

        else
        {
          v13 = [v12 objectForKeyedSubscript:@"BRContainerFormatVersionNumber"];
          if (!v13)
          {
            goto LABEL_22;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v12 objectForKeyedSubscript:@"BRContainerVersionNumber"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33[0] = @"BRContainerFormatVersionNumber";
              v33[1] = @"BRContainerVersionNumber";
              v34[0] = v13;
              v34[1] = v14;
              v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
              [v28 setObject:v15 forKeyedSubscript:v11];
            }

            else
            {
              v20 = v5;
              v21 = v6;
              v15 = brc_bread_crumbs("+[BRContainer _bundleIDVersionsWithProperties:mangledID:]", 1060);
              v22 = brc_default_log(1, 0);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = objc_opt_class();
                *buf = 138412802;
                v36 = v11;
                v37 = 2112;
                v38 = v23;
                v39 = 2112;
                v40 = v15;
                v24 = v23;
                _os_log_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_DEFAULT, "[WARNING] failed retrieving bundle version for %@: unexpected kind of class (expected: NSString, actual: %@)%@", buf, 0x20u);
              }

              v6 = v21;
              v5 = v20;
              v9 = v27;
            }
          }

          else
          {
            v14 = brc_bread_crumbs("+[BRContainer _bundleIDVersionsWithProperties:mangledID:]", 1053);
            v15 = brc_default_log(1, 0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v18 = objc_opt_class();
              *buf = 138412802;
              v36 = v11;
              v37 = 2112;
              v38 = v18;
              v39 = 2112;
              v40 = v14;
              v19 = v18;
              _os_log_impl(&dword_1AE2A9000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] failed retrieving format version for %@: unexpected kind of class (expected: NSNumber, actual: %@)%@", buf, 0x20u);
            }
          }
        }

LABEL_22:
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v41 count:16];
      if (!v8)
      {
LABEL_24:

        goto LABEL_26;
      }
    }
  }

  v28 = 0;
LABEL_26:

  v25 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)_localizedNameWithProperties:(id)a3 mangledID:(id)a4 preferredLanguages:(id)a5
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isCloudDocsMangledID])
  {
    v11 = [objc_opt_class() localizedNameForDefaultCloudDocsContainer];
    goto LABEL_62;
  }

  if ([v9 isDesktopMangledID])
  {
    v11 = [objc_opt_class() localizedNameForDesktopContainer];
    goto LABEL_62;
  }

  if ([v9 isDocumentsMangledID])
  {
    v11 = [objc_opt_class() localizedNameForDocumentsContainer];
    goto LABEL_62;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v12 = [a1 bundleIdentifiersEnumeratorForProperties:v8];
  v13 = [v12 countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (!v13)
  {

    goto LABEL_61;
  }

  v14 = v13;
  v58 = a1;
  v59 = v9;
  v15 = 0;
  v16 = *v73;
  v17 = 0x1E696A000uLL;
  v64 = *v73;
  v61 = v10;
  v62 = v8;
  v60 = v12;
  do
  {
    v18 = 0;
    v65 = v14;
    do
    {
      if (*v73 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v19 = [v8 objectForKeyedSubscript:{*(*(&v72 + 1) + 8 * v18), v58}];
      if (v19)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v44 = v19;
          v45 = brc_bread_crumbs("+[BRContainer _localizedNameWithProperties:mangledID:preferredLanguages:]", 1099);
          v46 = brc_default_log(1, 0);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = objc_opt_class();
            *buf = 138412546;
            v78 = v47;
            v79 = 2112;
            v80 = v45;
            v48 = v47;
            _os_log_impl(&dword_1AE2A9000, v46, OS_LOG_TYPE_DEFAULT, "[WARNING] bundleProperties should be a dictionary (kind: %@)%@", buf, 0x16u);
          }

LABEL_50:

          v16 = v64;
          v14 = v65;
LABEL_51:

          goto LABEL_52;
        }
      }

      v67 = v15;
      v20 = [v19 objectForKeyedSubscript:@"BRContainerLocalizedNames"];
      if (v20)
      {
        v21 = v20;
        objc_opt_class();
        v66 = v19;
        if (objc_opt_isKindOfClass())
        {
          v22 = [v19 objectForKeyedSubscript:@"BRContainerFormatVersionNumber"];
          objc_opt_class();
          v63 = v22;
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 intValue]<= 6)
          {
            v23 = [v21 objectForKeyedSubscript:@"en"];
            if (v23)
            {
              goto LABEL_21;
            }

            v24 = [v19 objectForKeyedSubscript:@"BRContainerName"];
            v25 = *(v17 + 3776);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v27 = [v21 mutableCopy];
              v28 = [v19 objectForKeyedSubscript:@"BRContainerName"];
              [v27 setObject:v28 forKeyedSubscript:@"en"];

              v23 = v21;
              v21 = v27;
              v17 = 0x1E696A000uLL;
LABEL_21:
            }

            else
            {
              v17 = 0x1E696A000;
            }
          }

          v29 = MEMORY[0x1E696AAE8];
          v30 = [v21 allKeys];
          v31 = [v29 preferredLocalizationsFromArray:v30 forPreferences:v10];

          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v32 = v31;
          v33 = [v32 countByEnumeratingWithState:&v68 objects:v76 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v69;
            do
            {
              for (i = 0; i != v34; ++i)
              {
                if (*v69 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = [v21 objectForKeyedSubscript:*(*(&v68 + 1) + 8 * i)];
                if (v37)
                {
                  v38 = *(v17 + 3776);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if ([v37 length])
                    {

                      v15 = v37;
                      v10 = v61;
                      v8 = v62;
                      v9 = v59;
                      goto LABEL_63;
                    }
                  }

                  else
                  {
                    v39 = brc_bread_crumbs("+[BRContainer _localizedNameWithProperties:mangledID:preferredLanguages:]", 1154);
                    v40 = brc_default_log(1, 0);
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                    {
                      v41 = objc_opt_class();
                      *buf = 138412546;
                      v78 = v41;
                      v79 = 2112;
                      v80 = v39;
                      v42 = v41;
                      _os_log_impl(&dword_1AE2A9000, v40, OS_LOG_TYPE_DEFAULT, "[WARNING] localizedName should be a string (kind: %@)%@", buf, 0x16u);

                      v17 = 0x1E696A000;
                    }
                  }
                }
              }

              v34 = [v32 countByEnumeratingWithState:&v68 objects:v76 count:16];
            }

            while (v34);
          }

          v10 = v61;
          v8 = v62;
          v12 = v60;
          v16 = v64;
          v14 = v65;
          v43 = v63;
        }

        else
        {
          v43 = brc_bread_crumbs("+[BRContainer _localizedNameWithProperties:mangledID:preferredLanguages:]", 1159);
          v32 = brc_default_log(1, 0);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v49 = objc_opt_class();
            *buf = 138412546;
            v78 = v49;
            v79 = 2112;
            v80 = v43;
            v50 = v49;
            _os_log_impl(&dword_1AE2A9000, v32, OS_LOG_TYPE_DEFAULT, "[WARNING] localizedNames should be a dictionary (kind: %@)%@", buf, 0x16u);

            v17 = 0x1E696A000uLL;
          }
        }

        v19 = v66;
      }

      v15 = v67;
      if (v67)
      {
        goto LABEL_53;
      }

      v44 = v19;
      v45 = [v19 objectForKeyedSubscript:@"BRContainerName"];
      if (v45)
      {
        v51 = *(v17 + 3776);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v46 = brc_bread_crumbs("+[BRContainer _localizedNameWithProperties:mangledID:preferredLanguages:]", 1168);
          v52 = brc_default_log(1, 0);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = objc_opt_class();
            *buf = 138412546;
            v78 = v53;
            v79 = 2112;
            v80 = v46;
            v54 = v53;
            _os_log_impl(&dword_1AE2A9000, v52, OS_LOG_TYPE_DEFAULT, "[WARNING] fallbackName should be a string (kind: %@)%@", buf, 0x16u);

            v17 = 0x1E696A000;
          }

          v15 = 0;
          goto LABEL_50;
        }
      }

      if (![v45 length])
      {
        v15 = 0;
        goto LABEL_51;
      }

      v15 = v45;
LABEL_52:
      v19 = v44;
LABEL_53:

      ++v18;
    }

    while (v18 != v14);
    v55 = [v12 countByEnumeratingWithState:&v72 objects:v81 count:16];
    v14 = v55;
  }

  while (v55);

  a1 = v58;
  v9 = v59;
  if (!v15)
  {
LABEL_61:
    v11 = [a1 _sanitizedContainerFallbackNameForMangledID:v9];
LABEL_62:
    v15 = v11;
  }

LABEL_63:

  v56 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)_sanitizedContainerFallbackNameForMangledID:(id)a3
{
  v3 = a3;
  v4 = [v3 aliasTargetContainerString];
  v5 = [v4 br_pathExtension];

  LODWORD(v4) = [v3 isPassbookMangledID];
  if (v4)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = _BRLocalizedStringWithFormat(@"PASSBOOK_APP", @"Localizable", v6, v7, v8, v9, v10, v11, v17);
  }

  else
  {
    if ([v5 length])
    {
      v13 = [v5 characterAtIndex:0];
      if (v13 > 0x7F)
      {
        v14 = __maskrune(v13, 0x1000uLL);
      }

      else
      {
        v14 = *(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x1000;
      }

      if (v14)
      {
        +[BRContainer _sanitizedContainerFallbackNameForMangledID:];
        v5 = v18;
      }

      v15 = v5;
      v5 = v15;
    }

    else
    {
      v15 = @"Documents";
    }

    v12 = v15;
  }

  return v12;
}

+ (id)_documentsTypesWithProperties:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [a1 bundlePropertyEnumerator:@"BRContainerDocumentTypes" valuesOfClass:objc_opt_class() forProperties:{v4, 0}];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObjectsFromArray:*(*(&v14 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_exportedTypesWithProperties:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [a1 bundlePropertyEnumerator:@"BRContainerExportedTypes" valuesOfClass:objc_opt_class() forProperties:{v4, 0}];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObjectsFromArray:*(*(&v14 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_importedTypesWithProperties:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [a1 bundlePropertyEnumerator:@"BRContainerImportedTypes" valuesOfClass:objc_opt_class() forProperties:{v4, 0}];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObjectsFromArray:*(*(&v14 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_iconMetadataWithProperties:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"BRContainerIcons"];

  if (v4)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = v3;
    obj = [v3 objectForKeyedSubscript:@"BRContainerIcons"];
    v5 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v18 = 0.0;
          v19 = 0;
          v18 = BRContainerIconSizeForName(v9);
          v19 = v10;
          v24[0] = @"size";
          v11 = [MEMORY[0x1E696B098] valueWithBytes:&v18 objCType:"{CGSize=dd}"];
          v24[1] = @"scale";
          v25[0] = v11;
          v12 = [MEMORY[0x1E696AD98] numberWithDouble:BRContainerIconScaleForName(v9)];
          v25[1] = v12;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
          [v4 setObject:v13 forKeyedSubscript:v9];
        }

        v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v6);
    }

    v3 = v16;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_iconGeneratorVersionWithProperties:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [a1 bundlePropertyEnumerator:@"BRContainerIconGeneratorVersionNumber" valuesOfClass:objc_opt_class() forProperties:{v4, 0}];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      v9 = &unk_1F23E68C8;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 longLongValue];
          if (v12 > [v9 longLongValue])
          {
            v13 = v11;

            v9 = v13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = &unk_1F23E68C8;
    }
  }

  else
  {
    v9 = &unk_1F23E68C8;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_iconURLsWithProperties:(id)a3 mangledID:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"BRContainerIcons"];

  if (v8)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [v6 objectForKeyedSubscript:@"BRContainerIcons"];
    v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [a1 _pathForIconName:v13 mangledID:v7];
          v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
          [v8 setObject:v15 forKeyedSubscript:v13];
        }

        v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSDate)lastServerUpdate
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  observationSetupQueueForSecondaryConnection = self->_observationSetupQueueForSecondaryConnection;
  p_isObservingLastServerUpdate = &self->_isObservingLastServerUpdate;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__BRContainer_BRXcodeAdditions__lastServerUpdate__block_invoke;
  v10[3] = &unk_1E7A16580;
  v10[4] = self;
  v10[5] = &v11;
  v5 = v10;
  block = MEMORY[0x1E69E9820];
  p_block = 3221225472;
  v19 = __brc_block_perform_once_and_set_block_invoke;
  v20 = &unk_1E7A167F0;
  v21 = v5;
  v22 = p_isObservingLastServerUpdate;
  v6 = observationSetupQueueForSecondaryConnection;
  dispatch_sync(v6, &block);

  if (v12[5])
  {
    [(BRContainer *)self setLastServerUpdate:?];
    v7 = v12[5];
  }

  else
  {
    block = 0;
    p_block = &block;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__9;
    v21 = __Block_byref_object_dispose__9;
    v22 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__BRContainer_BRXcodeAdditions__lastServerUpdate__block_invoke_369;
    v9[3] = &unk_1E7A15518;
    v9[4] = self;
    v9[5] = &block;
    dispatch_async_and_wait(containerWorkloop, v9);
    v7 = *(p_block + 40);
    _Block_object_dispose(&block, 8);
  }

  _Block_object_dispose(&v11, 8);

  return v7;
}

void __49__BRContainer_BRXcodeAdditions__lastServerUpdate__block_invoke(uint64_t a1)
{
  v2 = +[BRContainerCache containerCache];
  [v2 subscribeToContainerStatusUpdate];

  v3 = +[BRDaemonConnection secondaryConnection];
  v4 = [v3 newSyncProxy];

  v5 = [*(*(a1 + 32) + 8) aliasTargetContainerString];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __49__BRContainer_BRXcodeAdditions__lastServerUpdate__block_invoke_2;
  v13 = &unk_1E7A16558;
  v14 = *(a1 + 32);
  v15 = v4;
  v6 = v4;
  [v6 getContainerLastServerUpdateWithID:v5 reply:&v10];

  v7 = [v6 result];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __49__BRContainer_BRXcodeAdditions__lastServerUpdate__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs("[BRContainer(BRXcodeAdditions) lastServerUpdate]_block_invoke_2", 1324);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v10 = *(*(a1 + 32) + 8);
      v11 = 138412802;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] unable to retrieve last server updated for container %@; %@%@", &v11, 0x20u);
    }
  }

  [*(a1 + 40) setObjResult:v5 error:v6];

  v9 = *MEMORY[0x1E69E9840];
}

- (unsigned)currentStatus
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  observationSetupQueueForSecondaryConnection = self->_observationSetupQueueForSecondaryConnection;
  p_isObservingCurrentStatus = &self->_isObservingCurrentStatus;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__BRContainer_BRXcodeAdditions__currentStatus__block_invoke;
  v11[3] = &unk_1E7A16580;
  v11[4] = self;
  v11[5] = &v12;
  v5 = v11;
  block = MEMORY[0x1E69E9820];
  p_block = 3221225472;
  v20 = __brc_block_perform_once_and_set_block_invoke;
  v21 = &unk_1E7A167F0;
  v22 = v5;
  v23 = p_isObservingCurrentStatus;
  v6 = observationSetupQueueForSecondaryConnection;
  dispatch_sync(v6, &block);

  v7 = v13[5];
  if (v7)
  {
    -[BRContainer setCurrentStatus:](self, "setCurrentStatus:", [v7 unsignedIntegerValue]);
    v8 = [v13[5] unsignedIntegerValue];
  }

  else
  {
    block = 0;
    p_block = &block;
    v20 = 0x2020000000;
    LODWORD(v21) = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__BRContainer_BRXcodeAdditions__currentStatus__block_invoke_371;
    v10[3] = &unk_1E7A15518;
    v10[4] = self;
    v10[5] = &block;
    dispatch_async_and_wait(containerWorkloop, v10);
    v8 = *(p_block + 24);
    _Block_object_dispose(&block, 8);
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __46__BRContainer_BRXcodeAdditions__currentStatus__block_invoke(uint64_t a1)
{
  v2 = +[BRContainerCache containerCache];
  [v2 subscribeToContainerStatusUpdate];

  v3 = +[BRDaemonConnection secondaryConnection];
  v4 = [v3 newSyncProxy];

  v5 = [*(*(a1 + 32) + 8) aliasTargetContainerString];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __46__BRContainer_BRXcodeAdditions__currentStatus__block_invoke_2;
  v13 = &unk_1E7A165A8;
  v14 = *(a1 + 32);
  v15 = v4;
  v6 = v4;
  [v6 getContainerStatusWithID:v5 reply:&v10];

  v7 = [v6 result];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __46__BRContainer_BRXcodeAdditions__currentStatus__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = brc_bread_crumbs("[BRContainer(BRXcodeAdditions) currentStatus]_block_invoke_2", 1358);
    v7 = brc_default_log(0, 0);
    if (os_log_type_enabled(v7, 0x90u))
    {
      v11 = *(*(a1 + 32) + 8);
      v12 = 138412802;
      v13 = v11;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_1AE2A9000, v7, 0x90u, "[ERROR] unable to retrieve status for container %@; %@%@", &v12, 0x20u);
    }
  }

  v8 = *(a1 + 40);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v8 setObjResult:v9 error:v5];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setLastServerUpdate:(id)a3
{
  v4 = a3;
  [(BRContainer *)self willChangeValueForKey:@"lastServerUpdate"];
  v5 = containerWorkloop;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __61__BRContainer_BRXcodeInternalAdditions__setLastServerUpdate___block_invoke;
  v10 = &unk_1E7A14A08;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_async_and_wait(v5, &v7);
  [(BRContainer *)self didChangeValueForKey:@"lastServerUpdate", v7, v8, v9, v10, v11];
}

- (void)setCurrentStatus:(unsigned int)a3
{
  [(BRContainer *)self willChangeValueForKey:@"currentStatus"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__BRContainer_BRXcodeInternalAdditions__setCurrentStatus___block_invoke;
  v5[3] = &unk_1E7A165D0;
  v5[4] = self;
  v6 = a3;
  dispatch_async_and_wait(containerWorkloop, v5);
  [(BRContainer *)self didChangeValueForKey:@"currentStatus"];
}

+ (id)documentsContainersInBackupHomeAtURL:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v5 = [v31 URLByAppendingPathComponent:@"Library/Application Support/CloudDocs"];
  v6 = [v5 URLByAppendingPathComponent:@"session/containers"];

  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [MEMORY[0x1E696AC08] defaultManager];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = v37 = 0u;
  v30 = v6;
  v7 = [v29 enumeratorAtURL:v6 includingPropertiesForKeys:0 options:5 errorHandler:0];
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = [v12 pathExtension];
        v14 = [v13 isEqualToString:@"plist"];

        if (v14)
        {
          v33 = 0;
          v15 = [a1 containerInRepositoryURL:v12 createIfMissing:0 error:&v33];
          v16 = v33;
          if (v15)
          {
            if ([v15 isDocumentScopePublic])
            {
              v17 = [v15 documentsURL];

              if (v17)
              {
                [v32 addObject:v15];
              }
            }
          }

          else
          {
            v18 = v7;
            v19 = a1;
            v20 = brc_bread_crumbs("+[BRContainer(BRFinderAdditions) documentsContainersInBackupHomeAtURL:error:]", 1438);
            v21 = brc_default_log(0, 0);
            if (os_log_type_enabled(v21, 0x90u))
            {
              v22 = [v12 path];
              *buf = 138412802;
              v39 = v22;
              v40 = 2112;
              v41 = v16;
              v42 = 2112;
              v43 = v20;
              _os_log_error_impl(&dword_1AE2A9000, v21, 0x90u, "[ERROR] can't extract container at %@: %@%@", buf, 0x20u);
            }

            a1 = v19;
            v7 = v18;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v9);
  }

  v23 = BRContainerIfDirectoryInHomeURLIsSynced(v31, @"Documents", @"com.apple.Documents");
  if (v23)
  {
    [v32 addObject:v23];
  }

  v24 = BRContainerIfDirectoryInHomeURLIsSynced(v31, @"Desktop", @"com.apple.Desktop");

  if (v24)
  {
    [v32 addObject:v24];
  }

  v25 = [[BRMangledID alloc] initWithAppLibraryName:@"com.apple.CloudDocs"];
  v26 = [[BRContainer alloc] initWithMangledID:v25];
  [v32 addObject:v26];

  v27 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (id)containerInRepositoryURL:(id)a3 createIfMissing:(BOOL)a4 error:(id *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 lastPathComponent];
  v9 = [v8 brc_stringByDeletingPathExtension];

  v10 = [[BRMangledID alloc] initWithAppLibraryName:v9];
  v25 = 0;
  v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7 options:1 error:&v25];
  v12 = v25;
  v13 = v12;
  if (!v12)
  {
    goto LABEL_4;
  }

  if ([v12 br_isCocoaErrorCode:260])
  {
    if (a4)
    {
LABEL_4:
      v14 = [[BRContainer alloc] initWithMangledID:v10 dataRepresentation:v11];
      goto LABEL_5;
    }

    [BRContainer(BRFinderAdditions) containerInRepositoryURL:v9 createIfMissing:a5 error:?];
  }

  else
  {
    v17 = brc_bread_crumbs("+[BRContainer(BRFinderAdditions) containerInRepositoryURL:createIfMissing:error:]", 1478);
    v18 = brc_default_log(1, 0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v23 = [v7 path];
      *buf = 138413058;
      v27 = v10;
      v28 = 2112;
      v29 = v23;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v17;
      _os_log_debug_impl(&dword_1AE2A9000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] failed reading data for container %@ at '%@': %@%@", buf, 0x2Au);
    }

    v19 = v13;
    v20 = brc_bread_crumbs("+[BRContainer(BRFinderAdditions) containerInRepositoryURL:createIfMissing:error:]", 1479);
    v21 = brc_default_log(0, 0);
    if (os_log_type_enabled(v21, 0x90u))
    {
      v24 = "(passed to caller)";
      *buf = 136315906;
      v27 = "+[BRContainer(BRFinderAdditions) containerInRepositoryURL:createIfMissing:error:]";
      v28 = 2080;
      if (!a5)
      {
        v24 = "(ignored by caller)";
      }

      v29 = v24;
      v30 = 2112;
      v31 = v19;
      v32 = 2112;
      v33 = v20;
      _os_log_error_impl(&dword_1AE2A9000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }

    if (a5)
    {
      v22 = v19;
      *a5 = v19;
    }
  }

  v14 = 0;
LABEL_5:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)containerForItemAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 br_cloudDocsContainer];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] brc_errorPathOutsideAnyCloudDocsAppLibraryAtURL:v5];
  }

  return v7;
}

- (BOOL)deleteAllContentsOnClientAndServer:(BOOL)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = 0;
  personaID = self->_personaID;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__BRContainer_BRFinderInternalAdditions__deleteAllContentsOnClientAndServer_error___block_invoke;
  v14[3] = &unk_1E7A165F8;
  v14[4] = self;
  v14[5] = &v16;
  v14[6] = &v22;
  v15 = a3;
  BRPerformWithPersonaAndError(personaID, v14);
  if (v23[3])
  {
    v6 = 1;
  }

  else
  {
    v7 = v17[5];
    if (v7)
    {
      v8 = brc_bread_crumbs("[BRContainer(BRFinderInternalAdditions) deleteAllContentsOnClientAndServer:error:]", 1546);
      v9 = brc_default_log(0, 0);
      if (os_log_type_enabled(v9, 0x90u))
      {
        v13 = "(passed to caller)";
        *buf = 136315906;
        v27 = "[BRContainer(BRFinderInternalAdditions) deleteAllContentsOnClientAndServer:error:]";
        v28 = 2080;
        if (!a4)
        {
          v13 = "(ignored by caller)";
        }

        v29 = v13;
        v30 = 2112;
        v31 = v7;
        v32 = 2112;
        v33 = v8;
        _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a4)
    {
      v10 = v7;
      *a4 = v7;
    }

    v6 = *(v23 + 24);
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

void __83__BRContainer_BRFinderInternalAdditions__deleteAllContentsOnClientAndServer_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v5 = brc_bread_crumbs("[BRContainer(BRFinderInternalAdditions) deleteAllContentsOnClientAndServer:error:]_block_invoke", 1526);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __83__BRContainer_BRFinderInternalAdditions__deleteAllContentsOnClientAndServer_error___block_invoke_cold_1(a1);
    }

    if ([*(a1 + 32) isInCloudDocsZone] && (objc_msgSend(*(a1 + 32), "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.CloudDocs"), v7, (v8 & 1) == 0))
    {
      v18 = brc_bread_crumbs("[BRContainer(BRFinderInternalAdditions) deleteAllContentsOnClientAndServer:error:]_block_invoke", 1529);
      v19 = brc_default_log(1, 0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __83__BRContainer_BRFinderInternalAdditions__deleteAllContentsOnClientAndServer_error___block_invoke_cold_2((a1 + 32), v18, v19);
      }

      v13 = [MEMORY[0x1E696AC08] defaultManager];
      v20 = [*(a1 + 32) documentsURL];
      v21 = *(*(a1 + 40) + 8);
      obj = *(v21 + 40);
      v22 = [v13 removeItemAtURL:v20 error:&obj];
      objc_storeStrong((v21 + 40), obj);
      *(*(*(a1 + 48) + 8) + 24) = v22;
    }

    else
    {
      v9 = +[BRDaemonConnection defaultConnection];
      v10 = [v9 newSyncProxy];

      v11 = [*(*(a1 + 32) + 8) appLibraryOrZoneName];
      v12 = *(a1 + 56);
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __83__BRContainer_BRFinderInternalAdditions__deleteAllContentsOnClientAndServer_error___block_invoke_405;
      v26 = &unk_1E7A14830;
      v27 = v10;
      v13 = v10;
      [v13 deleteAllContentsOfContainerID:v11 onClient:1 onServer:1 wait:v12 reply:&v23];

      v14 = [v13 result];
      v15 = [v13 error];
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 40) + 8) + 40) == 0;
    }
  }
}

- (BOOL)hasIconWithName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(BRContainer *)v5 iconMetadata];
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = v7 != 0;

    objc_sync_exit(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)iconURLs
{
  v2 = self;
  objc_sync_enter(v2);
  iconURLs = v2->_iconURLs;
  if (!iconURLs)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__BRContainer_BRInternalAdditions__iconURLs__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = v2;
    [(BRContainer *)v2 accessPropertiesInBlock:v6];
    iconURLs = v2->_iconURLs;
  }

  v4 = iconURLs;
  objc_sync_exit(v2);

  return v4;
}

void __44__BRContainer_BRInternalAdditions__iconURLs__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _iconURLsWithProperties:v4 mangledID:*(*(a1 + 32) + 8)];

  v6 = *(a1 + 32);
  v7 = *(v6 + 80);
  *(v6 + 80) = v5;
}

- (id)bestFittingImageDataForSize:(CGSize)a3 shouldTransformToAppIcon:(BOOL *)a4
{
  width = a3.width;
  v26 = *MEMORY[0x1E69E9840];
  v7 = [(BRContainer *)self imageDataForSize:1 scale:a4 shouldTransformToAppIcon:a3.width, a3.height];
  if (!v7)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [(BRContainer *)self imageRepresentationsAvailable];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v20 = 0.0;
          v14 = [v13 objectForKey:{@"size", 0}];
          [v14 getValue:&v19];

          v15 = [v13 objectForKey:@"scale"];
          v16 = [v15 integerValue];

          if (v19 * v16 >= width)
          {
            v7 = [(BRContainer *)self imageDataForSize:v16 scale:a4 shouldTransformToAppIcon:v19, v20];
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_12:
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)copyDataRepresentation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__BRContainer_BRInternalAdditions__copyDataRepresentation__block_invoke;
  v4[3] = &unk_1E7A16620;
  v4[4] = &v5;
  [(BRContainer *)self accessDataRepresentationInBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __58__BRContainer_BRInternalAdditions__copyDataRepresentation__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695DEF0] dataWithData:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (void)accessDataRepresentationInBlock:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_shouldUsePurgeableData)
  {
    v9 = v5->_dataRepresentation;
    v8 = 0;
    v10 = 0;
    goto LABEL_21;
  }

  purgeableDataRepresentation = v5->_purgeableDataRepresentation;
  if (!purgeableDataRepresentation)
  {
    v11 = 0;
LABEL_8:
    v5->_purgeableDataRepresentation = 0;

    v12 = [(BRContainer *)v5 _pathForPlist];
    v13 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) accessDataRepresentationInBlock:]", 1669);
    v14 = brc_default_log(1, 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRContainer(BRInternalAdditions) accessDataRepresentationInBlock:];
    }

    if (v12)
    {
      v21 = 0;
      v15 = [MEMORY[0x1E696AE58] dataWithContentsOfFile:v12 options:8 error:&v21];
      v7 = v21;
      v16 = v5->_purgeableDataRepresentation;
      v5->_purgeableDataRepresentation = v15;
    }

    else
    {
      v7 = 0;
    }

    if (!v5->_purgeableDataRepresentation && ([v7 br_isCocoaErrorCode:4] & 1) == 0 && (objc_msgSend(v7, "br_isCocoaErrorCode:", 260) & 1) == 0)
    {
      v17 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) accessDataRepresentationInBlock:]", 1674);
      v18 = brc_default_log(1, 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = v7;
        v24 = 2112;
        v25 = v17;
        _os_log_impl(&dword_1AE2A9000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] can't open plist path: %@%@", buf, 0x16u);
      }
    }

    v8 = 1;
    goto LABEL_20;
  }

  if (([(NSPurgeableData *)purgeableDataRepresentation beginContentAccess]& 1) == 0)
  {
    v11 = v5->_purgeableDataRepresentation;
    goto LABEL_8;
  }

  v7 = 0;
  v8 = 0;
LABEL_20:
  v9 = v5->_purgeableDataRepresentation;
  v10 = v5->_purgeableDataRepresentation;

LABEL_21:
  objc_sync_exit(v5);

  if (v5->_shouldUsePurgeableData)
  {
    if (v8)
    {
      [(BRContainer *)v5 _accessRebuiltPurgeableDataRepresentation:v9 inBlock:v4];
    }

    else
    {
      [(BRContainer *)v5 _accessPurgeableDataRepresentation:v9 inBlock:v4];
    }
  }

  else
  {
    [(BRContainer *)v5 _accessDataRepresentation:v9 inBlock:v4];
  }

  v19 = v5;
  objc_sync_enter(v19);
  [(NSPurgeableData *)v10 endContentAccess];
  [(NSPurgeableData *)v10 discardContentIfPossible];
  objc_sync_exit(v19);

  v20 = *MEMORY[0x1E69E9840];
}

- (id)shortDescription
{
  v24 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AD60] stringWithString:@"apps:{"];
  v18 = v17 = self;
  v3 = [(BRContainer *)self bundleIDVersions];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    v7 = "";
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        v11 = [v9 fp_obfuscatedDotSeparatedComponents];
        v12 = [v10 objectForKeyedSubscript:@"BRContainerVersionNumber"];
        [v18 appendFormat:@"%s%@:%@", v7, v11, v12];

        v7 = "; ";
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v7 = "; ";
    }

    while (v5);
  }

  [v18 appendString:@"}"];
  personaID = v17->_personaID;
  if (personaID && ![(NSString *)personaID isEqualToString:@"__defaultPersonaID__"])
  {
    [v18 appendFormat:@"%spersona:%@", " ", v17->_personaID];
  }

  v14 = " ";
  if ([(BRContainer *)v17 isDocumentScopePublic])
  {
    [v18 appendFormat:@"%sDocumentScopePublic", " "];
    v14 = "|";
    if ([(BRContainer *)v17 isInInitialState])
    {
      [v18 appendFormat:@"%sInInitialState", "|"];
    }
  }

  if ([(BRContainer *)v17 isInCloudDocsZone])
  {
    [v18 appendFormat:@"%sInCloudDocsZone", v14];
    v14 = "|";
  }

  if ([(BRContainer *)v17 isCloudSyncTCCDisabled])
  {
    [v18 appendFormat:@"%sTCCDisabled", v14];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)containerForMangledID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [BRContainer _URLForPlistOfMangledID:v3];
    v5 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) containerForMangledID:]", 1750);
    v6 = brc_default_log(1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412802;
      v11 = v4;
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = v5;
      _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Found plistURL: %@ for mangledID: %@%@", &v10, 0x20u);
    }

    if (v4)
    {
      v7 = [BRContainer containerInRepositoryURL:v4 createIfMissing:1 error:0];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)versionOfBundle:(id)a3 changedFromVersion:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v8 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) versionOfBundle:changedFromVersion:]", 1767);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, 0x90u))
    {
      +[BRContainer(BRInternalAdditions) versionOfBundle:changedFromVersion:];
    }

    goto LABEL_12;
  }

  v7 = [v5 infoDictionary];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695E500]];

  v9 = [v5 bundleIdentifier];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) versionOfBundle:changedFromVersion:]", 1775);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412802;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_1AE2A9000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] invalid version '%@' or identifier '%@'%@", &v20, 0x20u);
    }

LABEL_12:
    v14 = 0;
    goto LABEL_18;
  }

  v15 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) versionOfBundle:changedFromVersion:]", 1780);
  v16 = brc_default_log(1, 0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138413058;
    v21 = v10;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v15;
    _os_log_debug_impl(&dword_1AE2A9000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] bundle %@ has version %@, minimum version is %@%@", &v20, 0x2Au);
  }

  if (v6)
  {
    v14 = [v6 compare:v8 options:64] == -1;
  }

  else
  {
    v14 = 1;
  }

LABEL_18:

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)isDocumentScopePublicWithProperties:(id)a3 mangledID:(id)a4
{
  v4 = [a1 _isDocumentScopePublicAsNumberWithProperties:a3 mangledID:a4];
  v5 = [v4 BOOLValue];

  return v5;
}

+ (void)forceRefreshContainers:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v20 = a4;
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = dispatch_group_create();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        dispatch_group_enter(v7);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __70__BRContainer_BRInternalAdditions__forceRefreshContainers_completion___block_invoke;
        v24[3] = &unk_1E7A16648;
        v25 = v6;
        v26 = v13;
        v27 = v7;
        [v13 forceRefreshWithCompletion:v24];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create("force-refresh-container", v15);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__BRContainer_BRInternalAdditions__forceRefreshContainers_completion___block_invoke_2;
  block[3] = &unk_1E7A16670;
  v22 = v6;
  v23 = v20;
  v17 = v20;
  v18 = v6;
  dispatch_group_notify(v7, v16, block);

  v19 = *MEMORY[0x1E69E9840];
}

void __70__BRContainer_BRInternalAdditions__forceRefreshContainers_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) identifier];
    [v4 setObject:v6 forKeyedSubscript:v5];

    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __70__BRContainer_BRInternalAdditions__forceRefreshContainers_completion___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *(a1 + 32);
    v8 = @"BRPartialErrorsByContainerIDKey";
    v9[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v5 = [v2 errorWithDomain:@"BRCloudDocsErrorDomain" code:21 userInfo:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)postContainerListUpdateNotification
{
  if (!+[BRContainerCache hasDaemonicParts])
  {
    +[BRContainer(BRInternalAdditions) postContainerListUpdateNotification];
  }

  v2 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) postContainerListUpdateNotification]", 1824);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[BRContainer(BRInternalAdditions) postContainerListUpdateNotification];
  }

  if (postContainerListUpdateNotification_once != -1)
  {
    +[BRContainer(BRInternalAdditions) postContainerListUpdateNotification];
  }

  br_pacer_signal(postContainerListUpdateNotification_pacer);
}

void __71__BRContainer_BRInternalAdditions__postContainerListUpdateNotification__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("container-update", v0);

  v2 = postContainerListUpdateNotification_queue;
  postContainerListUpdateNotification_queue = v1;

  v3 = br_pacer_create("container-update", postContainerListUpdateNotification_queue, 1.0);
  v4 = postContainerListUpdateNotification_pacer;
  postContainerListUpdateNotification_pacer = v3;

  br_pacer_set_event_handler(postContainerListUpdateNotification_pacer, &__block_literal_global_448);
  v5 = postContainerListUpdateNotification_pacer;

  br_pacer_resume(v5);
}

void __71__BRContainer_BRInternalAdditions__postContainerListUpdateNotification__block_invoke_2()
{
  v1 = [@"BRContainerCacheDidChangeDistributedNotification" br_libnotifyPerUserNotificationName];
  v0 = v1;
  brc_notify_post([v1 UTF8String]);
}

+ (void)postContainerStatusChangeNotificationWithID:(id)a3 key:(id)a4 value:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) postContainerStatusChangeNotificationWithID:key:value:]", 1847);
  v11 = brc_default_log(1, 0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    *&buf[4] = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_debug_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] broadcasting to framework clients container %@ change %@=%@%@", buf, 0x2Au);
  }

  v12 = [MEMORY[0x1E696ABB0] defaultCenter];
  if (v9)
  {
    v13 = [v7 appLibraryOrZoneName];
    v16[1] = v8;
    v17[0] = v13;
    v17[1] = v9;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

    [v12 postNotificationName:BRContainerDidChangeStatusDistributedNotification object:0 userInfo:v14];
  }

  else
  {
    [BRContainer(BRInternalAdditions) postContainerStatusChangeNotificationWithID:buf key:? value:?];
    v14 = *buf;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateMetadataOnDiskWithProperties:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0;
  v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v19];
  v6 = v19;
  if (v6)
  {
    v7 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) _updateMetadataOnDiskWithProperties:]", 1868);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      mangledID = self->_mangledID;
      *buf = 138412802;
      v21 = mangledID;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] failed plist serialization for container %@: %@%@", buf, 0x20u);
    }

    v9 = 0;
  }

  else
  {
    v7 = [(BRContainer *)self _pathForPlist];
    if ([(BRMangledID *)self->_mangledID isCloudDocsMangledID])
    {
      [BRContainer(BRInternalAdditions) _updateMetadataOnDiskWithProperties:];
    }

    v9 = [v5 writeToFile:v7 atomically:1];
    if (v9)
    {
      v10 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) _updateMetadataOnDiskWithProperties:]", 1886);
      v11 = brc_default_log(1, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v17 = self->_mangledID;
        *buf = 138413570;
        v21 = v4;
        v22 = 2112;
        v23 = v17;
        v24 = 2112;
        v25 = v7;
        v26 = 2112;
        v27 = BRContainerFormatVersionNumberValue;
        v28 = 2112;
        v29 = BRContainerIconGeneratorVersionNumberValue;
        v30 = 2112;
        v31 = v10;
        _os_log_debug_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] wrote plist %@ for container %@ at '%@' {\n  formatVersion = %@,\n  iconGenerationVersion = %@\n}%@", buf, 0x3Eu);
      }

      [(BRContainer *)self _replaceDataRepresentationWithData:v5];
    }

    else
    {
      v12 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) _updateMetadataOnDiskWithProperties:]", 1878);
      v13 = brc_default_log(0, 0);
      if (os_log_type_enabled(v13, 0x90u))
      {
        v18 = self->_mangledID;
        *buf = 138412802;
        v21 = v18;
        v22 = 2112;
        v23 = v7;
        v24 = 2112;
        v25 = v12;
        _os_log_error_impl(&dword_1AE2A9000, v13, 0x90u, "[ERROR] can't write metadata for container %@ at '%@'%@", buf, 0x20u);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)updateMetadataWithExtractorProperties:(id)a3 iconPaths:(id)a4 bundleID:(id)a5
{
  v138 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v103 = a4;
  v8 = a5;
  v105 = v7;
  if (!v7)
  {
    v89 = v8;
    [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:];
    v8 = v89;
  }

  v106 = v8;
  if (!v8)
  {
    [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:];
  }

  memset(v125, 0, sizeof(v125));
  __brc_create_section(0, "[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1896, 0, v125);
  v9 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1896);
  v10 = brc_default_log(1, 0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    mangledID = self->_mangledID;
    *v135 = 134218754;
    *&v135[4] = v125[0];
    *&v135[12] = 2112;
    *&v135[14] = mangledID;
    *&v135[22] = 2112;
    v136 = v106;
    LOWORD(v137) = 2112;
    *(&v137 + 2) = v9;
    _os_log_debug_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Update metadata with extractor properties %@ for %@%@", v135, 0x2Au);
  }

  v11 = [(BRContainer *)self _containerRepositoryURL];
  v99 = [v11 path];

  v100 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v106 isEqualToString:@"com.apple.bird"])
  {
    v90 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1905);
    v91 = brc_default_log(0, 0);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
    {
      [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:];
    }
  }

  *v135 = 0;
  *&v135[8] = v135;
  *&v135[16] = 0x3032000000;
  v136 = __Block_byref_object_copy__9;
  *&v137 = __Block_byref_object_dispose__9;
  *(&v137 + 1) = 0;
  v124[0] = MEMORY[0x1E69E9820];
  v124[1] = 3221225472;
  v124[2] = __93__BRContainer_BRInternalAdditions__updateMetadataWithExtractorProperties_iconPaths_bundleID___block_invoke;
  v124[3] = &unk_1E7A16698;
  v124[4] = self;
  v124[5] = v135;
  [(BRContainer *)self accessDataRepresentationInBlock:v124];
  v12 = 0;
  v101 = 0;
  v96 = 1;
  if (!v106)
  {
    goto LABEL_100;
  }

  v13 = *(*&v135[8] + 40);
  if (!v13)
  {
    goto LABEL_100;
  }

  if (v103)
  {
    v14 = [v13 objectForKeyedSubscript:@"BRContainerIcons"];
    if (v14)
    {
      v15 = [MEMORY[0x1E695DFA8] setWithArray:v14];
      v16 = [v103 allKeys];
      [v15 addObjectsFromArray:v16];

      v17 = [v15 allObjects];
    }

    else
    {
      v17 = [v103 allKeys];
    }

    [*(*&v135[8] + 40) setObject:v17 forKeyedSubscript:@"BRContainerIcons"];

    v13 = *(*&v135[8] + 40);
  }

  v18 = [v13 objectForKeyedSubscript:v106];

  if (v18)
  {
    v19 = MEMORY[0x1E695DFD8];
    v20 = [*(*&v135[8] + 40) objectForKeyedSubscript:v106];
    v21 = [v20 allKeys];
    v22 = [v19 setWithArray:v21];

    v23 = MEMORY[0x1E695DFD8];
    v24 = [v105 allKeys];
    v95 = [v23 setWithArray:v24];

    if (([v22 isEqualToSet:v95] & 1) == 0)
    {
      v25 = [v22 setByAddingObject:@"BRContainerIconGeneratorVersionNumber"];
      v26 = [v25 isEqualToSet:v95];

      if (!v26)
      {
        goto LABEL_71;
      }
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v27 = [*(*&v135[8] + 40) objectForKeyedSubscript:v106];
    v28 = 0;
    v29 = [v27 countByEnumeratingWithState:&v120 objects:v134 count:16];
    if (v29)
    {
      v30 = *v121;
      v31 = 1;
      do
      {
        v32 = 0;
        do
        {
          if (*v121 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v120 + 1) + 8 * v32);
          v34 = [*(*&v135[8] + 40) objectForKeyedSubscript:v106];
          v35 = [v34 objectForKeyedSubscript:v33];

          v36 = [v105 objectForKeyedSubscript:v33];
          if (([v33 isEqual:@"BRContainerVersionNumber"] & 1) != 0 || objc_msgSend(v33, "isEqual:", @"BRContainerIconGeneratorVersionNumber"))
          {
            v37 = [v36 isEqual:v35];
            v31 &= v37;
            v28 |= v37 ^ 1;
          }

          else if (v35 && !v36 || v36 && (!v35 || ([v36 isEqual:v35] & 1) == 0))
          {

            v31 = 0;
            v28 = 0;
            goto LABEL_39;
          }

          ++v32;
        }

        while (v29 != v32);
        v38 = [v27 countByEnumeratingWithState:&v120 objects:v134 count:16];
        v29 = v38;
      }

      while (v38);
    }

    else
    {
      v31 = 1;
    }

LABEL_39:

    if (((v31 | v28) & 1) != 0 && ((v31 ^ v28) & 1) == 0)
    {
      v92 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1973);
      v93 = brc_default_log(0, 0);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
      {
        [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:];
      }
    }

    if (v31)
    {
      v39 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1976);
      v40 = brc_default_log(1, 0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:? iconPaths:? bundleID:?];
      }

      v101 = 0;
      v12 = 0;
      v96 = 1;
LABEL_98:

      goto LABEL_100;
    }

    if ((v28 & 1) == 0)
    {
LABEL_71:
      v96 = 1;
LABEL_77:

      goto LABEL_78;
    }

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = v103;
    v41 = [obj countByEnumeratingWithState:&v116 objects:v133 count:16];
    if (v41)
    {
      v43 = 0;
      v102 = *v117;
      v97 = 1;
      v98 = v41;
      *&v42 = 138412802;
      v94 = v42;
LABEL_48:
      v44 = 0;
      while (1)
      {
        if (*v117 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v116 + 1) + 8 * v44);
        v46 = objc_autoreleasePoolPush();
        v47 = [obj objectForKeyedSubscript:v45];
        v115 = v43;
        v48 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v47 options:1 error:&v115];
        v49 = v115;

        if (v48 && v49 == 0)
        {
          v51 = [(BRContainer *)self _pathForIconName:v45];
          v114 = 0;
          v52 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v51 options:1 error:&v114];
          v54 = v114;
          if (!v52 || v54)
          {
            v43 = v54;
            v55 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1994);
            v56 = brc_default_log(1, 0);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v94;
              v127 = v51;
              v128 = 2112;
              v129 = v43;
              v130 = 2112;
              v131[0] = v55;
              _os_log_impl(&dword_1AE2A9000, v56, OS_LOG_TYPE_DEFAULT, "[WARNING] can't read content of file at '%@'; %@%@", buf, 0x20u);
            }

            v53 = 0;
          }

          else
          {
            v43 = 0;
            v53 = [v48 isEqualToData:v52];
            v97 &= v53;
          }
        }

        else
        {
          v51 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1987);
          v52 = brc_default_log(1, 0);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v94;
            v127 = v47;
            v128 = 2112;
            v129 = v49;
            v130 = 2112;
            v131[0] = v51;
            _os_log_impl(&dword_1AE2A9000, v52, OS_LOG_TYPE_DEFAULT, "[WARNING] can't read content of file at '%@'; %@%@", buf, 0x20u);
          }

          v53 = 0;
          v43 = v49;
        }

        objc_autoreleasePoolPop(v46);
        if (!v53)
        {
          break;
        }

        if (v98 == ++v44)
        {
          v98 = [obj countByEnumeratingWithState:&v116 objects:v133 count:16];
          if (v98)
          {
            goto LABEL_48;
          }

          break;
        }
      }

      if ((v97 & 1) == 0)
      {
        v57 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2009);
        v58 = brc_default_log(1, 0);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:? iconPaths:? bundleID:?];
        }

        v96 = 1;
LABEL_76:

        goto LABEL_77;
      }
    }

    else
    {
    }

    v57 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2006);
    v58 = brc_default_log(1, 0);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:? iconPaths:? bundleID:?];
    }

    v96 = 0;
    goto LABEL_76;
  }

  v96 = 1;
LABEL_78:
  [*(*&v135[8] + 40) setObject:v105 forKeyedSubscript:{v106, v94}];
  v113 = 0;
  v60 = [v100 createDirectoryAtPath:v99 withIntermediateDirectories:1 attributes:0 error:&v113];
  v101 = v113;
  if ((v60 & 1) == 0)
  {
    v61 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2018);
    v62 = brc_default_log(0, 0);
    if (os_log_type_enabled(v62, 0x90u))
    {
      *buf = 138412802;
      v127 = v99;
      v128 = 2112;
      v129 = v101;
      v130 = 2112;
      v131[0] = v61;
      _os_log_error_impl(&dword_1AE2A9000, v62, 0x90u, "[ERROR] unable to create directory at '%@'; %@%@", buf, 0x20u);
    }
  }

  if ([(BRContainer *)self _updateMetadataOnDiskWithProperties:*(*&v135[8] + 40)])
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v22 = v103;
    v63 = [v22 countByEnumeratingWithState:&v109 objects:v132 count:16];
    if (v63)
    {
      v64 = *v110;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v110 != v64)
          {
            objc_enumerationMutation(v22);
          }

          v66 = *(*(&v109 + 1) + 8 * i);
          v67 = [v22 objectForKeyedSubscript:v66];
          v68 = [(BRContainer *)self _pathForIconName:v66];
          v69 = v67;
          v70 = [v67 fileSystemRepresentation];
          v71 = v68;
          v72 = [v68 fileSystemRepresentation];
          rename(v70, v72, v73);
          if (v74 < 0)
          {
            v77 = *__error();
            v78 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2029);
            v79 = brc_default_log(0, 0);
            if (os_log_type_enabled(v79, 0x90u))
            {
              *buf = 138413058;
              v127 = v67;
              v128 = 2112;
              v129 = v68;
              v130 = 1024;
              LODWORD(v131[0]) = v77;
              WORD2(v131[0]) = 2112;
              *(v131 + 6) = v78;
              _os_log_error_impl(&dword_1AE2A9000, v79, 0x90u, "[ERROR] failed renaming from '%@' to '%@' %{errno}d%@", buf, 0x26u);
            }

            *__error() = v77;
          }

          else
          {
            v75 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2031);
            v76 = brc_default_log(1, 0);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v127 = v67;
              v128 = 2112;
              v129 = v68;
              v130 = 2112;
              v131[0] = v75;
              _os_log_debug_impl(&dword_1AE2A9000, v76, OS_LOG_TYPE_DEBUG, "[DEBUG] renamed icon from '%@' to '%@'%@", buf, 0x20u);
            }
          }
        }

        v63 = [v22 countByEnumeratingWithState:&v109 objects:v132 count:16];
      }

      while (v63);
    }

    v12 = 1;
    goto LABEL_98;
  }

  v12 = 0;
LABEL_100:
  v80 = [v103 allValues];
  v81 = [v80 firstObject];
  v82 = [v81 stringByDeletingLastPathComponent];

  if (v82)
  {
    v108 = v101;
    v83 = [v100 removeItemAtPath:v82 error:&v108];
    v84 = v108;

    if ((v83 & 1) == 0)
    {
      v85 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2041);
      v86 = brc_default_log(1, 0);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v127 = v99;
        v128 = 2112;
        v129 = v84;
        v130 = 2112;
        v131[0] = v85;
        _os_log_impl(&dword_1AE2A9000, v86, OS_LOG_TYPE_DEFAULT, "[WARNING] failed removing temporary path at '%@'; %@%@", buf, 0x20u);
      }

      goto LABEL_107;
    }
  }

  else
  {
    v84 = v101;
  }

  v85 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2043);
  v86 = brc_default_log(1, 0);
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
  {
    [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:];
  }

LABEL_107:

  _Block_object_dispose(v135, 8);
  __brc_leave_section(v125);

  v87 = *MEMORY[0x1E69E9840];
  return v96 & v12;
}

void __93__BRContainer_BRInternalAdditions__updateMetadataWithExtractorProperties_iconPaths_bundleID___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v20 = 0;
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:2 format:0 error:&v20];
    v5 = v20;
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v8 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]_block_invoke", 1915);
      v9 = brc_default_log(1, 0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v3 length];
        v19 = *(*(a1 + 32) + 8);
        *buf = 134218754;
        v22 = v18;
        v23 = 2112;
        v24 = v19;
        v25 = 2112;
        v26 = v5;
        v27 = 2112;
        v28 = v8;
        _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] failed parsing %lu-byte plist for container %@: %@%@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]_block_invoke", 1922);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v3 length];
      v13 = *(*(a1 + 32) + 8);
      *buf = 134218498;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v10;
      _os_log_debug_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] read %lu-byte plist for container %@%@", buf, 0x20u);
    }
  }

  else
  {
    v14 = [MEMORY[0x1E695DF90] dictionary];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v10 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]_block_invoke", 1920);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __93__BRContainer_BRInternalAdditions__updateMetadataWithExtractorProperties_iconPaths_bundleID___block_invoke_cold_1(a1);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateMetadataWithRecordData:(id)a3 iconPaths:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v46 = v5;
  if (!v5)
  {
    [BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:];
  }

  memset(v55, 0, sizeof(v55));
  __brc_create_section(0, "[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2052, 0, v55);
  v7 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2052);
  v8 = brc_default_log(1, 0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    mangledID = self->_mangledID;
    *buf = 134218498;
    v57 = v55[0];
    v58 = 2112;
    v59 = mangledID;
    v60 = 2112;
    *v61 = v7;
    _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Update metadata with record data %@%@", buf, 0x20u);
  }

  v9 = [(BRContainer *)self _containerRepositoryURL];
  v47 = [v9 path];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v54 = 0;
  LOBYTE(v9) = [v10 createDirectoryAtPath:v47 withIntermediateDirectories:1 attributes:0 error:&v54];
  v43 = v10;
  v45 = v54;
  if ((v9 & 1) == 0)
  {
    v11 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2060);
    v12 = brc_default_log(0, 0);
    if (os_log_type_enabled(v12, 0x90u))
    {
      *buf = 138412802;
      v57 = v47;
      v58 = 2112;
      v59 = v45;
      v60 = 2112;
      *v61 = v11;
      _os_log_error_impl(&dword_1AE2A9000, v12, 0x90u, "[ERROR] unable to create directory at '%@'; %@%@", buf, 0x20u);
    }
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v14)
  {
    v15 = *v51;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v50 + 1) + 8 * i);
        v18 = [v13 objectForKeyedSubscript:{v17, v43}];
        v19 = [(BRContainer *)self _pathForIconName:v17];
        v20 = v18;
        v21 = [v18 fileSystemRepresentation];
        v22 = v19;
        v23 = [(BRMangledID *)v19 fileSystemRepresentation];
        rename(v21, v23, v24);
        if (v25 < 0)
        {
          v28 = *__error();
          v29 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2068);
          v30 = brc_default_log(0, 0);
          if (os_log_type_enabled(v30, 0x90u))
          {
            *buf = 138413058;
            v57 = v18;
            v58 = 2112;
            v59 = v19;
            v60 = 1024;
            *v61 = v28;
            *&v61[4] = 2112;
            *&v61[6] = v29;
            _os_log_error_impl(&dword_1AE2A9000, v30, 0x90u, "[ERROR] failed renaming from '%@' to '%@' %{errno}d%@", buf, 0x26u);
          }

          *__error() = v28;
        }

        else
        {
          v26 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2070);
          v27 = brc_default_log(1, 0);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v57 = v18;
            v58 = 2112;
            v59 = v19;
            v60 = 2112;
            *v61 = v26;
            _os_log_debug_impl(&dword_1AE2A9000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] renamed icon from '%@' to '%@'%@", buf, 0x20u);
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v14);
  }

  v49 = 0;
  v31 = [MEMORY[0x1E696AE40] propertyListWithData:v46 options:2 format:0 error:&v49];
  v32 = v49;

  if (!v31)
  {
    v33 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2076);
    v34 = brc_default_log(1, 0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v41 = [v46 length];
      v42 = self->_mangledID;
      *buf = 134218754;
      v57 = v41;
      v58 = 2112;
      v59 = v42;
      v60 = 2112;
      *v61 = v32;
      *&v61[8] = 2112;
      *&v61[10] = v33;
      _os_log_debug_impl(&dword_1AE2A9000, v34, OS_LOG_TYPE_DEBUG, "[DEBUG] failed parsing %lu-byte plist for container %@: %@%@", buf, 0x2Au);
    }
  }

  if (!v13)
  {
    [v31 removeObjectForKey:@"BRContainerIcons"];
    v35 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2086);
    v36 = brc_default_log(1, 0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:];
    }
  }

  v37 = [(BRContainer *)self _updateMetadataOnDiskWithProperties:v31, v43];

  __brc_leave_section(v55);
  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

+ (void)_generateiOSIconsForMangledID:(id)a3 usingBundle:(__CFBundle *)a4 generatedIcons:(id)a5
{
  v150 = *MEMORY[0x1E69E9840];
  v96 = a3;
  v100 = a5;
  memset(v134, 0, sizeof(v134));
  __brc_create_section(0, "+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2186, 0, v134);
  v6 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2186);
  v7 = brc_default_log(1, 0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:v134 usingBundle:? generatedIcons:?];
  }

  v97 = CFBundleGetInfoDictionary(a4);
  v8 = [v97 objectForKeyedSubscript:@"CFBundleIcons"];
  v9 = [v8 objectForKeyedSubscript:@"CFBundlePrimaryIcon"];
  v99 = [v9 objectForKeyedSubscript:@"CFBundleIconFiles"];

  if (![v99 count])
  {
    v10 = [v97 objectForKeyedSubscript:@"CFBundleIconFiles"];

    if (![v10 count])
    {
      v90 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2202);
      v91 = brc_default_log(1, 0);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        +[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:];
      }

      goto LABEL_98;
    }

    v99 = v10;
  }

  v98 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = CFBundleCopyResourcesDirectoryURL(a4);
  v113 = [(__CFURL *)v11 path];

  v133 = 0;
  v12 = [v98 contentsOfDirectoryAtPath:v113 error:&v133];
  v103 = v133;
  v116 = v12;
  if (![v12 count])
  {
    v117 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2214);
    v88 = brc_default_log(1, 0);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v136 = v113;
      v137 = 2112;
      v138 = v103;
      v139 = 2112;
      v140 = v117;
      _os_log_impl(&dword_1AE2A9000, v88, OS_LOG_TYPE_DEFAULT, "[WARNING] unable to list contents of directory at '%@'; %@%@", buf, 0x20u);
    }

    goto LABEL_97;
  }

  v117 = [MEMORY[0x1E695DFA8] set];
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v13 = v99;
  v14 = [v13 countByEnumeratingWithState:&v129 objects:v149 count:16];
  if (v14)
  {
    v15 = *v130;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v130 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v129 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self BEGINSWITH %@ AND self ENDSWITH[c] '.png'", v17];
        v20 = [v116 filteredArrayUsingPredicate:v19];
        [v117 addObjectsFromArray:v20];

        objc_autoreleasePoolPop(v18);
      }

      v14 = [v13 countByEnumeratingWithState:&v129 objects:v149 count:16];
    }

    while (v14);
  }

  if (![v117 count])
  {
    v89 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2231);
    brc_default_log(1, 0);
    v95 = v110 = v89;
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
    {
      +[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:];
    }

    goto LABEL_96;
  }

  v110 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSObject count](v117, "count")}];
  v128 = 0u;
  v126 = 0u;
  v127 = 0u;
  v125 = 0u;
  obj = v117;
  v21 = [obj countByEnumeratingWithState:&v125 objects:v148 count:16];
  if (!v21)
  {
    goto LABEL_39;
  }

  v111 = *v126;
  do
  {
    v22 = 0;
    context = v21;
    do
    {
      if (*v126 != v111)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v125 + 1) + 8 * v22);
      v24 = objc_autoreleasePoolPush();
      v25 = [v113 stringByAppendingPathComponent:v23];
      v26 = [MEMORY[0x1E695DFF8] fileURLWithPath:v25];
      v27 = v26;
      if (!v26)
      {
        v31 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2243);
        v34 = brc_default_log(0, 0);
        if (os_log_type_enabled(v34, 0x90u))
        {
          *buf = 138412546;
          v136 = v23;
          v137 = 2112;
          v138 = v31;
          v36 = v34;
          v37 = "[ERROR] can't find URL for resource %@%@";
          goto LABEL_29;
        }

LABEL_36:

        goto LABEL_37;
      }

      v28 = softLinkCGImageSourceCreateWithURL(v26, 0);
      if (!v28)
      {
        v31 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2250);
        v34 = brc_default_log(0, 0);
        if (os_log_type_enabled(v34, 0x90u))
        {
          *buf = 138412546;
          v136 = v27;
          v137 = 2112;
          v138 = v31;
          v36 = v34;
          v37 = "[ERROR] can't create image source for %@%@";
LABEL_29:
          _os_log_error_impl(&dword_1AE2A9000, v36, 0x90u, v37, buf, 0x16u);
        }

        goto LABEL_36;
      }

      v29 = getkCGImageSourceShouldCache();
      v146[0] = v29;
      v147[0] = MEMORY[0x1E695E110];
      v30 = getkCGImageSourceSkipMetadata();
      v146[1] = v30;
      v147[1] = MEMORY[0x1E695E118];
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:v146 count:2];

      ImageAtIndex = softLinkCGImageSourceCreateImageAtIndex(v28, 0, v31);
      v33 = ImageAtIndex;
      if (ImageAtIndex)
      {
        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:softLinkCGImageGetWidth(ImageAtIndex)];
        if ([v34 integerValue]<= 0)
        {
          v40 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2267);
          v41 = brc_default_log(0, 0);
          if (os_log_type_enabled(v41, 0x90u))
          {
            *buf = 138412546;
            v136 = v27;
            v137 = 2112;
            v138 = v40;
            _os_log_error_impl(&dword_1AE2A9000, v41, 0x90u, "[ERROR] can't use image with a width smaller than 1; %@%@", buf, 0x16u);
          }

          CFRelease(v33);
          CFRelease(v28);
        }

        else
        {
          v144[0] = @"BRIconURL";
          v144[1] = @"BRIconWidth";
          v145[0] = v27;
          v145[1] = v34;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v145 forKeys:v144 count:2];
          [v110 insertObject:v35 atIndex:[v110 indexOfObject:v35 inSortedRange:0 options:[v110 count] usingComparator:1024, &__block_literal_global_465]];
          CFRelease(v33);
          CFRelease(v28);
        }

        goto LABEL_36;
      }

      v38 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2259);
      v39 = brc_default_log(0, 0);
      if (os_log_type_enabled(v39, 0x90u))
      {
        *buf = 138412546;
        v136 = v27;
        v137 = 2112;
        v138 = v38;
        _os_log_error_impl(&dword_1AE2A9000, v39, 0x90u, "[ERROR] can't create image for %@%@", buf, 0x16u);
      }

      CFRelease(v28);
LABEL_37:

      objc_autoreleasePoolPop(v24);
      v22 = v22 + 1;
    }

    while (context != v22);
    v21 = [obj countByEnumeratingWithState:&v125 objects:v148 count:16];
  }

  while (v21);
LABEL_39:

  if ([v110 count])
  {
    v42 = [a1 _containerRepositoryURLForMangledID:v96];
    v95 = [v42 path];

    v124 = v103;
    v43 = [v98 createDirectoryAtPath:v95 withIntermediateDirectories:1 attributes:0 error:&v124];
    v44 = v124;

    if (v43)
    {
      v123 = v44;
      v102 = [v98 brc_createTemporarySubdirectoryOfItem:v95 withTemplate:@".XXXXXX" error:&v123];
      v45 = v123;

      if (v102)
      {
        log = BRContainerIconCKAssetKeys();
        v93 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self ENDSWITH %@", @"iOS"];
        [log filteredSetUsingPredicate:?];
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        bundlea = v120 = 0u;
        v46 = [(__CFBundle *)bundlea countByEnumeratingWithState:&v119 objects:v143 count:16];
        if (!v46)
        {
          goto LABEL_77;
        }

        v107 = *v120;
        while (1)
        {
          v47 = 0;
          obja = v46;
          do
          {
            if (*v120 != v107)
            {
              objc_enumerationMutation(bundlea);
            }

            v48 = *(*(&v119 + 1) + 8 * v47);
            contexta = objc_autoreleasePoolPush();
            v49 = BRContainerIconNameForCKAssetKey(v48);
            if (v49)
            {
              v50 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2322);
              v51 = brc_default_log(1, 0);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v136 = v49;
                v137 = 2112;
                v138 = v50;
                _os_log_debug_impl(&dword_1AE2A9000, v51, OS_LOG_TYPE_DEBUG, "[DEBUG] generating %@%@", buf, 0x16u);
              }

              v52 = [@"AppIconMask" stringByAppendingString:v49];
              v53 = [MEMORY[0x1E696AAE8] mainBundle];
              v54 = [v53 pathForResource:v52 ofType:@"png"];

              v112 = [(objc_class *)getUIImageClass() imageWithContentsOfFile:v54];
              if (v112)
              {
                v55 = BRContainerIconSizeForName(v49);
                v57 = v56;
                v58 = [MEMORY[0x1E696AD98] numberWithInteger:v55];
                v59 = [v110 indexOfObject:v58 inSortedRange:0 options:[v110 count] usingComparator:1280, &__block_literal_global_478];

                v60 = [v110 objectAtIndexedSubscript:v59 - (v59 == [v110 count])];
                UIImageClass = getUIImageClass();
                v62 = [v60 objectForKeyedSubscript:@"BRIconURL"];
                v63 = [v62 path];
                v64 = [(objc_class *)UIImageClass imageWithContentsOfFile:v63];

                if (!v64)
                {
                  v70 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2385);
                  v71 = brc_default_log(0, 0);
                  if (os_log_type_enabled(v71, 0x90u))
                  {
                    v76 = [v60 objectForKeyedSubscript:@"BRIconURL"];
                    *buf = 138412546;
                    v136 = v76;
                    v137 = 2112;
                    v138 = v70;
                    _os_log_error_impl(&dword_1AE2A9000, v71, 0x90u, "[ERROR] unable to create an image with the contents of %@.%@", buf, 0x16u);
                  }

                  goto LABEL_73;
                }

                v65 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2390);
                v66 = brc_default_log(1, 0);
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                {
                  [v64 size];
                  v80 = v79;
                  [v64 scale];
                  v82 = v81;
                  [v64 size];
                  v84 = v83;
                  [v64 scale];
                  *buf = 134218498;
                  v136 = (v80 * v82);
                  v137 = 2048;
                  v138 = (v84 * v85);
                  v139 = 2112;
                  v140 = v65;
                  _os_log_debug_impl(&dword_1AE2A9000, v66, OS_LOG_TYPE_DEBUG, "[DEBUG] best candidate has a size of {%ld, %ld}%@", buf, 0x20u);
                }

                softLinkUIGraphicsBeginImageContextWithOptions(0, v55, v57, 1.0);
                CurrentContext = softLinkUIGraphicsGetCurrentContext();
                v68 = v112;
                v69 = [v112 CGImage];
                softLinkCGContextClipToMask(CurrentContext, v69, 0.0, 0.0, v55, v57);
                [v64 drawInRect:{0.0, 0.0, v55, v57}];
                v70 = softLinkUIGraphicsGetImageFromCurrentImageContext();

                softLinkUIGraphicsEndImageContext();
                v71 = softLinkUIImagePNGRepresentation(v70);
                if (v71)
                {
                  v72 = [v49 stringByAppendingPathExtension:@"png"];
                  v73 = [v102 stringByAppendingPathComponent:v72];

                  v118 = v45;
                  LOBYTE(v72) = [v71 writeToFile:v73 options:1 error:&v118];
                  v104 = v118;

                  if (v72)
                  {
                    v74 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2406);
                    v75 = brc_default_log(1, 0);
                    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412802;
                      v136 = v49;
                      v137 = 2112;
                      v138 = v73;
                      v139 = 2112;
                      v140 = v74;
                      _os_log_debug_impl(&dword_1AE2A9000, v75, OS_LOG_TYPE_DEBUG, "[DEBUG] wrote icon data for '%@' to '%@'%@", buf, 0x20u);
                    }

                    [v100 setObject:v73 forKeyedSubscript:v49];
LABEL_72:

                    v45 = v104;
LABEL_73:

LABEL_74:
                    goto LABEL_75;
                  }

                  v77 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2404);
                  v78 = brc_default_log(0, 0);
                  if (os_log_type_enabled(v78, 0x90u))
                  {
                    *buf = 138413058;
                    v136 = v49;
                    v137 = 2112;
                    v138 = v73;
                    v139 = 2112;
                    v140 = v104;
                    v141 = 2112;
                    v142 = v77;
                    _os_log_error_impl(&dword_1AE2A9000, v78, 0x90u, "[ERROR] failed writing icon data for '%@' to '%@', error: '%@'%@", buf, 0x2Au);
                  }
                }

                else
                {
                  v73 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2410);
                  v77 = brc_default_log(1, 0);
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v136 = v70;
                    v137 = 2112;
                    v138 = v73;
                    _os_log_impl(&dword_1AE2A9000, v77, OS_LOG_TYPE_DEFAULT, "[WARNING] unable to compute the PNG representation of %@%@", buf, 0x16u);
                  }

                  v104 = v45;
                }

                goto LABEL_72;
              }

              v60 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2328);
              v70 = brc_default_log(1, 0);
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v136 = v52;
                v137 = 2112;
                v138 = v60;
                _os_log_debug_impl(&dword_1AE2A9000, v70, OS_LOG_TYPE_DEBUG, "[DEBUG] unable to find icon mask for %@%@", buf, 0x16u);
              }

              goto LABEL_74;
            }

            v52 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2319);
            v54 = brc_default_log(1, 0);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v136 = v48;
              v137 = 2112;
              v138 = v52;
              _os_log_debug_impl(&dword_1AE2A9000, v54, OS_LOG_TYPE_DEBUG, "[DEBUG] unable to retrieve icon name from asset key '%@'%@", buf, 0x16u);
            }

LABEL_75:

            objc_autoreleasePoolPop(contexta);
            v47 = v47 + 1;
          }

          while (obja != v47);
          v46 = [(__CFBundle *)bundlea countByEnumeratingWithState:&v119 objects:v143 count:16];
          if (!v46)
          {
LABEL_77:

            v86 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2413);
            v87 = brc_default_log(1, 0);
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
            {
              +[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:];
            }

            goto LABEL_93;
          }
        }
      }

      log = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2308);
      v93 = brc_default_log(0, 0);
      if (os_log_type_enabled(v93, 0x90u))
      {
        *buf = 138412802;
        v136 = v95;
        v137 = 2112;
        v138 = v45;
        v139 = 2112;
        v140 = log;
        _os_log_error_impl(&dword_1AE2A9000, v93, 0x90u, "[ERROR] unable to create directory at '%@.XXXXXX'; %@%@", buf, 0x20u);
      }

LABEL_93:

      v44 = v45;
    }

    else
    {
      v102 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2302);
      log = brc_default_log(0, 0);
      if (os_log_type_enabled(log, 0x90u))
      {
        *buf = 138412802;
        v136 = v95;
        v137 = 2112;
        v138 = v44;
        v139 = 2112;
        v140 = v102;
        _os_log_error_impl(&dword_1AE2A9000, log, 0x90u, "[ERROR] unable to create directory at '%@'; %@%@", buf, 0x20u);
      }
    }

    v103 = v44;
  }

  else
  {
    v95 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2295);
    v102 = brc_default_log(0, 0);
    if (os_log_type_enabled(v102, 0x90u))
    {
      +[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:];
    }
  }

LABEL_96:
  v88 = v110;
LABEL_97:

LABEL_98:
  __brc_leave_section(v134);

  v92 = *MEMORY[0x1E69E9840];
}

uint64_t __93__BRContainer_BRInternalAdditions___generateiOSIconsForMangledID_usingBundle_generatedIcons___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"BRIconWidth"];
  v6 = [v5 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"BRIconWidth"];

  v8 = [v7 integerValue];
  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 != v8;
  }
}

uint64_t __93__BRContainer_BRInternalAdditions___generateiOSIconsForMangledID_usingBundle_generatedIcons___block_invoke_475(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v4 integerValue];
    v8 = [v6 objectForKeyedSubscript:@"BRIconWidth"];

    v9 = [v8 integerValue];
  }

  else
  {
    v10 = [v4 objectForKeyedSubscript:@"BRIconWidth"];
    v7 = [v10 integerValue];

    v9 = [v5 integerValue];
  }

  if (v7 < v9)
  {
    v11 = -1;
  }

  else
  {
    v11 = v7 != v9;
  }

  return v11;
}

+ (id)propertiesForMangledID:(id)a3 usingBundle:(__CFBundle *)a4 minimumBundleVersion:(id)a5 bundleIcons:(id *)a6
{
  v101 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  if (a4)
  {
    v12 = CFBundleGetInfoDictionary(a4);
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695E500]];
    v82 = v12;
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
    v15 = v14;
    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v17 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) propertiesForMangledID:usingBundle:minimumBundleVersion:bundleIcons:]", 2433);
      v18 = brc_default_log(1, 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *&buf[4] = v15;
        v95 = 2112;
        v96 = v13;
        v97 = 2112;
        v98 = v17;
        _os_log_impl(&dword_1AE2A9000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] invalid version %@ or identifier %@%@", buf, 0x20u);
      }

      v19 = 0;
    }

    else
    {
      v79 = a1;
      v20 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) propertiesForMangledID:usingBundle:minimumBundleVersion:bundleIcons:]", 2440);
      v21 = brc_default_log(1, 0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        *&buf[4] = v15;
        v95 = 2112;
        v96 = v13;
        v97 = 2112;
        v98 = v11;
        v99 = 2112;
        v100 = v20;
        _os_log_debug_impl(&dword_1AE2A9000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] bundle %@ has version %@, minimum version is %@%@", buf, 0x2Au);
      }

      if (v11 && [v11 compare:v13 options:64] != -1)
      {
        v19 = 0;
LABEL_76:

        goto LABEL_77;
      }

      v23 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) propertiesForMangledID:usingBundle:minimumBundleVersion:bundleIcons:]", 2446);
      v24 = brc_default_log(1, 0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        *&buf[4] = v15;
        v95 = 2112;
        v96 = v10;
        v97 = 2112;
        v98 = v23;
        _os_log_debug_impl(&dword_1AE2A9000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] metadata for %@ client of %@ is out of date%@", buf, 0x20u);
      }

      v25 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:9];
      [v25 setObject:v13 forKeyedSubscript:@"BRContainerVersionNumber"];
      [v25 setObject:BRContainerFormatVersionNumberValue forKeyedSubscript:@"BRContainerFormatVersionNumber"];
      v26 = [v82 objectForKeyedSubscript:*MEMORY[0x1E695E128]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v25 setObject:v26 forKeyedSubscript:@"BRContainerDocumentTypes"];
      }

      v27 = [v82 objectForKeyedSubscript:@"UTExportedTypeDeclarations"];
      objc_opt_class();
      v81 = v27;
      if (objc_opt_isKindOfClass())
      {
        [v25 setObject:v27 forKeyedSubscript:@"BRContainerExportedTypes"];
      }

      v28 = [v82 objectForKeyedSubscript:@"UTImportedTypeDeclarations"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v25 setObject:v28 forKeyedSubscript:@"BRContainerImportedTypes"];
      }

      v77 = v28;
      v80 = v25;
      v29 = [v82 objectForKeyedSubscript:@"NSUbiquitousContainers"];
      if (v29)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v29 = 0;
        }
      }

      v30 = [v10 appLibraryOrZoneName];
      v76 = v29;
      v31 = [v29 objectForKeyedSubscript:v30];

      v70 = a4;
      if (v31)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v31 = 0;
        }
      }

      v32 = [v31 objectForKeyedSubscript:@"NSUbiquitousContainerName"];
      objc_opt_class();
      v78 = v26;
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v32 length])
      {
        v33 = @"NSUbiquitousContainerName";
      }

      else
      {
        v74 = a6;
        v34 = *MEMORY[0x1E695E4F8];
        v93[0] = *MEMORY[0x1E695E120];
        v93[1] = v34;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v35 = v90 = 0u;
        v36 = [v35 countByEnumeratingWithState:&v87 objects:v92 count:16];
        if (v36)
        {
          v37 = v36;
          v71 = v31;
          v66 = v15;
          v68 = v13;
          v38 = *v88;
          while (2)
          {
            v39 = 0;
            v40 = v32;
            do
            {
              if (*v88 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v41 = *(*(&v87 + 1) + 8 * v39);
              v32 = [v82 objectForKeyedSubscript:v41];

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v32 length])
              {
                v33 = v41;
                goto LABEL_46;
              }

              ++v39;
              v40 = v32;
            }

            while (v37 != v39);
            v37 = [v35 countByEnumeratingWithState:&v87 objects:v92 count:16];
            if (v37)
            {
              continue;
            }

            break;
          }

          v33 = 0;
LABEL_46:
          v15 = v66;
          v13 = v68;
          v31 = v71;
        }

        else
        {
          v33 = 0;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v32 length])
        {
          v42 = [v79 _sanitizedContainerFallbackNameForMangledID:v10];

          v32 = v42;
        }

        a6 = v74;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v32 length])
      {
        v19 = v80;
        [v80 setObject:v32 forKeyedSubscript:@"BRContainerName"];
        if (v33)
        {
          v72 = v31;
          v75 = a6;
          v67 = v15;
          v69 = v13;
          v64 = v11;
          v65 = v10;
          context = objc_autoreleasePoolPush();
          *buf = v33;
          v43 = CFSetCreate(*MEMORY[0x1E695E4A8], buf, 1, MEMORY[0x1E695E9F8]);
          v44 = _CFBundleCopyFilteredLocalizedStringsForAllLocalizations();
          CFRelease(v43);
          v45 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v44, "count")}];
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v46 = v44;
          v47 = [v46 countByEnumeratingWithState:&v83 objects:v91 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v84;
            do
            {
              for (i = 0; i != v48; ++i)
              {
                if (*v84 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = *(*(&v83 + 1) + 8 * i);
                v52 = [v46 objectForKeyedSubscript:v51];
                v53 = [v52 objectForKeyedSubscript:v33];
                if (v53)
                {
                  [v45 setObject:v53 forKeyedSubscript:v51];
                }
              }

              v48 = [v46 countByEnumeratingWithState:&v83 objects:v91 count:16];
            }

            while (v48);
          }

          v15 = v67;
          v19 = v80;
          if ([v45 count])
          {
            [v80 setObject:v45 forKeyedSubscript:@"BRContainerLocalizedNames"];
          }

          objc_autoreleasePoolPop(context);
          v11 = v64;
          v10 = v65;
          v13 = v69;
          v31 = v72;
          a6 = v75;
        }
      }

      else
      {

        v33 = 0;
        v19 = v80;
      }

      v54 = [v31 objectForKeyedSubscript:@"NSUbiquitousContainerIsDocumentScopePublic"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v19 setObject:v54 forKeyedSubscript:@"BRContainerIsDocumentScopePublic"];
        v55 = [v54 BOOLValue];
        if (a6)
        {
          if (v55)
          {
            v73 = v31;
            v56 = v15;
            v57 = [MEMORY[0x1E695DF90] dictionary];
            v58 = objc_autoreleasePoolPush();
            [v79 _generateiOSIconsForMangledID:v10 usingBundle:v70 generatedIcons:v57];
            v59 = v58;
            v19 = v80;
            objc_autoreleasePoolPop(v59);
            v60 = v57;
            *a6 = v57;
            if ([v60 count])
            {
              [v80 setObject:BRContainerIconGeneratorVersionNumberValue forKeyedSubscript:@"BRContainerIconGeneratorVersionNumber"];
            }

            v15 = v56;
            v31 = v73;
          }
        }
      }

      v17 = v78;
      v18 = v81;
    }

    goto LABEL_76;
  }

  v82 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) propertiesForMangledID:usingBundle:minimumBundleVersion:bundleIcons:]", 2423);
  v13 = brc_default_log(0, 0);
  if (os_log_type_enabled(v13, 0x90u))
  {
    +[BRContainer(BRInternalAdditions) versionOfBundle:changedFromVersion:];
  }

  v19 = 0;
LABEL_77:

  v61 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BOOL)containsExcludedDocumentsOnTheFSWithExcludedButPreservedFilename:(id)a3 excludedButPreservedExtensions:(id)a4 andStampUploadedAppWithXattr:(BOOL)a5
{
  v42 = a5;
  v61[1] = *MEMORY[0x1E69E9840];
  v41 = a3;
  v43 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [(BRContainer *)self documentsURL];
  v44 = *MEMORY[0x1E695DBD8];
  v61[0] = *MEMORY[0x1E695DBD8];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  v10 = [v7 enumeratorAtURL:v8 includingPropertiesForKeys:v9 options:2 errorHandler:0];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v51;
    v40 = *MEMORY[0x1E695DCD8];
    v15 = v41;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v51 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v50 + 1) + 8 * i);
        v48 = 0;
        v49 = 0;
        v18 = [v17 getResourceValue:&v49 forKey:v44 error:&v48];
        v19 = v49;
        v20 = v48;
        if (v18 && [v19 BOOLValue])
        {
          if (v42)
          {
            v21 = [v17 lastPathComponent];
            v22 = [v21 br_pathExtension];
            v23 = [v22 isEqualToString:@"app"];

            if (v23)
            {
              v46 = 0;
              v47 = 0;
              v24 = [v17 getResourceValue:&v47 forKey:v40 error:&v46];
              v25 = v47;
              v26 = v46;

              if (v24)
              {
                if ([v25 BOOLValue])
                {
                  value = 7562617;
                  v27 = [v17 path];
                  v28 = setxattr([v27 fileSystemRepresentation], "com.apple.clouddocs.app-uploaded", &value, 4uLL, 0, 0);

                  if (v28 < 0)
                  {
                    v29 = *__error();
                    v39 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) containsExcludedDocumentsOnTheFSWithExcludedButPreservedFilename:excludedButPreservedExtensions:andStampUploadedAppWithXattr:]", 2594);
                    v30 = brc_default_log(0, 0);
                    if (os_log_type_enabled(v30, 0x90u))
                    {
                      v33 = [v17 path];
                      *buf = 138412802;
                      v55 = v33;
                      v56 = 1024;
                      v57 = v29;
                      v58 = 2112;
                      v59 = v39;
                      _os_log_error_impl(&dword_1AE2A9000, v30, 0x90u, "[ERROR] can't set uploaded xattr on %@ %{errno}d%@", buf, 0x1Cu);
                    }

                    *__error() = v29;
                  }
                }
              }

              v20 = v26;
            }

            v15 = v41;
          }
        }

        else
        {
          v31 = [v17 path];
          v32 = [v31 br_isExcludedButPreservedAtLogOutWithFilenames:v15 extensions:v43];

          if (v32)
          {
            v35 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) containsExcludedDocumentsOnTheFSWithExcludedButPreservedFilename:excludedButPreservedExtensions:andStampUploadedAppWithXattr:]", 2605);
            v36 = brc_default_log(1, 0);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              [BRContainer(BRInternalAdditions) containsExcludedDocumentsOnTheFSWithExcludedButPreservedFilename:excludedButPreservedExtensions:andStampUploadedAppWithXattr:];
            }

            v34 = 1;
            goto LABEL_27;
          }

          [v11 skipDescendants];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v34 = 0;
  }

  else
  {
    v34 = 0;
    v15 = v41;
  }

LABEL_27:

  v37 = *MEMORY[0x1E69E9840];
  return v34;
}

- (BOOL)registerCurrentProcessAsPriorityHintWithError:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  memset(v21, 0, sizeof(v21));
  __brc_create_section(0, "[BRContainer(BRPriorityHinting) registerCurrentProcessAsPriorityHintWithError:]", 2977, 0, v21);
  v5 = brc_bread_crumbs("[BRContainer(BRPriorityHinting) registerCurrentProcessAsPriorityHintWithError:]", 2977);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = v21[0];
    v15 = [(BRContainer *)self identifier];
    *buf = 134218498;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx registering current process as a priority hint for %@%@", buf, 0x20u);
  }

  v7 = +[BRDaemonConnection defaultConnection];
  v8 = [v7 newSyncProxy];

  v9 = [(BRContainer *)self identifier];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __80__BRContainer_BRPriorityHinting__registerCurrentProcessAsPriorityHintWithError___block_invoke;
  v19 = &unk_1E7A16750;
  v10 = v8;
  v20 = v10;
  [v10 getContainerURLForID:v9 reply:&v16];

  v11 = [v10 error];

  if (a3 && v11)
  {
    *a3 = [v10 error];
  }

  __brc_leave_section(v21);
  v12 = *MEMORY[0x1E69E9840];
  return v11 == 0;
}

+ (void)unregisterCurrentProcessAsPriorityHint
{
  v2 = +[BRDaemonConnection defaultConnection];
  [v2 invalidate];
}

- (id)versionNumberForBundleIdentifier:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(BRContainer *)self bundleIDVersions];
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = [v6 objectForKeyedSubscript:@"BRContainerFormatVersionNumber"];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) versionNumberForBundleIdentifier:]", 1568);
      v10 = brc_default_log(1, 0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

        v12 = 0;
        goto LABEL_16;
      }

      objc_opt_class();
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_15();
      v24 = v9;
      v14 = v13;
      _os_log_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] failed retrieving format version for %@: unexpected kind of class (expected: NSNumber, actual: %@)%@", &v19, 0x20u);
    }

    else
    {
      v8 = [v7 intValue];
      if (v8 < [BRContainerFormatVersionNumberValue intValue])
      {
        v9 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) versionNumberForBundleIdentifier:]", 1572);
        v10 = brc_default_log(1, 0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v19 = 138413058;
          v20 = v7;
          v21 = 2112;
          v22 = BRContainerFormatVersionNumberValue;
          v23 = 2112;
          v24 = v4;
          v25 = 2112;
          v26 = v9;
          _os_log_debug_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] overwriting old plist from version %@ to %@ for %@%@", &v19, 0x2Au);
        }

        goto LABEL_15;
      }

      v11 = [v5 objectForKeyedSubscript:v4];
      v9 = [v11 objectForKeyedSubscript:@"BRContainerVersionNumber"];

      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9 = v9;
        v12 = v9;
LABEL_16:

        goto LABEL_17;
      }

      v10 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) versionNumberForBundleIdentifier:]", 1579);
      v14 = brc_default_log(1, 0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        objc_opt_class();
        OUTLINED_FUNCTION_3_1();
        OUTLINED_FUNCTION_15();
        v24 = v10;
        v16 = v15;
        _os_log_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] failed retrieving  version for %@: unexpected kind of class (expected: NSString, actual: %@)%@", &v19, 0x20u);
      }
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_17:

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)initWithMangledID:dataRepresentation:.cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRContainer initWithMangledID:dataRepresentation:]", 320);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: mangledID%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithMangledID:dataRepresentation:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] creating container metadata for %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __39__BRContainer_accessPropertiesInBlock___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_imageDataForSize:(_BYTE *)a1 scale:isiOSIcon:shouldTransformToAppIcon:.cold.1(_BYTE *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *a1;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v1, v2, "[DEBUG] image returned %@ an iOS icon%@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_imageDataForSize:(_BYTE *)a1 scale:isiOSIcon:shouldTransformToAppIcon:.cold.2(_BYTE *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *a1;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v1, v2, "[DEBUG] image returned %@%@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] no image found for the given size%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] not a synced image size%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__BRContainer_forceRefreshAllContainersWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_replaceDataRepresentationWithData:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_1(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: failed to parse the given data to a plist. error: %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_sanitizedContainerFallbackNameForMangledID:.cold.1()
{
  OUTLINED_FUNCTION_10_1();
  v3 = [v2 substringToIndex:1];
  v4 = [v3 uppercaseString];

  *v0 = [v1 stringByReplacingCharactersInRange:0 withString:{1, v4}];
}

void __83__BRContainer_BRFinderInternalAdditions__deleteAllContentsOnClientAndServer_error___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_1(&dword_1AE2A9000, v2, v3, "[CRIT] asking to delete all contents of %@%@");
  v4 = *MEMORY[0x1E69E9840];
}

void __83__BRContainer_BRFinderInternalAdditions__deleteAllContentsOnClientAndServer_error___block_invoke_cold_2(id *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [*a1 documentsURL];
  v5 = [v4 path];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1AE2A9000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] this container has been moved to CloudDocs, unlinking the folder at %@%@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __93__BRContainer_BRInternalAdditions__updateMetadataWithExtractorProperties_iconPaths_bundleID___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v2, v3, "[DEBUG] created plist for container %@%@");
  v4 = *MEMORY[0x1E69E9840];
}

@end