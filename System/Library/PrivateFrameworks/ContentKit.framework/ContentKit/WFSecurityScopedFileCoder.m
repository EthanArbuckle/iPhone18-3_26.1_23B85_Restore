@interface WFSecurityScopedFileCoder
- (id)decodeFileWithCoder:(id)a3 fileShouldBeDeletedOnDeallocation:(BOOL *)a4 fileIsSecurityScoped:(BOOL *)a5;
- (void)archiveFileAtURL:(id)a3 fileShouldBeDeletedOnDeallocation:(BOOL)a4 withCoder:(id)a5;
@end

@implementation WFSecurityScopedFileCoder

- (id)decodeFileWithCoder:(id)a3 fileShouldBeDeletedOnDeallocation:(BOOL *)a4 fileIsSecurityScoped:(BOOL *)a5
{
  *a5 = 1;
  v6 = a3;
  v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"fileShouldBeDeletedOnDeallocation"];
  *a4 = [v7 BOOLValue];

  v8 = [v6 decodeObjectOfClass:getFPSandboxingURLWrapperClass() forKey:@"wrapper"];

  v9 = [v8 url];

  return v9;
}

- (void)archiveFileAtURL:(id)a3 fileShouldBeDeletedOnDeallocation:(BOOL)a4 withCoder:(id)a5
{
  v6 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v13 = 0;
  v9 = [getFPSandboxingURLWrapperClass() wrapperWithURL:v7 readonly:0 error:&v13];
  v10 = v13;
  if (!v9)
  {
    v11 = getWFFilesLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = "[WFSecurityScopedFileCoder archiveFileAtURL:fileShouldBeDeletedOnDeallocation:withCoder:]";
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_ERROR, "%s Failed to archive file %@ with error %@", buf, 0x20u);
    }
  }

  [v8 encodeObject:v9 forKey:@"wrapper"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [v8 encodeObject:v12 forKey:@"fileShouldBeDeletedOnDeallocation"];
}

@end