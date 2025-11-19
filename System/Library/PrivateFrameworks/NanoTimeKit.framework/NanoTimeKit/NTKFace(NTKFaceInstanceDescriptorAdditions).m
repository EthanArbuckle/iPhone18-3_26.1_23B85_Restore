@interface NTKFace(NTKFaceInstanceDescriptorAdditions)
@end

@implementation NTKFace(NTKFaceInstanceDescriptorAdditions)

+ (void)faceWithInstanceDescriptor:()NTKFaceInstanceDescriptorAdditions .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "JSON object is of wrong class type %@", &v2, 0xCu);
}

+ (void)faceWithInstanceDescriptor:()NTKFaceInstanceDescriptorAdditions .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "JSON data is nil for instance descriptor %@", &v2, 0xCu);
}

@end