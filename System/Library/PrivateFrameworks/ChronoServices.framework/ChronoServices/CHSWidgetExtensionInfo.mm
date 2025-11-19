@interface CHSWidgetExtensionInfo
- (CHSWidgetExtensionInfo)initWithBSXPCCoder:(id)a3;
- (id)_init;
- (id)_initWithInfo:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CHSWidgetExtensionInfo

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CHSWidgetExtensionInfo;
  return [(CHSWidgetExtensionInfo *)&v3 init];
}

- (id)_initWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(CHSWidgetExtensionInfo *)self _init];
  if (v5)
  {
    v6 = [v4[1] copy];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = [v4[2] copy];
    v9 = *(v5 + 2);
    *(v5 + 2) = v8;

    v10 = [v4[3] copy];
    v11 = *(v5 + 3);
    *(v5 + 3) = v10;

    v12 = [v4[4] copy];
    v13 = *(v5 + 4);
    *(v5 + 4) = v12;

    objc_storeStrong(v5 + 5, v4[5]);
    v14 = [v4[6] copy];
    v15 = *(v5 + 6);
    *(v5 + 6) = v14;

    v16 = [v4[7] copy];
    v17 = *(v5 + 7);
    *(v5 + 7) = v16;

    v18 = [v4[8] copy];
    v19 = *(v5 + 8);
    *(v5 + 8) = v18;

    v20 = [v4[9] copy];
    v21 = *(v5 + 9);
    *(v5 + 9) = v20;

    *(v5 + 81) = *(v4 + 81);
    *(v5 + 82) = *(v4 + 82);
    v22 = [v4[11] copy];
    v23 = *(v5 + 11);
    *(v5 + 11) = v22;

    *(v5 + 96) = *(v4 + 96);
    objc_storeStrong(v5 + 14, v4[14]);
    v24 = [v4[15] copy];
    v25 = *(v5 + 15);
    *(v5 + 15) = v24;

    v26 = [v4[16] copy];
    v27 = *(v5 + 16);
    *(v5 + 16) = v26;

    v28 = [v4[17] copy];
    v29 = *(v5 + 17);
    *(v5 + 17) = v28;

    v30 = [v4[19] copy];
    v31 = *(v5 + 19);
    *(v5 + 19) = v30;

    v32 = [v4[20] copy];
    v33 = *(v5 + 20);
    *(v5 + 20) = v32;

    v34 = [v4[21] copy];
    v35 = *(v5 + 21);
    *(v5 + 21) = v34;

    v36 = [v4[22] copy];
    v37 = *(v5 + 22);
    *(v5 + 22) = v36;

    v38 = [v4[23] copy];
    v39 = *(v5 + 23);
    *(v5 + 23) = v38;

    v40 = [v4[24] copy];
    v41 = *(v5 + 24);
    *(v5 + 24) = v40;

    v42 = [v4[25] copy];
    v43 = *(v5 + 25);
    *(v5 + 25) = v42;

    v44 = [v4[13] copy];
    v45 = *(v5 + 13);
    *(v5 + 13) = v44;

    *(v5 + 80) = *(v4 + 80);
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHSMutableWidgetExtensionInfo alloc];

  return [(CHSWidgetExtensionInfo *)v4 _initWithInfo:self];
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_bundleIdentifier forKey:@"bi"];
  [v6 encodeObject:self->_containerBundleIdentifier forKey:@"cbi"];
  [v6 encodeObject:self->_effectiveContainerBundleIdentifier forKey:@"ecbi"];
  [v6 encodeObject:self->_version forKey:@"v"];
  [v6 encodeObject:self->_lastModifiedDate forKey:@"lmd"];
  [v6 encodeObject:self->_bundleURL forKey:@"bu"];
  [v6 encodeObject:self->_containerURL forKey:@"cu"];
  [v6 encodeObject:self->_systemDataContainerURL forKey:@"sdcu"];
  [v6 encodeObject:self->_dataProtectionLevel forKey:@"dpl"];
  [v6 encodeBool:self->_isDevelopmentExtension forKey:@"ide"];
  [v6 encodeBool:self->_wantsLocation forKey:@"wl"];
  [v6 encodeObject:self->_availableLocalizations forKey:@"al"];
  [v6 encodeBool:self->_allowsMixedLocalizations forKey:@"aml"];
  [v6 encodeObject:self->_entitlements forKey:@"ent"];
  [v6 encodeObject:self->_sdkVersion forKey:@"sdkVersion"];
  v4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v4 encodeObject:self->_descriptors forKey:@"desc"];
  [v4 finishEncoding];
  v5 = [v4 encodedData];
  [v6 encodeObject:v5 forKey:@"desc"];

  [v6 encodeObject:self->_widgetConfigurations forKey:@"widgetConfigurations"];
  [v6 encodeObject:self->_controlConfigurations forKey:@"controlConfigurations"];
  [v6 encodeObject:self->_snapshotURLs forKey:@"snu"];
  [v6 encodeObject:self->_placeholderURLs forKey:@"plu"];
  [v6 encodeObject:self->_timelineURLs forKey:@"tlu"];
  [v6 encodeObject:self->_liveControlURLs forKey:@"liveControlURLs"];
  [v6 encodeObject:self->_livePlaceholderControlURLs forKey:@"livePlaceholderControlURLs"];
  [v6 encodeObject:self->_previewControlURLs forKey:@"previewControlURLs"];
  [v6 encodeObject:self->_nominatedContainerBundleIdentifiers forKey:@"ncbi"];
  [v6 encodeBool:self->_disablesImplicitDiscovery forKey:@"disablesImplicitDiscovery"];
}

- (CHSWidgetExtensionInfo)initWithBSXPCCoder:(id)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CHSWidgetExtensionInfo *)self _init];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"bi"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 decodeStringForKey:@"cbi"];
    containerBundleIdentifier = v5->_containerBundleIdentifier;
    v5->_containerBundleIdentifier = v8;

    v10 = [v4 decodeStringForKey:@"ecbi"];
    effectiveContainerBundleIdentifier = v5->_effectiveContainerBundleIdentifier;
    v5->_effectiveContainerBundleIdentifier = v10;

    v12 = [v4 decodeStringForKey:@"v"];
    version = v5->_version;
    v5->_version = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lmd"];
    lastModifiedDate = v5->_lastModifiedDate;
    v5->_lastModifiedDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bu"];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cu"];
    containerURL = v5->_containerURL;
    v5->_containerURL = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sdcu"];
    systemDataContainerURL = v5->_systemDataContainerURL;
    v5->_systemDataContainerURL = v20;

    v22 = [v4 decodeStringForKey:@"dpl"];
    dataProtectionLevel = v5->_dataProtectionLevel;
    v5->_dataProtectionLevel = v22;

    v5->_isDevelopmentExtension = [v4 decodeBoolForKey:@"ide"];
    v5->_wantsLocation = [v4 decodeBoolForKey:@"wl"];
    v24 = objc_opt_class();
    v25 = [v4 decodeCollectionOfClass:v24 containingClass:objc_opt_class() forKey:@"al"];
    availableLocalizations = v5->_availableLocalizations;
    v5->_availableLocalizations = v25;

    v27 = [v4 decodeStringForKey:@"sdkVersion"];
    sdkVersion = v5->_sdkVersion;
    v5->_sdkVersion = v27;

    v5->_allowsMixedLocalizations = [v4 decodeBoolForKey:@"aml"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ent"];
    entitlements = v5->_entitlements;
    v5->_entitlements = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"desc"];
    v70 = 0;
    v32 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v31 error:&v70];
    v33 = v70;
    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = [v34 setWithObjects:{v35, v36, objc_opt_class(), 0}];
    v38 = [v32 decodeObjectOfClasses:v37 forKey:@"desc"];
    descriptors = v5->_descriptors;
    v5->_descriptors = v38;

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
    v42 = [v4 decodeCollectionOfClass:v41 containingClass:objc_opt_class() forKey:@"widgetConfigurations"];
    widgetConfigurations = v5->_widgetConfigurations;
    v5->_widgetConfigurations = v42;

    v44 = objc_opt_class();
    v45 = [v4 decodeCollectionOfClass:v44 containingClass:objc_opt_class() forKey:@"controlConfigurations"];
    controlConfigurations = v5->_controlConfigurations;
    v5->_controlConfigurations = v45;

    v47 = objc_opt_class();
    v48 = [v4 decodeCollectionOfClass:v47 containingClass:objc_opt_class() forKey:@"snu"];
    snapshotURLs = v5->_snapshotURLs;
    v5->_snapshotURLs = v48;

    v50 = objc_opt_class();
    v51 = [v4 decodeCollectionOfClass:v50 containingClass:objc_opt_class() forKey:@"plu"];
    placeholderURLs = v5->_placeholderURLs;
    v5->_placeholderURLs = v51;

    v53 = objc_opt_class();
    v54 = [v4 decodeCollectionOfClass:v53 containingClass:objc_opt_class() forKey:@"tlu"];
    timelineURLs = v5->_timelineURLs;
    v5->_timelineURLs = v54;

    v56 = objc_opt_class();
    v57 = [v4 decodeCollectionOfClass:v56 containingClass:objc_opt_class() forKey:@"liveControlURLs"];
    liveControlURLs = v5->_liveControlURLs;
    v5->_liveControlURLs = v57;

    v59 = objc_opt_class();
    v60 = [v4 decodeCollectionOfClass:v59 containingClass:objc_opt_class() forKey:@"livePlaceholderControlURLs"];
    livePlaceholderControlURLs = v5->_livePlaceholderControlURLs;
    v5->_livePlaceholderControlURLs = v60;

    v62 = objc_opt_class();
    v63 = [v4 decodeCollectionOfClass:v62 containingClass:objc_opt_class() forKey:@"previewControlURLs"];
    previewControlURLs = v5->_previewControlURLs;
    v5->_previewControlURLs = v63;

    v65 = objc_opt_class();
    v66 = [v4 decodeCollectionOfClass:v65 containingClass:objc_opt_class() forKey:@"ncbi"];
    nominatedContainerBundleIdentifiers = v5->_nominatedContainerBundleIdentifiers;
    v5->_nominatedContainerBundleIdentifiers = v66;

    v5->_disablesImplicitDiscovery = [v4 decodeBoolForKey:@"disablesImplicitDiscovery"];
  }

  v68 = *MEMORY[0x1E69E9840];
  return v5;
}

@end