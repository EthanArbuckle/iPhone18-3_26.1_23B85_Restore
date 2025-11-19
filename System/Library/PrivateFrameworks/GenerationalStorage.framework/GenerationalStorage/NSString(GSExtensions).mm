@interface NSString(GSExtensions)
+ (id)gs_stringWithFileSystemRepresentation:()GSExtensions;
- (id)gs_issueExtension:()GSExtensions error:;
- (id)gs_issueReadExtensionIfNeededForAuditToken:()GSExtensions;
- (id)gs_stringByUpdatingPathExtensionWithPathOrURL:()GSExtensions;
- (uint64_t)validateGSNameAllowingDot:()GSExtensions error:;
@end

@implementation NSString(GSExtensions)

+ (id)gs_stringWithFileSystemRepresentation:()GSExtensions
{
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 stringWithFileSystemRepresentation:a3 length:strlen(a3)];

  return v5;
}

- (uint64_t)validateGSNameAllowingDot:()GSExtensions error:
{
  if ([a1 length] <= 0xFE && objc_msgSend(a1, "length"))
  {
    if ((a3 & 1) != 0 || [a1 characterAtIndex:0] != 46)
    {
      if (!strchr([a1 fileSystemRepresentation], 47))
      {
        return 1;
      }
      v7 = ;
      v8 = gs_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }
    }

    else
      v7 = {;
      v8 = gs_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Name [%@]", a1];
    v8 = gs_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_8:
      [NSString(GSExtensions) validateGSNameAllowingDot:error:];
    }
  }

  if (a4)
  {
    *a4 = _GSErrorForStatus(105, v7, 0);
  }

  return 0;
}

- (id)gs_issueExtension:()GSExtensions error:
{
  [a1 fileSystemRepresentation];
  v7 = sandbox_extension_issue_file();
  if (v7)
  {
    v8 = v7;
    v9 = gs_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(NSString(GSExtensions) *)a3 gs_issueExtension:a1 error:v9];
    }

    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v8 length:strlen(v8) + 1];
  }

  else
  {
    if (*__error() != 2)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to issue [%s] extension for <%@>", a3, a1];
      v12 = *__error();
      v13 = gs_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(NSString(GSExtensions) *)v11 gs_issueExtension:v12 error:v13];
      }

      if (a4)
      {
        *a4 = _GSErrorForErrno(v12, v11);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (id)gs_issueReadExtensionIfNeededForAuditToken:()GSExtensions
{
  v5 = *MEMORY[0x277D861D8];
  v6 = [a1 fileSystemRepresentation];
  v10 = *a3;
  v11 = a3[1];
  v9 = v6;
  if (sandbox_check_by_audit_token())
  {
    v7 = [a1 gs_issueExtension:"com.apple.revisiond.revision" error:{0, v9}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)gs_stringByUpdatingPathExtensionWithPathOrURL:()GSExtensions
{
  v4 = a3;
  v5 = [a1 pathExtension];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_286278F70;
  }

  v8 = v7;

  v9 = [v4 pathExtension];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_286278F70;
  }

  v11 = v10;

  if ([(__CFString *)v11 caseInsensitiveCompare:v8])
  {
    v12 = [a1 stringByDeletingPathExtension];
    if ([(__CFString *)v11 length])
    {
      v13 = [v12 stringByAppendingPathExtension:v11];

      v12 = v13;
    }
  }

  else
  {
    v12 = a1;
  }

  return v12;
}

- (void)validateGSNameAllowingDot:()GSExtensions error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_24FD46000, v0, v1, "[DEBUG] %@; status %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)gs_issueExtension:()GSExtensions error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 136315394;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_24FD46000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Issued [%s] extension to <%@>", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)gs_issueExtension:()GSExtensions error:.cold.2(uint64_t a1, int __errnum, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = 138412802;
  v6 = a1;
  v7 = 1024;
  v8 = __errnum;
  v9 = 2080;
  v10 = strerror(__errnum);
  _os_log_debug_impl(&dword_24FD46000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@; error %d (%s)", &v5, 0x1Cu);
  v4 = *MEMORY[0x277D85DE8];
}

@end