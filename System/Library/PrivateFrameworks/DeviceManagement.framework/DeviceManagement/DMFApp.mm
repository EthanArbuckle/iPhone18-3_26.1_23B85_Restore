@interface DMFApp
+ (id)descriptionForBool:(id)a3 showWhenUnassigned:(BOOL)a4 valueWhenUnassigned:(BOOL)a5;
+ (id)stringForInstallationState:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (DMFApp)initWithCoder:(id)a3;
- (id)_stringForType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFApp

+ (id)stringForInstallationState:(unint64_t)a3
{
  if (a3 > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8615F10[a3];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(DMFApp *)self bundleIdentifier];
      v6 = [(DMFApp *)v4 bundleIdentifier];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setType:{-[DMFApp type](self, "type")}];
  v5 = [(DMFApp *)self displayName];
  [v4 setDisplayName:v5];

  v6 = [(DMFApp *)self bundleIdentifier];
  [v4 setBundleIdentifier:v6];

  v7 = [(DMFApp *)self storeItemIdentifier];
  [v4 setStoreItemIdentifier:v7];

  v8 = [(DMFApp *)self externalVersionIdentifier];
  [v4 setExternalVersionIdentifier:v8];

  v9 = [(DMFApp *)self distributorIdentifier];
  [v4 setDistributorIdentifier:v9];

  v10 = [(DMFApp *)self version];
  [v4 setVersion:v10];

  v11 = [(DMFApp *)self shortVersion];
  [v4 setShortVersion:v11];

  v12 = [(DMFApp *)self staticUsage];
  [v4 setStaticUsage:v12];

  v13 = [(DMFApp *)self dynamicUsage];
  [v4 setDynamicUsage:v13];

  v14 = [(DMFApp *)self onDemandResourcesUsage];
  [v4 setOnDemandResourcesUsage:v14];

  v15 = [(DMFApp *)self sharedUsage];
  [v4 setSharedUsage:v15];

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
  v16 = [(DMFApp *)self VPNUUIDString];
  [v4 setVPNUUIDString:v16];

  v17 = [(DMFApp *)self cellularSliceUUIDString];
  [v4 setCellularSliceUUIDString:v17];

  v18 = [(DMFApp *)self contentFilterUUIDString];
  [v4 setContentFilterUUIDString:v18];

  v19 = [(DMFApp *)self DNSProxyUUIDString];
  [v4 setDNSProxyUUIDString:v19];

  v20 = [(DMFApp *)self relayUUIDString];
  [v4 setRelayUUIDString:v20];

  v21 = [(DMFApp *)self associatedDomains];
  [v4 setAssociatedDomains:v21];

  v22 = [(DMFApp *)self associatedDomainsEnableDirectDownloads];
  [v4 setAssociatedDomainsEnableDirectDownloads:v22];

  v23 = [(DMFApp *)self removable];
  [v4 setRemovable:v23];

  v24 = [(DMFApp *)self tapToPayScreenLock];
  [v4 setTapToPayScreenLock:v24];

  v25 = [(DMFApp *)self allowUserToHide];
  [v4 setAllowUserToHide:v25];

  v26 = [(DMFApp *)self allowUserToLock];
  [v4 setAllowUserToLock:v26];

  v27 = [(DMFApp *)self configuration];
  [v4 setConfiguration:v27];

  v28 = [(DMFApp *)self feedback];
  [v4 setFeedback:v28];

  v29 = [(DMFApp *)self sourceIdentifier];
  [v4 setSourceIdentifier:v29];

  v30 = [(DMFApp *)self managementInformation];
  [v4 setManagementInformation:v30];

  return v4;
}

- (DMFApp)initWithCoder:(id)a3
{
  v4 = a3;
  v125.receiver = self;
  v125.super_class = DMFApp;
  v5 = [(DMFApp *)&v125 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v11;

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"storeItemIdentifier"];
    storeItemIdentifier = v5->_storeItemIdentifier;
    v5->_storeItemIdentifier = v14;

    v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"externalVersionIdentifier"];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = v17;

    v19 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"distributorIdentifier"];
    distributorIdentifier = v5->_distributorIdentifier;
    v5->_distributorIdentifier = v20;

    v22 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"version"];
    version = v5->_version;
    v5->_version = v23;

    v25 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"shortVersion"];
    shortVersion = v5->_shortVersion;
    v5->_shortVersion = v26;

    v28 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"staticUsage"];
    staticUsage = v5->_staticUsage;
    v5->_staticUsage = v29;

    v31 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"dynamicUsage"];
    dynamicUsage = v5->_dynamicUsage;
    v5->_dynamicUsage = v32;

    v34 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"onDemandResourcesUsage"];
    onDemandResourcesUsage = v5->_onDemandResourcesUsage;
    v5->_onDemandResourcesUsage = v35;

    v37 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"sharedUsage"];
    sharedUsage = v5->_sharedUsage;
    v5->_sharedUsage = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installationState"];
    v5->_installationState = [v40 integerValue];

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isPlaceholder"];
    v5->_isPlaceholder = [v41 BOOLValue];

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isRestricted"];
    v5->_isRestricted = [v42 BOOLValue];

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isBlocked"];
    v5->_isBlocked = [v43 BOOLValue];

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isUserBasedVPP"];
    v5->_isUserBasedVPP = [v44 BOOLValue];

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isDeviceBasedVPP"];
    v5->_isDeviceBasedVPP = [v45 BOOLValue];

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isLicenseExpired"];
    v5->_isLicenseExpired = [v46 BOOLValue];

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isLicenseRevoked"];
    v5->_isLicenseRevoked = [v47 BOOLValue];

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isUPP"];
    v5->_isUPP = [v48 BOOLValue];

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isValidated"];
    v5->_isValidated = [v49 BOOLValue];

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isAppClip"];
    v5->_isAppClip = [v50 BOOLValue];

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isAppStoreVendable"];
    v5->_isAppStoreVendable = [v51 BOOLValue];

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isBetaApp"];
    v5->_isBetaApp = [v52 BOOLValue];

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isAdHocCodeSigned"];
    v5->_isAdHocCodeSigned = [v53 BOOLValue];

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasUpdateAvailable"];
    v5->_hasUpdateAvailable = [v54 BOOLValue];

    v55 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v56 = [v4 decodeObjectOfClasses:v55 forKey:@"VPNUUIDString"];
    VPNUUIDString = v5->_VPNUUIDString;
    v5->_VPNUUIDString = v56;

    v58 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v59 = [v4 decodeObjectOfClasses:v58 forKey:@"cellularSliceUUIDString"];
    cellularSliceUUIDString = v5->_cellularSliceUUIDString;
    v5->_cellularSliceUUIDString = v59;

    v61 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v62 = [v4 decodeObjectOfClasses:v61 forKey:@"contentFilterUUIDString"];
    contentFilterUUIDString = v5->_contentFilterUUIDString;
    v5->_contentFilterUUIDString = v62;

    v64 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v65 = [v4 decodeObjectOfClasses:v64 forKey:@"DNSProxyUUIDString"];
    DNSProxyUUIDString = v5->_DNSProxyUUIDString;
    v5->_DNSProxyUUIDString = v65;

    v67 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v68 = [v4 decodeObjectOfClasses:v67 forKey:@"relayUUIDString"];
    relayUUIDString = v5->_relayUUIDString;
    v5->_relayUUIDString = v68;

    v70 = MEMORY[0x1E695DFD8];
    v71 = objc_opt_class();
    v72 = [v70 setWithObjects:{v71, objc_opt_class(), 0}];
    v73 = [v4 decodeObjectOfClasses:v72 forKey:@"associatedDomains"];
    associatedDomains = v5->_associatedDomains;
    v5->_associatedDomains = v73;

    v75 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v76 = [v4 decodeObjectOfClasses:v75 forKey:@"associatedDomainsEnableDirectDownloads"];
    associatedDomainsEnableDirectDownloads = v5->_associatedDomainsEnableDirectDownloads;
    v5->_associatedDomainsEnableDirectDownloads = v76;

    v78 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v79 = [v4 decodeObjectOfClasses:v78 forKey:@"removable"];
    removable = v5->_removable;
    v5->_removable = v79;

    v81 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v82 = [v4 decodeObjectOfClasses:v81 forKey:@"tapToPayScreenLock"];
    tapToPayScreenLock = v5->_tapToPayScreenLock;
    v5->_tapToPayScreenLock = v82;

    v84 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v85 = [v4 decodeObjectOfClasses:v84 forKey:@"allowUserToHide"];
    allowUserToHide = v5->_allowUserToHide;
    v5->_allowUserToHide = v85;

    v87 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v88 = [v4 decodeObjectOfClasses:v87 forKey:@"allowUserToLock"];
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
    v99 = [v4 decodeObjectOfClasses:v98 forKey:@"configuration"];
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
    v110 = [v4 decodeObjectOfClasses:v109 forKey:@"feedback"];
    feedback = v5->_feedback;
    v5->_feedback = v110;

    v112 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v113 = [v4 decodeObjectOfClasses:v112 forKey:@"sourceIdentifier"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v113;

    v115 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v116 = [v4 decodeObjectOfClasses:v115 forKey:@"managementInformation"];
    managementInformation = v5->_managementInformation;
    v5->_managementInformation = v116;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[DMFApp type](self, "type")}];
  [v5 encodeObject:v6 forKey:@"type"];

  v7 = [(DMFApp *)self displayName];
  [v5 encodeObject:v7 forKey:@"displayName"];

  v8 = [(DMFApp *)self bundleIdentifier];
  [v5 encodeObject:v8 forKey:@"bundleIdentifier"];

  v9 = [(DMFApp *)self storeItemIdentifier];
  [v5 encodeObject:v9 forKey:@"storeItemIdentifier"];

  v10 = [(DMFApp *)self externalVersionIdentifier];
  [v5 encodeObject:v10 forKey:@"externalVersionIdentifier"];

  v11 = [(DMFApp *)self distributorIdentifier];
  [v5 encodeObject:v11 forKey:@"distributorIdentifier"];

  v12 = [(DMFApp *)self version];
  [v5 encodeObject:v12 forKey:@"version"];

  v13 = [(DMFApp *)self shortVersion];
  [v5 encodeObject:v13 forKey:@"shortVersion"];

  v14 = [(DMFApp *)self staticUsage];
  [v5 encodeObject:v14 forKey:@"staticUsage"];

  v15 = [(DMFApp *)self dynamicUsage];
  [v5 encodeObject:v15 forKey:@"dynamicUsage"];

  v16 = [(DMFApp *)self onDemandResourcesUsage];
  [v5 encodeObject:v16 forKey:@"onDemandResourcesUsage"];

  v17 = [(DMFApp *)self sharedUsage];
  [v5 encodeObject:v17 forKey:@"sharedUsage"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFApp installationState](self, "installationState")}];
  [v5 encodeObject:v18 forKey:@"installationState"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isPlaceholder](self, "isPlaceholder")}];
  [v5 encodeObject:v19 forKey:@"isPlaceholder"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isRestricted](self, "isRestricted")}];
  [v5 encodeObject:v20 forKey:@"isRestricted"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isBlocked](self, "isBlocked")}];
  [v5 encodeObject:v21 forKey:@"isBlocked"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isUserBasedVPP](self, "isUserBasedVPP")}];
  [v5 encodeObject:v22 forKey:@"isUserBasedVPP"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isDeviceBasedVPP](self, "isDeviceBasedVPP")}];
  [v5 encodeObject:v23 forKey:@"isDeviceBasedVPP"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isLicenseExpired](self, "isLicenseExpired")}];
  [v5 encodeObject:v24 forKey:@"isLicenseExpired"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isLicenseRevoked](self, "isLicenseRevoked")}];
  [v5 encodeObject:v25 forKey:@"isLicenseRevoked"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isUPP](self, "isUPP")}];
  [v5 encodeObject:v26 forKey:@"isUPP"];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isValidated](self, "isValidated")}];
  [v5 encodeObject:v27 forKey:@"isValidated"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isAppClip](self, "isAppClip")}];
  [v5 encodeObject:v28 forKey:@"isAppClip"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isAppStoreVendable](self, "isAppStoreVendable")}];
  [v5 encodeObject:v29 forKey:@"isAppStoreVendable"];

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isBetaApp](self, "isBetaApp")}];
  [v5 encodeObject:v30 forKey:@"isBetaApp"];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp isAdHocCodeSigned](self, "isAdHocCodeSigned")}];
  [v5 encodeObject:v31 forKey:@"isAdHocCodeSigned"];

  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApp hasUpdateAvailable](self, "hasUpdateAvailable")}];
  [v5 encodeObject:v32 forKey:@"hasUpdateAvailable"];

  v33 = [(DMFApp *)self VPNUUIDString];
  [v5 encodeObject:v33 forKey:@"VPNUUIDString"];

  v34 = [(DMFApp *)self cellularSliceUUIDString];
  [v5 encodeObject:v34 forKey:@"cellularSliceUUIDString"];

  v35 = [(DMFApp *)self contentFilterUUIDString];
  [v5 encodeObject:v35 forKey:@"contentFilterUUIDString"];

  v36 = [(DMFApp *)self DNSProxyUUIDString];
  [v5 encodeObject:v36 forKey:@"DNSProxyUUIDString"];

  v37 = [(DMFApp *)self relayUUIDString];
  [v5 encodeObject:v37 forKey:@"relayUUIDString"];

  v38 = [(DMFApp *)self associatedDomains];
  [v5 encodeObject:v38 forKey:@"associatedDomains"];

  v39 = [(DMFApp *)self associatedDomainsEnableDirectDownloads];
  [v5 encodeObject:v39 forKey:@"associatedDomainsEnableDirectDownloads"];

  v40 = [(DMFApp *)self removable];
  [v5 encodeObject:v40 forKey:@"removable"];

  v41 = [(DMFApp *)self tapToPayScreenLock];
  [v5 encodeObject:v41 forKey:@"tapToPayScreenLock"];

  v42 = [(DMFApp *)self allowUserToHide];
  [v5 encodeObject:v42 forKey:@"allowUserToHide"];

  v43 = [(DMFApp *)self allowUserToLock];
  [v5 encodeObject:v43 forKey:@"allowUserToLock"];

  v44 = [(DMFApp *)self configuration];
  [v5 encodeObject:v44 forKey:@"configuration"];

  v45 = [(DMFApp *)self feedback];
  [v5 encodeObject:v45 forKey:@"feedback"];

  v46 = [(DMFApp *)self sourceIdentifier];
  [v5 encodeObject:v46 forKey:@"sourceIdentifier"];

  v47 = [(DMFApp *)self managementInformation];
  [v5 encodeObject:v47 forKey:@"managementInformation"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [(DMFApp *)self _stringForType:[(DMFApp *)self type]];
  [v3 appendFormat:@"Type                           : %@\n", v4];

  v5 = [(DMFApp *)self displayName];
  [v3 appendFormat:@"Display Name                   : %@\n", v5];

  v6 = [(DMFApp *)self bundleIdentifier];
  [v3 appendFormat:@"Bundle Identifier              : %@\n", v6];

  v7 = [(DMFApp *)self storeItemIdentifier];
  [v3 appendFormat:@"Store Item Identifier          : %@\n", v7];

  v8 = [(DMFApp *)self externalVersionIdentifier];
  [v3 appendFormat:@"External Version Identifier    : %@\n", v8];

  v9 = [(DMFApp *)self distributorIdentifier];
  [v3 appendFormat:@"Distributor Identifier         : %@\n", v9];

  v10 = [(DMFApp *)self version];
  [v3 appendFormat:@"Version                        : %@\n", v10];

  v11 = [(DMFApp *)self shortVersion];
  [v3 appendFormat:@"Short Version                  : %@\n", v11];

  v12 = [(DMFApp *)self staticUsage];
  [v3 appendFormat:@"Static Usage                   : %@\n", v12];

  v13 = [(DMFApp *)self dynamicUsage];
  [v3 appendFormat:@"Dynamic Usage                  : %@\n", v13];

  v14 = [(DMFApp *)self onDemandResourcesUsage];
  [v3 appendFormat:@"On Demand Resources Usage      : %@\n", v14];

  v15 = [(DMFApp *)self sharedUsage];
  [v3 appendFormat:@"Shared Usage                   : %@\n", v15];

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
  v31 = [(DMFApp *)self VPNUUIDString];
  [v3 appendFormat:@"VPN UUID String                : %@\n", v31];

  v32 = [(DMFApp *)self cellularSliceUUIDString];
  [v3 appendFormat:@"CellularSlice UUID String      : %@\n", v32];

  v33 = [(DMFApp *)self contentFilterUUIDString];
  [v3 appendFormat:@"ContentFilter UUID String      : %@\n", v33];

  v34 = [(DMFApp *)self DNSProxyUUIDString];
  [v3 appendFormat:@"DNS Proxy UUID String          : %@\n", v34];

  v35 = [(DMFApp *)self relayUUIDString];
  [v3 appendFormat:@"Relay UUID String              : %@\n", v35];

  v36 = [(DMFApp *)self associatedDomains];
  [v3 appendFormat:@"Associated Domains             : %@\n", v36];

  v37 = [(DMFApp *)self associatedDomainsEnableDirectDownloads];
  if ([v37 BOOLValue])
  {
    v38 = @"YES";
  }

  else
  {
    v38 = @"NO";
  }

  [v3 appendFormat:@"AD Enabled Direct Downloads    : %@\n", v38];

  v39 = [(DMFApp *)self removable];
  if (v39)
  {
    v40 = [(DMFApp *)self removable];
    if ([v40 BOOLValue])
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

  v42 = [(DMFApp *)self tapToPayScreenLock];
  if (v42)
  {
    v43 = [(DMFApp *)self tapToPayScreenLock];
    if ([v43 BOOLValue])
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
  v46 = [(DMFApp *)self allowUserToHide];
  v47 = [v45 descriptionForBool:v46 showWhenUnassigned:1 valueWhenUnassigned:1];
  [v3 appendFormat:@"Allow User To Hide             : %@\n", v47];

  v48 = objc_opt_class();
  v49 = [(DMFApp *)self allowUserToLock];
  v50 = [v48 descriptionForBool:v49 showWhenUnassigned:1 valueWhenUnassigned:1];
  [v3 appendFormat:@"Allow User To Lock             : %@\n", v50];

  v51 = [(DMFApp *)self configuration];
  [v3 appendFormat:@"Configuration                  : %@\n", v51];

  v52 = [(DMFApp *)self feedback];
  [v3 appendFormat:@"Feedback                       : %@\n", v52];

  v53 = [(DMFApp *)self sourceIdentifier];
  [v3 appendFormat:@"sourceIdentifier               : %@\n", v53];

  v54 = [(DMFApp *)self managementInformation];
  [v3 appendFormat:@"Management Information         : %@\n", v54];

  [v3 appendString:@"}>"];
  v55 = [v3 copy];

  return v55;
}

+ (id)descriptionForBool:(id)a3 showWhenUnassigned:(BOOL)a4 valueWhenUnassigned:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v5 = [v7 BOOLValue];
  }

  else if (v6)
  {
    v9 = @"Unassigned (NO)";
    v10 = @"Unassigned (YES)";
    goto LABEL_6;
  }

  v9 = @"NO";
  v10 = @"YES";
LABEL_6:
  if (v5)
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

- (id)_stringForType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8615F58[a3 - 1];
  }
}

@end