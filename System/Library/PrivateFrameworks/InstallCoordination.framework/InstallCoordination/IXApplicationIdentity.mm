@interface IXApplicationIdentity
+ (id)identitiesForBundleIdentifiers:(id)identifiers;
- (BOOL)resolvePersonaRespectingSandboxingWithError:(id *)error;
- (BOOL)resolvePersonaWithError:(id *)error;
- (IXApplicationIdentity)initWithBundleID:(id)d personaUniqueString:(id)string location:(id)location;
- (IXApplicationIdentity)initWithBundleIdentifier:(id)identifier personaUniqueString:(id)string;
- (IXApplicationIdentity)initWithBundleIdentifier:(id)identifier personaUniqueString:(id)string location:(id)location;
- (IXApplicationIdentity)initWithCoder:(id)coder;
- (IXApplicationIdentity)initWithPlistKeySerialization:(id)serialization;
- (MIAppIdentity)miAppIdentity;
- (NSString)uniqueIdentifier;
- (id)canonicalSerializationForPlistKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initFromDelimitedString:(id)string;
- (id)initFromPlistDictionary:(id)dictionary;
- (id)initUsingPersonaFromCurrentThreadAndBundleIdentifier:(id)identifier;
- (id)possibleSerializationsForPlistKey;
- (id)resolvePersonaUsingModuleSpecificLogicWithError:(id *)error;
@end

@implementation IXApplicationIdentity

- (id)possibleSerializationsForPlistKey
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  canonicalSerializationForPlistKey = [(IXApplicationIdentity *)self canonicalSerializationForPlistKey];
  v10[0] = canonicalSerializationForPlistKey;
  bundleID = [(MIAppIdentity *)self bundleID];
  v10[1] = bundleID;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v3 setWithArray:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)canonicalSerializationForPlistKey
{
  isPersonalPersonaPlaceholder = [(IXApplicationIdentity *)self isPersonalPersonaPlaceholder];
  v4 = MEMORY[0x1E696AEC0];
  bundleID = [(MIAppIdentity *)self bundleID];
  v6 = bundleID;
  if (isPersonalPersonaPlaceholder)
  {
    v7 = [v4 stringWithFormat:@"%@", bundleID];
  }

  else
  {
    personaUniqueString = [(MIAppIdentity *)self personaUniqueString];
    v7 = [v4 stringWithFormat:@"%@%@%@", v6, @"/", personaUniqueString];
  }

  return v7;
}

- (id)description
{
  if ([(IXApplicationIdentity *)self isPersonalPersonaPlaceholder])
  {
    personaUniqueString = @"P";
  }

  else
  {
    personaUniqueString = [(MIAppIdentity *)self personaUniqueString];
  }

  v4 = MEMORY[0x1E696AEC0];
  bundleID = [(MIAppIdentity *)self bundleID];
  location = [(MIAppIdentity *)self location];
  v7 = [v4 stringWithFormat:@"[%@/%@/%@]", bundleID, personaUniqueString, location];

  return v7;
}

- (id)resolvePersonaUsingModuleSpecificLogicWithError:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8DC8] = [MEMORY[0x1E69A8DC8] sharedInstance];
  bundleID = [(MIAppIdentity *)self bundleID];
  v25 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:bundleID allowPlaceholder:1 error:&v25];
  v8 = v25;
  if (!v7)
  {
    v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [IXApplicationIdentity(IXUtilities) resolvePersonaUsingModuleSpecificLogicWithError:];
    }

    v18 = _CreateError("[IXApplicationIdentity(IXUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]", 48, @"IXErrorDomain", 1uLL, v8, 0, @"Failed to retrieve application record for bundleID: %@", v17, bundleID);
    identities = 0;
    goto LABEL_13;
  }

  identities = [v7 identities];
  if ([identities count] != 1)
  {
    v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "[IXApplicationIdentity(IXUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]";
      v28 = 2112;
      v29 = bundleID;
      v30 = 2112;
      v31 = identities;
      v32 = 2112;
      v33 = v8;
      _os_log_error_impl(&dword_1DA47A000, v19, OS_LOG_TYPE_ERROR, "%s: Discovered multiple personas for app %@, so persona resolution is ambiguous. Found identities: %@ : %@", buf, 0x2Au);
    }

    v18 = _CreateError("[IXApplicationIdentity(IXUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]", 58, @"IXErrorDomain", 1uLL, v8, 0, @"Discovered multiple personas for app %@, so persona resolution is ambiguous. Found identities: %@", v20, bundleID);
LABEL_13:
    personaUniqueString = 0;
    v15 = v8;
    v8 = v18;
    goto LABEL_14;
  }

  v10 = [identities objectAtIndexedSubscript:0];
  personaUniqueString = [v10 personaUniqueString];

  systemPersonaUniqueString = [mEMORY[0x1E69A8DC8] systemPersonaUniqueString];
  v13 = [personaUniqueString isEqualToString:systemPersonaUniqueString];

  if (v13)
  {
    primaryPersonaUniqueString = [mEMORY[0x1E69A8DC8] primaryPersonaUniqueString];

    personaUniqueString = primaryPersonaUniqueString;
  }

  v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [IXApplicationIdentity(IXUtilities) resolvePersonaUsingModuleSpecificLogicWithError:];
  }

LABEL_14:

  if (error && !personaUniqueString)
  {
    v21 = v8;
    *error = v8;
  }

  v22 = personaUniqueString;

  v23 = *MEMORY[0x1E69E9840];
  return personaUniqueString;
}

+ (id)identitiesForBundleIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [IXApplicationIdentity alloc];
        v12 = [(IXApplicationIdentity *)v11 initWithBundleIdentifier:v10, v16];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (IXApplicationIdentity)initWithBundleIdentifier:(id)identifier personaUniqueString:(id)string location:(id)location
{
  v11.receiver = self;
  v11.super_class = IXApplicationIdentity;
  stringCopy = string;
  v8 = [(MIAppIdentity *)&v11 initWithBundleIdentifier:identifier personaUniqueString:stringCopy location:location];
  v9 = [stringCopy isEqualToString:{@"PersonalPersonaPlaceholderString", v11.receiver, v11.super_class}];

  [(IXApplicationIdentity *)v8 setIsPersonalPersonaPlaceholder:v9];
  return v8;
}

- (IXApplicationIdentity)initWithBundleID:(id)d personaUniqueString:(id)string location:(id)location
{
  v11.receiver = self;
  v11.super_class = IXApplicationIdentity;
  stringCopy = string;
  v8 = [(MIAppIdentity *)&v11 initWithBundleIdentifier:d personaUniqueString:stringCopy location:location];
  v9 = [stringCopy isEqualToString:{@"PersonalPersonaPlaceholderString", v11.receiver, v11.super_class}];

  [(IXApplicationIdentity *)v8 setIsPersonalPersonaPlaceholder:v9];
  return v8;
}

- (IXApplicationIdentity)initWithBundleIdentifier:(id)identifier personaUniqueString:(id)string
{
  stringCopy = string;
  identifierCopy = identifier;
  v8 = objc_opt_new();
  v9 = [(IXApplicationIdentity *)self initWithBundleIdentifier:identifierCopy personaUniqueString:stringCopy location:v8];

  return v9;
}

- (id)initUsingPersonaFromCurrentThreadAndBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentPersona = [MEMORY[0x1E69DF078] currentPersona];
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];

  if (userPersonaUniqueString)
  {
    self = [(IXApplicationIdentity *)self initWithBundleIdentifier:identifierCopy personaUniqueString:userPersonaUniqueString];
    selfCopy = self;
  }

  else
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [IXApplicationIdentity initUsingPersonaFromCurrentThreadAndBundleIdentifier:v8];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (IXApplicationIdentity)initWithPlistKeySerialization:(id)serialization
{
  serializationCopy = serialization;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IXApplicationIdentity *)self initFromDelimitedString:serializationCopy];
LABEL_5:
    self = v5;
    selfCopy = self;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IXApplicationIdentity *)self initFromPlistDictionary:serializationCopy];
    goto LABEL_5;
  }

  v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [IXApplicationIdentity initWithPlistKeySerialization:];
  }

  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (id)initFromDelimitedString:(id)string
{
  v26 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = [stringCopy componentsSeparatedByString:@"/"];
  if ([v5 count])
  {
    if ([v5 count] == 1)
    {
      v6 = [v5 objectAtIndexedSubscript:0];
    }

    else
    {
      if ([v5 count] != 2)
      {
        v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          [(IXApplicationIdentity *)stringCopy initFromDelimitedString:v5];
        }

        selfCopy = 0;
        v7 = @"PersonalPersonaPlaceholderString";
        goto LABEL_18;
      }

      v6 = [v5 objectAtIndexedSubscript:0];
      v12 = [v5 objectAtIndexedSubscript:1];
      v13 = [v12 isEqualToString:@"P"];

      if ((v13 & 1) == 0)
      {
        v7 = [v5 objectAtIndexedSubscript:1];
        goto LABEL_5;
      }
    }

    v7 = @"PersonalPersonaPlaceholderString";
LABEL_5:
    v8 = objc_opt_new();
    self = [(IXApplicationIdentity *)self initWithBundleIdentifier:v6 personaUniqueString:v7 location:v8];

    v17 = 0;
    v9 = [(IXApplicationIdentity *)self resolvePersonaWithError:&v17];
    v10 = v17;
    if (v9)
    {
      [(IXApplicationIdentity *)self setIsPersonalPersonaPlaceholder:[(__CFString *)v7 isEqualToString:@"PersonalPersonaPlaceholderString"]];
      selfCopy = self;
    }

    else
    {
      v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        v19 = "[IXApplicationIdentity initFromDelimitedString:]";
        v20 = 2112;
        v21 = v7;
        v22 = 2112;
        v23 = v6;
        v24 = 2112;
        v25 = v10;
        _os_log_fault_impl(&dword_1DA47A000, v14, OS_LOG_TYPE_FAULT, "%s: Failed to resolve persona %@ for %@ : %@", buf, 0x2Au);
      }

      selfCopy = 0;
    }

LABEL_18:
    goto LABEL_19;
  }

  selfCopy = 0;
LABEL_19:

  v15 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)initFromPlistDictionary:(id)dictionary
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"personaString"];
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [IXApplicationIdentity initFromPlistDictionary:dictionaryCopy];
      }

      v11 = 0;
      selfCopy = 0;
      goto LABEL_33;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    objc_opt_class();
    v14 = v13;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"locationType"];
    objc_opt_class();
    v17 = v16;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      if (v15)
      {
        v27 = 0;
        v19 = [MEMORY[0x1E69A8D88] locationFromPlistDictionary:v15 error:&v27];
        v11 = v27;
        if (v19)
        {
          self = [(IXApplicationIdentity *)self initWithBundleIdentifier:v7 personaUniqueString:v10 location:v19];
          v26 = v11;
          v20 = [(IXApplicationIdentity *)self resolvePersonaWithError:&v26];
          v21 = v26;

          if (v20)
          {
            [(IXApplicationIdentity *)self setIsPersonalPersonaPlaceholder:[v10 isEqualToString:@"PersonalPersonaPlaceholderString"]];
            self = self;
            v11 = v21;
            selfCopy = self;
          }

          else
          {
            v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315906;
              v29 = "[IXApplicationIdentity initFromPlistDictionary:]";
              v30 = 2112;
              v31 = v10;
              v32 = 2112;
              v33 = v7;
              v34 = 2112;
              v35 = v21;
              _os_log_fault_impl(&dword_1DA47A000, v25, OS_LOG_TYPE_FAULT, "%s: Failed to resolve persona %@ for %@ : %@", buf, 0x2Au);
            }

            selfCopy = 0;
            v11 = v21;
          }

          goto LABEL_32;
        }

        v24 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          [IXApplicationIdentity initFromPlistDictionary:];
        }

LABEL_31:
        selfCopy = 0;
LABEL_32:

LABEL_33:
        goto LABEL_34;
      }

      v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [IXApplicationIdentity initFromPlistDictionary:dictionaryCopy];
      }
    }

    else
    {
      v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [IXApplicationIdentity initFromPlistDictionary:dictionaryCopy];
      }
    }

    v11 = 0;
    goto LABEL_31;
  }

  v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [IXApplicationIdentity initFromPlistDictionary:dictionaryCopy];
  }

  v11 = 0;
  selfCopy = 0;
LABEL_34:

  v22 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = IXApplicationIdentity;
  v3 = [(MIAppIdentity *)&v6 copyWithZone:zone];
  personaUniqueString = [v3 personaUniqueString];
  [v3 setIsPersonalPersonaPlaceholder:{objc_msgSend(personaUniqueString, "isEqualToString:", @"PersonalPersonaPlaceholderString"}];

  return v3;
}

- (NSString)uniqueIdentifier
{
  if ([(IXApplicationIdentity *)self isPersonalPersonaPlaceholder])
  {
    personaUniqueString = @"P";
  }

  else
  {
    personaUniqueString = [(MIAppIdentity *)self personaUniqueString];
  }

  v4 = MEMORY[0x1E696AEC0];
  bundleID = [(MIAppIdentity *)self bundleID];
  v6 = [v4 stringWithFormat:@"%@_%@", bundleID, personaUniqueString];

  return v6;
}

- (IXApplicationIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = IXApplicationIdentity;
  v5 = [(MIAppIdentity *)&v16 initWithCoder:coderCopy];
  bundleID = [(MIAppIdentity *)v5 bundleID];
  personaUniqueString = [(MIAppIdentity *)v5 personaUniqueString];
  v8 = personaUniqueString;
  if (bundleID)
  {
    v9 = personaUniqueString == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
LABEL_13:
    v5 = v5;
    v14 = v5;
    goto LABEL_14;
  }

  if (bundleID || ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"], (bundleID = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (!v8)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
      if (v10)
      {
        v8 = v10;
      }

      else
      {
        v8 = @"PersonalPersonaPlaceholderString";
      }
    }

    v11 = [IXApplicationIdentity alloc];
    location = [(MIAppIdentity *)v5 location];
    v13 = [(IXApplicationIdentity *)v11 initWithBundleIdentifier:bundleID personaUniqueString:v8 location:location];

    v5 = v13;
    goto LABEL_13;
  }

  bundleID = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(bundleID, OS_LOG_TYPE_FAULT))
  {
    [IXApplicationIdentity initWithCoder:bundleID];
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (BOOL)resolvePersonaWithError:(id *)error
{
  v14.receiver = self;
  v14.super_class = IXApplicationIdentity;
  v15 = 0;
  v5 = [(MIAppIdentity *)&v14 resolvePersonaWithError:&v15];
  v6 = v15;
  if (!v5)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(IXApplicationIdentity *)self resolvePersonaWithError:v6, v7];
    }

    bundleID = [(MIAppIdentity *)self bundleID];
    v10 = _CreateError("[IXApplicationIdentity resolvePersonaWithError:]", 323, @"IXErrorDomain", 0x38uLL, v6, 0, @"Client provided invalid persona for %@", v9, bundleID);

    if (error)
    {
      v11 = v10;
      *error = v10;
    }

    v6 = v10;
  }

  if ([(MIAppIdentity *)self isResolved])
  {
    [(IXApplicationIdentity *)self setIsPersonalPersonaPlaceholder:0];
  }

  else
  {
    personaUniqueString = [(MIAppIdentity *)self personaUniqueString];
    -[IXApplicationIdentity setIsPersonalPersonaPlaceholder:](self, "setIsPersonalPersonaPlaceholder:", [personaUniqueString isEqualToString:@"PersonalPersonaPlaceholderString"]);
  }

  return v5;
}

- (MIAppIdentity)miAppIdentity
{
  v3 = objc_alloc(MEMORY[0x1E69A8D68]);
  bundleID = [(MIAppIdentity *)self bundleID];
  personaUniqueString = [(MIAppIdentity *)self personaUniqueString];
  location = [(MIAppIdentity *)self location];
  v7 = [v3 initWithBundleIdentifier:bundleID personaUniqueString:personaUniqueString location:location];

  [v7 setIsResolved:{-[MIAppIdentity isResolved](self, "isResolved")}];

  return v7;
}

- (BOOL)resolvePersonaRespectingSandboxingWithError:(id *)error
{
  if (![(IXApplicationIdentity *)self isPersonalPersonaPlaceholder])
  {
    v5 = 0;
    v6 = 1;
    goto LABEL_13;
  }

  if (_ProcessCanAccessUM_onceToken != -1)
  {
    [IXApplicationIdentity resolvePersonaRespectingSandboxingWithError:];
  }

  if (_ProcessCanAccessUM_canQueryUM)
  {
    v5 = 0;
  }

  else
  {
    v7 = _ProcessCanAccessUM_error;
    v8 = _ProcessCanAccessUM_canQueryUM;
    v5 = v7;
    if ((v8 & 1) == 0)
    {
      v6 = 0;
      if (!error)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  v12 = v5;
  v6 = [(IXApplicationIdentity *)self resolvePersonaWithError:&v12];
  v9 = v12;

  v5 = v9;
  if (!error)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v6)
  {
    v10 = v5;
    v6 = 0;
    *error = v5;
  }

LABEL_13:

  return v6;
}

- (void)initUsingPersonaFromCurrentThreadAndBundleIdentifier:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[IXApplicationIdentity initUsingPersonaFromCurrentThreadAndBundleIdentifier:]";
  _os_log_fault_impl(&dword_1DA47A000, log, OS_LOG_TYPE_FAULT, "%s: UserManagement returned nil for the current thread's persona", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithPlistKeySerialization:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_7();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)initFromDelimitedString:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  [a2 count];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_7();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)initFromPlistDictionary:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_4_1();
  v5 = @"location";
  v6 = v0;
  v7 = v1;
  _os_log_fault_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_FAULT, "%s: Plist key [%@] faled to decode; error = %@", v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)initFromPlistDictionary:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectForKeyedSubscript:@"location"];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_7();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initFromPlistDictionary:(void *)a1 .cold.3(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectForKeyedSubscript:@"locationType"];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_7();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initFromPlistDictionary:(void *)a1 .cold.4(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectForKeyedSubscript:@"personaString"];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_7();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initFromPlistDictionary:(void *)a1 .cold.5(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectForKeyedSubscript:@"bundleID"];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_7();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[IXApplicationIdentity initWithCoder:]";
  _os_log_fault_impl(&dword_1DA47A000, log, OS_LOG_TYPE_FAULT, "%s: Failed to deserialize bundle ID for identity", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)resolvePersonaWithError:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [a1 bundleID];
  v9[0] = 136315650;
  OUTLINED_FUNCTION_4_1();
  v10 = v6;
  v11 = v7;
  v12 = a2;
  _os_log_error_impl(&dword_1DA47A000, a3, OS_LOG_TYPE_ERROR, "%s: Client provided invalid persona for %@ : %@", v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

@end