@interface _CNAutocompleteQueryCacheMissOSLogging
- (_CNAutocompleteQueryCacheMissOSLogging)init;
- (void)didReturnCacheFalseNegatives:(id)negatives;
- (void)didReturnCacheFalsePositives:(id)positives;
@end

@implementation _CNAutocompleteQueryCacheMissOSLogging

- (_CNAutocompleteQueryCacheMissOSLogging)init
{
  v7.receiver = self;
  v7.super_class = _CNAutocompleteQueryCacheMissOSLogging;
  v2 = [(_CNAutocompleteQueryCacheMissOSLogging *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts.autocomplete", "cache");
    os_log = v2->_os_log;
    v2->_os_log = v3;

    v5 = v2;
  }

  return v2;
}

- (void)didReturnCacheFalseNegatives:(id)negatives
{
  negativesCopy = negatives;
  os_log = [(_CNAutocompleteQueryCacheMissOSLogging *)self os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
  {
    [_CNAutocompleteQueryCacheMissOSLogging didReturnCacheFalseNegatives:negativesCopy];
  }
}

- (void)didReturnCacheFalsePositives:(id)positives
{
  positivesCopy = positives;
  os_log = [(_CNAutocompleteQueryCacheMissOSLogging *)self os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
  {
    [_CNAutocompleteQueryCacheMissOSLogging didReturnCacheFalsePositives:positivesCopy];
  }
}

- (void)didReturnCacheFalseNegatives:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_0(&dword_2155FE000, v1, v2, "Server returned %lu result(s) not returned from the cache", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)didReturnCacheFalsePositives:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_0(&dword_2155FE000, v1, v2, "Cache returned %lu result(s) not returned by the server", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

@end