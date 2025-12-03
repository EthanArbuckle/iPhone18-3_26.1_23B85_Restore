@interface CHSWidgetExtensionInfo
- (CHSWidgetExtensionInfo)initWithBSXPCCoder:(id)coder;
- (id)_init;
- (id)_initWithInfo:(id)info;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CHSWidgetExtensionInfo

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CHSWidgetExtensionInfo;
  return [(CHSWidgetExtensionInfo *)&v3 init];
}

- (id)_initWithInfo:(id)info
{
  infoCopy = info;
  _init = [(CHSWidgetExtensionInfo *)self _init];
  if (_init)
  {
    v6 = [infoCopy[1] copy];
    v7 = *(_init + 1);
    *(_init + 1) = v6;

    v8 = [infoCopy[2] copy];
    v9 = *(_init + 2);
    *(_init + 2) = v8;

    v10 = [infoCopy[3] copy];
    v11 = *(_init + 3);
    *(_init + 3) = v10;

    v12 = [infoCopy[4] copy];
    v13 = *(_init + 4);
    *(_init + 4) = v12;

    objc_storeStrong(_init + 5, infoCopy[5]);
    v14 = [infoCopy[6] copy];
    v15 = *(_init + 6);
    *(_init + 6) = v14;

    v16 = [infoCopy[7] copy];
    v17 = *(_init + 7);
    *(_init + 7) = v16;

    v18 = [infoCopy[8] copy];
    v19 = *(_init + 8);
    *(_init + 8) = v18;

    v20 = [infoCopy[9] copy];
    v21 = *(_init + 9);
    *(_init + 9) = v20;

    *(_init + 81) = *(infoCopy + 81);
    *(_init + 82) = *(infoCopy + 82);
    v22 = [infoCopy[11] copy];
    v23 = *(_init + 11);
    *(_init + 11) = v22;

    *(_init + 96) = *(infoCopy + 96);
    objc_storeStrong(_init + 14, infoCopy[14]);
    v24 = [infoCopy[15] copy];
    v25 = *(_init + 15);
    *(_init + 15) = v24;

    v26 = [infoCopy[16] copy];
    v27 = *(_init + 16);
    *(_init + 16) = v26;

    v28 = [infoCopy[17] copy];
    v29 = *(_init + 17);
    *(_init + 17) = v28;

    v30 = [infoCopy[19] copy];
    v31 = *(_init + 19);
    *(_init + 19) = v30;

    v32 = [infoCopy[20] copy];
    v33 = *(_init + 20);
    *(_init + 20) = v32;

    v34 = [infoCopy[21] copy];
    v35 = *(_init + 21);
    *(_init + 21) = v34;

    v36 = [infoCopy[22] copy];
    v37 = *(_init + 22);
    *(_init + 22) = v36;

    v38 = [infoCopy[23] copy];
    v39 = *(_init + 23);
    *(_init + 23) = v38;

    v40 = [infoCopy[24] copy];
    v41 = *(_init + 24);
    *(_init + 24) = v40;

    v42 = [infoCopy[25] copy];
    v43 = *(_init + 25);
    *(_init + 25) = v42;

    v44 = [infoCopy[13] copy];
    v45 = *(_init + 13);
    *(_init + 13) = v44;

    *(_init + 80) = *(infoCopy + 80);
  }

  return _init;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHSMutableWidgetExtensionInfo alloc];

  return [(CHSWidgetExtensionInfo *)v4 _initWithInfo:self];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bi"];
  [coderCopy encodeObject:self->_containerBundleIdentifier forKey:@"cbi"];
  [coderCopy encodeObject:self->_effectiveContainerBundleIdentifier forKey:@"ecbi"];
  [coderCopy encodeObject:self->_version forKey:@"v"];
  [coderCopy encodeObject:self->_lastModifiedDate forKey:@"lmd"];
  [coderCopy encodeObject:self->_bundleURL forKey:@"bu"];
  [coderCopy encodeObject:self->_containerURL forKey:@"cu"];
  [coderCopy encodeObject:self->_systemDataContainerURL forKey:@"sdcu"];
  [coderCopy encodeObject:self->_dataProtectionLevel forKey:@"dpl"];
  [coderCopy encodeBool:self->_isDevelopmentExtension forKey:@"ide"];
  [coderCopy encodeBool:self->_wantsLocation forKey:@"wl"];
  [coderCopy encodeObject:self->_availableLocalizations forKey:@"al"];
  [coderCopy encodeBool:self->_allowsMixedLocalizations forKey:@"aml"];
  [coderCopy encodeObject:self->_entitlements forKey:@"ent"];
  [coderCopy encodeObject:self->_sdkVersion forKey:@"sdkVersion"];
  v4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v4 encodeObject:self->_descriptors forKey:@"desc"];
  [v4 finishEncoding];
  encodedData = [v4 encodedData];
  [coderCopy encodeObject:encodedData forKey:@"desc"];

  [coderCopy encodeObject:self->_widgetConfigurations forKey:@"widgetConfigurations"];
  [coderCopy encodeObject:self->_controlConfigurations forKey:@"controlConfigurations"];
  [coderCopy encodeObject:self->_snapshotURLs forKey:@"snu"];
  [coderCopy encodeObject:self->_placeholderURLs forKey:@"plu"];
  [coderCopy encodeObject:self->_timelineURLs forKey:@"tlu"];
  [coderCopy encodeObject:self->_liveControlURLs forKey:@"liveControlURLs"];
  [coderCopy encodeObject:self->_livePlaceholderControlURLs forKey:@"livePlaceholderControlURLs"];
  [coderCopy encodeObject:self->_previewControlURLs forKey:@"previewControlURLs"];
  [coderCopy encodeObject:self->_nominatedContainerBundleIdentifiers forKey:@"ncbi"];
  [coderCopy encodeBool:self->_disablesImplicitDiscovery forKey:@"disablesImplicitDiscovery"];
}

- (CHSWidgetExtensionInfo)initWithBSXPCCoder:(id)coder
{
  v73 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  _init = [(CHSWidgetExtensionInfo *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeStringForKey:@"bi"];
    bundleIdentifier = _init->_bundleIdentifier;
    _init->_bundleIdentifier = v6;

    v8 = [coderCopy decodeStringForKey:@"cbi"];
    containerBundleIdentifier = _init->_containerBundleIdentifier;
    _init->_containerBundleIdentifier = v8;

    v10 = [coderCopy decodeStringForKey:@"ecbi"];
    effectiveContainerBundleIdentifier = _init->_effectiveContainerBundleIdentifier;
    _init->_effectiveContainerBundleIdentifier = v10;

    v12 = [coderCopy decodeStringForKey:@"v"];
    version = _init->_version;
    _init->_version = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lmd"];
    lastModifiedDate = _init->_lastModifiedDate;
    _init->_lastModifiedDate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bu"];
    bundleURL = _init->_bundleURL;
    _init->_bundleURL = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cu"];
    containerURL = _init->_containerURL;
    _init->_containerURL = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sdcu"];
    systemDataContainerURL = _init->_systemDataContainerURL;
    _init->_systemDataContainerURL = v20;

    v22 = [coderCopy decodeStringForKey:@"dpl"];
    dataProtectionLevel = _init->_dataProtectionLevel;
    _init->_dataProtectionLevel = v22;

    _init->_isDevelopmentExtension = [coderCopy decodeBoolForKey:@"ide"];
    _init->_wantsLocation = [coderCopy decodeBoolForKey:@"wl"];
    v24 = objc_opt_class();
    v25 = [coderCopy decodeCollectionOfClass:v24 containingClass:objc_opt_class() forKey:@"al"];
    availableLocalizations = _init->_availableLocalizations;
    _init->_availableLocalizations = v25;

    v27 = [coderCopy decodeStringForKey:@"sdkVersion"];
    sdkVersion = _init->_sdkVersion;
    _init->_sdkVersion = v27;

    _init->_allowsMixedLocalizations = [coderCopy decodeBoolForKey:@"aml"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ent"];
    entitlements = _init->_entitlements;
    _init->_entitlements = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"desc"];
    v70 = 0;
    v32 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v31 error:&v70];
    v33 = v70;
    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = [v34 setWithObjects:{v35, v36, objc_opt_class(), 0}];
    v38 = [v32 decodeObjectOfClasses:v37 forKey:@"desc"];
    descriptors = _init->_descriptors;
    _init->_descriptors = v38;

    if (v33)
    {
      v40 = CHSLogChronoServices();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v72 = v33;
        _os_log_impl(&dword_195EB2000, v40, OS_LOG_TYPE_DEFAULT, "Error decoding widget info: %{public}@", buf, 0xCu);
      }
    }

    v41 = objc_opt_class();
    v42 = [coderCopy decodeCollectionOfClass:v41 containingClass:objc_opt_class() forKey:@"widgetConfigurations"];
    widgetConfigurations = _init->_widgetConfigurations;
    _init->_widgetConfigurations = v42;

    v44 = objc_opt_class();
    v45 = [coderCopy decodeCollectionOfClass:v44 containingClass:objc_opt_class() forKey:@"controlConfigurations"];
    controlConfigurations = _init->_controlConfigurations;
    _init->_controlConfigurations = v45;

    v47 = objc_opt_class();
    v48 = [coderCopy decodeCollectionOfClass:v47 containingClass:objc_opt_class() forKey:@"snu"];
    snapshotURLs = _init->_snapshotURLs;
    _init->_snapshotURLs = v48;

    v50 = objc_opt_class();
    v51 = [coderCopy decodeCollectionOfClass:v50 containingClass:objc_opt_class() forKey:@"plu"];
    placeholderURLs = _init->_placeholderURLs;
    _init->_placeholderURLs = v51;

    v53 = objc_opt_class();
    v54 = [coderCopy decodeCollectionOfClass:v53 containingClass:objc_opt_class() forKey:@"tlu"];
    timelineURLs = _init->_timelineURLs;
    _init->_timelineURLs = v54;

    v56 = objc_opt_class();
    v57 = [coderCopy decodeCollectionOfClass:v56 containingClass:objc_opt_class() forKey:@"liveControlURLs"];
    liveControlURLs = _init->_liveControlURLs;
    _init->_liveControlURLs = v57;

    v59 = objc_opt_class();
    v60 = [coderCopy decodeCollectionOfClass:v59 containingClass:objc_opt_class() forKey:@"livePlaceholderControlURLs"];
    livePlaceholderControlURLs = _init->_livePlaceholderControlURLs;
    _init->_livePlaceholderControlURLs = v60;

    v62 = objc_opt_class();
    v63 = [coderCopy decodeCollectionOfClass:v62 containingClass:objc_opt_class() forKey:@"previewControlURLs"];
    previewControlURLs = _init->_previewControlURLs;
    _init->_previewControlURLs = v63;

    v65 = objc_opt_class();
    v66 = [coderCopy decodeCollectionOfClass:v65 containingClass:objc_opt_class() forKey:@"ncbi"];
    nominatedContainerBundleIdentifiers = _init->_nominatedContainerBundleIdentifiers;
    _init->_nominatedContainerBundleIdentifiers = v66;

    _init->_disablesImplicitDiscovery = [coderCopy decodeBoolForKey:@"disablesImplicitDiscovery"];
  }

  v68 = *MEMORY[0x1E69E9840];
  return _init;
}

@end