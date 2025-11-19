@interface NTKPhoto(Legacy)
@end

@implementation NTKPhoto(Legacy)

- (void)initWithLegacySidecar:()Legacy .cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v8 = 2112;
  v9 = a2;
  v6 = v5;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "%@: cannot read photo info from %@", v7, 0x16u);
}

@end