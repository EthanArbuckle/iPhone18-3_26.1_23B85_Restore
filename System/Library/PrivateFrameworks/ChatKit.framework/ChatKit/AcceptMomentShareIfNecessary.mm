@interface AcceptMomentShareIfNecessary
@end

@implementation AcceptMomentShareIfNecessary

void ___AcceptMomentShareIfNecessary_block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = IMLogHandleForCategory();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEFAULT, "Did accept moment share: %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    ___AcceptMomentShareIfNecessary_block_invoke_cold_1();
  }
}

@end