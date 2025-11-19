@interface SYStatisticStore(NSFilePresentation)
@end

@implementation SYStatisticStore(NSFilePresentation)

- (void)accommodatePresentedItemDeletionWithCompletionHandler:()NSFilePresentation .cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "sqlite3_close() failed - %{companionsync:sqlite3err, public}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end