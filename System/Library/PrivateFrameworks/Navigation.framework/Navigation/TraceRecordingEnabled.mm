@interface TraceRecordingEnabled
@end

@implementation TraceRecordingEnabled

id NavigationConfig_TraceRecordingEnabled_Metadata_block_invoke_115()
{
  v0 = MEMORY[0x1E696AD98];
  v1 = [MEMORY[0x1E69A2398] sharedPlatform];
  v2 = [v0 numberWithBool:{objc_msgSend(v1, "isInternalInstall")}];

  return v2;
}

@end