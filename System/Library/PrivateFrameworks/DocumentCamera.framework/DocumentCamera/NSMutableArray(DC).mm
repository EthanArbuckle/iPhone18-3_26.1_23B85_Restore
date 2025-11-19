@interface NSMutableArray(DC)
- (void)dc_addNonNilObject:()DC;
- (void)dc_insertNonNilObject:()DC atIndex:;
@end

@implementation NSMutableArray(DC)

- (void)dc_addNonNilObject:()DC
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

- (void)dc_insertNonNilObject:()DC atIndex:
{
  v6 = a3;
  if ((a4 & 0x8000000000000000) != 0)
  {
    v8 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NSMutableArray(DC) dc_insertNonNilObject:a4 atIndex:v8];
    }
  }

  else if ([a1 count] >= a4)
  {
    if (v6)
    {
      [a1 insertObject:v6 atIndex:a4];
    }
  }

  else
  {
    v7 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(NSMutableArray(DC) *)a1 dc_insertNonNilObject:a4 atIndex:v7];
    }
  }
}

- (void)dc_insertNonNilObject:()DC atIndex:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = [a1 count];
  _os_log_error_impl(&dword_249253000, a3, OS_LOG_TYPE_ERROR, "Trying to insert object in mutableArray at index (%ld) greater than count (%ld)", &v4, 0x16u);
}

- (void)dc_insertNonNilObject:()DC atIndex:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_249253000, a2, OS_LOG_TYPE_ERROR, "Trying to insert object in mutableArray at negative index %ld", &v2, 0xCu);
}

@end