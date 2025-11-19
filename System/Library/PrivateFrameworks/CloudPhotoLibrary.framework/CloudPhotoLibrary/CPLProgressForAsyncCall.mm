@interface CPLProgressForAsyncCall
@end

@implementation CPLProgressForAsyncCall

void ___CPLProgressForAsyncCall_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "[%@ %@] was cancelled by caller", &v6, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void ___CPLProgressForAsyncCall_block_invoke_0(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLGenericOSLogDomain();
    if (OUTLINED_FUNCTION_93(v3))
    {
      v4 = *(a1 + 32);
      v5 = NSStringFromSelector(*(a1 + 40));
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1DC05A000, v1, OS_LOG_TYPE_DEFAULT, "[%@ %@] was cancelled by caller", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end