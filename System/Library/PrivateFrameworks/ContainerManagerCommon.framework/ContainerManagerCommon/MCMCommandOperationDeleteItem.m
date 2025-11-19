@interface MCMCommandOperationDeleteItem
- (BOOL)isEqual:(id)a3;
- (MCMCommandOperationDeleteItem)initWithCacheEntry:(id)a3 codeSignIdentifiersToRemove:(id)a4 manifest:(id)a5;
- (MCMContainerCacheEntry)cacheEntry;
- (MCMDeleteManifest)manifest;
- (NSSet)codeSignIdentifiersToRemove;
- (id)description;
- (unint64_t)hash;
- (void)setManifest:(id)a3;
@end

@implementation MCMCommandOperationDeleteItem

- (void)setManifest:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_manifest = &self->_manifest;

  objc_storeStrong(p_manifest, a3);
}

- (MCMDeleteManifest)manifest
{
  result = self->_manifest;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSSet)codeSignIdentifiersToRemove
{
  result = self->_codeSignIdentifiersToRemove;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerCacheEntry)cacheEntry
{
  result = self->_cacheEntry;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)description
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MCMCommandOperationDeleteItem *)self cacheEntry];
  v5 = [(MCMCommandOperationDeleteItem *)self codeSignIdentifiersToRemove];
  v6 = [v3 stringWithFormat:@"<%@, removeCS = %@>", v4, v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMCommandOperationDeleteItem *)self cacheEntry];
  LOBYTE(self) = [v5 isEqual:v4];

  v6 = *MEMORY[0x1E69E9840];
  return self;
}

- (unint64_t)hash
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommandOperationDeleteItem *)self cacheEntry];
  v3 = [v2 hash];

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (MCMCommandOperationDeleteItem)initWithCacheEntry:(id)a3 codeSignIdentifiersToRemove:(id)a4 manifest:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = MCMCommandOperationDeleteItem;
  v12 = [(MCMCommandOperationDeleteItem *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cacheEntry, a3);
    objc_storeStrong(&v13->_codeSignIdentifiersToRemove, a4);
    objc_storeStrong(&v13->_manifest, a5);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end