@interface MCMContainerStagingPath
+ (Class)_containerClassPathClass;
+ (id)stagingContainerPathForDestinationContainerPath:(id)a3 stagingPathIdentifier:(id)a4;
- (MCMContainerPath)destinationContainerPath;
- (void)setDestinationContainerPath:(id)a3;
@end

@implementation MCMContainerStagingPath

- (void)setDestinationContainerPath:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_destinationContainerPath = &self->_destinationContainerPath;

  objc_storeStrong(p_destinationContainerPath, a3);
}

- (MCMContainerPath)destinationContainerPath
{
  result = self->_destinationContainerPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

+ (id)stagingContainerPathForDestinationContainerPath:(id)a3 stagingPathIdentifier:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [v6 containerClassPath];
  v8 = [v7 userIdentity];
  v9 = +[MCMContainerPath containerPathForUserIdentity:containerClass:containerPathIdentifier:](MCMContainerStagingPath, "containerPathForUserIdentity:containerClass:containerPathIdentifier:", v8, [v7 containerClass], v5);

  [v9 setDestinationContainerPath:v6];
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