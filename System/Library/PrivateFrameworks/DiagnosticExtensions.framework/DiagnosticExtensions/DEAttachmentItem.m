@interface DEAttachmentItem
+ (id)attachmentWithPath:(id)a3;
+ (id)attachmentWithPath:(id)a3 withDisplayName:(id)a4 modificationDate:(id)a5 andFilesize:(id)a6;
+ (id)attachmentWithPathURL:(id)a3;
- (DEAttachmentItem)init;
- (DEAttachmentItem)initWithCoder:(id)a3;
- (DEAttachmentItem)initWithPath:(id)a3;
- (DEAttachmentItem)initWithPath:(id)a3 withDisplayName:(id)a4 modificationDate:(id)a5 andFilesize:(id)a6;
- (DEAttachmentItem)initWithPathURL:(id)a3 shouldCheckURLAttributes:(BOOL)a4;
- (id)attachToDestinationDir:(id)a3;
- (id)description;
- (id)sandboxExtensionHandleWithErrorOut:(id *)a3;
- (void)_generateSandboxExtensionTokenForPID:(int)a3;
- (void)detach;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DEAttachmentItem

- (DEAttachmentItem)init
{
  v14.receiver = self;
  v14.super_class = DEAttachmentItem;
  v2 = [(DEAttachmentItem *)&v14 init];
  v3 = v2;
  if (v2)
  {
    displayName = v2->_displayName;
    v2->_displayName = 0;

    path = v3->_path;
    v3->_path = 0;

    shouldCompress = v3->_shouldCompress;
    v7 = MEMORY[0x277CBEC28];
    v3->_shouldCompress = MEMORY[0x277CBEC28];

    modificationDate = v3->_modificationDate;
    v3->_modificationDate = 0;

    filesize = v3->_filesize;
    v3->_filesize = 0;

    attachedPath = v3->_attachedPath;
    v3->_attachedPath = 0;

    attachmentType = v3->_attachmentType;
    v3->_attachmentType = @"DEAttachmentTypeItem";

    deleteOnAttach = v3->_deleteOnAttach;
    v3->_deleteOnAttach = v7;
  }

  return v3;
}

- (DEAttachmentItem)initWithPath:(id)a3
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3];
  v5 = [(DEAttachmentItem *)self initWithPathURL:v4];

  return v5;
}

- (DEAttachmentItem)initWithPathURL:(id)a3 shouldCheckURLAttributes:(BOOL)a4
{
  v4 = a4;
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v36 = 0;
  v7 = [v6 checkResourceIsReachableAndReturnError:&v36];
  v8 = v36;
  if (!v7)
  {
    if (!v4)
    {
LABEL_20:
      v15 = 0;
      v19 = 0;
      v10 = 0;
      goto LABEL_21;
    }

    v20 = +[DELogging fwHandle];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [DEAttachmentItem initWithPathURL:shouldCheckURLAttributes:];
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!v4)
  {
    v20 = +[DELogging fwHandle];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v38 = v6;
      _os_log_impl(&dword_248AB3000, v20, OS_LOG_TYPE_DEFAULT, "Not checking attributes on %{public}@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v35 = 0;
  v9 = *MEMORY[0x277CBE7B0];
  v34 = 0;
  [v6 getResourceValue:&v35 forKey:v9 error:&v34];
  v10 = v35;
  v11 = v34;
  if (v11)
  {
    v12 = v11;
    v13 = +[DELogging fwHandle];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DEAttachmentItem initWithPathURL:shouldCheckURLAttributes:];
    }
  }

  v33 = 0;
  v14 = *MEMORY[0x277CBE868];
  v32 = 0;
  [v6 getResourceValue:&v33 forKey:v14 error:&v32];
  v15 = v33;
  v16 = v32;
  if (v16)
  {
    v17 = v16;
    v18 = +[DELogging fwHandle];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [DEAttachmentItem initWithPathURL:shouldCheckURLAttributes:];
    }
  }

  if (v15 && [v15 BOOLValue])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[DEUtils getDirectorySize:](DEUtils, "getDirectorySize:", v6)}];
  }

  else
  {
    v31 = 0;
    v26 = *MEMORY[0x277CBE838];
    v30 = 0;
    [v6 getResourceValue:&v31 forKey:v26 error:&v30];
    v19 = v31;
    v27 = v30;
    if (v27)
    {
      v28 = v27;
      v29 = +[DELogging fwHandle];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [DEAttachmentItem initWithPathURL:shouldCheckURLAttributes:];
      }
    }
  }

LABEL_21:
  v21 = +[DELogging fwHandle];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v38 = v6;
    v39 = 2112;
    v40 = v10;
    v41 = 2112;
    v42 = v19;
    _os_log_impl(&dword_248AB3000, v21, OS_LOG_TYPE_DEFAULT, "New attachment at path: [%{public}@] mod date: %@ size: %@", buf, 0x20u);
  }

  v22 = [v6 lastPathComponent];
  v23 = [(DEAttachmentItem *)self initWithPath:v6 withDisplayName:v22 modificationDate:v10 andFilesize:v19];

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)_generateSandboxExtensionTokenForPID:(int)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [(DEAttachmentItem *)self deleteOnAttach];
  [v5 BOOLValue];

  v6 = [(DEAttachmentItem *)self path];
  v7 = [v6 fileSystemRepresentation];

  if (v7)
  {
    v8 = [(DEAttachmentItem *)self path];
    v34 = 0;
    v9 = [v8 checkResourceIsReachableAndReturnError:&v34];
    v10 = v34;

    if (v9)
    {
      v11 = *MEMORY[0x277D861E8];
      v12 = sandbox_extension_issue_file_to_process_by_pid();
      v13 = +[DELogging fwHandle];
      v14 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v27 = [(DEAttachmentItem *)self deleteOnAttach];
          v28 = [v27 BOOLValue];
          v29 = "R";
          *buf = 136315650;
          if (v28)
          {
            v29 = "RW";
          }

          v36 = v29;
          v37 = 2082;
          v38 = v7;
          v39 = 1024;
          v40 = a3;
          _os_log_debug_impl(&dword_248AB3000, v14, OS_LOG_TYPE_DEBUG, "Granted %s sandbox extension for attachment item '%{public}s' to process with PID: %d.", buf, 0x1Cu);
        }

        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
        sandboxExtensionToken = self->__sandboxExtensionToken;
        self->__sandboxExtensionToken = v15;

        v17 = v12;
LABEL_6:
        free(v17);
        goto LABEL_12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v30 = [(DEAttachmentItem *)self deleteOnAttach];
        if ([v30 BOOLValue])
        {
          v31 = "RW";
        }

        else
        {
          v31 = "R";
        }

        v32 = __error();
        v33 = strerror(*v32);
        *buf = 136315906;
        v36 = v31;
        v37 = 2082;
        v38 = v7;
        v39 = 1024;
        v40 = a3;
        v41 = 2080;
        v42 = v33;
        _os_log_error_impl(&dword_248AB3000, v14, OS_LOG_TYPE_ERROR, "Failed to grant %s sandbox extension for attachment item '%{public}s' for PID: %d with error: %s. This DiagnosticExtension may not have appropriate access to the specified item.", buf, 0x26u);
      }

      v20 = [(DEAttachmentItem *)self deleteOnAttach];
      v21 = [v20 BOOLValue];

      if (v21)
      {
        v22 = sandbox_extension_issue_file_to_process_by_pid();
        v23 = +[DELogging fwHandle];
        v24 = v23;
        if (v22)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [DEAttachmentItem _generateSandboxExtensionTokenForPID:];
          }

          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:v22];
          v26 = self->__sandboxExtensionToken;
          self->__sandboxExtensionToken = v25;

          v17 = v22;
          goto LABEL_6;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [DEAttachmentItem _generateSandboxExtensionTokenForPID:];
        }
      }
    }

    else
    {
      v18 = +[DELogging fwHandle];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(DEAttachmentItem *)v7 _generateSandboxExtensionTokenForPID:v10];
      }
    }
  }

  else
  {
    v10 = +[DELogging fwHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEAttachmentItem _generateSandboxExtensionTokenForPID:?];
    }
  }

LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
}

- (DEAttachmentItem)initWithPath:(id)a3 withDisplayName:(id)a4 modificationDate:(id)a5 andFilesize:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(DEAttachmentItem *)self init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_path, a3);
    v15 = [v10 lastPathComponent];
    displayName = v14->_displayName;
    v14->_displayName = v15;

    objc_storeStrong(&v14->_modificationDate, a5);
    objc_storeStrong(&v14->_filesize, a6);
    attachmentType = v14->_attachmentType;
    v14->_attachmentType = @"DEAttachmentTypeItem";
  }

  return v14;
}

- (DEAttachmentItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DEAttachmentItem *)self init];
  v6 = [v4 decodeObjectForKey:@"DisplayName"];
  displayName = v5->_displayName;
  v5->_displayName = v6;

  v8 = [v4 decodeObjectForKey:@"Path"];
  path = v5->_path;
  v5->_path = v8;

  v10 = [v4 decodeObjectForKey:@"ShouldCompress"];
  shouldCompress = v5->_shouldCompress;
  v5->_shouldCompress = v10;

  v12 = [v4 decodeObjectForKey:@"ModificationDate"];
  modificationDate = v5->_modificationDate;
  v5->_modificationDate = v12;

  v14 = [v4 decodeObjectForKey:@"AttachedPath"];
  attachedPath = v5->_attachedPath;
  v5->_attachedPath = v14;

  v16 = [v4 decodeObjectForKey:@"AttachmentType"];
  attachmentType = v5->_attachmentType;
  v5->_attachmentType = v16;

  v18 = [v4 decodeObjectForKey:@"DeleteOnAttach"];
  deleteOnAttach = v5->_deleteOnAttach;
  v5->_deleteOnAttach = v18;

  v20 = [v4 decodeObjectForKey:@"SandboxExtensionToken"];

  sandboxExtensionToken = v5->__sandboxExtensionToken;
  v5->__sandboxExtensionToken = v20;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  path = self->_path;
  v5 = a3;
  [v5 encodeObject:path forKey:@"Path"];
  [v5 encodeObject:self->_displayName forKey:@"DisplayName"];
  [v5 encodeObject:self->_shouldCompress forKey:@"ShouldCompress"];
  [v5 encodeObject:self->_modificationDate forKey:@"ModificationDate"];
  [v5 encodeObject:self->_attachedPath forKey:@"AttachedPath"];
  [v5 encodeObject:self->_attachmentType forKey:@"AttachmentType"];
  [v5 encodeObject:self->_deleteOnAttach forKey:@"DeleteOnAttach"];
  [v5 encodeObject:self->__sandboxExtensionToken forKey:@"SandboxExtensionToken"];
}

- (id)attachToDestinationDir:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[DELogging fwHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v17 = 138543362;
    v18 = v4;
    _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_INFO, "Log destination directory: %{public}@", &v17, 0xCu);
  }

  v6 = [(DEAttachmentItem *)self path];
  v7 = [(DEAttachmentItem *)self shouldCompress];
  v8 = +[DEUtils copyItem:toDestinationDir:zipped:](DEUtils, "copyItem:toDestinationDir:zipped:", v6, v4, [v7 BOOLValue]);
  [(DEAttachmentItem *)self setAttachedPath:v8];

  v9 = [(DEAttachmentItem *)self attachedPath];
  if (v9)
  {
    v10 = v9;
    v11 = [(DEAttachmentItem *)self deleteOnAttach];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      v13 = [(DEAttachmentItem *)self path];
      [DEUtils removeFile:v13];
    }
  }

  v14 = [(DEAttachmentItem *)self attachedPath];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)detach
{
  v3 = [(DEAttachmentItem *)self attachedPath];
  [DEUtils removeFile:v3];

  [(DEAttachmentItem *)self setAttachedPath:0];
}

- (id)description
{
  v2 = [(DEAttachmentItem *)self path];
  v3 = [v2 path];

  return v3;
}

+ (id)attachmentWithPath:(id)a3 withDisplayName:(id)a4 modificationDate:(id)a5 andFilesize:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[DEAttachmentItem alloc] initWithPath:v12 withDisplayName:v11 modificationDate:v10 andFilesize:v9];

  return v13;
}

+ (id)attachmentWithPath:(id)a3
{
  v3 = a3;
  v4 = [[DEAttachmentItem alloc] initWithPath:v3];

  return v4;
}

+ (id)attachmentWithPathURL:(id)a3
{
  v3 = a3;
  v4 = [[DEAttachmentItem alloc] initWithPathURL:v3];

  return v4;
}

- (id)sandboxExtensionHandleWithErrorOut:(id *)a3
{
  v5 = [(DEAttachmentItem *)self _sandboxExtensionToken];

  if (v5)
  {
    v6 = [DEAttachmentItemSandboxExtensionHandle alloc];
    v7 = [(DEAttachmentItem *)self _sandboxExtensionToken];
    v8 = [(DEAttachmentItem *)self path];
    v9 = [(DEAttachmentItemSandboxExtensionHandle *)v6 initWithSandboxExtensionToken:v7 itemURL:v8 errorOut:a3];

    sandboxExtensionToken = self->__sandboxExtensionToken;
    self->__sandboxExtensionToken = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)initWithPathURL:shouldCheckURLAttributes:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_248AB3000, v0, v1, "%{public}@ is not reachable", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPathURL:shouldCheckURLAttributes:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_248AB3000, v0, v1, "NSURLContentModificationDateKey: [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPathURL:shouldCheckURLAttributes:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_248AB3000, v0, v1, "NSURLIsDirectoryKey: [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPathURL:shouldCheckURLAttributes:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_248AB3000, v0, v1, "NSURLFileSizeKey: [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_generateSandboxExtensionTokenForPID:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_generateSandboxExtensionTokenForPID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_248AB3000, v1, OS_LOG_TYPE_DEBUG, "Succeeded in fallback attempt to grant R sandbox extension for %{public}s for PID %d.", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_generateSandboxExtensionTokenForPID:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_generateSandboxExtensionTokenForPID:(void *)a1 .cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end