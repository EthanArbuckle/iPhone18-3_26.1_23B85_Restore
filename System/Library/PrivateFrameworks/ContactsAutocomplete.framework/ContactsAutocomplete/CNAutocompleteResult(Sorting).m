@interface CNAutocompleteResult(Sorting)
@end

@implementation CNAutocompleteResult(Sorting)

- (void)compare:()Sorting .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_2155FE000, a2, OS_LOG_TYPE_DEBUG, "Comparison result: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end