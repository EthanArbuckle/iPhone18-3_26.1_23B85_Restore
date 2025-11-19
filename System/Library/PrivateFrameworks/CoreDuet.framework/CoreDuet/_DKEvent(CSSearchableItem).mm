@interface _DKEvent(CSSearchableItem)
@end

@implementation _DKEvent(CSSearchableItem)

+ (void)eventRepresentingUserActivityWithSearchableItem:()CSSearchableItem bundleIdentifier:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "URL is not valid %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end