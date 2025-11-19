@interface MIInstallationIdentity
+ (id)identityForUpdateOfBundle:(id)a3 error:(id *)a4;
+ (id)installationIdentityForBundle:(id)a3 settingIfNotSet:(BOOL)a4 error:(id *)a5;
+ (id)newIdentityForBundle:(id)a3;
- (BOOL)_writeToBundle:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)writeToBundle:(id)a3 error:(id *)a4;
- (MIInstallationIdentity)initWithSessionID:(id)a3 uniqueID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MIInstallationIdentity

+ (id)newIdentityForBundle:(id)a3
{
  v3 = a3;
  if ([v3 isStaticContent])
  {
    v4 = [v3 identifier];
    v5 = objc_alloc(objc_opt_class());
    v6 = _GenerateBuiltInAppInstallSessionID(v4);
    v7 = _GenerateBuiltInAppInstallID(v4);
    v8 = [v5 initWithSessionID:v6 uniqueID:v7];
  }

  else
  {
    v9 = objc_alloc(objc_opt_class());
    v4 = _UUIDData();
    v6 = _UUIDData();
    v8 = [v9 initWithSessionID:v4 uniqueID:v6];
  }

  return v8;
}

+ (id)identityForUpdateOfBundle:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v7 = [MIInstallationIdentity installationIdentityForBundle:v6 settingIfNotSet:0 error:&v18];
  v8 = v18;
  v9 = v8;
  if (!v7)
  {
    v14 = [v8 domain];
    if ([v14 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v15 = [v9 code];

      if (v15 == 93)
      {

        v13 = [a1 newIdentityForBundle:v6];
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
  v11 = [v7 installSessionID];
  v12 = _UUIDData();
  v13 = [v10 initWithSessionID:v11 uniqueID:v12];

LABEL_8:
  if (a4 && !v13)
  {
    v16 = v9;
    *a4 = v9;
  }

  return v13;
}

+ (id)installationIdentityForBundle:(id)a3 settingIfNotSet:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [v8 bundleType];
  if ((v9 - 1) >= 6 && v9 != 9)
  {
    v24 = _CreateAndLogError("+[MIInstallationIdentity installationIdentityForBundle:settingIfNotSet:error:]", 186, @"MIInstallerErrorDomain", 3, 0, 0, @"Install session ID requested for bundle that was not an app or app extension: %@", v10, v8);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_13;
  }

  if ([v8 isStaticContent])
  {
    v12 = [v8 identifier];
    v13 = objc_alloc(objc_opt_class());
    v14 = _GenerateBuiltInAppInstallSessionID(v12);
    v15 = _GenerateBuiltInAppInstallID(v12);
    v29 = [v13 initWithSessionID:v14 uniqueID:v15];

    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v24 = 0;
LABEL_13:
    LODWORD(v17) = -1;
    if (!a5)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v28 = _IdentifierStorageLocationForBundle(v8);
  v16 = [v28 fileSystemRepresentation];
  v17 = open(v16, 256);
  if ((v17 & 0x80000000) != 0)
  {
    v20 = __error();
    v22 = _CreateError("+[MIInstallationIdentity installationIdentityForBundle:settingIfNotSet:error:]", 202, *MEMORY[0x1E696A798], *v20, 0, 0, @"Failed to open %s", v21, v16);
    v24 = _CreateAndLogError("+[MIInstallationIdentity installationIdentityForBundle:settingIfNotSet:error:]", 202, @"MIInstallerErrorDomain", 4, v22, 0, @"Failed to get FD to bundle executable at %s", v23, v16);

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
    if (!a5)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (!v6)
  {
    goto LABEL_24;
  }

  v30 = [v18 domain];
  if (([v30 isEqualToString:*MEMORY[0x1E696A798]] & 1) == 0)
  {

    goto LABEL_24;
  }

  v31 = [v24 code];

  if (v31 != 93)
  {
LABEL_24:
    v25 = 0;
    v26 = 0;
LABEL_25:
    v29 = 0;
    if (!a5)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v32 = [a1 newIdentityForBundle:v8];
  v39 = 0;
  v33 = [v32 _writeToBundle:v8 error:&v39];
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
  if (!a5)
  {
    goto LABEL_28;
  }

LABEL_26:
  if (!v29)
  {
    v35 = v24;
    *a5 = v24;
  }

LABEL_28:
  if ((v17 & 0x80000000) == 0)
  {
    close(v17);
  }

  v36 = v29;

  return v29;
}

- (MIInstallationIdentity)initWithSessionID:(id)a3 uniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MIInstallationIdentity;
  v8 = [(MIInstallationIdentity *)&v11 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  if ([v6 length] != 16)
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

  if ([v7 length] != 16)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [(MIInstallationIdentity *)v8 setInstallSessionID:v6];
  [(MIInstallationIdentity *)v8 setUniqueInstallID:v7];
LABEL_5:
  v9 = v8;
LABEL_13:

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIInstallationIdentity *)v5 uniqueInstallID];
      v7 = [(MIInstallationIdentity *)self uniqueInstallID];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      v14 = 0;
      if ((v8 != 0) == (v9 != 0) && (!v8 || !v9 || [v8 isEqual:v9]))
      {

        v11 = [(MIInstallationIdentity *)v5 installSessionID];
        v12 = [(MIInstallationIdentity *)self installSessionID];
        v8 = v11;
        v13 = v12;
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
  v3 = [(MIInstallationIdentity *)self installSessionID];
  v4 = [v3 hash];
  v5 = [(MIInstallationIdentity *)self uniqueInstallID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MIInstallationIdentity *)self installSessionID];
  v6 = [(MIInstallationIdentity *)self uniqueInstallID];
  v7 = [v4 initWithSessionID:v5 uniqueID:v6];

  return v7;
}

- (BOOL)_writeToBundle:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[MIFileManager defaultManager];
  v34 = [(MIInstallationIdentity *)self uniqueInstallID];
  v33 = [(MIInstallationIdentity *)self installSessionID];
  v42 = 0;
  v8 = [v6 thisBundleAndAllContainedBundlesWithError:&v42];
  v9 = v42;
  v10 = v9;
  if (!v8)
  {
    LODWORD(v19) = -1;
    if (a4)
    {
LABEL_17:
      v24 = v10;
      *a4 = v10;
    }

    goto LABEL_18;
  }

  v35 = v9;
  v30 = v8;
  v31 = v6;
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
    v6 = v31;
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
    v18 = [v17 fileSystemRepresentation];
    v19 = open(v18, 256);
    if ((v19 & 0x80000000) != 0)
    {
      v21 = v7;
      v26 = __error();
      v28 = _CreateError("[MIInstallationIdentity _writeToBundle:error:]", 340, *MEMORY[0x1E696A798], *v26, 0, 0, @"Failed to open %s", v27, v18);
      v10 = _CreateAndLogError("[MIInstallationIdentity _writeToBundle:error:]", 340, @"MIInstallerErrorDomain", 4, v28, 0, @"Failed to get FD to bundle executable at %s", v29, v18);

      goto LABEL_25;
    }

    v37 = v35;
    v20 = [v7 setData:v34 forExtendedAttributeNamed:@"com.apple.install_uuid" onFD:v19 fdLocation:v17 error:&v37];
    v10 = v37;

    if (!v20)
    {
      v21 = v7;
      goto LABEL_25;
    }

    v36 = v10;
    v21 = v7;
    v22 = [v7 setData:v33 forExtendedAttributeNamed:@"com.apple.install_session_uuid" onFD:v19 fdLocation:v17 error:&v36];
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
  v6 = v31;
  v7 = v21;
  if (a4)
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

- (BOOL)writeToBundle:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 isAppTypeBundle])
  {
    if (![v6 isStaticContent])
    {
      v12 = 0;
      v10 = [(MIInstallationIdentity *)self _writeToBundle:v6 error:&v12];
      v9 = v12;
      if (!a4)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    _CreateAndLogError("[MIInstallationIdentity writeToBundle:error:]", 380, @"MIInstallerErrorDomain", 3, 0, 0, @"Cannot set installation identity for bundle that uses a static identity: %@", v8, v6);
  }

  else
  {
    _CreateAndLogError("[MIInstallationIdentity writeToBundle:error:]", 375, @"MIInstallerErrorDomain", 3, 0, 0, @"Cannot set installation identity for non-app bundle %@", v7, v6);
  }
  v9 = ;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v10)
  {
    v9 = v9;
    *a4 = v9;
  }

LABEL_10:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MIInstallationIdentity *)self uniqueInstallID];
  v7 = [(MIInstallationIdentity *)self installSessionID];
  v8 = [v3 stringWithFormat:@"<%@ 0x%p uniqueInstallID=%@ installSessionID=%@", v5, self, v6, v7];

  return v8;
}

@end