@interface MIAppIdentity
+ (BOOL)validateAppIdentity:(id)a3 withError:(id *)a4;
+ (id)_locationClassCluster;
- (BOOL)isEqual:(id)a3;
- (BOOL)resolvePersonaWithError:(id *)a3;
- (MIAppIdentity)initWithBundleID:(id)a3 personaUniqueString:(id)a4 location:(id)a5;
- (MIAppIdentity)initWithBundleIdentifier:(id)a3 personaUniqueString:(id)a4;
- (MIAppIdentity)initWithBundleIdentifier:(id)a3 personaUniqueString:(id)a4 location:(id)a5;
- (MIAppIdentity)initWithCoder:(id)a3;
- (id)_eligiblePersonaForBundle:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)identityByChangingLocation:(id)a3;
- (unint64_t)hash;
- (void)_doInitWithBundleID:(id)a3 personaUniqueString:(id)a4 location:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIAppIdentity

- (unint64_t)hash
{
  v3 = [(MIAppIdentity *)self bundleID];
  v4 = [v3 hash];
  v5 = [(MIAppIdentity *)self personaUniqueString];
  v6 = [v5 hash] ^ v4;
  v7 = [(MIAppIdentity *)self location];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (void)_doInitWithBundleID:(id)a3 personaUniqueString:(id)a4 location:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_storeStrong(&self->_bundleID, a3);
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [MIAppIdentity _doInitWithBundleID:v9 personaUniqueString:? location:?];
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v10 = @"PersonalPersonaPlaceholderString";
  }

  personaUniqueString = self->_personaUniqueString;
  self->_personaUniqueString = &v10->isa;
  v13 = v10;

  self->_isResolved = 0;
  location = self->_location;
  self->_location = v11;
}

- (MIAppIdentity)initWithBundleIdentifier:(id)a3 personaUniqueString:(id)a4 location:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MIAppIdentity;
  v11 = [(MIAppIdentity *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MIAppIdentity *)v11 _doInitWithBundleID:v8 personaUniqueString:v9 location:v10];
  }

  return v12;
}

- (MIAppIdentity)initWithBundleID:(id)a3 personaUniqueString:(id)a4 location:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MIAppIdentity;
  v11 = [(MIAppIdentity *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MIAppIdentity *)v11 _doInitWithBundleID:v8 personaUniqueString:v9 location:v10];
  }

  return v12;
}

- (MIAppIdentity)initWithBundleIdentifier:(id)a3 personaUniqueString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(MIAppIdentity *)self initWithBundleIdentifier:v7 personaUniqueString:v6 location:v8];

  return v9;
}

- (id)identityByChangingLocation:(id)a3
{
  v4 = a3;
  v5 = [(MIAppIdentity *)self copy];
  v6 = v5[4];
  v5[4] = v4;

  return v5;
}

+ (id)_locationClassCluster
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:3];
  v4 = [v2 setWithArray:{v3, v6, v7}];

  return v4;
}

- (MIAppIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MIAppIdentity;
  v5 = [(MIAppIdentity *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
    personaUniqueString = v5->_personaUniqueString;
    v5->_personaUniqueString = v8;

    v5->_isResolved = [v4 decodeBoolForKey:@"isResolved"];
    v10 = [objc_opt_class() _locationClassCluster];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"location"];
    location = v5->_location;
    v5->_location = v11;

    if (!v5->_location)
    {
      v13 = objc_alloc_init(MILocationSystemDefinedCommon);
      v14 = v5->_location;
      v5->_location = v13;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIAppIdentity *)self bundleID];
  [v4 encodeObject:v5 forKey:@"bundleID"];

  v6 = [(MIAppIdentity *)self personaUniqueString];
  [v4 encodeObject:v6 forKey:@"personaUniqueString"];

  [v4 encodeBool:-[MIAppIdentity isResolved](self forKey:{"isResolved"), @"isResolved"}];
  v7 = [(MIAppIdentity *)self location];
  [v4 encodeObject:v7 forKey:@"location"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MIAppIdentity *)self bundleID];
  [v4 setBundleID:v5];

  v6 = [(MIAppIdentity *)self personaUniqueString];
  [v4 setPersonaUniqueString:v6];

  [v4 setIsResolved:{-[MIAppIdentity isResolved](self, "isResolved")}];
  v7 = [(MIAppIdentity *)self location];
  [v4 setLocation:v7];

  return v4;
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
      v6 = [(MIAppIdentity *)self bundleID];
      v7 = [(MIAppIdentity *)v5 bundleID];
      v8 = MICompareObjects(v6, v7);

      if (v8 && ([(MIAppIdentity *)self personaUniqueString], v9 = objc_claimAutoreleasedReturnValue(), [(MIAppIdentity *)v5 personaUniqueString], v10 = objc_claimAutoreleasedReturnValue(), v11 = MICompareObjects(v9, v10), v10, v9, v11))
      {
        v12 = [(MIAppIdentity *)self location];
        v13 = [(MIAppIdentity *)v5 location];
        v14 = MICompareObjects(v12, v13);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MIAppIdentity *)self bundleID];
  v5 = [(MIAppIdentity *)self personaUniqueString];
  v6 = [(MIAppIdentity *)self location];
  v7 = [v3 stringWithFormat:@"[%@/%@/%@]", v4, v5, v6];

  return v7;
}

+ (BOOL)validateAppIdentity:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v7 = v5;
  if (v5)
  {
    v8 = [v5 bundleID];

    if (v8)
    {
      v9 = [v7 personaUniqueString];

      if (v9)
      {
        v10 = [v7 location];

        if (v10)
        {
          v11 = 0;
          v12 = 1;
          goto LABEL_13;
        }

        v13 = @"app identity has nil location";
        v14 = 200;
      }

      else
      {
        v13 = @"app identity has nil personaUniqueString";
        v14 = 195;
      }
    }

    else
    {
      v13 = @"app identity has nil bundle identifier";
      v14 = 190;
    }
  }

  else
  {
    v13 = @"app identity is nil";
    v14 = 185;
  }

  v11 = _CreateError("+[MIAppIdentity validateAppIdentity:withError:]", v14, @"MIInstallerErrorDomain", 25, 0, 0, v13, v6, v16);
  if (a4)
  {
    v11 = v11;
    v12 = 0;
    *a4 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (id)_eligiblePersonaForBundle:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[MIUserManagement sharedInstance];
  v8 = +[MIGlobalConfiguration sharedInstance];
  v9 = [v8 systemAppPlaceholderBundleIDs];
  v10 = [v9 containsObject:v6];

  if (v10)
  {
    v11 = [v7 primaryPersonaUniqueString];
    v12 = 0;
    goto LABEL_18;
  }

  v29 = 0;
  v13 = [MIBundleContainer appBundleContainerForIdentifier:v6 inDomain:2 withError:&v29];
  v14 = v29;
  v12 = v14;
  if (!v13)
  {
    v19 = [v14 domain];
    if ([v19 isEqualToString:@"MIContainerManagerErrorDomain"])
    {
      v20 = [v12 code];

      if (v20 == 21)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v11 = 0;
LABEL_18:
    v13 = 0;
    if (!a4)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (!v11)
    {
      v22 = v12;
      *a4 = v12;
    }

    goto LABEL_28;
  }

  v15 = [v13 bundle];

  if (v15)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_25;
    }

    v28 = v12;
    v11 = [(MIAppIdentity *)self resolvePersonaUsingModuleSpecificLogicWithError:&v28];
    v16 = v28;

    if (v11)
    {
      goto LABEL_29;
    }

    v17 = [v16 domain];
    if ([v17 isEqualToString:@"MIInstallerErrorDomain"])
    {
      v18 = [v16 code];

      if (v18 == 161)
      {
LABEL_24:

        v12 = 0;
        goto LABEL_25;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 4)
    {
      v25 = v13;
      v26 = v16;
      v24 = v6;
      MOLogWrite();
    }

    goto LABEL_24;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 4)
  {
    v24 = v13;
    MOLogWrite();
  }

LABEL_25:
  v27 = v12;
  v11 = [v7 personaForBundleID:v6 error:{&v27, v24, v25, v26}];
  v21 = v27;

  v12 = v21;
  if (a4)
  {
    goto LABEL_26;
  }

LABEL_28:
  v16 = v12;
LABEL_29:

  return v11;
}

- (BOOL)resolvePersonaWithError:(id *)a3
{
  v5 = [(MIAppIdentity *)self isResolved];
  v6 = [(MIAppIdentity *)self personaUniqueString];
  v7 = [(MIAppIdentity *)self bundleID];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = 1;
    goto LABEL_30;
  }

  v11 = +[MIGlobalConfiguration sharedInstance];
  v12 = [v11 isSharediPad];

  if (v12)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9980]];
    v8 = 0;
    goto LABEL_5;
  }

  if (v6)
  {
    if ([v6 isEqualToString:@"Invalid"])
    {
      v8 = _CreateAndLogError("[MIAppIdentity resolvePersonaWithError:]", 291, @"MIInstallerErrorDomain", 191, 0, 0, @"Client provided invalid persona for %@", v13, v7);
      if (!a3)
      {
        goto LABEL_29;
      }

LABEL_26:
      v25 = v8;
      v10 = 0;
      v9 = 0;
      *a3 = v8;
      goto LABEL_30;
    }

    if ([v6 isEqualToString:@"PersonalPersonaPlaceholderString"])
    {
      v33 = 0;
      v9 = [(MIAppIdentity *)self _eligiblePersonaForBundle:v7 error:&v33];
      v8 = v33;
      if (!v9)
      {
        _CreateAndLogError("[MIAppIdentity resolvePersonaWithError:]", 296, @"MIInstallerErrorDomain", 191, v8, 0, @"Failed to resolve persona %@", v15, self);
        goto LABEL_25;
      }

      goto LABEL_5;
    }

    v16 = +[MIUserManagement sharedInstance];
    v32 = 0;
    v17 = [v16 isKnownPersonaUniqueString:v6 error:&v32];
    v19 = v32;
    if (v17)
    {
      v20 = [v16 systemPersonaUniqueString];
      v21 = [v6 isEqualToString:v20];

      if (!v21)
      {
        v8 = v19;
LABEL_32:
        v9 = v6;

        v6 = v9;
        goto LABEL_5;
      }

      v31 = v19;
      v22 = [v16 multiPersonaSADAppBundleIDsWithError:&v31];
      v8 = v31;

      if (v22)
      {
        if ([v22 containsObject:v7])
        {
          v23 = [v16 primaryPersonaUniqueString];

          v6 = v23;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v8 = _CreateAndLogError("[MIAppIdentity resolvePersonaWithError:]", 303, @"MIInstallerErrorDomain", 191, v19, 0, @"Client provided invalid persona for %@", v18, v7);
    }

    if (a3)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v30 = 0;
  v9 = [(MIAppIdentity *)self _eligiblePersonaForBundle:v7 error:&v30];
  v8 = v30;
  if (!v9)
  {
    _CreateAndLogError("[MIAppIdentity resolvePersonaWithError:]", 324, @"MIInstallerErrorDomain", 191, v8, 0, @"Failed to resolve persona %@", v14, self);
    v24 = LABEL_25:;

    v8 = v24;
    if (a3)
    {
      goto LABEL_26;
    }

LABEL_29:
    v10 = 0;
    v9 = 0;
    goto LABEL_30;
  }

  v6 = 0;
LABEL_5:
  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v28 = v6;
    v29 = v9;
    v27 = v7;
    MOLogWrite();
  }

  [(MIAppIdentity *)self setPersonaUniqueString:v9, v27, v28, v29];
  v10 = 1;
  [(MIAppIdentity *)self setIsResolved:1];
LABEL_30:

  return v10;
}

- (void)_doInitWithBundleID:(uint64_t)a1 personaUniqueString:location:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 136315394;
  v2 = "[MIAppIdentity _doInitWithBundleID:personaUniqueString:location:]";
  v3 = 2112;
  v4 = a1;
  _os_log_fault_impl(&dword_1B16A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s: Unexpectedly got nil persona for %@", &v1, 0x16u);
}

@end