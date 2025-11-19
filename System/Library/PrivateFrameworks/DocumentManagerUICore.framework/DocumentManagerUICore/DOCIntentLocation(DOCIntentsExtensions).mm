@interface DOCIntentLocation(DOCIntentsExtensions)
@end

@implementation DOCIntentLocation(DOCIntentsExtensions)

+ (void)imageForType:()DOCIntentsExtensions .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "+[DOCIntentLocation(DOCIntentsExtensions) imageForType:]";
  v5 = 2112;
  v6 = a1;
  _os_log_fault_impl(&dword_249CE0000, a2, OS_LOG_TYPE_FAULT, "%s encountered enexpected location type: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end