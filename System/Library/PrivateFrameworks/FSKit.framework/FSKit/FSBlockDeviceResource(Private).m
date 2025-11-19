@interface FSBlockDeviceResource(Private)
@end

@implementation FSBlockDeviceResource(Private)

- (void)metadataReadInto:()Private startingAt:length:readAheadExtents:readAheadCount:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end