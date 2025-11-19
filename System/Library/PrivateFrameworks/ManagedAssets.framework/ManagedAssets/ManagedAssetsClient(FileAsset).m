@interface ManagedAssetsClient(FileAsset)
@end

@implementation ManagedAssetsClient(FileAsset)

- (void)availableSpace:()FileAsset error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "fail to retrieve size of available space, error = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end