@interface MCMMetadataMinimal
- (BOOL)_initFromMetadataInDictionary:(id)dictionary containerPath:(id)path userIdentity:(id)identity containerClass:(unint64_t)class fsNode:(id)node fileURL:(id)l userIdentityCache:(id)cache error:(id *)self0;
- (BOOL)_persisted;
- (BOOL)existed;
- (BOOL)transient;
- (MCMConcreteContainerIdentityForLibsystem)containerIdentity;
- (MCMContainerPath)containerPath;
- (MCMMetadataMinimal)initWithContainerIdentity:(id)identity containerPath:(id)path schemaVersion:(id)version userIdentityCache:(id)cache;
- (MCMUserIdentity)userIdentity;
- (MCMUserIdentityCache)userIdentityCache;
- (NSNumber)schemaVersion;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)identifier;
- (NSString)shortDescription;
- (NSUUID)uuid;
- (container_object_s)createLibsystemContainerWithError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initByReadingAndValidatingMetadataAtContainerPath:(id)path userIdentity:(id)identity containerClass:(unint64_t)class userIdentityCache:(id)cache error:(id *)error;
- (id)initByReadingAndValidatingMetadataAtFileURL:(id)l containerPath:(id)path userIdentity:(id)identity containerClass:(unint64_t)class userIdentityCache:(id)cache error:(id *)error;
- (id)metadataByChangingContainerIdentity:(id)identity;
- (id)metadataByChangingContainerPath:(id)path;
- (id)metadataByChangingSchemaVersion:(id)version;
- (id)metadataByChangingUUID:(id)d;
- (unint64_t)containerClass;
- (unsigned)platform;
@end

@implementation MCMMetadataMinimal

- (MCMContainerPath)containerPath
{
  result = self->_containerPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMConcreteContainerIdentityForLibsystem)containerIdentity
{
  result = self->_containerIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSUUID)uuid
{
  v5 = *MEMORY[0x1E69E9840];
  containerIdentity = self->_containerIdentity;
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMConcreteContainerIdentity *)containerIdentity uuid];
}

- (NSString)identifier
{
  v5 = *MEMORY[0x1E69E9840];
  containerIdentity = self->_containerIdentity;
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMContainerIdentityMinimal *)containerIdentity identifier];
}

- (unint64_t)containerClass
{
  v5 = *MEMORY[0x1E69E9840];
  containerIdentity = self->_containerIdentity;
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMContainerIdentityMinimal *)containerIdentity containerClass];
}

- (MCMUserIdentity)userIdentity
{
  v5 = *MEMORY[0x1E69E9840];
  containerIdentity = self->_containerIdentity;
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMContainerIdentityMinimal *)containerIdentity userIdentity];
}

- (BOOL)existed
{
  v5 = *MEMORY[0x1E69E9840];
  containerIdentity = self->_containerIdentity;
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMConcreteContainerIdentityForLibsystem *)containerIdentity existed];
}

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSNumber)schemaVersion
{
  result = self->_schemaVersion;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_persisted
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)_initFromMetadataInDictionary:(id)dictionary containerPath:(id)path userIdentity:(id)identity containerClass:(unint64_t)class fsNode:(id)node fileURL:(id)l userIdentityCache:(id)cache error:(id *)self0
{
  v134 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  pathCopy = path;
  identityCopy = identity;
  lCopy = l;
  cacheCopy = cache;
  v17 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataIdentifier"];
  v18 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataVersion"];
  objc_storeStrong(&self->_userIdentityCache, cache);
  objc_storeStrong(&self->_containerPath, path);
  v124 = v17;
  v125 = lCopy;
  if (v18)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v20 = MEMORY[0x1E696AD98];
    if (isKindOfClass)
    {
      v21 = v18;
      v18 = [v20 numberWithInteger:{-[NSObject integerValue](v21, "integerValue")}];

      if ([v18 integerValue] > 5)
      {
        v22 = [MCMError alloc];
        path = [lCopy path];
        v24 = [(MCMError *)v22 initWithErrorType:29 category:5 path:path POSIXerrno:0];

        v25 = container_log_handle_for_category();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v76 = objc_opt_class();
          v77 = NSStringFromClass(v76);
          *buf = 138412546;
          classCopy = v77;
          v130 = 2112;
          *v131 = v18;
          _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Invalid metadata version: (%@) %@", buf, 0x16u);
        }

        goto LABEL_6;
      }

      v17 = v124;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = [MCMError alloc];
        path2 = [lCopy path];
        v24 = [(MCMError *)v26 initWithErrorType:29 category:5 path:path2 POSIXerrno:0];

        v21 = container_log_handle_for_category();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        v28 = objc_opt_class();
        v25 = NSStringFromClass(v28);
        *buf = 138412546;
        classCopy = v25;
        v130 = 2112;
        *v131 = v18;
        v29 = "Invalid metadata version: (%@) %@";
        v30 = v21;
        v31 = 22;
        goto LABEL_64;
      }
    }
  }

  else
  {
    v18 = &unk_1F5A765B8;
  }

  objc_opt_class();
  v32 = v17;
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (!v33)
  {
    v37 = [MCMError alloc];
    path3 = [lCopy path];
    v24 = [(MCMError *)v37 initWithErrorType:29 category:5 path:path3 POSIXerrno:0];

    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      classCopy = v32;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Invalid metadata Identifier: %@", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v34 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataUUID"];
  objc_opt_class();
  v35 = v34;
  if (objc_opt_isKindOfClass())
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  if (!v36)
  {
    v44 = [MCMError alloc];
    path4 = [lCopy path];
    v24 = [(MCMError *)v44 initWithErrorType:29 category:5 path:path4 POSIXerrno:0];

    v21 = container_log_handle_for_category();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataUUID"];
    *buf = 138412290;
    classCopy = v25;
    v29 = "Invalid metadata UUID String: %@";
    v30 = v21;
    v31 = 12;
LABEL_64:
    _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
LABEL_6:

LABEL_25:
    v120 = 0;
    v46 = 0;
    globalBundleUserIdentity = 0;
    v42 = 0;
LABEL_53:
    v64 = pathCopy;
LABEL_54:

    if (error)
    {
      v69 = v24;
      v70 = 0;
      *error = v24;
    }

    else
    {
      v70 = 0;
    }

    v72 = v124;
    v71 = v125;
    goto LABEL_58;
  }

  v39 = objc_alloc(MEMORY[0x1E696AFB0]);
  v40 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataUUID"];
  v41 = [v39 initWithUUIDString:v40];

  objc_opt_class();
  v42 = v41;
  if (objc_opt_isKindOfClass())
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  if (!v43)
  {
    v51 = [MCMError alloc];
    path5 = [lCopy path];
    v24 = [(MCMError *)v51 initWithErrorType:29 category:5 path:path5 POSIXerrno:0];

    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      classCopy = v42;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Invalid metadata UUID: %@", buf, 0xCu);
    }

    goto LABEL_49;
  }

  v48 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataContentClass"];
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

  if (!v50)
  {
    v65 = [MCMError alloc];
    path6 = [lCopy path];
    v24 = [(MCMError *)v65 initWithErrorType:29 category:5 path:path6 POSIXerrno:0];

    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v101 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataContentClass"];
      *buf = 138412290;
      classCopy = v101;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Invalid metadata Class: %@", buf, 0xCu);
    }

LABEL_49:
    v120 = 0;
LABEL_52:
    v46 = 0;
    globalBundleUserIdentity = 0;
    goto LABEL_53;
  }

  v120 = v50;
  unsignedLongLongValue = [v50 unsignedLongLongValue];
  if ((unsignedLongLongValue - 1) >= 0xE)
  {
    v67 = [MCMError alloc];
    path7 = [lCopy path];
    v24 = [(MCMError *)v67 initWithErrorType:29 category:5 path:path7 POSIXerrno:0];

    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      classCopy = class;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Invalid metadata Content Class: %ld", buf, 0xCu);
    }

    goto LABEL_52;
  }

  v54 = unsignedLongLongValue;
  if (container_class_normalized() != class)
  {
    v55 = container_log_handle_for_category();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      classCopy = v32;
      v130 = 2050;
      *v131 = v54;
      *&v131[8] = 2050;
      *&v131[10] = class;
      _os_log_error_impl(&dword_1DF2C3000, v55, OS_LOG_TYPE_ERROR, "Container [%@] declares its class to be [%{public}llu] while scanning for class [%{public}llu]", buf, 0x20u);
    }
  }

  v56 = containermanager_copy_global_configuration();
  staticConfig = [v56 staticConfig];
  v46 = [staticConfig configForContainerClass:class];

  if ([v46 personaAndUserSpecific])
  {
    v21 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataPersona"];
    posixUser = [identityCopy posixUser];
    v59 = [MCMContainerClassPath posixOwnerForContainerClass:class user:posixUser];

    v119 = v59;
    if (class <= 0xB && ((1 << class) & 0xED4) != 0)
    {
      if (v21)
      {
        v60 = [v59 UID];
        if (v60 != [v21 unsignedIntValue])
        {
          v61 = [MCMError alloc];
          path8 = [v125 path];
          v24 = [(MCMError *)v61 initWithErrorType:29 category:5 path:path8 POSIXerrno:0];

          v63 = container_log_handle_for_category();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v107 = [v119 UID];
            *buf = 138412802;
            classCopy = v21;
            v130 = 1024;
            *v131 = v107;
            *&v131[4] = 2112;
            *&v131[6] = v32;
            _os_log_error_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_ERROR, "Incorrect UserId: %@, expecting: %u for %@", buf, 0x1Cu);
          }

          globalBundleUserIdentity = 0;
          v64 = pathCopy;
          goto LABEL_103;
        }
      }

      else
      {
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v59, "UID")}];
      }
    }

    v78 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataUserIdentity"];

    if (!v78)
    {
      unsignedIntValue = [v21 unsignedIntValue];
      if (unsignedIntValue == 499)
      {
        v85 = 0;
      }

      else
      {
        v85 = unsignedIntValue;
      }

      v86 = [MCMPOSIXUser posixUserWithUID:v85];
      globalBundleUserIdentity = [cacheCopy userIdentityForPersonalPersonaWithPOSIXUser:v86];

      goto LABEL_78;
    }

    v127 = 1;
    v79 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataUserIdentity"];
    globalBundleUserIdentity = [MCMUserIdentity userIdentityWithPlist:v79 cache:cacheCopy error:&v127];

    v80 = v125;
    if (globalBundleUserIdentity)
    {
LABEL_68:
      if (([globalBundleUserIdentity isEqual:identityCopy] & 1) == 0)
      {
        v117 = containermanager_copy_global_configuration();
        if ([v117 runmode] == 2)
        {
          v113 = containermanager_copy_global_configuration();
          currentUser = [v113 currentUser];
          v110 = containermanager_copy_global_configuration();
          defaultUser = [v110 defaultUser];
          v111 = [currentUser isEqual:defaultUser];

          v80 = v125;
          if (v111)
          {
            v82 = container_log_handle_for_category();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              classCopy = v32;
              v130 = 2048;
              *v131 = class;
              _os_log_impl(&dword_1DF2C3000, v82, OS_LOG_TYPE_DEFAULT, "User identity reconstructed from metadata for [%@(%llu)] doesn't match expected, assuming the current user identity.", buf, 0x16u);
            }

            v83 = identityCopy;
            globalBundleUserIdentity = v83;
            goto LABEL_78;
          }
        }

        else
        {
        }

        v105 = [MCMError alloc];
        path9 = [v80 path];
        v24 = [(MCMError *)v105 initWithErrorType:29 category:5 path:path9 POSIXerrno:0];

        v104 = container_log_handle_for_category();
        v64 = pathCopy;
        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          classCopy = globalBundleUserIdentity;
          v130 = 2112;
          *v131 = identityCopy;
          *&v131[8] = 2112;
          *&v131[10] = v32;
          v132 = 2048;
          v133 = v127;
          _os_log_error_impl(&dword_1DF2C3000, v104, OS_LOG_TYPE_ERROR, "Incorrect User Identity: %@, expecting: %@ for %@: %llu", buf, 0x2Au);
        }

LABEL_102:

LABEL_103:
        goto LABEL_54;
      }

LABEL_78:
      v75 = pathCopy;

      goto LABEL_81;
    }

    v97 = containermanager_copy_global_configuration();
    if ([v97 runmode] == 2)
    {
      v118 = containermanager_copy_global_configuration();
      [v118 currentUser];
      v98 = v116 = v97;
      v112 = containermanager_copy_global_configuration();
      defaultUser2 = [v112 defaultUser];
      v114 = [v98 isEqual:defaultUser2];

      v80 = v125;
      if (v114)
      {
        v100 = container_log_handle_for_category();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          classCopy = v32;
          v130 = 2048;
          *v131 = class;
          _os_log_impl(&dword_1DF2C3000, v100, OS_LOG_TYPE_DEFAULT, "Could not reconstruct user identity from metadata for [%@(%llu)], assuming the current user identity.", buf, 0x16u);
        }

        globalBundleUserIdentity = identityCopy;
        goto LABEL_68;
      }
    }

    else
    {
    }

    v102 = [MCMError alloc];
    path10 = [v80 path];
    v24 = [(MCMError *)v102 initWithErrorType:29 category:5 path:path10 POSIXerrno:0];

    v104 = container_log_handle_for_category();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      v108 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataUserIdentity"];
      *buf = 138412802;
      classCopy = v108;
      v130 = 2112;
      *v131 = v32;
      *&v131[8] = 2048;
      *&v131[10] = v127;
      _os_log_error_impl(&dword_1DF2C3000, v104, OS_LOG_TYPE_ERROR, "Invalid metadata User Identity: %@ for %@: %llu", buf, 0x20u);
    }

    globalBundleUserIdentity = 0;
    v64 = pathCopy;
    goto LABEL_102;
  }

  if ([v46 usesGlobalBundleUserIdentity])
  {
    globalBundleUserIdentity = [cacheCopy globalBundleUserIdentity];
    v75 = pathCopy;
  }

  else
  {
    v75 = pathCopy;
    if ([v46 usesGlobalSystemUserIdentity])
    {
      [cacheCopy globalSystemUserIdentity];
    }

    else
    {
      [cacheCopy defaultUserIdentity];
    }
    globalBundleUserIdentity = ;
  }

LABEL_81:
  containerClassPath = [(MCMContainerPath *)self->_containerPath containerClassPath];
  [containerClassPath setExists:1];

  [(MCMContainerPath *)self->_containerPath setExists:1];
  v126 = 1;
  LOBYTE(containerClassPath) = [v75 transient];
  containerPathIdentifier = [v75 containerPathIdentifier];
  BYTE1(v109) = containerClassPath;
  LOBYTE(v109) = 1;
  v89 = [MCMConcreteContainerIdentityForLibsystem containerIdentityWithUUID:v42 userIdentity:globalBundleUserIdentity identifier:v32 containerConfig:v46 platform:0 containerPathIdentifier:containerPathIdentifier existed:v109 transient:cacheCopy userIdentityCache:&v126 error:?];
  containerIdentity = self->_containerIdentity;
  self->_containerIdentity = v89;

  if (!self->_containerIdentity)
  {
    v94 = [MCMError alloc];
    path11 = [v125 path];
    v24 = [(MCMError *)v94 initWithErrorType:29 category:5 path:path11 POSIXerrno:0];

    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      classCopy = v126;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Could not create container identity: %llu", buf, 0xCu);
    }

    goto LABEL_53;
  }

  v91 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataSchemaVersion"];
  objc_opt_class();
  v92 = v91;
  if (objc_opt_isKindOfClass())
  {
    v93 = v92;
  }

  else
  {
    v93 = 0;
  }

  v64 = pathCopy;
  v72 = v124;

  schemaVersion = self->_schemaVersion;
  self->_schemaVersion = v93;

  if (!self->_schemaVersion)
  {
    self->_schemaVersion = &unk_1F5A765B8;
  }

  v24 = 0;
  v70 = 1;
  v71 = v125;
LABEL_58:

  v73 = *MEMORY[0x1E69E9840];
  return v70;
}

- (NSString)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__MCMMetadataMinimal_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __33__MCMMetadataMinimal_description__block_invoke(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 32) identifier];
  v5 = v4;
  v6 = v4;
  if (a2)
  {
    v6 = [v4 redactedDescription];
  }

  v20 = v5;
  v7 = [*(a1 + 32) containerClass];
  if ([*(a1 + 32) transient])
  {
    v8 = "T";
  }

  else
  {
    v8 = "";
  }

  v9 = [*(a1 + 32) userIdentity];
  v10 = [v9 shortDescription];
  v11 = v10;
  v12 = v10;
  if (a2)
  {
    v12 = [v10 redactedDescription];
  }

  v13 = [*(a1 + 32) uuid];
  v14 = [*(a1 + 32) containerPath];
  v15 = [v14 containerPathIdentifier];
  v16 = [v19 stringWithFormat:@"<%@(%llu%s)%@;u%@;p%@>", v6, v7, v8, v12, v13, v15];;

  if (a2)
  {

    v11 = v9;
  }

  else
  {
    v6 = v9;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (NSString)shortDescription
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMMetadataMinimal *)self description];
}

- (NSString)debugDescription
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MCMMetadataMinimal_debugDescription__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __38__MCMMetadataMinimal_debugDescription__block_invoke(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(a1 + 32);
  v8 = [v7 userIdentity];
  v9 = v8;
  v10 = v8;
  if (a2)
  {
    v10 = [v8 redactedDescription];
  }

  v11 = [*(a1 + 32) uuid];
  v12 = [*(a1 + 32) containerClass];
  v13 = [*(a1 + 32) transient];
  v14 = [*(a1 + 32) identifier];
  v15 = v14;
  if (a2)
  {
    v16 = [v14 redactedDescription];
    v17 = [*(a1 + 32) containerPath];
    [v17 redactedDescription];
    v24 = v9;
    v19 = v18 = v6;
    v20 = [v25 stringWithFormat:@"<%@: %p userIdentity = %@, uuid = %@, containerClass = %llu, transient = %d, identifier = %@, containerPath = %@>", v18, v7, v10, v11, v12, v13, v16, v19];;

    v6 = v18;
    v9 = v24;

    v21 = v15;
    v15 = v11;
    v11 = v10;
  }

  else
  {
    v21 = [*(a1 + 32) containerPath];
    v20 = [v25 stringWithFormat:@"<%@: %p userIdentity = %@, uuid = %@, containerClass = %llu, transient = %d, identifier = %@, containerPath = %@>", v6, v7, v10, v11, v12, v13, v15, v21];;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_containerPath);
    objc_storeStrong(v5 + 2, self->_schemaVersion);
    objc_storeStrong(v5 + 3, self->_containerIdentity);
    objc_storeStrong(v5 + 4, self->_userIdentityCache);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)metadataByChangingContainerIdentity:(id)identity
{
  v9 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v5 = [(MCMMetadataMinimal *)self copy];
  v6 = v5[3];
  v5[3] = identityCopy;

  [v5 _clearPersistedStatus];
  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)metadataByChangingSchemaVersion:(id)version
{
  v9 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v5 = [(MCMMetadataMinimal *)self copy];
  v6 = v5[2];
  v5[2] = versionCopy;

  [v5 _clearPersistedStatus];
  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)metadataByChangingUUID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [(MCMMetadataMinimal *)self copy];
  containerIdentity = [(MCMMetadataMinimal *)self containerIdentity];
  v7 = [containerIdentity identityByChangingUUID:dCopy];

  v8 = v5[3];
  v5[3] = v7;

  [v5 _clearPersistedStatus];
  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)metadataByChangingContainerPath:(id)path
{
  v14 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [(MCMMetadataMinimal *)self copy];
  v6 = v5[1];
  v5[1] = pathCopy;
  v7 = pathCopy;

  v8 = v5[3];
  containerPathIdentifier = [v7 containerPathIdentifier];
  v10 = [v8 identityByChangingContainerPathIdentifier:containerPathIdentifier];
  v11 = v5[3];
  v5[3] = v10;

  [v5 _clearPersistedStatus];
  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (unsigned)platform
{
  v5 = *MEMORY[0x1E69E9840];
  containerIdentity = self->_containerIdentity;
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMContainerIdentityMinimal *)containerIdentity platform];
}

- (BOOL)transient
{
  v5 = *MEMORY[0x1E69E9840];
  containerIdentity = self->_containerIdentity;
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMContainerIdentity *)containerIdentity transient];
}

- (container_object_s)createLibsystemContainerWithError:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 1;
  containerIdentity = [(MCMMetadataMinimal *)self containerIdentity];
  containerPath = [(MCMMetadataMinimal *)self containerPath];
  containerPathIdentifier = [containerPath containerPathIdentifier];
  v8 = [containerIdentity createLibsystemContainerWithContainerPathIdentifier:containerPathIdentifier existed:-[MCMMetadataMinimal existed](self error:{"existed"), v12}];

  if (error && !v8)
  {
    v9 = [MCMError alloc];
    *error = [(MCMError *)v9 initWithErrorType:v12[0]];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)initByReadingAndValidatingMetadataAtFileURL:(id)l containerPath:(id)path userIdentity:(id)identity containerClass:(unint64_t)class userIdentityCache:(id)cache error:(id *)error
{
  v95 = *MEMORY[0x1E69E9840];
  lCopy = l;
  pathCopy = path;
  identityCopy = identity;
  cacheCopy = cache;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__3288;
  v79 = __Block_byref_object_dispose__3289;
  v80 = 0;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__3288;
  v73 = __Block_byref_object_dispose__3289;
  v74 = 0;
  v68.receiver = self;
  v68.super_class = MCMMetadataMinimal;
  v16 = [(MCMMetadataMinimal *)&v68 init];
  if (!v16)
  {
    v20 = 0;
    v18 = 0;
    goto LABEL_36;
  }

  v62 = [cacheCopy libraryRepairForUserIdentity:identityCopy];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __132__MCMMetadataMinimal_initByReadingAndValidatingMetadataAtFileURL_containerPath_userIdentity_containerClass_userIdentityCache_error___block_invoke;
  v66[3] = &unk_1E86B0C78;
  v66[4] = &v75;
  v66[5] = &v69;
  v67 = 0;
  [v62 fixAndRetryIfPermissionsErrorWithURL:lCopy containerRootURL:uRLByDeletingLastPathComponent error:&v67 duringBlock:v66];
  v17 = v67;
  v18 = v17;
  if (v76[5])
  {
    v19 = 0;
    goto LABEL_26;
  }

  if (v17)
  {
    domain = [(MCMError *)v17 domain];
    if ([domain isEqual:*MEMORY[0x1E696A250]])
    {
      v22 = [(MCMError *)v18 code]== 2048;

      if (v22)
      {
        v23 = [MCMError alloc];
        path = [lCopy path];
        v20 = [(MCMError *)v23 initWithErrorType:108 category:5 path:path POSIXerrno:0];

        path3 = container_log_handle_for_category();
        if (os_log_type_enabled(path3, OS_LOG_TYPE_ERROR))
        {
          path2 = [lCopy path];
          *buf = 138543362;
          v82 = path2;
          _os_log_error_impl(&dword_1DF2C3000, path3, OS_LOG_TYPE_ERROR, "Metadata file at [%{public}@] is corrupt.", buf, 0xCu);
        }

        goto LABEL_23;
      }
    }

    else
    {
    }
  }

  domain2 = [(MCMError *)v18 domain];
  v28 = *MEMORY[0x1E696A798];
  v29 = [domain2 isEqual:*MEMORY[0x1E696A798]];

  if (v29)
  {
    domain3 = [(MCMError *)v18 domain];
    if ([domain3 isEqualToString:v28])
    {
      v31 = [(MCMError *)v18 code]== 2;

      if (v31)
      {
LABEL_22:
        v34 = [MCMError alloc];
        path3 = [lCopy path];
        v20 = [(MCMError *)v34 initWithErrorType:127 category:1 path:path3 POSIXerrno:[(MCMError *)v18 code]];
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
    }

    v33 = container_log_handle_for_category();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      path4 = [lCopy path];
      *buf = 138543618;
      v82 = path4;
      v83 = 2112;
      v84 = v18;
      _os_log_error_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_ERROR, "Could not read metadata file at [%{public}@]; error = %@", buf, 0x16u);
    }

    goto LABEL_22;
  }

  v32 = container_log_handle_for_category();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    path5 = [lCopy path];
    *buf = 138543618;
    v82 = path5;
    v83 = 2112;
    v84 = v18;
    _os_log_error_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_ERROR, "Could not read metadata file at [%{public}@]; error = %@", buf, 0x16u);
  }

  v20 = [[MCMError alloc] initWithErrorType:12];
LABEL_24:
  if (v76[5])
  {
    v19 = v20;
LABEL_26:
    v35 = v70[5];
    v65 = v19;
    v36 = [MCMMetadataMinimal _initFromMetadataInDictionary:v16 containerPath:"_initFromMetadataInDictionary:containerPath:userIdentity:containerClass:fsNode:fileURL:userIdentityCache:error:" userIdentity:cacheCopy containerClass:&v65 fsNode:? fileURL:? userIdentityCache:? error:?];
    v20 = v65;

    if (v36)
    {
      v37 = container_log_handle_for_category();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);

      if (v38)
      {
        v39 = container_log_handle_for_category();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          uuid = [(MCMMetadataMinimal *)v16 uuid];
          containerPath = [(MCMMetadataMinimal *)v16 containerPath];
          containerPathIdentifier = [containerPath containerPathIdentifier];
          identifier = [(MCMMetadataMinimal *)v16 identifier];
          containerClass = [(MCMMetadataMinimal *)v16 containerClass];
          v60 = [(MCMMetadataMinimal *)v16 conformsToProtocol:&unk_1F5A81C70];
          if (v60)
          {
            fsNode = [(MCMMetadataMinimal *)v16 fsNode];
            inode = [fsNode inode];
          }

          else
          {
            inode = 0;
          }

          path6 = [lCopy path];
          shortDescription = [(MCMMetadataMinimal *)v16 shortDescription];
          *buf = 138544898;
          v82 = uuid;
          v83 = 2114;
          v84 = containerPathIdentifier;
          v85 = 2112;
          v86 = identifier;
          v87 = 2050;
          v88 = containerClass;
          v89 = 2048;
          v90 = inode;
          v91 = 2112;
          v92 = path6;
          v93 = 2112;
          v94 = shortDescription;
          _os_log_debug_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_DEBUG, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Read metadata from [%@]: %@", buf, 0x48u);

          if (v60)
          {
          }
        }
      }

      goto LABEL_44;
    }

    goto LABEL_35;
  }

  if (!v20)
  {
    domain4 = [(MCMError *)v18 domain];
    v41 = [domain4 isEqualToString:*MEMORY[0x1E696A798]];

    if (v41)
    {
      v42 = [MCMError alloc];
      path7 = [lCopy path];
      v20 = [(MCMError *)v42 initWithErrorType:127 category:1 path:path7 POSIXerrno:[(MCMError *)v18 code]];
    }

    else
    {
      v20 = [[MCMError alloc] initWithErrorType:108];
    }
  }

LABEL_35:

LABEL_36:
  if ([(MCMError *)v20 category]!= 1 || [(MCMError *)v20 POSIXerrno]!= 2)
  {
    v44 = container_log_handle_for_category();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      path8 = [lCopy path];
      *buf = 138412546;
      v82 = path8;
      v83 = 2112;
      v84 = v20;
      _os_log_error_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_ERROR, "Failed to read container metadata [%@]: %@", buf, 0x16u);
    }
  }

  if (error)
  {
    v45 = v20;
    v16 = 0;
    *error = v20;
  }

  else
  {
    v16 = 0;
  }

LABEL_44:
  v46 = v16;
  _Block_object_dispose(&v69, 8);

  _Block_object_dispose(&v75, 8);
  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

BOOL __132__MCMMetadataMinimal_initByReadingAndValidatingMetadataAtFileURL_containerPath_userIdentity_containerClass_userIdentityCache_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 40) + 8);
  obj[0] = *(v4 + 40);
  v5 = [MEMORY[0x1E695DF20] MCM_dictionaryWithContentsOfURL:a2 options:0 fsNode:obj error:a3];
  objc_storeStrong((v4 + 40), obj[0]);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  result = *(*(*(a1 + 32) + 8) + 40) != 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)initByReadingAndValidatingMetadataAtContainerPath:(id)path userIdentity:(id)identity containerClass:(unint64_t)class userIdentityCache:(id)cache error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  identityCopy = identity;
  pathCopy = path;
  metadataURL = [pathCopy metadataURL];
  v16 = [(MCMMetadataMinimal *)self initByReadingAndValidatingMetadataAtFileURL:metadataURL containerPath:pathCopy userIdentity:identityCopy containerClass:class userIdentityCache:cacheCopy error:error];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (MCMMetadataMinimal)initWithContainerIdentity:(id)identity containerPath:(id)path schemaVersion:(id)version userIdentityCache:(id)cache
{
  v21 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  pathCopy = path;
  versionCopy = version;
  cacheCopy = cache;
  v20.receiver = self;
  v20.super_class = MCMMetadataMinimal;
  v15 = [(MCMMetadataMinimal *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_containerPath, path);
    objc_storeStrong(&v16->_containerIdentity, identity);
    if (versionCopy)
    {
      v17 = versionCopy;
    }

    else
    {
      v17 = &unk_1F5A76F90;
    }

    objc_storeStrong(&v16->_schemaVersion, v17);
    objc_storeStrong(&v16->_userIdentityCache, cache);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

@end