@interface DESMMappedFile
- (DESMMappedFile)initWithURL:(id)a3;
- (void)dealloc;
@end

@implementation DESMMappedFile

- (DESMMappedFile)initWithURL:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = DESMMappedFile;
  v6 = [(DESMMappedFile *)&v19 init];
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = open([v5 fileSystemRepresentation], 0);
  if (v7 == -1)
  {
    v15 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [DESMMappedFile initWithURL:];
    }

    goto LABEL_17;
  }

  v8 = v7;
  memset(&v18, 0, sizeof(v18));
  if (fstat(v7, &v18) == -1)
  {
    v16 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DESMMappedFile initWithURL:];
    }

    goto LABEL_16;
  }

  if ((v18.st_mode & 0xF000) != 0x8000)
  {
    v16 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(DESMMappedFile *)v5 initWithURL:v16];
    }

    goto LABEL_16;
  }

  st_size = v18.st_size;
  v10 = [(DESMMappedFile *)v6 _mmap:0 len:v18.st_size protectionFlags:1 sharenFlags:2 filedHandle:v8 offset:0];
  if (v10 == -1)
  {
    v16 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DESMMappedFile initWithURL:];
    }

LABEL_16:

    close(v8);
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  v11 = v10;
  close(v8);
  v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v11 length:st_size freeWhenDone:0];
  data = v6->_data;
  v6->_data = v12;

  objc_storeStrong(&v6->_fileURL, a3);
  v14 = v6;
LABEL_18:

  return v14;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "%@u is not reguar file", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithURL:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithURL:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithURL:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end