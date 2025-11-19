@interface CKCoreChatController(Backgrounds)
- (void)_setupTranscriptBackgroundIfNeeded;
@end

@implementation CKCoreChatController(Backgrounds)

- (void)_setupTranscriptBackgroundIfNeeded
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 conversation];
  v4 = [v3 chat];
  v5 = [v4 transcriptBackgroundPath];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Background at path %@ does not exist on disk, re-fetching. This is an invalid state. Falling back on channel configuration if possible", v6, 0xCu);
}

@end