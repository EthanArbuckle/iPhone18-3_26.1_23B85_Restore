@interface MCMContainerIdentity
+ (id)containerIdentityFromPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContainerIdentity:(id)identity;
- (BOOL)transient;
- (MCMContainerIdentity)init;
- (MCMContainerIdentity)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error;
- (MCMContainerIdentity)initWithVersion1PlistDictionary:(id)dictionary userIdentityCache:(id)cache error:(unint64_t *)error;
- (NSString)debugDescription;
- (NSString)description;
- (id)containerIdentity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identityByChangingTransient:(BOOL)transient;
- (id)identityByChangingUserIdentity:(id)identity;
- (id)nontransientContainerIdentity;
- (id)plist;
- (id)transientContainerIdentity;
- (unint64_t)hash;
@end

@implementation MCMContainerIdentity

- (BOOL)transient
{
  result = self->_transient;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() allocWithZone:zone];
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  v8 = [identifier copyWithZone:zone];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  transient = self->_transient;
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  v13 = [v5 initWithUserIdentity:userIdentity identifier:v8 containerConfig:containerConfig platform:platform transient:transient userIdentityCache:userIdentityCache error:0];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  v8 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MCMContainerIdentity *)self isEqualToContainerIdentity:equalCopy];
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToContainerIdentity:(id)identity
{
  v9 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v8.receiver = self;
  v8.super_class = MCMContainerIdentity;
  if ([(MCMContainerIdentityMinimal *)&v8 isEqualToContainerIdentity:identityCopy])
  {
    v5 = self->_transient == identityCopy[48];
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
  v7.super_class = MCMContainerIdentity;
  v3 = [(MCMContainerIdentityMinimal *)&v7 hash];
  v4 = 15;
  if (!self->_transient)
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4 ^ v3;
}

- (NSString)debugDescription
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MCMContainerIdentity_debugDescription__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __40__MCMContainerIdentity_debugDescription__block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v19 = NSStringFromClass(v5);
  v6 = *(a1 + 32);
  v7 = [v6 userIdentity];
  v8 = [v7 shortDescription];
  v9 = v8;
  if (a2)
  {
    v10 = [v8 redactedDescription];
    v17 = [*(a1 + 32) identifier];
    v11 = [v17 redactedDescription];
  }

  else
  {
    v11 = [*(a1 + 32) identifier];
    v10 = v9;
  }

  v12 = [*(a1 + 32) containerConfig];
  v13 = [v12 debugDescription];
  v14 = [v18 stringWithFormat:@"<%@: %p userIdentity = %@, identifier = %@, class = %@, platform = %d, transient = %d>", v19, v6, v10, v11, v13, objc_msgSend(*(a1 + 32), "platform"), objc_msgSend(*(a1 + 32), "transient")];;

  if (a2)
  {

    v11 = v10;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (NSString)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MCMContainerIdentity_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __35__MCMContainerIdentity_description__block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) identifier];
  v6 = v5;
  v7 = v5;
  if (a2)
  {
    v7 = [v5 redactedDescription];
  }

  v8 = [*(a1 + 32) containerConfig];
  if ([*(a1 + 32) transient])
  {
    v9 = "T";
  }

  else
  {
    v9 = "";
  }

  v10 = [*(a1 + 32) userIdentity];
  v11 = [v10 shortDescription];
  v12 = v11;
  v13 = v11;
  if (a2)
  {
    v13 = [v11 redactedDescription];
  }

  v14 = [v4 stringWithFormat:@"<%@(%@%s)%@;pf%d>", v7, v8, v9, v13, objc_msgSend(*(a1 + 32), "platform")];;
  if (a2)
  {

    v12 = v10;
    v10 = v8;
  }

  else
  {
    v7 = v8;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)containerIdentity
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return self;
}

- (id)identityByChangingUserIdentity:(id)identity
{
  v13 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  transient = [(MCMContainerIdentity *)self transient];
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  v10 = [MCMContainerIdentity containerIdentityWithUserIdentity:identityCopy identifier:identifier containerConfig:containerConfig platform:platform transient:transient userIdentityCache:userIdentityCache error:0];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)identityByChangingTransient:(BOOL)transient
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(MCMContainerIdentity *)self copy];
  v4[48] = transient;
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)nontransientContainerIdentity
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if ([(MCMContainerIdentity *)selfCopy transient])
  {
    v3 = objc_alloc(objc_opt_class());
    userIdentity = [(MCMContainerIdentityMinimal *)selfCopy userIdentity];
    identifier = [(MCMContainerIdentityMinimal *)selfCopy identifier];
    containerConfig = [(MCMContainerIdentityMinimal *)selfCopy containerConfig];
    platform = [(MCMContainerIdentityMinimal *)selfCopy platform];
    userIdentityCache = [(MCMContainerIdentityMinimal *)selfCopy userIdentityCache];
    v9 = [v3 initWithUserIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform transient:0 userIdentityCache:userIdentityCache error:0];

    selfCopy = v9;
  }

  v10 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)transientContainerIdentity
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (![(MCMContainerIdentity *)selfCopy transient])
  {
    v3 = objc_alloc(objc_opt_class());
    userIdentity = [(MCMContainerIdentityMinimal *)selfCopy userIdentity];
    identifier = [(MCMContainerIdentityMinimal *)selfCopy identifier];
    containerConfig = [(MCMContainerIdentityMinimal *)selfCopy containerConfig];
    platform = [(MCMContainerIdentityMinimal *)selfCopy platform];
    userIdentityCache = [(MCMContainerIdentityMinimal *)selfCopy userIdentityCache];
    v9 = [v3 initWithUserIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform transient:1 userIdentityCache:userIdentityCache error:0];

    selfCopy = v9;
  }

  v10 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (MCMContainerIdentity)initWithVersion1PlistDictionary:(id)dictionary userIdentityCache:(id)cache error:(unint64_t *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  cacheCopy = cache;
  v20[0] = 1;
  v19.receiver = self;
  v19.super_class = MCMContainerIdentity;
  v10 = [(MCMContainerIdentityMinimal *)&v19 initWithVersion1PlistDictionary:dictionaryCopy userIdentityCache:cacheCopy error:v20];
  if (!v10)
  {
    v16 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"transient"];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v11 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  userIdentity = [(MCMContainerIdentityMinimal *)v10 userIdentity];
  identifier = [(MCMContainerIdentityMinimal *)v10 identifier];
  containerConfig = [(MCMContainerIdentityMinimal *)v10 containerConfig];
  v16 = [(MCMContainerIdentity *)v10 initWithUserIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:[(MCMContainerIdentityMinimal *)v10 platform] transient:bOOLValue userIdentityCache:cacheCopy error:v20];

  if (error)
  {
LABEL_9:
    if (!v16)
    {
      *error = v20[0];
    }
  }

LABEL_11:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)plist
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MCMContainerIdentity;
  plist = [(MCMContainerIdentityMinimal *)&v9 plist];
  v4 = [plist mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCMContainerIdentity transient](self, "transient")}];
  [v4 setObject:v5 forKeyedSubscript:@"transient"];

  v6 = [v4 copy];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (MCMContainerIdentity)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 1;
  v11 = 0;
  v10.receiver = self;
  v10.super_class = MCMContainerIdentity;
  v7 = [MCMContainerIdentityMinimal initWithLibsystemContainer:sel_initWithLibsystemContainer_defaultUserIdentity_userIdentityCache_error_ defaultUserIdentity:? userIdentityCache:? error:?];
  if (v7)
  {
    container_is_transient();
    v7->_transient = v11;
  }

  else if (error)
  {
    *error = v12;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (MCMContainerIdentity)init
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

+ (id)containerIdentityFromPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error
{
  v13 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  plistCopy = plist;
  v10 = [[self alloc] initWithPlist:plistCopy userIdentityCache:cacheCopy error:error];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end