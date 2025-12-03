@interface MCMCommandOperationDeleteItem
- (BOOL)isEqual:(id)equal;
- (MCMCommandOperationDeleteItem)initWithCacheEntry:(id)entry codeSignIdentifiersToRemove:(id)remove manifest:(id)manifest;
- (MCMContainerCacheEntry)cacheEntry;
- (MCMDeleteManifest)manifest;
- (NSSet)codeSignIdentifiersToRemove;
- (id)description;
- (unint64_t)hash;
- (void)setManifest:(id)manifest;
@end

@implementation MCMCommandOperationDeleteItem

- (void)setManifest:(id)manifest
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_manifest = &self->_manifest;

  objc_storeStrong(p_manifest, manifest);
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
  cacheEntry = [(MCMCommandOperationDeleteItem *)self cacheEntry];
  codeSignIdentifiersToRemove = [(MCMCommandOperationDeleteItem *)self codeSignIdentifiersToRemove];
  v6 = [v3 stringWithFormat:@"<%@, removeCS = %@>", cacheEntry, codeSignIdentifiersToRemove];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v8 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  cacheEntry = [(MCMCommandOperationDeleteItem *)self cacheEntry];
  LOBYTE(self) = [cacheEntry isEqual:equalCopy];

  v6 = *MEMORY[0x1E69E9840];
  return self;
}

- (unint64_t)hash
{
  v6 = *MEMORY[0x1E69E9840];
  cacheEntry = [(MCMCommandOperationDeleteItem *)self cacheEntry];
  v3 = [cacheEntry hash];

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (MCMCommandOperationDeleteItem)initWithCacheEntry:(id)entry codeSignIdentifiersToRemove:(id)remove manifest:(id)manifest
{
  v17 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  removeCopy = remove;
  manifestCopy = manifest;
  v16.receiver = self;
  v16.super_class = MCMCommandOperationDeleteItem;
  v12 = [(MCMCommandOperationDeleteItem *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cacheEntry, entry);
    objc_storeStrong(&v13->_codeSignIdentifiersToRemove, remove);
    objc_storeStrong(&v13->_manifest, manifest);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end