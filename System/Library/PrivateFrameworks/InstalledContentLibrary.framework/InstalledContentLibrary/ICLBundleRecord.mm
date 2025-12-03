@interface ICLBundleRecord
+ (id)bundleRecordArrayToInfoDictionaryArray:(id)array;
+ (id)infoDictionaryArrayToBundleRecordArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (ICLBundleRecord)initWithCoder:(id)coder;
- (ICLBundleRecord)initWithLegacyRecordDictionary:(id)dictionary;
- (NSDictionary)legacyRecordDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLBundleRecord

- (ICLBundleRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ICLBundleRecord *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleShortVersion"];
    bundleShortVersion = v5->_bundleShortVersion;
    v5->_bundleShortVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedPlaceholderURL"];
    serializedPlaceholderURL = v5->_serializedPlaceholderURL;
    v5->_serializedPlaceholderURL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signerIdentity"];
    signerIdentity = v5->_signerIdentity;
    v5->_signerIdentity = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signatureVersion"];
    signatureVersion = v5->_signatureVersion;
    v5->_signatureVersion = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signerOrganization"];
    signerOrganization = v5->_signerOrganization;
    v5->_signerOrganization = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"teamIdentifier"];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v22;

    v5->_codeSigningInfoNotAuthoritative = [coderCopy decodeBoolForKey:@"codeSigningInfoNotAuthoritative"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codeInfoIdentifier"];
    codeInfoIdentifier = v5->_codeInfoIdentifier;
    v5->_codeInfoIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codeSignerType"];
    v5->_codeSignerType = [v26 unsignedIntegerValue];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profileValidationType"];
    v5->_profileValidationType = [v27 unsignedIntegerValue];

    v5->_isPlaceholder = [coderCopy decodeBoolForKey:@"isPlaceholder"];
    v5->_isNoLongerCompatible = [coderCopy decodeBoolForKey:@"isNoLongerCompatible"];
    v5->_hasSettingsBundle = [coderCopy decodeBoolForKey:@"hasSettingsBundle"];
    v5->_isContainerized = [coderCopy decodeBoolForKey:@"isContainerized"];
    v5->_hasAppGroupContainers = [coderCopy decodeBoolForKey:@"hasAppGroupContainers"];
    v5->_hasSystemContainer = [coderCopy decodeBoolForKey:@"hasSystemContainer"];
    v5->_hasSystemGroupContainers = [coderCopy decodeBoolForKey:@"hasSystemGroupContainers"];
    v5->_isOnMountedDiskImage = [coderCopy decodeBoolForKey:@"isOnMountedDiskImage"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compatibilityState"];
    v5->_compatibilityState = [v28 unsignedIntegerValue];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationType"];
    v5->_applicationType = [v29 unsignedIntegerValue];

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"staticDiskUsage"];
    staticDiskUsage = v5->_staticDiskUsage;
    v5->_staticDiskUsage = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"counterpartIdentifiers"];
    counterpartIdentifiers = v5->_counterpartIdentifiers;
    v5->_counterpartIdentifiers = v35;

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = [v37 setWithObjects:{v38, v39, v40, objc_opt_class(), 0}];
    v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"entitlements"];
    entitlements = v5->_entitlements;
    v5->_entitlements = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataContainerURL"];
    dataContainerURL = v5->_dataContainerURL;
    v5->_dataContainerURL = v44;

    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
    v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"environmentVariables"];
    environmentVariables = v5->_environmentVariables;
    v5->_environmentVariables = v49;

    v51 = MEMORY[0x1E695DFD8];
    v52 = objc_opt_class();
    v53 = objc_opt_class();
    v54 = [v51 setWithObjects:{v52, v53, objc_opt_class(), 0}];
    v55 = [coderCopy decodeObjectOfClasses:v54 forKey:@"groupContainers"];
    groupContainers = v5->_groupContainers;
    v5->_groupContainers = v55;

    v57 = MEMORY[0x1E695DFD8];
    v58 = objc_opt_class();
    v59 = objc_opt_class();
    v60 = [v57 setWithObjects:{v58, v59, objc_opt_class(), 0}];
    v61 = [coderCopy decodeObjectOfClasses:v60 forKey:@"personasRecordMap"];
    personasRecordMap = v5->_personasRecordMap;
    v5->_personasRecordMap = v61;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(ICLBundleRecord *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  bundleVersion = [(ICLBundleRecord *)self bundleVersion];
  [coderCopy encodeObject:bundleVersion forKey:@"bundleVersion"];

  bundleShortVersion = [(ICLBundleRecord *)self bundleShortVersion];
  [coderCopy encodeObject:bundleShortVersion forKey:@"bundleShortVersion"];

  bundleURL = [(ICLBundleRecord *)self bundleURL];
  [coderCopy encodeObject:bundleURL forKey:@"bundleURL"];

  serializedPlaceholderURL = [(ICLBundleRecord *)self serializedPlaceholderURL];
  [coderCopy encodeObject:serializedPlaceholderURL forKey:@"serializedPlaceholderURL"];

  signerIdentity = [(ICLBundleRecord *)self signerIdentity];
  [coderCopy encodeObject:signerIdentity forKey:@"signerIdentity"];

  signatureVersion = [(ICLBundleRecord *)self signatureVersion];
  [coderCopy encodeObject:signatureVersion forKey:@"signatureVersion"];

  signerOrganization = [(ICLBundleRecord *)self signerOrganization];
  [coderCopy encodeObject:signerOrganization forKey:@"signerOrganization"];

  teamIdentifier = [(ICLBundleRecord *)self teamIdentifier];
  [coderCopy encodeObject:teamIdentifier forKey:@"teamIdentifier"];

  [coderCopy encodeBool:-[ICLBundleRecord codeSigningInfoNotAuthoritative](self forKey:{"codeSigningInfoNotAuthoritative"), @"codeSigningInfoNotAuthoritative"}];
  codeInfoIdentifier = [(ICLBundleRecord *)self codeInfoIdentifier];
  [coderCopy encodeObject:codeInfoIdentifier forKey:@"codeInfoIdentifier"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICLBundleRecord codeSignerType](self, "codeSignerType")}];
  [coderCopy encodeObject:v15 forKey:@"codeSignerType"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICLBundleRecord profileValidationType](self, "profileValidationType")}];
  [coderCopy encodeObject:v16 forKey:@"profileValidationType"];

  [coderCopy encodeBool:-[ICLBundleRecord isPlaceholder](self forKey:{"isPlaceholder"), @"isPlaceholder"}];
  [coderCopy encodeBool:-[ICLBundleRecord isNoLongerCompatible](self forKey:{"isNoLongerCompatible"), @"isNoLongerCompatible"}];
  [coderCopy encodeBool:-[ICLBundleRecord hasSettingsBundle](self forKey:{"hasSettingsBundle"), @"hasSettingsBundle"}];
  [coderCopy encodeBool:-[ICLBundleRecord isContainerized](self forKey:{"isContainerized"), @"isContainerized"}];
  [coderCopy encodeBool:-[ICLBundleRecord hasAppGroupContainers](self forKey:{"hasAppGroupContainers"), @"hasAppGroupContainers"}];
  [coderCopy encodeBool:-[ICLBundleRecord hasSystemContainer](self forKey:{"hasSystemContainer"), @"hasSystemContainer"}];
  [coderCopy encodeBool:-[ICLBundleRecord hasSystemGroupContainers](self forKey:{"hasSystemGroupContainers"), @"hasSystemGroupContainers"}];
  [coderCopy encodeBool:-[ICLBundleRecord isOnMountedDiskImage](self forKey:{"isOnMountedDiskImage"), @"isOnMountedDiskImage"}];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICLBundleRecord compatibilityState](self, "compatibilityState")}];
  [coderCopy encodeObject:v17 forKey:@"compatibilityState"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICLBundleRecord applicationType](self, "applicationType")}];
  [coderCopy encodeObject:v18 forKey:@"applicationType"];

  staticDiskUsage = [(ICLBundleRecord *)self staticDiskUsage];
  [coderCopy encodeObject:staticDiskUsage forKey:@"staticDiskUsage"];

  counterpartIdentifiers = [(ICLBundleRecord *)self counterpartIdentifiers];
  [coderCopy encodeObject:counterpartIdentifiers forKey:@"counterpartIdentifiers"];

  entitlements = [(ICLBundleRecord *)self entitlements];
  [coderCopy encodeObject:entitlements forKey:@"entitlements"];

  dataContainerURL = [(ICLBundleRecord *)self dataContainerURL];
  [coderCopy encodeObject:dataContainerURL forKey:@"dataContainerURL"];

  environmentVariables = [(ICLBundleRecord *)self environmentVariables];
  [coderCopy encodeObject:environmentVariables forKey:@"environmentVariables"];

  groupContainers = [(ICLBundleRecord *)self groupContainers];
  [coderCopy encodeObject:groupContainers forKey:@"groupContainers"];

  personasRecordMap = [(ICLBundleRecord *)self personasRecordMap];
  [coderCopy encodeObject:personasRecordMap forKey:@"personasRecordMap"];
}

- (ICLBundleRecord)initWithLegacyRecordDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(ICLBundleRecord *)self init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
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
    v9 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E695E500]];
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
    v12 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E695E148]];
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
    v15 = [dictionaryCopy objectForKeyedSubscript:@"Path"];
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
    v19 = [dictionaryCopy objectForKeyedSubscript:@"SerializedPlaceholderPath"];
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
    v23 = [dictionaryCopy objectForKeyedSubscript:@"SignerIdentity"];
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
    v26 = [dictionaryCopy objectForKeyedSubscript:@"SignatureVersion"];
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
    v29 = [dictionaryCopy objectForKeyedSubscript:@"SignerOrganization"];
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
    v32 = [dictionaryCopy objectForKeyedSubscript:@"TeamIdentifier"];
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
    v35 = [dictionaryCopy objectForKeyedSubscript:@"CodeSigningInfoNotAuthoritative"];
    [(ICLBundleRecord *)v5 setCodeSigningInfoNotAuthoritative:MIBooleanValue(v35, 0)];

    v36 = [dictionaryCopy objectForKeyedSubscript:@"CodeInfoIdentifier"];
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
    v39 = [dictionaryCopy objectForKeyedSubscript:@"ProfileValidated"];
    v40 = MIBooleanValue(v39, 0);

    if (v40)
    {
      v41 = 3;
    }

    else
    {
      v42 = [dictionaryCopy objectForKeyedSubscript:@"IsAdHocSigned"];
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
    v44 = [dictionaryCopy objectForKeyedSubscript:@"UPPValidated"];
    v45 = MIBooleanValue(v44, 0);

    if (v45)
    {
      v46 = 2;
    }

    else
    {
      v47 = [dictionaryCopy objectForKeyedSubscript:@"FreeProfileValidated"];
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
    v49 = [dictionaryCopy objectForKeyedSubscript:@"IsPlaceholder"];
    [(ICLBundleRecord *)v5 setIsPlaceholder:MIBooleanValue(v49, 0)];

    v50 = [dictionaryCopy objectForKeyedSubscript:@"IsNoLongerCompatible"];
    [(ICLBundleRecord *)v5 setIsNoLongerCompatible:MIBooleanValue(v50, 0)];

    v51 = [dictionaryCopy objectForKeyedSubscript:@"HasSettingsBundle"];
    [(ICLBundleRecord *)v5 setHasSettingsBundle:MIBooleanValue(v51, 0)];

    v52 = [dictionaryCopy objectForKeyedSubscript:@"IsContainerized"];
    [(ICLBundleRecord *)v5 setIsContainerized:MIBooleanValue(v52, 0)];

    v53 = [dictionaryCopy objectForKeyedSubscript:@"HasAppGroupContainers"];
    [(ICLBundleRecord *)v5 setHasAppGroupContainers:MIBooleanValue(v53, 0)];

    v54 = [dictionaryCopy objectForKeyedSubscript:@"HasSystemContainer"];
    [(ICLBundleRecord *)v5 setHasSystemContainer:MIBooleanValue(v54, 0)];

    v55 = [dictionaryCopy objectForKeyedSubscript:@"HasSystemGroupContainers"];
    [(ICLBundleRecord *)v5 setHasSystemGroupContainers:MIBooleanValue(v55, 0)];

    v56 = [dictionaryCopy objectForKeyedSubscript:@"IsOnMountedDiskImage"];
    [(ICLBundleRecord *)v5 setIsOnMountedDiskImage:MIBooleanValue(v56, 0)];

    v57 = [dictionaryCopy objectForKeyedSubscript:@"CompatibilityState"];
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
    v60 = [dictionaryCopy objectForKeyedSubscript:@"ApplicationType"];
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
    v62 = [dictionaryCopy objectForKeyedSubscript:@"StaticDiskUsage"];
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
    v65 = [dictionaryCopy objectForKeyedSubscript:@"LSCounterpartIdentifiers"];
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

    v68 = [dictionaryCopy objectForKeyedSubscript:@"Entitlements"];
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

    v72 = [dictionaryCopy objectForKeyedSubscript:@"Container"];
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

    v76 = [dictionaryCopy objectForKeyedSubscript:@"EnvironmentVariables"];
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

    v81 = [dictionaryCopy objectForKeyedSubscript:@"GroupContainers"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  bundleIdentifier = [(ICLBundleRecord *)self bundleIdentifier];
  v7 = [bundleIdentifier copyWithZone:zone];
  [v5 setBundleIdentifier:v7];

  bundleVersion = [(ICLBundleRecord *)self bundleVersion];
  v9 = [bundleVersion copyWithZone:zone];
  [v5 setBundleVersion:v9];

  bundleShortVersion = [(ICLBundleRecord *)self bundleShortVersion];
  v11 = [bundleShortVersion copyWithZone:zone];
  [v5 setBundleShortVersion:v11];

  bundleURL = [(ICLBundleRecord *)self bundleURL];
  v13 = [bundleURL copyWithZone:zone];
  [v5 setBundleURL:v13];

  serializedPlaceholderURL = [(ICLBundleRecord *)self serializedPlaceholderURL];
  v15 = [serializedPlaceholderURL copyWithZone:zone];
  [v5 setSerializedPlaceholderURL:v15];

  signerIdentity = [(ICLBundleRecord *)self signerIdentity];
  v17 = [signerIdentity copyWithZone:zone];
  [v5 setSignerIdentity:v17];

  signatureVersion = [(ICLBundleRecord *)self signatureVersion];
  v19 = [signatureVersion copyWithZone:zone];
  [v5 setSignatureVersion:v19];

  signerOrganization = [(ICLBundleRecord *)self signerOrganization];
  v21 = [signerOrganization copyWithZone:zone];
  [v5 setSignerOrganization:v21];

  teamIdentifier = [(ICLBundleRecord *)self teamIdentifier];
  v23 = [teamIdentifier copyWithZone:zone];
  [v5 setTeamIdentifier:v23];

  [v5 setCodeSigningInfoNotAuthoritative:{-[ICLBundleRecord codeSigningInfoNotAuthoritative](self, "codeSigningInfoNotAuthoritative")}];
  codeInfoIdentifier = [(ICLBundleRecord *)self codeInfoIdentifier];
  v25 = [codeInfoIdentifier copyWithZone:zone];
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
  staticDiskUsage = [(ICLBundleRecord *)self staticDiskUsage];
  v27 = [staticDiskUsage copyWithZone:zone];
  [v5 setStaticDiskUsage:v27];

  counterpartIdentifiers = [(ICLBundleRecord *)self counterpartIdentifiers];
  v29 = [counterpartIdentifiers copyWithZone:zone];
  [v5 setCounterpartIdentifiers:v29];

  entitlements = [(ICLBundleRecord *)self entitlements];
  v31 = [entitlements copyWithZone:zone];
  [v5 setEntitlements:v31];

  dataContainerURL = [(ICLBundleRecord *)self dataContainerURL];
  v33 = [dataContainerURL copyWithZone:zone];
  [v5 setDataContainerURL:v33];

  environmentVariables = [(ICLBundleRecord *)self environmentVariables];
  v35 = [environmentVariables copyWithZone:zone];
  [v5 setEnvironmentVariables:v35];

  groupContainers = [(ICLBundleRecord *)self groupContainers];
  v37 = [groupContainers copyWithZone:zone];
  [v5 setGroupContainers:v37];

  personasRecordMap = [(ICLBundleRecord *)self personasRecordMap];
  v39 = [personasRecordMap copyWithZone:zone];
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

  bundleIdentifier = [(ICLBundleRecord *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    [v3 setObject:bundleIdentifier forKeyedSubscript:*MEMORY[0x1E695E4F0]];
  }

  bundleVersion = [(ICLBundleRecord *)self bundleVersion];
  if (bundleVersion)
  {
    [v3 setObject:bundleVersion forKeyedSubscript:*MEMORY[0x1E695E500]];
  }

  bundleShortVersion = [(ICLBundleRecord *)self bundleShortVersion];
  if (bundleShortVersion)
  {
    [v3 setObject:bundleShortVersion forKeyedSubscript:*MEMORY[0x1E695E148]];
  }

  bundleURL = [(ICLBundleRecord *)self bundleURL];
  path = [bundleURL path];

  if (path)
  {
    [v3 setObject:path forKeyedSubscript:@"Path"];
  }

  serializedPlaceholderURL = [(ICLBundleRecord *)self serializedPlaceholderURL];
  path2 = [serializedPlaceholderURL path];

  if (path2)
  {
    [v3 setObject:path2 forKeyedSubscript:@"SerializedPlaceholderPath"];
  }

  signerIdentity = [(ICLBundleRecord *)self signerIdentity];
  if (signerIdentity)
  {
    [v3 setObject:signerIdentity forKeyedSubscript:@"SignerIdentity"];
  }

  signatureVersion = [(ICLBundleRecord *)self signatureVersion];
  if (signatureVersion)
  {
    [v3 setObject:signatureVersion forKeyedSubscript:@"SignatureVersion"];
  }

  signerOrganization = [(ICLBundleRecord *)self signerOrganization];
  if (signerOrganization)
  {
    [v3 setObject:signerOrganization forKeyedSubscript:@"SignerOrganization"];
  }

  teamIdentifier = [(ICLBundleRecord *)self teamIdentifier];
  if (teamIdentifier)
  {
    [v3 setObject:teamIdentifier forKeyedSubscript:@"TeamIdentifier"];
  }

  codeSigningInfoNotAuthoritative = [(ICLBundleRecord *)self codeSigningInfoNotAuthoritative];
  v17 = MEMORY[0x1E695E110];
  v18 = MEMORY[0x1E695E118];
  if (codeSigningInfoNotAuthoritative)
  {
    v19 = MEMORY[0x1E695E118];
  }

  else
  {
    v19 = MEMORY[0x1E695E110];
  }

  [v3 setObject:v19 forKeyedSubscript:@"CodeSigningInfoNotAuthoritative"];
  codeInfoIdentifier = [(ICLBundleRecord *)self codeInfoIdentifier];
  if (codeInfoIdentifier)
  {
    [v3 setObject:codeInfoIdentifier forKeyedSubscript:@"CodeInfoIdentifier"];
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

  staticDiskUsage = [(ICLBundleRecord *)self staticDiskUsage];
  if (staticDiskUsage)
  {
    [v3 setObject:staticDiskUsage forKeyedSubscript:@"StaticDiskUsage"];
  }

  counterpartIdentifiers = [(ICLBundleRecord *)self counterpartIdentifiers];
  [v3 setObject:counterpartIdentifiers forKeyedSubscript:@"LSCounterpartIdentifiers"];

  entitlements = [(ICLBundleRecord *)self entitlements];
  if (entitlements)
  {
    [v3 setObject:entitlements forKeyedSubscript:@"Entitlements"];
  }

  dataContainerURL = [(ICLBundleRecord *)self dataContainerURL];
  path3 = [dataContainerURL path];

  if (path3)
  {
    [v3 setObject:path3 forKeyedSubscript:@"Container"];
  }

  environmentVariables = [(ICLBundleRecord *)self environmentVariables];
  if (environmentVariables)
  {
    [v3 setObject:environmentVariables forKeyedSubscript:@"EnvironmentVariables"];
  }

  groupContainers = [(ICLBundleRecord *)self groupContainers];
  if (groupContainers)
  {
    v41 = objc_opt_new();
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __41__ICLBundleRecord_legacyRecordDictionary__block_invoke;
    v46[3] = &unk_1E7AE1DB8;
    v42 = v41;
    v47 = v42;
    [groupContainers enumerateKeysAndObjectsUsingBlock:v46];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v34 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      bundleIdentifier = [(ICLBundleRecord *)self bundleIdentifier];
      bundleIdentifier2 = [(ICLBundleRecord *)v5 bundleIdentifier];
      v8 = MICompareObjects(bundleIdentifier, bundleIdentifier2);

      if (v8)
      {
        bundleVersion = [(ICLBundleRecord *)self bundleVersion];
        bundleVersion2 = [(ICLBundleRecord *)v5 bundleVersion];
        v11 = MICompareObjects(bundleVersion, bundleVersion2);

        if (v11)
        {
          bundleShortVersion = [(ICLBundleRecord *)self bundleShortVersion];
          bundleShortVersion2 = [(ICLBundleRecord *)v5 bundleShortVersion];
          v14 = MICompareObjects(bundleShortVersion, bundleShortVersion2);

          if (v14)
          {
            bundleURL = [(ICLBundleRecord *)self bundleURL];
            bundleURL2 = [(ICLBundleRecord *)v5 bundleURL];
            v17 = MICompareObjects(bundleURL, bundleURL2);

            if (v17)
            {
              serializedPlaceholderURL = [(ICLBundleRecord *)self serializedPlaceholderURL];
              serializedPlaceholderURL2 = [(ICLBundleRecord *)v5 serializedPlaceholderURL];
              v20 = MICompareObjects(serializedPlaceholderURL, serializedPlaceholderURL2);

              if (v20)
              {
                signerIdentity = [(ICLBundleRecord *)self signerIdentity];
                signerIdentity2 = [(ICLBundleRecord *)v5 signerIdentity];
                v23 = MICompareObjects(signerIdentity, signerIdentity2);

                if (v23)
                {
                  signatureVersion = [(ICLBundleRecord *)self signatureVersion];
                  signatureVersion2 = [(ICLBundleRecord *)v5 signatureVersion];
                  v26 = MICompareObjects(signatureVersion, signatureVersion2);

                  if (v26)
                  {
                    signerOrganization = [(ICLBundleRecord *)self signerOrganization];
                    signerOrganization2 = [(ICLBundleRecord *)v5 signerOrganization];
                    v29 = MICompareObjects(signerOrganization, signerOrganization2);

                    if (v29)
                    {
                      teamIdentifier = [(ICLBundleRecord *)self teamIdentifier];
                      teamIdentifier2 = [(ICLBundleRecord *)v5 teamIdentifier];
                      v32 = MICompareObjects(teamIdentifier, teamIdentifier2);

                      if (v32)
                      {
                        codeSigningInfoNotAuthoritative = [(ICLBundleRecord *)self codeSigningInfoNotAuthoritative];
                        if (codeSigningInfoNotAuthoritative == [(ICLBundleRecord *)v5 codeSigningInfoNotAuthoritative])
                        {
                          codeInfoIdentifier = [(ICLBundleRecord *)self codeInfoIdentifier];
                          codeInfoIdentifier2 = [(ICLBundleRecord *)v5 codeInfoIdentifier];
                          v38 = MICompareObjects(codeInfoIdentifier, codeInfoIdentifier2);

                          if (v38)
                          {
                            codeSignerType = [(ICLBundleRecord *)self codeSignerType];
                            if (codeSignerType == [(ICLBundleRecord *)v5 codeSignerType])
                            {
                              profileValidationType = [(ICLBundleRecord *)self profileValidationType];
                              if (profileValidationType == [(ICLBundleRecord *)v5 profileValidationType])
                              {
                                isPlaceholder = [(ICLBundleRecord *)self isPlaceholder];
                                if (isPlaceholder == [(ICLBundleRecord *)v5 isPlaceholder])
                                {
                                  isNoLongerCompatible = [(ICLBundleRecord *)self isNoLongerCompatible];
                                  if (isNoLongerCompatible == [(ICLBundleRecord *)v5 isNoLongerCompatible])
                                  {
                                    hasSettingsBundle = [(ICLBundleRecord *)self hasSettingsBundle];
                                    if (hasSettingsBundle == [(ICLBundleRecord *)v5 hasSettingsBundle])
                                    {
                                      isContainerized = [(ICLBundleRecord *)self isContainerized];
                                      if (isContainerized == [(ICLBundleRecord *)v5 isContainerized])
                                      {
                                        hasAppGroupContainers = [(ICLBundleRecord *)self hasAppGroupContainers];
                                        if (hasAppGroupContainers == [(ICLBundleRecord *)v5 hasAppGroupContainers])
                                        {
                                          hasSystemContainer = [(ICLBundleRecord *)self hasSystemContainer];
                                          if (hasSystemContainer == [(ICLBundleRecord *)v5 hasSystemContainer])
                                          {
                                            hasSystemGroupContainers = [(ICLBundleRecord *)self hasSystemGroupContainers];
                                            if (hasSystemGroupContainers == [(ICLBundleRecord *)v5 hasSystemGroupContainers])
                                            {
                                              isOnMountedDiskImage = [(ICLBundleRecord *)self isOnMountedDiskImage];
                                              if (isOnMountedDiskImage == [(ICLBundleRecord *)v5 isOnMountedDiskImage])
                                              {
                                                compatibilityState = [(ICLBundleRecord *)self compatibilityState];
                                                if (compatibilityState == [(ICLBundleRecord *)v5 compatibilityState])
                                                {
                                                  applicationType = [(ICLBundleRecord *)self applicationType];
                                                  if (applicationType == [(ICLBundleRecord *)v5 applicationType])
                                                  {
                                                    staticDiskUsage = [(ICLBundleRecord *)self staticDiskUsage];
                                                    staticDiskUsage2 = [(ICLBundleRecord *)v5 staticDiskUsage];
                                                    v53 = MICompareObjects(staticDiskUsage, staticDiskUsage2);

                                                    if (v53)
                                                    {
                                                      counterpartIdentifiers = [(ICLBundleRecord *)self counterpartIdentifiers];
                                                      counterpartIdentifiers2 = [(ICLBundleRecord *)v5 counterpartIdentifiers];
                                                      v56 = MICompareObjects(counterpartIdentifiers, counterpartIdentifiers2);

                                                      if (v56)
                                                      {
                                                        entitlements = [(ICLBundleRecord *)self entitlements];
                                                        entitlements2 = [(ICLBundleRecord *)v5 entitlements];
                                                        v59 = MICompareObjects(entitlements, entitlements2);

                                                        if (v59)
                                                        {
                                                          dataContainerURL = [(ICLBundleRecord *)self dataContainerURL];
                                                          dataContainerURL2 = [(ICLBundleRecord *)v5 dataContainerURL];
                                                          v62 = MICompareObjects(dataContainerURL, dataContainerURL2);

                                                          if (v62)
                                                          {
                                                            environmentVariables = [(ICLBundleRecord *)self environmentVariables];
                                                            environmentVariables2 = [(ICLBundleRecord *)v5 environmentVariables];
                                                            v65 = MICompareObjects(environmentVariables, environmentVariables2);

                                                            if (v65)
                                                            {
                                                              groupContainers = [(ICLBundleRecord *)self groupContainers];
                                                              groupContainers2 = [(ICLBundleRecord *)v5 groupContainers];
                                                              v68 = MICompareObjects(groupContainers, groupContainers2);

                                                              if (v68)
                                                              {
                                                                personasRecordMap = [(ICLBundleRecord *)self personasRecordMap];
                                                                personasRecordMap2 = [(ICLBundleRecord *)v5 personasRecordMap];
                                                                v71 = MICompareObjects(personasRecordMap, personasRecordMap2);

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
  codeSigningInfoNotAuthoritative = [(ICLBundleRecord *)self codeSigningInfoNotAuthoritative];
  isPlaceholder = [(ICLBundleRecord *)self isPlaceholder];
  v5 = 2;
  if (!isPlaceholder)
  {
    v5 = 0;
  }

  v6 = v5 | codeSigningInfoNotAuthoritative;
  if ([(ICLBundleRecord *)self isNoLongerCompatible])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  hasSettingsBundle = [(ICLBundleRecord *)self hasSettingsBundle];
  v9 = 8;
  if (!hasSettingsBundle)
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

  hasAppGroupContainers = [(ICLBundleRecord *)self hasAppGroupContainers];
  v13 = 32;
  if (!hasAppGroupContainers)
  {
    v13 = 0;
  }

  v14 = v11 | v13;
  hasSystemContainer = [(ICLBundleRecord *)self hasSystemContainer];
  v16 = 64;
  if (!hasSystemContainer)
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

  isOnMountedDiskImage = [(ICLBundleRecord *)self isOnMountedDiskImage];
  v20 = 256;
  if (!isOnMountedDiskImage)
  {
    v20 = 0;
  }

  v21 = v18 ^ v20;
  bundleIdentifier = [(ICLBundleRecord *)self bundleIdentifier];
  v23 = v21 ^ [bundleIdentifier hash];

  bundleVersion = [(ICLBundleRecord *)self bundleVersion];
  v25 = v17 ^ v23 ^ [bundleVersion hash];

  bundleShortVersion = [(ICLBundleRecord *)self bundleShortVersion];
  v27 = [bundleShortVersion hash];

  bundleURL = [(ICLBundleRecord *)self bundleURL];
  v29 = v27 ^ [bundleURL hash];

  serializedPlaceholderURL = [(ICLBundleRecord *)self serializedPlaceholderURL];
  v31 = v29 ^ [serializedPlaceholderURL hash];

  signerIdentity = [(ICLBundleRecord *)self signerIdentity];
  v33 = v31 ^ [signerIdentity hash];

  signatureVersion = [(ICLBundleRecord *)self signatureVersion];
  v35 = v33 ^ [signatureVersion hash];

  signerOrganization = [(ICLBundleRecord *)self signerOrganization];
  v37 = v25 ^ v35 ^ [signerOrganization hash];

  teamIdentifier = [(ICLBundleRecord *)self teamIdentifier];
  v39 = [teamIdentifier hash];

  codeInfoIdentifier = [(ICLBundleRecord *)self codeInfoIdentifier];
  v41 = v39 ^ [codeInfoIdentifier hash];

  staticDiskUsage = [(ICLBundleRecord *)self staticDiskUsage];
  v43 = v41 ^ [staticDiskUsage hash];

  counterpartIdentifiers = [(ICLBundleRecord *)self counterpartIdentifiers];
  v45 = v43 ^ [counterpartIdentifiers hash];

  entitlements = [(ICLBundleRecord *)self entitlements];
  v47 = v45 ^ [entitlements hash];

  dataContainerURL = [(ICLBundleRecord *)self dataContainerURL];
  v49 = v47 ^ [dataContainerURL hash];

  environmentVariables = [(ICLBundleRecord *)self environmentVariables];
  v51 = v37 ^ v49 ^ [environmentVariables hash];

  groupContainers = [(ICLBundleRecord *)self groupContainers];
  v53 = [groupContainers hash];

  personasRecordMap = [(ICLBundleRecord *)self personasRecordMap];
  v55 = v53 ^ [personasRecordMap hash];

  v56 = v55 ^ [(ICLBundleRecord *)self codeSignerType];
  v57 = v56 ^ [(ICLBundleRecord *)self profileValidationType];
  v58 = v57 ^ [(ICLBundleRecord *)self compatibilityState];
  return v51 ^ v58 ^ [(ICLBundleRecord *)self applicationType];
}

- (id)description
{
  legacyRecordDictionary = [(ICLBundleRecord *)self legacyRecordDictionary];
  v3 = [legacyRecordDictionary description];

  return v3;
}

+ (id)bundleRecordArrayToInfoDictionaryArray:(id)array
{
  v18 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if (arrayCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = arrayCopy;
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

          legacyRecordDictionary = [*(*(&v13 + 1) + 8 * i) legacyRecordDictionary];
          [v4 addObject:legacyRecordDictionary];
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

+ (id)infoDictionaryArrayToBundleRecordArray:(id)array
{
  v20 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if (arrayCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = arrayCopy;
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