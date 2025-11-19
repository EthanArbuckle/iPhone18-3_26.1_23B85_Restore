@interface MCMContainerSchemaContext
- (MCMContainerPath)containerPath;
- (MCMContainerPath)finalContainerPath;
- (MCMContainerSchemaContext)initWithHomeDirectoryURL:(id)a3 containerPath:(id)a4 finalContainerPath:(id)a5 POSIXMode:(unsigned __int16)a6 POSIXOwner:(id)a7 containerClass:(unint64_t)a8 dataProtectionClass:(int)a9 libraryRepair:(id)a10 identifier:(id)a11;
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

- (MCMContainerSchemaContext)initWithHomeDirectoryURL:(id)a3 containerPath:(id)a4 finalContainerPath:(id)a5 POSIXMode:(unsigned __int16)a6 POSIXOwner:(id)a7 containerClass:(unint64_t)a8 dataProtectionClass:(int)a9 libraryRepair:(id)a10 identifier:(id)a11
{
  v29 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v27 = a5;
  v26 = a7;
  v25 = a10;
  v18 = a11;
  v28.receiver = self;
  v28.super_class = MCMContainerSchemaContext;
  v19 = [(MCMContainerSchemaContext *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_homeDirectoryURL, a3);
    objc_storeStrong(&v20->_containerPath, a4);
    objc_storeStrong(&v20->_finalContainerPath, a5);
    v20->_posixMode = a6;
    objc_storeStrong(&v20->_posixOwner, a7);
    v20->_containerClass = a8;
    v20->_dataProtectionClass = a9;
    objc_storeStrong(&v20->_libraryRepair, a10);
    objc_storeStrong(&v20->_identifier, a11);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

@end