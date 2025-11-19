@interface NTKFace(NTKFaceDescriptorAdditions)
@end

@implementation NTKFace(NTKFaceDescriptorAdditions)

+ (void)defaultFaceFromFaceDescriptor:()NTKFaceDescriptorAdditions forDevice:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_0();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "Default Face of style %@ is nil for descriptor %@", v6, 0x16u);
}

+ (void)defaultFaceFromFaceDescriptor:()NTKFaceDescriptorAdditions forDevice:.cold.3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_22D9C5000, v1, OS_LOG_TYPE_ERROR, "Default Face for bundle %@ is nil for descriptor %@", v2, 0x16u);
}

@end