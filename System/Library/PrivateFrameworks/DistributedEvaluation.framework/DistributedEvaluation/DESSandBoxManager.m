@interface DESSandBoxManager
+ (id)sandboxExtensionsToXPCConnection:(id)a3 fileURLs:(id)a4 requireWrite:(BOOL)a5 outError:(id *)a6;
- (BOOL)consumeExtensionsWithError:(id *)a3;
- (DESSandBoxManager)initWithExtensions:(id)a3;
- (void)dealloc;
- (void)releaseExtensions;
@end

@implementation DESSandBoxManager

+ (id)sandboxExtensionsToXPCConnection:(id)a3 fileURLs:(id)a4 requireWrite:(BOOL)a5 outError:(id *)a6
{
  v7 = a5;
  v52 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (a3 && v9)
  {
    v41 = a6;
    v47 = 0u;
    v48 = 0u;
    [a3 auditToken];
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v13 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(DESSandBoxManager *)v10 sandboxExtensionsToXPCConnection:v13 fileURLs:v14 requireWrite:v15 outError:v16, v17, v18, v19];
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v10;
    v20 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v44;
      v23 = MEMORY[0x277D861C0];
      if (!v7)
      {
        v23 = MEMORY[0x277D861B8];
      }

      v24 = *v23;
      v25 = *MEMORY[0x277D861E8];
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v43 + 1) + 8 * i);
          [v27 fileSystemRepresentation];
          v28 = sandbox_extension_issue_file_to_process();
          v29 = MEMORY[0x277CCACA8];
          if (!v28)
          {
            v31 = __error();
            v32 = [v29 stringWithFormat:@"fileURL=%@: error=%s\n", v27, strerror(*v31)];
            v33 = +[DESLogging coreChannel];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              [DESSandBoxManager sandboxExtensionsToXPCConnection:v32 fileURLs:v33 requireWrite:? outError:?];
            }

            if (v41)
            {
              v34 = MEMORY[0x277CCA9B8];
              v35 = *MEMORY[0x277CCA450];
              v50[0] = v32;
              v36 = *MEMORY[0x277CCA7E8];
              v49[0] = v35;
              v49[1] = v36;
              v37 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
              v50[1] = v37;
              v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
              *v41 = [v34 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:7001 userInfo:v38];
            }

            v11 = 0;
            goto LABEL_21;
          }

          v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v28 length:strlen(v28) encoding:4 freeWhenDone:1];
          [v12 addObject:v30];
        }

        v21 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v11 = v12;
LABEL_21:
  }

  v39 = *MEMORY[0x277D85DE8];

  return v11;
}

- (DESSandBoxManager)initWithExtensions:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DESSandBoxManager;
  v5 = [(DESSandBoxManager *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    extensions = v5->_extensions;
    v5->_extensions = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    consumedSandboxExtensions = v5->_consumedSandboxExtensions;
    v5->_consumedSandboxExtensions = v8;
  }

  return v5;
}

- (void)dealloc
{
  [(DESSandBoxManager *)self releaseExtensions];
  v3.receiver = self;
  v3.super_class = DESSandBoxManager;
  [(DESSandBoxManager *)&v3 dealloc];
}

- (BOOL)consumeExtensionsWithError:(id *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  p_extensions = &self->_extensions;
  if ([(NSArray *)self->_extensions count])
  {
    v6 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(DESSandBoxManager *)p_extensions consumeExtensionsWithError:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = *p_extensions;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v30 + 1) + 8 * i) UTF8String];
        v18 = sandbox_extension_consume();
        if (v18 == -1)
        {
          v21 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [DESSandBoxManager consumeExtensionsWithError:v21];
          }

          if (a3)
          {
            v22 = MEMORY[0x277CCA9B8];
            v34[0] = *MEMORY[0x277CCA450];
            v23 = MEMORY[0x277CCACA8];
            v24 = __error();
            v25 = [v23 stringWithFormat:@"Error consuming sandbox extension: %s", strerror(*v24)];
            v35[0] = v25;
            v34[1] = *MEMORY[0x277CCA7E8];
            v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
            v35[1] = v26;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
            *a3 = [v22 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:7000 userInfo:v27];

            LOBYTE(a3) = 0;
          }

          goto LABEL_18;
        }

        consumedSandboxExtensions = self->_consumedSandboxExtensions;
        v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v18];
        [(NSMutableArray *)consumedSandboxExtensions addObject:v20];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(a3) = 1;
LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
  return a3;
}

- (void)releaseExtensions
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_5(&dword_248FF7000, a2, a3, "Releasing consumed sandbox extensions: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)sandboxExtensionsToXPCConnection:(uint64_t)a3 fileURLs:(uint64_t)a4 requireWrite:(uint64_t)a5 outError:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5(&dword_248FF7000, a2, a3, "Issuing sandbox extension for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)sandboxExtensionsToXPCConnection:(uint64_t)a1 fileURLs:(NSObject *)a2 requireWrite:outError:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "Failed to issue sandbox extension: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)consumeExtensionsWithError:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_5(&dword_248FF7000, a2, a3, "Consuming sandbox extensions: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)consumeExtensionsWithError:(NSObject *)a1 .cold.2(NSObject *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = __error();
  v3 = strerror(*v2);
  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&dword_248FF7000, a1, OS_LOG_TYPE_ERROR, "Error consuming sandbox extension: %s", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

@end