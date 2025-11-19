@interface MCMManagedPath
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToManagedPath:(id)a3;
- (MCMFSNode)fsNode;
- (MCMManagedPath)initWithURL:(id)a3 flags:(unint64_t)a4 ACLConfig:(unint64_t)a5 mode:(unsigned __int16)a6 dpClass:(int)a7 owner:(id)a8 parent:(id)a9;
- (MCMManagedPath)parent;
- (MCMPOSIXUser)owner;
- (NSString)description;
- (NSURL)url;
- (id)copyWithZone:(_NSZone *)a3;
- (int)dpClass;
- (unint64_t)ACLConfig;
- (unint64_t)flags;
- (unint64_t)hash;
- (unsigned)mode;
- (void)setFsNode:(id)a3;
@end

@implementation MCMManagedPath

- (void)setFsNode:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_fsNode = &self->_fsNode;

  objc_storeStrong(p_fsNode, a3);
}

- (MCMFSNode)fsNode
{
  result = self->_fsNode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)parent
{
  result = self->_parent;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)owner
{
  result = self->_owner;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (int)dpClass
{
  result = self->_dpClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)mode
{
  result = self->_mode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)ACLConfig
{
  result = self->_ACLConfig;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)flags
{
  result = self->_flags;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)url
{
  result = self->_url;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__MCMManagedPath_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __29__MCMManagedPath_description__block_invoke(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v35 = NSStringFromClass(v6);
  v7 = *(a1 + 32);
  v8 = [v7 flags];
  v34 = [*(a1 + 32) ACLConfig];
  v33 = [*(a1 + 32) mode];
  v9 = [*(a1 + 32) dpClass];
  v10 = [*(a1 + 32) owner];
  v11 = v10;
  v12 = v10;
  if (a2)
  {
    v12 = [v10 redactedDescription];
  }

  v13 = [*(a1 + 32) parent];
  v14 = [*(a1 + 32) fsNode];
  v15 = v14;
  if (a2)
  {
    v16 = [v14 redactedDescription];
    v17 = [*(a1 + 32) url];
    [v17 path];
    v32 = v11;
    v19 = v18 = v4;
    v20 = [v19 redactedDescription];
    v21 = v8;
    v22 = v20;
    v31 = v20;
    v29 = v7;
    v23 = v35;
    v24 = v18;
    v11 = v32;
    v25 = [v24 stringWithFormat:@"<%@: %p flags = 0x%lx, ACLConfig = 0x%lx, mode = 0%o, dpClass = %d, owner = %@, parent = %p, fsNode = %@, url = [%@]>", v35, v29, v21, v34, v33, v9, v12, v13, v16, v31];;

    v26 = v15;
    v15 = v13;
    v13 = v12;
  }

  else
  {
    v26 = [*(a1 + 32) url];
    v16 = [v26 path];
    v30 = v7;
    v23 = v35;
    v25 = [v4 stringWithFormat:@"<%@: %p flags = 0x%lx, ACLConfig = 0x%lx, mode = 0%o, dpClass = %d, owner = %@, parent = %p, fsNode = %@, url = [%@]>", v35, v30, v8, v34, v33, v9, v12, v13, v15, v16];;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSURL *)self->_url copyWithZone:a3];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    *(v5 + 24) = self->_flags;
    *(v5 + 32) = self->_ACLConfig;
    *(v5 + 8) = self->_mode;
    *(v5 + 12) = self->_dpClass;
    v8 = [(MCMPOSIXUser *)self->_owner copyWithZone:a3];
    v9 = *(v5 + 40);
    *(v5 + 40) = v8;

    objc_storeStrong((v5 + 48), self->_parent);
    v10 = [(MCMFSNode *)self->_fsNode copyWithZone:a3];
    v11 = *(v5 + 56);
    *(v5 + 56) = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self == v4;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MCMManagedPath *)self isEqualToManagedPath:v4];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToManagedPath:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  url = self->_url;
  v4 = *(a3 + 2);
  v5 = *MEMORY[0x1E69E9840];

  return [(NSURL *)url isEqual:v4];
}

- (unint64_t)hash
{
  v5 = *MEMORY[0x1E69E9840];
  url = self->_url;
  v3 = *MEMORY[0x1E69E9840];

  return [(NSURL *)url hash];
}

- (MCMManagedPath)initWithURL:(id)a3 flags:(unint64_t)a4 ACLConfig:(unint64_t)a5 mode:(unsigned __int16)a6 dpClass:(int)a7 owner:(id)a8 parent:(id)a9
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a8;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = MCMManagedPath;
  v18 = [(MCMManagedPath *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_url, a3);
    v19->_flags = a4;
    v19->_ACLConfig = a5;
    v19->_mode = a6;
    v19->_dpClass = a7;
    objc_storeStrong(&v19->_owner, a8);
    objc_storeStrong(&v19->_parent, a9);
    fsNode = v19->_fsNode;
    v19->_fsNode = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

@end