@interface MIAppIdentity
+ (BOOL)validateAppIdentity:(id)identity withError:(id *)error;
+ (id)_locationClassCluster;
- (BOOL)isEqual:(id)equal;
- (BOOL)resolvePersonaWithError:(id *)error;
- (MIAppIdentity)initWithBundleID:(id)d personaUniqueString:(id)string location:(id)location;
- (MIAppIdentity)initWithBundleIdentifier:(id)identifier personaUniqueString:(id)string;
- (MIAppIdentity)initWithBundleIdentifier:(id)identifier personaUniqueString:(id)string location:(id)location;
- (MIAppIdentity)initWithCoder:(id)coder;
- (id)_eligiblePersonaForBundle:(id)bundle error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)identityByChangingLocation:(id)location;
- (unint64_t)hash;
- (void)_doInitWithBundleID:(id)d personaUniqueString:(id)string location:(id)location;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIAppIdentity

- (unint64_t)hash
{
  bundleID = [(MIAppIdentity *)self bundleID];
  v4 = [bundleID hash];
  personaUniqueString = [(MIAppIdentity *)self personaUniqueString];
  v6 = [personaUniqueString hash] ^ v4;
  location = [(MIAppIdentity *)self location];
  v8 = [location hash];

  return v6 ^ v8;
}

- (void)_doInitWithBundleID:(id)d personaUniqueString:(id)string location:(id)location
{
  dCopy = d;
  stringCopy = string;
  locationCopy = location;
  objc_storeStrong(&self->_bundleID, d);
  if (!stringCopy)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [MIAppIdentity _doInitWithBundleID:dCopy personaUniqueString:? location:?];
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    stringCopy = @"PersonalPersonaPlaceholderString";
  }

  personaUniqueString = self->_personaUniqueString;
  self->_personaUniqueString = &stringCopy->isa;
  v13 = stringCopy;

  self->_isResolved = 0;
  location = self->_location;
  self->_location = locationCopy;
}

- (MIAppIdentity)initWithBundleIdentifier:(id)identifier personaUniqueString:(id)string location:(id)location
{
  identifierCopy = identifier;
  stringCopy = string;
  locationCopy = location;
  v14.receiver = self;
  v14.super_class = MIAppIdentity;
  v11 = [(MIAppIdentity *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MIAppIdentity *)v11 _doInitWithBundleID:identifierCopy personaUniqueString:stringCopy location:locationCopy];
  }

  return v12;
}

- (MIAppIdentity)initWithBundleID:(id)d personaUniqueString:(id)string location:(id)location
{
  dCopy = d;
  stringCopy = string;
  locationCopy = location;
  v14.receiver = self;
  v14.super_class = MIAppIdentity;
  v11 = [(MIAppIdentity *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MIAppIdentity *)v11 _doInitWithBundleID:dCopy personaUniqueString:stringCopy location:locationCopy];
  }

  return v12;
}

- (MIAppIdentity)initWithBundleIdentifier:(id)identifier personaUniqueString:(id)string
{
  stringCopy = string;
  identifierCopy = identifier;
  v8 = objc_opt_new();
  v9 = [(MIAppIdentity *)self initWithBundleIdentifier:identifierCopy personaUniqueString:stringCopy location:v8];

  return v9;
}

- (id)identityByChangingLocation:(id)location
{
  locationCopy = location;
  v5 = [(MIAppIdentity *)self copy];
  v6 = v5[4];
  v5[4] = locationCopy;

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

- (MIAppIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MIAppIdentity;
  v5 = [(MIAppIdentity *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
    personaUniqueString = v5->_personaUniqueString;
    v5->_personaUniqueString = v8;

    v5->_isResolved = [coderCopy decodeBoolForKey:@"isResolved"];
    _locationClassCluster = [objc_opt_class() _locationClassCluster];
    v11 = [coderCopy decodeObjectOfClasses:_locationClassCluster forKey:@"location"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleID = [(MIAppIdentity *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  personaUniqueString = [(MIAppIdentity *)self personaUniqueString];
  [coderCopy encodeObject:personaUniqueString forKey:@"personaUniqueString"];

  [coderCopy encodeBool:-[MIAppIdentity isResolved](self forKey:{"isResolved"), @"isResolved"}];
  location = [(MIAppIdentity *)self location];
  [coderCopy encodeObject:location forKey:@"location"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  bundleID = [(MIAppIdentity *)self bundleID];
  [v4 setBundleID:bundleID];

  personaUniqueString = [(MIAppIdentity *)self personaUniqueString];
  [v4 setPersonaUniqueString:personaUniqueString];

  [v4 setIsResolved:{-[MIAppIdentity isResolved](self, "isResolved")}];
  location = [(MIAppIdentity *)self location];
  [v4 setLocation:location];

  return v4;
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
      bundleID = [(MIAppIdentity *)self bundleID];
      bundleID2 = [(MIAppIdentity *)v5 bundleID];
      v8 = MICompareObjects(bundleID, bundleID2);

      if (v8 && ([(MIAppIdentity *)self personaUniqueString], v9 = objc_claimAutoreleasedReturnValue(), [(MIAppIdentity *)v5 personaUniqueString], v10 = objc_claimAutoreleasedReturnValue(), v11 = MICompareObjects(v9, v10), v10, v9, v11))
      {
        location = [(MIAppIdentity *)self location];
        location2 = [(MIAppIdentity *)v5 location];
        v14 = MICompareObjects(location, location2);
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
  bundleID = [(MIAppIdentity *)self bundleID];
  personaUniqueString = [(MIAppIdentity *)self personaUniqueString];
  location = [(MIAppIdentity *)self location];
  v7 = [v3 stringWithFormat:@"[%@/%@/%@]", bundleID, personaUniqueString, location];

  return v7;
}

+ (BOOL)validateAppIdentity:(id)identity withError:(id *)error
{
  identityCopy = identity;
  v7 = identityCopy;
  if (identityCopy)
  {
    bundleID = [identityCopy bundleID];

    if (bundleID)
    {
      personaUniqueString = [v7 personaUniqueString];

      if (personaUniqueString)
      {
        location = [v7 location];

        if (location)
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
  if (error)
  {
    v11 = v11;
    v12 = 0;
    *error = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (id)_eligiblePersonaForBundle:(id)bundle error:(id *)error
{
  bundleCopy = bundle;
  v7 = +[MIUserManagement sharedInstance];
  v8 = +[MIGlobalConfiguration sharedInstance];
  systemAppPlaceholderBundleIDs = [v8 systemAppPlaceholderBundleIDs];
  v10 = [systemAppPlaceholderBundleIDs containsObject:bundleCopy];

  if (v10)
  {
    primaryPersonaUniqueString = [v7 primaryPersonaUniqueString];
    v12 = 0;
    goto LABEL_18;
  }

  v29 = 0;
  v13 = [MIBundleContainer appBundleContainerForIdentifier:bundleCopy inDomain:2 withError:&v29];
  v14 = v29;
  v12 = v14;
  if (!v13)
  {
    domain = [v14 domain];
    if ([domain isEqualToString:@"MIContainerManagerErrorDomain"])
    {
      code = [v12 code];

      if (code == 21)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    primaryPersonaUniqueString = 0;
LABEL_18:
    v13 = 0;
    if (!error)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (!primaryPersonaUniqueString)
    {
      v22 = v12;
      *error = v12;
    }

    goto LABEL_28;
  }

  bundle = [v13 bundle];

  if (bundle)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_25;
    }

    v28 = v12;
    primaryPersonaUniqueString = [(MIAppIdentity *)self resolvePersonaUsingModuleSpecificLogicWithError:&v28];
    v16 = v28;

    if (primaryPersonaUniqueString)
    {
      goto LABEL_29;
    }

    domain2 = [v16 domain];
    if ([domain2 isEqualToString:@"MIInstallerErrorDomain"])
    {
      code2 = [v16 code];

      if (code2 == 161)
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
      v24 = bundleCopy;
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
  primaryPersonaUniqueString = [v7 personaForBundleID:bundleCopy error:{&v27, v24, v25, v26}];
  v21 = v27;

  v12 = v21;
  if (error)
  {
    goto LABEL_26;
  }

LABEL_28:
  v16 = v12;
LABEL_29:

  return primaryPersonaUniqueString;
}

- (BOOL)resolvePersonaWithError:(id *)error
{
  isResolved = [(MIAppIdentity *)self isResolved];
  personaUniqueString = [(MIAppIdentity *)self personaUniqueString];
  bundleID = [(MIAppIdentity *)self bundleID];
  if (isResolved)
  {
    v8 = 0;
    v9 = 0;
    v10 = 1;
    goto LABEL_30;
  }

  v11 = +[MIGlobalConfiguration sharedInstance];
  isSharediPad = [v11 isSharediPad];

  if (isSharediPad)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9980]];
    v8 = 0;
    goto LABEL_5;
  }

  if (personaUniqueString)
  {
    if ([personaUniqueString isEqualToString:@"Invalid"])
    {
      v8 = _CreateAndLogError("[MIAppIdentity resolvePersonaWithError:]", 291, @"MIInstallerErrorDomain", 191, 0, 0, @"Client provided invalid persona for %@", v13, bundleID);
      if (!error)
      {
        goto LABEL_29;
      }

LABEL_26:
      v25 = v8;
      v10 = 0;
      v9 = 0;
      *error = v8;
      goto LABEL_30;
    }

    if ([personaUniqueString isEqualToString:@"PersonalPersonaPlaceholderString"])
    {
      v33 = 0;
      v9 = [(MIAppIdentity *)self _eligiblePersonaForBundle:bundleID error:&v33];
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
    v17 = [v16 isKnownPersonaUniqueString:personaUniqueString error:&v32];
    v19 = v32;
    if (v17)
    {
      systemPersonaUniqueString = [v16 systemPersonaUniqueString];
      v21 = [personaUniqueString isEqualToString:systemPersonaUniqueString];

      if (!v21)
      {
        v8 = v19;
LABEL_32:
        v9 = personaUniqueString;

        personaUniqueString = v9;
        goto LABEL_5;
      }

      v31 = v19;
      v22 = [v16 multiPersonaSADAppBundleIDsWithError:&v31];
      v8 = v31;

      if (v22)
      {
        if ([v22 containsObject:bundleID])
        {
          primaryPersonaUniqueString = [v16 primaryPersonaUniqueString];

          personaUniqueString = primaryPersonaUniqueString;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v8 = _CreateAndLogError("[MIAppIdentity resolvePersonaWithError:]", 303, @"MIInstallerErrorDomain", 191, v19, 0, @"Client provided invalid persona for %@", v18, bundleID);
    }

    if (error)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v30 = 0;
  v9 = [(MIAppIdentity *)self _eligiblePersonaForBundle:bundleID error:&v30];
  v8 = v30;
  if (!v9)
  {
    _CreateAndLogError("[MIAppIdentity resolvePersonaWithError:]", 324, @"MIInstallerErrorDomain", 191, v8, 0, @"Failed to resolve persona %@", v14, self);
    v24 = LABEL_25:;

    v8 = v24;
    if (error)
    {
      goto LABEL_26;
    }

LABEL_29:
    v10 = 0;
    v9 = 0;
    goto LABEL_30;
  }

  personaUniqueString = 0;
LABEL_5:
  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v28 = personaUniqueString;
    v29 = v9;
    v27 = bundleID;
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