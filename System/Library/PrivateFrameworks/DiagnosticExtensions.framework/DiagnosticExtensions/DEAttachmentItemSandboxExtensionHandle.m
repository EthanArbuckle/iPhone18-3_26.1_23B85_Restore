@interface DEAttachmentItemSandboxExtensionHandle
- (DEAttachmentItemSandboxExtensionHandle)initWithSandboxExtensionToken:(id)a3 itemURL:(id)a4 errorOut:(id *)p_isa;
- (void)dealloc;
@end

@implementation DEAttachmentItemSandboxExtensionHandle

- (DEAttachmentItemSandboxExtensionHandle)initWithSandboxExtensionToken:(id)a3 itemURL:(id)a4 errorOut:(id *)p_isa
{
  v37[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    if (!p_isa)
    {
      goto LABEL_15;
    }

    v12 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v37[0] = @"nil sandbox extension token. Do not try attempt to consume a token more than once.";
    v13 = MEMORY[0x277CBEAC0];
    v14 = v37;
    v15 = &v36;
    goto LABEL_13;
  }

  if (!v9)
  {
    if (!p_isa)
    {
      goto LABEL_15;
    }

    v12 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35 = @"nil item URL";
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v35;
    v15 = &v34;
LABEL_13:
    v16 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
    v17 = [v12 errorWithDomain:@"DEExtensionErrorDomain" code:0 userInfo:v16];

    v18 = v17;
    *p_isa = v17;
    goto LABEL_14;
  }

  v31.receiver = self;
  v31.super_class = DEAttachmentItemSandboxExtensionHandle;
  self = [(DEAttachmentItemSandboxExtensionHandle *)&v31 init];
  if (self)
  {
    [v8 UTF8String];
    self->__handle = sandbox_extension_consume();
    self->_didInit = 1;
    if ([(DEAttachmentItemSandboxExtensionHandle *)self _handle]!= -1)
    {
      objc_storeStrong(&self->_itemURL, a4);
      goto LABEL_6;
    }

    if (!p_isa)
    {
      goto LABEL_15;
    }

    v21 = MEMORY[0x277CCACA8];
    v22 = [(DEAttachmentItemSandboxExtensionHandle *)self itemURL];
    v23 = [v22 path];
    v24 = __error();
    v25 = strerror(*v24);
    v26 = "Unknown";
    if (v25)
    {
      v26 = v25;
    }

    v17 = [v21 stringWithFormat:@"Failed to consume extension token for '%@' due to error: %s", v23, v26];

    v27 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33 = v17;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v29 = [v27 errorWithDomain:@"DEExtensionErrorDomain" code:0 userInfo:v28];

    v30 = v29;
    *p_isa = v29;

LABEL_14:
    p_isa = 0;
    goto LABEL_15;
  }

LABEL_6:
  v11 = +[DELogging fwHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DEAttachmentItemSandboxExtensionHandle initWithSandboxExtensionToken:? itemURL:? errorOut:?];
  }

  self = self;
  p_isa = &self->super.isa;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
  return p_isa;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 itemURL];
  v2 = [v1 path];
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)initWithSandboxExtensionToken:(void *)a1 itemURL:errorOut:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 itemURL];
  v2 = [v1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248AB3000, v3, v4, "Extending sandbox for file at path '%@'", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end