@interface MCMContainerSchemaContext
- (MCMContainerPath)containerPath;
- (MCMContainerPath)finalContainerPath;
- (MCMContainerSchemaContext)initWithHomeDirectoryURL:(id)l containerPath:(id)path finalContainerPath:(id)containerPath POSIXMode:(unsigned __int16)mode POSIXOwner:(id)owner containerClass:(unint64_t)class dataProtectionClass:(int)protectionClass libraryRepair:(id)self0 identifier:(id)self1;
- (MCMLibraryRepairForUser)libraryRepair;
- (MCMPOSIXUser)posixOwner;
- (NSString)identifier;
- (NSURL)homeDirectoryURL;
- (int)dataProtectionClass;
- (unint64_t)containerClass;
- (unsigned)posixMode;
@end

@implementation MCMContainerSchemaContext

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMLibraryRepairForUser)libraryRepair
{
  result = self->_libraryRepair;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (int)dataProtectionClass
{
  result = self->_dataProtectionClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)containerClass
{
  result = self->_containerClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)posixOwner
{
  result = self->_posixOwner;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)posixMode
{
  result = self->_posixMode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerPath)finalContainerPath
{
  result = self->_finalContainerPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerPath)containerPath
{
  result = self->_containerPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)homeDirectoryURL
{
  result = self->_homeDirectoryURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerSchemaContext)initWithHomeDirectoryURL:(id)l containerPath:(id)path finalContainerPath:(id)containerPath POSIXMode:(unsigned __int16)mode POSIXOwner:(id)owner containerClass:(unint64_t)class dataProtectionClass:(int)protectionClass libraryRepair:(id)self0 identifier:(id)self1
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  pathCopy = path;
  containerPathCopy = containerPath;
  ownerCopy = owner;
  repairCopy = repair;
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = MCMContainerSchemaContext;
  v19 = [(MCMContainerSchemaContext *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_homeDirectoryURL, l);
    objc_storeStrong(&v20->_containerPath, path);
    objc_storeStrong(&v20->_finalContainerPath, containerPath);
    v20->_posixMode = mode;
    objc_storeStrong(&v20->_posixOwner, owner);
    v20->_containerClass = class;
    v20->_dataProtectionClass = protectionClass;
    objc_storeStrong(&v20->_libraryRepair, repair);
    objc_storeStrong(&v20->_identifier, identifier);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

@end