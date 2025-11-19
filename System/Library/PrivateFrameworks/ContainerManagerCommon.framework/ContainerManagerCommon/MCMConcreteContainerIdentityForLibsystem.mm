@interface MCMConcreteContainerIdentityForLibsystem
+ (id)containerIdentityWithUUID:(id)a3 userIdentity:(id)a4 identifier:(id)a5 containerConfig:(id)a6 platform:(unsigned int)a7 containerPathIdentifier:(id)a8 existed:(BOOL)a9 transient:(BOOL)a10 userIdentityCache:(id)a11 error:(unint64_t *)a12;
- (BOOL)existed;
- (MCMConcreteContainerIdentityForLibsystem)init;
- (MCMConcreteContainerIdentityForLibsystem)initWithLibsystemContainer:(container_object_s *)a3 defaultUserIdentity:(id)a4 userIdentityCache:(id)a5 error:(unint64_t *)a6;
- (NSString)containerPathIdentifier;
- (NSString)debugDescription;
- (NSString)description;
- (container_object_s)createLibsystemContainerWithError:(unint64_t *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identityByChangingContainerPathIdentifier:(id)a3;
- (id)identityByChangingIdentifier:(id)a3;
- (id)identityByChangingTransient:(BOOL)a3;
- (id)identityByChangingUUID:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MCMConcreteContainerIdentityForLibsystem;
  v5 = [(MCMConcreteContainerIdentity *)&v10 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_containerPathIdentifier copyWithZone:a3];
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

- (id)identityByChangingIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = objc_alloc(objc_opt_class());
  v5 = [(MCMConcreteContainerIdentity *)self uuid];
  v6 = [(MCMContainerIdentityMinimal *)self userIdentity];
  v7 = [(MCMContainerIdentityMinimal *)self containerConfig];
  v8 = [(MCMContainerIdentityMinimal *)self platform];
  v9 = [(MCMConcreteContainerIdentityForLibsystem *)self containerPathIdentifier];
  v10 = [(MCMConcreteContainerIdentityForLibsystem *)self existed];
  v11 = [(MCMContainerIdentity *)self transient];
  v12 = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  BYTE1(v16) = v11;
  LOBYTE(v16) = v10;
  v13 = [v17 initWithUUID:v5 userIdentity:v6 identifier:v4 containerConfig:v7 platform:v8 containerPathIdentifier:v9 existed:v16 transient:v12 userIdentityCache:0 error:?];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)identityByChangingContainerPathIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = objc_alloc(objc_opt_class());
  v5 = [(MCMConcreteContainerIdentity *)self uuid];
  v6 = [(MCMContainerIdentityMinimal *)self userIdentity];
  v7 = [(MCMContainerIdentityMinimal *)self identifier];
  v8 = [(MCMContainerIdentityMinimal *)self containerConfig];
  v9 = [(MCMContainerIdentityMinimal *)self platform];
  v10 = [(MCMConcreteContainerIdentityForLibsystem *)self existed];
  v11 = [(MCMContainerIdentity *)self transient];
  v12 = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  BYTE1(v16) = v11;
  LOBYTE(v16) = v10;
  v13 = [v17 initWithUUID:v5 userIdentity:v6 identifier:v7 containerConfig:v8 platform:v9 containerPathIdentifier:v4 existed:v16 transient:v12 userIdentityCache:0 error:?];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)identityByChangingTransient:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(objc_opt_class());
  v6 = [(MCMConcreteContainerIdentity *)self uuid];
  v7 = [(MCMContainerIdentityMinimal *)self userIdentity];
  v8 = [(MCMContainerIdentityMinimal *)self identifier];
  v9 = [(MCMContainerIdentityMinimal *)self containerConfig];
  v10 = [(MCMContainerIdentityMinimal *)self platform];
  v11 = [(MCMConcreteContainerIdentityForLibsystem *)self containerPathIdentifier];
  v12 = [(MCMConcreteContainerIdentityForLibsystem *)self existed];
  v13 = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  BYTE1(v17) = a3;
  LOBYTE(v17) = v12;
  v14 = [v5 initWithUUID:v6 userIdentity:v7 identifier:v8 containerConfig:v9 platform:v10 containerPathIdentifier:v11 existed:v17 transient:v13 userIdentityCache:0 error:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)identityByChangingUUID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = objc_alloc(objc_opt_class());
  v5 = [(MCMContainerIdentityMinimal *)self userIdentity];
  v6 = [(MCMContainerIdentityMinimal *)self identifier];
  v7 = [(MCMContainerIdentityMinimal *)self containerConfig];
  v8 = [(MCMContainerIdentityMinimal *)self platform];
  v9 = [(MCMConcreteContainerIdentityForLibsystem *)self containerPathIdentifier];
  v10 = [(MCMConcreteContainerIdentityForLibsystem *)self existed];
  v11 = [(MCMContainerIdentity *)self transient];
  v12 = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  BYTE1(v16) = v11;
  LOBYTE(v16) = v10;
  v13 = [v17 initWithUUID:v4 userIdentity:v5 identifier:v6 containerConfig:v7 platform:v8 containerPathIdentifier:v9 existed:v16 transient:v12 userIdentityCache:0 error:?];

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
  v2 = self;
  if ([(MCMContainerIdentity *)v2 transient])
  {
    v3 = objc_alloc(objc_opt_class());
    v4 = [(MCMConcreteContainerIdentity *)v2 uuid];
    v5 = [(MCMContainerIdentityMinimal *)v2 userIdentity];
    v6 = [(MCMContainerIdentityMinimal *)v2 identifier];
    v7 = [(MCMContainerIdentityMinimal *)v2 containerConfig];
    v8 = [(MCMContainerIdentityMinimal *)v2 platform];
    v9 = [(MCMConcreteContainerIdentityForLibsystem *)v2 containerPathIdentifier];
    v10 = [(MCMConcreteContainerIdentityForLibsystem *)v2 existed];
    v11 = [(MCMContainerIdentityMinimal *)v2 userIdentityCache];
    LOWORD(v15) = v10;
    v12 = [v3 initWithUUID:v4 userIdentity:v5 identifier:v6 containerConfig:v7 platform:v8 containerPathIdentifier:v9 existed:v15 transient:v11 userIdentityCache:0 error:?];

    v2 = v12;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)transientContainerIdentity
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  if (![(MCMContainerIdentity *)v2 transient])
  {
    v3 = objc_alloc(objc_opt_class());
    v4 = [(MCMConcreteContainerIdentity *)v2 uuid];
    v5 = [(MCMContainerIdentityMinimal *)v2 userIdentity];
    v6 = [(MCMContainerIdentityMinimal *)v2 identifier];
    v7 = [(MCMContainerIdentityMinimal *)v2 containerConfig];
    v8 = [(MCMContainerIdentityMinimal *)v2 platform];
    v9 = [(MCMConcreteContainerIdentityForLibsystem *)v2 containerPathIdentifier];
    v10 = [(MCMConcreteContainerIdentityForLibsystem *)v2 existed];
    v11 = [(MCMContainerIdentityMinimal *)v2 userIdentityCache];
    BYTE1(v15) = 1;
    LOBYTE(v15) = v10;
    v12 = [v3 initWithUUID:v4 userIdentity:v5 identifier:v6 containerConfig:v7 platform:v8 containerPathIdentifier:v9 existed:v15 transient:v11 userIdentityCache:0 error:?];

    v2 = v12;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v2;
}

- (container_object_s)createLibsystemContainerWithError:(unint64_t *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [(MCMConcreteContainerIdentityForLibsystem *)self containerPathIdentifier];
  v9.receiver = self;
  v9.super_class = MCMConcreteContainerIdentityForLibsystem;
  v6 = [(MCMConcreteContainerIdentity *)&v9 createLibsystemContainerWithContainerPathIdentifier:v5 existed:[(MCMConcreteContainerIdentityForLibsystem *)self existed] error:a3];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (MCMConcreteContainerIdentityForLibsystem)initWithLibsystemContainer:(container_object_s *)a3 defaultUserIdentity:(id)a4 userIdentityCache:(id)a5 error:(unint64_t *)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 1;
  v15.receiver = self;
  v15.super_class = MCMConcreteContainerIdentityForLibsystem;
  v8 = [(MCMConcreteContainerIdentity *)&v15 initWithLibsystemContainer:a3 defaultUserIdentity:a4 userIdentityCache:a5 error:&v16];
  if (!v8)
  {
LABEL_4:
    if (!a6)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v9 = MEMORY[0x1E12D3240](a3);
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
  if (a6)
  {
LABEL_5:
    if (v16 != 1)
    {
      *a6 = v16;
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

+ (id)containerIdentityWithUUID:(id)a3 userIdentity:(id)a4 identifier:(id)a5 containerConfig:(id)a6 platform:(unsigned int)a7 containerPathIdentifier:(id)a8 existed:(BOOL)a9 transient:(BOOL)a10 userIdentityCache:(id)a11 error:(unint64_t *)a12
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = a11;
  v19 = a8;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  LOWORD(v27) = __PAIR16__(a10, a9);
  v24 = [[a1 alloc] initWithUUID:v23 userIdentity:v22 identifier:v21 containerConfig:v20 platform:a7 containerPathIdentifier:v19 existed:v27 transient:v18 userIdentityCache:a12 error:?];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

@end