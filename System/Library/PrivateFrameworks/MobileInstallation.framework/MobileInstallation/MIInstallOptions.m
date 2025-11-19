@interface MIInstallOptions
- (BOOL)isEqual:(id)a3;
- (MIInstallOptions)initWithCoder:(id)a3;
- (MIInstallOptions)initWithLegacyOptionsDictionary:(id)a3;
- (NSDictionary)legacyOptionsDictionary;
- (NSString)installTypeSummaryString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setInstallationRequestorAuditToken:(id *)a3;
@end

@implementation MIInstallOptions

- (MIInstallOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIInstallOptions *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installTargetType"];
    v5->_installTargetType = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v5->_developerInstall = [v4 decodeBoolForKey:@"developerInstall"];
    v5->_systemAppInstall = [v4 decodeBoolForKey:@"systemAppInstall"];
    v5->_userInitiated = [v4 decodeBoolForKey:@"userInitiated"];
    v5->_waitForDeletion = [v4 decodeBoolForKey:@"waitForDeletion"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lsInstallType"];
    v5->_lsInstallType = [v9 unsignedIntegerValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iTunesMetadata"];
    iTunesMetadata = v5->_iTunesMetadata;
    v5->_iTunesMetadata = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sinfData"];
    sinfData = v5->_sinfData;
    v5->_sinfData = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sinfDataType"];
    v5->_sinfDataType = [v14 unsignedIntegerValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iTunesArtworkData"];
    iTunesArtworkData = v5->_iTunesArtworkData;
    v5->_iTunesArtworkData = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geoJSONData"];
    geoJSONData = v5->_geoJSONData;
    v5->_geoJSONData = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"provisioningProfiles"];
    provisioningProfiles = v5->_provisioningProfiles;
    v5->_provisioningProfiles = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alternateIconName"];
    alternateIconName = v5->_alternateIconName;
    v5->_alternateIconName = v24;

    v5->_skipWatchAppInstall = [v4 decodeBoolForKey:@"skipWatchAppInstall"];
    v5->_allowLocalProvisioned = [v4 decodeBoolForKey:@"allowLocalProvisioned"];
    v5->_performAPFSClone = [v4 decodeBoolForKey:@"performAPFSClone"];
    v5->_provisioningProfileInstallFailureIsFatal = [v4 decodeBoolForKey:@"provisioningProfileInstallFailureIsFatal"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoInstallOverride"];
    v5->_autoInstallOverride = [v26 unsignedIntegerValue];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkedParentBundleID"];
    linkedParentBundleID = v5->_linkedParentBundleID;
    v5->_linkedParentBundleID = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stashMode"];
    v5->_stashMode = [v29 unsignedIntegerValue];

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
    personaUniqueString = v5->_personaUniqueString;
    v5->_personaUniqueString = v30;

    v5->_preservePlaceholderAsParallel = [v4 decodeBoolForKey:@"preservePlaceholderAsParallel"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installIntent"];
    v5->_installIntent = [v32 unsignedIntegerValue];

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installationRequestorAuditToken"];
    v34 = v33;
    if (v33 && [v33 length] == 32)
    {
      -[MIInstallOptions setInstallationRequestorAuditToken:](v5, "setInstallationRequestorAuditToken:", [v34 bytes]);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v21 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIInstallOptions installTargetType](self, "installTargetType")}];
  [v21 encodeObject:v4 forKey:@"installTargetType"];

  v5 = [(MIInstallOptions *)self bundleIdentifier];
  [v21 encodeObject:v5 forKey:@"bundleIdentifier"];

  [v21 encodeBool:-[MIInstallOptions isDeveloperInstall](self forKey:{"isDeveloperInstall"), @"developerInstall"}];
  [v21 encodeBool:-[MIInstallOptions isSystemAppInstall](self forKey:{"isSystemAppInstall"), @"systemAppInstall"}];
  [v21 encodeBool:-[MIInstallOptions isUserInitiated](self forKey:{"isUserInitiated"), @"userInitiated"}];
  [v21 encodeBool:-[MIInstallOptions waitForDeletion](self forKey:{"waitForDeletion"), @"waitForDeletion"}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIInstallOptions lsInstallType](self, "lsInstallType")}];
  [v21 encodeObject:v6 forKey:@"lsInstallType"];

  v7 = [(MIInstallOptions *)self iTunesMetadata];
  [v21 encodeObject:v7 forKey:@"iTunesMetadata"];

  v8 = [(MIInstallOptions *)self sinfData];
  [v21 encodeObject:v8 forKey:@"sinfData"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MIInstallOptions sinfDataType](self, "sinfDataType")}];
  [v21 encodeObject:v9 forKey:@"sinfDataType"];

  v10 = [(MIInstallOptions *)self iTunesArtworkData];
  [v21 encodeObject:v10 forKey:@"iTunesArtworkData"];

  v11 = [(MIInstallOptions *)self geoJSONData];
  [v21 encodeObject:v11 forKey:@"geoJSONData"];

  v12 = [(MIInstallOptions *)self provisioningProfiles];
  [v21 encodeObject:v12 forKey:@"provisioningProfiles"];

  v13 = [(MIInstallOptions *)self alternateIconName];
  [v21 encodeObject:v13 forKey:@"alternateIconName"];

  [v21 encodeBool:-[MIInstallOptions skipWatchAppInstall](self forKey:{"skipWatchAppInstall"), @"skipWatchAppInstall"}];
  [v21 encodeBool:-[MIInstallOptions allowLocalProvisioned](self forKey:{"allowLocalProvisioned"), @"allowLocalProvisioned"}];
  [v21 encodeBool:-[MIInstallOptions performAPFSClone](self forKey:{"performAPFSClone"), @"performAPFSClone"}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIInstallOptions autoInstallOverride](self, "autoInstallOverride")}];
  [v21 encodeObject:v14 forKey:@"autoInstallOverride"];

  v15 = [(MIInstallOptions *)self linkedParentBundleID];
  [v21 encodeObject:v15 forKey:@"linkedParentBundleID"];

  [v21 encodeBool:-[MIInstallOptions provisioningProfileInstallFailureIsFatal](self forKey:{"provisioningProfileInstallFailureIsFatal"), @"provisioningProfileInstallFailureIsFatal"}];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIInstallOptions stashMode](self, "stashMode")}];
  [v21 encodeObject:v16 forKey:@"stashMode"];

  v17 = [(MIInstallOptions *)self personaUniqueString];
  [v21 encodeObject:v17 forKey:@"personaUniqueString"];

  [v21 encodeBool:-[MIInstallOptions preservePlaceholderAsParallel](self forKey:{"preservePlaceholderAsParallel"), @"preservePlaceholderAsParallel"}];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIInstallOptions installIntent](self, "installIntent")}];
  [v21 encodeObject:v18 forKey:@"installIntent"];

  v19 = [(MIInstallOptions *)self installationRequestorAuditToken];
  if (v19)
  {
    v20 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v19 length:32 freeWhenDone:0];
    [v21 encodeObject:v20 forKey:@"installationRequestorAuditToken"];
  }
}

- (MIInstallOptions)initWithLegacyOptionsDictionary:(id)a3
{
  v4 = a3;
  v5 = [(MIInstallOptions *)self init];
  if (!v5)
  {
LABEL_62:
    v23 = v5;
    goto LABEL_63;
  }

  v6 = [v4 objectForKeyedSubscript:@"PackageType"];
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
        v62 = [v4 objectForKeyedSubscript:@"DowngradeToPlaceholder"];
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
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
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

  v12 = [v4 objectForKeyedSubscript:@"IsUserInitiated"];
  [(MIInstallOptions *)v5 setUserInitiated:MIBooleanValue(v12, 0)];

  v13 = [v4 objectForKeyedSubscript:@"WaitForStorageDeletion"];
  [(MIInstallOptions *)v5 setWaitForDeletion:MIBooleanValue(v13, 0)];

  v14 = [v4 objectForKeyedSubscript:@"LSInstallType"];
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
  v17 = [v4 objectForKeyedSubscript:@"iTunesMetadata"];
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

  v22 = [(MIInstallOptions *)v5 iTunesMetadata];

  if (v22)
  {
LABEL_27:
    v24 = [v4 objectForKeyedSubscript:@"ApplicationSINF"];
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
    v27 = [v4 objectForKeyedSubscript:@"ApplicationSINFDataType"];
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
    v30 = [v4 objectForKeyedSubscript:@"iTunesArtwork"];
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
    v33 = [v4 objectForKeyedSubscript:@"GeoJSON"];
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
    v36 = [v4 objectForKeyedSubscript:@"ProvisioningProfiles"];
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
    v39 = [v4 objectForKeyedSubscript:@"AlternateIconName"];
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
    v42 = [v4 objectForKeyedSubscript:@"SkipWatchAppInstall"];
    [(MIInstallOptions *)v5 setSkipWatchAppInstall:MIBooleanValue(v42, 0)];

    if ([(MIInstallOptions *)v5 skipWatchAppInstall])
    {
      [(MIInstallOptions *)v5 setAutoInstallOverride:1];
    }

    v43 = [v4 objectForKeyedSubscript:@"AutoInstallWatchApp"];
    v44 = MIBooleanValue(v43, 0);

    if (v44)
    {
      [(MIInstallOptions *)v5 setAutoInstallOverride:2];
    }

    v45 = [v4 objectForKeyedSubscript:@"AllowInstallLocalProvisioned"];
    [(MIInstallOptions *)v5 setAllowLocalProvisioned:MIBooleanValue(v45, 0)];

    v46 = [v4 objectForKeyedSubscript:@"PerformAPFSClone"];
    [(MIInstallOptions *)v5 setPerformAPFSClone:MIBooleanValue(v46, 0)];

    v47 = [v4 objectForKeyedSubscript:@"ProvisioningProfileInstallFailureIsFatal"];
    [(MIInstallOptions *)v5 setProvisioningProfileInstallFailureIsFatal:MIBooleanValue(v47, 0)];

    v48 = [v4 objectForKeyedSubscript:@"StashMode"];
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
    v51 = [v4 objectForKeyedSubscript:@"LinkedParentBundleID"];
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
    v54 = [v4 objectForKeyedSubscript:@"PersonaUniqueStringForInstall"];
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
    v57 = [v4 objectForKeyedSubscript:@"PreservePlaceholderAsParallel"];
    [(MIInstallOptions *)v5 setPreservePlaceholderAsParallel:MIBooleanValue(v57, 0)];

    v58 = [v4 objectForKeyedSubscript:@"Intent"];
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

- (void)setInstallationRequestorAuditToken:(id *)a3
{
  installationRequestorAuditToken = self->_installationRequestorAuditToken;
  if (installationRequestorAuditToken)
  {
    free(installationRequestorAuditToken);
  }

  if (a3)
  {
    v6 = malloc_type_malloc(0x20uLL, 0x870C71D3uLL);
    v7 = *&a3->var0[4];
    *v6->var0 = *a3->var0;
    *&v6->var0[4] = v7;
  }

  else
  {
    v6 = 0;
  }

  self->_installationRequestorAuditToken = v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setInstallTargetType:{-[MIInstallOptions installTargetType](self, "installTargetType")}];
  v6 = [(MIInstallOptions *)self bundleIdentifier];
  v7 = [v6 copyWithZone:a3];
  [v5 setBundleIdentifier:v7];

  [v5 setDeveloperInstall:{-[MIInstallOptions isDeveloperInstall](self, "isDeveloperInstall")}];
  [v5 setSystemAppInstall:{-[MIInstallOptions isSystemAppInstall](self, "isSystemAppInstall")}];
  [v5 setUserInitiated:{-[MIInstallOptions isUserInitiated](self, "isUserInitiated")}];
  [v5 setWaitForDeletion:{-[MIInstallOptions waitForDeletion](self, "waitForDeletion")}];
  [v5 setLsInstallType:{-[MIInstallOptions lsInstallType](self, "lsInstallType")}];
  v8 = [(MIInstallOptions *)self iTunesMetadata];
  v9 = [v8 copyWithZone:a3];
  [v5 setITunesMetadata:v9];

  v10 = [(MIInstallOptions *)self sinfData];
  v11 = [v10 copyWithZone:a3];
  [v5 setSinfData:v11];

  [v5 setSinfDataType:{-[MIInstallOptions sinfDataType](self, "sinfDataType")}];
  v12 = [(MIInstallOptions *)self iTunesArtworkData];
  v13 = [v12 copyWithZone:a3];
  [v5 setITunesArtworkData:v13];

  v14 = [(MIInstallOptions *)self geoJSONData];
  v15 = [v14 copyWithZone:a3];
  [v5 setGeoJSONData:v15];

  v16 = [(MIInstallOptions *)self provisioningProfiles];
  v17 = [v16 copyWithZone:a3];
  [v5 setProvisioningProfiles:v17];

  v18 = [(MIInstallOptions *)self alternateIconName];
  v19 = [v18 copyWithZone:a3];
  [v5 setAlternateIconName:v19];

  [v5 setSkipWatchAppInstall:{-[MIInstallOptions skipWatchAppInstall](self, "skipWatchAppInstall")}];
  [v5 setAllowLocalProvisioned:{-[MIInstallOptions allowLocalProvisioned](self, "allowLocalProvisioned")}];
  [v5 setPerformAPFSClone:{-[MIInstallOptions performAPFSClone](self, "performAPFSClone")}];
  [v5 setAutoInstallOverride:{-[MIInstallOptions autoInstallOverride](self, "autoInstallOverride")}];
  v20 = [(MIInstallOptions *)self linkedParentBundleID];
  [v5 setLinkedParentBundleID:v20];

  [v5 setProvisioningProfileInstallFailureIsFatal:{-[MIInstallOptions provisioningProfileInstallFailureIsFatal](self, "provisioningProfileInstallFailureIsFatal")}];
  [v5 setStashMode:{-[MIInstallOptions stashMode](self, "stashMode")}];
  v21 = [(MIInstallOptions *)self personaUniqueString];
  [v5 setPersonaUniqueString:v21];

  [v5 setPreservePlaceholderAsParallel:{-[MIInstallOptions preservePlaceholderAsParallel](self, "preservePlaceholderAsParallel")}];
  [v5 setInstallIntent:{-[MIInstallOptions installIntent](self, "installIntent")}];
  [v5 setInstallationRequestorAuditToken:{-[MIInstallOptions installationRequestorAuditToken](self, "installationRequestorAuditToken")}];
  return v5;
}

- (NSDictionary)legacyOptionsDictionary
{
  v3 = objc_opt_new();
  v4 = [(MIInstallOptions *)self installTargetType];
  if (v4 == 3)
  {
    [v3 setObject:@"Placeholder" forKeyedSubscript:@"PackageType"];
    v5 = MEMORY[0x1E695E118];
    v6 = @"DowngradeToPlaceholder";
  }

  else
  {
    if (v4 == 2)
    {
      v5 = @"Placeholder";
    }

    else
    {
      if (v4 != 1)
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
  v7 = [(MIInstallOptions *)self bundleIdentifier];

  if (v7)
  {
    v8 = [(MIInstallOptions *)self bundleIdentifier];
    [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E695E4F0]];
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

  v10 = [(MIInstallOptions *)self iTunesMetadata];

  if (v10)
  {
    v11 = [(MIInstallOptions *)self iTunesMetadata];
    v31 = 0;
    v12 = [v11 propertyListDataWithError:&v31];
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
  v14 = [(MIInstallOptions *)self sinfData];
  if (v14)
  {
    [v3 setObject:v14 forKeyedSubscript:@"ApplicationSINF"];
  }

  v15 = [(MIInstallOptions *)self sinfDataType];
  if (v15)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"ApplicationSINFDataType"];
    }
  }

  v17 = [(MIInstallOptions *)self iTunesArtworkData];
  if (v17)
  {
    [v3 setObject:v17 forKeyedSubscript:@"iTunesArtwork"];
  }

  v18 = [(MIInstallOptions *)self geoJSONData];
  if (v18)
  {
    [v3 setObject:v18 forKeyedSubscript:@"GeoJSON"];
  }

  v19 = [(MIInstallOptions *)self provisioningProfiles];
  if (v19)
  {
    [v3 setObject:v19 forKeyedSubscript:@"ProvisioningProfiles"];
  }

  v20 = [(MIInstallOptions *)self alternateIconName];
  if (v20)
  {
    [v3 setObject:v20 forKeyedSubscript:@"AlternateIconName"];
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

  v22 = [(MIInstallOptions *)self stashMode];
  if (v22)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
    [v3 setObject:v23 forKeyedSubscript:@"StashMode"];
  }

  v24 = [(MIInstallOptions *)self linkedParentBundleID];
  if (v24)
  {
    [v3 setObject:v24 forKeyedSubscript:@"LinkedParentBundleID"];
  }

  v25 = [(MIInstallOptions *)self personaUniqueString];

  if (v25)
  {
    v26 = [(MIInstallOptions *)self personaUniqueString];
    [v3 setObject:v26 forKeyedSubscript:@"PersonaUniqueStringForInstall"];
  }

  if ([(MIInstallOptions *)self preservePlaceholderAsParallel])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PreservePlaceholderAsParallel"];
  }

  v27 = [(MIInstallOptions *)self installIntent];
  if (v27)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIInstallOptions *)self installTargetType];
      if (v6 == [(MIInstallOptions *)v5 installTargetType])
      {
        v7 = [(MIInstallOptions *)self bundleIdentifier];
        v8 = [(MIInstallOptions *)v5 bundleIdentifier];
        v9 = MICompareObjects(v7, v8);

        if (v9)
        {
          v10 = [(MIInstallOptions *)self isDeveloperInstall];
          if (v10 == [(MIInstallOptions *)v5 isDeveloperInstall])
          {
            v13 = [(MIInstallOptions *)self isSystemAppInstall];
            if (v13 == [(MIInstallOptions *)v5 isSystemAppInstall])
            {
              v14 = [(MIInstallOptions *)self isUserInitiated];
              if (v14 == [(MIInstallOptions *)v5 isUserInitiated])
              {
                v15 = [(MIInstallOptions *)self waitForDeletion];
                if (v15 == [(MIInstallOptions *)v5 waitForDeletion])
                {
                  v16 = [(MIInstallOptions *)self lsInstallType];
                  if (v16 == [(MIInstallOptions *)v5 lsInstallType])
                  {
                    v17 = [(MIInstallOptions *)self iTunesMetadata];
                    v18 = [(MIInstallOptions *)v5 iTunesMetadata];
                    v19 = MICompareObjects(v17, v18);

                    if (v19)
                    {
                      v20 = [(MIInstallOptions *)self sinfData];
                      v21 = [(MIInstallOptions *)v5 sinfData];
                      v22 = MICompareObjects(v20, v21);

                      if (v22)
                      {
                        v23 = [(MIInstallOptions *)self sinfDataType];
                        if (v23 == [(MIInstallOptions *)v5 sinfDataType])
                        {
                          v24 = [(MIInstallOptions *)self iTunesArtworkData];
                          v25 = [(MIInstallOptions *)v5 iTunesArtworkData];
                          v26 = MICompareObjects(v24, v25);

                          if (v26)
                          {
                            v27 = [(MIInstallOptions *)self geoJSONData];
                            v28 = [(MIInstallOptions *)v5 geoJSONData];
                            v29 = MICompareObjects(v27, v28);

                            if (v29)
                            {
                              v30 = [(MIInstallOptions *)self provisioningProfiles];
                              v31 = [(MIInstallOptions *)v5 provisioningProfiles];
                              v32 = MICompareObjects(v30, v31);

                              if (v32)
                              {
                                v33 = [(MIInstallOptions *)self alternateIconName];
                                v34 = [(MIInstallOptions *)v5 alternateIconName];
                                v35 = MICompareObjects(v33, v34);

                                if (v35)
                                {
                                  v36 = [(MIInstallOptions *)self skipWatchAppInstall];
                                  if (v36 == [(MIInstallOptions *)v5 skipWatchAppInstall])
                                  {
                                    v37 = [(MIInstallOptions *)self allowLocalProvisioned];
                                    if (v37 == [(MIInstallOptions *)v5 allowLocalProvisioned])
                                    {
                                      v38 = [(MIInstallOptions *)self performAPFSClone];
                                      if (v38 == [(MIInstallOptions *)v5 performAPFSClone])
                                      {
                                        v39 = [(MIInstallOptions *)self autoInstallOverride];
                                        if (v39 == [(MIInstallOptions *)v5 autoInstallOverride])
                                        {
                                          v40 = [(MIInstallOptions *)self linkedParentBundleID];
                                          v41 = [(MIInstallOptions *)v5 linkedParentBundleID];
                                          v42 = MICompareObjects(v40, v41);

                                          if (v42)
                                          {
                                            v43 = [(MIInstallOptions *)self provisioningProfileInstallFailureIsFatal];
                                            if (v43 == [(MIInstallOptions *)v5 provisioningProfileInstallFailureIsFatal])
                                            {
                                              v44 = [(MIInstallOptions *)self stashMode];
                                              if (v44 == [(MIInstallOptions *)v5 stashMode])
                                              {
                                                v45 = [(MIInstallOptions *)self personaUniqueString];
                                                v46 = [(MIInstallOptions *)v5 personaUniqueString];
                                                v47 = MICompareObjects(v45, v46);

                                                if (v47)
                                                {
                                                  v48 = [(MIInstallOptions *)self preservePlaceholderAsParallel];
                                                  if (v48 == [(MIInstallOptions *)v5 preservePlaceholderAsParallel])
                                                  {
                                                    v49 = [(MIInstallOptions *)self installIntent];
                                                    if (v49 == [(MIInstallOptions *)v5 installIntent])
                                                    {
                                                      v50 = [(MIInstallOptions *)self installationRequestorAuditToken];
                                                      v51 = [(MIInstallOptions *)v5 installationRequestorAuditToken];
                                                      if ((v50 != 0) == (v51 != 0))
                                                      {
                                                        if (!v50 || !v51 || (*v50->var0 == *v51->var0 ? (v52 = *&v50->var0[2] == *&v51->var0[2]) : (v52 = 0), v52 ? (v53 = *&v50->var0[4] == *&v51->var0[4]) : (v53 = 0), v53 ? (v54 = *&v50->var0[6] == *&v51->var0[6]) : (v54 = 0), v54))
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
  v3 = [(MIInstallOptions *)self legacyOptionsDictionary];
  v4 = [v3 description];

  v5 = [(MIInstallOptions *)self installationRequestorAuditToken];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v5 length:32 freeWhenDone:0];
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
  v3 = [(MIInstallOptions *)self installTargetType];
  if (v3 == 3)
  {
    return @"Offload";
  }

  if (v3 == 2)
  {
    return @"Placeholder";
  }

  if (v3 != 1)
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