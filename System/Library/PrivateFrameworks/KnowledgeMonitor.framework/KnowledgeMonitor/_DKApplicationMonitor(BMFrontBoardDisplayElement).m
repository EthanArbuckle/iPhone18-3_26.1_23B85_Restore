@interface _DKApplicationMonitor(BMFrontBoardDisplayElement)
@end

@implementation _DKApplicationMonitor(BMFrontBoardDisplayElement)

- (void)donateElementsFromDisplayLayout:()BMFrontBoardDisplayElement withContext:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_22595A000, log, OS_LOG_TYPE_DEBUG, "BMFrontBoardDisplayElement - Skipping modify element update due to it being a duplicate of an existing event", buf, 2u);
}

- (void)_updateCurrentElementsWithDisplayElement:()BMFrontBoardDisplayElement .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22595A000, a2, OS_LOG_TYPE_ERROR, "BMFrontBoardDisplayElement - Updating current elements state received malformed biome display element event, skipping: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end