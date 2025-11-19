@interface IXApplicationIdentity
+ (id)identitiesForBundleIdentifiers:(id)a3;
- (BOOL)resolvePersonaRespectingSandboxingWithError:(id *)a3;
- (BOOL)resolvePersonaWithError:(id *)a3;
- (IXApplicationIdentity)initWithBundleID:(id)a3 personaUniqueString:(id)a4 location:(id)a5;
- (IXApplicationIdentity)initWithBundleIdentifier:(id)a3 personaUniqueString:(id)a4;
- (IXApplicationIdentity)initWithBundleIdentifier:(id)a3 personaUniqueString:(id)a4 location:(id)a5;
- (IXApplicationIdentity)initWithCoder:(id)a3;
- (IXApplicationIdentity)initWithPlistKeySerialization:(id)a3;
- (MIAppIdentity)miAppIdentity;
- (NSString)uniqueIdentifier;
- (id)canonicalSerializationForPlistKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initFromDelimitedString:(id)a3;
- (id)initFromPlistDictionary:(id)a3;
- (id)initUsingPersonaFromCurrentThreadAndBundleIdentifier:(id)a3;
- (id)possibleSerializationsForPlistKey;
- (id)resolvePersonaUsingModuleSpecificLogicWithError:(id *)a3;
@end

@implementation IXApplicationIdentity

- (id)possibleSerializationsForPlistKey
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(IXApplicationIdentity *)self canonicalSerializationForPlistKey];
  v10[0] = v4;
  v5 = [(MIAppIdentity *)self bundleID];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v3 setWithArray:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)canonicalSerializationForPlistKey
{
  v3 = [(IXApplicationIdentity *)self isPersonalPersonaPlaceholder];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(MIAppIdentity *)self bundleID];
  v6 = v5;
  if (v3)
  {
    v7 = [v4 stringWithFormat:@"%@", v5];
  }

  else
  {
    v8 = [(MIAppIdentity *)self personaUniqueString];
    v7 = [v4 stringWithFormat:@"%@%@%@", v6, @"/", v8];
  }

  return v7;
}

- (id)description
{
  if ([(IXApplicationIdentity *)self isPersonalPersonaPlaceholder])
  {
    v3 = @"P";
  }

  else
  {
    v3 = [(MIAppIdentity *)self personaUniqueString];
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = [(MIAppIdentity *)self bundleID];
  v6 = [(MIAppIdentity *)self location];
  v7 = [v4 stringWithFormat:@"[%@/%@/%@]", v5, v3, v6];

  return v7;
}

- (id)resolvePersonaUsingModuleSpecificLogicWithError:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69A8DC8] sharedInstance];
  v6 = [(MIAppIdentity *)self bundleID];
  v25 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:1 error:&v25];
  v8 = v25;
  if (!v7)
  {
    v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [IXApplicationIdentity(IXUtilities) resolvePersonaUsingModuleSpecificLogicWithError:];
    }

    v18 = _CreateError("[IXApplicationIdentity(IXUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]", 48, @"IXErrorDomain", 1uLL, v8, 0, @"Failed to retrieve application record for bundleID: %@", v17, v6);
    v9 = 0;
    goto LABEL_13;
  }

  v9 = [v7 identities];
  if ([v9 count] != 1)
  {
    v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "[IXApplicationIdentity(IXUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]";
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v8;
      _os_log_error_impl(&dword_1DA47A000, v19, OS_LOG_TYPE_ERROR, "%s: Discovered multiple personas for app %@, so persona resolution is ambiguous. Found identities: %@ : %@", buf, 0x2Au);
    }

    v18 = _CreateError("[IXApplicationIdentity(IXUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]", 58, @"IXErrorDomain", 1uLL, v8, 0, @"Discovered multiple personas for app %@, so persona resolution is ambiguous. Found identities: %@", v20, v6);
LABEL_13:
    v11 = 0;
    v15 = v8;
    v8 = v18;
    goto LABEL_14;
  }

  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v10 personaUniqueString];

  v12 = [v5 systemPersonaUniqueString];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    v14 = [v5 primaryPersonaUniqueString];

    v11 = v14;
  }

  v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [IXApplicationIdentity(IXUtilities) resolvePersonaUsingModuleSpecificLogicWithError:];
  }

LABEL_14:

  if (a3 && !v11)
  {
    v21 = v8;
    *a3 = v8;
  }

  v22 = v11;

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)identitiesForBundleIdentifiers:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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

- (IXApplicationIdentity)initWithBundleIdentifier:(id)a3 personaUniqueString:(id)a4 location:(id)a5
{
  v11.receiver = self;
  v11.super_class = IXApplicationIdentity;
  v7 = a4;
  v8 = [(MIAppIdentity *)&v11 initWithBundleIdentifier:a3 personaUniqueString:v7 location:a5];
  v9 = [v7 isEqualToString:{@"PersonalPersonaPlaceholderString", v11.receiver, v11.super_class}];

  [(IXApplicationIdentity *)v8 setIsPersonalPersonaPlaceholder:v9];
  return v8;
}

- (IXApplicationIdentity)initWithBundleID:(id)a3 personaUniqueString:(id)a4 location:(id)a5
{
  v11.receiver = self;
  v11.super_class = IXApplicationIdentity;
  v7 = a4;
  v8 = [(MIAppIdentity *)&v11 initWithBundleIdentifier:a3 personaUniqueString:v7 location:a5];
  v9 = [v7 isEqualToString:{@"PersonalPersonaPlaceholderString", v11.receiver, v11.super_class}];

  [(IXApplicationIdentity *)v8 setIsPersonalPersonaPlaceholder:v9];
  return v8;
}

- (IXApplicationIdentity)initWithBundleIdentifier:(id)a3 personaUniqueString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(IXApplicationIdentity *)self initWithBundleIdentifier:v7 personaUniqueString:v6 location:v8];

  return v9;
}

- (id)initUsingPersonaFromCurrentThreadAndBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DF078] currentPersona];
  v6 = [v5 userPersonaUniqueString];

  if (v6)
  {
    self = [(IXApplicationIdentity *)self initWithBundleIdentifier:v4 personaUniqueString:v6];
    v7 = self;
  }

  else
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [IXApplicationIdentity initUsingPersonaFromCurrentThreadAndBundleIdentifier:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (IXApplicationIdentity)initWithPlistKeySerialization:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IXApplicationIdentity *)self initFromDelimitedString:v4];
LABEL_5:
    self = v5;
    v6 = self;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IXApplicationIdentity *)self initFromPlistDictionary:v4];
    goto LABEL_5;
  }

  v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [IXApplicationIdentity initWithPlistKeySerialization:];
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)initFromDelimitedString:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"/"];
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
          [(IXApplicationIdentity *)v4 initFromDelimitedString:v5];
        }

        v11 = 0;
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
      v11 = self;
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

      v11 = 0;
    }

LABEL_18:
    goto LABEL_19;
  }

  v11 = 0;
LABEL_19:

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)initFromPlistDictionary:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"bundleID"];
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
    v8 = [v4 objectForKeyedSubscript:@"personaString"];
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
        [IXApplicationIdentity initFromPlistDictionary:v4];
      }

      v11 = 0;
      v12 = 0;
      goto LABEL_33;
    }

    v13 = [v4 objectForKeyedSubscript:@"location"];
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

    v16 = [v4 objectForKeyedSubscript:@"locationType"];
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
            v12 = self;
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

            v12 = 0;
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
        v12 = 0;
LABEL_32:

LABEL_33:
        goto LABEL_34;
      }

      v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [IXApplicationIdentity initFromPlistDictionary:v4];
      }
    }

    else
    {
      v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [IXApplicationIdentity initFromPlistDictionary:v4];
      }
    }

    v11 = 0;
    goto LABEL_31;
  }

  v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [IXApplicationIdentity initFromPlistDictionary:v4];
  }

  v11 = 0;
  v12 = 0;
LABEL_34:

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = IXApplicationIdentity;
  v3 = [(MIAppIdentity *)&v6 copyWithZone:a3];
  v4 = [v3 personaUniqueString];
  [v3 setIsPersonalPersonaPlaceholder:{objc_msgSend(v4, "isEqualToString:", @"PersonalPersonaPlaceholderString"}];

  return v3;
}

- (NSString)uniqueIdentifier
{
  if ([(IXApplicationIdentity *)self isPersonalPersonaPlaceholder])
  {
    v3 = @"P";
  }

  else
  {
    v3 = [(MIAppIdentity *)self personaUniqueString];
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = [(MIAppIdentity *)self bundleID];
  v6 = [v4 stringWithFormat:@"%@_%@", v5, v3];

  return v6;
}

- (IXApplicationIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IXApplicationIdentity;
  v5 = [(MIAppIdentity *)&v16 initWithCoder:v4];
  v6 = [(MIAppIdentity *)v5 bundleID];
  v7 = [(MIAppIdentity *)v5 personaUniqueString];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
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

  if (v6 || ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (!v8)
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
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
    v12 = [(MIAppIdentity *)v5 location];
    v13 = [(IXApplicationIdentity *)v11 initWithBundleIdentifier:v6 personaUniqueString:v8 location:v12];

    v5 = v13;
    goto LABEL_13;
  }

  v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [IXApplicationIdentity initWithCoder:v6];
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (BOOL)resolvePersonaWithError:(id *)a3
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

    v8 = [(MIAppIdentity *)self bundleID];
    v10 = _CreateError("[IXApplicationIdentity resolvePersonaWithError:]", 323, @"IXErrorDomain", 0x38uLL, v6, 0, @"Client provided invalid persona for %@", v9, v8);

    if (a3)
    {
      v11 = v10;
      *a3 = v10;
    }

    v6 = v10;
  }

  if ([(MIAppIdentity *)self isResolved])
  {
    [(IXApplicationIdentity *)self setIsPersonalPersonaPlaceholder:0];
  }

  else
  {
    v12 = [(MIAppIdentity *)self personaUniqueString];
    -[IXApplicationIdentity setIsPersonalPersonaPlaceholder:](self, "setIsPersonalPersonaPlaceholder:", [v12 isEqualToString:@"PersonalPersonaPlaceholderString"]);
  }

  return v5;
}

- (MIAppIdentity)miAppIdentity
{
  v3 = objc_alloc(MEMORY[0x1E69A8D68]);
  v4 = [(MIAppIdentity *)self bundleID];
  v5 = [(MIAppIdentity *)self personaUniqueString];
  v6 = [(MIAppIdentity *)self location];
  v7 = [v3 initWithBundleIdentifier:v4 personaUniqueString:v5 location:v6];

  [v7 setIsResolved:{-[MIAppIdentity isResolved](self, "isResolved")}];

  return v7;
}

- (BOOL)resolvePersonaRespectingSandboxingWithError:(id *)a3
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
      if (!a3)
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
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v6)
  {
    v10 = v5;
    v6 = 0;
    *a3 = v5;
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