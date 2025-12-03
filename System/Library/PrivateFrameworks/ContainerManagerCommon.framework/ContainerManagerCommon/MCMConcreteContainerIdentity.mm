@interface MCMConcreteContainerIdentity
+ (id)concreteContainerIdentityFromPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConcreteContainerIdentity:(id)identity;
- (MCMConcreteContainerIdentity)init;
- (MCMConcreteContainerIdentity)initWithContainerIdentity:(id)identity UUID:(id)d error:(unint64_t *)error;
- (MCMConcreteContainerIdentity)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error;
- (MCMConcreteContainerIdentity)initWithPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error;
- (MCMConcreteContainerIdentity)initWithVersion1PlistDictionary:(id)dictionary containerIdentity:(id)identity error:(unint64_t *)error;
- (NSString)debugDescription;
- (NSString)description;
- (NSUUID)uuid;
- (container_object_s)createLibsystemContainerWithContainerPathIdentifier:(id)identifier existed:(BOOL)existed error:(unint64_t *)error;
- (id)containerIdentity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)plist;
- (unint64_t)hash;
@end

@implementation MCMConcreteContainerIdentity

- (NSUUID)uuid
{
  result = self->_uuid;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MCMConcreteContainerIdentity;
  v5 = [(MCMContainerIdentity *)&v10 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSUUID *)self->_uuid copyWithZone:zone];
    v7 = v5[7];
    v5[7] = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v9 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MCMConcreteContainerIdentity *)self isEqualToConcreteContainerIdentity:equalCopy];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  v6 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MCMContainerIdentity *)self isEqualToContainerIdentity:equalCopy];
    goto LABEL_5;
  }

LABEL_6:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqualToConcreteContainerIdentity:(id)identity
{
  v9 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  if ([(NSUUID *)self->_uuid isEqual:identityCopy[7]])
  {
    v8.receiver = self;
    v8.super_class = MCMConcreteContainerIdentity;
    v5 = [(MCMContainerIdentity *)&v8 isEqualToContainerIdentity:identityCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMConcreteContainerIdentity;
  v3 = [(MCMContainerIdentity *)&v7 hash];
  v4 = [(NSUUID *)self->_uuid hash];
  v5 = *MEMORY[0x1E69E9840];
  return v4 ^ v3;
}

- (NSString)debugDescription
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MCMConcreteContainerIdentity_debugDescription__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __48__MCMConcreteContainerIdentity_debugDescription__block_invoke(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(a1 + 32);
  v8 = [v7 userIdentity];
  v9 = [v8 shortDescription];
  v10 = v9;
  v23 = a2;
  v24 = v6;
  if (a2)
  {
    v11 = [v9 redactedDescription];
    v21 = [*(a1 + 32) identifier];
    v12 = [v21 redactedDescription];
  }

  else
  {
    v12 = [*(a1 + 32) identifier];
    v11 = v10;
  }

  v13 = [*(a1 + 32) containerConfig];
  v14 = [v13 debugDescription];
  v15 = [*(a1 + 32) platform];
  v16 = [*(a1 + 32) transient];
  v17 = [*(a1 + 32) uuid];
  v18 = [v22 stringWithFormat:@"<%@: %p userIdentity = %@, identifier = %@, class = %@, platform = %d, transient = %d, uuid = %@>", v24, v7, v11, v12, v14, v15, v16, v17];;

  if (v23)
  {

    v12 = v11;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (NSString)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MCMConcreteContainerIdentity_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __43__MCMConcreteContainerIdentity_description__block_invoke(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 32) identifier];
  v5 = v4;
  v6 = v4;
  if (a2)
  {
    v6 = [v4 redactedDescription];
  }

  v7 = [*(a1 + 32) containerConfig];
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
  v14 = [v17 stringWithFormat:@"<%@(%@%s)%@;u%@;pf%d>", v6, v7, v8, v12, v13, objc_msgSend(*(a1 + 32), "platform")];;

  if (a2)
  {

    v11 = v9;
    v9 = v7;
  }

  else
  {
    v6 = v7;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)containerIdentity
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [MCMContainerIdentity alloc];
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  transient = [(MCMContainerIdentity *)self transient];
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  v10 = [(MCMContainerIdentity *)v3 initWithUserIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform transient:transient userIdentityCache:userIdentityCache error:0];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (container_object_s)createLibsystemContainerWithContainerPathIdentifier:(id)identifier existed:(BOOL)existed error:(unint64_t *)error
{
  v17[2] = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v17[1] = 0;
  identifierCopy = identifier;
  uuid = [(MCMConcreteContainerIdentity *)self uuid];
  [uuid getUUIDBytes:v17];

  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  [identifier UTF8String];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  [containerConfig containerClass];
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  posixUser = [userIdentity posixUser];
  [posixUser UID];
  [identifierCopy UTF8String];

  userIdentity2 = [(MCMContainerIdentityMinimal *)self userIdentity];
  personaUniqueString = [userIdentity2 personaUniqueString];
  [personaUniqueString UTF8String];
  [(MCMContainerIdentity *)self transient];
  v13 = container_object_create();

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)plist
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MCMConcreteContainerIdentity;
  plist = [(MCMContainerIdentity *)&v10 plist];
  v4 = [plist mutableCopy];
  uuid = [(MCMConcreteContainerIdentity *)self uuid];
  uUIDString = [uuid UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"UUID"];

  v7 = [v4 copy];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (MCMConcreteContainerIdentity)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 1;
  v12.receiver = self;
  v12.super_class = MCMConcreteContainerIdentity;
  v7 = [MCMContainerIdentity initWithLibsystemContainer:sel_initWithLibsystemContainer_defaultUserIdentity_userIdentityCache_error_ defaultUserIdentity:? userIdentityCache:? error:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:container_object_get_uuid()];
    uuid = v7->_uuid;
    v7->_uuid = v8;
  }

  else if (error)
  {
    *error = v13;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (MCMConcreteContainerIdentity)initWithVersion1PlistDictionary:(id)dictionary containerIdentity:(id)identity error:(unint64_t *)error
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  identityCopy = identity;
  v18 = 1;
  v10 = [dictionaryCopy objectForKeyedSubscript:@"UUID"];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
      if (v11)
      {
        v12 = v11;
        v13 = [(MCMConcreteContainerIdentity *)self initWithContainerIdentity:identityCopy UUID:v11 error:&v18];
        self = v13;
        if (!error)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }
  }

  v18 = 116;
  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v20 = @"UUID";
    v21 = 2112;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = dictionaryCopy;
    v17 = v22;
    _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Invalid container identity plist data. Expected UUID string for %@, got %@. Data: %@", buf, 0x20u);
  }

  v12 = 0;
  v13 = 0;
  if (error)
  {
LABEL_9:
    if (!v13)
    {
      *error = v18;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (MCMConcreteContainerIdentity)initWithContainerIdentity:(id)identity UUID:(id)d error:(unint64_t *)error
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identityCopy = identity;
  userIdentity = [identityCopy userIdentity];
  identifier = [identityCopy identifier];
  containerConfig = [identityCopy containerConfig];
  platform = [identityCopy platform];
  transient = [identityCopy transient];
  userIdentityCache = [identityCopy userIdentityCache];

  v16 = [(MCMConcreteContainerIdentity *)self initWithUUID:dCopy userIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform transient:transient userIdentityCache:userIdentityCache error:error];
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (MCMConcreteContainerIdentity)initWithPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  v17[0] = 1;
  v16.receiver = self;
  v16.super_class = MCMConcreteContainerIdentity;
  v9 = [(MCMContainerIdentityMinimal *)&v16 initWithPlist:plistCopy userIdentityCache:cache error:v17];
  if (v9)
  {
    v10 = plistCopy;
    v11 = [v10 objectForKeyedSubscript:@"version"];
    v12 = [v11 isEqual:@"1"];

    if (v12)
    {
      v13 = [(MCMConcreteContainerIdentity *)v9 initWithVersion1PlistDictionary:v10 containerIdentity:v9 error:error];
    }

    else
    {

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (MCMConcreteContainerIdentity)init
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_ERROR, "You cannot init this class directly.", v6, 2u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (id)concreteContainerIdentityFromPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error
{
  v13 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  plistCopy = plist;
  v10 = [[self alloc] initWithPlist:plistCopy userIdentityCache:cacheCopy error:error];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end