@interface MCMConcreteContainerIdentity
+ (id)concreteContainerIdentityFromPlist:(id)a3 userIdentityCache:(id)a4 error:(unint64_t *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConcreteContainerIdentity:(id)a3;
- (MCMConcreteContainerIdentity)init;
- (MCMConcreteContainerIdentity)initWithContainerIdentity:(id)a3 UUID:(id)a4 error:(unint64_t *)a5;
- (MCMConcreteContainerIdentity)initWithLibsystemContainer:(container_object_s *)a3 defaultUserIdentity:(id)a4 userIdentityCache:(id)a5 error:(unint64_t *)a6;
- (MCMConcreteContainerIdentity)initWithPlist:(id)a3 userIdentityCache:(id)a4 error:(unint64_t *)a5;
- (MCMConcreteContainerIdentity)initWithVersion1PlistDictionary:(id)a3 containerIdentity:(id)a4 error:(unint64_t *)a5;
- (NSString)debugDescription;
- (NSString)description;
- (NSUUID)uuid;
- (container_object_s)createLibsystemContainerWithContainerPathIdentifier:(id)a3 existed:(BOOL)a4 error:(unint64_t *)a5;
- (id)containerIdentity;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MCMConcreteContainerIdentity;
  v5 = [(MCMContainerIdentity *)&v10 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSUUID *)self->_uuid copyWithZone:a3];
    v7 = v5[7];
    v5[7] = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MCMConcreteContainerIdentity *)self isEqualToConcreteContainerIdentity:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  v6 = self == v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MCMContainerIdentity *)self isEqualToContainerIdentity:v4];
    goto LABEL_5;
  }

LABEL_6:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqualToConcreteContainerIdentity:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSUUID *)self->_uuid isEqual:v4[7]])
  {
    v8.receiver = self;
    v8.super_class = MCMConcreteContainerIdentity;
    v5 = [(MCMContainerIdentity *)&v8 isEqualToContainerIdentity:v4];
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
  v4 = [(MCMContainerIdentityMinimal *)self userIdentity];
  v5 = [(MCMContainerIdentityMinimal *)self identifier];
  v6 = [(MCMContainerIdentityMinimal *)self containerConfig];
  v7 = [(MCMContainerIdentityMinimal *)self platform];
  v8 = [(MCMContainerIdentity *)self transient];
  v9 = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  v10 = [(MCMContainerIdentity *)v3 initWithUserIdentity:v4 identifier:v5 containerConfig:v6 platform:v7 transient:v8 userIdentityCache:v9 error:0];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (container_object_s)createLibsystemContainerWithContainerPathIdentifier:(id)a3 existed:(BOOL)a4 error:(unint64_t *)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v17[1] = 0;
  v6 = a3;
  v7 = [(MCMConcreteContainerIdentity *)self uuid];
  [v7 getUUIDBytes:v17];

  v8 = [(MCMContainerIdentityMinimal *)self identifier];
  [v8 UTF8String];
  v16 = [(MCMContainerIdentityMinimal *)self containerConfig];
  [v16 containerClass];
  v9 = [(MCMContainerIdentityMinimal *)self userIdentity];
  v10 = [v9 posixUser];
  [v10 UID];
  [v6 UTF8String];

  v11 = [(MCMContainerIdentityMinimal *)self userIdentity];
  v12 = [v11 personaUniqueString];
  [v12 UTF8String];
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
  v3 = [(MCMContainerIdentity *)&v10 plist];
  v4 = [v3 mutableCopy];
  v5 = [(MCMConcreteContainerIdentity *)self uuid];
  v6 = [v5 UUIDString];
  [v4 setObject:v6 forKeyedSubscript:@"UUID"];

  v7 = [v4 copy];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (MCMConcreteContainerIdentity)initWithLibsystemContainer:(container_object_s *)a3 defaultUserIdentity:(id)a4 userIdentityCache:(id)a5 error:(unint64_t *)a6
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

  else if (a6)
  {
    *a6 = v13;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (MCMConcreteContainerIdentity)initWithVersion1PlistDictionary:(id)a3 containerIdentity:(id)a4 error:(unint64_t *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v18 = 1;
  v10 = [v8 objectForKeyedSubscript:@"UUID"];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
      if (v11)
      {
        v12 = v11;
        v13 = [(MCMConcreteContainerIdentity *)self initWithContainerIdentity:v9 UUID:v11 error:&v18];
        self = v13;
        if (!a5)
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
    v24 = v8;
    v17 = v22;
    _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Invalid container identity plist data. Expected UUID string for %@, got %@. Data: %@", buf, 0x20u);
  }

  v12 = 0;
  v13 = 0;
  if (a5)
  {
LABEL_9:
    if (!v13)
    {
      *a5 = v18;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (MCMConcreteContainerIdentity)initWithContainerIdentity:(id)a3 UUID:(id)a4 error:(unint64_t *)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [v9 userIdentity];
  v11 = [v9 identifier];
  v12 = [v9 containerConfig];
  v13 = [v9 platform];
  v14 = [v9 transient];
  v15 = [v9 userIdentityCache];

  v16 = [(MCMConcreteContainerIdentity *)self initWithUUID:v8 userIdentity:v10 identifier:v11 containerConfig:v12 platform:v13 transient:v14 userIdentityCache:v15 error:a5];
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (MCMConcreteContainerIdentity)initWithPlist:(id)a3 userIdentityCache:(id)a4 error:(unint64_t *)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v17[0] = 1;
  v16.receiver = self;
  v16.super_class = MCMConcreteContainerIdentity;
  v9 = [(MCMContainerIdentityMinimal *)&v16 initWithPlist:v8 userIdentityCache:a4 error:v17];
  if (v9)
  {
    v10 = v8;
    v11 = [v10 objectForKeyedSubscript:@"version"];
    v12 = [v11 isEqual:@"1"];

    if (v12)
    {
      v13 = [(MCMConcreteContainerIdentity *)v9 initWithVersion1PlistDictionary:v10 containerIdentity:v9 error:a5];
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

+ (id)concreteContainerIdentityFromPlist:(id)a3 userIdentityCache:(id)a4 error:(unint64_t *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithPlist:v9 userIdentityCache:v8 error:a5];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end