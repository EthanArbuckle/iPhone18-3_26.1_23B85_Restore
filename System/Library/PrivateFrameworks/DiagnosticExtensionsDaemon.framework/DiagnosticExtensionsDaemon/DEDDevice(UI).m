@interface DEDDevice(UI)
@end

@implementation DEDDevice(UI)

- (void)imageURLForDeviceClass:()UI deviceModel:deviceColor:size:variant:scale:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_248AD7000, a2, OS_LOG_TYPE_DEBUG, "icon url used %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end