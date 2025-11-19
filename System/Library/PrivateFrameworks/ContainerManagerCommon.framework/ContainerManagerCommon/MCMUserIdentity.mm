@interface MCMUserIdentity
+ (BOOL)isUserIdentityRequiredForContainerClass:(unint64_t)a3;
+ (MCMUserIdentity)userIdentityWithPlist:(id)a3 cache:(id)a4 error:(unint64_t *)a5;
- (BOOL)homeDirectoryExists;
- (BOOL)isDataSeparated;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUserIdentity:(id)a3;
- (BOOL)isNoSpecificPersona;
- (BOOL)isStrictlyEqualToUserIdentity:(id)a3;
- (MCMPOSIXUser)posixUser;
- (MCMUserIdentity)init;
- (MCMUserIdentity)initWithPlist:(id)a3 cache:(id)a4 error:(unint64_t *)a5;
- (MCMUserIdentity)initWithVersion1PlistDictionary:(id)a3 cache:(id)a4 error:(unint64_t *)a5;
- (MCMUserIdentity)initWithVersion2PlistDictionary:(id)a3 cache:(id)a4 error:(unint64_t *)a5;
- (MCMUserIdentity)userIdentityWithPOSIXUser:(id)a3;
- (NSString)identifier;
- (NSString)personaUniqueString;
- (NSString)shortDescription;
- (NSURL)homeDirectoryURL;
- (id)_descriptionForPersonaType:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)plist;
- (int)kernelPersonaType;
- (int)personaType;
- (int64_t)extensionHandle;
- (unint64_t)hash;
- (unsigned)kernelPersonaID;
- (void)dealloc;
- (void)setExtensionHandle:(int64_t)a3;
@end

@implementation MCMUserIdentity

- (MCMPOSIXUser)posixUser
{
  result = self->_posixUser;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isNoSpecificPersona
{
  v4 = *MEMORY[0x1E69E9840];
  result = [(MCMUserIdentity *)self personaType]== 2;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)personaType
{
  result = self->_personaType;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)hash
{
  v5 = *MEMORY[0x1E69E9840];
  identifier = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];

  return [(NSString *)identifier hash];
}

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentity)init
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 defaultUser];

  v5 = [v4 homeDirectoryURL];
  v6 = -[MCMUserIdentity initWithPOSIXUser:homeDirectoryURL:personaUniqueString:personaType:kernelPersonaID:](self, "initWithPOSIXUser:homeDirectoryURL:personaUniqueString:personaType:kernelPersonaID:", v4, v5, 0, 2, [v4 UID]);

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  if ((self->_extensionHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
    self->_extensionHandle = -1;
  }

  v4.receiver = self;
  v4.super_class = MCMUserIdentity;
  [(MCMUserIdentity *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (NSString)personaUniqueString
{
  result = self->_personaUniqueString;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isDataSeparated
{
  v4 = *MEMORY[0x1E69E9840];
  result = [(MCMUserIdentity *)self personaType]== 1;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)shortDescription
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MCMUserIdentity_shortDescription__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __35__MCMUserIdentity_shortDescription__block_invoke(uint64_t a1, char a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) posixUser];
  v6 = [v5 UID];
  v7 = [*(a1 + 32) posixUser];
  v8 = [v7 primaryGID];
  if (a2)
  {
    v9 = @"~~";
  }

  else
  {
    v9 = [*(a1 + 32) identifier];
  }

  v10 = [v4 stringWithFormat:@"<%u/%u/%@/%d/%d>", v6, v8, v9, objc_msgSend(*(a1 + 32), "personaType"), objc_msgSend(*(a1 + 32), "kernelPersonaID")];
  if ((a2 & 1) == 0)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (unsigned)kernelPersonaID
{
  result = self->_kernelPersonaID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)homeDirectoryURL
{
  result = self->_homeDirectoryURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setExtensionHandle:(int64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_extensionHandle = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (int64_t)extensionHandle
{
  result = self->_extensionHandle;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(MCMPOSIXUser *)self->_posixUser copyWithZone:a3];
    v7 = *(v5 + 56);
    *(v5 + 56) = v6;

    v8 = [(NSString *)self->_identifier copyWithZone:a3];
    v9 = *(v5 + 48);
    *(v5 + 48) = v8;

    v10 = [(NSURL *)self->_homeDirectoryURL copyWithZone:a3];
    v11 = *(v5 + 8);
    *(v5 + 8) = v10;

    v12 = [(NSString *)self->_personaUniqueString copyWithZone:a3];
    v13 = *(v5 + 32);
    *(v5 + 32) = v12;

    *(v5 + 24) = self->_personaType;
    *(v5 + 20) = self->_kernelPersonaID;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isStrictlyEqualToUserIdentity:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MCMUserIdentity *)self isEqualToUserIdentity:v4])
  {
    v5 = self->_personaType == v4[6];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MCMUserIdentity *)self isEqualToUserIdentity:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqualToUserIdentity:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  identifier = self->_identifier;
  v4 = *(a3 + 6);
  v5 = *MEMORY[0x1E69E9840];

  return [(NSString *)identifier isEqual:v4];
}

- (id)_descriptionForPersonaType:(int)a3
{
  if (a3 > 2)
  {
    result = @"unknown";
  }

  else
  {
    result = off_1E86B0530[a3];
  }

  v4 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__MCMUserIdentity_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __30__MCMUserIdentity_description__block_invoke(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) homeDirectoryURL];
  v5 = [v4 path];

  v6 = [*(a1 + 32) posixUser];
  v7 = [v6 homeDirectoryURL];
  v8 = [v7 path];

  v28 = v8;
  v9 = [(__CFString *)v5 isEqualToString:v8];
  if ((v9 & 1) != 0 || a2)
  {
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = @"<cm-redacted>";
    }

    v5 = v10;
  }

  v25 = MEMORY[0x1E696AEC0];
  v11 = *(a1 + 32);
  v12 = objc_opt_class();
  v27 = NSStringFromClass(v12);
  v13 = *(a1 + 32);
  v14 = [v13 posixUser];
  v26 = v14;
  if (a2)
  {
    [v14 redactedDescription];
  }

  else
  {
    [v14 description];
  }
  v15 = ;
  v16 = [*(a1 + 32) identifier];
  if (v5)
  {
    v17 = ", homeDirectoryURL = [";
  }

  else
  {
    v17 = "";
  }

  if (v5)
  {
    v18 = v5;
  }

  else
  {
    v18 = &stru_1F5A5B2B8;
  }

  if (v5)
  {
    v19 = "]";
  }

  else
  {
    v19 = "";
  }

  v20 = [*(a1 + 32) _descriptionForPersonaType:{objc_msgSend(*(a1 + 32), "personaType")}];
  v21 = [*(a1 + 32) personaUniqueString];
  v22 = [v25 stringWithFormat:@"<%@: %p posixUser = %@, identifier = %@%s%@%s, personaType = %@, personaUniqueString = %@, kernelPersonaID = %d>", v27, v13, v15, v16, v17, v18, v19, v20, v21, objc_msgSend(*(a1 + 32), "kernelPersonaID")];;

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (int)kernelPersonaType
{
  v6 = *MEMORY[0x1E69E9840];
  result = self->_kernelPersonaType;
  if (!result)
  {
    kernelPersonaID = self->_kernelPersonaID;
    if (kpersona_info())
    {
      result = self->_kernelPersonaType;
    }

    else
    {
      result = 0;
      self->_kernelPersonaType = 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentity)userIdentityWithPOSIXUser:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMUserIdentity *)self personaUniqueString];
  v6 = [(MCMUserIdentity *)self homeDirectoryURL];
  if (![(MCMUserIdentity *)self isDataSeparated])
  {
    v7 = [v4 homeDirectoryURL];

    v6 = v7;
  }

  v8 = [[MCMUserIdentity alloc] initWithPOSIXUser:v4 homeDirectoryURL:v6 personaUniqueString:v5 personaType:[(MCMUserIdentity *)self personaType] kernelPersonaID:[(MCMUserIdentity *)self kernelPersonaID]];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)homeDirectoryExists
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = +[MCMFileManager defaultManager];
  v4 = [(MCMUserIdentity *)self homeDirectoryURL];
  LOBYTE(self) = [v3 itemExistsAtURL:v4];

  v5 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)plist
{
  v18[4] = *MEMORY[0x1E69E9840];
  v17[0] = @"posixUID";
  v3 = MEMORY[0x1E696AD98];
  v4 = [(MCMUserIdentity *)self posixUser];
  v5 = [v3 numberWithUnsignedInt:{objc_msgSend(v4, "UID")}];
  v18[0] = v5;
  v17[1] = @"posixGID";
  v6 = MEMORY[0x1E696AD98];
  v7 = [(MCMUserIdentity *)self posixUser];
  v8 = [v6 numberWithUnsignedInt:{objc_msgSend(v7, "primaryGID")}];
  v18[1] = v8;
  v17[2] = @"type";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MCMUserIdentity personaType](self, "personaType")}];
  v17[3] = @"version";
  v18[2] = v9;
  v18[3] = @"2";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v11 = [v10 mutableCopy];

  v12 = [(MCMUserIdentity *)self personaUniqueString];

  if (v12)
  {
    v13 = [(MCMUserIdentity *)self personaUniqueString];
    [v11 setObject:v13 forKeyedSubscript:@"personaUniqueString"];
  }

  v14 = [v11 copy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (MCMUserIdentity)initWithVersion2PlistDictionary:(id)a3 cache:(id)a4 error:(unint64_t *)a5
{
  v37[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKeyedSubscript:@"posixUID"];
  v10 = [v7 objectForKeyedSubscript:@"posixGID"];
  v33 = [v7 objectForKeyedSubscript:@"type"];
  v11 = [v7 objectForKeyedSubscript:@"personaUniqueString"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v23 = container_log_handle_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v35 = @"posixUID";
      *&v35[8] = 2112;
      *v36 = objc_opt_class();
      *&v36[8] = 2112;
      v37[0] = v7;
      v28 = *v36;
      _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected number for %@, got %@. Data: %@", buf, 0x20u);
    }

    goto LABEL_23;
  }

  v12 = [v9 unsignedIntegerValue];
  if (!v10 || (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v24 = container_log_handle_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v35 = @"posixGID";
      *&v35[8] = 2112;
      *v36 = objc_opt_class();
      *&v36[8] = 2112;
      v37[0] = v7;
      v29 = *v36;
      _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected number for %@, got %@. Data: %@", buf, 0x20u);
    }

    goto LABEL_27;
  }

  v31 = [v10 unsignedIntegerValue];
  v14 = [MCMPOSIXUser posixUserWithUID:v13];
  if (!v14)
  {
    v23 = container_log_handle_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      *v35 = v31;
      *&v35[4] = 1024;
      *&v35[6] = v13;
      strcpy(v36, "@\b");
      v36[3] = 0;
      *&v36[4] = 0;
      *&v36[6] = 0;
      LOWORD(v37[0]) = 2112;
      *(v37 + 2) = v7;
      _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Could not get matching uid passwd data. gid: %u, uid: %u, User: %@, Data: %@", buf, 0x22u);
    }

LABEL_23:

LABEL_27:
    v15 = 0;
LABEL_28:
    v18 = 0;
    v19 = 75;
    v16 = v33;
LABEL_29:
    if (!a5)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v15 = v14;
  v16 = v33;
  if (!v33 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v27 = container_log_handle_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v35 = @"type";
      *&v35[8] = 2112;
      *v36 = objc_opt_class();
      *&v36[8] = 2112;
      v37[0] = v7;
      v30 = *v36;
      _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected number for %@, got %@. Data: %@", buf, 0x20u);
    }

    goto LABEL_35;
  }

  v17 = [v33 unsignedIntegerValue];
  if (v17 >= 4)
  {
    v27 = container_log_handle_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v35 = @"type";
      *&v35[8] = 2112;
      *v36 = v33;
      *&v36[8] = 2112;
      v37[0] = v7;
      _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected persona type for %@, got %@. Data: %@", buf, 0x20u);
    }

LABEL_35:

    goto LABEL_28;
  }

  if (v11 && v17 == 1)
  {
    v18 = [v8 userIdentityForPersonaUniqueString:v11 POSIXUser:v15];
    if (MCMPersonasAreSupported_onceToken != -1)
    {
      dispatch_once(&MCMPersonasAreSupported_onceToken, &__block_literal_global_9454);
    }

    v19 = 1;
    if (MCMPersonasAreSupported_staticPersonasSupported == 1 && v18)
    {
      if (![(MCMUserIdentity *)v18 isDataSeparated])
      {
        v20 = containermanager_copy_global_configuration();
        v21 = [v20 dispositionForContainerClass:2];

        if (v21 == 1)
        {
          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            *v35 = v11;
            *&v35[8] = 2112;
            *v36 = v18;
            *&v36[8] = 2112;
            v37[0] = v7;
            _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected %@ to be data separated, but it was not: %@; Data: %@", buf, 0x20u);
          }
        }

        v16 = v33;
      }

      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v18 = [v8 userIdentityForPersonalPersonaWithPOSIXUser:v15];
  v19 = 1;
  if (!a5)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (!v18)
  {
    *a5 = v19;
  }

LABEL_32:

  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

- (MCMUserIdentity)initWithVersion1PlistDictionary:(id)a3 cache:(id)a4 error:(unint64_t *)a5
{
  v31[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 objectForKeyedSubscript:@"posixUID"];
  v11 = [v8 objectForKeyedSubscript:@"posixGID"];
  v12 = [v8 objectForKeyedSubscript:@"personaIdentifier"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v28 = 138412802;
      *v29 = @"posixUID";
      *&v29[8] = 2112;
      *v30 = objc_opt_class();
      *&v30[8] = 2112;
      v31[0] = v8;
      v25 = *v30;
      _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected number for %@, got %@. Data: %@", &v28, 0x20u);
    }

LABEL_15:
    v17 = 0;
    v19 = 0;
    v22 = 75;
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v13 = [v10 unsignedIntegerValue];
  if (!v11 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = 138412802;
      *v29 = @"posixGID";
      *&v29[8] = 2112;
      *v30 = objc_opt_class();
      *&v30[8] = 2112;
      v31[0] = v8;
      v27 = *v30;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected number for %@, got %@. Data: %@", &v28, 0x20u);
    }

    goto LABEL_14;
  }

  v15 = [v11 unsignedIntegerValue];
  v16 = [MCMPOSIXUser posixUserWithUID:v14];
  if (!v16)
  {
    v26 = v14;
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = 67109890;
      *v29 = v15;
      *&v29[4] = 1024;
      *&v29[6] = v26;
      strcpy(v30, "@\b");
      v30[3] = 0;
      *&v30[4] = 0;
      *&v30[6] = 0;
      LOWORD(v31[0]) = 2112;
      *(v31 + 2) = v8;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Could not get matching uid passwd data. gid: %u, uid: %u, User: %@, Data: %@", &v28, 0x22u);
    }

LABEL_14:

    goto LABEL_15;
  }

  v17 = v16;
  if (v12)
  {
    v18 = [v9 userIdentityForPersonaUniqueString:v12 POSIXUser:v16];
    if (v18)
    {
      v19 = v18;
      goto LABEL_18;
    }
  }

  v19 = [v9 userIdentityForPersonalPersonaWithPOSIXUser:v17];
  v22 = 1;
  if (!a5)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v19)
  {
    *a5 = v22;
  }

LABEL_18:

  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

- (MCMUserIdentity)initWithPlist:(id)a3 cache:(id)a4 error:(unint64_t *)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      v11 = [v10 objectForKeyedSubscript:@"version"];
      v12 = [v11 isEqual:@"2"];

      if (v12)
      {
        v13 = [(MCMUserIdentity *)self initWithVersion2PlistDictionary:v10 cache:v9 error:a5];
      }

      else
      {
        v14 = [v10 objectForKeyedSubscript:@"version"];
        v15 = [v14 isEqual:@"1"];

        if (!v15)
        {
LABEL_8:

          goto LABEL_9;
        }

        v13 = [(MCMUserIdentity *)self initWithVersion1PlistDictionary:v10 cache:v9 error:a5];
      }

      self = v13;
      goto LABEL_8;
    }
  }

LABEL_9:

  v16 = *MEMORY[0x1E69E9840];
  return self;
}

+ (BOOL)isUserIdentityRequiredForContainerClass:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = containermanager_copy_global_configuration();
  v5 = [v4 isGlobalBundleContainerWithContainerClass:a3];

  if (v5)
  {
    result = 0;
  }

  else
  {
    v7 = containermanager_copy_global_configuration();
    v8 = [v7 isGlobalSystemContainerWithContainerClass:a3];

    result = v8 ^ 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (MCMUserIdentity)userIdentityWithPlist:(id)a3 cache:(id)a4 error:(unint64_t *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithPlist:v9 cache:v8 error:a5];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end