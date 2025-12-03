@interface MIInstallationIdentity
+ (id)identityForUpdateOfBundle:(id)bundle error:(id *)error;
+ (id)installationIdentityForBundle:(id)bundle settingIfNotSet:(BOOL)set error:(id *)error;
+ (id)newIdentityForBundle:(id)bundle;
- (BOOL)_writeToBundle:(id)bundle error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)writeToBundle:(id)bundle error:(id *)error;
- (MIInstallationIdentity)initWithSessionID:(id)d uniqueID:(id)iD;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation MIInstallationIdentity

+ (id)newIdentityForBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([bundleCopy isStaticContent])
  {
    identifier = [bundleCopy identifier];
    v5 = objc_alloc(objc_opt_class());
    v6 = _GenerateBuiltInAppInstallSessionID(identifier);
    v7 = _GenerateBuiltInAppInstallID(identifier);
    v8 = [v5 initWithSessionID:v6 uniqueID:v7];
  }

  else
  {
    v9 = objc_alloc(objc_opt_class());
    identifier = _UUIDData();
    v6 = _UUIDData();
    v8 = [v9 initWithSessionID:identifier uniqueID:v6];
  }

  return v8;
}

+ (id)identityForUpdateOfBundle:(id)bundle error:(id *)error
{
  bundleCopy = bundle;
  v18 = 0;
  v7 = [MIInstallationIdentity installationIdentityForBundle:bundleCopy settingIfNotSet:0 error:&v18];
  v8 = v18;
  v9 = v8;
  if (!v7)
  {
    domain = [v8 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      code = [v9 code];

      if (code == 93)
      {

        v13 = [self newIdentityForBundle:bundleCopy];
        v9 = 0;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v13 = 0;
    goto LABEL_8;
  }

  v10 = objc_alloc(objc_opt_class());
  installSessionID = [v7 installSessionID];
  v12 = _UUIDData();
  v13 = [v10 initWithSessionID:installSessionID uniqueID:v12];

LABEL_8:
  if (error && !v13)
  {
    v16 = v9;
    *error = v9;
  }

  return v13;
}

+ (id)installationIdentityForBundle:(id)bundle settingIfNotSet:(BOOL)set error:(id *)error
{
  setCopy = set;
  bundleCopy = bundle;
  bundleType = [bundleCopy bundleType];
  if ((bundleType - 1) >= 6 && bundleType != 9)
  {
    v24 = _CreateAndLogError("+[MIInstallationIdentity installationIdentityForBundle:settingIfNotSet:error:]", 186, @"MIInstallerErrorDomain", 3, 0, 0, @"Install session ID requested for bundle that was not an app or app extension: %@", v10, bundleCopy);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_13;
  }

  if ([bundleCopy isStaticContent])
  {
    identifier = [bundleCopy identifier];
    v13 = objc_alloc(objc_opt_class());
    v14 = _GenerateBuiltInAppInstallSessionID(identifier);
    v15 = _GenerateBuiltInAppInstallID(identifier);
    v29 = [v13 initWithSessionID:v14 uniqueID:v15];

    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v24 = 0;
LABEL_13:
    LODWORD(v17) = -1;
    if (!error)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v28 = _IdentifierStorageLocationForBundle(bundleCopy);
  fileSystemRepresentation = [v28 fileSystemRepresentation];
  v17 = open(fileSystemRepresentation, 256);
  if ((v17 & 0x80000000) != 0)
  {
    v20 = __error();
    v22 = _CreateError("+[MIInstallationIdentity installationIdentityForBundle:settingIfNotSet:error:]", 202, *MEMORY[0x1E696A798], *v20, 0, 0, @"Failed to open %s", v21, fileSystemRepresentation);
    v24 = _CreateAndLogError("+[MIInstallationIdentity installationIdentityForBundle:settingIfNotSet:error:]", 202, @"MIInstallerErrorDomain", 4, v22, 0, @"Failed to get FD to bundle executable at %s", v23, fileSystemRepresentation);

    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_25;
  }

  v27 = +[MIFileManager defaultManager];
  v40 = 0;
  v25 = [v27 dataForExtendedAttributeNamed:@"com.apple.install_uuid" length:16 fromFD:v17 fdLocation:v28 error:&v40];
  v18 = v40;
  v24 = v18;
  if (v25)
  {
    v38 = v18;
    v26 = [v27 dataForExtendedAttributeNamed:@"com.apple.install_session_uuid" length:16 fromFD:v17 fdLocation:v28 error:&v38];
    v19 = v38;

    if (v26)
    {
      v29 = [objc_alloc(objc_opt_class()) initWithSessionID:v26 uniqueID:v25];
    }

    else
    {
      v29 = 0;
    }

    v24 = v19;
    if (!error)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (!setCopy)
  {
    goto LABEL_24;
  }

  domain = [v18 domain];
  if (([domain isEqualToString:*MEMORY[0x1E696A798]] & 1) == 0)
  {

    goto LABEL_24;
  }

  code = [v24 code];

  if (code != 93)
  {
LABEL_24:
    v25 = 0;
    v26 = 0;
LABEL_25:
    v29 = 0;
    if (!error)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v32 = [self newIdentityForBundle:bundleCopy];
  v39 = 0;
  v33 = [v32 _writeToBundle:bundleCopy error:&v39];
  v34 = v39;
  v24 = v34;
  if (v33)
  {

    v29 = v32;
    v24 = 0;
  }

  else
  {
    v29 = 0;
  }

  v25 = 0;
  v26 = 0;
  if (!error)
  {
    goto LABEL_28;
  }

LABEL_26:
  if (!v29)
  {
    v35 = v24;
    *error = v24;
  }

LABEL_28:
  if ((v17 & 0x80000000) == 0)
  {
    close(v17);
  }

  v36 = v29;

  return v29;
}

- (MIInstallationIdentity)initWithSessionID:(id)d uniqueID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v11.receiver = self;
  v11.super_class = MIInstallationIdentity;
  v8 = [(MIInstallationIdentity *)&v11 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  if ([dCopy length] != 16)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_12;
    }

LABEL_11:
    MOLogWrite();
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if ([iDCopy length] != 16)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [(MIInstallationIdentity *)v8 setInstallSessionID:dCopy];
  [(MIInstallationIdentity *)v8 setUniqueInstallID:iDCopy];
LABEL_5:
  v9 = v8;
LABEL_13:

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uniqueInstallID = [(MIInstallationIdentity *)v5 uniqueInstallID];
      uniqueInstallID2 = [(MIInstallationIdentity *)self uniqueInstallID];
      v8 = uniqueInstallID;
      v9 = uniqueInstallID2;
      v10 = v9;
      v14 = 0;
      if ((v8 != 0) == (v9 != 0) && (!v8 || !v9 || [v8 isEqual:v9]))
      {

        installSessionID = [(MIInstallationIdentity *)v5 installSessionID];
        installSessionID2 = [(MIInstallationIdentity *)self installSessionID];
        v8 = installSessionID;
        v13 = installSessionID2;
        v10 = v13;
        if ((v8 != 0) == (v13 != 0) && (!v8 || !v13 || [v8 isEqual:v13]))
        {
          v14 = 1;
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  installSessionID = [(MIInstallationIdentity *)self installSessionID];
  v4 = [installSessionID hash];
  uniqueInstallID = [(MIInstallationIdentity *)self uniqueInstallID];
  v6 = [uniqueInstallID hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  installSessionID = [(MIInstallationIdentity *)self installSessionID];
  uniqueInstallID = [(MIInstallationIdentity *)self uniqueInstallID];
  v7 = [v4 initWithSessionID:installSessionID uniqueID:uniqueInstallID];

  return v7;
}

- (BOOL)_writeToBundle:(id)bundle error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v7 = +[MIFileManager defaultManager];
  uniqueInstallID = [(MIInstallationIdentity *)self uniqueInstallID];
  installSessionID = [(MIInstallationIdentity *)self installSessionID];
  v42 = 0;
  v8 = [bundleCopy thisBundleAndAllContainedBundlesWithError:&v42];
  v9 = v42;
  v10 = v9;
  if (!v8)
  {
    LODWORD(v19) = -1;
    if (error)
    {
LABEL_17:
      v24 = v10;
      *error = v10;
    }

    goto LABEL_18;
  }

  v35 = v9;
  v30 = v8;
  v31 = bundleCopy;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (!v12)
  {
LABEL_15:

    v23 = 1;
    v8 = v30;
    bundleCopy = v31;
    v10 = v35;
    goto LABEL_21;
  }

  v13 = v12;
  v14 = *v39;
  v32 = v11;
LABEL_4:
  v15 = 0;
  while (1)
  {
    if (*v39 != v14)
    {
      objc_enumerationMutation(v11);
    }

    v16 = *(*(&v38 + 1) + 8 * v15);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v16 mayHaveExecutableProgram])
    {
      goto LABEL_13;
    }

    v17 = _IdentifierStorageLocationForBundle(v16);
    fileSystemRepresentation = [v17 fileSystemRepresentation];
    v19 = open(fileSystemRepresentation, 256);
    if ((v19 & 0x80000000) != 0)
    {
      v21 = v7;
      v26 = __error();
      v28 = _CreateError("[MIInstallationIdentity _writeToBundle:error:]", 340, *MEMORY[0x1E696A798], *v26, 0, 0, @"Failed to open %s", v27, fileSystemRepresentation);
      v10 = _CreateAndLogError("[MIInstallationIdentity _writeToBundle:error:]", 340, @"MIInstallerErrorDomain", 4, v28, 0, @"Failed to get FD to bundle executable at %s", v29, fileSystemRepresentation);

      goto LABEL_25;
    }

    v37 = v35;
    v20 = [v7 setData:uniqueInstallID forExtendedAttributeNamed:@"com.apple.install_uuid" onFD:v19 fdLocation:v17 error:&v37];
    v10 = v37;

    if (!v20)
    {
      v21 = v7;
      goto LABEL_25;
    }

    v36 = v10;
    v21 = v7;
    v22 = [v7 setData:installSessionID forExtendedAttributeNamed:@"com.apple.install_session_uuid" onFD:v19 fdLocation:v17 error:&v36];
    v35 = v36;

    if (!v22)
    {
      break;
    }

    close(v19);

    v7 = v21;
    v11 = v32;
LABEL_13:
    if (v13 == ++v15)
    {
      v13 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v13)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v10 = v35;
LABEL_25:

  v8 = v30;
  bundleCopy = v31;
  v7 = v21;
  if (error)
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((v19 & 0x80000000) == 0)
  {
    close(v19);
  }

  v23 = 0;
LABEL_21:

  return v23;
}

- (BOOL)writeToBundle:(id)bundle error:(id *)error
{
  bundleCopy = bundle;
  if ([bundleCopy isAppTypeBundle])
  {
    if (![bundleCopy isStaticContent])
    {
      v12 = 0;
      v10 = [(MIInstallationIdentity *)self _writeToBundle:bundleCopy error:&v12];
      v9 = v12;
      if (!error)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    _CreateAndLogError("[MIInstallationIdentity writeToBundle:error:]", 380, @"MIInstallerErrorDomain", 3, 0, 0, @"Cannot set installation identity for bundle that uses a static identity: %@", v8, bundleCopy);
  }

  else
  {
    _CreateAndLogError("[MIInstallationIdentity writeToBundle:error:]", 375, @"MIInstallerErrorDomain", 3, 0, 0, @"Cannot set installation identity for non-app bundle %@", v7, bundleCopy);
  }
  v9 = ;
  v10 = 0;
  if (!error)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v10)
  {
    v9 = v9;
    *error = v9;
  }

LABEL_10:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uniqueInstallID = [(MIInstallationIdentity *)self uniqueInstallID];
  installSessionID = [(MIInstallationIdentity *)self installSessionID];
  v8 = [v3 stringWithFormat:@"<%@ 0x%p uniqueInstallID=%@ installSessionID=%@", v5, self, uniqueInstallID, installSessionID];

  return v8;
}

@end