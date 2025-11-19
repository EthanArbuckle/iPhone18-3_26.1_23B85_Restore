@interface ULDataContainer
- (BOOL)_consumeSandboxExtensionForContainer:(container_object_s *)a3;
- (ULDataContainer)init;
- (const)_getContainerPathWithSandboxAccessForQuery:(container_query_s *)a3;
- (container_object_s)_getContainerForQuery:(container_query_s *)a3;
- (id)getContainerPathWithSandboxAccess;
- (void)_releaseExtensionHandle;
- (void)dealloc;
@end

@implementation ULDataContainer

- (ULDataContainer)init
{
  v5.receiver = self;
  v5.super_class = ULDataContainer;
  v2 = [(ULDataContainer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ULDataContainer *)v2 setExtensionHandle:-1];
  }

  return v3;
}

- (void)dealloc
{
  [(ULDataContainer *)self _releaseExtensionHandle];
  v3.receiver = self;
  v3.super_class = ULDataContainer;
  [(ULDataContainer *)&v3 dealloc];
}

- (id)getContainerPathWithSandboxAccess
{
  [(ULDataContainer *)self _releaseExtensionHandle];
  v3 = container_query_create();
  if (v3)
  {
    v4 = [(ULDataContainer *)self _getContainerPathWithSandboxAccessForQuery:v3];
    if (v4)
    {
      v5 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v4 isDirectory:1 relativeToURL:0];
    }

    else
    {
      v5 = 0;
    }

    container_query_free();
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULDataContainer getContainerPathWithSandboxAccess];
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "Error creating query for data container", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (container_object_s)_getContainerForQuery:(container_query_s *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  container_query_set_class();
  container_query_operation_set_flags();
  v5 = *MEMORY[0x277D85ED0];
  container_query_set_persona_unique_string();
  v6 = [(ULDataContainer *)self _getContainerSingleResultForQuery:a3];
  if (!v6)
  {
    container_query_get_last_error();
    v7 = container_error_copy_unlocalized_description();
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULDataContainer getContainerPathWithSandboxAccess];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = v7;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "Error executing query for data container: %s", &v11, 0xCu);
    }

    free(v7);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_consumeSandboxExtensionForContainer:(container_object_s *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = container_copy_sandbox_token();
  if (v4)
  {
    v5 = v4;
    [(ULDataContainer *)self setExtensionHandle:sandbox_extension_consume()];
    free(v5);
    if (([(ULDataContainer *)self extensionHandle]& 0x8000000000000000) == 0)
    {
      LOBYTE(v6) = 1;
      goto LABEL_14;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULDataContainer getContainerPathWithSandboxAccess];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      v12[0] = 67109120;
      v12[1] = v9;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "Error consuming sandbox extension for container: %{darwin.errno}d", v12, 8u);
    }

    [(ULDataContainer *)self _releaseExtensionHandle];
LABEL_13:
    LOBYTE(v6) = 0;
    goto LABEL_14;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULDataContainer getContainerPathWithSandboxAccess];
  }

  v7 = logObject_MicroLocation_Default;
  v6 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "Error getting sandbox extension for container. Got NULL", v12, 2u);
    goto LABEL_13;
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (const)_getContainerPathWithSandboxAccessForQuery:(container_query_s *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(ULDataContainer *)self _getContainerForQuery:a3];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [(ULDataContainer *)self _getPathFromContainer:v4];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULDataContainer getContainerPathWithSandboxAccess];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    v10[0] = 68289283;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2081;
    v14 = v6;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Got container path, path:%{private, location:escape_only}s}", v10, 0x1Cu);
  }

  if (![(ULDataContainer *)self _consumeSandboxExtensionForContainer:v5])
  {
LABEL_7:
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_releaseExtensionHandle
{
  v7 = *MEMORY[0x277D85DE8];
  if (([(ULDataContainer *)self extensionHandle]& 0x8000000000000000) == 0)
  {
    [(ULDataContainer *)self extensionHandle];
    if (sandbox_extension_release() == -1)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULDataContainer getContainerPathWithSandboxAccess];
      }

      v3 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = *__error();
        v6[0] = 67109120;
        v6[1] = v4;
        _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_ERROR, "Error releasing data container's sandbox extension: %{darwin.errno}d", v6, 8u);
      }
    }

    [(ULDataContainer *)self setExtensionHandle:-1];
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end