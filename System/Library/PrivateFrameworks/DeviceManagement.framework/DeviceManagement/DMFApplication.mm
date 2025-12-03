@interface DMFApplication
- (BOOL)isEqual:(id)equal;
- (DMFApplication)initWithApplicationIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier name:(id)name iconData:(id)data bundleVersion:(id)version shortVersionString:(id)string applicationType:(id)type adamID:(id)self0 externalVersionIdentifier:(id)self1 betaExternalVersionIdentifier:(id)self2 staticUsage:(id)self3 dynamicUsage:(id)self4 onDemandResourcesUsage:(id)self5 unusedRedemptionCode:(id)self6 attributes:(id)self7 configuration:(id)self8 feedback:(id)self9 state:(unint64_t)state managementFlags:(unint64_t)flags isManaged:(BOOL)managed isValidated:(BOOL)validated isInstalled:(BOOL)installed isPlaceholder:(BOOL)placeholder isAppUpdate:(BOOL)update isBetaApp:(BOOL)app isRemoveable:(BOOL)removeable fileSharingEnabled:(BOOL)enabled progress:(id)identifier0;
- (DMFApplication)initWithBundleIdentifier:(id)identifier name:(id)name iconData:(id)data applicationType:(id)type adamID:(id)d externalVersionNumber:(id)number betaExternalVersionIdentifier:(id)versionIdentifier isInstalled:(BOOL)self0 isPlaceholder:(BOOL)self1 isAppUpdate:(BOOL)self2 isBetaApp:(BOOL)self3 isRemoveable:(BOOL)self4 fileSharingEnabled:(BOOL)self5 progress:(id)self6;
- (DMFApplication)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFApplication

- (DMFApplication)initWithApplicationIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier name:(id)name iconData:(id)data bundleVersion:(id)version shortVersionString:(id)string applicationType:(id)type adamID:(id)self0 externalVersionIdentifier:(id)self1 betaExternalVersionIdentifier:(id)self2 staticUsage:(id)self3 dynamicUsage:(id)self4 onDemandResourcesUsage:(id)self5 unusedRedemptionCode:(id)self6 attributes:(id)self7 configuration:(id)self8 feedback:(id)self9 state:(unint64_t)state managementFlags:(unint64_t)flags isManaged:(BOOL)managed isValidated:(BOOL)validated isInstalled:(BOOL)installed isPlaceholder:(BOOL)placeholder isAppUpdate:(BOOL)update isBetaApp:(BOOL)app isRemoveable:(BOOL)removeable fileSharingEnabled:(BOOL)enabled progress:(id)identifier0
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  dataCopy = data;
  versionCopy = version;
  versionCopy2 = version;
  stringCopy = string;
  stringCopy2 = string;
  typeCopy = type;
  dCopy = d;
  versionIdentifierCopy = versionIdentifier;
  externalVersionIdentifierCopy = externalVersionIdentifier;
  usageCopy = usage;
  dynamicUsageCopy = dynamicUsage;
  resourcesUsageCopy = resourcesUsage;
  codeCopy = code;
  attributesCopy = attributes;
  configurationCopy = configuration;
  feedbackCopy = feedback;
  progressCopy = progress;
  v88.receiver = self;
  v88.super_class = DMFApplication;
  v44 = [(DMFApplication *)&v88 init];
  if (v44)
  {
    v45 = [identifierCopy copy];
    applicationIdentifier = v44->_applicationIdentifier;
    v44->_applicationIdentifier = v45;

    v47 = [bundleIdentifierCopy copy];
    bundleIdentifier = v44->_bundleIdentifier;
    v44->_bundleIdentifier = v47;

    v49 = [nameCopy copy];
    name = v44->_name;
    v44->_name = v49;

    v51 = [dataCopy copy];
    iconData = v44->_iconData;
    v44->_iconData = v51;

    objc_storeStrong(&v44->_bundleVersion, versionCopy);
    objc_storeStrong(&v44->_shortVersionString, stringCopy);
    v53 = [typeCopy copy];
    applicationType = v44->_applicationType;
    v44->_applicationType = v53;

    v55 = [dCopy copy];
    adamID = v44->_adamID;
    v44->_adamID = v55;

    v57 = [versionIdentifierCopy copy];
    externalVersionIdentifier = v44->_externalVersionIdentifier;
    v44->_externalVersionIdentifier = v57;

    v59 = [externalVersionIdentifierCopy copy];
    betaExternalVersionIdentifier = v44->_betaExternalVersionIdentifier;
    v44->_betaExternalVersionIdentifier = v59;

    v61 = [usageCopy copy];
    staticUsage = v44->_staticUsage;
    v44->_staticUsage = v61;

    v63 = [dynamicUsageCopy copy];
    dynamicUsage = v44->_dynamicUsage;
    v44->_dynamicUsage = v63;

    v65 = [resourcesUsageCopy copy];
    onDemandResourcesUsage = v44->_onDemandResourcesUsage;
    v44->_onDemandResourcesUsage = v65;

    v67 = [codeCopy copy];
    unusedRedemptionCode = v44->_unusedRedemptionCode;
    v44->_unusedRedemptionCode = v67;

    v69 = [attributesCopy copy];
    attributes = v44->_attributes;
    v44->_attributes = v69;

    v71 = [configurationCopy copy];
    configuration = v44->_configuration;
    v44->_configuration = v71;

    v73 = [feedbackCopy copy];
    feedback = v44->_feedback;
    v44->_feedback = v73;

    v44->_state = state;
    v44->_managementFlags = flags;
    v44->_isManaged = managed;
    v44->_isValidated = validated;
    v44->_isInstalled = installed;
    v44->_isPlaceholder = placeholder;
    v44->_isAppUpdate = update;
    v44->_isBetaApp = app;
    v44->_isRemoveable = removeable;
    v44->_fileSharingEnabled = enabled;
    objc_storeStrong(&v44->_progress, progress);
  }

  return v44;
}

- (DMFApplication)initWithBundleIdentifier:(id)identifier name:(id)name iconData:(id)data applicationType:(id)type adamID:(id)d externalVersionNumber:(id)number betaExternalVersionIdentifier:(id)versionIdentifier isInstalled:(BOOL)self0 isPlaceholder:(BOOL)self1 isAppUpdate:(BOOL)self2 isBetaApp:(BOOL)self3 isRemoveable:(BOOL)self4 fileSharingEnabled:(BOOL)self5 progress:(id)self6
{
  identifierCopy = identifier;
  nameCopy = name;
  dataCopy = data;
  typeCopy = type;
  dCopy = d;
  numberCopy = number;
  versionIdentifierCopy = versionIdentifier;
  progressCopy = progress;
  v46.receiver = self;
  v46.super_class = DMFApplication;
  v30 = [(DMFApplication *)&v46 init];
  if (v30)
  {
    v31 = [identifierCopy copy];
    bundleIdentifier = v30->_bundleIdentifier;
    v30->_bundleIdentifier = v31;

    v33 = [nameCopy copy];
    name = v30->_name;
    v30->_name = v33;

    v35 = [dataCopy copy];
    iconData = v30->_iconData;
    v30->_iconData = v35;

    v37 = [typeCopy copy];
    applicationType = v30->_applicationType;
    v30->_applicationType = v37;

    v39 = [dCopy copy];
    adamID = v30->_adamID;
    v30->_adamID = v39;

    v41 = [numberCopy copy];
    externalVersionIdentifier = v30->_externalVersionIdentifier;
    v30->_externalVersionIdentifier = v41;

    v43 = [versionIdentifierCopy copy];
    betaExternalVersionIdentifier = v30->_betaExternalVersionIdentifier;
    v30->_betaExternalVersionIdentifier = v43;

    v30->_isInstalled = installed;
    v30->_isPlaceholder = placeholder;
    v30->_isAppUpdate = update;
    v30->_isBetaApp = app;
    v30->_isRemoveable = removeable;
    v30->_fileSharingEnabled = enabled;
    objc_storeStrong(&v30->_progress, progress);
  }

  return v30;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v27 = objc_alloc(objc_opt_class());
  applicationIdentifier = [(DMFApplication *)self applicationIdentifier];
  bundleIdentifier = [(DMFApplication *)self bundleIdentifier];
  name = [(DMFApplication *)self name];
  iconData = [(DMFApplication *)self iconData];
  bundleVersion = [(DMFApplication *)self bundleVersion];
  shortVersionString = [(DMFApplication *)self shortVersionString];
  applicationType = [(DMFApplication *)self applicationType];
  adamID = [(DMFApplication *)self adamID];
  externalVersionIdentifier = [(DMFApplication *)self externalVersionIdentifier];
  betaExternalVersionIdentifier = [(DMFApplication *)self betaExternalVersionIdentifier];
  staticUsage = [(DMFApplication *)self staticUsage];
  dynamicUsage = [(DMFApplication *)self dynamicUsage];
  onDemandResourcesUsage = [(DMFApplication *)self onDemandResourcesUsage];
  unusedRedemptionCode = [(DMFApplication *)self unusedRedemptionCode];
  attributes = [(DMFApplication *)self attributes];
  configuration = [(DMFApplication *)self configuration];
  feedback = [(DMFApplication *)self feedback];
  state = [(DMFApplication *)self state];
  managementFlags = [(DMFApplication *)self managementFlags];
  isManaged = [(DMFApplication *)self isManaged];
  isValidated = [(DMFApplication *)self isValidated];
  isInstalled = [(DMFApplication *)self isInstalled];
  isPlaceholder = [(DMFApplication *)self isPlaceholder];
  isAppUpdate = [(DMFApplication *)self isAppUpdate];
  isBetaApp = [(DMFApplication *)self isBetaApp];
  isRemoveable = [(DMFApplication *)self isRemoveable];
  fileSharingEnabled = [(DMFApplication *)self fileSharingEnabled];
  progress = [(DMFApplication *)self progress];
  HIBYTE(v14) = fileSharingEnabled;
  BYTE6(v14) = isRemoveable;
  BYTE5(v14) = isBetaApp;
  BYTE4(v14) = isAppUpdate;
  BYTE3(v14) = isPlaceholder;
  BYTE2(v14) = isInstalled;
  BYTE1(v14) = isValidated;
  LOBYTE(v14) = isManaged;
  v28 = [v27 initWithApplicationIdentifier:applicationIdentifier bundleIdentifier:bundleIdentifier name:name iconData:iconData bundleVersion:bundleVersion shortVersionString:shortVersionString applicationType:applicationType adamID:adamID externalVersionIdentifier:externalVersionIdentifier betaExternalVersionIdentifier:betaExternalVersionIdentifier staticUsage:staticUsage dynamicUsage:dynamicUsage onDemandResourcesUsage:onDemandResourcesUsage unusedRedemptionCode:unusedRedemptionCode attributes:attributes configuration:configuration feedback:feedback state:state managementFlags:managementFlags isManaged:v14 isValidated:progress isInstalled:? isPlaceholder:? isAppUpdate:? isBetaApp:? isRemoveable:? fileSharingEnabled:? progress:?];

  return v28;
}

- (DMFApplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v104.receiver = self;
  v104.super_class = DMFApplication;
  v5 = [(DMFApplication *)&v104 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"name"];
    name = v5->_name;
    v5->_name = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"iconData"];
    iconData = v5->_iconData;
    v5->_iconData = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v19;

    v21 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"shortVersionString"];
    shortVersionString = v5->_shortVersionString;
    v5->_shortVersionString = v22;

    v24 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"applicationType"];
    applicationType = v5->_applicationType;
    v5->_applicationType = v25;

    v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"adamID"];
    adamID = v5->_adamID;
    v5->_adamID = v28;

    v30 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"externalVersionIdentifier"];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = v31;

    v33 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"betaExternalVersionIdentifier"];
    betaExternalVersionIdentifier = v5->_betaExternalVersionIdentifier;
    v5->_betaExternalVersionIdentifier = v34;

    v36 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"staticUsage"];
    staticUsage = v5->_staticUsage;
    v5->_staticUsage = v37;

    v39 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"dynamicUsage"];
    dynamicUsage = v5->_dynamicUsage;
    v5->_dynamicUsage = v40;

    v42 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"onDemandResourcesUsage"];
    onDemandResourcesUsage = v5->_onDemandResourcesUsage;
    v5->_onDemandResourcesUsage = v43;

    v45 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"unusedRedemptionCode"];
    unusedRedemptionCode = v5->_unusedRedemptionCode;
    v5->_unusedRedemptionCode = v46;

    v101 = MEMORY[0x1E695DFD8];
    v98 = objc_opt_class();
    v95 = objc_opt_class();
    v48 = objc_opt_class();
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = objc_opt_class();
    v54 = objc_opt_class();
    v55 = objc_opt_class();
    v56 = [v101 setWithObjects:{v98, v95, v48, v49, v50, v51, v52, v53, v54, v55, objc_opt_class(), 0}];
    v57 = [coderCopy decodeObjectOfClasses:v56 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v57;

    v102 = MEMORY[0x1E695DFD8];
    v99 = objc_opt_class();
    v96 = objc_opt_class();
    v59 = objc_opt_class();
    v60 = objc_opt_class();
    v61 = objc_opt_class();
    v62 = objc_opt_class();
    v63 = objc_opt_class();
    v64 = objc_opt_class();
    v65 = objc_opt_class();
    v66 = objc_opt_class();
    v67 = [v102 setWithObjects:{v99, v96, v59, v60, v61, v62, v63, v64, v65, v66, objc_opt_class(), 0}];
    v68 = [coderCopy decodeObjectOfClasses:v67 forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v68;

    v103 = MEMORY[0x1E695DFD8];
    v100 = objc_opt_class();
    v97 = objc_opt_class();
    v70 = objc_opt_class();
    v71 = objc_opt_class();
    v72 = objc_opt_class();
    v73 = objc_opt_class();
    v74 = objc_opt_class();
    v75 = objc_opt_class();
    v76 = objc_opt_class();
    v77 = objc_opt_class();
    v78 = [v103 setWithObjects:{v100, v97, v70, v71, v72, v73, v74, v75, v76, v77, objc_opt_class(), 0}];
    v79 = [coderCopy decodeObjectOfClasses:v78 forKey:@"feedback"];
    feedback = v5->_feedback;
    v5->_feedback = v79;

    v81 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = [v81 unsignedIntegerValue];

    v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managementFlags"];
    v5->_managementFlags = [v82 unsignedIntegerValue];

    v83 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isManaged"];
    v5->_isManaged = [v83 BOOLValue];

    v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isValidated"];
    v5->_isValidated = [v84 BOOLValue];

    v85 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isInstalled"];
    v5->_isInstalled = [v85 BOOLValue];

    v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isPlaceholder"];
    v5->_isPlaceholder = [v86 BOOLValue];

    v87 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isAppUpdate"];
    v5->_isAppUpdate = [v87 BOOLValue];

    v88 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isBetaApp"];
    v5->_isBetaApp = [v88 BOOLValue];

    v89 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isRemoveable"];
    v5->_isRemoveable = [v89 BOOLValue];

    v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileSharingEnabled"];
    v5->_fileSharingEnabled = [v90 BOOLValue];

    v91 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v92 = [coderCopy decodeObjectOfClasses:v91 forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v92;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  applicationIdentifier = [(DMFApplication *)self applicationIdentifier];
  [coderCopy encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];

  bundleIdentifier = [(DMFApplication *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  name = [(DMFApplication *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  iconData = [(DMFApplication *)self iconData];
  [coderCopy encodeObject:iconData forKey:@"iconData"];

  bundleVersion = [(DMFApplication *)self bundleVersion];
  [coderCopy encodeObject:bundleVersion forKey:@"bundleVersion"];

  shortVersionString = [(DMFApplication *)self shortVersionString];
  [coderCopy encodeObject:shortVersionString forKey:@"shortVersionString"];

  applicationType = [(DMFApplication *)self applicationType];
  [coderCopy encodeObject:applicationType forKey:@"applicationType"];

  adamID = [(DMFApplication *)self adamID];
  [coderCopy encodeObject:adamID forKey:@"adamID"];

  externalVersionIdentifier = [(DMFApplication *)self externalVersionIdentifier];
  [coderCopy encodeObject:externalVersionIdentifier forKey:@"externalVersionIdentifier"];

  betaExternalVersionIdentifier = [(DMFApplication *)self betaExternalVersionIdentifier];
  [coderCopy encodeObject:betaExternalVersionIdentifier forKey:@"betaExternalVersionIdentifier"];

  staticUsage = [(DMFApplication *)self staticUsage];
  [coderCopy encodeObject:staticUsage forKey:@"staticUsage"];

  dynamicUsage = [(DMFApplication *)self dynamicUsage];
  [coderCopy encodeObject:dynamicUsage forKey:@"dynamicUsage"];

  onDemandResourcesUsage = [(DMFApplication *)self onDemandResourcesUsage];
  [coderCopy encodeObject:onDemandResourcesUsage forKey:@"onDemandResourcesUsage"];

  unusedRedemptionCode = [(DMFApplication *)self unusedRedemptionCode];
  [coderCopy encodeObject:unusedRedemptionCode forKey:@"unusedRedemptionCode"];

  attributes = [(DMFApplication *)self attributes];
  [coderCopy encodeObject:attributes forKey:@"attributes"];

  configuration = [(DMFApplication *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];

  feedback = [(DMFApplication *)self feedback];
  [coderCopy encodeObject:feedback forKey:@"feedback"];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFApplication state](self, "state")}];
  [coderCopy encodeObject:v22 forKey:@"state"];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFApplication managementFlags](self, "managementFlags")}];
  [coderCopy encodeObject:v23 forKey:@"managementFlags"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isManaged](self, "isManaged")}];
  [coderCopy encodeObject:v24 forKey:@"isManaged"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isValidated](self, "isValidated")}];
  [coderCopy encodeObject:v25 forKey:@"isValidated"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isInstalled](self, "isInstalled")}];
  [coderCopy encodeObject:v26 forKey:@"isInstalled"];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isPlaceholder](self, "isPlaceholder")}];
  [coderCopy encodeObject:v27 forKey:@"isPlaceholder"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isAppUpdate](self, "isAppUpdate")}];
  [coderCopy encodeObject:v28 forKey:@"isAppUpdate"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isBetaApp](self, "isBetaApp")}];
  [coderCopy encodeObject:v29 forKey:@"isBetaApp"];

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isRemoveable](self, "isRemoveable")}];
  [coderCopy encodeObject:v30 forKey:@"isRemoveable"];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication fileSharingEnabled](self, "fileSharingEnabled")}];
  [coderCopy encodeObject:v31 forKey:@"fileSharingEnabled"];

  progress = [(DMFApplication *)self progress];
  [coderCopy encodeObject:progress forKey:@"progress"];
}

- (unint64_t)hash
{
  applicationIdentifier = [(DMFApplication *)self applicationIdentifier];
  v3 = [applicationIdentifier hash];
  bundleIdentifier = [(DMFApplication *)self bundleIdentifier];
  v4 = [bundleIdentifier hash] ^ v3;
  name = [(DMFApplication *)self name];
  v5 = [name hash];
  iconData = [(DMFApplication *)self iconData];
  v6 = v4 ^ v5 ^ [iconData hash];
  bundleVersion = [(DMFApplication *)self bundleVersion];
  v7 = [bundleVersion hash];
  shortVersionString = [(DMFApplication *)self shortVersionString];
  v8 = v7 ^ [shortVersionString hash];
  applicationType = [(DMFApplication *)self applicationType];
  v9 = v6 ^ v8 ^ [applicationType hash];
  adamID = [(DMFApplication *)self adamID];
  v10 = [adamID hash];
  externalVersionIdentifier = [(DMFApplication *)self externalVersionIdentifier];
  v11 = v10 ^ [externalVersionIdentifier hash];
  betaExternalVersionIdentifier = [(DMFApplication *)self betaExternalVersionIdentifier];
  v12 = v11 ^ [betaExternalVersionIdentifier hash];
  staticUsage = [(DMFApplication *)self staticUsage];
  v14 = v9 ^ v12 ^ [staticUsage hash];
  dynamicUsage = [(DMFApplication *)self dynamicUsage];
  v16 = [dynamicUsage hash];
  onDemandResourcesUsage = [(DMFApplication *)self onDemandResourcesUsage];
  v18 = v16 ^ [onDemandResourcesUsage hash];
  unusedRedemptionCode = [(DMFApplication *)self unusedRedemptionCode];
  v20 = v18 ^ [unusedRedemptionCode hash];
  attributes = [(DMFApplication *)self attributes];
  v22 = v20 ^ [attributes hash];
  configuration = [(DMFApplication *)self configuration];
  v24 = v14 ^ v22 ^ [configuration hash];
  feedback = [(DMFApplication *)self feedback];
  v26 = [feedback hash];
  v27 = v26 ^ [(DMFApplication *)self state];
  v28 = v27 ^ [(DMFApplication *)self managementFlags];
  v29 = v28 ^ [(DMFApplication *)self isManaged];
  v30 = v29 ^ [(DMFApplication *)self isValidated];
  v31 = v24 ^ v30 ^ [(DMFApplication *)self isInstalled];
  isPlaceholder = [(DMFApplication *)self isPlaceholder];
  v33 = isPlaceholder ^ [(DMFApplication *)self isAppUpdate];
  v34 = v33 ^ [(DMFApplication *)self isBetaApp];
  v35 = v34 ^ [(DMFApplication *)self isRemoveable];
  v36 = v35 ^ [(DMFApplication *)self fileSharingEnabled];
  progress = [(DMFApplication *)self progress];
  v38 = v36 ^ [progress hash];

  return v31 ^ v38;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v85 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      applicationIdentifier = [(DMFApplication *)self applicationIdentifier];
      applicationIdentifier2 = [(DMFApplication *)v5 applicationIdentifier];
      v8 = applicationIdentifier;
      v9 = applicationIdentifier2;
      if (v8 | v9)
      {
        v10 = [v8 isEqual:v9];

        if (!v10)
        {
          v85 = 0;
LABEL_80:

          goto LABEL_81;
        }
      }

      bundleIdentifier = [(DMFApplication *)self bundleIdentifier];
      bundleIdentifier2 = [(DMFApplication *)v5 bundleIdentifier];
      v13 = bundleIdentifier;
      v14 = bundleIdentifier2;
      v126 = v13;
      if (v13 | v14)
      {
        v15 = [v13 isEqual:v14];

        if (!v15)
        {
          v85 = 0;
LABEL_79:

          goto LABEL_80;
        }
      }

      name = [(DMFApplication *)self name];
      name2 = [(DMFApplication *)v5 name];
      v18 = name;
      v125 = name2;
      if (v18 | v125)
      {
        v19 = [v18 isEqual:v125];

        if (!v19)
        {
          v85 = 0;
LABEL_78:

          goto LABEL_79;
        }
      }

      v123 = v18;
      iconData = [(DMFApplication *)self iconData];
      iconData2 = [(DMFApplication *)v5 iconData];
      v22 = iconData;
      v124 = iconData2;
      if (v22 | v124)
      {
        v23 = [v22 isEqual:v124];

        if (!v23)
        {
          v85 = 0;
          v18 = v123;
LABEL_77:

          goto LABEL_78;
        }
      }

      v120 = v22;
      bundleVersion = [(DMFApplication *)self bundleVersion];
      bundleVersion2 = [(DMFApplication *)v5 bundleVersion];
      v26 = bundleVersion;
      v121 = bundleVersion2;
      v122 = v26;
      if (v26 | v121)
      {
        v27 = [v26 isEqual:v121];

        if (!v27)
        {
          v85 = 0;
          v18 = v123;
LABEL_76:

          goto LABEL_77;
        }
      }

      shortVersionString = [(DMFApplication *)self shortVersionString];
      shortVersionString2 = [(DMFApplication *)v5 shortVersionString];
      v30 = shortVersionString;
      v118 = shortVersionString2;
      v119 = v30;
      if (v30 | v118)
      {
        v31 = [v30 isEqual:v118];

        if (!v31)
        {
          v85 = 0;
          v18 = v123;
LABEL_75:

          goto LABEL_76;
        }
      }

      applicationType = [(DMFApplication *)self applicationType];
      applicationType2 = [(DMFApplication *)v5 applicationType];
      v34 = applicationType;
      v35 = applicationType2;
      v117 = v34;
      if (v34 | v35)
      {
        v36 = [v34 isEqual:v35];

        if (!v36)
        {
          v85 = 0;
          v18 = v123;
          v22 = v120;
LABEL_74:

          goto LABEL_75;
        }
      }

      v110 = v35;
      adamID = [(DMFApplication *)self adamID];
      adamID2 = [(DMFApplication *)v5 adamID];
      v39 = adamID;
      v115 = adamID2;
      v116 = v39;
      if (v39 | v115)
      {
        v40 = [v39 isEqual:v115];

        if (!v40)
        {
          v85 = 0;
          v18 = v123;
          v22 = v120;
          v35 = v110;
LABEL_73:

          goto LABEL_74;
        }
      }

      externalVersionIdentifier = [(DMFApplication *)self externalVersionIdentifier];
      externalVersionIdentifier2 = [(DMFApplication *)v5 externalVersionIdentifier];
      v43 = externalVersionIdentifier;
      v44 = externalVersionIdentifier2;
      v108 = v44;
      v109 = v43;
      if (v43 | v44)
      {
        v45 = v44;
        v46 = [v43 isEqual:v44];

        if (!v46)
        {
          v85 = 0;
          v18 = v123;
          v22 = v120;
          v35 = v110;
LABEL_72:

          goto LABEL_73;
        }
      }

      betaExternalVersionIdentifier = [(DMFApplication *)self betaExternalVersionIdentifier];
      betaExternalVersionIdentifier2 = [(DMFApplication *)v5 betaExternalVersionIdentifier];
      v49 = betaExternalVersionIdentifier;
      v106 = betaExternalVersionIdentifier2;
      v107 = v49;
      if (v49 | v106)
      {
        v50 = [v49 isEqual:v106];

        if (!v50)
        {
          v85 = 0;
          v18 = v123;
          v22 = v120;
          v35 = v110;
LABEL_71:

          goto LABEL_72;
        }
      }

      staticUsage = [(DMFApplication *)self staticUsage];
      staticUsage2 = [(DMFApplication *)v5 staticUsage];
      v53 = staticUsage;
      v104 = staticUsage2;
      v105 = v53;
      if (v53 | v104)
      {
        v54 = [v53 isEqual:v104];

        if (!v54)
        {
          v85 = 0;
          v18 = v123;
          v22 = v120;
          v35 = v110;
LABEL_70:

          goto LABEL_71;
        }
      }

      dynamicUsage = [(DMFApplication *)self dynamicUsage];
      dynamicUsage2 = [(DMFApplication *)v5 dynamicUsage];
      v57 = dynamicUsage;
      v58 = dynamicUsage2;
      v103 = v58;
      if (v57 | v58)
      {
        v59 = v58;
        v60 = [v57 isEqual:v58];

        if (!v60)
        {
          v85 = 0;
          v18 = v123;
          v22 = v120;
          v35 = v110;
LABEL_69:

          goto LABEL_70;
        }
      }

      onDemandResourcesUsage = [(DMFApplication *)self onDemandResourcesUsage];
      onDemandResourcesUsage2 = [(DMFApplication *)v5 onDemandResourcesUsage];
      v63 = onDemandResourcesUsage;
      v101 = onDemandResourcesUsage2;
      v102 = v63;
      if (v63 | v101)
      {
        v64 = [v63 isEqual:v101];

        if (!v64)
        {
          v85 = 0;
          v18 = v123;
          v22 = v120;
          v35 = v110;
LABEL_68:

          goto LABEL_69;
        }
      }

      unusedRedemptionCode = [(DMFApplication *)self unusedRedemptionCode];
      unusedRedemptionCode2 = [(DMFApplication *)v5 unusedRedemptionCode];
      v67 = unusedRedemptionCode;
      v68 = unusedRedemptionCode2;
      v100 = v68;
      if (v67 | v68)
      {
        v69 = v68;
        v70 = [v67 isEqual:v68];

        if (!v70)
        {
          v85 = 0;
          v18 = v123;
          v35 = v110;
LABEL_67:

          v22 = v120;
          goto LABEL_68;
        }
      }

      attributes = [(DMFApplication *)self attributes];
      attributes2 = [(DMFApplication *)v5 attributes];
      v73 = attributes;
      v98 = attributes2;
      v99 = v73;
      if (v73 | v98)
      {
        v111 = [v73 isEqual:v98];

        if (!v111)
        {
          v85 = 0;
          v18 = v123;
          v35 = v110;
LABEL_66:

          goto LABEL_67;
        }
      }

      configuration = [(DMFApplication *)self configuration];
      configuration2 = [(DMFApplication *)v5 configuration];
      v76 = configuration;
      v96 = configuration2;
      v97 = v76;
      if (v76 | v96)
      {
        v112 = [v76 isEqual:v96];

        if (!v112)
        {
          v85 = 0;
          v18 = v123;
          v35 = v110;
LABEL_65:

          goto LABEL_66;
        }
      }

      feedback = [(DMFApplication *)self feedback];
      feedback2 = [(DMFApplication *)v5 feedback];
      v79 = feedback;
      v94 = feedback2;
      v95 = v79;
      if (v79 | v94)
      {
        v113 = [v79 isEqual:v94];

        if (!v113)
        {
          goto LABEL_62;
        }
      }

      state = [(DMFApplication *)self state];
      v35 = v110;
      if (state != [(DMFApplication *)v5 state]|| (v81 = [(DMFApplication *)self managementFlags], v81 != [(DMFApplication *)v5 managementFlags]) || (v82 = [(DMFApplication *)self isManaged], v82 != [(DMFApplication *)v5 isManaged]) || (v83 = [(DMFApplication *)self isValidated], v83 != [(DMFApplication *)v5 isValidated]) || (v84 = [(DMFApplication *)self isInstalled], v84 != [(DMFApplication *)v5 isInstalled]))
      {
        v85 = 0;
        v18 = v123;
LABEL_64:

        goto LABEL_65;
      }

      isPlaceholder = [(DMFApplication *)self isPlaceholder];
      if (isPlaceholder == [(DMFApplication *)v5 isPlaceholder])
      {
        isAppUpdate = [(DMFApplication *)self isAppUpdate];
        v114 = v5;
        if (isAppUpdate == [(DMFApplication *)v5 isAppUpdate]&& (v89 = [(DMFApplication *)self isBetaApp], v89 == [(DMFApplication *)v5 isBetaApp]) && (v90 = [(DMFApplication *)self isRemoveable], v90 == [(DMFApplication *)v5 isRemoveable]) && (v91 = [(DMFApplication *)self fileSharingEnabled], v91 == [(DMFApplication *)v5 fileSharingEnabled]))
        {
          progress = [(DMFApplication *)self progress];
          progress2 = [(DMFApplication *)v114 progress];
          if (progress | progress2)
          {
            v85 = [progress isEqual:progress2];
          }

          else
          {
            v85 = 1;
          }
        }

        else
        {
          v85 = 0;
        }

        v18 = v123;
        v5 = v114;
      }

      else
      {
LABEL_62:
        v85 = 0;
        v18 = v123;
      }

      v35 = v110;
      goto LABEL_64;
    }

    v85 = 0;
  }

LABEL_81:

  return v85;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  applicationIdentifier = [(DMFApplication *)self applicationIdentifier];
  [v3 appendFormat:@"\tApplication Identifier           : %@\n", applicationIdentifier];

  bundleIdentifier = [(DMFApplication *)self bundleIdentifier];
  [v3 appendFormat:@"\tBundle Identifier                : %@\n", bundleIdentifier];

  name = [(DMFApplication *)self name];
  [v3 appendFormat:@"\tName                             : %@\n", name];

  adamID = [(DMFApplication *)self adamID];
  [v3 appendFormat:@"\tAdam ID                          : %@\n", adamID];

  externalVersionIdentifier = [(DMFApplication *)self externalVersionIdentifier];
  [v3 appendFormat:@"\tExternal Version Identifier      : %@\n", externalVersionIdentifier];

  betaExternalVersionIdentifier = [(DMFApplication *)self betaExternalVersionIdentifier];
  [v3 appendFormat:@"\tBeta External Version Identifier : %@\n", betaExternalVersionIdentifier];

  bundleVersion = [(DMFApplication *)self bundleVersion];
  [v3 appendFormat:@"\tBundle Version                   : %@\n", bundleVersion];

  shortVersionString = [(DMFApplication *)self shortVersionString];
  [v3 appendFormat:@"\tShort Version String             : %@\n", shortVersionString];

  unusedRedemptionCode = [(DMFApplication *)self unusedRedemptionCode];
  [v3 appendFormat:@"\tUnused Redemption Code           : %@\n", unusedRedemptionCode];

  attributes = [(DMFApplication *)self attributes];
  [v3 appendFormat:@"\tAttributes                       : %@\n", attributes];

  configuration = [(DMFApplication *)self configuration];
  [v3 appendFormat:@"\tConfiguration                    : %@\n", configuration];

  feedback = [(DMFApplication *)self feedback];
  [v3 appendFormat:@"\tFeedback                         : %@\n", feedback];

  progress = [(DMFApplication *)self progress];
  [v3 appendFormat:@"\tProgress                         : %@\n", progress];

  if ([(DMFApplication *)self isManaged])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  [v3 appendFormat:@"\tIs Managed                       : %@\n", v17];
  if ([(DMFApplication *)self isValidated])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v3 appendFormat:@"\tIs Validated                     : %@\n", v18];
  if ([(DMFApplication *)self isInstalled])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v3 appendFormat:@"\tIs Installed                     : %@\n", v19];
  if ([(DMFApplication *)self isPlaceholder])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  [v3 appendFormat:@"\tIs Placeholder                   : %@\n", v20];
  if ([(DMFApplication *)self isAppUpdate])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v3 appendFormat:@"\tIs App Update                    : %@\n", v21];
  if ([(DMFApplication *)self isBetaApp])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v3 appendFormat:@"\tIs Beta App                      : %@\n", v22];
  if ([(DMFApplication *)self isRemoveable])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v3 appendFormat:@"\tIs Removable                     : %@\n", v23];
  if ([(DMFApplication *)self fileSharingEnabled])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v3 appendFormat:@"\tFile Sharing Enabled             : %@\n", v24];
  [v3 appendString:@"}>"];
  v25 = [v3 copy];

  return v25;
}

@end