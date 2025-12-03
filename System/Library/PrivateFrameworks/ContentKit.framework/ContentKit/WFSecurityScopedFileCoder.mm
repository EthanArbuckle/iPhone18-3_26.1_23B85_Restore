@interface WFSecurityScopedFileCoder
- (id)decodeFileWithCoder:(id)coder fileShouldBeDeletedOnDeallocation:(BOOL *)deallocation fileIsSecurityScoped:(BOOL *)scoped;
- (void)archiveFileAtURL:(id)l fileShouldBeDeletedOnDeallocation:(BOOL)deallocation withCoder:(id)coder;
@end

@implementation WFSecurityScopedFileCoder

- (id)decodeFileWithCoder:(id)coder fileShouldBeDeletedOnDeallocation:(BOOL *)deallocation fileIsSecurityScoped:(BOOL *)scoped
{
  *scoped = 1;
  coderCopy = coder;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileShouldBeDeletedOnDeallocation"];
  *deallocation = [v7 BOOLValue];

  v8 = [coderCopy decodeObjectOfClass:getFPSandboxingURLWrapperClass() forKey:@"wrapper"];

  v9 = [v8 url];

  return v9;
}

- (void)archiveFileAtURL:(id)l fileShouldBeDeletedOnDeallocation:(BOOL)deallocation withCoder:(id)coder
{
  deallocationCopy = deallocation;
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  coderCopy = coder;
  v13 = 0;
  v9 = [getFPSandboxingURLWrapperClass() wrapperWithURL:lCopy readonly:0 error:&v13];
  v10 = v13;
  if (!v9)
  {
    v11 = getWFFilesLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = "[WFSecurityScopedFileCoder archiveFileAtURL:fileShouldBeDeletedOnDeallocation:withCoder:]";
      v16 = 2112;
      v17 = lCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_ERROR, "%s Failed to archive file %@ with error %@", buf, 0x20u);
    }
  }

  [coderCopy encodeObject:v9 forKey:@"wrapper"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:deallocationCopy];
  [coderCopy encodeObject:v12 forKey:@"fileShouldBeDeletedOnDeallocation"];
}

@end