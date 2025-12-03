@interface FPDProviderDescriptor
+ (id)personaFromExtensionRecord:(id)record managedPersona:(BOOL *)persona;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPersonaLegit;
- (FPDProviderDescriptor)initWithCoder:(id)coder;
- (FPDProviderDescriptor)initWithExtensionRecord:(id)record;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPDProviderDescriptor

- (FPDProviderDescriptor)initWithCoder:(id)coder
{
  v73[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v69.receiver = self;
  v69.super_class = FPDProviderDescriptor;
  v5 = [(FPDProviderDescriptor *)&v69 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_topLevelBundleIdentifier"];
    topLevelBundleIdentifier = v5->_topLevelBundleIdentifier;
    v5->_topLevelBundleIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_topLevelBundleURL"];
    topLevelBundleURL = v5->_topLevelBundleURL;
    v5->_topLevelBundleURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_extensionPointVersion"];
    extensionPointVersion = v5->_extensionPointVersion;
    v5->_extensionPointVersion = v16;

    v5->_readonly = [coderCopy decodeBoolForKey:@"_readonly"];
    v5->_enabledByDefault = [coderCopy decodeBoolForKey:@"_enabledByDefault"];
    v5->_supportsEnumeration = [coderCopy decodeBoolForKey:@"_supportsEnumeration"];
    v5->_defaultDomainVisible = [coderCopy decodeBoolForKey:@"_defaultDomainVisible"];
    v5->_shouldHideExtensionName = [coderCopy decodeBoolForKey:@"_shouldHideExtensionName"];
    v5->_canToggleDomainVisibility = [coderCopy decodeBoolForKey:@"_canToggleDomainVisibility"];
    v5->_isAvailableSystemWide = [coderCopy decodeBoolForKey:@"_isAvailableSystemWide"];
    v5->_supportsUnzippedPackages = [coderCopy decodeBoolForKey:@"_supportsUnzippedPackages"];
    v5->_supportsPickingFolders = [coderCopy decodeBoolForKey:@"_supportsPickingFolders"];
    v5->_wantsFlattenedPackages = [coderCopy decodeBoolForKey:@"_wantsFlattenedPackages"];
    v5->_allowsUserControlledEviction = [coderCopy decodeBoolForKey:@"_allowsUserControlledEviction"];
    v5->_allowsSystemDeleteAlerts = [coderCopy decodeBoolForKey:@"_allowsSystemDeleteAlerts"];
    v5->_allowsContextualMenuDownloadEntry = [coderCopy decodeBoolForKey:@"_allowsContextualMenuDownloadEntry"];
    v5->_appliesChangesAtomically = [coderCopy decodeBoolForKey:@"_appliesChangesAtomically"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_downloadPipelineDepth"];
    downloadPipelineDepth = v5->_downloadPipelineDepth;
    v5->_downloadPipelineDepth = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_uploadPipelineDepth"];
    uploadPipelineDepth = v5->_uploadPipelineDepth;
    v5->_uploadPipelineDepth = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_metadataOnlyUploadPipelineDepth"];
    metadataOnlyUploadPipelineDepth = v5->_metadataOnlyUploadPipelineDepth;
    v5->_metadataOnlyUploadPipelineDepth = v22;

    v5->_owningApplicationIsManaged = [coderCopy decodeBoolForKey:@"_owningApplicationIsManaged"];
    v5->_owningApplicationIsHidden = [coderCopy decodeBoolForKey:@"_owningApplicationIsHidden"];
    v5->_usesUniqueItemIdentifiersAcrossDevices = [coderCopy decodeBoolForKey:@"_usesUniqueItemIdentifiersAcrossDevices"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_extensionBundleURL"];
    extensionBundleURL = v5->_extensionBundleURL;
    v5->_extensionBundleURL = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_purposeIdentifier"];
    purposeIdentifier = v5->_purposeIdentifier;
    v5->_purposeIdentifier = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifierForPushes"];
    bundleIdentifierForPushes = v5->_bundleIdentifierForPushes;
    v5->_bundleIdentifierForPushes = v28;

    v30 = MEMORY[0x1E695DFD8];
    v73[0] = objc_opt_class();
    v73[1] = objc_opt_class();
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
    v32 = [v30 setWithArray:v31];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"_supportedFileTypes"];
    supportedFileTypes = v5->_supportedFileTypes;
    v5->_supportedFileTypes = v33;

    v35 = MEMORY[0x1E695DFD8];
    v72[0] = objc_opt_class();
    v72[1] = objc_opt_class();
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
    v37 = [v35 setWithArray:v36];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"_supportedSearchFilters"];
    supportedSearchFilters = v5->_supportedSearchFilters;
    v5->_supportedSearchFilters = v38;

    v40 = MEMORY[0x1E695DFD8];
    v71[0] = objc_opt_class();
    v71[1] = objc_opt_class();
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
    v42 = [v40 setWithArray:v41];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"_requestedExtendedAttributes"];
    requestedExtendedAttributes = v5->_requestedExtendedAttributes;
    v5->_requestedExtendedAttributes = v43;

    v45 = MEMORY[0x1E695DFD8];
    v70[0] = objc_opt_class();
    v70[1] = objc_opt_class();
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
    v47 = [v45 setWithArray:v46];
    v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"_extensionStorageURLs"];
    extensionStorageURLs = v5->_extensionStorageURLs;
    v5->_extensionStorageURLs = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_extensionUUID"];
    extensionUUID = v5->_extensionUUID;
    v5->_extensionUUID = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_documentGroupName"];
    documentGroupName = v5->_documentGroupName;
    v5->_documentGroupName = v52;

    v5->_managedPersona = [coderCopy decodeBoolForKey:@"_managedPersona"];
    if ([(NSString *)v5->_identifier isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"]|| v5->_managedPersona)
    {
      v54 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
      userPersonaUniqueString = [v54 userPersonaUniqueString];
      personaIdentifier = v5->_personaIdentifier;
      v5->_personaIdentifier = userPersonaUniqueString;

      v5->_managedPersona = 1;
    }

    else
    {
      v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_personaIdentifier"];
      if (v57)
      {
        v58 = [MEMORY[0x1E69DF088] personaAttributesForPersonaUniqueString:v57];
        v59 = v58;
        if (v58 && [v58 isEnterprisePersona])
        {
          v60 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
          userPersonaUniqueString2 = [v60 userPersonaUniqueString];
          v62 = v5->_personaIdentifier;
          v5->_personaIdentifier = userPersonaUniqueString2;

          v5->_managedPersona = 1;
        }
      }

      if (!v5->_managedPersona)
      {
        v63 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
        userPersonaUniqueString3 = [v63 userPersonaUniqueString];
        v65 = v5->_personaIdentifier;
        v5->_personaIdentifier = userPersonaUniqueString3;
      }
    }

    if (![(FPDProviderDescriptor *)v5 isPersonaLegit])
    {
      v66 = 0;
      goto LABEL_17;
    }

    v5->_wantsBundleBitOnlyPackageDetection = [coderCopy decodeBoolForKey:@"_wantsBundleBitOnlyPackageDetection"];
    v5->_allowsExternalVolumes = [coderCopy decodeBoolForKey:@"_allowsExternalVolumes"];
    v5->_supportsFailingUploadOnConflict = [coderCopy decodeBoolForKey:@"_supportsFailingUploadOnConflict"];
  }

  v66 = v5;
LABEL_17:

  v67 = *MEMORY[0x1E69E9840];
  return v66;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_localizedName forKey:@"_localizedName"];
  [coderCopy encodeObject:self->_topLevelBundleIdentifier forKey:@"_topLevelBundleIdentifier"];
  [coderCopy encodeObject:self->_topLevelBundleURL forKey:@"_topLevelBundleURL"];
  [coderCopy encodeObject:self->_bundleVersion forKey:@"_bundleVersion"];
  [coderCopy encodeObject:self->_extensionPointVersion forKey:@"_extensionPointVersion"];
  [coderCopy encodeBool:self->_readonly forKey:@"_readonly"];
  [coderCopy encodeBool:self->_enabledByDefault forKey:@"_enabledByDefault"];
  [coderCopy encodeBool:self->_supportsEnumeration forKey:@"_supportsEnumeration"];
  [coderCopy encodeBool:self->_defaultDomainVisible forKey:@"_defaultDomainVisible"];
  [coderCopy encodeBool:self->_shouldHideExtensionName forKey:@"_shouldHideExtensionName"];
  [coderCopy encodeBool:self->_canToggleDomainVisibility forKey:@"_canToggleDomainVisibility"];
  [coderCopy encodeBool:self->_isAvailableSystemWide forKey:@"_isAvailableSystemWide"];
  [coderCopy encodeBool:self->_supportsUnzippedPackages forKey:@"_supportsUnzippedPackages"];
  [coderCopy encodeBool:self->_usesUniqueItemIdentifiersAcrossDevices forKey:@"_usesUniqueItemIdentifiersAcrossDevices"];
  [coderCopy encodeBool:self->_supportsPickingFolders forKey:@"_supportsPickingFolders"];
  [coderCopy encodeBool:self->_wantsFlattenedPackages forKey:@"_wantsFlattenedPackages"];
  [coderCopy encodeBool:self->_allowsUserControlledEviction forKey:@"_allowsUserControlledEviction"];
  [coderCopy encodeBool:self->_allowsSystemDeleteAlerts forKey:@"_allowsSystemDeleteAlerts"];
  [coderCopy encodeBool:self->_allowsContextualMenuDownloadEntry forKey:@"_allowsContextualMenuDownloadEntry"];
  [coderCopy encodeBool:self->_appliesChangesAtomically forKey:@"_appliesChangesAtomically"];
  [coderCopy encodeObject:self->_downloadPipelineDepth forKey:@"_downloadPipelineDepth"];
  [coderCopy encodeObject:self->_uploadPipelineDepth forKey:@"_uploadPipelineDepth"];
  [coderCopy encodeObject:self->_metadataOnlyUploadPipelineDepth forKey:@"_metadataOnlyUploadPipelineDepth"];
  [coderCopy encodeBool:self->_owningApplicationIsManaged forKey:@"_owningApplicationIsManaged"];
  [coderCopy encodeBool:self->_owningApplicationIsHidden forKey:@"_owningApplicationIsHidden"];
  [coderCopy encodeObject:self->_extensionBundleURL forKey:@"_extensionBundleURL"];
  [coderCopy encodeObject:self->_purposeIdentifier forKey:@"_purposeIdentifier"];
  [coderCopy encodeObject:self->_bundleIdentifierForPushes forKey:@"_bundleIdentifierForPushes"];
  [coderCopy encodeObject:self->_supportedFileTypes forKey:@"_supportedFileTypes"];
  [coderCopy encodeObject:self->_supportedSearchFilters forKey:@"_supportedSearchFilters"];
  [coderCopy encodeObject:self->_requestedExtendedAttributes forKey:@"_requestedExtendedAttributes"];
  [coderCopy encodeObject:self->_extensionStorageURLs forKey:@"_extensionStorageURLs"];
  [coderCopy encodeObject:self->_extensionUUID forKey:@"_extensionUUID"];
  [coderCopy encodeObject:self->_documentGroupName forKey:@"_documentGroupName"];
  [coderCopy encodeBool:self->_managedPersona forKey:@"_managedPersona"];
  [coderCopy encodeBool:self->_wantsBundleBitOnlyPackageDetection forKey:@"_wantsBundleBitOnlyPackageDetection"];
  [coderCopy encodeBool:self->_allowsExternalVolumes forKey:@"_allowsExternalVolumes"];
  [coderCopy encodeBool:self->_supportsFailingUploadOnConflict forKey:@"_supportsFailingUploadOnConflict"];
}

- (FPDProviderDescriptor)initWithExtensionRecord:(id)record
{
  v190[3] = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v182.receiver = self;
  v182.super_class = FPDProviderDescriptor;
  v165 = [(FPDProviderDescriptor *)&v182 init];

  v4 = v165;
  if (!v165)
  {
LABEL_206:
    v57 = v4;
    goto LABEL_207;
  }

  v5 = [recordCopy URL];
  [(FPDProviderDescriptor *)v165 setExtensionBundleURL:v5];

  uniqueIdentifier = [recordCopy uniqueIdentifier];
  if (!uniqueIdentifier)
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FPDProviderDescriptor initWithExtensionRecord:v165];
    }

    goto LABEL_61;
  }

  bundleVersion = [recordCopy bundleVersion];
  [(FPDProviderDescriptor *)v165 setBundleVersion:bundleVersion];

  [(FPDProviderDescriptor *)v165 setExtensionUUID:uniqueIdentifier];
  bundleIdentifier = [recordCopy bundleIdentifier];
  [(FPDProviderDescriptor *)v165 setIdentifier:bundleIdentifier];

  identifier = [(FPDProviderDescriptor *)v165 identifier];
  v9 = [identifier hasPrefix:@"com.apple."];

  v10 = *MEMORY[0x1E6967128];
  v11 = MEMORY[0x1E6967130];
  if (v9)
  {
    v12 = MEMORY[0x1E695DFD8];
    v190[0] = *MEMORY[0x1E6967150];
    v190[1] = v10;
    v190[2] = *MEMORY[0x1E6967130];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v190 count:3];
    v14 = [v12 setWithArray:v13];

    entitlements = [recordCopy entitlements];
  }

  else
  {
    entitlements = 0;
  }

  v16 = [entitlements objectForKey:v10 ofClass:objc_opt_class()];
  if (v16)
  {
    [(FPDProviderDescriptor *)v165 setPurposeIdentifier:v16];
  }

  else
  {
    identifier2 = [(FPDProviderDescriptor *)v165 identifier];
    [(FPDProviderDescriptor *)v165 setPurposeIdentifier:identifier2];
  }

  containingBundleRecord = [recordCopy containingBundleRecord];
  v162 = containingBundleRecord;
  if (containingBundleRecord)
  {
    bundleIdentifier2 = [containingBundleRecord bundleIdentifier];
    [(FPDProviderDescriptor *)v165 setTopLevelBundleIdentifier:bundleIdentifier2];

    v20 = [v162 URL];
    [(FPDProviderDescriptor *)v165 setTopLevelBundleURL:v20];

    if (v9)
    {
      infoDictionary = [recordCopy infoDictionary];
      localizedName2 = [infoDictionary objectForKey:@"CFBundleDisplayName" ofClass:objc_opt_class()];

      if (localizedName2)
      {
        [(FPDProviderDescriptor *)v165 setLocalizedName:localizedName2];
      }

      else
      {
        localizedName = [v162 localizedName];
        [(FPDProviderDescriptor *)v165 setLocalizedName:localizedName];
      }
    }

    else
    {
      localizedName2 = [v162 localizedName];
      [(FPDProviderDescriptor *)v165 setLocalizedName:localizedName2];
    }

    localizedName3 = [(FPDProviderDescriptor *)v165 localizedName];
    v31 = [localizedName3 length] == 0;

    if (v31)
    {
      v32 = fp_current_or_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [(FPDProviderDescriptor *)v162 initWithExtensionRecord:v165];
      }
    }

    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    topLevelBundleIdentifier = [(FPDProviderDescriptor *)v165 topLevelBundleIdentifier];
    v165->_owningApplicationIsManaged = [mEMORY[0x1E69ADFB8] isAppManaged:topLevelBundleIdentifier];

    v35 = MEMORY[0x1E698B0D0];
    topLevelBundleIdentifier2 = [(FPDProviderDescriptor *)v165 topLevelBundleIdentifier];
    v36 = [v35 applicationWithBundleIdentifier:topLevelBundleIdentifier2];
    v165->_owningApplicationIsHidden = [v36 isHidden];
  }

  else
  {
    localizedName4 = [recordCopy localizedName];
    [(FPDProviderDescriptor *)v165 setLocalizedName:localizedName4];

    localizedName5 = [(FPDProviderDescriptor *)v165 localizedName];
    v25 = localizedName5 == 0;

    if (v25)
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [FPDProviderDescriptor initWithExtensionRecord:v165];
      }
    }

    identifier3 = [(FPDProviderDescriptor *)v165 identifier];
    [(FPDProviderDescriptor *)v165 setTopLevelBundleIdentifier:identifier3];

    topLevelBundleIdentifier2 = [(FPDProviderDescriptor *)v165 extensionBundleURL];
    [(FPDProviderDescriptor *)v165 setTopLevelBundleURL:topLevelBundleIdentifier2];
  }

  v37 = [entitlements objectForKey:*v11 ofClass:objc_opt_class()];
  if (v37)
  {
    [(FPDProviderDescriptor *)v165 setBundleIdentifierForPushes:v37];
  }

  else
  {
    topLevelBundleIdentifier3 = [(FPDProviderDescriptor *)v165 topLevelBundleIdentifier];
    [(FPDProviderDescriptor *)v165 setBundleIdentifierForPushes:topLevelBundleIdentifier3];
  }

  v181 = 0;
  v39 = [FPDProviderDescriptor personaFromExtensionRecord:recordCopy managedPersona:&v181];
  [(FPDProviderDescriptor *)v165 setPersonaIdentifier:v39];

  [(FPDProviderDescriptor *)v165 setManagedPersona:v181];
  v40 = fp_current_or_default_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    [FPDProviderDescriptor initWithExtensionRecord:v165];
  }

  if (v9)
  {
    personaIdentifier = [(FPDProviderDescriptor *)v165 personaIdentifier];
    v42 = personaIdentifier == 0;

    if (v42)
    {
      bundleIdentifier3 = [recordCopy bundleIdentifier];
      v44 = [bundleIdentifier3 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];

      if (v44)
      {
        v45 = fp_current_or_default_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          identifier4 = [(FPDProviderDescriptor *)v165 identifier];
          *buf = 138543362;
          v185 = identifier4;
          _os_log_impl(&dword_1CEFC7000, v45, OS_LOG_TYPE_DEFAULT, "[NOTICE] No enterprise enrolment, dropping %{public}@ registration", buf, 0xCu);
        }

LABEL_43:

        goto LABEL_44;
      }
    }
  }

  if ([(FPDProviderDescriptor *)v165 isPersonaLegit])
  {
    if (fpfs_supports_local_storage_less())
    {
      bundleIdentifier4 = [recordCopy bundleIdentifier];
      v48 = [bundleIdentifier4 isEqualToString:@"com.apple.FileProvider.LocalStorage"];

      if (v48)
      {
        v45 = fp_current_or_default_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEFC7000, v45, OS_LOG_TYPE_DEFAULT, "[WARNING] Disabling LocalStorage extension due to feature flag", buf, 2u);
        }

        goto LABEL_43;
      }
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    infoDictionary2 = [recordCopy infoDictionary];
    v160 = [infoDictionary2 objectForKey:@"NSExtension" ofClass:objc_opt_class()];

    if (v160)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v157 = [v160 objectForKeyedSubscript:@"NSExtensionAttributes"];
        if (v157)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_53;
          }

          v50 = fp_current_or_default_log();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            [FPDProviderDescriptor initWithExtensionRecord:];
          }
        }

        v157 = 0;
LABEL_53:
        objc_opt_class();
        v51 = objectForKeyOfClass(v160, @"NSExtensionFileProviderSupportsEnumeration");
        -[FPDProviderDescriptor setSupportsEnumeration:](v165, "setSupportsEnumeration:", [v51 BOOLValue]);

        objc_opt_class();
        v52 = objectForKeyOfClass(v160, @"NSExtensionFileProviderOnlyVisibleInParentApplication");
        -[FPDProviderDescriptor setIsAvailableSystemWide:](v165, "setIsAvailableSystemWide:", [v52 BOOLValue] ^ 1);

        objc_opt_class();
        v53 = objectForKeyOfClass(v160, @"NSExtensionFileProviderReadOnly");
        -[FPDProviderDescriptor setReadonly:](v165, "setReadonly:", [v53 BOOLValue]);

        objc_opt_class();
        v54 = objectForKeyOfClass(v160, @"NSExtensionFileProviderEnabledByDefault");
        v153 = v54;
        if (v54)
        {
          bOOLValue = [v54 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        [(FPDProviderDescriptor *)v165 setEnabledByDefault:bOOLValue];
        objc_opt_class();
        v58 = objectForKeyOfClass(v160, @"NSExtensionFileProviderWantsFlattenedPackages");
        v152 = v58;
        if (v58)
        {
          bOOLValue2 = [v58 BOOLValue];
        }

        else
        {
          bOOLValue2 = 0;
        }

        [(FPDProviderDescriptor *)v165 setWantsFlattenedPackages:bOOLValue2];
        objc_opt_class();
        v60 = objectForKeyOfClass(v160, @"NSExtensionFileProviderAllowsUserControlledEviction");
        v151 = v60;
        if (v60)
        {
          bOOLValue3 = [v60 BOOLValue];
        }

        else
        {
          bOOLValue3 = 1;
        }

        [(FPDProviderDescriptor *)v165 setAllowsUserControlledEviction:bOOLValue3];
        objc_opt_class();
        v62 = objectForKeyOfClass(v160, @"NSExtensionFileProviderAllowsSystemDeleteAlerts");
        v150 = v62;
        if (v62)
        {
          bOOLValue4 = [v62 BOOLValue];
        }

        else
        {
          bOOLValue4 = 1;
        }

        [(FPDProviderDescriptor *)v165 setAllowsSystemDeleteAlerts:bOOLValue4];
        objc_opt_class();
        v64 = objectForKeyOfClass(v160, @"NSExtensionFileProviderAllowsContextualMenuDownloadEntry");
        v149 = v64;
        if (v64)
        {
          bOOLValue5 = [v64 BOOLValue];
        }

        else
        {
          bOOLValue5 = 1;
        }

        [(FPDProviderDescriptor *)v165 setAllowsContextualMenuDownloadEntry:bOOLValue5];
        objc_opt_class();
        v148 = objectForKeyOfClass(v160, @"NSExtensionFileProviderAppliesChangesAtomically");
        -[FPDProviderDescriptor setAppliesChangesAtomically:](v165, "setAppliesChangesAtomically:", [v148 BOOLValue]);
        objc_opt_class();
        v155 = objectForKeyOfClass(v160, @"NSFileProviderDefaultDomainVisible");
        if (!v155)
        {
          objc_opt_class();
          v155 = objectForKeyOfClass(v160, @"NSFileProviderDefaultDomainEnabled");
        }

        identifier5 = [(FPDProviderDescriptor *)v165 identifier];
        v67 = [identifier5 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"];

        if (v67)
        {
          v68 = MEMORY[0x1E695E118];
        }

        else
        {
          v68 = v155;
          if (!v155)
          {
            bOOLValue12 = 1;
LABEL_81:
            [(FPDProviderDescriptor *)v165 setDefaultDomainVisible:bOOLValue12];
            objc_opt_class();
            v70 = objectForKeyOfClass(v160, @"NSFileProviderHideExtensionName");
            -[FPDProviderDescriptor setShouldHideExtensionName:](v165, "setShouldHideExtensionName:", [v70 BOOLValue]);

            objc_opt_class();
            v71 = objectForKeyOfClass(v160, @"NSFileProviderCanToggleDomainVisibility");
            v147 = v71;
            if (v71)
            {
              bOOLValue6 = [v71 BOOLValue];
            }

            else
            {
              bOOLValue6 = 1;
            }

            [(FPDProviderDescriptor *)v165 setCanToggleDomainVisibility:bOOLValue6];
            objc_opt_class();
            v146 = objectForKeyOfClass(v160, @"NSExtensionPointVersion");
            if ([v146 isEqualToString:@"2.0"])
            {
              [(FPDProviderDescriptor *)v165 setSupportsEnumeration:1];
              [(FPDProviderDescriptor *)v165 setIsAvailableSystemWide:1];
            }

            objc_opt_class();
            v73 = objectForKeyOfClass(v160, @"NSExtensionFileProviderSupportsUnzippedPackages");
            v145 = v73;
            if (v73)
            {
              bOOLValue7 = [v73 BOOLValue];
            }

            else
            {
              bOOLValue7 = 0;
            }

            [(FPDProviderDescriptor *)v165 setSupportsUnzippedPackages:bOOLValue7];
            objc_opt_class();
            v75 = objectForKeyOfClass(v160, @"NSExtensionFileProviderSupportsPickingFolders");
            v144 = v75;
            if (v75)
            {
              bOOLValue8 = [v75 BOOLValue];
            }

            else
            {
              bOOLValue8 = 0;
            }

            [(FPDProviderDescriptor *)v165 setSupportsPickingFolders:bOOLValue8];
            objc_opt_class();
            v154 = objectForKeyOfClass(v160, @"NSExtensionWantsBundleBitOnlyPackageDetection");
            if (v154 && ([recordCopy bundleIdentifier], v77 = objc_claimAutoreleasedReturnValue(), v78 = objc_msgSend(v77, "hasPrefix:", @"com.apple."), v77, v78))
            {
              bOOLValue9 = [v154 BOOLValue];
            }

            else
            {
              bOOLValue9 = 0;
            }

            [(FPDProviderDescriptor *)v165 setWantsBundleBitOnlyPackageDetection:bOOLValue9];
            objc_opt_class();
            v80 = objectForKeyOfClass(v160, @"NSExtensionFileProviderAllowsExternalVolumes");
            v143 = v80;
            if (v80)
            {
              bOOLValue10 = [v80 BOOLValue];
            }

            else
            {
              bOOLValue10 = 0;
            }

            [(FPDProviderDescriptor *)v165 setAllowsExternalVolumes:bOOLValue10];
            objc_opt_class();
            v82 = objectForKeyOfClass(v160, @"NSExtensionFileProviderSupportsFailingUploadOnConflict");
            v142 = v82;
            if (v82)
            {
              bOOLValue11 = [v82 BOOLValue];
            }

            else
            {
              bOOLValue11 = 0;
            }

            [(FPDProviderDescriptor *)v165 setSupportsFailingUploadOnConflict:bOOLValue11];
            objc_opt_class();
            v84 = objectForKeyOfClass(v160, @"NSExtensionFileProviderAdditionalSyncableExtendedAttributes");
            [(FPDProviderDescriptor *)v165 setRequestedExtendedAttributes:v84];

            requestedExtendedAttributes = [(FPDProviderDescriptor *)v165 requestedExtendedAttributes];

            if (requestedExtendedAttributes)
            {
              v179 = 0u;
              v180 = 0u;
              v177 = 0u;
              v178 = 0u;
              requestedExtendedAttributes2 = [(FPDProviderDescriptor *)v165 requestedExtendedAttributes];
              v87 = [requestedExtendedAttributes2 countByEnumeratingWithState:&v177 objects:v189 count:16];
              if (v87)
              {
                v88 = *v178;
                while (2)
                {
                  for (i = 0; i != v87; ++i)
                  {
                    if (*v178 != v88)
                    {
                      objc_enumerationMutation(requestedExtendedAttributes2);
                    }

                    v90 = *(*(&v177 + 1) + 8 * i);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v91 = fp_current_or_default_log();
                      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                      {
                        [FPDProviderDescriptor initWithExtensionRecord:];
                      }

                      [(FPDProviderDescriptor *)v165 setRequestedExtendedAttributes:0];
                      goto LABEL_115;
                    }
                  }

                  v87 = [requestedExtendedAttributes2 countByEnumeratingWithState:&v177 objects:v189 count:16];
                  if (v87)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_115:
            }

            obj = [v157 objectForKeyedSubscript:@"NSFileProviderSupportedFileTypes"];
            if (obj)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v175 = 0u;
                v176 = 0u;
                v173 = 0u;
                v174 = 0u;
                obj = obj;
                v92 = [obj countByEnumeratingWithState:&v173 objects:v188 count:16];
                if (v92)
                {
                  v93 = *v174;
                  while (2)
                  {
                    for (j = 0; j != v92; ++j)
                    {
                      if (*v174 != v93)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v95 = *(*(&v173 + 1) + 8 * j);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v97 = fp_current_or_default_log();
                        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                        {
                          [FPDProviderDescriptor initWithExtensionRecord:];
                        }

                        identifier6 = [*MEMORY[0x1E6982E48] identifier];
                        v187 = identifier6;
                        v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v187 count:1];
                        [(FPDProviderDescriptor *)v165 setSupportedFileTypes:v99];

                        goto LABEL_133;
                      }
                    }

                    v92 = [obj countByEnumeratingWithState:&v173 objects:v188 count:16];
                    if (v92)
                    {
                      continue;
                    }

                    break;
                  }
                }

                [(FPDProviderDescriptor *)v165 setSupportedFileTypes:obj];
              }

              else
              {
                v96 = fp_current_or_default_log();
                if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                {
                  [(FPDProviderDescriptor *)obj initWithExtensionRecord:v165];
                }
              }
            }

            else
            {
LABEL_133:
              obj = 0;
            }

            v140 = objc_opt_new();
            v100 = [entitlements objectForKey:*MEMORY[0x1E6967150] ofClass:objc_opt_class()];
            v141 = v100;
            if (v100)
            {
              memset(v172, 0, sizeof(v172));
              v156 = v100;
              if (![v156 countByEnumeratingWithState:v172 objects:v186 count:16])
              {
LABEL_140:

                [(FPDProviderDescriptor *)v165 setHasExplicitExtensionStorageURLs:1];
                goto LABEL_160;
              }

              v145 = **(&v172[0] + 1);
              if ([v145 hasPrefix:@"/"])
              {
                v102 = [v145 substringFromIndex:1];

                v145 = v102;
              }

              fp_homeDirectory = [MEMORY[0x1E695DFF8] fp_homeDirectory];
              v104 = [fp_homeDirectory URLByAppendingPathComponent:v145 isDirectory:1];

              if (v104)
              {
                [v140 addObject:v104];

                goto LABEL_140;
              }

              currentPersona = fp_current_or_default_log();
              if (os_log_type_enabled(currentPersona, OS_LOG_TYPE_FAULT))
              {
                [FPDProviderDescriptor initWithExtensionRecord:];
              }

LABEL_201:
              v132 = 0;
              goto LABEL_202;
            }

            v156 = [v160 objectForKeyedSubscript:@"NSExtensionFileProviderDocumentGroup"];
            mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
            currentPersona = [mEMORY[0x1E69DF068] currentPersona];

            v171 = 0;
            userPersonaUniqueString = [currentPersona userPersonaUniqueString];
            v108 = userPersonaUniqueString;
            p_personaIdentifier = &v165->_personaIdentifier;
            if (userPersonaUniqueString == v165->_personaIdentifier || [(NSString *)userPersonaUniqueString isEqualToString:?]|| !voucher_process_can_use_arbitrary_personas())
            {
              v145 = 0;
            }

            else
            {
              v170 = 0;
              v110 = [currentPersona copyCurrentPersonaContextWithError:&v170];
              v111 = v170;
              v112 = v171;
              v171 = v110;

              if (v111)
              {
                v113 = fp_current_or_default_log();
                if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                {
                  [FPDProviderDescriptor initWithExtensionRecord:];
                }
              }

              v145 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:*p_personaIdentifier, v140, 0, v142, v143, v144, v145];

              if (v145)
              {
                v114 = fp_current_or_default_log();
                if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                {
                  [FPDProviderDescriptor initWithExtensionRecord:?];
                }
              }
            }

            if (v156)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v115 = [MEMORY[0x1E695DFF8] fp_uncachedContainerURLForSecurityApplicationGroupIdentifier:v156];
                if (v115)
                {
                  groupContainerURLs = [recordCopy groupContainerURLs];
                  v117 = [groupContainerURLs objectForKeyedSubscript:v156];

                  if (v117)
                  {
                    v118 = [v115 URLByAppendingPathComponent:@"File Provider Storage" isDirectory:1];
                    if (v118)
                    {
                      [v140 addObject:v118];
                      [(FPDProviderDescriptor *)v165 setDocumentGroupName:v156];

                      goto LABEL_159;
                    }

                    v136 = fp_current_or_default_log();
                    if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
                    {
                      [FPDProviderDescriptor initWithExtensionRecord:];
                    }
                  }

                  else
                  {
                    v135 = fp_current_or_default_log();
                    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                    {
                      [FPDProviderDescriptor initWithExtensionRecord:];
                    }
                  }
                }

                else
                {
                  v115 = fp_current_or_default_log();
                  if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                  {
                    [FPDProviderDescriptor initWithExtensionRecord:];
                  }
                }
              }

              else
              {
                v115 = fp_current_or_default_log();
                if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                {
                  v133 = objc_opt_class();
                  identifier7 = [(FPDProviderDescriptor *)v165 identifier];
                  [(FPDProviderDescriptor *)v133 initWithExtensionRecord:identifier7, buf, v115];
                }
              }

              _FPRestorePersona();
              goto LABEL_201;
            }

LABEL_159:

            _FPRestorePersona();
LABEL_160:
            [(FPDProviderDescriptor *)v165 setExtensionStorageURLs:v140, v140];
            v156 = [v160 objectForKeyedSubscript:@"NSExtensionFileProviderSupportedSearchCapabilities"];
            if (v156)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                array = [MEMORY[0x1E695DF70] array];
                [array addObject:*MEMORY[0x1E6967268]];
                v168 = 0u;
                v169 = 0u;
                v166 = 0u;
                v167 = 0u;
                v120 = v156;
                v121 = [v120 countByEnumeratingWithState:&v166 objects:v183 count:16];
                if (v121)
                {
                  v122 = *v167;
                  v123 = MEMORY[0x1E6967260];
                  v124 = MEMORY[0x1E6967270];
                  do
                  {
                    for (k = 0; k != v121; ++k)
                    {
                      if (*v167 != v122)
                      {
                        objc_enumerationMutation(v120);
                      }

                      v126 = *(*(&v166 + 1) + 8 * k);
                      v127 = [v126 isEqualToString:@"NSExtensionFileProviderSearchByContentType"];
                      v128 = v123;
                      if ((v127 & 1) == 0)
                      {
                        v129 = [v126 isEqualToString:@"NSExtensionFileProviderSearchScopedToDirectory"];
                        v128 = v124;
                        if (!v129)
                        {
                          continue;
                        }
                      }

                      [array addObject:*v128];
                    }

                    v121 = [v120 countByEnumeratingWithState:&v166 objects:v183 count:16];
                  }

                  while (v121);
                }

                [(FPDProviderDescriptor *)v165 setSupportedSearchFilters:array];
              }
            }

            v145 = [v160 objectForKeyedSubscript:@"NSFileProviderUsesUniqueItemIdentifiersAcrossDevices"];
            if (v145)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                -[FPDProviderDescriptor setUsesUniqueItemIdentifiersAcrossDevices:](v165, "setUsesUniqueItemIdentifiersAcrossDevices:", [v145 BOOLValue]);
              }
            }

            currentPersona = [v160 objectForKeyedSubscript:@"NSExtensionFileProviderDownloadPipelineDepth"];
            if (currentPersona)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(FPDProviderDescriptor *)v165 setDownloadPipelineDepth:currentPersona];
              }
            }

            v130 = [v160 objectForKeyedSubscript:@"NSExtensionFileProviderUploadPipelineDepth"];
            if (v130)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(FPDProviderDescriptor *)v165 setUploadPipelineDepth:v130];
              }
            }

            v131 = [v160 objectForKeyedSubscript:@"NSExtensionFileProviderMetadataOnlyUploadPipelineDepth"];
            if (v131)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(FPDProviderDescriptor *)v165 setMetadataOnlyUploadPipelineDepth:v131];
              }
            }

            v132 = 1;
LABEL_202:

            if (v132)
            {
              v137 = fp_current_or_default_log();
              if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
              {
                [FPDProviderDescriptor initWithExtensionRecord:v165];
              }

              v4 = v165;
              goto LABEL_206;
            }

LABEL_60:

            goto LABEL_61;
          }
        }

        bOOLValue12 = [v68 BOOLValue];
        goto LABEL_81;
      }

      v56 = fp_current_or_default_log();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [(FPDProviderDescriptor *)v160 initWithExtensionRecord:v165];
      }
    }

    else
    {
      v56 = fp_current_or_default_log();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [FPDProviderDescriptor initWithExtensionRecord:v165];
      }
    }

    goto LABEL_60;
  }

LABEL_44:

LABEL_61:
  v57 = 0;
LABEL_207:

  v138 = *MEMORY[0x1E69E9840];
  return v57;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_14;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    extensionUUID = self->_extensionUUID;
    extensionUUID = [(FPDProviderDescriptor *)v7 extensionUUID];
    LODWORD(extensionUUID) = [(NSUUID *)extensionUUID isEqual:extensionUUID];

    if (extensionUUID)
    {
      personaIdentifier = [(FPDProviderDescriptor *)self personaIdentifier];
      if (!personaIdentifier)
      {
        extensionUUID = [(FPDProviderDescriptor *)v7 personaIdentifier];
        if (!extensionUUID)
        {
          goto LABEL_10;
        }
      }

      personaIdentifier2 = [(FPDProviderDescriptor *)self personaIdentifier];
      personaIdentifier3 = [(FPDProviderDescriptor *)v7 personaIdentifier];
      v13 = [personaIdentifier2 isEqual:personaIdentifier3];

      if (personaIdentifier)
      {

        if (v13)
        {
LABEL_10:
          owningApplicationIsHidden = self->_owningApplicationIsHidden;
          v6 = owningApplicationIsHidden == [(FPDProviderDescriptor *)v7 owningApplicationIsHidden];
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {

        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    v6 = 0;
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)personaFromExtensionRecord:(id)record managedPersona:(BOOL *)persona
{
  v29 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  *persona = 0;
  bundleIdentifier = [recordCopy bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];

  if (v7)
  {
    v8 = MEMORY[0x1E69DF088];
    v9 = 2;
LABEL_14:
    v20 = [v8 personaAttributesForPersonaType:v9];
    userPersonaUniqueString = [v20 userPersonaUniqueString];

    goto LABEL_15;
  }

  managedPersonas = [recordCopy managedPersonas];
  v11 = [managedPersonas count];

  v8 = MEMORY[0x1E69DF088];
  if (!v11)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v12 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
  userPersonaUniqueString2 = [v12 userPersonaUniqueString];

  managedPersonas2 = [recordCopy managedPersonas];
  userPersonaUniqueString = [managedPersonas2 firstObject];

  managedPersonas3 = [recordCopy managedPersonas];
  v17 = [managedPersonas3 count];

  if (v17 >= 2)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [FPDProviderDescriptor personaFromExtensionRecord:recordCopy managedPersona:v18];
    }
  }

  if (([userPersonaUniqueString isEqualToString:userPersonaUniqueString2] & 1) == 0)
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v23 = 138412802;
      v24 = recordCopy;
      v25 = 2112;
      v26 = userPersonaUniqueString;
      v27 = 2112;
      v28 = userPersonaUniqueString2;
      _os_log_fault_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_FAULT, "[CRIT] extension record %@ has a persona %@ not matching the managed persona %@", &v23, 0x20u);
    }
  }

  *persona = 1;

LABEL_15:
  v21 = *MEMORY[0x1E69E9840];

  return userPersonaUniqueString;
}

- (BOOL)isPersonaLegit
{
  v12 = *MEMORY[0x1E69E9840];
  personaIdentifier = [(FPDProviderDescriptor *)self personaIdentifier];
  if (personaIdentifier)
  {

LABEL_4:
    result = 1;
    goto LABEL_5;
  }

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  isSharedIPad = [mEMORY[0x1E69DF068] isSharedIPad];

  if (isSharedIPad)
  {
    goto LABEL_4;
  }

  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(FPDProviderDescriptor *)self identifier];
    v10 = 138543362;
    v11 = identifier;
    _os_log_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Extension without persona out of the EDU case, dropping %{public}@ registration", &v10, 0xCu);
  }

  result = 0;
LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(FPDProviderDescriptor *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p, %@>", v4, self, identifier];

  return v6;
}

- (void)initWithExtensionRecord:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 extensionBundleURL];
  v8 = [v2 fp_shortDescription];
  OUTLINED_FUNCTION_4_2();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 extensionBundleURL];
  v2 = [v1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_5_0(v3, v4, v5, v6, v7);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:(void *)a1 .cold.3(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a1 identifier];
  v3 = [a1 personaIdentifier];
  [a1 managedPersona];
  OUTLINED_FUNCTION_4_2();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:(uint64_t)a1 .cold.4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:.cold.5()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:(uint64_t)a1 .cold.7(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:.cold.8()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:.cold.9()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_FAULT, "[CRIT] got nil URL for directory at path %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:.cold.10()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v0, v1, "[ERROR] won't restore persona: %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:(uint64_t *)a1 .cold.11(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:(uint8_t *)buf .cold.12(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543874;
  *(buf + 4) = @"NSExtensionFileProviderDocumentGroup";
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  *(buf + 11) = 2114;
  *(buf + 3) = a2;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] invalid type for key %{public}@ (expected: NSString, actual: %{public}@) -- extension identifier: %{public}@", buf, 0x20u);
}

- (void)initWithExtensionRecord:.cold.13()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v0, v1, "[ERROR] Cannot deduce the provider storage URL for %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:.cold.14()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:.cold.15()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v0, v1, "[ERROR] Cannot deduce the provided items URL for %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:(void *)a1 .cold.16(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1 identifier];
  v3 = [a1 extensionBundleURL];
  v9 = [v3 fp_shortDescription];
  OUTLINED_FUNCTION_4_2();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:(void *)a1 .cold.17(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtensionRecord:(void *)a1 .cold.18(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 extensionBundleURL];
  v2 = [v1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_5_0(v3, v4, v5, v6, v7);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)personaFromExtensionRecord:(void *)a1 managedPersona:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 managedPersonas];
  v7 = 138412546;
  v8 = a1;
  OUTLINED_FUNCTION_3_1();
  v9 = v5;
  _os_log_fault_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_FAULT, "[CRIT] extension record %@ has more than one persona associated (%@)", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end