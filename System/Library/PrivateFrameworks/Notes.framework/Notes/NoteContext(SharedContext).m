@interface NoteContext(SharedContext)
@end

@implementation NoteContext(SharedContext)

+ (void)mainContextObjectFromObject:()SharedContext .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 ic_loggingDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_25C69C000, a2, OS_LOG_TYPE_ERROR, "Error getting main context object from object: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end