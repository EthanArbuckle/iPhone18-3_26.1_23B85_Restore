@interface WFFileCoder
- (WFFileCoder)initWithCoder:(id)a3;
- (id)decodeFileWithCoder:(id)a3 fileShouldBeDeletedOnDeallocation:(BOOL *)a4 fileIsSecurityScoped:(BOOL *)a5;
- (void)archiveFileAtURL:(id)a3 fileShouldBeDeletedOnDeallocation:(BOOL)a4 withCoder:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFileCoder

- (WFFileCoder)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFFileCoder *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deletionResponsibility"];
    v5->_deletionResponsibility = [v6 BOOLValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedDirectory"];
    sharedDirectory = v5->_sharedDirectory;
    v5->_sharedDirectory = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedTemporaryDirectory"];
    sharedTemporaryDirectory = v5->_sharedTemporaryDirectory;
    v5->_sharedTemporaryDirectory = v9;

    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_deletionResponsibility];
  [v7 encodeObject:v4 forKey:@"deletionResponsibility"];

  sharedDirectory = self->_sharedDirectory;
  if (sharedDirectory)
  {
    [v7 encodeObject:sharedDirectory forKey:@"sharedDirectory"];
  }

  sharedTemporaryDirectory = self->_sharedTemporaryDirectory;
  if (sharedTemporaryDirectory)
  {
    [v7 encodeObject:sharedTemporaryDirectory forKey:@"sharedTemporaryDirectory"];
  }
}

- (id)decodeFileWithCoder:(id)a3 fileShouldBeDeletedOnDeallocation:(BOOL *)a4 fileIsSecurityScoped:(BOOL *)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"fileShouldBeDeletedOnDeallocation"];
  *a4 = [v7 BOOLValue];

  v8 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
  if (!v8)
  {
    v9 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v6 error];
      v12 = 136315394;
      v13 = "[WFFileCoder decodeFileWithCoder:fileShouldBeDeletedOnDeallocation:fileIsSecurityScoped:]";
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_21E1BD000, v9, OS_LOG_TYPE_ERROR, "%s Failed to decode file with error: %@", &v12, 0x16u);
    }
  }

  return v8;
}

- (void)archiveFileAtURL:(id)a3 fileShouldBeDeletedOnDeallocation:(BOOL)a4 withCoder:(id)a5
{
  v5 = a4;
  v7 = a5;
  [v7 encodeObject:a3 forKey:@"fileURL"];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v7 encodeObject:v8 forKey:@"fileShouldBeDeletedOnDeallocation"];
}

@end