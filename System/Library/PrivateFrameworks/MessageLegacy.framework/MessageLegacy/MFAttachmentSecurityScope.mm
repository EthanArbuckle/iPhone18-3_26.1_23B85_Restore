@interface MFAttachmentSecurityScope
+ (id)securityScopedURL:(id)l;
+ (id)securityScopedURL:(id)l withToken:(id)token;
- (BOOL)isBundle;
- (MFAttachmentSecurityScope)initWithSecurityScopedURL:(id)l withToken:(id)token;
- (id)_temporaryReadURL:(id)l error:(id *)error;
- (id)data;
- (id)securityScopeToken;
- (id)startReadAccess;
- (id)startWriteAccess;
- (void)_attachSecurityScope;
- (void)_removeTemporaryReadURL;
- (void)dealloc;
- (void)startReadAccess;
- (void)startWriteAccess;
- (void)stopAccess;
@end

@implementation MFAttachmentSecurityScope

+ (id)securityScopedURL:(id)l
{
  v3 = [[MFAttachmentSecurityScope alloc] initWithSecurityScopedURL:l withToken:0];

  return v3;
}

+ (id)securityScopedURL:(id)l withToken:(id)token
{
  v4 = [[MFAttachmentSecurityScope alloc] initWithSecurityScopedURL:l withToken:token];

  return v4;
}

- (MFAttachmentSecurityScope)initWithSecurityScopedURL:(id)l withToken:(id)token
{
  v8.receiver = self;
  v8.super_class = MFAttachmentSecurityScope;
  v6 = [(MFAttachmentSecurityScope *)&v8 init];
  if (v6)
  {
    v6->_fileCoordinator = objc_alloc_init(MEMORY[0x277CCA9E8]);
    v6->_securityScopedURL = l;
    v6->_securityScopeToken = token;
  }

  return v6;
}

- (void)dealloc
{
  [(MFAttachmentSecurityScope *)self stopAccess];

  v3.receiver = self;
  v3.super_class = MFAttachmentSecurityScope;
  [(MFAttachmentSecurityScope *)&v3 dealloc];
}

- (id)startWriteAccess
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(MFAttachmentSecurityScope *)v3 startWriteAccess];
    }
  }

  if (!self->_secureWriteURL)
  {
    [(MFAttachmentSecurityScope *)self _attachSecurityScope];
    if (self->_securedWrite || (v4 = [(NSURL *)self->_securityScopedURL startAccessingSecurityScopedResource], self->_securedWrite = v4, v4))
    {
      v17[4] = self;
      v18 = 0;
      fileCoordinator = self->_fileCoordinator;
      securityScopedURL = self->_securityScopedURL;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __45__MFAttachmentSecurityScope_startWriteAccess__block_invoke;
      v17[3] = &unk_2798B71D8;
      [(NSFileCoordinator *)fileCoordinator coordinateWritingItemAtURL:securityScopedURL options:8 error:&v18 byAccessor:v17];
      if (!self->_secureWriteURL)
      {
        v7 = MFLogGeneral();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(MFAttachmentSecurityScope *)&v18 startWriteAccess];
        }

        [(MFAttachmentSecurityScope *)self stopAccess];
      }
    }

    else
    {
      stringByDeletingLastPathComponent = [(NSString *)[(NSURL *)self->_securityScopedURL path] stringByDeletingLastPathComponent];
      if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) != 0 || objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), "isWritableFileAtPath:", stringByDeletingLastPathComponent))
      {
        self->_secureWriteURL = self->_securityScopedURL;
      }

      else
      {
        v9 = MFLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(MFAttachmentSecurityScope *)&self->_securityScopedURL startWriteAccess:v9];
        }
      }
    }
  }

  return self->_secureWriteURL;
}

id __45__MFAttachmentSecurityScope_startWriteAccess__block_invoke(uint64_t a1, void *a2)
{
  result = a2;
  *(*(a1 + 32) + 48) = result;
  return result;
}

- (id)startReadAccess
{
  v28 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(MFAttachmentSecurityScope *)v3 startWriteAccess];
    }
  }

  if (!self->_secureReadURL)
  {
    [(MFAttachmentSecurityScope *)self _attachSecurityScope];
    if (self->_securedRead || (v4 = [(NSURL *)self->_securityScopedURL startAccessingSecurityScopedResource], self->_securedRead = v4, v4))
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x3052000000;
      v24 = __Block_byref_object_copy__1;
      v25 = __Block_byref_object_dispose__1;
      v26 = 0;
      if ([(NSURL *)self->_securityScopedURL checkPromisedItemIsReachableAndReturnError:&v26])
      {
        fileCoordinator = self->_fileCoordinator;
        securityScopedURL = self->_securityScopedURL;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __44__MFAttachmentSecurityScope_startReadAccess__block_invoke;
        v20[3] = &unk_2798B7200;
        v20[4] = self;
        v20[5] = &v21;
        [(NSFileCoordinator *)fileCoordinator coordinateReadingItemAtURL:securityScopedURL options:8 error:v22 + 5 byAccessor:v20];
      }

      if (!self->_secureReadURL)
      {
        v7 = MFLogGeneral();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          -[MFAttachmentSecurityScope startReadAccess].cold.3([v22[5] ef_publicDescription], buf, v7);
        }

        [(MFAttachmentSecurityScope *)self stopAccess];
      }

      goto LABEL_15;
    }

    if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x3052000000;
      v24 = __Block_byref_object_copy__1;
      v25 = __Block_byref_object_dispose__1;
      v26 = 0;
      v8 = self->_fileCoordinator;
      v9 = self->_securityScopedURL;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __44__MFAttachmentSecurityScope_startReadAccess__block_invoke_64;
      v19[3] = &unk_2798B7200;
      v19[4] = self;
      v19[5] = &v21;
      [(NSFileCoordinator *)v8 coordinateReadingItemAtURL:v9 options:8 error:&v26 byAccessor:v19];
LABEL_15:
      _Block_object_dispose(&v21, 8);
      goto LABEL_16;
    }

    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachmentSecurityScope *)&self->_securityScopedURL startReadAccess:v12];
    }
  }

LABEL_16:
  result = self->_secureReadURL;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

id __44__MFAttachmentSecurityScope_startReadAccess__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _temporaryReadURL:a2 error:*(*(a1 + 40) + 8) + 40];
  *(*(a1 + 32) + 32) = result;
  return result;
}

id __44__MFAttachmentSecurityScope_startReadAccess__block_invoke_64(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _temporaryReadURL:a2 error:*(*(a1 + 40) + 8) + 40];
  *(*(a1 + 32) + 32) = result;
  return result;
}

- (id)_temporaryReadURL:(id)l error:(id *)error
{
  v6 = -[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", [objc_msgSend(MEMORY[0x277CCAD78] "UUID")]);
  lastPathComponent = [l lastPathComponent];
  if (![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachmentSecurityScope *)v6 _temporaryReadURL:v11 error:v12, v13, v14, v15, v16, v17];
    }

    return 0;
  }

  v8 = [(NSString *)v6 stringByAppendingPathComponent:lastPathComponent];
  v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v8 isDirectory:0];
  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachmentSecurityScope *)v9 _temporaryReadURL:error error:v10];
    }

    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    return 0;
  }

  return v9;
}

- (void)_removeTemporaryReadURL
{
  *v4 = 138412546;
  *&v4[4] = self;
  *&v4[12] = 2112;
  *&v4[14] = *a2;
  OUTLINED_FUNCTION_3(&dword_258BDA000, a2, a3, "Failed to remove temporary read directory [%@] error [%@]", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)stopAccess
{
  if (self->_securedRead)
  {
    [(NSURL *)self->_securityScopedURL stopAccessingSecurityScopedResource];
  }

  if (self->_secureReadURL)
  {
    [(MFAttachmentSecurityScope *)self _removeTemporaryReadURL];

    self->_secureReadURL = 0;
    self->_securedRead = 0;
  }

  if (self->_securedWrite)
  {
    [(NSURL *)self->_securityScopedURL stopAccessingSecurityScopedResource];
  }

  secureWriteURL = self->_secureWriteURL;
  if (secureWriteURL)
  {

    self->_secureWriteURL = 0;
    self->_securedWrite = 0;
  }
}

- (id)securityScopeToken
{
  result = self->_securityScopeToken;
  if (!result)
  {
    v4 = *MEMORY[0x277D861C0];
    [(NSString *)[(NSURL *)self->_securityScopedURL path] fileSystemRepresentation];
    v5 = *MEMORY[0x277D861E0];
    v6 = sandbox_extension_issue_file();
    if (v6)
    {
      result = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v6 length:strlen(v6) + 1];
      self->_securityScopeToken = result;
    }

    else
    {
      return self->_securityScopeToken;
    }
  }

  return result;
}

- (void)_attachSecurityScope
{
  if ([(MFAttachmentSecurityScope *)self securityScopeToken])
  {
    securityScopedURL = self->_securityScopedURL;
    [(MFAttachmentSecurityScope *)self securityScopeToken];

    JUMPOUT(0x259C97090);
  }
}

- (id)data
{
  secureReadURL = self->_secureReadURL;
  if (!secureReadURL)
  {
    [(MFAttachmentSecurityScope *)self startReadAccess];
    secureReadURL = self->_secureReadURL;
  }

  v5 = 0;
  return [MEMORY[0x277CBEA90] dataWithContentsOfURL:secureReadURL options:3 error:&v5];
}

- (BOOL)isBundle
{
  v6 = 0;
  isReadable = [(MFAttachmentSecurityScope *)self isReadable];
  v4 = 0;
  if (isReadable)
  {
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v4 = v6;
  }

  return v4 & 1;
}

- (void)startWriteAccess
{
  v7 = *MEMORY[0x277D85DE8];
  ef_publicDescription = [*self ef_publicDescription];
  v5 = 138543362;
  v6 = ef_publicDescription;
  _os_log_error_impl(&dword_258BDA000, a2, OS_LOG_TYPE_ERROR, "#Attachments Error accessing secure write URL [%{public}@]", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)startReadAccess
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_258BDA000, log, OS_LOG_TYPE_ERROR, "#Attachments Error accessing secure read URL [%{public}@]", buf, 0xCu);
}

- (void)_temporaryReadURL:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, a2, a3, "#Attachments Failed to create temporary read directory [%@]", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_temporaryReadURL:(os_log_t)log error:.cold.2(uint64_t a1, id *a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = [*a2 ef_publicDescription];
  }

  else
  {
    v5 = @"unknown";
  }

  v7 = 138412546;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_258BDA000, log, OS_LOG_TYPE_ERROR, "#Attachments Failed to create temporary read URL [%@] error [%{public}@]", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end