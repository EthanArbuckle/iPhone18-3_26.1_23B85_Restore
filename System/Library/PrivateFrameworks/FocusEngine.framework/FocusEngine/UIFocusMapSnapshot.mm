@interface UIFocusMapSnapshot
@end

@implementation UIFocusMapSnapshot

void __45___UIFocusMapSnapshot_addRegionsInContainer___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = logger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_error_impl(&dword_24B885000, v2, OS_LOG_TYPE_ERROR, "%@.\nSuppressing subsequent logging of this error.", &v4, 0xCu);
  }
}

@end