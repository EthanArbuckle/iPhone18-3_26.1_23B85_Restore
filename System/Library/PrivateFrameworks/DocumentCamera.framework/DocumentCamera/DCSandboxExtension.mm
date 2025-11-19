@interface DCSandboxExtension
- (DCSandboxExtension)initWithCoder:(id)a3;
- (DCSandboxExtension)initWithFileURL:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)relinquish;
@end

@implementation DCSandboxExtension

- (DCSandboxExtension)initWithFileURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DCSandboxExtension;
  v6 = [(DCSandboxExtension *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_canAccessFileURL = 1;
    objc_storeStrong(&v6->_fileURL, a3);
    v7->_shouldIssueSandboxExtensionWhenEncoding = 1;
    [(DCSandboxExtension *)v7 setSandboxExtensionHandle:-1];
  }

  return v7;
}

- (void)relinquish
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_249253000, a2, OS_LOG_TYPE_ERROR, "FAILED to release sandbox extension handle: %@", &v2, 0xCu);
}

- (void)dealloc
{
  [(DCSandboxExtension *)self relinquish];
  v3.receiver = self;
  v3.super_class = DCSandboxExtension;
  [(DCSandboxExtension *)&v3 dealloc];
}

- (DCSandboxExtension)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = DCSandboxExtension;
  v5 = [(DCSandboxExtension *)&v21 init];
  v6 = v5;
  if (v5)
  {
    v5->_canAccessFileURL = 0;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kFileURLFieldCodingKey"];
    fileURL = v6->_fileURL;
    v6->_fileURL = v7;

    v6->_shouldIssueSandboxExtensionWhenEncoding = 0;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSandboxExtensionTokenCodingKey"];
    v10 = [v9 mutableCopy];

    if (v10)
    {
      [v10 increaseLengthBy:1];
      [v10 bytes];
      [(DCSandboxExtension *)v6 setSandboxExtensionHandle:sandbox_extension_consume()];
      if ([(DCSandboxExtension *)v6 sandboxExtensionHandle]!= -1)
      {
        v11 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [(DCSandboxExtension *)v6 fileURL];
          *buf = 138412290;
          v23 = v12;
          _os_log_impl(&dword_249253000, v11, OS_LOG_TYPE_INFO, "Consumed sandbox extension for %@", buf, 0xCu);
        }

        v6->_canAccessFileURL = 1;
        goto LABEL_13;
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA5B8];
      v16 = *__error();
      v24[0] = @"sandboxExtensionToken";
      v24[1] = @"file";
      v25[0] = v10;
      v17 = [(DCSandboxExtension *)v6 fileURL];
      v25[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v13 = [v14 errorWithDomain:v15 code:v16 userInfo:v18];

      v19 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(DCSandboxExtension *)v13 initWithCoder:v19];
      }
    }

    else
    {
      v13 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [DCSandboxExtension initWithCoder:v13];
      }
    }

LABEL_13:
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(DCSandboxExtension *)self shouldIssueSandboxExtensionWhenEncoding])
  {
    v5 = [(DCSandboxExtension *)self fileURL];
    v6 = [v5 path];
    [v6 cStringUsingEncoding:4];

    v7 = sandbox_extension_issue_file();
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:strlen(v7)];
      free(v8);
      v10 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(DCSandboxExtension *)self fileURL];
        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_249253000, v10, OS_LOG_TYPE_INFO, "Issued sandbox extension for %@", &v13, 0xCu);
      }
    }

    else
    {
      v10 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(DCSandboxExtension *)self encodeWithCoder:v10];
      }

      v9 = 0;
    }

    [v4 encodeObject:v9 forKey:@"kSandboxExtensionTokenCodingKey"];
  }

  else
  {
    [v4 encodeObject:0 forKey:@"kSandboxExtensionTokenCodingKey"];
  }

  v12 = [(DCSandboxExtension *)self fileURL];
  [v4 encodeObject:v12 forKey:@"kFileURLFieldCodingKey"];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_249253000, a2, OS_LOG_TYPE_ERROR, "FAILED to consume sandbox extension: %@", &v2, 0xCu);
}

- (void)encodeWithCoder:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 fileURL];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_249253000, a2, OS_LOG_TYPE_ERROR, "FAILED to issue sandbox extension for %@", &v4, 0xCu);
}

@end