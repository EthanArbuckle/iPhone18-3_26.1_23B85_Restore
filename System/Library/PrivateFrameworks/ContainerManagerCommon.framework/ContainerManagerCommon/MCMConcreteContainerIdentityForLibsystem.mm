@interface MCMConcreteContainerIdentityForLibsystem
+ (id)containerIdentityWithUUID:(id)d userIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform containerPathIdentifier:(id)pathIdentifier existed:(BOOL)existed transient:(BOOL)self0 userIdentityCache:(id)self1 error:(unint64_t *)self2;
- (BOOL)existed;
- (MCMConcreteContainerIdentityForLibsystem)init;
- (MCMConcreteContainerIdentityForLibsystem)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error;
- (NSString)containerPathIdentifier;
- (NSString)debugDescription;
- (NSString)description;
- (container_object_s)createLibsystemContainerWithError:(unint64_t *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identityByChangingContainerPathIdentifier:(id)identifier;
- (id)identityByChangingIdentifier:(id)identifier;
- (id)identityByChangingTransient:(BOOL)transient;
- (id)identityByChangingUUID:(id)d;
- (id)nontransientConcreteContainerIdentityForLibsystem;
- (id)nontransientContainerIdentity;
- (id)transientConcreteContainerIdentityForLibsystem;
- (id)transientContainerIdentity;
@end

@implementation MCMConcreteContainerIdentityForLibsystem

- (BOOL)existed
{
  result = self->_existed;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)containerPathIdentifier
{
  result = self->_containerPathIdentifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MCMConcreteContainerIdentityForLibsystem;
  v5 = [(MCMConcreteContainerIdentity *)&v10 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_containerPathIdentifier copyWithZone:zone];
    v7 = v5[9];
    v5[9] = v6;

    *(v5 + 64) = self->_existed;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSString)debugDescription
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MCMConcreteContainerIdentityForLibsystem_debugDescription__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __60__MCMConcreteContainerIdentityForLibsystem_debugDescription__block_invoke(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(a1 + 32);
  v23 = [v7 userIdentity];
  v8 = [v23 shortDescription];
  v9 = v8;
  v24 = a2;
  v25 = v6;
  v21 = v8;
  if (a2)
  {
    v9 = [v8 redactedDescription];
    v20 = [*(a1 + 32) identifier];
    [v20 redactedDescription];
  }

  else
  {
    [*(a1 + 32) identifier];
  }
  v10 = ;
  v11 = [*(a1 + 32) containerConfig];
  v12 = [v11 debugDescription];
  v13 = [*(a1 + 32) platform];
  v14 = [*(a1 + 32) transient];
  v15 = [*(a1 + 32) uuid];
  v16 = [*(a1 + 32) containerPathIdentifier];
  v17 = [v22 stringWithFormat:@"<%@: %p userIdentity = %@, identifier = %@, class = %@, platform = %d, transient = %d, uuid = %@, containerPathIdentifier = %@, existed = %d>", v25, v7, v9, v10, v12, v13, v14, v15, v16, objc_msgSend(*(a1 + 32), "existed")];;

  if (v24)
  {

    v10 = v9;
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
  v7[2] = __55__MCMConcreteContainerIdentityForLibsystem_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __55__MCMConcreteContainerIdentityForLibsystem_description__block_invoke(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 32) identifier];
  v5 = v4;
  v6 = v4;
  if (a2)
  {
    v6 = [v4 redactedDescription];
  }

  v24 = v5;
  v7 = [*(a1 + 32) containerConfig];
  v8 = [*(a1 + 32) transient];
  v9 = "T";
  if (!v8)
  {
    v9 = "";
  }

  v22 = v9;
  v10 = [*(a1 + 32) userIdentity];
  v11 = [v10 shortDescription];
  v12 = v11;
  v13 = v11;
  if (a2)
  {
    v13 = [v11 redactedDescription];
  }

  v14 = [*(a1 + 32) uuid];
  v15 = [*(a1 + 32) containerPathIdentifier];
  v16 = [*(a1 + 32) platform];
  v17 = [*(a1 + 32) existed];
  v18 = ";E";
  if (!v17)
  {
    v18 = "";
  }

  v19 = [v23 stringWithFormat:@"<%@(%@%s)%@;u%@;p%@;pf%d%s>", v6, v7, v22, v13, v14, v15, v16, v18];;

  if (a2)
  {

    v12 = v10;
    v10 = v7;
  }

  else
  {
    v6 = v7;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)identityByChangingIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v17 = objc_alloc(objc_opt_class());
  uuid = [(MCMConcreteContainerIdentity *)self uuid];
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  containerPathIdentifier = [(MCMConcreteContainerIdentityForLibsystem *)self containerPathIdentifier];
  existed = [(MCMConcreteContainerIdentityForLibsystem *)self existed];
  transient = [(MCMContainerIdentity *)self transient];
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  BYTE1(v16) = transient;
  LOBYTE(v16) = existed;
  v13 = [v17 initWithUUID:uuid userIdentity:userIdentity identifier:identifierCopy containerConfig:containerConfig platform:platform containerPathIdentifier:containerPathIdentifier existed:v16 transient:userIdentityCache userIdentityCache:0 error:?];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)identityByChangingContainerPathIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v17 = objc_alloc(objc_opt_class());
  uuid = [(MCMConcreteContainerIdentity *)self uuid];
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  existed = [(MCMConcreteContainerIdentityForLibsystem *)self existed];
  transient = [(MCMContainerIdentity *)self transient];
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  BYTE1(v16) = transient;
  LOBYTE(v16) = existed;
  v13 = [v17 initWithUUID:uuid userIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform containerPathIdentifier:identifierCopy existed:v16 transient:userIdentityCache userIdentityCache:0 error:?];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)identityByChangingTransient:(BOOL)transient
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(objc_opt_class());
  uuid = [(MCMConcreteContainerIdentity *)self uuid];
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  containerPathIdentifier = [(MCMConcreteContainerIdentityForLibsystem *)self containerPathIdentifier];
  existed = [(MCMConcreteContainerIdentityForLibsystem *)self existed];
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  BYTE1(v17) = transient;
  LOBYTE(v17) = existed;
  v14 = [v5 initWithUUID:uuid userIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform containerPathIdentifier:containerPathIdentifier existed:v17 transient:userIdentityCache userIdentityCache:0 error:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)identityByChangingUUID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v17 = objc_alloc(objc_opt_class());
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  containerPathIdentifier = [(MCMConcreteContainerIdentityForLibsystem *)self containerPathIdentifier];
  existed = [(MCMConcreteContainerIdentityForLibsystem *)self existed];
  transient = [(MCMContainerIdentity *)self transient];
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  BYTE1(v16) = transient;
  LOBYTE(v16) = existed;
  v13 = [v17 initWithUUID:dCopy userIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform containerPathIdentifier:containerPathIdentifier existed:v16 transient:userIdentityCache userIdentityCache:0 error:?];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)nontransientConcreteContainerIdentityForLibsystem
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMConcreteContainerIdentityForLibsystem *)self nontransientContainerIdentity];
}

- (id)transientConcreteContainerIdentityForLibsystem
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMConcreteContainerIdentityForLibsystem *)self transientContainerIdentity];
}

- (id)nontransientContainerIdentity
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if ([(MCMContainerIdentity *)selfCopy transient])
  {
    v3 = objc_alloc(objc_opt_class());
    uuid = [(MCMConcreteContainerIdentity *)selfCopy uuid];
    userIdentity = [(MCMContainerIdentityMinimal *)selfCopy userIdentity];
    identifier = [(MCMContainerIdentityMinimal *)selfCopy identifier];
    containerConfig = [(MCMContainerIdentityMinimal *)selfCopy containerConfig];
    platform = [(MCMContainerIdentityMinimal *)selfCopy platform];
    containerPathIdentifier = [(MCMConcreteContainerIdentityForLibsystem *)selfCopy containerPathIdentifier];
    existed = [(MCMConcreteContainerIdentityForLibsystem *)selfCopy existed];
    userIdentityCache = [(MCMContainerIdentityMinimal *)selfCopy userIdentityCache];
    LOWORD(v15) = existed;
    v12 = [v3 initWithUUID:uuid userIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform containerPathIdentifier:containerPathIdentifier existed:v15 transient:userIdentityCache userIdentityCache:0 error:?];

    selfCopy = v12;
  }

  v13 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)transientContainerIdentity
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (![(MCMContainerIdentity *)selfCopy transient])
  {
    v3 = objc_alloc(objc_opt_class());
    uuid = [(MCMConcreteContainerIdentity *)selfCopy uuid];
    userIdentity = [(MCMContainerIdentityMinimal *)selfCopy userIdentity];
    identifier = [(MCMContainerIdentityMinimal *)selfCopy identifier];
    containerConfig = [(MCMContainerIdentityMinimal *)selfCopy containerConfig];
    platform = [(MCMContainerIdentityMinimal *)selfCopy platform];
    containerPathIdentifier = [(MCMConcreteContainerIdentityForLibsystem *)selfCopy containerPathIdentifier];
    existed = [(MCMConcreteContainerIdentityForLibsystem *)selfCopy existed];
    userIdentityCache = [(MCMContainerIdentityMinimal *)selfCopy userIdentityCache];
    BYTE1(v15) = 1;
    LOBYTE(v15) = existed;
    v12 = [v3 initWithUUID:uuid userIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform containerPathIdentifier:containerPathIdentifier existed:v15 transient:userIdentityCache userIdentityCache:0 error:?];

    selfCopy = v12;
  }

  v13 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (container_object_s)createLibsystemContainerWithError:(unint64_t *)error
{
  v10 = *MEMORY[0x1E69E9840];
  containerPathIdentifier = [(MCMConcreteContainerIdentityForLibsystem *)self containerPathIdentifier];
  v9.receiver = self;
  v9.super_class = MCMConcreteContainerIdentityForLibsystem;
  v6 = [(MCMConcreteContainerIdentity *)&v9 createLibsystemContainerWithContainerPathIdentifier:containerPathIdentifier existed:[(MCMConcreteContainerIdentityForLibsystem *)self existed] error:error];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (MCMConcreteContainerIdentityForLibsystem)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 1;
  v15.receiver = self;
  v15.super_class = MCMConcreteContainerIdentityForLibsystem;
  v8 = [(MCMConcreteContainerIdentity *)&v15 initWithLibsystemContainer:container defaultUserIdentity:identity userIdentityCache:cache error:&v16];
  if (!v8)
  {
LABEL_4:
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v9 = MEMORY[0x1E12D3240](container);
  if (v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    containerPathIdentifier = v8->_containerPathIdentifier;
    v8->_containerPathIdentifier = v10;

    v8->_existed = container_is_new() ^ 1;
    goto LABEL_4;
  }

  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "container_object_t had a NULL unique path component when creating a concrete container identity", buf, 2u);
  }

  v16 = 11;
  v8 = 0;
  if (error)
  {
LABEL_5:
    if (v16 != 1)
    {
      *error = v16;
    }
  }

LABEL_7:
  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (MCMConcreteContainerIdentityForLibsystem)init
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

+ (id)containerIdentityWithUUID:(id)d userIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform containerPathIdentifier:(id)pathIdentifier existed:(BOOL)existed transient:(BOOL)self0 userIdentityCache:(id)self1 error:(unint64_t *)self2
{
  v29 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  pathIdentifierCopy = pathIdentifier;
  configCopy = config;
  identifierCopy = identifier;
  identityCopy = identity;
  dCopy = d;
  LOWORD(v27) = __PAIR16__(transient, existed);
  v24 = [[self alloc] initWithUUID:dCopy userIdentity:identityCopy identifier:identifierCopy containerConfig:configCopy platform:platform containerPathIdentifier:pathIdentifierCopy existed:v27 transient:cacheCopy userIdentityCache:error error:?];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

@end