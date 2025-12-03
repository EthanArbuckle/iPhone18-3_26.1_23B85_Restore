@interface DMFApp
+ (id)descriptionForBool:(id)bool showWhenUnassigned:(BOOL)unassigned valueWhenUnassigned:(BOOL)whenUnassigned;
+ (id)stringForInstallationState:(unint64_t)state;
- (BOOL)isEqual:(id)equal;
- (DMFApp)initWithCoder:(id)coder;
- (id)_stringForType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFApp

+ (id)stringForInstallationState:(unint64_t)state
{
  if (state > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8615F10[state];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bundleIdentifier = [(DMFApp *)self bundleIdentifier];
      bundleIdentifier2 = [(DMFApp *)equalCopy bundleIdentifier];
      v7 = [bundleIdentifier isEqualToString:bundleIdentifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setType:{-[DMFApp type](self, "type")}];
  displayName = [(DMFApp *)self displayName];
  [v4 setDisplayName:displayName];

  bundleIdentifier = [(DMFApp *)self bundleIdentifier];
  [v4 setBundleIdentifier:bundleIdentifier];

  storeItemIdentifier = [(DMFApp *)self storeItemIdentifier];
  [v4 setStoreItemIdentifier:storeItemIdentifier];

  externalVersionIdentifier = [(DMFApp *)self externalVersionIdentifier];
  [v4 setExternalVersionIdentifier:externalVersionIdentifier];

  distributorIdentifier = [(DMFApp *)self distributorIdentifier];
  [v4 setDistributorIdentifier:distributorIdentifier];

  version = [(DMFApp *)self version];
  [v4 setVersion:version];

  shortVersion = [(DMFApp *)self shortVersion];
  [v4 setShortVersion:shortVersion];

  staticUsage = [(DMFApp *)self staticUsage];
  [v4 setStaticUsage:staticUsage];

  dynamicUsage = [(DMFApp *)self dynamicUsage];
  [v4 setDynamicUsage:dynamicUsage];

  onDemandResourcesUsage = [(DMFApp *)self onDemandResourcesUsage];
  [v4 setOnDemandResourcesUsage:onDemandResourcesUsage];

  sharedUsage = [(DMFApp *)self sharedUsage];
  [v4 setSharedUsage:sharedUsage];

  [v4 setInstallationState:{-[DMFApp installationState](self, "installationState")}];
  [v4 setIsPlaceholder:{-[DMFApp isPlaceholder](self, "isPlaceholder")}];
  [v4 setIsRestricted:{-[DMFApp isRestricted](self, "isRestricted")}];
  [v4 setIsBlocked:{-[DMFApp isBlocked](self, "isBlocked")}];
  [v4 setIsUserBasedVPP:{-[DMFApp isUserBasedVPP](self, "isUserBasedVPP")}];
  [v4 setIsDeviceBasedVPP:{-[DMFApp isDeviceBasedVPP](self, "isDeviceBasedVPP")}];
  [v4 setIsLicenseExpired:{-[DMFApp isLicenseExpired](self, "isLicenseExpired")}];
  [v4 setIsLicenseRevoked:{-[DMFApp isLicenseRevoked](self, "isLicenseRevoked")}];
  [v4 setIsUPP:{-[DMFApp isUPP](self, "isUPP")}];
  [v4 setIsValidated:{-[DMFApp isValidated](self, "isValidated")}];
  [v4 setIsAppClip:{-[DMFApp isAppClip](self, "isAppClip")}];
  [v4 setIsAppStoreVendable:{-[DMFApp isAppStoreVendable](self, "isAppStoreVendable")}];
  [v4 setIsBetaApp:{-[DMFApp isBetaApp](self, "isBetaApp")}];
  [v4 setIsAdHocCodeSigned:{-[DMFApp isAdHocCodeSigned](self, "isAdHocCodeSigned")}];
  [v4 setHasUpdateAvailable:{-[DMFApp hasUpdateAvailable](self, "hasUpdateAvailable")}];
  vPNUUIDString = [(DMFApp *)self VPNUUIDString];
  [v4 setVPNUUIDString:vPNUUIDString];

  cellularSliceUUIDString = [(DMFApp *)self cellularSliceUUIDString];
  [v4 setCellularSliceUUIDString:cellularSliceUUIDString];

  contentFilterUUIDString = [(DMFApp *)self contentFilterUUIDString];
  [v4 setContentFilterUUIDString:contentFilterUUIDString];

  dNSProxyUUIDString = [(DMFApp *)self DNSProxyUUIDString];
  [v4 setDNSProxyUUIDString:dNSProxyUUIDString];

  relayUUIDString = [(DMFApp *)self relayUUIDString];
  [v4 setRelayUUIDString:relayUUIDString];

  associatedDomains = [(DMFApp *)self associatedDomains];
  [v4 setAssociatedDomains:associatedDomains];

  associatedDomainsEnableDirectDownloads = [(DMFApp *)self associatedDomainsEnableDirectDownloads];
  [v4 setAssociatedDomainsEnableDirectDownloads:associatedDomainsEnableDirectDownloads];

  removable = [(DMFApp *)self removable];
  [v4 setRemovable:removable];

  tapToPayScreenLock = [(DMFApp *)self tapToPayScreenLock];
  [v4 setTapToPayScreenLock:tapToPayScreenLock];

  allowUserToHide = [(DMFApp *)self allowUserToHide];
  [v4 setAllowUserToHide:allowUserToHide];

  allowUserToLock = [(DMFApp *)self allowUserToLock];
  [v4 setAllowUserToLock:allowUserToLock];

  configuration = [(DMFApp *)self configuration];
  [v4 setConfiguration:configuration];

  feedback = [(DMFApp *)self feedback];
  [v4 setFeedback:feedback];

  sourceIdentifier = [(DMFApp *)self sourceIdentifier];
  [v4 setSourceIdentifier:sourceIdentifier];

  managementInformation = [(DMFApp *)self managementInformation];
  [v4 setManagementInformation:managementInformation];

  return v4;
}

- (DMFApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v125.receiver = self;
  v125.super_class = DMFApp;
  v5 = [(DMFApp *)&v125 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v11;

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"storeItemIdentifier"];
    storeItemIdentifier = v5->_storeItemIdentifier;
    v5->_storeItemIdentifier = v14;

    v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"externalVersionIdentifier"];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = v17;

    v19 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"distributorIdentifier"];
    distributorIdentifier = v5->_distributorIdentifier;
    v5->_distributorIdentifier = v20;

    v22 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"version"];
    version = v5->_version;
    v5->_version = v23;

    v25 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"shortVersion"];
    shortVersion = v5->_shortVersion;
    v5->_shortVersion = v26;

    v28 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"staticUsage"];
    staticUsage = v5->_staticUsage;
    v5->_staticUsage = v29;

    v31 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"dynamicUsage"];
    dynamicUsage = v5->_dynamicUsage;
    v5->_dynamicUsage = v32;

    v34 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"onDemandResourcesUsage"];
    onDemandResourcesUsage = v5->_onDemandResourcesUsage;
    v5->_onDemandResourcesUsage = v35;

    v37 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"sharedUsage"];
    sharedUsage = v5->_sharedUsage;
    v5->_sharedUsage = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installationState"];
    v5->_installationState = [v40 integerValue];

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isPlaceholder"];
    v5->_isPlaceholder = [v41 BOOLValue];

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isRestricted"];
    v5->_isRestricted = [v42 BOOLValue];

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isBlocked"];
    v5->_isBlocked = [v43 BOOLValue];

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isUserBasedVPP"];
    v5->_isUserBasedVPP = [v44 BOOLValue];

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isDeviceBasedVPP"];
    v5->_isDeviceBasedVPP = [v45 BOOLValue];

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isLicenseExpired"];
    v5->_isLicenseExpired = [v46 BOOLValue];

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isLicenseRevoked"];
    v5->_isLicenseRevoked = [v47 BOOLValue];

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isUPP"];
    v5->_isUPP = [v48 BOOLValue];

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isValidated"];
    v5->_isValidated = [v49 BOOLValue];

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isAppClip"];
    v5->_isAppClip = [v50 BOOLValue];

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isAppStoreVendable"];
    v5->_isAppStoreVendable = [v51 BOOLValue];

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isBetaApp"];
    v5->_isBetaApp = [v52 BOOLValue];

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isAdHocCodeSigned"];
    v5->_isAdHocCodeSigned = [v53 BOOLValue];

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasUpdateAvailable"];
    v5->_hasUpdateAvailable = [v54 BOOLValue];

    v55 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v56 = [coderCopy decodeObjectOfClasses:v55 forKey:@"VPNUUIDString"];
    VPNUUIDString = v5->_VPNUUIDString;
    v5->_VPNUUIDString = v56;

    v58 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v59 = [coderCopy decodeObjectOfClasses:v58 forKey:@"cellularSliceUUIDString"];
    cellularSliceUUIDString = v5->_cellularSliceUUIDString;
    v5->_cellularSliceUUIDString = v59;

    v61 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v62 = [coderCopy decodeObjectOfClasses:v61 forKey:@"contentFilterUUIDString"];
    contentFilterUUIDString = v5->_contentFilterUUIDString;
    v5->_contentFilterUUIDString = v62;

    v64 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v65 = [coderCopy decodeObjectOfClasses:v64 forKey:@"DNSProxyUUIDString"];
    DNSProxyUUIDString = v5->_DNSProxyUUIDString;
    v5->_DNSProxyUUIDString = v65;

    v67 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v68 = [coderCopy decodeObjectOfClasses:v67 forKey:@"relayUUIDString"];
    relayUUIDString = v5->_relayUUIDString;
    v5->_relayUUIDString = v68;

    v70 = MEMORY[0x1E695DFD8];
    v71 = objc_opt_class();
    v72 = [v70 setWithObjects:{v71, objc_opt_class(), 0}];
    v73 = [coderCopy decodeObjectOfClasses:v72 forKey:@"associatedDomains"];
    associatedDomains = v5->_associatedDomains;
    v5->_associatedDomains = v73;

    v75 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v76 = [coderCopy decodeObjectOfClasses:v75 forKey:@"associatedDomainsEnableDirectDownloads"];
    associatedDomainsEnableDirectDownloads = v5->_associatedDomainsEnableDirectDownloads;
    v5->_associatedDomainsEnableDirectDownloads = v76;

    v78 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v79 = [coderCopy decodeObjectOfClasses:v78 forKey:@"removable"];
    removable = v5->_removable;
    v5->_removable = v79;

    v81 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v82 = [coderCopy decodeObjectOfClasses:v81 forKey:@"tapToPayScreenLock"];
    tapToPayScreenLock = v5->_tapToPayScreenLock;
    v5->_tapToPayScreenLock = v82;

    v84 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v85 = [coderCopy decodeObjectOfClasses:v84 forKey:@"allowUserToHide"];
    allowUserToHide = v5->_allowUserToHide;
    v5->_allowUserToHide = v85;

    v87 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v88 = [coderCopy decodeObjectOfClasses:v87 forKey:@"allowUserToLock"];
    allowUserToLock = v5->_allowUserToLock;
    v5->_allowUserToLock = v88;

    v123 = MEMORY[0x1E695DFD8];
    v121 = objc_opt_class();
    v119 = objc_opt_class();
    v90 = objc_opt_class();
    v91 = objc_opt_class();
    v92 = objc_opt_class();
    v93 = objc_opt_class();
    v94 = objc_opt_class();
    v95 = objc_opt_class();
    v96 = objc_opt_class();
    v97 = objc_opt_class();
    v98 = [v123 setWithObjects:{v121, v119, v90, v91, v92, v93, v94, v95, v96, v97, objc_opt_class(), 0}];
    v99 = [coderCopy decodeObjectOfClasses:v98 forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v99;

    v124 = MEMORY[0x1E695DFD8];
    v122 = objc_opt_class();
    v120 = objc_opt_class();
    v101 = objc_opt_class();
    v102 = objc_opt_class();
    v103 = objc_opt_class();
    v104 = objc_opt_class();
    v105 = objc_opt_class();
    v106 = objc_opt_class();
    v107 = objc_opt_class();
    v108 = objc_opt_class();
    v109 = [v124 setWithObjects:{v122, v120, v101, v102, v103, v104, v105, v106, v107, v108, objc_opt_class(), 0}];
    v110 = [coderCopy decodeObjectOfClasses:v109 forKey:@"feedback"];
    feedback = v5->_feedback;
    v5->_feedback = v110;

    v112 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v113 = [coderCopy decodeObjectOfClasses:v112 forKey:@"sourceIdentifier"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v113;

    v115 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v116 = [coderCopy decodeObjectOfClasses:v115 forKey:@"managementInformation"];
    managementInformation = v5->_managementInformation;
    v5->_managementInformation = v116;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[DMFApp type](self, "type")}];
  [coderCopy encodeObject:v6 forKey:@"type"];

  displayName = [(DMFApp *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  bundleIdentifier = [(DMFApp *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  storeItemIdentifier = [(DMFApp *)self storeItemIdentifier];
  [coderCopy encodeObject:storeItemIdentifier forKey:@"storeItemIdentifier"];

  externalVersionIdentifier = [(DMFApp *)self externalVersionIdentifier];
  [coderCopy encodeObject:externalVersionIdentifier forKey:@"externalVersionIdentifier"];

  distributorIdentifier = [(DMFApp *)self distributorIdentifier];
  [coderCopy encodeObject:distributorIdentifier forKey:@"distributorIdentifier"];

  version = [(DMFApp *)self version];
  [coderCopy encodeObject:version forKey:@"version"];

  shortVersion = [(DMFApp *)self shortVersion];
  [coderCopy encodeObject:shortVersion forKey:@"shortVersion"];

  staticUsage = [(DMFApp *)self staticUsage];
  [coderCopy encodeObject:staticUsage forKey:@"staticUsage"];

  dynamicUsage = [(DMFApp *)self dynamicUsage];
  [coderCopy encodeObject:dynamicUsage forKey:@"dynamicUsage"];

  onDemandResourcesUsage = [(DMFApp *)self onDemandResourcesUsage];
  [coderCopy encodeObject:onDemandResourcesUsage forKey:@"onDemandResourcesUsage"];

  sharedUsage = [(DMFApp *)self sharedUsage];
  [coderCopy encodeObject:sharedUsage forKey:@"sharedUsage"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFApp installationState](self, "installationState")}];
  [coderCopy encodeObject:v18 forKey:@"installationState"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isPlaceholder](self, "isPlaceholder")}];
  [coderCopy encodeObject:v19 forKey:@"isPlaceholder"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isRestricted](self, "isRestricted")}];
  [coderCopy encodeObject:v20 forKey:@"isRestricted"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isBlocked](self, "isBlocked")}];
  [coderCopy encodeObject:v21 forKey:@"isBlocked"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isUserBasedVPP](self, "isUserBasedVPP")}];
  [coderCopy encodeObject:v22 forKey:@"isUserBasedVPP"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isDeviceBasedVPP](self, "isDeviceBasedVPP")}];
  [coderCopy encodeObject:v23 forKey:@"isDeviceBasedVPP"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isLicenseExpired](self, "isLicenseExpired")}];
  [coderCopy encodeObject:v24 forKey:@"isLicenseExpired"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isLicenseRevoked](self, "isLicenseRevoked")}];
  [coderCopy encodeObject:v25 forKey:@"isLicenseRevoked"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isUPP](self, "isUPP")}];
  [coderCopy encodeObject:v26 forKey:@"isUPP"];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isValidated](self, "isValidated")}];
  [coderCopy encodeObject:v27 forKey:@"isValidated"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isAppClip](self, "isAppClip")}];
  [coderCopy encodeObject:v28 forKey:@"isAppClip"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isAppStoreVendable](self, "isAppStoreVendable")}];
  [coderCopy encodeObject:v29 forKey:@"isAppStoreVendable"];

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isBetaApp](self, "isBetaApp")}];
  [coderCopy encodeObject:v30 forKey:@"isBetaApp"];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isAdHocCodeSigned](self, "isAdHocCodeSigned")}];
  [coderCopy encodeObject:v31 forKey:@"isAdHocCodeSigned"];

  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp hasUpdateAvailable](self, "hasUpdateAvailable")}];
  [coderCopy encodeObject:v32 forKey:@"hasUpdateAvailable"];

  vPNUUIDString = [(DMFApp *)self VPNUUIDString];
  [coderCopy encodeObject:vPNUUIDString forKey:@"VPNUUIDString"];

  cellularSliceUUIDString = [(DMFApp *)self cellularSliceUUIDString];
  [coderCopy encodeObject:cellularSliceUUIDString forKey:@"cellularSliceUUIDString"];

  contentFilterUUIDString = [(DMFApp *)self contentFilterUUIDString];
  [coderCopy encodeObject:contentFilterUUIDString forKey:@"contentFilterUUIDString"];

  dNSProxyUUIDString = [(DMFApp *)self DNSProxyUUIDString];
  [coderCopy encodeObject:dNSProxyUUIDString forKey:@"DNSProxyUUIDString"];

  relayUUIDString = [(DMFApp *)self relayUUIDString];
  [coderCopy encodeObject:relayUUIDString forKey:@"relayUUIDString"];

  associatedDomains = [(DMFApp *)self associatedDomains];
  [coderCopy encodeObject:associatedDomains forKey:@"associatedDomains"];

  associatedDomainsEnableDirectDownloads = [(DMFApp *)self associatedDomainsEnableDirectDownloads];
  [coderCopy encodeObject:associatedDomainsEnableDirectDownloads forKey:@"associatedDomainsEnableDirectDownloads"];

  removable = [(DMFApp *)self removable];
  [coderCopy encodeObject:removable forKey:@"removable"];

  tapToPayScreenLock = [(DMFApp *)self tapToPayScreenLock];
  [coderCopy encodeObject:tapToPayScreenLock forKey:@"tapToPayScreenLock"];

  allowUserToHide = [(DMFApp *)self allowUserToHide];
  [coderCopy encodeObject:allowUserToHide forKey:@"allowUserToHide"];

  allowUserToLock = [(DMFApp *)self allowUserToLock];
  [coderCopy encodeObject:allowUserToLock forKey:@"allowUserToLock"];

  configuration = [(DMFApp *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];

  feedback = [(DMFApp *)self feedback];
  [coderCopy encodeObject:feedback forKey:@"feedback"];

  sourceIdentifier = [(DMFApp *)self sourceIdentifier];
  [coderCopy encodeObject:sourceIdentifier forKey:@"sourceIdentifier"];

  managementInformation = [(DMFApp *)self managementInformation];
  [coderCopy encodeObject:managementInformation forKey:@"managementInformation"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [(DMFApp *)self _stringForType:[(DMFApp *)self type]];
  [v3 appendFormat:@"Type                           : %@\n", v4];

  displayName = [(DMFApp *)self displayName];
  [v3 appendFormat:@"Display Name                   : %@\n", displayName];

  bundleIdentifier = [(DMFApp *)self bundleIdentifier];
  [v3 appendFormat:@"Bundle Identifier              : %@\n", bundleIdentifier];

  storeItemIdentifier = [(DMFApp *)self storeItemIdentifier];
  [v3 appendFormat:@"Store Item Identifier          : %@\n", storeItemIdentifier];

  externalVersionIdentifier = [(DMFApp *)self externalVersionIdentifier];
  [v3 appendFormat:@"External Version Identifier    : %@\n", externalVersionIdentifier];

  distributorIdentifier = [(DMFApp *)self distributorIdentifier];
  [v3 appendFormat:@"Distributor Identifier         : %@\n", distributorIdentifier];

  version = [(DMFApp *)self version];
  [v3 appendFormat:@"Version                        : %@\n", version];

  shortVersion = [(DMFApp *)self shortVersion];
  [v3 appendFormat:@"Short Version                  : %@\n", shortVersion];

  staticUsage = [(DMFApp *)self staticUsage];
  [v3 appendFormat:@"Static Usage                   : %@\n", staticUsage];

  dynamicUsage = [(DMFApp *)self dynamicUsage];
  [v3 appendFormat:@"Dynamic Usage                  : %@\n", dynamicUsage];

  onDemandResourcesUsage = [(DMFApp *)self onDemandResourcesUsage];
  [v3 appendFormat:@"On Demand Resources Usage      : %@\n", onDemandResourcesUsage];

  sharedUsage = [(DMFApp *)self sharedUsage];
  [v3 appendFormat:@"Shared Usage                   : %@\n", sharedUsage];

  v16 = [DMFApp stringForInstallationState:[(DMFApp *)self installationState]];
  [v3 appendFormat:@"Installation State             : %@\n", v16];

  if ([(DMFApp *)self isPlaceholder])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  [v3 appendFormat:@"Is Placeholder                 : %@\n", v17];
  if ([(DMFApp *)self isRestricted])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v3 appendFormat:@"Is Restricted                  : %@\n", v18];
  if ([(DMFApp *)self isBlocked])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v3 appendFormat:@"Is Blocked                     : %@\n", v19];
  if ([(DMFApp *)self isUserBasedVPP])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  [v3 appendFormat:@"Is User Based VPP              : %@\n", v20];
  if ([(DMFApp *)self isDeviceBasedVPP])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v3 appendFormat:@"Is Device Based VPP            : %@\n", v21];
  if ([(DMFApp *)self isLicenseExpired])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v3 appendFormat:@"Is License Expired             : %@\n", v22];
  if ([(DMFApp *)self isLicenseRevoked])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v3 appendFormat:@"Is License Revoked             : %@\n", v23];
  if ([(DMFApp *)self isUPP])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v3 appendFormat:@"Is UPP                         : %@\n", v24];
  if ([(DMFApp *)self isValidated])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  [v3 appendFormat:@"Is Validated                   : %@\n", v25];
  if ([(DMFApp *)self isAppClip])
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  [v3 appendFormat:@"Is App Clip                    : %@\n", v26];
  if ([(DMFApp *)self isAppStoreVendable])
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  [v3 appendFormat:@"Is App Store Vendable          : %@\n", v27];
  if ([(DMFApp *)self isBetaApp])
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  [v3 appendFormat:@"Is Beta App                    : %@\n", v28];
  if ([(DMFApp *)self isAdHocCodeSigned])
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  [v3 appendFormat:@"Is Ad Hoc Code Signed          : %@\n", v29];
  if ([(DMFApp *)self hasUpdateAvailable])
  {
    v30 = @"YES";
  }

  else
  {
    v30 = @"NO";
  }

  [v3 appendFormat:@"Has Update Available           : %@\n", v30];
  vPNUUIDString = [(DMFApp *)self VPNUUIDString];
  [v3 appendFormat:@"VPN UUID String                : %@\n", vPNUUIDString];

  cellularSliceUUIDString = [(DMFApp *)self cellularSliceUUIDString];
  [v3 appendFormat:@"CellularSlice UUID String      : %@\n", cellularSliceUUIDString];

  contentFilterUUIDString = [(DMFApp *)self contentFilterUUIDString];
  [v3 appendFormat:@"ContentFilter UUID String      : %@\n", contentFilterUUIDString];

  dNSProxyUUIDString = [(DMFApp *)self DNSProxyUUIDString];
  [v3 appendFormat:@"DNS Proxy UUID String          : %@\n", dNSProxyUUIDString];

  relayUUIDString = [(DMFApp *)self relayUUIDString];
  [v3 appendFormat:@"Relay UUID String              : %@\n", relayUUIDString];

  associatedDomains = [(DMFApp *)self associatedDomains];
  [v3 appendFormat:@"Associated Domains             : %@\n", associatedDomains];

  associatedDomainsEnableDirectDownloads = [(DMFApp *)self associatedDomainsEnableDirectDownloads];
  if ([associatedDomainsEnableDirectDownloads BOOLValue])
  {
    v38 = @"YES";
  }

  else
  {
    v38 = @"NO";
  }

  [v3 appendFormat:@"AD Enabled Direct Downloads    : %@\n", v38];

  removable = [(DMFApp *)self removable];
  if (removable)
  {
    removable2 = [(DMFApp *)self removable];
    if ([removable2 BOOLValue])
    {
      v41 = @"YES";
    }

    else
    {
      v41 = @"NO";
    }

    [v3 appendFormat:@"Is Removable                   : %@\n", v41];
  }

  else
  {
    [v3 appendFormat:@"Is Removable                   : %@\n", @"YES"];
  }

  tapToPayScreenLock = [(DMFApp *)self tapToPayScreenLock];
  if (tapToPayScreenLock)
  {
    tapToPayScreenLock2 = [(DMFApp *)self tapToPayScreenLock];
    if ([tapToPayScreenLock2 BOOLValue])
    {
      v44 = @"YES";
    }

    else
    {
      v44 = @"NO";
    }

    [v3 appendFormat:@"Is Tap To Pay Screen Lock      : %@\n", v44];
  }

  else
  {
    [v3 appendFormat:@"Is Tap To Pay Screen Lock      : %@\n", @"NO"];
  }

  v45 = objc_opt_class();
  allowUserToHide = [(DMFApp *)self allowUserToHide];
  v47 = [v45 descriptionForBool:allowUserToHide showWhenUnassigned:1 valueWhenUnassigned:1];
  [v3 appendFormat:@"Allow User To Hide             : %@\n", v47];

  v48 = objc_opt_class();
  allowUserToLock = [(DMFApp *)self allowUserToLock];
  v50 = [v48 descriptionForBool:allowUserToLock showWhenUnassigned:1 valueWhenUnassigned:1];
  [v3 appendFormat:@"Allow User To Lock             : %@\n", v50];

  configuration = [(DMFApp *)self configuration];
  [v3 appendFormat:@"Configuration                  : %@\n", configuration];

  feedback = [(DMFApp *)self feedback];
  [v3 appendFormat:@"Feedback                       : %@\n", feedback];

  sourceIdentifier = [(DMFApp *)self sourceIdentifier];
  [v3 appendFormat:@"sourceIdentifier               : %@\n", sourceIdentifier];

  managementInformation = [(DMFApp *)self managementInformation];
  [v3 appendFormat:@"Management Information         : %@\n", managementInformation];

  [v3 appendString:@"}>"];
  v55 = [v3 copy];

  return v55;
}

+ (id)descriptionForBool:(id)bool showWhenUnassigned:(BOOL)unassigned valueWhenUnassigned:(BOOL)whenUnassigned
{
  whenUnassignedCopy = whenUnassigned;
  unassignedCopy = unassigned;
  boolCopy = bool;
  v8 = boolCopy;
  if (boolCopy)
  {
    whenUnassignedCopy = [boolCopy BOOLValue];
  }

  else if (unassignedCopy)
  {
    v9 = @"Unassigned (NO)";
    v10 = @"Unassigned (YES)";
    goto LABEL_6;
  }

  v9 = @"NO";
  v10 = @"YES";
LABEL_6:
  if (whenUnassignedCopy)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;

  return v11;
}

- (id)_stringForType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8615F58[type - 1];
  }
}

@end