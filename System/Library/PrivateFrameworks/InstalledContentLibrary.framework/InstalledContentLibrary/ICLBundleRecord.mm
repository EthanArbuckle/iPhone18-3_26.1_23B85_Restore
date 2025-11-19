@interface ICLBundleRecord
+ (id)bundleRecordArrayToInfoDictionaryArray:(id)a3;
+ (id)infoDictionaryArrayToBundleRecordArray:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICLBundleRecord)initWithCoder:(id)a3;
- (ICLBundleRecord)initWithLegacyRecordDictionary:(id)a3;
- (NSDictionary)legacyRecordDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICLBundleRecord

- (ICLBundleRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICLBundleRecord *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleShortVersion"];
    bundleShortVersion = v5->_bundleShortVersion;
    v5->_bundleShortVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serializedPlaceholderURL"];
    serializedPlaceholderURL = v5->_serializedPlaceholderURL;
    v5->_serializedPlaceholderURL = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signerIdentity"];
    signerIdentity = v5->_signerIdentity;
    v5->_signerIdentity = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signatureVersion"];
    signatureVersion = v5->_signatureVersion;
    v5->_signatureVersion = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signerOrganization"];
    signerOrganization = v5->_signerOrganization;
    v5->_signerOrganization = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"teamIdentifier"];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v22;

    v5->_codeSigningInfoNotAuthoritative = [v4 decodeBoolForKey:@"codeSigningInfoNotAuthoritative"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codeInfoIdentifier"];
    codeInfoIdentifier = v5->_codeInfoIdentifier;
    v5->_codeInfoIdentifier = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codeSignerType"];
    v5->_codeSignerType = [v26 unsignedIntegerValue];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profileValidationType"];
    v5->_profileValidationType = [v27 unsignedIntegerValue];

    v5->_isPlaceholder = [v4 decodeBoolForKey:@"isPlaceholder"];
    v5->_isNoLongerCompatible = [v4 decodeBoolForKey:@"isNoLongerCompatible"];
    v5->_hasSettingsBundle = [v4 decodeBoolForKey:@"hasSettingsBundle"];
    v5->_isContainerized = [v4 decodeBoolForKey:@"isContainerized"];
    v5->_hasAppGroupContainers = [v4 decodeBoolForKey:@"hasAppGroupContainers"];
    v5->_hasSystemContainer = [v4 decodeBoolForKey:@"hasSystemContainer"];
    v5->_hasSystemGroupContainers = [v4 decodeBoolForKey:@"hasSystemGroupContainers"];
    v5->_isOnMountedDiskImage = [v4 decodeBoolForKey:@"isOnMountedDiskImage"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compatibilityState"];
    v5->_compatibilityState = [v28 unsignedIntegerValue];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationType"];
    v5->_applicationType = [v29 unsignedIntegerValue];

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"staticDiskUsage"];
    staticDiskUsage = v5->_staticDiskUsage;
    v5->_staticDiskUsage = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"counterpartIdentifiers"];
    counterpartIdentifiers = v5->_counterpartIdentifiers;
    v5->_counterpartIdentifiers = v35;

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = [v37 setWithObjects:{v38, v39, v40, objc_opt_class(), 0}];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"entitlements"];
    entitlements = v5->_entitlements;
    v5->_entitlements = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataContainerURL"];
    dataContainerURL = v5->_dataContainerURL;
    v5->_dataContainerURL = v44;

    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
    v49 = [v4 decodeObjectOfClasses:v48 forKey:@"environmentVariables"];
    environmentVariables = v5->_environmentVariables;
    v5->_environmentVariables = v49;

    v51 = MEMORY[0x1E695DFD8];
    v52 = objc_opt_class();
    v53 = objc_opt_class();
    v54 = [v51 setWithObjects:{v52, v53, objc_opt_class(), 0}];
    v55 = [v4 decodeObjectOfClasses:v54 forKey:@"groupContainers"];
    groupContainers = v5->_groupContainers;
    v5->_groupContainers = v55;

    v57 = MEMORY[0x1E695DFD8];
    v58 = objc_opt_class();
    v59 = objc_opt_class();
    v60 = [v57 setWithObjects:{v58, v59, objc_opt_class(), 0}];
    v61 = [v4 decodeObjectOfClasses:v60 forKey:@"personasRecordMap"];
    personasRecordMap = v5->_personasRecordMap;
    v5->_personasRecordMap = v61;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICLBundleRecord *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(ICLBundleRecord *)self bundleVersion];
  [v4 encodeObject:v6 forKey:@"bundleVersion"];

  v7 = [(ICLBundleRecord *)self bundleShortVersion];
  [v4 encodeObject:v7 forKey:@"bundleShortVersion"];

  v8 = [(ICLBundleRecord *)self bundleURL];
  [v4 encodeObject:v8 forKey:@"bundleURL"];

  v9 = [(ICLBundleRecord *)self serializedPlaceholderURL];
  [v4 encodeObject:v9 forKey:@"serializedPlaceholderURL"];

  v10 = [(ICLBundleRecord *)self signerIdentity];
  [v4 encodeObject:v10 forKey:@"signerIdentity"];

  v11 = [(ICLBundleRecord *)self signatureVersion];
  [v4 encodeObject:v11 forKey:@"signatureVersion"];

  v12 = [(ICLBundleRecord *)self signerOrganization];
  [v4 encodeObject:v12 forKey:@"signerOrganization"];

  v13 = [(ICLBundleRecord *)self teamIdentifier];
  [v4 encodeObject:v13 forKey:@"teamIdentifier"];

  [v4 encodeBool:-[ICLBundleRecord codeSigningInfoNotAuthoritative](self forKey:{"codeSigningInfoNotAuthoritative"), @"codeSigningInfoNotAuthoritative"}];
  v14 = [(ICLBundleRecord *)self codeInfoIdentifier];
  [v4 encodeObject:v14 forKey:@"codeInfoIdentifier"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICLBundleRecord codeSignerType](self, "codeSignerType")}];
  [v4 encodeObject:v15 forKey:@"codeSignerType"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICLBundleRecord profileValidationType](self, "profileValidationType")}];
  [v4 encodeObject:v16 forKey:@"profileValidationType"];

  [v4 encodeBool:-[ICLBundleRecord isPlaceholder](self forKey:{"isPlaceholder"), @"isPlaceholder"}];
  [v4 encodeBool:-[ICLBundleRecord isNoLongerCompatible](self forKey:{"isNoLongerCompatible"), @"isNoLongerCompatible"}];
  [v4 encodeBool:-[ICLBundleRecord hasSettingsBundle](self forKey:{"hasSettingsBundle"), @"hasSettingsBundle"}];
  [v4 encodeBool:-[ICLBundleRecord isContainerized](self forKey:{"isContainerized"), @"isContainerized"}];
  [v4 encodeBool:-[ICLBundleRecord hasAppGroupContainers](self forKey:{"hasAppGroupContainers"), @"hasAppGroupContainers"}];
  [v4 encodeBool:-[ICLBundleRecord hasSystemContainer](self forKey:{"hasSystemContainer"), @"hasSystemContainer"}];
  [v4 encodeBool:-[ICLBundleRecord hasSystemGroupContainers](self forKey:{"hasSystemGroupContainers"), @"hasSystemGroupContainers"}];
  [v4 encodeBool:-[ICLBundleRecord isOnMountedDiskImage](self forKey:{"isOnMountedDiskImage"), @"isOnMountedDiskImage"}];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICLBundleRecord compatibilityState](self, "compatibilityState")}];
  [v4 encodeObject:v17 forKey:@"compatibilityState"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICLBundleRecord applicationType](self, "applicationType")}];
  [v4 encodeObject:v18 forKey:@"applicationType"];

  v19 = [(ICLBundleRecord *)self staticDiskUsage];
  [v4 encodeObject:v19 forKey:@"staticDiskUsage"];

  v20 = [(ICLBundleRecord *)self counterpartIdentifiers];
  [v4 encodeObject:v20 forKey:@"counterpartIdentifiers"];

  v21 = [(ICLBundleRecord *)self entitlements];
  [v4 encodeObject:v21 forKey:@"entitlements"];

  v22 = [(ICLBundleRecord *)self dataContainerURL];
  [v4 encodeObject:v22 forKey:@"dataContainerURL"];

  v23 = [(ICLBundleRecord *)self environmentVariables];
  [v4 encodeObject:v23 forKey:@"environmentVariables"];

  v24 = [(ICLBundleRecord *)self groupContainers];
  [v4 encodeObject:v24 forKey:@"groupContainers"];

  v25 = [(ICLBundleRecord *)self personasRecordMap];
  [v4 encodeObject:v25 forKey:@"personasRecordMap"];
}

- (ICLBundleRecord)initWithLegacyRecordDictionary:(id)a3
{
  v4 = a3;
  v5 = [(ICLBundleRecord *)self init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    [(ICLBundleRecord *)v5 setBundleIdentifier:v8];
    v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695E500]];
    objc_opt_class();
    v10 = v9;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    [(ICLBundleRecord *)v5 setBundleVersion:v11];
    v12 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695E148]];
    objc_opt_class();
    v13 = v12;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    [(ICLBundleRecord *)v5 setBundleShortVersion:v14];
    v15 = [v4 objectForKeyedSubscript:@"Path"];
    objc_opt_class();
    v16 = v15;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:v17 isDirectory:1];
      [(ICLBundleRecord *)v5 setBundleURL:v18];
    }

    v92 = v17;
    v19 = [v4 objectForKeyedSubscript:@"SerializedPlaceholderPath"];
    objc_opt_class();
    v20 = v19;
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21 isDirectory:0];
      [(ICLBundleRecord *)v5 setSerializedPlaceholderURL:v22];
    }

    v91 = v21;
    v23 = [v4 objectForKeyedSubscript:@"SignerIdentity"];
    objc_opt_class();
    v24 = v23;
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    [(ICLBundleRecord *)v5 setSignerIdentity:v25];
    v26 = [v4 objectForKeyedSubscript:@"SignatureVersion"];
    objc_opt_class();
    v27 = v26;
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    [(ICLBundleRecord *)v5 setSignatureVersion:v28];
    v29 = [v4 objectForKeyedSubscript:@"SignerOrganization"];
    objc_opt_class();
    v30 = v29;
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    [(ICLBundleRecord *)v5 setSignerOrganization:v31];
    v32 = [v4 objectForKeyedSubscript:@"TeamIdentifier"];
    objc_opt_class();
    v33 = v32;
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    [(ICLBundleRecord *)v5 setTeamIdentifier:v34];
    v35 = [v4 objectForKeyedSubscript:@"CodeSigningInfoNotAuthoritative"];
    [(ICLBundleRecord *)v5 setCodeSigningInfoNotAuthoritative:MIBooleanValue(v35, 0)];

    v36 = [v4 objectForKeyedSubscript:@"CodeInfoIdentifier"];
    objc_opt_class();
    v37 = v36;
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    [(ICLBundleRecord *)v5 setCodeInfoIdentifier:v38];
    v39 = [v4 objectForKeyedSubscript:@"ProfileValidated"];
    v40 = MIBooleanValue(v39, 0);

    if (v40)
    {
      v41 = 3;
    }

    else
    {
      v42 = [v4 objectForKeyedSubscript:@"IsAdHocSigned"];
      v43 = MIBooleanValue(v42, 0);

      if (v43)
      {
        v41 = 1;
      }

      else if ([(ICLBundleRecord *)v5 isPlaceholder])
      {
        v41 = 6;
      }

      else
      {
        v41 = 2;
      }
    }

    [(ICLBundleRecord *)v5 setCodeSignerType:v41];
    v44 = [v4 objectForKeyedSubscript:@"UPPValidated"];
    v45 = MIBooleanValue(v44, 0);

    if (v45)
    {
      v46 = 2;
    }

    else
    {
      v47 = [v4 objectForKeyedSubscript:@"FreeProfileValidated"];
      v48 = MIBooleanValue(v47, 0);

      if (v48)
      {
        v46 = 3;
      }

      else
      {
        v46 = 1;
      }
    }

    [(ICLBundleRecord *)v5 setProfileValidationType:v46];
    v49 = [v4 objectForKeyedSubscript:@"IsPlaceholder"];
    [(ICLBundleRecord *)v5 setIsPlaceholder:MIBooleanValue(v49, 0)];

    v50 = [v4 objectForKeyedSubscript:@"IsNoLongerCompatible"];
    [(ICLBundleRecord *)v5 setIsNoLongerCompatible:MIBooleanValue(v50, 0)];

    v51 = [v4 objectForKeyedSubscript:@"HasSettingsBundle"];
    [(ICLBundleRecord *)v5 setHasSettingsBundle:MIBooleanValue(v51, 0)];

    v52 = [v4 objectForKeyedSubscript:@"IsContainerized"];
    [(ICLBundleRecord *)v5 setIsContainerized:MIBooleanValue(v52, 0)];

    v53 = [v4 objectForKeyedSubscript:@"HasAppGroupContainers"];
    [(ICLBundleRecord *)v5 setHasAppGroupContainers:MIBooleanValue(v53, 0)];

    v54 = [v4 objectForKeyedSubscript:@"HasSystemContainer"];
    [(ICLBundleRecord *)v5 setHasSystemContainer:MIBooleanValue(v54, 0)];

    v55 = [v4 objectForKeyedSubscript:@"HasSystemGroupContainers"];
    [(ICLBundleRecord *)v5 setHasSystemGroupContainers:MIBooleanValue(v55, 0)];

    v56 = [v4 objectForKeyedSubscript:@"IsOnMountedDiskImage"];
    [(ICLBundleRecord *)v5 setIsOnMountedDiskImage:MIBooleanValue(v56, 0)];

    v57 = [v4 objectForKeyedSubscript:@"CompatibilityState"];
    objc_opt_class();
    v58 = v57;
    if (objc_opt_isKindOfClass())
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    -[ICLBundleRecord setCompatibilityState:](v5, "setCompatibilityState:", [v59 unsignedIntegerValue]);
    v60 = [v4 objectForKeyedSubscript:@"ApplicationType"];
    if ([v60 isEqualToString:@"Any"])
    {
      v61 = 6;
    }

    else if ([v60 isEqualToString:@"CoreServices"])
    {
      v61 = 1;
    }

    else if ([v60 isEqualToString:@"System"])
    {
      v61 = 2;
    }

    else if ([v60 isEqualToString:@"SystemAppPlaceholder"])
    {
      v61 = 3;
    }

    else if ([v60 isEqualToString:@"User"])
    {
      v61 = 4;
    }

    else if ([v60 isEqualToString:@"Internal"])
    {
      v61 = 5;
    }

    else
    {
      v61 = 0;
    }

    [(ICLBundleRecord *)v5 setApplicationType:v61];
    v62 = [v4 objectForKeyedSubscript:@"StaticDiskUsage"];
    objc_opt_class();
    v63 = v62;
    if (objc_opt_isKindOfClass())
    {
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    [(ICLBundleRecord *)v5 setStaticDiskUsage:v64];
    v65 = [v4 objectForKeyedSubscript:@"LSCounterpartIdentifiers"];
    objc_opt_class();
    v66 = v65;
    if (objc_opt_isKindOfClass())
    {
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    if (v67)
    {
      objc_opt_class();
      if (MIArrayContainsOnlyClass(v67))
      {
        [(ICLBundleRecord *)v5 setCounterpartIdentifiers:v67];
      }
    }

    v68 = [v4 objectForKeyedSubscript:@"Entitlements"];
    objc_opt_class();
    v69 = v68;
    if (objc_opt_isKindOfClass())
    {
      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    if (v70)
    {
      v71 = objc_opt_class();
      if (MIDictionaryContainsOnlyClasses(v70, v71, 0))
      {
        [(ICLBundleRecord *)v5 setEntitlements:v70];
      }
    }

    v72 = [v4 objectForKeyedSubscript:@"Container"];
    objc_opt_class();
    v73 = v72;
    if (objc_opt_isKindOfClass())
    {
      v74 = v73;
    }

    else
    {
      v74 = 0;
    }

    if (v74)
    {
      v75 = [MEMORY[0x1E695DFF8] fileURLWithPath:v74 isDirectory:1];
      [(ICLBundleRecord *)v5 setDataContainerURL:v75];
    }

    v76 = [v4 objectForKeyedSubscript:@"EnvironmentVariables"];
    objc_opt_class();
    v77 = v76;
    if (objc_opt_isKindOfClass())
    {
      v78 = v77;
    }

    else
    {
      v78 = 0;
    }

    if (v78)
    {
      v79 = objc_opt_class();
      v80 = objc_opt_class();
      if (MIDictionaryContainsOnlyClasses(v78, v79, v80))
      {
        [(ICLBundleRecord *)v5 setEnvironmentVariables:v78];
      }
    }

    v81 = [v4 objectForKeyedSubscript:@"GroupContainers"];
    objc_opt_class();
    v82 = v81;
    if (objc_opt_isKindOfClass())
    {
      v83 = v82;
    }

    else
    {
      v83 = 0;
    }

    if (v83)
    {
      v84 = objc_opt_class();
      v85 = objc_opt_class();
      if (MIDictionaryContainsOnlyClasses(v83, v84, v85))
      {
        v86 = objc_opt_new();
        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = __50__ICLBundleRecord_initWithLegacyRecordDictionary___block_invoke;
        v93[3] = &unk_1E7AE1D90;
        v94 = v86;
        v87 = v86;
        [v83 enumerateKeysAndObjectsUsingBlock:v93];
        v88 = [v87 copy];
        [(ICLBundleRecord *)v5 setGroupContainers:v88];
      }
    }
  }

  v89 = v5;

  return v89;
}

void __50__ICLBundleRecord_initWithLegacyRecordDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695DFF8];
  v6 = a2;
  v7 = [v5 fileURLWithPath:a3 isDirectory:1];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ICLBundleRecord *)self bundleIdentifier];
  v7 = [v6 copyWithZone:a3];
  [v5 setBundleIdentifier:v7];

  v8 = [(ICLBundleRecord *)self bundleVersion];
  v9 = [v8 copyWithZone:a3];
  [v5 setBundleVersion:v9];

  v10 = [(ICLBundleRecord *)self bundleShortVersion];
  v11 = [v10 copyWithZone:a3];
  [v5 setBundleShortVersion:v11];

  v12 = [(ICLBundleRecord *)self bundleURL];
  v13 = [v12 copyWithZone:a3];
  [v5 setBundleURL:v13];

  v14 = [(ICLBundleRecord *)self serializedPlaceholderURL];
  v15 = [v14 copyWithZone:a3];
  [v5 setSerializedPlaceholderURL:v15];

  v16 = [(ICLBundleRecord *)self signerIdentity];
  v17 = [v16 copyWithZone:a3];
  [v5 setSignerIdentity:v17];

  v18 = [(ICLBundleRecord *)self signatureVersion];
  v19 = [v18 copyWithZone:a3];
  [v5 setSignatureVersion:v19];

  v20 = [(ICLBundleRecord *)self signerOrganization];
  v21 = [v20 copyWithZone:a3];
  [v5 setSignerOrganization:v21];

  v22 = [(ICLBundleRecord *)self teamIdentifier];
  v23 = [v22 copyWithZone:a3];
  [v5 setTeamIdentifier:v23];

  [v5 setCodeSigningInfoNotAuthoritative:{-[ICLBundleRecord codeSigningInfoNotAuthoritative](self, "codeSigningInfoNotAuthoritative")}];
  v24 = [(ICLBundleRecord *)self codeInfoIdentifier];
  v25 = [v24 copyWithZone:a3];
  [v5 setCodeInfoIdentifier:v25];

  [v5 setCodeSignerType:{-[ICLBundleRecord codeSignerType](self, "codeSignerType")}];
  [v5 setProfileValidationType:{-[ICLBundleRecord profileValidationType](self, "profileValidationType")}];
  [v5 setIsPlaceholder:{-[ICLBundleRecord isPlaceholder](self, "isPlaceholder")}];
  [v5 setIsNoLongerCompatible:{-[ICLBundleRecord isNoLongerCompatible](self, "isNoLongerCompatible")}];
  [v5 setHasSettingsBundle:{-[ICLBundleRecord hasSettingsBundle](self, "hasSettingsBundle")}];
  [v5 setIsContainerized:{-[ICLBundleRecord isContainerized](self, "isContainerized")}];
  [v5 setHasAppGroupContainers:{-[ICLBundleRecord hasAppGroupContainers](self, "hasAppGroupContainers")}];
  [v5 setHasSystemContainer:{-[ICLBundleRecord hasSystemContainer](self, "hasSystemContainer")}];
  [v5 setHasSystemGroupContainers:{-[ICLBundleRecord hasSystemGroupContainers](self, "hasSystemGroupContainers")}];
  [v5 setIsOnMountedDiskImage:{-[ICLBundleRecord isOnMountedDiskImage](self, "isOnMountedDiskImage")}];
  [v5 setCompatibilityState:{-[ICLBundleRecord compatibilityState](self, "compatibilityState")}];
  [v5 setApplicationType:{-[ICLBundleRecord applicationType](self, "applicationType")}];
  v26 = [(ICLBundleRecord *)self staticDiskUsage];
  v27 = [v26 copyWithZone:a3];
  [v5 setStaticDiskUsage:v27];

  v28 = [(ICLBundleRecord *)self counterpartIdentifiers];
  v29 = [v28 copyWithZone:a3];
  [v5 setCounterpartIdentifiers:v29];

  v30 = [(ICLBundleRecord *)self entitlements];
  v31 = [v30 copyWithZone:a3];
  [v5 setEntitlements:v31];

  v32 = [(ICLBundleRecord *)self dataContainerURL];
  v33 = [v32 copyWithZone:a3];
  [v5 setDataContainerURL:v33];

  v34 = [(ICLBundleRecord *)self environmentVariables];
  v35 = [v34 copyWithZone:a3];
  [v5 setEnvironmentVariables:v35];

  v36 = [(ICLBundleRecord *)self groupContainers];
  v37 = [v36 copyWithZone:a3];
  [v5 setGroupContainers:v37];

  v38 = [(ICLBundleRecord *)self personasRecordMap];
  v39 = [v38 copyWithZone:a3];
  [v5 setPersonasRecordMap:v39];

  return v5;
}

- (NSDictionary)legacyRecordDictionary
{
  v3 = objc_opt_new();
  v4 = [(ICLBundleRecord *)self applicationType]- 1;
  if (v4 <= 5)
  {
    [v3 setObject:off_1E7AE1DD8[v4] forKeyedSubscript:@"ApplicationType"];
  }

  v5 = [(ICLBundleRecord *)self bundleIdentifier];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E695E4F0]];
  }

  v6 = [(ICLBundleRecord *)self bundleVersion];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E695E500]];
  }

  v7 = [(ICLBundleRecord *)self bundleShortVersion];
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E695E148]];
  }

  v8 = [(ICLBundleRecord *)self bundleURL];
  v9 = [v8 path];

  if (v9)
  {
    [v3 setObject:v9 forKeyedSubscript:@"Path"];
  }

  v10 = [(ICLBundleRecord *)self serializedPlaceholderURL];
  v11 = [v10 path];

  if (v11)
  {
    [v3 setObject:v11 forKeyedSubscript:@"SerializedPlaceholderPath"];
  }

  v12 = [(ICLBundleRecord *)self signerIdentity];
  if (v12)
  {
    [v3 setObject:v12 forKeyedSubscript:@"SignerIdentity"];
  }

  v13 = [(ICLBundleRecord *)self signatureVersion];
  if (v13)
  {
    [v3 setObject:v13 forKeyedSubscript:@"SignatureVersion"];
  }

  v14 = [(ICLBundleRecord *)self signerOrganization];
  if (v14)
  {
    [v3 setObject:v14 forKeyedSubscript:@"SignerOrganization"];
  }

  v15 = [(ICLBundleRecord *)self teamIdentifier];
  if (v15)
  {
    [v3 setObject:v15 forKeyedSubscript:@"TeamIdentifier"];
  }

  v16 = [(ICLBundleRecord *)self codeSigningInfoNotAuthoritative];
  v17 = MEMORY[0x1E695E110];
  v18 = MEMORY[0x1E695E118];
  if (v16)
  {
    v19 = MEMORY[0x1E695E118];
  }

  else
  {
    v19 = MEMORY[0x1E695E110];
  }

  [v3 setObject:v19 forKeyedSubscript:@"CodeSigningInfoNotAuthoritative"];
  v20 = [(ICLBundleRecord *)self codeInfoIdentifier];
  if (v20)
  {
    [v3 setObject:v20 forKeyedSubscript:@"CodeInfoIdentifier"];
  }

  if ([(ICLBundleRecord *)self codeSignerType]== 3)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  [v3 setObject:v21 forKeyedSubscript:@"ProfileValidated"];
  if ([(ICLBundleRecord *)self profileValidationType]== 2)
  {
    v22 = v18;
  }

  else
  {
    v22 = v17;
  }

  [v3 setObject:v22 forKeyedSubscript:@"UPPValidated"];
  if ([(ICLBundleRecord *)self profileValidationType]== 3)
  {
    v23 = v18;
  }

  else
  {
    v23 = v17;
  }

  [v3 setObject:v23 forKeyedSubscript:@"FreeProfileValidated"];
  if ([(ICLBundleRecord *)self codeSignerType]== 1)
  {
    v24 = v18;
  }

  else
  {
    v24 = v17;
  }

  [v3 setObject:v24 forKeyedSubscript:@"IsAdHocSigned"];
  if ([(ICLBundleRecord *)self isPlaceholder])
  {
    v25 = v18;
  }

  else
  {
    v25 = v17;
  }

  [v3 setObject:v25 forKeyedSubscript:@"IsPlaceholder"];
  if ([(ICLBundleRecord *)self isNoLongerCompatible])
  {
    v26 = v18;
  }

  else
  {
    v26 = v17;
  }

  [v3 setObject:v26 forKeyedSubscript:@"IsNoLongerCompatible"];
  if ([(ICLBundleRecord *)self hasSettingsBundle])
  {
    v27 = v18;
  }

  else
  {
    v27 = v17;
  }

  [v3 setObject:v27 forKeyedSubscript:@"HasSettingsBundle"];
  if ([(ICLBundleRecord *)self isContainerized])
  {
    v28 = v18;
  }

  else
  {
    v28 = v17;
  }

  [v3 setObject:v28 forKeyedSubscript:@"IsContainerized"];
  if ([(ICLBundleRecord *)self hasAppGroupContainers])
  {
    v29 = v18;
  }

  else
  {
    v29 = v17;
  }

  [v3 setObject:v29 forKeyedSubscript:@"HasAppGroupContainers"];
  if ([(ICLBundleRecord *)self hasSystemContainer])
  {
    v30 = v18;
  }

  else
  {
    v30 = v17;
  }

  [v3 setObject:v30 forKeyedSubscript:@"HasSystemContainer"];
  if ([(ICLBundleRecord *)self hasSystemGroupContainers])
  {
    v31 = v18;
  }

  else
  {
    v31 = v17;
  }

  [v3 setObject:v31 forKeyedSubscript:@"HasSystemGroupContainers"];
  if ([(ICLBundleRecord *)self isOnMountedDiskImage])
  {
    v32 = v18;
  }

  else
  {
    v32 = v17;
  }

  [v3 setObject:v32 forKeyedSubscript:@"IsOnMountedDiskImage"];
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICLBundleRecord compatibilityState](self, "compatibilityState")}];
  if (v33)
  {
    [v3 setObject:v33 forKeyedSubscript:@"CompatibilityState"];
  }

  v34 = [(ICLBundleRecord *)self staticDiskUsage];
  if (v34)
  {
    [v3 setObject:v34 forKeyedSubscript:@"StaticDiskUsage"];
  }

  v35 = [(ICLBundleRecord *)self counterpartIdentifiers];
  [v3 setObject:v35 forKeyedSubscript:@"LSCounterpartIdentifiers"];

  v36 = [(ICLBundleRecord *)self entitlements];
  if (v36)
  {
    [v3 setObject:v36 forKeyedSubscript:@"Entitlements"];
  }

  v37 = [(ICLBundleRecord *)self dataContainerURL];
  v38 = [v37 path];

  if (v38)
  {
    [v3 setObject:v38 forKeyedSubscript:@"Container"];
  }

  v39 = [(ICLBundleRecord *)self environmentVariables];
  if (v39)
  {
    [v3 setObject:v39 forKeyedSubscript:@"EnvironmentVariables"];
  }

  v40 = [(ICLBundleRecord *)self groupContainers];
  if (v40)
  {
    v41 = objc_opt_new();
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __41__ICLBundleRecord_legacyRecordDictionary__block_invoke;
    v46[3] = &unk_1E7AE1DB8;
    v42 = v41;
    v47 = v42;
    [v40 enumerateKeysAndObjectsUsingBlock:v46];
    v43 = [v42 copy];
    if (v43)
    {
      [v3 setObject:v43 forKeyedSubscript:@"GroupContainers"];
    }
  }

  v44 = [v3 copy];

  return v44;
}

void __41__ICLBundleRecord_legacyRecordDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 path];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v34 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ICLBundleRecord *)self bundleIdentifier];
      v7 = [(ICLBundleRecord *)v5 bundleIdentifier];
      v8 = MICompareObjects(v6, v7);

      if (v8)
      {
        v9 = [(ICLBundleRecord *)self bundleVersion];
        v10 = [(ICLBundleRecord *)v5 bundleVersion];
        v11 = MICompareObjects(v9, v10);

        if (v11)
        {
          v12 = [(ICLBundleRecord *)self bundleShortVersion];
          v13 = [(ICLBundleRecord *)v5 bundleShortVersion];
          v14 = MICompareObjects(v12, v13);

          if (v14)
          {
            v15 = [(ICLBundleRecord *)self bundleURL];
            v16 = [(ICLBundleRecord *)v5 bundleURL];
            v17 = MICompareObjects(v15, v16);

            if (v17)
            {
              v18 = [(ICLBundleRecord *)self serializedPlaceholderURL];
              v19 = [(ICLBundleRecord *)v5 serializedPlaceholderURL];
              v20 = MICompareObjects(v18, v19);

              if (v20)
              {
                v21 = [(ICLBundleRecord *)self signerIdentity];
                v22 = [(ICLBundleRecord *)v5 signerIdentity];
                v23 = MICompareObjects(v21, v22);

                if (v23)
                {
                  v24 = [(ICLBundleRecord *)self signatureVersion];
                  v25 = [(ICLBundleRecord *)v5 signatureVersion];
                  v26 = MICompareObjects(v24, v25);

                  if (v26)
                  {
                    v27 = [(ICLBundleRecord *)self signerOrganization];
                    v28 = [(ICLBundleRecord *)v5 signerOrganization];
                    v29 = MICompareObjects(v27, v28);

                    if (v29)
                    {
                      v30 = [(ICLBundleRecord *)self teamIdentifier];
                      v31 = [(ICLBundleRecord *)v5 teamIdentifier];
                      v32 = MICompareObjects(v30, v31);

                      if (v32)
                      {
                        v33 = [(ICLBundleRecord *)self codeSigningInfoNotAuthoritative];
                        if (v33 == [(ICLBundleRecord *)v5 codeSigningInfoNotAuthoritative])
                        {
                          v36 = [(ICLBundleRecord *)self codeInfoIdentifier];
                          v37 = [(ICLBundleRecord *)v5 codeInfoIdentifier];
                          v38 = MICompareObjects(v36, v37);

                          if (v38)
                          {
                            v39 = [(ICLBundleRecord *)self codeSignerType];
                            if (v39 == [(ICLBundleRecord *)v5 codeSignerType])
                            {
                              v40 = [(ICLBundleRecord *)self profileValidationType];
                              if (v40 == [(ICLBundleRecord *)v5 profileValidationType])
                              {
                                v41 = [(ICLBundleRecord *)self isPlaceholder];
                                if (v41 == [(ICLBundleRecord *)v5 isPlaceholder])
                                {
                                  v42 = [(ICLBundleRecord *)self isNoLongerCompatible];
                                  if (v42 == [(ICLBundleRecord *)v5 isNoLongerCompatible])
                                  {
                                    v43 = [(ICLBundleRecord *)self hasSettingsBundle];
                                    if (v43 == [(ICLBundleRecord *)v5 hasSettingsBundle])
                                    {
                                      v44 = [(ICLBundleRecord *)self isContainerized];
                                      if (v44 == [(ICLBundleRecord *)v5 isContainerized])
                                      {
                                        v45 = [(ICLBundleRecord *)self hasAppGroupContainers];
                                        if (v45 == [(ICLBundleRecord *)v5 hasAppGroupContainers])
                                        {
                                          v46 = [(ICLBundleRecord *)self hasSystemContainer];
                                          if (v46 == [(ICLBundleRecord *)v5 hasSystemContainer])
                                          {
                                            v47 = [(ICLBundleRecord *)self hasSystemGroupContainers];
                                            if (v47 == [(ICLBundleRecord *)v5 hasSystemGroupContainers])
                                            {
                                              v48 = [(ICLBundleRecord *)self isOnMountedDiskImage];
                                              if (v48 == [(ICLBundleRecord *)v5 isOnMountedDiskImage])
                                              {
                                                v49 = [(ICLBundleRecord *)self compatibilityState];
                                                if (v49 == [(ICLBundleRecord *)v5 compatibilityState])
                                                {
                                                  v50 = [(ICLBundleRecord *)self applicationType];
                                                  if (v50 == [(ICLBundleRecord *)v5 applicationType])
                                                  {
                                                    v51 = [(ICLBundleRecord *)self staticDiskUsage];
                                                    v52 = [(ICLBundleRecord *)v5 staticDiskUsage];
                                                    v53 = MICompareObjects(v51, v52);

                                                    if (v53)
                                                    {
                                                      v54 = [(ICLBundleRecord *)self counterpartIdentifiers];
                                                      v55 = [(ICLBundleRecord *)v5 counterpartIdentifiers];
                                                      v56 = MICompareObjects(v54, v55);

                                                      if (v56)
                                                      {
                                                        v57 = [(ICLBundleRecord *)self entitlements];
                                                        v58 = [(ICLBundleRecord *)v5 entitlements];
                                                        v59 = MICompareObjects(v57, v58);

                                                        if (v59)
                                                        {
                                                          v60 = [(ICLBundleRecord *)self dataContainerURL];
                                                          v61 = [(ICLBundleRecord *)v5 dataContainerURL];
                                                          v62 = MICompareObjects(v60, v61);

                                                          if (v62)
                                                          {
                                                            v63 = [(ICLBundleRecord *)self environmentVariables];
                                                            v64 = [(ICLBundleRecord *)v5 environmentVariables];
                                                            v65 = MICompareObjects(v63, v64);

                                                            if (v65)
                                                            {
                                                              v66 = [(ICLBundleRecord *)self groupContainers];
                                                              v67 = [(ICLBundleRecord *)v5 groupContainers];
                                                              v68 = MICompareObjects(v66, v67);

                                                              if (v68)
                                                              {
                                                                v69 = [(ICLBundleRecord *)self personasRecordMap];
                                                                v70 = [(ICLBundleRecord *)v5 personasRecordMap];
                                                                v71 = MICompareObjects(v69, v70);

                                                                if (v71)
                                                                {
                                                                  v34 = 1;
                                                                  goto LABEL_46;
                                                                }

                                                                if (gLogHandle && *(gLogHandle + 44) < 3)
                                                                {
LABEL_45:
                                                                  v34 = 0;
LABEL_46:

                                                                  goto LABEL_47;
                                                                }
                                                              }

                                                              else if (gLogHandle && *(gLogHandle + 44) < 3)
                                                              {
                                                                goto LABEL_45;
                                                              }
                                                            }

                                                            else if (gLogHandle && *(gLogHandle + 44) < 3)
                                                            {
                                                              goto LABEL_45;
                                                            }
                                                          }

                                                          else if (gLogHandle && *(gLogHandle + 44) < 3)
                                                          {
                                                            goto LABEL_45;
                                                          }
                                                        }

                                                        else if (gLogHandle && *(gLogHandle + 44) < 3)
                                                        {
                                                          goto LABEL_45;
                                                        }
                                                      }

                                                      else if (gLogHandle && *(gLogHandle + 44) < 3)
                                                      {
                                                        goto LABEL_45;
                                                      }
                                                    }

                                                    else if (gLogHandle && *(gLogHandle + 44) < 3)
                                                    {
                                                      goto LABEL_45;
                                                    }
                                                  }

                                                  else if (gLogHandle && *(gLogHandle + 44) < 3)
                                                  {
                                                    goto LABEL_45;
                                                  }
                                                }

                                                else if (gLogHandle && *(gLogHandle + 44) < 3)
                                                {
                                                  goto LABEL_45;
                                                }
                                              }

                                              else if (gLogHandle && *(gLogHandle + 44) < 3)
                                              {
                                                goto LABEL_45;
                                              }
                                            }

                                            else if (gLogHandle && *(gLogHandle + 44) < 3)
                                            {
                                              goto LABEL_45;
                                            }
                                          }

                                          else if (gLogHandle && *(gLogHandle + 44) < 3)
                                          {
                                            goto LABEL_45;
                                          }
                                        }

                                        else if (gLogHandle && *(gLogHandle + 44) < 3)
                                        {
                                          goto LABEL_45;
                                        }
                                      }

                                      else if (gLogHandle && *(gLogHandle + 44) < 3)
                                      {
                                        goto LABEL_45;
                                      }
                                    }

                                    else if (gLogHandle && *(gLogHandle + 44) < 3)
                                    {
                                      goto LABEL_45;
                                    }
                                  }

                                  else if (gLogHandle && *(gLogHandle + 44) < 3)
                                  {
                                    goto LABEL_45;
                                  }
                                }

                                else if (gLogHandle && *(gLogHandle + 44) < 3)
                                {
                                  goto LABEL_45;
                                }
                              }

                              else if (gLogHandle && *(gLogHandle + 44) < 3)
                              {
                                goto LABEL_45;
                              }
                            }

                            else if (gLogHandle && *(gLogHandle + 44) < 3)
                            {
                              goto LABEL_45;
                            }
                          }

                          else if (gLogHandle && *(gLogHandle + 44) < 3)
                          {
                            goto LABEL_45;
                          }
                        }

                        else if (gLogHandle && *(gLogHandle + 44) < 3)
                        {
                          goto LABEL_45;
                        }
                      }

                      else if (gLogHandle && *(gLogHandle + 44) < 3)
                      {
                        goto LABEL_45;
                      }
                    }

                    else if (gLogHandle && *(gLogHandle + 44) < 3)
                    {
                      goto LABEL_45;
                    }
                  }

                  else if (gLogHandle && *(gLogHandle + 44) < 3)
                  {
                    goto LABEL_45;
                  }
                }

                else if (gLogHandle && *(gLogHandle + 44) < 3)
                {
                  goto LABEL_45;
                }
              }

              else if (gLogHandle && *(gLogHandle + 44) < 3)
              {
                goto LABEL_45;
              }
            }

            else if (gLogHandle && *(gLogHandle + 44) < 3)
            {
              goto LABEL_45;
            }
          }

          else if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_45;
          }
        }

        else if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_45;
        }
      }

      else if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_45;
      }

      MOLogWrite();
      goto LABEL_45;
    }

    v34 = 0;
  }

LABEL_47:

  return v34;
}

- (unint64_t)hash
{
  v3 = [(ICLBundleRecord *)self codeSigningInfoNotAuthoritative];
  v4 = [(ICLBundleRecord *)self isPlaceholder];
  v5 = 2;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  if ([(ICLBundleRecord *)self isNoLongerCompatible])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(ICLBundleRecord *)self hasSettingsBundle];
  v9 = 8;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = v6 | v7 | v9;
  if ([(ICLBundleRecord *)self isContainerized])
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(ICLBundleRecord *)self hasAppGroupContainers];
  v13 = 32;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = v11 | v13;
  v15 = [(ICLBundleRecord *)self hasSystemContainer];
  v16 = 64;
  if (!v15)
  {
    v16 = 0;
  }

  v17 = v10 | v14 | v16;
  if ([(ICLBundleRecord *)self hasSystemGroupContainers])
  {
    v18 = 128;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(ICLBundleRecord *)self isOnMountedDiskImage];
  v20 = 256;
  if (!v19)
  {
    v20 = 0;
  }

  v21 = v18 ^ v20;
  v22 = [(ICLBundleRecord *)self bundleIdentifier];
  v23 = v21 ^ [v22 hash];

  v24 = [(ICLBundleRecord *)self bundleVersion];
  v25 = v17 ^ v23 ^ [v24 hash];

  v26 = [(ICLBundleRecord *)self bundleShortVersion];
  v27 = [v26 hash];

  v28 = [(ICLBundleRecord *)self bundleURL];
  v29 = v27 ^ [v28 hash];

  v30 = [(ICLBundleRecord *)self serializedPlaceholderURL];
  v31 = v29 ^ [v30 hash];

  v32 = [(ICLBundleRecord *)self signerIdentity];
  v33 = v31 ^ [v32 hash];

  v34 = [(ICLBundleRecord *)self signatureVersion];
  v35 = v33 ^ [v34 hash];

  v36 = [(ICLBundleRecord *)self signerOrganization];
  v37 = v25 ^ v35 ^ [v36 hash];

  v38 = [(ICLBundleRecord *)self teamIdentifier];
  v39 = [v38 hash];

  v40 = [(ICLBundleRecord *)self codeInfoIdentifier];
  v41 = v39 ^ [v40 hash];

  v42 = [(ICLBundleRecord *)self staticDiskUsage];
  v43 = v41 ^ [v42 hash];

  v44 = [(ICLBundleRecord *)self counterpartIdentifiers];
  v45 = v43 ^ [v44 hash];

  v46 = [(ICLBundleRecord *)self entitlements];
  v47 = v45 ^ [v46 hash];

  v48 = [(ICLBundleRecord *)self dataContainerURL];
  v49 = v47 ^ [v48 hash];

  v50 = [(ICLBundleRecord *)self environmentVariables];
  v51 = v37 ^ v49 ^ [v50 hash];

  v52 = [(ICLBundleRecord *)self groupContainers];
  v53 = [v52 hash];

  v54 = [(ICLBundleRecord *)self personasRecordMap];
  v55 = v53 ^ [v54 hash];

  v56 = v55 ^ [(ICLBundleRecord *)self codeSignerType];
  v57 = v56 ^ [(ICLBundleRecord *)self profileValidationType];
  v58 = v57 ^ [(ICLBundleRecord *)self compatibilityState];
  return v51 ^ v58 ^ [(ICLBundleRecord *)self applicationType];
}

- (id)description
{
  v2 = [(ICLBundleRecord *)self legacyRecordDictionary];
  v3 = [v2 description];

  return v3;
}

+ (id)bundleRecordArrayToInfoDictionaryArray:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) legacyRecordDictionary];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)infoDictionaryArrayToBundleRecordArray:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [ICLBundleRecord alloc];
          v12 = [(ICLBundleRecord *)v11 initWithLegacyRecordDictionary:v10, v15];
          [v4 addObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v13 = [v4 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end