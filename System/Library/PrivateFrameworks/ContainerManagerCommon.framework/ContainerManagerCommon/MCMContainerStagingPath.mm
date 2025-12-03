@interface MCMContainerStagingPath
+ (Class)_containerClassPathClass;
+ (id)stagingContainerPathForDestinationContainerPath:(id)path stagingPathIdentifier:(id)identifier;
- (MCMContainerPath)destinationContainerPath;
- (void)setDestinationContainerPath:(id)path;
@end

@implementation MCMContainerStagingPath

- (void)setDestinationContainerPath:(id)path
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_destinationContainerPath = &self->_destinationContainerPath;

  objc_storeStrong(p_destinationContainerPath, path);
}

- (MCMContainerPath)destinationContainerPath
{
  result = self->_destinationContainerPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

+ (id)stagingContainerPathForDestinationContainerPath:(id)path stagingPathIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  pathCopy = path;
  containerClassPath = [pathCopy containerClassPath];
  userIdentity = [containerClassPath userIdentity];
  v9 = +[MCMContainerPath containerPathForUserIdentity:containerClass:containerPathIdentifier:](MCMContainerStagingPath, "containerPathForUserIdentity:containerClass:containerPathIdentifier:", userIdentity, [containerClassPath containerClass], identifierCopy);

  [v9 setDestinationContainerPath:pathCopy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (Class)_containerClassPathClass
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return objc_opt_class();
}

@end