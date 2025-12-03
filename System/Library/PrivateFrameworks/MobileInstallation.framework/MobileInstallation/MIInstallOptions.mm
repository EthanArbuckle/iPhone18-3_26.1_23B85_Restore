@interface MIInstallOptions
- (BOOL)isEqual:(id)equal;
- (MIInstallOptions)initWithCoder:(id)coder;
- (MIInstallOptions)initWithLegacyOptionsDictionary:(id)dictionary;
- (NSDictionary)legacyOptionsDictionary;
- (NSString)installTypeSummaryString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setInstallationRequestorAuditToken:(id *)token;
@end

@implementation MIInstallOptions

- (MIInstallOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MIInstallOptions *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installTargetType"];
    v5->_installTargetType = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v5->_developerInstall = [coderCopy decodeBoolForKey:@"developerInstall"];
    v5->_systemAppInstall = [coderCopy decodeBoolForKey:@"systemAppInstall"];
    v5->_userInitiated = [coderCopy decodeBoolForKey:@"userInitiated"];
    v5->_waitForDeletion = [coderCopy decodeBoolForKey:@"waitForDeletion"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lsInstallType"];
    v5->_lsInstallType = [v9 unsignedIntegerValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iTunesMetadata"];
    iTunesMetadata = v5->_iTunesMetadata;
    v5->_iTunesMetadata = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sinfData"];
    sinfData = v5->_sinfData;
    v5->_sinfData = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sinfDataType"];
    v5->_sinfDataType = [v14 unsignedIntegerValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iTunesArtworkData"];
    iTunesArtworkData = v5->_iTunesArtworkData;
    v5->_iTunesArtworkData = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoJSONData"];
    geoJSONData = v5->_geoJSONData;
    v5->_geoJSONData = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"provisioningProfiles"];
    provisioningProfiles = v5->_provisioningProfiles;
    v5->_provisioningProfiles = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alternateIconName"];
    alternateIconName = v5->_alternateIconName;
    v5->_alternateIconName = v24;

    v5->_skipWatchAppInstall = [coderCopy decodeBoolForKey:@"skipWatchAppInstall"];
    v5->_allowLocalProvisioned = [coderCopy decodeBoolForKey:@"allowLocalProvisioned"];
    v5->_performAPFSClone = [coderCopy decodeBoolForKey:@"performAPFSClone"];
    v5->_provisioningProfileInstallFailureIsFatal = [coderCopy decodeBoolForKey:@"provisioningProfileInstallFailureIsFatal"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoInstallOverride"];
    v5->_autoInstallOverride = [v26 unsignedIntegerValue];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkedParentBundleID"];
    linkedParentBundleID = v5->_linkedParentBundleID;
    v5->_linkedParentBundleID = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stashMode"];
    v5->_stashMode = [v29 unsignedIntegerValue];

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
    personaUniqueString = v5->_personaUniqueString;
    v5->_personaUniqueString = v30;

    v5->_preservePlaceholderAsParallel = [coderCopy decodeBoolForKey:@"preservePlaceholderAsParallel"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installIntent"];
    v5->_installIntent = [v32 unsignedIntegerValue];

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installationRequestorAuditToken"];
    v34 = v33;
    if (v33 && [v33 length] == 32)
    {
      -[MIInstallOptions setInstallationRequestorAuditToken:](v5, "setInstallationRequestorAuditToken:", [v34 bytes]);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIInstallOptions installTargetType](self, "installTargetType")}];
  [coderCopy encodeObject:v4 forKey:@"installTargetType"];

  bundleIdentifier = [(MIInstallOptions *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  [coderCopy encodeBool:-[MIInstallOptions isDeveloperInstall](self forKey:{"isDeveloperInstall"), @"developerInstall"}];
  [coderCopy encodeBool:-[MIInstallOptions isSystemAppInstall](self forKey:{"isSystemAppInstall"), @"systemAppInstall"}];
  [coderCopy encodeBool:-[MIInstallOptions isUserInitiated](self forKey:{"isUserInitiated"), @"userInitiated"}];
  [coderCopy encodeBool:-[MIInstallOptions waitForDeletion](self forKey:{"waitForDeletion"), @"waitForDeletion"}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIInstallOptions lsInstallType](self, "lsInstallType")}];
  [coderCopy encodeObject:v6 forKey:@"lsInstallType"];

  iTunesMetadata = [(MIInstallOptions *)self iTunesMetadata];
  [coderCopy encodeObject:iTunesMetadata forKey:@"iTunesMetadata"];

  sinfData = [(MIInstallOptions *)self sinfData];
  [coderCopy encodeObject:sinfData forKey:@"sinfData"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MIInstallOptions sinfDataType](self, "sinfDataType")}];
  [coderCopy encodeObject:v9 forKey:@"sinfDataType"];

  iTunesArtworkData = [(MIInstallOptions *)self iTunesArtworkData];
  [coderCopy encodeObject:iTunesArtworkData forKey:@"iTunesArtworkData"];

  geoJSONData = [(MIInstallOptions *)self geoJSONData];
  [coderCopy encodeObject:geoJSONData forKey:@"geoJSONData"];

  provisioningProfiles = [(MIInstallOptions *)self provisioningProfiles];
  [coderCopy encodeObject:provisioningProfiles forKey:@"provisioningProfiles"];

  alternateIconName = [(MIInstallOptions *)self alternateIconName];
  [coderCopy encodeObject:alternateIconName forKey:@"alternateIconName"];

  [coderCopy encodeBool:-[MIInstallOptions skipWatchAppInstall](self forKey:{"skipWatchAppInstall"), @"skipWatchAppInstall"}];
  [coderCopy encodeBool:-[MIInstallOptions allowLocalProvisioned](self forKey:{"allowLocalProvisioned"), @"allowLocalProvisioned"}];
  [coderCopy encodeBool:-[MIInstallOptions performAPFSClone](self forKey:{"performAPFSClone"), @"performAPFSClone"}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIInstallOptions autoInstallOverride](self, "autoInstallOverride")}];
  [coderCopy encodeObject:v14 forKey:@"autoInstallOverride"];

  linkedParentBundleID = [(MIInstallOptions *)self linkedParentBundleID];
  [coderCopy encodeObject:linkedParentBundleID forKey:@"linkedParentBundleID"];

  [coderCopy encodeBool:-[MIInstallOptions provisioningProfileInstallFailureIsFatal](self forKey:{"provisioningProfileInstallFailureIsFatal"), @"provisioningProfileInstallFailureIsFatal"}];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIInstallOptions stashMode](self, "stashMode")}];
  [coderCopy encodeObject:v16 forKey:@"stashMode"];

  personaUniqueString = [(MIInstallOptions *)self personaUniqueString];
  [coderCopy encodeObject:personaUniqueString forKey:@"personaUniqueString"];

  [coderCopy encodeBool:-[MIInstallOptions preservePlaceholderAsParallel](self forKey:{"preservePlaceholderAsParallel"), @"preservePlaceholderAsParallel"}];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIInstallOptions installIntent](self, "installIntent")}];
  [coderCopy encodeObject:v18 forKey:@"installIntent"];

  installationRequestorAuditToken = [(MIInstallOptions *)self installationRequestorAuditToken];
  if (installationRequestorAuditToken)
  {
    v20 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:installationRequestorAuditToken length:32 freeWhenDone:0];
    [coderCopy encodeObject:v20 forKey:@"installationRequestorAuditToken"];
  }
}

- (MIInstallOptions)initWithLegacyOptionsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(MIInstallOptions *)self init];
  if (!v5)
  {
LABEL_62:
    v23 = v5;
    goto LABEL_63;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"PackageType"];
  if ([v6 isEqualToString:@"Customer"])
  {
    goto LABEL_3;
  }

  if ([v6 isEqualToString:@"Developer"])
  {
    [(MIInstallOptions *)v5 setInstallTargetType:1];
    [(MIInstallOptions *)v5 setDeveloperInstall:1];
  }

  else
  {
    if (![v6 isEqualToString:@"System"])
    {
      if ([v6 isEqualToString:@"Placeholder"])
      {
        v62 = [dictionaryCopy objectForKeyedSubscript:@"DowngradeToPlaceholder"];
        v63 = MIBooleanValue(v62, 0);

        v7 = v5;
        if (v63)
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        goto LABEL_4;
      }

LABEL_3:
      v7 = v5;
      v8 = 1;
LABEL_4:
      [(MIInstallOptions *)v7 setInstallTargetType:v8];
      goto LABEL_9;
    }

    [(MIInstallOptions *)v5 setInstallTargetType:1];
    [(MIInstallOptions *)v5 setSystemAppInstall:1];
  }

LABEL_9:
  v9 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
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

  if (v11)
  {
    [(MIInstallOptions *)v5 setBundleIdentifier:v11];
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"IsUserInitiated"];
  [(MIInstallOptions *)v5 setUserInitiated:MIBooleanValue(v12, 0)];

  v13 = [dictionaryCopy objectForKeyedSubscript:@"WaitForStorageDeletion"];
  [(MIInstallOptions *)v5 setWaitForDeletion:MIBooleanValue(v13, 0)];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"LSInstallType"];
  objc_opt_class();
  v15 = v14;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  -[MIInstallOptions setLsInstallType:](v5, "setLsInstallType:", [v16 unsignedIntegerValue]);
  v17 = [dictionaryCopy objectForKeyedSubscript:@"iTunesMetadata"];
  objc_opt_class();
  v18 = v17;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    v21 = 0;
    goto LABEL_27;
  }

  v64 = 0;
  v20 = [MEMORY[0x1E69A8DB8] metadataFromPlistData:v19 error:&v64];
  v21 = v64;
  [(MIInstallOptions *)v5 setITunesMetadata:v20];

  iTunesMetadata = [(MIInstallOptions *)v5 iTunesMetadata];

  if (iTunesMetadata)
  {
LABEL_27:
    v24 = [dictionaryCopy objectForKeyedSubscript:@"ApplicationSINF"];
    objc_opt_class();
    v25 = v24;
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    [(MIInstallOptions *)v5 setSinfData:v26];
    v27 = [dictionaryCopy objectForKeyedSubscript:@"ApplicationSINFDataType"];
    objc_opt_class();
    v28 = v27;
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    -[MIInstallOptions setSinfDataType:](v5, "setSinfDataType:", [v29 unsignedIntValue]);
    v30 = [dictionaryCopy objectForKeyedSubscript:@"iTunesArtwork"];
    objc_opt_class();
    v31 = v30;
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    [(MIInstallOptions *)v5 setITunesArtworkData:v32];
    v33 = [dictionaryCopy objectForKeyedSubscript:@"GeoJSON"];
    objc_opt_class();
    v34 = v33;
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    [(MIInstallOptions *)v5 setGeoJSONData:v35];
    v36 = [dictionaryCopy objectForKeyedSubscript:@"ProvisioningProfiles"];
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

    [(MIInstallOptions *)v5 setProvisioningProfiles:v38];
    v39 = [dictionaryCopy objectForKeyedSubscript:@"AlternateIconName"];
    objc_opt_class();
    v40 = v39;
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    [(MIInstallOptions *)v5 setAlternateIconName:v41];
    v42 = [dictionaryCopy objectForKeyedSubscript:@"SkipWatchAppInstall"];
    [(MIInstallOptions *)v5 setSkipWatchAppInstall:MIBooleanValue(v42, 0)];

    if ([(MIInstallOptions *)v5 skipWatchAppInstall])
    {
      [(MIInstallOptions *)v5 setAutoInstallOverride:1];
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"AutoInstallWatchApp"];
    v44 = MIBooleanValue(v43, 0);

    if (v44)
    {
      [(MIInstallOptions *)v5 setAutoInstallOverride:2];
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"AllowInstallLocalProvisioned"];
    [(MIInstallOptions *)v5 setAllowLocalProvisioned:MIBooleanValue(v45, 0)];

    v46 = [dictionaryCopy objectForKeyedSubscript:@"PerformAPFSClone"];
    [(MIInstallOptions *)v5 setPerformAPFSClone:MIBooleanValue(v46, 0)];

    v47 = [dictionaryCopy objectForKeyedSubscript:@"ProvisioningProfileInstallFailureIsFatal"];
    [(MIInstallOptions *)v5 setProvisioningProfileInstallFailureIsFatal:MIBooleanValue(v47, 0)];

    v48 = [dictionaryCopy objectForKeyedSubscript:@"StashMode"];
    objc_opt_class();
    v49 = v48;
    if (objc_opt_isKindOfClass())
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    -[MIInstallOptions setStashMode:](v5, "setStashMode:", [v50 unsignedIntegerValue]);
    v51 = [dictionaryCopy objectForKeyedSubscript:@"LinkedParentBundleID"];
    objc_opt_class();
    v52 = v51;
    if (objc_opt_isKindOfClass())
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    [(MIInstallOptions *)v5 setLinkedParentBundleID:v53];
    v54 = [dictionaryCopy objectForKeyedSubscript:@"PersonaUniqueStringForInstall"];
    objc_opt_class();
    v55 = v54;
    if (objc_opt_isKindOfClass())
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    [(MIInstallOptions *)v5 setPersonaUniqueString:v56];
    v57 = [dictionaryCopy objectForKeyedSubscript:@"PreservePlaceholderAsParallel"];
    [(MIInstallOptions *)v5 setPreservePlaceholderAsParallel:MIBooleanValue(v57, 0)];

    v58 = [dictionaryCopy objectForKeyedSubscript:@"Intent"];
    objc_opt_class();
    v59 = v58;
    if (objc_opt_isKindOfClass())
    {
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    -[MIInstallOptions setInstallIntent:](v5, "setInstallIntent:", [v60 unsignedIntegerValue]);
    goto LABEL_62;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v23 = 0;
LABEL_63:

  return v23;
}

- (void)dealloc
{
  free(self->_installationRequestorAuditToken);
  v3.receiver = self;
  v3.super_class = MIInstallOptions;
  [(MIInstallOptions *)&v3 dealloc];
}

- (void)setInstallationRequestorAuditToken:(id *)token
{
  installationRequestorAuditToken = self->_installationRequestorAuditToken;
  if (installationRequestorAuditToken)
  {
    free(installationRequestorAuditToken);
  }

  if (token)
  {
    v6 = malloc_type_malloc(0x20uLL, 0x870C71D3uLL);
    v7 = *&token->var0[4];
    *v6->var0 = *token->var0;
    *&v6->var0[4] = v7;
  }

  else
  {
    v6 = 0;
  }

  self->_installationRequestorAuditToken = v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setInstallTargetType:{-[MIInstallOptions installTargetType](self, "installTargetType")}];
  bundleIdentifier = [(MIInstallOptions *)self bundleIdentifier];
  v7 = [bundleIdentifier copyWithZone:zone];
  [v5 setBundleIdentifier:v7];

  [v5 setDeveloperInstall:{-[MIInstallOptions isDeveloperInstall](self, "isDeveloperInstall")}];
  [v5 setSystemAppInstall:{-[MIInstallOptions isSystemAppInstall](self, "isSystemAppInstall")}];
  [v5 setUserInitiated:{-[MIInstallOptions isUserInitiated](self, "isUserInitiated")}];
  [v5 setWaitForDeletion:{-[MIInstallOptions waitForDeletion](self, "waitForDeletion")}];
  [v5 setLsInstallType:{-[MIInstallOptions lsInstallType](self, "lsInstallType")}];
  iTunesMetadata = [(MIInstallOptions *)self iTunesMetadata];
  v9 = [iTunesMetadata copyWithZone:zone];
  [v5 setITunesMetadata:v9];

  sinfData = [(MIInstallOptions *)self sinfData];
  v11 = [sinfData copyWithZone:zone];
  [v5 setSinfData:v11];

  [v5 setSinfDataType:{-[MIInstallOptions sinfDataType](self, "sinfDataType")}];
  iTunesArtworkData = [(MIInstallOptions *)self iTunesArtworkData];
  v13 = [iTunesArtworkData copyWithZone:zone];
  [v5 setITunesArtworkData:v13];

  geoJSONData = [(MIInstallOptions *)self geoJSONData];
  v15 = [geoJSONData copyWithZone:zone];
  [v5 setGeoJSONData:v15];

  provisioningProfiles = [(MIInstallOptions *)self provisioningProfiles];
  v17 = [provisioningProfiles copyWithZone:zone];
  [v5 setProvisioningProfiles:v17];

  alternateIconName = [(MIInstallOptions *)self alternateIconName];
  v19 = [alternateIconName copyWithZone:zone];
  [v5 setAlternateIconName:v19];

  [v5 setSkipWatchAppInstall:{-[MIInstallOptions skipWatchAppInstall](self, "skipWatchAppInstall")}];
  [v5 setAllowLocalProvisioned:{-[MIInstallOptions allowLocalProvisioned](self, "allowLocalProvisioned")}];
  [v5 setPerformAPFSClone:{-[MIInstallOptions performAPFSClone](self, "performAPFSClone")}];
  [v5 setAutoInstallOverride:{-[MIInstallOptions autoInstallOverride](self, "autoInstallOverride")}];
  linkedParentBundleID = [(MIInstallOptions *)self linkedParentBundleID];
  [v5 setLinkedParentBundleID:linkedParentBundleID];

  [v5 setProvisioningProfileInstallFailureIsFatal:{-[MIInstallOptions provisioningProfileInstallFailureIsFatal](self, "provisioningProfileInstallFailureIsFatal")}];
  [v5 setStashMode:{-[MIInstallOptions stashMode](self, "stashMode")}];
  personaUniqueString = [(MIInstallOptions *)self personaUniqueString];
  [v5 setPersonaUniqueString:personaUniqueString];

  [v5 setPreservePlaceholderAsParallel:{-[MIInstallOptions preservePlaceholderAsParallel](self, "preservePlaceholderAsParallel")}];
  [v5 setInstallIntent:{-[MIInstallOptions installIntent](self, "installIntent")}];
  [v5 setInstallationRequestorAuditToken:{-[MIInstallOptions installationRequestorAuditToken](self, "installationRequestorAuditToken")}];
  return v5;
}

- (NSDictionary)legacyOptionsDictionary
{
  v3 = objc_opt_new();
  installTargetType = [(MIInstallOptions *)self installTargetType];
  if (installTargetType == 3)
  {
    [v3 setObject:@"Placeholder" forKeyedSubscript:@"PackageType"];
    v5 = MEMORY[0x1E695E118];
    v6 = @"DowngradeToPlaceholder";
  }

  else
  {
    if (installTargetType == 2)
    {
      v5 = @"Placeholder";
    }

    else
    {
      if (installTargetType != 1)
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          [(MIInstallOptions *)self installTargetType];
          MOLogWrite();
        }

        goto LABEL_66;
      }

      if ([(MIInstallOptions *)self isDeveloperInstall])
      {
        v5 = @"Developer";
      }

      else if ([(MIInstallOptions *)self isSystemAppInstall])
      {
        v5 = @"System";
      }

      else
      {
        v5 = @"Customer";
      }
    }

    v6 = @"PackageType";
  }

  [v3 setObject:v5 forKeyedSubscript:v6];
  bundleIdentifier = [(MIInstallOptions *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [(MIInstallOptions *)self bundleIdentifier];
    [v3 setObject:bundleIdentifier2 forKeyedSubscript:*MEMORY[0x1E695E4F0]];
  }

  if ([(MIInstallOptions *)self isUserInitiated])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsUserInitiated"];
  }

  if ([(MIInstallOptions *)self waitForDeletion])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WaitForStorageDeletion"];
  }

  if ([(MIInstallOptions *)self lsInstallType])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIInstallOptions lsInstallType](self, "lsInstallType")}];
    [v3 setObject:v9 forKeyedSubscript:@"LSInstallType"];
  }

  iTunesMetadata = [(MIInstallOptions *)self iTunesMetadata];

  if (iTunesMetadata)
  {
    iTunesMetadata2 = [(MIInstallOptions *)self iTunesMetadata];
    v31 = 0;
    v12 = [iTunesMetadata2 propertyListDataWithError:&v31];
    v13 = v31;

    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"iTunesMetadata"];

      goto LABEL_20;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

LABEL_66:
    v29 = 0;
    goto LABEL_67;
  }

LABEL_20:
  sinfData = [(MIInstallOptions *)self sinfData];
  if (sinfData)
  {
    [v3 setObject:sinfData forKeyedSubscript:@"ApplicationSINF"];
  }

  sinfDataType = [(MIInstallOptions *)self sinfDataType];
  if (sinfDataType)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:sinfDataType];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"ApplicationSINFDataType"];
    }
  }

  iTunesArtworkData = [(MIInstallOptions *)self iTunesArtworkData];
  if (iTunesArtworkData)
  {
    [v3 setObject:iTunesArtworkData forKeyedSubscript:@"iTunesArtwork"];
  }

  geoJSONData = [(MIInstallOptions *)self geoJSONData];
  if (geoJSONData)
  {
    [v3 setObject:geoJSONData forKeyedSubscript:@"GeoJSON"];
  }

  provisioningProfiles = [(MIInstallOptions *)self provisioningProfiles];
  if (provisioningProfiles)
  {
    [v3 setObject:provisioningProfiles forKeyedSubscript:@"ProvisioningProfiles"];
  }

  alternateIconName = [(MIInstallOptions *)self alternateIconName];
  if (alternateIconName)
  {
    [v3 setObject:alternateIconName forKeyedSubscript:@"AlternateIconName"];
  }

  if ([(MIInstallOptions *)self skipWatchAppInstall]|| [(MIInstallOptions *)self autoInstallOverride]== 1)
  {
    v21 = @"SkipWatchAppInstall";
  }

  else
  {
    if ([(MIInstallOptions *)self autoInstallOverride]!= 2)
    {
      goto LABEL_38;
    }

    v21 = @"AutoInstallWatchApp";
  }

  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v21];
LABEL_38:
  if ([(MIInstallOptions *)self allowLocalProvisioned])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AllowInstallLocalProvisioned"];
  }

  if ([(MIInstallOptions *)self performAPFSClone])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PerformAPFSClone"];
  }

  if ([(MIInstallOptions *)self provisioningProfileInstallFailureIsFatal])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ProvisioningProfileInstallFailureIsFatal"];
  }

  stashMode = [(MIInstallOptions *)self stashMode];
  if (stashMode)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:stashMode];
    [v3 setObject:v23 forKeyedSubscript:@"StashMode"];
  }

  linkedParentBundleID = [(MIInstallOptions *)self linkedParentBundleID];
  if (linkedParentBundleID)
  {
    [v3 setObject:linkedParentBundleID forKeyedSubscript:@"LinkedParentBundleID"];
  }

  personaUniqueString = [(MIInstallOptions *)self personaUniqueString];

  if (personaUniqueString)
  {
    personaUniqueString2 = [(MIInstallOptions *)self personaUniqueString];
    [v3 setObject:personaUniqueString2 forKeyedSubscript:@"PersonaUniqueStringForInstall"];
  }

  if ([(MIInstallOptions *)self preservePlaceholderAsParallel])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PreservePlaceholderAsParallel"];
  }

  installIntent = [(MIInstallOptions *)self installIntent];
  if (installIntent)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:installIntent];
    [v3 setObject:v28 forKeyedSubscript:@"Intent"];
  }

  if ([(MIInstallOptions *)self installationRequestorAuditToken]&& (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }

  v29 = [v3 copy];

LABEL_67:

  return v29;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      installTargetType = [(MIInstallOptions *)self installTargetType];
      if (installTargetType == [(MIInstallOptions *)v5 installTargetType])
      {
        bundleIdentifier = [(MIInstallOptions *)self bundleIdentifier];
        bundleIdentifier2 = [(MIInstallOptions *)v5 bundleIdentifier];
        v9 = MICompareObjects(bundleIdentifier, bundleIdentifier2);

        if (v9)
        {
          isDeveloperInstall = [(MIInstallOptions *)self isDeveloperInstall];
          if (isDeveloperInstall == [(MIInstallOptions *)v5 isDeveloperInstall])
          {
            isSystemAppInstall = [(MIInstallOptions *)self isSystemAppInstall];
            if (isSystemAppInstall == [(MIInstallOptions *)v5 isSystemAppInstall])
            {
              isUserInitiated = [(MIInstallOptions *)self isUserInitiated];
              if (isUserInitiated == [(MIInstallOptions *)v5 isUserInitiated])
              {
                waitForDeletion = [(MIInstallOptions *)self waitForDeletion];
                if (waitForDeletion == [(MIInstallOptions *)v5 waitForDeletion])
                {
                  lsInstallType = [(MIInstallOptions *)self lsInstallType];
                  if (lsInstallType == [(MIInstallOptions *)v5 lsInstallType])
                  {
                    iTunesMetadata = [(MIInstallOptions *)self iTunesMetadata];
                    iTunesMetadata2 = [(MIInstallOptions *)v5 iTunesMetadata];
                    v19 = MICompareObjects(iTunesMetadata, iTunesMetadata2);

                    if (v19)
                    {
                      sinfData = [(MIInstallOptions *)self sinfData];
                      sinfData2 = [(MIInstallOptions *)v5 sinfData];
                      v22 = MICompareObjects(sinfData, sinfData2);

                      if (v22)
                      {
                        sinfDataType = [(MIInstallOptions *)self sinfDataType];
                        if (sinfDataType == [(MIInstallOptions *)v5 sinfDataType])
                        {
                          iTunesArtworkData = [(MIInstallOptions *)self iTunesArtworkData];
                          iTunesArtworkData2 = [(MIInstallOptions *)v5 iTunesArtworkData];
                          v26 = MICompareObjects(iTunesArtworkData, iTunesArtworkData2);

                          if (v26)
                          {
                            geoJSONData = [(MIInstallOptions *)self geoJSONData];
                            geoJSONData2 = [(MIInstallOptions *)v5 geoJSONData];
                            v29 = MICompareObjects(geoJSONData, geoJSONData2);

                            if (v29)
                            {
                              provisioningProfiles = [(MIInstallOptions *)self provisioningProfiles];
                              provisioningProfiles2 = [(MIInstallOptions *)v5 provisioningProfiles];
                              v32 = MICompareObjects(provisioningProfiles, provisioningProfiles2);

                              if (v32)
                              {
                                alternateIconName = [(MIInstallOptions *)self alternateIconName];
                                alternateIconName2 = [(MIInstallOptions *)v5 alternateIconName];
                                v35 = MICompareObjects(alternateIconName, alternateIconName2);

                                if (v35)
                                {
                                  skipWatchAppInstall = [(MIInstallOptions *)self skipWatchAppInstall];
                                  if (skipWatchAppInstall == [(MIInstallOptions *)v5 skipWatchAppInstall])
                                  {
                                    allowLocalProvisioned = [(MIInstallOptions *)self allowLocalProvisioned];
                                    if (allowLocalProvisioned == [(MIInstallOptions *)v5 allowLocalProvisioned])
                                    {
                                      performAPFSClone = [(MIInstallOptions *)self performAPFSClone];
                                      if (performAPFSClone == [(MIInstallOptions *)v5 performAPFSClone])
                                      {
                                        autoInstallOverride = [(MIInstallOptions *)self autoInstallOverride];
                                        if (autoInstallOverride == [(MIInstallOptions *)v5 autoInstallOverride])
                                        {
                                          linkedParentBundleID = [(MIInstallOptions *)self linkedParentBundleID];
                                          linkedParentBundleID2 = [(MIInstallOptions *)v5 linkedParentBundleID];
                                          v42 = MICompareObjects(linkedParentBundleID, linkedParentBundleID2);

                                          if (v42)
                                          {
                                            provisioningProfileInstallFailureIsFatal = [(MIInstallOptions *)self provisioningProfileInstallFailureIsFatal];
                                            if (provisioningProfileInstallFailureIsFatal == [(MIInstallOptions *)v5 provisioningProfileInstallFailureIsFatal])
                                            {
                                              stashMode = [(MIInstallOptions *)self stashMode];
                                              if (stashMode == [(MIInstallOptions *)v5 stashMode])
                                              {
                                                personaUniqueString = [(MIInstallOptions *)self personaUniqueString];
                                                personaUniqueString2 = [(MIInstallOptions *)v5 personaUniqueString];
                                                v47 = MICompareObjects(personaUniqueString, personaUniqueString2);

                                                if (v47)
                                                {
                                                  preservePlaceholderAsParallel = [(MIInstallOptions *)self preservePlaceholderAsParallel];
                                                  if (preservePlaceholderAsParallel == [(MIInstallOptions *)v5 preservePlaceholderAsParallel])
                                                  {
                                                    installIntent = [(MIInstallOptions *)self installIntent];
                                                    if (installIntent == [(MIInstallOptions *)v5 installIntent])
                                                    {
                                                      installationRequestorAuditToken = [(MIInstallOptions *)self installationRequestorAuditToken];
                                                      installationRequestorAuditToken2 = [(MIInstallOptions *)v5 installationRequestorAuditToken];
                                                      if ((installationRequestorAuditToken != 0) == (installationRequestorAuditToken2 != 0))
                                                      {
                                                        if (!installationRequestorAuditToken || !installationRequestorAuditToken2 || (*installationRequestorAuditToken->var0 == *installationRequestorAuditToken2->var0 ? (v52 = *&installationRequestorAuditToken->var0[2] == *&installationRequestorAuditToken2->var0[2]) : (v52 = 0), v52 ? (v53 = *&installationRequestorAuditToken->var0[4] == *&installationRequestorAuditToken2->var0[4]) : (v53 = 0), v53 ? (v54 = *&installationRequestorAuditToken->var0[6] == *&installationRequestorAuditToken2->var0[6]) : (v54 = 0), v54))
                                                        {
                                                          v11 = 1;
                                                          goto LABEL_18;
                                                        }
                                                      }

LABEL_17:
                                                      v11 = 0;
LABEL_18:

                                                      goto LABEL_19;
                                                    }

                                                    if (gLogHandle && *(gLogHandle + 44) < 3)
                                                    {
                                                      goto LABEL_17;
                                                    }
                                                  }

                                                  else if (gLogHandle && *(gLogHandle + 44) < 3)
                                                  {
                                                    goto LABEL_17;
                                                  }
                                                }

                                                else if (gLogHandle && *(gLogHandle + 44) < 3)
                                                {
                                                  goto LABEL_17;
                                                }
                                              }

                                              else if (gLogHandle && *(gLogHandle + 44) < 3)
                                              {
                                                goto LABEL_17;
                                              }
                                            }

                                            else if (gLogHandle && *(gLogHandle + 44) < 3)
                                            {
                                              goto LABEL_17;
                                            }
                                          }

                                          else if (gLogHandle && *(gLogHandle + 44) < 3)
                                          {
                                            goto LABEL_17;
                                          }
                                        }

                                        else if (gLogHandle && *(gLogHandle + 44) < 3)
                                        {
                                          goto LABEL_17;
                                        }
                                      }

                                      else if (gLogHandle && *(gLogHandle + 44) < 3)
                                      {
                                        goto LABEL_17;
                                      }
                                    }

                                    else if (gLogHandle && *(gLogHandle + 44) < 3)
                                    {
                                      goto LABEL_17;
                                    }
                                  }

                                  else if (gLogHandle && *(gLogHandle + 44) < 3)
                                  {
                                    goto LABEL_17;
                                  }
                                }

                                else if (gLogHandle && *(gLogHandle + 44) < 3)
                                {
                                  goto LABEL_17;
                                }
                              }

                              else if (gLogHandle && *(gLogHandle + 44) < 3)
                              {
                                goto LABEL_17;
                              }
                            }

                            else if (gLogHandle && *(gLogHandle + 44) < 3)
                            {
                              goto LABEL_17;
                            }
                          }

                          else if (gLogHandle && *(gLogHandle + 44) < 3)
                          {
                            goto LABEL_17;
                          }
                        }

                        else if (gLogHandle && *(gLogHandle + 44) < 3)
                        {
                          goto LABEL_17;
                        }
                      }

                      else if (gLogHandle && *(gLogHandle + 44) < 3)
                      {
                        goto LABEL_17;
                      }
                    }

                    else if (gLogHandle && *(gLogHandle + 44) < 3)
                    {
                      goto LABEL_17;
                    }
                  }

                  else if (gLogHandle && *(gLogHandle + 44) < 3)
                  {
                    goto LABEL_17;
                  }
                }

                else if (gLogHandle && *(gLogHandle + 44) < 3)
                {
                  goto LABEL_17;
                }
              }

              else if (gLogHandle && *(gLogHandle + 44) < 3)
              {
                goto LABEL_17;
              }
            }

            else if (gLogHandle && *(gLogHandle + 44) < 3)
            {
              goto LABEL_17;
            }
          }

          else if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_17;
          }
        }

        else if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_17;
        }
      }

      else if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_17;
      }

      MOLogWrite();
      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_19:

  return v11;
}

- (id)description
{
  legacyOptionsDictionary = [(MIInstallOptions *)self legacyOptionsDictionary];
  v4 = [legacyOptionsDictionary description];

  installationRequestorAuditToken = [(MIInstallOptions *)self installationRequestorAuditToken];
  if (installationRequestorAuditToken)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:installationRequestorAuditToken length:32 freeWhenDone:0];
    v7 = [v6 description];
  }

  else
  {
    v7 = @"NULL";
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ installationRequestorAuditToken: %@", v4, v7];

  return v8;
}

- (NSString)installTypeSummaryString
{
  installTargetType = [(MIInstallOptions *)self installTargetType];
  if (installTargetType == 3)
  {
    return @"Offload";
  }

  if (installTargetType == 2)
  {
    return @"Placeholder";
  }

  if (installTargetType != 1)
  {
    return @"Unknown";
  }

  if ([(MIInstallOptions *)self isDeveloperInstall])
  {
    return @"Developer";
  }

  if ([(MIInstallOptions *)self isSystemAppInstall])
  {
    return @"System";
  }

  return @"Customer";
}

@end