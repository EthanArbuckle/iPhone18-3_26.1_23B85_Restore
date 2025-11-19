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

+ (id)identitiesForBundleIdentifiers:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
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
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [IXApplicationIdentity alloc];
        v12 = [(IXApplicationIdentity *)v11 initWithBundleIdentifier:v10, v15];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (IXApplicationIdentity)initWithBundleIdentifier:(id)a3 personaUniqueString:(id)a4 location:(id)a5
{
  v11.receiver = self;
  v11.super_class = IXApplicationIdentity;
  v7 = a4;
  v8 = [(IXApplicationIdentity *)&v11 initWithBundleIdentifier:a3 personaUniqueString:v7 location:a5];
  v9 = [v7 isEqualToString:{@"PersonalPersonaPlaceholderString", v11.receiver, v11.super_class}];

  [(IXApplicationIdentity *)v8 setIsPersonalPersonaPlaceholder:v9];
  return v8;
}

- (IXApplicationIdentity)initWithBundleID:(id)a3 personaUniqueString:(id)a4 location:(id)a5
{
  v11.receiver = self;
  v11.super_class = IXApplicationIdentity;
  v7 = a4;
  v8 = [(IXApplicationIdentity *)&v11 initWithBundleIdentifier:a3 personaUniqueString:v7 location:a5];
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
  v5 = +[UMUserPersona currentPersona];
  v6 = [v5 userPersonaUniqueString];

  if (v6)
  {
    self = [(IXApplicationIdentity *)self initWithBundleIdentifier:v4 personaUniqueString:v6];
    v7 = self;
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1000984E8(v8);
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

  v7 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_10009856C();
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)initFromDelimitedString:(id)a3
{
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
        v6 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          sub_10009860C(v4, v5);
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

    v16 = 0;
    v9 = [(IXApplicationIdentity *)self resolvePersonaWithError:&v16];
    v10 = v16;
    if (v9)
    {
      [(IXApplicationIdentity *)self setIsPersonalPersonaPlaceholder:[(__CFString *)v7 isEqualToString:@"PersonalPersonaPlaceholderString"]];
      v11 = self;
    }

    else
    {
      v14 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        v18 = "[IXApplicationIdentity initFromDelimitedString:]";
        v19 = 2112;
        v20 = v7;
        v21 = 2112;
        v22 = v6;
        v23 = 2112;
        v24 = v10;
        _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "%s: Failed to resolve persona %@ for %@ : %@", buf, 0x2Au);
      }

      v11 = 0;
    }

LABEL_18:
    goto LABEL_19;
  }

  v11 = 0;
LABEL_19:

  return v11;
}

- (id)initFromPlistDictionary:(id)a3
{
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
      v15 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_1000988CC(v4);
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
        v26 = 0;
        v19 = [MILocation locationFromPlistDictionary:v15 error:&v26];
        v11 = v26;
        if (v19)
        {
          self = [(IXApplicationIdentity *)self initWithBundleIdentifier:v7 personaUniqueString:v10 location:v19];
          v25 = v11;
          v20 = [(IXApplicationIdentity *)self resolvePersonaWithError:&v25];
          v21 = v25;

          if (v20)
          {
            [(IXApplicationIdentity *)self setIsPersonalPersonaPlaceholder:[v10 isEqualToString:@"PersonalPersonaPlaceholderString"]];
            self = self;
            v11 = v21;
            v12 = self;
          }

          else
          {
            v24 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315906;
              v28 = "[IXApplicationIdentity initFromPlistDictionary:]";
              v29 = 2112;
              v30 = v10;
              v31 = 2112;
              v32 = v7;
              v33 = 2112;
              v34 = v21;
              _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "%s: Failed to resolve persona %@ for %@ : %@", buf, 0x2Au);
            }

            v12 = 0;
            v11 = v21;
          }

          goto LABEL_32;
        }

        v23 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          sub_1000986B0();
        }

LABEL_31:
        v12 = 0;
LABEL_32:

LABEL_33:
        goto LABEL_34;
      }

      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_100098744(v4);
      }
    }

    else
    {
      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_100098808(v4);
      }
    }

    v11 = 0;
    goto LABEL_31;
  }

  v10 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    sub_100098990(v4);
  }

  v11 = 0;
  v12 = 0;
LABEL_34:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = IXApplicationIdentity;
  v3 = [(IXApplicationIdentity *)&v6 copyWithZone:a3];
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
    v3 = [(IXApplicationIdentity *)self personaUniqueString];
  }

  v4 = [(IXApplicationIdentity *)self bundleID];
  v5 = [NSString stringWithFormat:@"%@_%@", v4, v3];

  return v5;
}

- (id)canonicalSerializationForPlistKey
{
  v3 = [(IXApplicationIdentity *)self isPersonalPersonaPlaceholder];
  v4 = [(IXApplicationIdentity *)self bundleID];
  v5 = v4;
  if (v3)
  {
    v6 = [NSString stringWithFormat:@"%@", v4];
  }

  else
  {
    v7 = [(IXApplicationIdentity *)self personaUniqueString];
    v6 = [NSString stringWithFormat:@"%@%@%@", v5, @"/", v7];
  }

  return v6;
}

- (id)possibleSerializationsForPlistKey
{
  v3 = [(IXApplicationIdentity *)self canonicalSerializationForPlistKey];
  v8[0] = v3;
  v4 = [(IXApplicationIdentity *)self bundleID];
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

- (id)description
{
  if ([(IXApplicationIdentity *)self isPersonalPersonaPlaceholder])
  {
    v3 = @"P";
  }

  else
  {
    v3 = [(IXApplicationIdentity *)self personaUniqueString];
  }

  v4 = [(IXApplicationIdentity *)self bundleID];
  v5 = [(IXApplicationIdentity *)self location];
  v6 = [NSString stringWithFormat:@"[%@/%@/%@]", v4, v3, v5];

  return v6;
}

- (IXApplicationIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IXApplicationIdentity;
  v5 = [(IXApplicationIdentity *)&v16 initWithCoder:v4];
  v6 = [(IXApplicationIdentity *)v5 bundleID];
  v7 = [(IXApplicationIdentity *)v5 personaUniqueString];
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
    v12 = [(IXApplicationIdentity *)v5 location];
    v13 = [(IXApplicationIdentity *)v11 initWithBundleIdentifier:v6 personaUniqueString:v8 location:v12];

    v5 = v13;
    goto LABEL_13;
  }

  v6 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_100098A54(v6);
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
  v5 = [(IXApplicationIdentity *)&v14 resolvePersonaWithError:&v15];
  v6 = v15;
  if (!v5)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100098AD8(self, v6, v7);
    }

    v8 = [(IXApplicationIdentity *)self bundleID];
    v10 = sub_1000405FC("[IXApplicationIdentity resolvePersonaWithError:]", 323, @"IXErrorDomain", 0x38uLL, v6, 0, @"Client provided invalid persona for %@", v9, v8);

    if (a3)
    {
      v11 = v10;
      *a3 = v10;
    }

    v6 = v10;
  }

  if ([(IXApplicationIdentity *)self isResolved])
  {
    [(IXApplicationIdentity *)self setIsPersonalPersonaPlaceholder:0];
  }

  else
  {
    v12 = [(IXApplicationIdentity *)self personaUniqueString];
    -[IXApplicationIdentity setIsPersonalPersonaPlaceholder:](self, "setIsPersonalPersonaPlaceholder:", [v12 isEqualToString:@"PersonalPersonaPlaceholderString"]);
  }

  return v5;
}

- (MIAppIdentity)miAppIdentity
{
  v3 = [MIAppIdentity alloc];
  v4 = [(IXApplicationIdentity *)self bundleID];
  v5 = [(IXApplicationIdentity *)self personaUniqueString];
  v6 = [(IXApplicationIdentity *)self location];
  v7 = [v3 initWithBundleIdentifier:v4 personaUniqueString:v5 location:v6];

  [v7 setIsResolved:{-[IXApplicationIdentity isResolved](self, "isResolved")}];

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

  if (qword_100121C80 != -1)
  {
    sub_100098B90();
  }

  if (byte_100121C70)
  {
    v5 = 0;
  }

  else
  {
    v7 = qword_100121C78;
    v8 = byte_100121C70;
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

- (id)resolvePersonaUsingModuleSpecificLogicWithError:(id *)a3
{
  v5 = +[MIUserManagement sharedInstance];
  v6 = [(IXApplicationIdentity *)self bundleID];
  v24 = 0;
  v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v6 allowPlaceholder:1 error:&v24];
  v8 = v24;
  if (!v7)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10009E494();
    }

    v18 = sub_1000405FC("[IXApplicationIdentity(IXUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]", 48, @"IXErrorDomain", 1uLL, v8, 0, @"Failed to retrieve application record for bundleID: %@", v17, v6);
    v9 = 0;
    goto LABEL_13;
  }

  v9 = [v7 identities];
  if ([v9 count] != 1)
  {
    v19 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v26 = "[IXApplicationIdentity(IXUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]";
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v8;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: Discovered multiple personas for app %@, so persona resolution is ambiguous. Found identities: %@ : %@", buf, 0x2Au);
    }

    v18 = sub_1000405FC("[IXApplicationIdentity(IXUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]", 58, @"IXErrorDomain", 1uLL, v8, 0, @"Discovered multiple personas for app %@, so persona resolution is ambiguous. Found identities: %@", v20, v6);
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

  v15 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10009E410();
  }

LABEL_14:

  if (a3 && !v11)
  {
    v21 = v8;
    *a3 = v8;
  }

  v22 = v11;

  return v11;
}

@end