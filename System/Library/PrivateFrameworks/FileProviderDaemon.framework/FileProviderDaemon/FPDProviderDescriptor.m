@interface FPDProviderDescriptor
+ (id)personaFromExtensionRecord:(id)a3 managedPersona:(BOOL *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPersonaLegit;
- (FPDProviderDescriptor)initWithCoder:(id)a3;
- (FPDProviderDescriptor)initWithExtensionRecord:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPDProviderDescriptor

- (FPDProviderDescriptor)initWithCoder:(id)a3
{
  v73[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v69.receiver = self;
  v69.super_class = FPDProviderDescriptor;
  v5 = [(FPDProviderDescriptor *)&v69 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_topLevelBundleIdentifier"];
    topLevelBundleIdentifier = v5->_topLevelBundleIdentifier;
    v5->_topLevelBundleIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_topLevelBundleURL"];
    topLevelBundleURL = v5->_topLevelBundleURL;
    v5->_topLevelBundleURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_extensionPointVersion"];
    extensionPointVersion = v5->_extensionPointVersion;
    v5->_extensionPointVersion = v16;

    v5->_readonly = [v4 decodeBoolForKey:@"_readonly"];
    v5->_enabledByDefault = [v4 decodeBoolForKey:@"_enabledByDefault"];
    v5->_supportsEnumeration = [v4 decodeBoolForKey:@"_supportsEnumeration"];
    v5->_defaultDomainVisible = [v4 decodeBoolForKey:@"_defaultDomainVisible"];
    v5->_shouldHideExtensionName = [v4 decodeBoolForKey:@"_shouldHideExtensionName"];
    v5->_canToggleDomainVisibility = [v4 decodeBoolForKey:@"_canToggleDomainVisibility"];
    v5->_isAvailableSystemWide = [v4 decodeBoolForKey:@"_isAvailableSystemWide"];
    v5->_supportsUnzippedPackages = [v4 decodeBoolForKey:@"_supportsUnzippedPackages"];
    v5->_supportsPickingFolders = [v4 decodeBoolForKey:@"_supportsPickingFolders"];
    v5->_wantsFlattenedPackages = [v4 decodeBoolForKey:@"_wantsFlattenedPackages"];
    v5->_allowsUserControlledEviction = [v4 decodeBoolForKey:@"_allowsUserControlledEviction"];
    v5->_allowsSystemDeleteAlerts = [v4 decodeBoolForKey:@"_allowsSystemDeleteAlerts"];
    v5->_allowsContextualMenuDownloadEntry = [v4 decodeBoolForKey:@"_allowsContextualMenuDownloadEntry"];
    v5->_appliesChangesAtomically = [v4 decodeBoolForKey:@"_appliesChangesAtomically"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_downloadPipelineDepth"];
    downloadPipelineDepth = v5->_downloadPipelineDepth;
    v5->_downloadPipelineDepth = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_uploadPipelineDepth"];
    uploadPipelineDepth = v5->_uploadPipelineDepth;
    v5->_uploadPipelineDepth = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_metadataOnlyUploadPipelineDepth"];
    metadataOnlyUploadPipelineDepth = v5->_metadataOnlyUploadPipelineDepth;
    v5->_metadataOnlyUploadPipelineDepth = v22;

    v5->_owningApplicationIsManaged = [v4 decodeBoolForKey:@"_owningApplicationIsManaged"];
    v5->_owningApplicationIsHidden = [v4 decodeBoolForKey:@"_owningApplicationIsHidden"];
    v5->_usesUniqueItemIdentifiersAcrossDevices = [v4 decodeBoolForKey:@"_usesUniqueItemIdentifiersAcrossDevices"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_extensionBundleURL"];
    extensionBundleURL = v5->_extensionBundleURL;
    v5->_extensionBundleURL = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_purposeIdentifier"];
    purposeIdentifier = v5->_purposeIdentifier;
    v5->_purposeIdentifier = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifierForPushes"];
    bundleIdentifierForPushes = v5->_bundleIdentifierForPushes;
    v5->_bundleIdentifierForPushes = v28;

    v30 = MEMORY[0x1E695DFD8];
    v73[0] = objc_opt_class();
    v73[1] = objc_opt_class();
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
    v32 = [v30 setWithArray:v31];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"_supportedFileTypes"];
    supportedFileTypes = v5->_supportedFileTypes;
    v5->_supportedFileTypes = v33;

    v35 = MEMORY[0x1E695DFD8];
    v72[0] = objc_opt_class();
    v72[1] = objc_opt_class();
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
    v37 = [v35 setWithArray:v36];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"_supportedSearchFilters"];
    supportedSearchFilters = v5->_supportedSearchFilters;
    v5->_supportedSearchFilters = v38;

    v40 = MEMORY[0x1E695DFD8];
    v71[0] = objc_opt_class();
    v71[1] = objc_opt_class();
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
    v42 = [v40 setWithArray:v41];
    v43 = [v4 decodeObjectOfClasses:v42 forKey:@"_requestedExtendedAttributes"];
    requestedExtendedAttributes = v5->_requestedExtendedAttributes;
    v5->_requestedExtendedAttributes = v43;

    v45 = MEMORY[0x1E695DFD8];
    v70[0] = objc_opt_class();
    v70[1] = objc_opt_class();
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
    v47 = [v45 setWithArray:v46];
    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"_extensionStorageURLs"];
    extensionStorageURLs = v5->_extensionStorageURLs;
    v5->_extensionStorageURLs = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_extensionUUID"];
    extensionUUID = v5->_extensionUUID;
    v5->_extensionUUID = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_documentGroupName"];
    documentGroupName = v5->_documentGroupName;
    v5->_documentGroupName = v52;

    v5->_managedPersona = [v4 decodeBoolForKey:@"_managedPersona"];
    if ([(NSString *)v5->_identifier isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"]|| v5->_managedPersona)
    {
      v54 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
      v55 = [v54 userPersonaUniqueString];
      personaIdentifier = v5->_personaIdentifier;
      v5->_personaIdentifier = v55;

      v5->_managedPersona = 1;
    }

    else
    {
      v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_personaIdentifier"];
      if (v57)
      {
        v58 = [MEMORY[0x1E69DF088] personaAttributesForPersonaUniqueString:v57];
        v59 = v58;
        if (v58 && [v58 isEnterprisePersona])
        {
          v60 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
          v61 = [v60 userPersonaUniqueString];
          v62 = v5->_personaIdentifier;
          v5->_personaIdentifier = v61;

          v5->_managedPersona = 1;
        }
      }

      if (!v5->_managedPersona)
      {
        v63 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
        v64 = [v63 userPersonaUniqueString];
        v65 = v5->_personaIdentifier;
        v5->_personaIdentifier = v64;
      }
    }

    if (![(FPDProviderDescriptor *)v5 isPersonaLegit])
    {
      v66 = 0;
      goto LABEL_17;
    }

    v5->_wantsBundleBitOnlyPackageDetection = [v4 decodeBoolForKey:@"_wantsBundleBitOnlyPackageDetection"];
    v5->_allowsExternalVolumes = [v4 decodeBoolForKey:@"_allowsExternalVolumes"];
    v5->_supportsFailingUploadOnConflict = [v4 decodeBoolForKey:@"_supportsFailingUploadOnConflict"];
  }

  v66 = v5;
LABEL_17:

  v67 = *MEMORY[0x1E69E9840];
  return v66;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"_identifier"];
  [v5 encodeObject:self->_localizedName forKey:@"_localizedName"];
  [v5 encodeObject:self->_topLevelBundleIdentifier forKey:@"_topLevelBundleIdentifier"];
  [v5 encodeObject:self->_topLevelBundleURL forKey:@"_topLevelBundleURL"];
  [v5 encodeObject:self->_bundleVersion forKey:@"_bundleVersion"];
  [v5 encodeObject:self->_extensionPointVersion forKey:@"_extensionPointVersion"];
  [v5 encodeBool:self->_readonly forKey:@"_readonly"];
  [v5 encodeBool:self->_enabledByDefault forKey:@"_enabledByDefault"];
  [v5 encodeBool:self->_supportsEnumeration forKey:@"_supportsEnumeration"];
  [v5 encodeBool:self->_defaultDomainVisible forKey:@"_defaultDomainVisible"];
  [v5 encodeBool:self->_shouldHideExtensionName forKey:@"_shouldHideExtensionName"];
  [v5 encodeBool:self->_canToggleDomainVisibility forKey:@"_canToggleDomainVisibility"];
  [v5 encodeBool:self->_isAvailableSystemWide forKey:@"_isAvailableSystemWide"];
  [v5 encodeBool:self->_supportsUnzippedPackages forKey:@"_supportsUnzippedPackages"];
  [v5 encodeBool:self->_usesUniqueItemIdentifiersAcrossDevices forKey:@"_usesUniqueItemIdentifiersAcrossDevices"];
  [v5 encodeBool:self->_supportsPickingFolders forKey:@"_supportsPickingFolders"];
  [v5 encodeBool:self->_wantsFlattenedPackages forKey:@"_wantsFlattenedPackages"];
  [v5 encodeBool:self->_allowsUserControlledEviction forKey:@"_allowsUserControlledEviction"];
  [v5 encodeBool:self->_allowsSystemDeleteAlerts forKey:@"_allowsSystemDeleteAlerts"];
  [v5 encodeBool:self->_allowsContextualMenuDownloadEntry forKey:@"_allowsContextualMenuDownloadEntry"];
  [v5 encodeBool:self->_appliesChangesAtomically forKey:@"_appliesChangesAtomically"];
  [v5 encodeObject:self->_downloadPipelineDepth forKey:@"_downloadPipelineDepth"];
  [v5 encodeObject:self->_uploadPipelineDepth forKey:@"_uploadPipelineDepth"];
  [v5 encodeObject:self->_metadataOnlyUploadPipelineDepth forKey:@"_metadataOnlyUploadPipelineDepth"];
  [v5 encodeBool:self->_owningApplicationIsManaged forKey:@"_owningApplicationIsManaged"];
  [v5 encodeBool:self->_owningApplicationIsHidden forKey:@"_owningApplicationIsHidden"];
  [v5 encodeObject:self->_extensionBundleURL forKey:@"_extensionBundleURL"];
  [v5 encodeObject:self->_purposeIdentifier forKey:@"_purposeIdentifier"];
  [v5 encodeObject:self->_bundleIdentifierForPushes forKey:@"_bundleIdentifierForPushes"];
  [v5 encodeObject:self->_supportedFileTypes forKey:@"_supportedFileTypes"];
  [v5 encodeObject:self->_supportedSearchFilters forKey:@"_supportedSearchFilters"];
  [v5 encodeObject:self->_requestedExtendedAttributes forKey:@"_requestedExtendedAttributes"];
  [v5 encodeObject:self->_extensionStorageURLs forKey:@"_extensionStorageURLs"];
  [v5 encodeObject:self->_extensionUUID forKey:@"_extensionUUID"];
  [v5 encodeObject:self->_documentGroupName forKey:@"_documentGroupName"];
  [v5 encodeBool:self->_managedPersona forKey:@"_managedPersona"];
  [v5 encodeBool:self->_wantsBundleBitOnlyPackageDetection forKey:@"_wantsBundleBitOnlyPackageDetection"];
  [v5 encodeBool:self->_allowsExternalVolumes forKey:@"_allowsExternalVolumes"];
  [v5 encodeBool:self->_supportsFailingUploadOnConflict forKey:@"_supportsFailingUploadOnConflict"];
}

- (FPDProviderDescriptor)initWithExtensionRecord:(id)a3
{
  v190[3] = *MEMORY[0x1E69E9840];
  v164 = a3;
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

  v5 = [v164 URL];
  [(FPDProviderDescriptor *)v165 setExtensionBundleURL:v5];

  v163 = [v164 uniqueIdentifier];
  if (!v163)
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FPDProviderDescriptor initWithExtensionRecord:v165];
    }

    goto LABEL_61;
  }

  v6 = [v164 bundleVersion];
  [(FPDProviderDescriptor *)v165 setBundleVersion:v6];

  [(FPDProviderDescriptor *)v165 setExtensionUUID:v163];
  v7 = [v164 bundleIdentifier];
  [(FPDProviderDescriptor *)v165 setIdentifier:v7];

  v8 = [(FPDProviderDescriptor *)v165 identifier];
  v9 = [v8 hasPrefix:@"com.apple."];

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

    v161 = [v164 entitlements];
  }

  else
  {
    v161 = 0;
  }

  v16 = [v161 objectForKey:v10 ofClass:objc_opt_class()];
  if (v16)
  {
    [(FPDProviderDescriptor *)v165 setPurposeIdentifier:v16];
  }

  else
  {
    v17 = [(FPDProviderDescriptor *)v165 identifier];
    [(FPDProviderDescriptor *)v165 setPurposeIdentifier:v17];
  }

  v18 = [v164 containingBundleRecord];
  v162 = v18;
  if (v18)
  {
    v19 = [v18 bundleIdentifier];
    [(FPDProviderDescriptor *)v165 setTopLevelBundleIdentifier:v19];

    v20 = [v162 URL];
    [(FPDProviderDescriptor *)v165 setTopLevelBundleURL:v20];

    if (v9)
    {
      v21 = [v164 infoDictionary];
      v22 = [v21 objectForKey:@"CFBundleDisplayName" ofClass:objc_opt_class()];

      if (v22)
      {
        [(FPDProviderDescriptor *)v165 setLocalizedName:v22];
      }

      else
      {
        v29 = [v162 localizedName];
        [(FPDProviderDescriptor *)v165 setLocalizedName:v29];
      }
    }

    else
    {
      v22 = [v162 localizedName];
      [(FPDProviderDescriptor *)v165 setLocalizedName:v22];
    }

    v30 = [(FPDProviderDescriptor *)v165 localizedName];
    v31 = [v30 length] == 0;

    if (v31)
    {
      v32 = fp_current_or_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [(FPDProviderDescriptor *)v162 initWithExtensionRecord:v165];
      }
    }

    v33 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v34 = [(FPDProviderDescriptor *)v165 topLevelBundleIdentifier];
    v165->_owningApplicationIsManaged = [v33 isAppManaged:v34];

    v35 = MEMORY[0x1E698B0D0];
    v28 = [(FPDProviderDescriptor *)v165 topLevelBundleIdentifier];
    v36 = [v35 applicationWithBundleIdentifier:v28];
    v165->_owningApplicationIsHidden = [v36 isHidden];
  }

  else
  {
    v23 = [v164 localizedName];
    [(FPDProviderDescriptor *)v165 setLocalizedName:v23];

    v24 = [(FPDProviderDescriptor *)v165 localizedName];
    v25 = v24 == 0;

    if (v25)
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [FPDProviderDescriptor initWithExtensionRecord:v165];
      }
    }

    v27 = [(FPDProviderDescriptor *)v165 identifier];
    [(FPDProviderDescriptor *)v165 setTopLevelBundleIdentifier:v27];

    v28 = [(FPDProviderDescriptor *)v165 extensionBundleURL];
    [(FPDProviderDescriptor *)v165 setTopLevelBundleURL:v28];
  }

  v37 = [v161 objectForKey:*v11 ofClass:objc_opt_class()];
  if (v37)
  {
    [(FPDProviderDescriptor *)v165 setBundleIdentifierForPushes:v37];
  }

  else
  {
    v38 = [(FPDProviderDescriptor *)v165 topLevelBundleIdentifier];
    [(FPDProviderDescriptor *)v165 setBundleIdentifierForPushes:v38];
  }

  v181 = 0;
  v39 = [FPDProviderDescriptor personaFromExtensionRecord:v164 managedPersona:&v181];
  [(FPDProviderDescriptor *)v165 setPersonaIdentifier:v39];

  [(FPDProviderDescriptor *)v165 setManagedPersona:v181];
  v40 = fp_current_or_default_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    [FPDProviderDescriptor initWithExtensionRecord:v165];
  }

  if (v9)
  {
    v41 = [(FPDProviderDescriptor *)v165 personaIdentifier];
    v42 = v41 == 0;

    if (v42)
    {
      v43 = [v164 bundleIdentifier];
      v44 = [v43 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];

      if (v44)
      {
        v45 = fp_current_or_default_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [(FPDProviderDescriptor *)v165 identifier];
          *buf = 138543362;
          v185 = v46;
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
      v47 = [v164 bundleIdentifier];
      v48 = [v47 isEqualToString:@"com.apple.FileProvider.LocalStorage"];

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

    v158 = [MEMORY[0x1E696AC08] defaultManager];
    v49 = [v164 infoDictionary];
    v160 = [v49 objectForKey:@"NSExtension" ofClass:objc_opt_class()];

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
          v55 = [v54 BOOLValue];
        }

        else
        {
          v55 = 0;
        }

        [(FPDProviderDescriptor *)v165 setEnabledByDefault:v55];
        objc_opt_class();
        v58 = objectForKeyOfClass(v160, @"NSExtensionFileProviderWantsFlattenedPackages");
        v152 = v58;
        if (v58)
        {
          v59 = [v58 BOOLValue];
        }

        else
        {
          v59 = 0;
        }

        [(FPDProviderDescriptor *)v165 setWantsFlattenedPackages:v59];
        objc_opt_class();
        v60 = objectForKeyOfClass(v160, @"NSExtensionFileProviderAllowsUserControlledEviction");
        v151 = v60;
        if (v60)
        {
          v61 = [v60 BOOLValue];
        }

        else
        {
          v61 = 1;
        }

        [(FPDProviderDescriptor *)v165 setAllowsUserControlledEviction:v61];
        objc_opt_class();
        v62 = objectForKeyOfClass(v160, @"NSExtensionFileProviderAllowsSystemDeleteAlerts");
        v150 = v62;
        if (v62)
        {
          v63 = [v62 BOOLValue];
        }

        else
        {
          v63 = 1;
        }

        [(FPDProviderDescriptor *)v165 setAllowsSystemDeleteAlerts:v63];
        objc_opt_class();
        v64 = objectForKeyOfClass(v160, @"NSExtensionFileProviderAllowsContextualMenuDownloadEntry");
        v149 = v64;
        if (v64)
        {
          v65 = [v64 BOOLValue];
        }

        else
        {
          v65 = 1;
        }

        [(FPDProviderDescriptor *)v165 setAllowsContextualMenuDownloadEntry:v65];
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

        v66 = [(FPDProviderDescriptor *)v165 identifier];
        v67 = [v66 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"];

        if (v67)
        {
          v68 = MEMORY[0x1E695E118];
        }

        else
        {
          v68 = v155;
          if (!v155)
          {
            v69 = 1;
LABEL_81:
            [(FPDProviderDescriptor *)v165 setDefaultDomainVisible:v69];
            objc_opt_class();
            v70 = objectForKeyOfClass(v160, @"NSFileProviderHideExtensionName");
            -[FPDProviderDescriptor setShouldHideExtensionName:](v165, "setShouldHideExtensionName:", [v70 BOOLValue]);

            objc_opt_class();
            v71 = objectForKeyOfClass(v160, @"NSFileProviderCanToggleDomainVisibility");
            v147 = v71;
            if (v71)
            {
              v72 = [v71 BOOLValue];
            }

            else
            {
              v72 = 1;
            }

            [(FPDProviderDescriptor *)v165 setCanToggleDomainVisibility:v72];
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
              v74 = [v73 BOOLValue];
            }

            else
            {
              v74 = 0;
            }

            [(FPDProviderDescriptor *)v165 setSupportsUnzippedPackages:v74];
            objc_opt_class();
            v75 = objectForKeyOfClass(v160, @"NSExtensionFileProviderSupportsPickingFolders");
            v144 = v75;
            if (v75)
            {
              v76 = [v75 BOOLValue];
            }

            else
            {
              v76 = 0;
            }

            [(FPDProviderDescriptor *)v165 setSupportsPickingFolders:v76];
            objc_opt_class();
            v154 = objectForKeyOfClass(v160, @"NSExtensionWantsBundleBitOnlyPackageDetection");
            if (v154 && ([v164 bundleIdentifier], v77 = objc_claimAutoreleasedReturnValue(), v78 = objc_msgSend(v77, "hasPrefix:", @"com.apple."), v77, v78))
            {
              v79 = [v154 BOOLValue];
            }

            else
            {
              v79 = 0;
            }

            [(FPDProviderDescriptor *)v165 setWantsBundleBitOnlyPackageDetection:v79];
            objc_opt_class();
            v80 = objectForKeyOfClass(v160, @"NSExtensionFileProviderAllowsExternalVolumes");
            v143 = v80;
            if (v80)
            {
              v81 = [v80 BOOLValue];
            }

            else
            {
              v81 = 0;
            }

            [(FPDProviderDescriptor *)v165 setAllowsExternalVolumes:v81];
            objc_opt_class();
            v82 = objectForKeyOfClass(v160, @"NSExtensionFileProviderSupportsFailingUploadOnConflict");
            v142 = v82;
            if (v82)
            {
              v83 = [v82 BOOLValue];
            }

            else
            {
              v83 = 0;
            }

            [(FPDProviderDescriptor *)v165 setSupportsFailingUploadOnConflict:v83];
            objc_opt_class();
            v84 = objectForKeyOfClass(v160, @"NSExtensionFileProviderAdditionalSyncableExtendedAttributes");
            [(FPDProviderDescriptor *)v165 setRequestedExtendedAttributes:v84];

            v85 = [(FPDProviderDescriptor *)v165 requestedExtendedAttributes];

            if (v85)
            {
              v179 = 0u;
              v180 = 0u;
              v177 = 0u;
              v178 = 0u;
              v86 = [(FPDProviderDescriptor *)v165 requestedExtendedAttributes];
              v87 = [v86 countByEnumeratingWithState:&v177 objects:v189 count:16];
              if (v87)
              {
                v88 = *v178;
                while (2)
                {
                  for (i = 0; i != v87; ++i)
                  {
                    if (*v178 != v88)
                    {
                      objc_enumerationMutation(v86);
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

                  v87 = [v86 countByEnumeratingWithState:&v177 objects:v189 count:16];
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

                        v98 = [*MEMORY[0x1E6982E48] identifier];
                        v187 = v98;
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
            v100 = [v161 objectForKey:*MEMORY[0x1E6967150] ofClass:objc_opt_class()];
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

              v101 = **(&v172[0] + 1);
              if ([v101 hasPrefix:@"/"])
              {
                v102 = [v101 substringFromIndex:1];

                v101 = v102;
              }

              v103 = [MEMORY[0x1E695DFF8] fp_homeDirectory];
              v104 = [v103 URLByAppendingPathComponent:v101 isDirectory:1];

              if (v104)
              {
                [v140 addObject:v104];

                goto LABEL_140;
              }

              v106 = fp_current_or_default_log();
              if (os_log_type_enabled(v106, OS_LOG_TYPE_FAULT))
              {
                [FPDProviderDescriptor initWithExtensionRecord:];
              }

LABEL_201:
              v132 = 0;
              goto LABEL_202;
            }

            v156 = [v160 objectForKeyedSubscript:@"NSExtensionFileProviderDocumentGroup"];
            v105 = [MEMORY[0x1E69DF068] sharedManager];
            v106 = [v105 currentPersona];

            v171 = 0;
            v107 = [v106 userPersonaUniqueString];
            v108 = v107;
            p_personaIdentifier = &v165->_personaIdentifier;
            if (v107 == v165->_personaIdentifier || [(NSString *)v107 isEqualToString:?]|| !voucher_process_can_use_arbitrary_personas())
            {
              v101 = 0;
            }

            else
            {
              v170 = 0;
              v110 = [v106 copyCurrentPersonaContextWithError:&v170];
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

              v101 = [v106 generateAndRestorePersonaContextWithPersonaUniqueString:*p_personaIdentifier, v140, 0, v142, v143, v144, v145];

              if (v101)
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
                  v116 = [v164 groupContainerURLs];
                  v117 = [v116 objectForKeyedSubscript:v156];

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
                  v134 = [(FPDProviderDescriptor *)v165 identifier];
                  [(FPDProviderDescriptor *)v133 initWithExtensionRecord:v134, buf, v115];
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
                v119 = [MEMORY[0x1E695DF70] array];
                [v119 addObject:*MEMORY[0x1E6967268]];
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

                      [v119 addObject:*v128];
                    }

                    v121 = [v120 countByEnumeratingWithState:&v166 objects:v183 count:16];
                  }

                  while (v121);
                }

                [(FPDProviderDescriptor *)v165 setSupportedSearchFilters:v119];
              }
            }

            v101 = [v160 objectForKeyedSubscript:@"NSFileProviderUsesUniqueItemIdentifiersAcrossDevices"];
            if (v101)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                -[FPDProviderDescriptor setUsesUniqueItemIdentifiersAcrossDevices:](v165, "setUsesUniqueItemIdentifiersAcrossDevices:", [v101 BOOLValue]);
              }
            }

            v106 = [v160 objectForKeyedSubscript:@"NSExtensionFileProviderDownloadPipelineDepth"];
            if (v106)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(FPDProviderDescriptor *)v165 setDownloadPipelineDepth:v106];
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

        v69 = [v68 BOOLValue];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
    goto LABEL_14;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    extensionUUID = self->_extensionUUID;
    v9 = [(FPDProviderDescriptor *)v7 extensionUUID];
    LODWORD(extensionUUID) = [(NSUUID *)extensionUUID isEqual:v9];

    if (extensionUUID)
    {
      v10 = [(FPDProviderDescriptor *)self personaIdentifier];
      if (!v10)
      {
        v9 = [(FPDProviderDescriptor *)v7 personaIdentifier];
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      v11 = [(FPDProviderDescriptor *)self personaIdentifier];
      v12 = [(FPDProviderDescriptor *)v7 personaIdentifier];
      v13 = [v11 isEqual:v12];

      if (v10)
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

+ (id)personaFromExtensionRecord:(id)a3 managedPersona:(BOOL *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  *a4 = 0;
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];

  if (v7)
  {
    v8 = MEMORY[0x1E69DF088];
    v9 = 2;
LABEL_14:
    v20 = [v8 personaAttributesForPersonaType:v9];
    v15 = [v20 userPersonaUniqueString];

    goto LABEL_15;
  }

  v10 = [v5 managedPersonas];
  v11 = [v10 count];

  v8 = MEMORY[0x1E69DF088];
  if (!v11)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v12 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
  v13 = [v12 userPersonaUniqueString];

  v14 = [v5 managedPersonas];
  v15 = [v14 firstObject];

  v16 = [v5 managedPersonas];
  v17 = [v16 count];

  if (v17 >= 2)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [FPDProviderDescriptor personaFromExtensionRecord:v5 managedPersona:v18];
    }
  }

  if (([v15 isEqualToString:v13] & 1) == 0)
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v23 = 138412802;
      v24 = v5;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v13;
      _os_log_fault_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_FAULT, "[CRIT] extension record %@ has a persona %@ not matching the managed persona %@", &v23, 0x20u);
    }
  }

  *a4 = 1;

LABEL_15:
  v21 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)isPersonaLegit
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(FPDProviderDescriptor *)self personaIdentifier];
  if (v3)
  {

LABEL_4:
    result = 1;
    goto LABEL_5;
  }

  v4 = [MEMORY[0x1E69DF068] sharedManager];
  v5 = [v4 isSharedIPad];

  if (v5)
  {
    goto LABEL_4;
  }

  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(FPDProviderDescriptor *)self identifier];
    v10 = 138543362;
    v11 = v9;
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
  v5 = [(FPDProviderDescriptor *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p, %@>", v4, self, v5];

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