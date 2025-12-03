@interface WFFileCoder
- (WFFileCoder)initWithCoder:(id)coder;
- (id)decodeFileWithCoder:(id)coder fileShouldBeDeletedOnDeallocation:(BOOL *)deallocation fileIsSecurityScoped:(BOOL *)scoped;
- (void)archiveFileAtURL:(id)l fileShouldBeDeletedOnDeallocation:(BOOL)deallocation withCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFileCoder

- (WFFileCoder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFFileCoder *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deletionResponsibility"];
    v5->_deletionResponsibility = [v6 BOOLValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedDirectory"];
    sharedDirectory = v5->_sharedDirectory;
    v5->_sharedDirectory = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedTemporaryDirectory"];
    sharedTemporaryDirectory = v5->_sharedTemporaryDirectory;
    v5->_sharedTemporaryDirectory = v9;

    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_deletionResponsibility];
  [coderCopy encodeObject:v4 forKey:@"deletionResponsibility"];

  sharedDirectory = self->_sharedDirectory;
  if (sharedDirectory)
  {
    [coderCopy encodeObject:sharedDirectory forKey:@"sharedDirectory"];
  }

  sharedTemporaryDirectory = self->_sharedTemporaryDirectory;
  if (sharedTemporaryDirectory)
  {
    [coderCopy encodeObject:sharedTemporaryDirectory forKey:@"sharedTemporaryDirectory"];
  }
}

- (id)decodeFileWithCoder:(id)coder fileShouldBeDeletedOnDeallocation:(BOOL *)deallocation fileIsSecurityScoped:(BOOL *)scoped
{
  v16 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileShouldBeDeletedOnDeallocation"];
  *deallocation = [v7 BOOLValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
  if (!v8)
  {
    v9 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      error = [coderCopy error];
      v12 = 136315394;
      v13 = "[WFFileCoder decodeFileWithCoder:fileShouldBeDeletedOnDeallocation:fileIsSecurityScoped:]";
      v14 = 2112;
      v15 = error;
      _os_log_impl(&dword_21E1BD000, v9, OS_LOG_TYPE_ERROR, "%s Failed to decode file with error: %@", &v12, 0x16u);
    }
  }

  return v8;
}

- (void)archiveFileAtURL:(id)l fileShouldBeDeletedOnDeallocation:(BOOL)deallocation withCoder:(id)coder
{
  deallocationCopy = deallocation;
  coderCopy = coder;
  [coderCopy encodeObject:l forKey:@"fileURL"];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:deallocationCopy];
  [coderCopy encodeObject:v8 forKey:@"fileShouldBeDeletedOnDeallocation"];
}

@end