@interface MCMContainerIdentityMinimal
+ (id)minimalContainerIdentityFromPlist:(id)a3 userIdentityCache:(id)a4 error:(unint64_t *)a5;
- (BOOL)isDataSeparated;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContainerIdentity:(id)a3;
- (BOOL)isExplicitlyPersonal;
- (MCMContainerConfiguration)containerConfig;
- (MCMContainerIdentityMinimal)init;
- (MCMContainerIdentityMinimal)initWithLibsystemContainer:(container_object_s *)a3 defaultUserIdentity:(id)a4 userIdentityCache:(id)a5 error:(unint64_t *)a6;
- (MCMContainerIdentityMinimal)initWithPlist:(id)a3 userIdentityCache:(id)a4 error:(unint64_t *)a5;
- (MCMContainerIdentityMinimal)initWithUserIdentity:(id)a3 identifier:(id)a4 containerConfig:(id)a5 platform:(unsigned int)a6 userIdentityCache:(id)a7 error:(unint64_t *)a8;
- (MCMContainerIdentityMinimal)initWithVersion1PlistDictionary:(id)a3 userIdentityCache:(id)a4 error:(unint64_t *)a5;
- (MCMUserIdentity)userIdentity;
- (MCMUserIdentityCache)userIdentityCache;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)identifier;
- (NSString)personaIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identityByChangingUserIdentity:(id)a3;
- (id)identityBySettingPlatform:(unsigned int)a3;
- (id)minimalIdentity;
- (id)plist;
- (unint64_t)containerClass;
- (unint64_t)hash;
- (unsigned)disposition;
- (unsigned)platform;
@end

@implementation MCMContainerIdentityMinimal

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerConfiguration)containerConfig
{
  result = self->_containerConfig;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)containerClass
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(MCMContainerIdentityMinimal *)self containerConfig];
  v3 = [v2 containerClass];

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (MCMUserIdentity)userIdentity
{
  result = self->_userIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)platform
{
  result = self->_platform;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isExplicitlyPersonal
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(MCMContainerIdentityMinimal *)self userIdentity];
  v3 = [v2 personaType] == 0;

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (NSString)personaIdentifier
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(MCMContainerIdentityMinimal *)self userIdentity];
  v3 = [v2 identifier];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isDataSeparated
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(MCMContainerIdentityMinimal *)self userIdentity];
  v3 = [v2 isDataSeparated];

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (unsigned)disposition
{
  result = self->_disposition;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [MCMContainerIdentityMinimal alloc];
  userIdentity = self->_userIdentity;
  v7 = [(NSString *)self->_identifier copyWithZone:a3];
  v8 = [(MCMContainerIdentityMinimal *)v5 initWithUserIdentity:userIdentity identifier:v7 containerConfig:self->_containerConfig platform:self->_platform userIdentityCache:self->_userIdentityCache error:0];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self == v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MCMContainerIdentityMinimal *)self isEqualToContainerIdentity:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToContainerIdentity:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSString *)self->_identifier isEqual:v4[2]]&& [(MCMUserIdentity *)self->_userIdentity isEqual:v4[4]]&& [(MCMContainerConfiguration *)self->_containerConfig isEqual:v4[3]];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(MCMUserIdentity *)self->_userIdentity hash];
  v5 = [(MCMContainerConfiguration *)self->_containerConfig hash];
  v6 = *MEMORY[0x1E69E9840];
  return v4 ^ v3 ^ v5;
}

- (NSString)debugDescription
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__MCMContainerIdentityMinimal_debugDescription__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __47__MCMContainerIdentityMinimal_debugDescription__block_invoke(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(a1 + 32);
  v8 = [v7 userIdentity];
  v9 = [v8 shortDescription];
  v10 = v9;
  if (a2)
  {
    v11 = [v9 redactedDescription];
    v20 = [*(a1 + 32) identifier];
    v12 = [v20 redactedDescription];
  }

  else
  {
    v12 = [*(a1 + 32) identifier];
    v11 = v10;
  }

  v13 = [*(a1 + 32) containerConfig];
  v14 = [v13 debugDescription];
  v15 = [*(a1 + 32) platform];
  v16 = v6;
  v17 = [v21 stringWithFormat:@"<%@: %p userIdentity = %@, identifier = %@, class = %@, platform = %d>", v6, v7, v11, v12, v14, v15];;

  if (a2)
  {

    v12 = v11;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (NSString)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MCMContainerIdentityMinimal_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __42__MCMContainerIdentityMinimal_description__block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) identifier];
  v6 = v5;
  v7 = v5;
  if (a2)
  {
    v7 = [v5 redactedDescription];
  }

  v8 = [*(a1 + 32) containerConfig];
  v9 = [*(a1 + 32) userIdentity];
  v10 = [v9 shortDescription];
  v11 = v10;
  v12 = v10;
  if (a2)
  {
    v12 = [v10 redactedDescription];
  }

  v13 = [v4 stringWithFormat:@"<%@(%@-)%@;pf%d>", v7, v8, v12, objc_msgSend(*(a1 + 32), "platform")];;
  if (a2)
  {

    v11 = v9;
    v9 = v8;
  }

  else
  {
    v7 = v8;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)identityByChangingUserIdentity:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMContainerIdentityMinimal *)self copy];
  v6 = v5[4];
  v5[4] = v4;

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)identityBySettingPlatform:(unsigned int)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(MCMContainerIdentityMinimal *)self copy];
  v4[2] = a3;
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)minimalIdentity
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 1;
  v2 = self;
  v3 = v2;
  if (([(MCMContainerIdentityMinimal *)v2 isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    v4 = [MCMContainerIdentityMinimal alloc];
    v5 = [(MCMContainerIdentityMinimal *)v2 userIdentity];
    v6 = [(MCMContainerIdentityMinimal *)v2 identifier];
    v7 = [(MCMContainerIdentityMinimal *)v2 containerConfig];
    v8 = [(MCMContainerIdentityMinimal *)v2 platform];
    v9 = [(MCMContainerIdentityMinimal *)v2 userIdentityCache];
    v3 = [(MCMContainerIdentityMinimal *)v4 initWithUserIdentity:v5 identifier:v6 containerConfig:v7 platform:v8 userIdentityCache:v9 error:&v15];
  }

  if (!v3)
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = v15;
      error_description = container_get_error_description();
      *buf = 134218498;
      v17 = v13;
      v18 = 2080;
      v19 = error_description;
      v20 = 2112;
      v21 = v2;
      _os_log_fault_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_FAULT, "Failed to create minimal identity; error = (%llu) %s, self = %@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (MCMContainerIdentityMinimal)initWithVersion1PlistDictionary:(id)a3 userIdentityCache:(id)a4 error:(unint64_t *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v34 = 1;
  v10 = [v8 objectForKeyedSubscript:@"identifier"];
  v11 = [v8 objectForKeyedSubscript:@"containerClass"];
  v33 = [v8 objectForKeyedSubscript:@"userIdentity"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v34 = 116;
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v36 = @"identifier";
      v37 = 2112;
      v38 = objc_opt_class();
      v39 = 2112;
      v40 = v8;
      v25 = v38;
      _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Invalid container identity plist data. Expected string for %@, got %@. Data: %@", buf, 0x20u);
    }

    v16 = 0;
    v18 = 0;
    v12 = 0;
LABEL_17:
    v19 = 0;
    if (!a5)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v12 = v10;
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v34 = 116;
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v36 = @"containerClass";
      v37 = 2112;
      v38 = objc_opt_class();
      v39 = 2112;
      v40 = v8;
      v29 = v38;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Invalid container identity plist data. Expected number for %@, got %@. Data: %@", buf, 0x20u);
    }

    v16 = 0;
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v32 = self;
  v13 = [v11 unsignedIntegerValue];
  v14 = containermanager_copy_global_configuration();
  v15 = [v14 staticConfig];
  v31 = v13;
  v16 = [v15 configForContainerClass:v13];

  if (v16)
  {
    self = v32;
    if ([v16 supportedOnPlatform])
    {
      v17 = [MCMUserIdentity userIdentityWithPlist:v33 cache:v9 error:&v34];
      if (v17)
      {
        v18 = v17;
        v19 = [(MCMContainerIdentityMinimal *)v32 initWithUserIdentity:v17 identifier:v12 containerConfig:v16 platform:0 userIdentityCache:v9 error:&v34];
        self = v19;
        if (!a5)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v34 = 116;
      v30 = container_log_handle_for_category();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = @"userIdentity";
        v37 = 2112;
        v38 = v8;
        _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "Invalid container identity plist data. Could not reconstitute user identity from %@. Data: %@", buf, 0x16u);
      }

      goto LABEL_16;
    }

    v28 = container_log_handle_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v36 = v31;
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Container class in container_object_t (%llu) is unsupported", buf, 0xCu);
    }

    v18 = 0;
    v19 = 0;
    v27 = 72;
  }

  else
  {
    v26 = container_log_handle_for_category();
    self = v32;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v36 = v31;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Container class in plist data (%llu) is invalid", buf, 0xCu);
    }

    v16 = 0;
    v18 = 0;
    v19 = 0;
    v27 = 20;
  }

  v34 = v27;
  if (!a5)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (!v19)
  {
    *a5 = v34;
  }

LABEL_20:
  v22 = v19;

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (MCMContainerIdentityMinimal)initWithPlist:(id)a3 userIdentityCache:(id)a4 error:(unint64_t *)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      v11 = [v10 objectForKeyedSubscript:@"version"];
      v12 = [v11 isEqual:@"1"];

      if (v12)
      {
        self = [(MCMContainerIdentityMinimal *)self initWithVersion1PlistDictionary:v10 userIdentityCache:v9 error:a5];
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)plist
{
  v13[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"1";
  v12[0] = @"version";
  v12[1] = @"identifier";
  v3 = [(MCMContainerIdentityMinimal *)self identifier];
  v13[1] = v3;
  v12[2] = @"containerClass";
  v4 = MEMORY[0x1E696AD98];
  v5 = [(MCMContainerIdentityMinimal *)self containerConfig];
  v6 = [v4 numberWithUnsignedLongLong:{objc_msgSend(v5, "containerClass")}];
  v13[2] = v6;
  v12[3] = @"userIdentity";
  v7 = [(MCMContainerIdentityMinimal *)self userIdentity];
  v8 = [v7 plist];
  v13[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (MCMContainerIdentityMinimal)initWithLibsystemContainer:(container_object_s *)a3 defaultUserIdentity:(id)a4 userIdentityCache:(id)a5 error:(unint64_t *)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v38 = 1;
  identifier = container_get_identifier();
  if (!identifier)
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Identifier in container_object_t is NULL", buf, 2u);
    }

    v16 = 0;
    v20 = 0;
    v21 = 0;
    v18 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 11;
LABEL_9:
    v38 = v24;
    if (!a6)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v37 = a6;
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:identifier];
  v13 = container_get_class();
  v14 = containermanager_copy_global_configuration();
  v15 = [v14 staticConfig];
  v16 = [v15 configForContainerClass:v13];

  if (v16)
  {
    if ([v16 supportedOnPlatform])
    {
      container_is_transient();
      persona_unique_string = container_get_persona_unique_string();
      if (persona_unique_string)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:persona_unique_string];
      }

      else
      {
        v18 = 0;
      }

      v21 = [MCMPOSIXUser posixUserWithUID:container_get_uid()];
      if ([v16 personaAndUserSpecific])
      {
        if (v18)
        {
          v28 = [v10 userIdentityForPersonaUniqueString:v18 POSIXUser:v21];
        }

        else
        {
          v28 = v9;
        }

        v20 = v28;
        v22 = v12;
        a6 = v37;
        if (!v28)
        {
          v36 = container_log_handle_for_category();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v40 = v18;
            _os_log_error_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_ERROR, "Cannot reconstitute a user identity from provided persona unique string; personaUniqueString = [%@]", buf, 0xCu);
          }

          v20 = 0;
          goto LABEL_38;
        }

        v33 = [v9 isNoSpecificPersona];
        v34 = [v9 isEqual:v20];
        if ((v33 & 1) == 0 && (v34 & 1) == 0)
        {
          v35 = container_log_handle_for_category();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v40 = v18;
            v41 = 1024;
            v42 = 0;
            v43 = 1024;
            v44 = 0;
            _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Persona unique string is not valid for this client; personaUniqueString = [%@], nonspecific = %d, sameAsClient = %d", buf, 0x18u);
          }

LABEL_38:
          v23 = 0;
          v24 = 76;
          goto LABEL_9;
        }
      }

      else
      {
        v20 = 0;
        v22 = v12;
        a6 = v37;
      }

      v29 = [v10 userIdentityForContainerConfig:v16 originatorUserIdentity:v20];

      v23 = [(MCMContainerIdentityMinimal *)self initWithUserIdentity:v29 identifier:v22 containerConfig:v16 platform:0 userIdentityCache:v10 error:&v38];
      v20 = v29;
      self = v23;
      if (!a6)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    v27 = container_log_handle_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v40 = v13;
      _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Container class in container_object_t (%llu) is unsupported", buf, 0xCu);
    }

    v20 = 0;
    v21 = 0;
    v18 = 0;
    v23 = 0;
    v26 = 72;
  }

  else
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v40 = v13;
      _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Container class in container_object_t (%llu) is invalid", buf, 0xCu);
    }

    v16 = 0;
    v20 = 0;
    v21 = 0;
    v18 = 0;
    v23 = 0;
    v26 = 20;
  }

  v38 = v26;
  v22 = v12;
  a6 = v37;
  if (!v37)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (!v23)
  {
    *a6 = v38;
  }

LABEL_27:
  v30 = v23;

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

- (MCMContainerIdentityMinimal)initWithUserIdentity:(id)a3 identifier:(id)a4 containerConfig:(id)a5 platform:(unsigned int)a6 userIdentityCache:(id)a7 error:(unint64_t *)a8
{
  v36 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v33.receiver = self;
  v33.super_class = MCMContainerIdentityMinimal;
  v18 = [(MCMContainerIdentityMinimal *)&v33 init];
  if (!v18)
  {
    v24 = 1;
    goto LABEL_24;
  }

  v19 = v18;
  objc_storeStrong(&v18->_userIdentityCache, a7);
  v20 = [v17 userIdentityForContainerConfig:v16 originatorUserIdentity:v14];
  userIdentity = v19->_userIdentity;
  v19->_userIdentity = v20;

  if (v19->_userIdentity)
  {
    if (!v15)
    {
      v25 = container_log_handle_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Invalid object: missing identifier", buf, 2u);
      }

      v24 = 18;
      goto LABEL_23;
    }

    objc_opt_class();
    v22 = v15;
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    identifier = v19->_identifier;
    v19->_identifier = v23;

    if (v19->_identifier)
    {
      objc_storeStrong(&v19->_containerConfig, a5);
      if (v19->_containerConfig)
      {
        v30 = [v16 disposition];
        v19->_platform = a6;
        v19->_disposition = v30;
        goto LABEL_26;
      }

      v25 = container_log_handle_for_category();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      v35 = v16;
      v26 = "Invalid object: container class = %@";
      goto LABEL_20;
    }

    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v22;
      v26 = "Invalid object: identifier = [%@]";
LABEL_20:
      v27 = v25;
      v28 = 12;
      goto LABEL_21;
    }
  }

  else
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Invalid object: no user identity";
      v27 = v25;
      v28 = 2;
LABEL_21:
      _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    }
  }

LABEL_22:
  v24 = 11;
LABEL_23:

LABEL_24:
  v19 = 0;
  if (a8)
  {
    *a8 = v24;
  }

LABEL_26:

  v31 = *MEMORY[0x1E69E9840];
  return v19;
}

- (MCMContainerIdentityMinimal)init
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = "[MCMContainerIdentityMinimal init]";
    _os_log_fault_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_FAULT, "%s You cannot init this class directly.", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (id)minimalContainerIdentityFromPlist:(id)a3 userIdentityCache:(id)a4 error:(unint64_t *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithPlist:v9 userIdentityCache:v8 error:a5];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end