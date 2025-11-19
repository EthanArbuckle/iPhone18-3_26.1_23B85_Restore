@interface ICNote(Management)
@end

@implementation ICNote(Management)

+ (void)newObjectWithIdentifier:()Management context:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)newObjectWithIdentifier:()Management context:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)deleteEmptyNote:()Management .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)deleteNote:()Management .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)deleteNote:()Management .cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)purgeNote:()Management .cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)refreshAllOfNoteWithIdentifier:()Management context:.cold.2(void *a1)
{
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)refreshAllOfNoteWithIdentifier:()Management context:.cold.3(void *a1)
{
  v1 = [a1 noteData];
  v2 = [v1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)refreshAllOfNoteWithIdentifier:()Management context:.cold.4(void *a1)
{
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)refreshAllOfNoteWithIdentifier:()Management context:.cold.5(void *a1)
{
  v1 = [a1 noteData];
  v2 = [v1 changedValues];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)refreshAllOfNoteWithIdentifier:()Management context:.cold.6(void *a1)
{
  v1 = [a1 noteData];
  v2 = [v1 committedValuesForKeys:0];
  v3 = [v2 allKeys];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

+ (void)refreshAllOfNoteWithIdentifier:()Management context:.cold.7(void *a1)
{
  v1 = [a1 noteData];
  v2 = [v1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)refreshAllOfNoteWithIdentifier:()Management context:.cold.8(void *a1)
{
  [a1 hash];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)noteIdentifiersMatchingPredicate:()Management context:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Error fetching note identifiers for predicate %@: %@");
}

@end