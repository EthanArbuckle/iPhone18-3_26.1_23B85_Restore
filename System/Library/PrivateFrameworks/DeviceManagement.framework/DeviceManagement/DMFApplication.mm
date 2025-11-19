@interface DMFApplication
- (BOOL)isEqual:(id)a3;
- (DMFApplication)initWithApplicationIdentifier:(id)a3 bundleIdentifier:(id)a4 name:(id)a5 iconData:(id)a6 bundleVersion:(id)a7 shortVersionString:(id)a8 applicationType:(id)a9 adamID:(id)a10 externalVersionIdentifier:(id)a11 betaExternalVersionIdentifier:(id)a12 staticUsage:(id)a13 dynamicUsage:(id)a14 onDemandResourcesUsage:(id)a15 unusedRedemptionCode:(id)a16 attributes:(id)a17 configuration:(id)a18 feedback:(id)a19 state:(unint64_t)a20 managementFlags:(unint64_t)a21 isManaged:(BOOL)a22 isValidated:(BOOL)a23 isInstalled:(BOOL)a24 isPlaceholder:(BOOL)a25 isAppUpdate:(BOOL)a26 isBetaApp:(BOOL)a27 isRemoveable:(BOOL)a28 fileSharingEnabled:(BOOL)a29 progress:(id)a30;
- (DMFApplication)initWithBundleIdentifier:(id)a3 name:(id)a4 iconData:(id)a5 applicationType:(id)a6 adamID:(id)a7 externalVersionNumber:(id)a8 betaExternalVersionIdentifier:(id)a9 isInstalled:(BOOL)a10 isPlaceholder:(BOOL)a11 isAppUpdate:(BOOL)a12 isBetaApp:(BOOL)a13 isRemoveable:(BOOL)a14 fileSharingEnabled:(BOOL)a15 progress:(id)a16;
- (DMFApplication)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFApplication

- (DMFApplication)initWithApplicationIdentifier:(id)a3 bundleIdentifier:(id)a4 name:(id)a5 iconData:(id)a6 bundleVersion:(id)a7 shortVersionString:(id)a8 applicationType:(id)a9 adamID:(id)a10 externalVersionIdentifier:(id)a11 betaExternalVersionIdentifier:(id)a12 staticUsage:(id)a13 dynamicUsage:(id)a14 onDemandResourcesUsage:(id)a15 unusedRedemptionCode:(id)a16 attributes:(id)a17 configuration:(id)a18 feedback:(id)a19 state:(unint64_t)a20 managementFlags:(unint64_t)a21 isManaged:(BOOL)a22 isValidated:(BOOL)a23 isInstalled:(BOOL)a24 isPlaceholder:(BOOL)a25 isAppUpdate:(BOOL)a26 isBetaApp:(BOOL)a27 isRemoveable:(BOOL)a28 fileSharingEnabled:(BOOL)a29 progress:(id)a30
{
  v85 = a3;
  v86 = a4;
  v81 = a5;
  v87 = a6;
  v35 = a7;
  v79 = a7;
  v36 = a8;
  v78 = a8;
  v37 = a9;
  v38 = a10;
  v84 = a11;
  v83 = a12;
  v82 = a13;
  v80 = a14;
  v39 = a15;
  v40 = a16;
  v41 = a17;
  v42 = a18;
  v43 = a19;
  v77 = a30;
  v88.receiver = self;
  v88.super_class = DMFApplication;
  v44 = [(DMFApplication *)&v88 init];
  if (v44)
  {
    v45 = [v85 copy];
    applicationIdentifier = v44->_applicationIdentifier;
    v44->_applicationIdentifier = v45;

    v47 = [v86 copy];
    bundleIdentifier = v44->_bundleIdentifier;
    v44->_bundleIdentifier = v47;

    v49 = [v81 copy];
    name = v44->_name;
    v44->_name = v49;

    v51 = [v87 copy];
    iconData = v44->_iconData;
    v44->_iconData = v51;

    objc_storeStrong(&v44->_bundleVersion, v35);
    objc_storeStrong(&v44->_shortVersionString, v36);
    v53 = [v37 copy];
    applicationType = v44->_applicationType;
    v44->_applicationType = v53;

    v55 = [v38 copy];
    adamID = v44->_adamID;
    v44->_adamID = v55;

    v57 = [v84 copy];
    externalVersionIdentifier = v44->_externalVersionIdentifier;
    v44->_externalVersionIdentifier = v57;

    v59 = [v83 copy];
    betaExternalVersionIdentifier = v44->_betaExternalVersionIdentifier;
    v44->_betaExternalVersionIdentifier = v59;

    v61 = [v82 copy];
    staticUsage = v44->_staticUsage;
    v44->_staticUsage = v61;

    v63 = [v80 copy];
    dynamicUsage = v44->_dynamicUsage;
    v44->_dynamicUsage = v63;

    v65 = [v39 copy];
    onDemandResourcesUsage = v44->_onDemandResourcesUsage;
    v44->_onDemandResourcesUsage = v65;

    v67 = [v40 copy];
    unusedRedemptionCode = v44->_unusedRedemptionCode;
    v44->_unusedRedemptionCode = v67;

    v69 = [v41 copy];
    attributes = v44->_attributes;
    v44->_attributes = v69;

    v71 = [v42 copy];
    configuration = v44->_configuration;
    v44->_configuration = v71;

    v73 = [v43 copy];
    feedback = v44->_feedback;
    v44->_feedback = v73;

    v44->_state = a20;
    v44->_managementFlags = a21;
    v44->_isManaged = a22;
    v44->_isValidated = a23;
    v44->_isInstalled = a24;
    v44->_isPlaceholder = a25;
    v44->_isAppUpdate = a26;
    v44->_isBetaApp = a27;
    v44->_isRemoveable = a28;
    v44->_fileSharingEnabled = a29;
    objc_storeStrong(&v44->_progress, a30);
  }

  return v44;
}

- (DMFApplication)initWithBundleIdentifier:(id)a3 name:(id)a4 iconData:(id)a5 applicationType:(id)a6 adamID:(id)a7 externalVersionNumber:(id)a8 betaExternalVersionIdentifier:(id)a9 isInstalled:(BOOL)a10 isPlaceholder:(BOOL)a11 isAppUpdate:(BOOL)a12 isBetaApp:(BOOL)a13 isRemoveable:(BOOL)a14 fileSharingEnabled:(BOOL)a15 progress:(id)a16
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v29 = a16;
  v46.receiver = self;
  v46.super_class = DMFApplication;
  v30 = [(DMFApplication *)&v46 init];
  if (v30)
  {
    v31 = [v22 copy];
    bundleIdentifier = v30->_bundleIdentifier;
    v30->_bundleIdentifier = v31;

    v33 = [v23 copy];
    name = v30->_name;
    v30->_name = v33;

    v35 = [v24 copy];
    iconData = v30->_iconData;
    v30->_iconData = v35;

    v37 = [v25 copy];
    applicationType = v30->_applicationType;
    v30->_applicationType = v37;

    v39 = [v26 copy];
    adamID = v30->_adamID;
    v30->_adamID = v39;

    v41 = [v27 copy];
    externalVersionIdentifier = v30->_externalVersionIdentifier;
    v30->_externalVersionIdentifier = v41;

    v43 = [v28 copy];
    betaExternalVersionIdentifier = v30->_betaExternalVersionIdentifier;
    v30->_betaExternalVersionIdentifier = v43;

    v30->_isInstalled = a10;
    v30->_isPlaceholder = a11;
    v30->_isAppUpdate = a12;
    v30->_isBetaApp = a13;
    v30->_isRemoveable = a14;
    v30->_fileSharingEnabled = a15;
    objc_storeStrong(&v30->_progress, a16);
  }

  return v30;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = objc_alloc(objc_opt_class());
  v35 = [(DMFApplication *)self applicationIdentifier];
  v34 = [(DMFApplication *)self bundleIdentifier];
  v33 = [(DMFApplication *)self name];
  v32 = [(DMFApplication *)self iconData];
  v31 = [(DMFApplication *)self bundleVersion];
  v26 = [(DMFApplication *)self shortVersionString];
  v30 = [(DMFApplication *)self applicationType];
  v29 = [(DMFApplication *)self adamID];
  v25 = [(DMFApplication *)self externalVersionIdentifier];
  v15 = [(DMFApplication *)self betaExternalVersionIdentifier];
  v24 = [(DMFApplication *)self staticUsage];
  v23 = [(DMFApplication *)self dynamicUsage];
  v22 = [(DMFApplication *)self onDemandResourcesUsage];
  v21 = [(DMFApplication *)self unusedRedemptionCode];
  v20 = [(DMFApplication *)self attributes];
  v19 = [(DMFApplication *)self configuration];
  v18 = [(DMFApplication *)self feedback];
  v17 = [(DMFApplication *)self state];
  v16 = [(DMFApplication *)self managementFlags];
  v4 = [(DMFApplication *)self isManaged];
  v5 = [(DMFApplication *)self isValidated];
  v6 = [(DMFApplication *)self isInstalled];
  v7 = [(DMFApplication *)self isPlaceholder];
  v8 = [(DMFApplication *)self isAppUpdate];
  v9 = [(DMFApplication *)self isBetaApp];
  v10 = [(DMFApplication *)self isRemoveable];
  v11 = [(DMFApplication *)self fileSharingEnabled];
  v12 = [(DMFApplication *)self progress];
  HIBYTE(v14) = v11;
  BYTE6(v14) = v10;
  BYTE5(v14) = v9;
  BYTE4(v14) = v8;
  BYTE3(v14) = v7;
  BYTE2(v14) = v6;
  BYTE1(v14) = v5;
  LOBYTE(v14) = v4;
  v28 = [v27 initWithApplicationIdentifier:v35 bundleIdentifier:v34 name:v33 iconData:v32 bundleVersion:v31 shortVersionString:v26 applicationType:v30 adamID:v29 externalVersionIdentifier:v25 betaExternalVersionIdentifier:v15 staticUsage:v24 dynamicUsage:v23 onDemandResourcesUsage:v22 unusedRedemptionCode:v21 attributes:v20 configuration:v19 feedback:v18 state:v17 managementFlags:v16 isManaged:v14 isValidated:v12 isInstalled:? isPlaceholder:? isAppUpdate:? isBetaApp:? isRemoveable:? fileSharingEnabled:? progress:?];

  return v28;
}

- (DMFApplication)initWithCoder:(id)a3
{
  v4 = a3;
  v104.receiver = self;
  v104.super_class = DMFApplication;
  v5 = [(DMFApplication *)&v104 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"name"];
    name = v5->_name;
    v5->_name = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"iconData"];
    iconData = v5->_iconData;
    v5->_iconData = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v19;

    v21 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"shortVersionString"];
    shortVersionString = v5->_shortVersionString;
    v5->_shortVersionString = v22;

    v24 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"applicationType"];
    applicationType = v5->_applicationType;
    v5->_applicationType = v25;

    v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"adamID"];
    adamID = v5->_adamID;
    v5->_adamID = v28;

    v30 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"externalVersionIdentifier"];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = v31;

    v33 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"betaExternalVersionIdentifier"];
    betaExternalVersionIdentifier = v5->_betaExternalVersionIdentifier;
    v5->_betaExternalVersionIdentifier = v34;

    v36 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"staticUsage"];
    staticUsage = v5->_staticUsage;
    v5->_staticUsage = v37;

    v39 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"dynamicUsage"];
    dynamicUsage = v5->_dynamicUsage;
    v5->_dynamicUsage = v40;

    v42 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v43 = [v4 decodeObjectOfClasses:v42 forKey:@"onDemandResourcesUsage"];
    onDemandResourcesUsage = v5->_onDemandResourcesUsage;
    v5->_onDemandResourcesUsage = v43;

    v45 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"unusedRedemptionCode"];
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
    v57 = [v4 decodeObjectOfClasses:v56 forKey:@"attributes"];
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
    v68 = [v4 decodeObjectOfClasses:v67 forKey:@"configuration"];
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
    v79 = [v4 decodeObjectOfClasses:v78 forKey:@"feedback"];
    feedback = v5->_feedback;
    v5->_feedback = v79;

    v81 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = [v81 unsignedIntegerValue];

    v82 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managementFlags"];
    v5->_managementFlags = [v82 unsignedIntegerValue];

    v83 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isManaged"];
    v5->_isManaged = [v83 BOOLValue];

    v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isValidated"];
    v5->_isValidated = [v84 BOOLValue];

    v85 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isInstalled"];
    v5->_isInstalled = [v85 BOOLValue];

    v86 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isPlaceholder"];
    v5->_isPlaceholder = [v86 BOOLValue];

    v87 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isAppUpdate"];
    v5->_isAppUpdate = [v87 BOOLValue];

    v88 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isBetaApp"];
    v5->_isBetaApp = [v88 BOOLValue];

    v89 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isRemoveable"];
    v5->_isRemoveable = [v89 BOOLValue];

    v90 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileSharingEnabled"];
    v5->_fileSharingEnabled = [v90 BOOLValue];

    v91 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v92 = [v4 decodeObjectOfClasses:v91 forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v92;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMFApplication *)self applicationIdentifier];
  [v4 encodeObject:v5 forKey:@"applicationIdentifier"];

  v6 = [(DMFApplication *)self bundleIdentifier];
  [v4 encodeObject:v6 forKey:@"bundleIdentifier"];

  v7 = [(DMFApplication *)self name];
  [v4 encodeObject:v7 forKey:@"name"];

  v8 = [(DMFApplication *)self iconData];
  [v4 encodeObject:v8 forKey:@"iconData"];

  v9 = [(DMFApplication *)self bundleVersion];
  [v4 encodeObject:v9 forKey:@"bundleVersion"];

  v10 = [(DMFApplication *)self shortVersionString];
  [v4 encodeObject:v10 forKey:@"shortVersionString"];

  v11 = [(DMFApplication *)self applicationType];
  [v4 encodeObject:v11 forKey:@"applicationType"];

  v12 = [(DMFApplication *)self adamID];
  [v4 encodeObject:v12 forKey:@"adamID"];

  v13 = [(DMFApplication *)self externalVersionIdentifier];
  [v4 encodeObject:v13 forKey:@"externalVersionIdentifier"];

  v14 = [(DMFApplication *)self betaExternalVersionIdentifier];
  [v4 encodeObject:v14 forKey:@"betaExternalVersionIdentifier"];

  v15 = [(DMFApplication *)self staticUsage];
  [v4 encodeObject:v15 forKey:@"staticUsage"];

  v16 = [(DMFApplication *)self dynamicUsage];
  [v4 encodeObject:v16 forKey:@"dynamicUsage"];

  v17 = [(DMFApplication *)self onDemandResourcesUsage];
  [v4 encodeObject:v17 forKey:@"onDemandResourcesUsage"];

  v18 = [(DMFApplication *)self unusedRedemptionCode];
  [v4 encodeObject:v18 forKey:@"unusedRedemptionCode"];

  v19 = [(DMFApplication *)self attributes];
  [v4 encodeObject:v19 forKey:@"attributes"];

  v20 = [(DMFApplication *)self configuration];
  [v4 encodeObject:v20 forKey:@"configuration"];

  v21 = [(DMFApplication *)self feedback];
  [v4 encodeObject:v21 forKey:@"feedback"];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFApplication state](self, "state")}];
  [v4 encodeObject:v22 forKey:@"state"];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFApplication managementFlags](self, "managementFlags")}];
  [v4 encodeObject:v23 forKey:@"managementFlags"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isManaged](self, "isManaged")}];
  [v4 encodeObject:v24 forKey:@"isManaged"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isValidated](self, "isValidated")}];
  [v4 encodeObject:v25 forKey:@"isValidated"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isInstalled](self, "isInstalled")}];
  [v4 encodeObject:v26 forKey:@"isInstalled"];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isPlaceholder](self, "isPlaceholder")}];
  [v4 encodeObject:v27 forKey:@"isPlaceholder"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isAppUpdate](self, "isAppUpdate")}];
  [v4 encodeObject:v28 forKey:@"isAppUpdate"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isBetaApp](self, "isBetaApp")}];
  [v4 encodeObject:v29 forKey:@"isBetaApp"];

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication isRemoveable](self, "isRemoveable")}];
  [v4 encodeObject:v30 forKey:@"isRemoveable"];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFApplication fileSharingEnabled](self, "fileSharingEnabled")}];
  [v4 encodeObject:v31 forKey:@"fileSharingEnabled"];

  v32 = [(DMFApplication *)self progress];
  [v4 encodeObject:v32 forKey:@"progress"];
}

- (unint64_t)hash
{
  v49 = [(DMFApplication *)self applicationIdentifier];
  v3 = [v49 hash];
  v48 = [(DMFApplication *)self bundleIdentifier];
  v4 = [v48 hash] ^ v3;
  v47 = [(DMFApplication *)self name];
  v5 = [v47 hash];
  v46 = [(DMFApplication *)self iconData];
  v6 = v4 ^ v5 ^ [v46 hash];
  v45 = [(DMFApplication *)self bundleVersion];
  v7 = [v45 hash];
  v44 = [(DMFApplication *)self shortVersionString];
  v8 = v7 ^ [v44 hash];
  v43 = [(DMFApplication *)self applicationType];
  v9 = v6 ^ v8 ^ [v43 hash];
  v42 = [(DMFApplication *)self adamID];
  v10 = [v42 hash];
  v41 = [(DMFApplication *)self externalVersionIdentifier];
  v11 = v10 ^ [v41 hash];
  v40 = [(DMFApplication *)self betaExternalVersionIdentifier];
  v12 = v11 ^ [v40 hash];
  v13 = [(DMFApplication *)self staticUsage];
  v14 = v9 ^ v12 ^ [v13 hash];
  v15 = [(DMFApplication *)self dynamicUsage];
  v16 = [v15 hash];
  v17 = [(DMFApplication *)self onDemandResourcesUsage];
  v18 = v16 ^ [v17 hash];
  v19 = [(DMFApplication *)self unusedRedemptionCode];
  v20 = v18 ^ [v19 hash];
  v21 = [(DMFApplication *)self attributes];
  v22 = v20 ^ [v21 hash];
  v23 = [(DMFApplication *)self configuration];
  v24 = v14 ^ v22 ^ [v23 hash];
  v25 = [(DMFApplication *)self feedback];
  v26 = [v25 hash];
  v27 = v26 ^ [(DMFApplication *)self state];
  v28 = v27 ^ [(DMFApplication *)self managementFlags];
  v29 = v28 ^ [(DMFApplication *)self isManaged];
  v30 = v29 ^ [(DMFApplication *)self isValidated];
  v31 = v24 ^ v30 ^ [(DMFApplication *)self isInstalled];
  v32 = [(DMFApplication *)self isPlaceholder];
  v33 = v32 ^ [(DMFApplication *)self isAppUpdate];
  v34 = v33 ^ [(DMFApplication *)self isBetaApp];
  v35 = v34 ^ [(DMFApplication *)self isRemoveable];
  v36 = v35 ^ [(DMFApplication *)self fileSharingEnabled];
  v37 = [(DMFApplication *)self progress];
  v38 = v36 ^ [v37 hash];

  return v31 ^ v38;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v85 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DMFApplication *)self applicationIdentifier];
      v7 = [(DMFApplication *)v5 applicationIdentifier];
      v8 = v6;
      v9 = v7;
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

      v11 = [(DMFApplication *)self bundleIdentifier];
      v12 = [(DMFApplication *)v5 bundleIdentifier];
      v13 = v11;
      v14 = v12;
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

      v16 = [(DMFApplication *)self name];
      v17 = [(DMFApplication *)v5 name];
      v18 = v16;
      v125 = v17;
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
      v20 = [(DMFApplication *)self iconData];
      v21 = [(DMFApplication *)v5 iconData];
      v22 = v20;
      v124 = v21;
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
      v24 = [(DMFApplication *)self bundleVersion];
      v25 = [(DMFApplication *)v5 bundleVersion];
      v26 = v24;
      v121 = v25;
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

      v28 = [(DMFApplication *)self shortVersionString];
      v29 = [(DMFApplication *)v5 shortVersionString];
      v30 = v28;
      v118 = v29;
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

      v32 = [(DMFApplication *)self applicationType];
      v33 = [(DMFApplication *)v5 applicationType];
      v34 = v32;
      v35 = v33;
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
      v37 = [(DMFApplication *)self adamID];
      v38 = [(DMFApplication *)v5 adamID];
      v39 = v37;
      v115 = v38;
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

      v41 = [(DMFApplication *)self externalVersionIdentifier];
      v42 = [(DMFApplication *)v5 externalVersionIdentifier];
      v43 = v41;
      v44 = v42;
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

      v47 = [(DMFApplication *)self betaExternalVersionIdentifier];
      v48 = [(DMFApplication *)v5 betaExternalVersionIdentifier];
      v49 = v47;
      v106 = v48;
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

      v51 = [(DMFApplication *)self staticUsage];
      v52 = [(DMFApplication *)v5 staticUsage];
      v53 = v51;
      v104 = v52;
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

      v55 = [(DMFApplication *)self dynamicUsage];
      v56 = [(DMFApplication *)v5 dynamicUsage];
      v57 = v55;
      v58 = v56;
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

      v61 = [(DMFApplication *)self onDemandResourcesUsage];
      v62 = [(DMFApplication *)v5 onDemandResourcesUsage];
      v63 = v61;
      v101 = v62;
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

      v65 = [(DMFApplication *)self unusedRedemptionCode];
      v66 = [(DMFApplication *)v5 unusedRedemptionCode];
      v67 = v65;
      v68 = v66;
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

      v71 = [(DMFApplication *)self attributes];
      v72 = [(DMFApplication *)v5 attributes];
      v73 = v71;
      v98 = v72;
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

      v74 = [(DMFApplication *)self configuration];
      v75 = [(DMFApplication *)v5 configuration];
      v76 = v74;
      v96 = v75;
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

      v77 = [(DMFApplication *)self feedback];
      v78 = [(DMFApplication *)v5 feedback];
      v79 = v77;
      v94 = v78;
      v95 = v79;
      if (v79 | v94)
      {
        v113 = [v79 isEqual:v94];

        if (!v113)
        {
          goto LABEL_62;
        }
      }

      v80 = [(DMFApplication *)self state];
      v35 = v110;
      if (v80 != [(DMFApplication *)v5 state]|| (v81 = [(DMFApplication *)self managementFlags], v81 != [(DMFApplication *)v5 managementFlags]) || (v82 = [(DMFApplication *)self isManaged], v82 != [(DMFApplication *)v5 isManaged]) || (v83 = [(DMFApplication *)self isValidated], v83 != [(DMFApplication *)v5 isValidated]) || (v84 = [(DMFApplication *)self isInstalled], v84 != [(DMFApplication *)v5 isInstalled]))
      {
        v85 = 0;
        v18 = v123;
LABEL_64:

        goto LABEL_65;
      }

      v86 = [(DMFApplication *)self isPlaceholder];
      if (v86 == [(DMFApplication *)v5 isPlaceholder])
      {
        v88 = [(DMFApplication *)self isAppUpdate];
        v114 = v5;
        if (v88 == [(DMFApplication *)v5 isAppUpdate]&& (v89 = [(DMFApplication *)self isBetaApp], v89 == [(DMFApplication *)v5 isBetaApp]) && (v90 = [(DMFApplication *)self isRemoveable], v90 == [(DMFApplication *)v5 isRemoveable]) && (v91 = [(DMFApplication *)self fileSharingEnabled], v91 == [(DMFApplication *)v5 fileSharingEnabled]))
        {
          v92 = [(DMFApplication *)self progress];
          v93 = [(DMFApplication *)v114 progress];
          if (v92 | v93)
          {
            v85 = [v92 isEqual:v93];
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
  v4 = [(DMFApplication *)self applicationIdentifier];
  [v3 appendFormat:@"\tApplication Identifier           : %@\n", v4];

  v5 = [(DMFApplication *)self bundleIdentifier];
  [v3 appendFormat:@"\tBundle Identifier                : %@\n", v5];

  v6 = [(DMFApplication *)self name];
  [v3 appendFormat:@"\tName                             : %@\n", v6];

  v7 = [(DMFApplication *)self adamID];
  [v3 appendFormat:@"\tAdam ID                          : %@\n", v7];

  v8 = [(DMFApplication *)self externalVersionIdentifier];
  [v3 appendFormat:@"\tExternal Version Identifier      : %@\n", v8];

  v9 = [(DMFApplication *)self betaExternalVersionIdentifier];
  [v3 appendFormat:@"\tBeta External Version Identifier : %@\n", v9];

  v10 = [(DMFApplication *)self bundleVersion];
  [v3 appendFormat:@"\tBundle Version                   : %@\n", v10];

  v11 = [(DMFApplication *)self shortVersionString];
  [v3 appendFormat:@"\tShort Version String             : %@\n", v11];

  v12 = [(DMFApplication *)self unusedRedemptionCode];
  [v3 appendFormat:@"\tUnused Redemption Code           : %@\n", v12];

  v13 = [(DMFApplication *)self attributes];
  [v3 appendFormat:@"\tAttributes                       : %@\n", v13];

  v14 = [(DMFApplication *)self configuration];
  [v3 appendFormat:@"\tConfiguration                    : %@\n", v14];

  v15 = [(DMFApplication *)self feedback];
  [v3 appendFormat:@"\tFeedback                         : %@\n", v15];

  v16 = [(DMFApplication *)self progress];
  [v3 appendFormat:@"\tProgress                         : %@\n", v16];

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