@interface IMMultiFrameImage(OptimizedBitmap_Persistence)
- (void)deleteStream;
@end

@implementation IMMultiFrameImage(OptimizedBitmap_Persistence)

- (void)deleteStream
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_258CD3000, v0, v1, "Failed to delete output stream after error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end