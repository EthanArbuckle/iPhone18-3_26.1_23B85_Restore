@interface OSLogStreamFilterBytesForPIDAndUIDArray
@end

@implementation OSLogStreamFilterBytesForPIDAndUIDArray

uint64_t ___OSLogStreamFilterBytesForPIDAndUIDArray_block_invoke(uint64_t a1, int a2, xpc_object_t xint)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:xpc_int64_get_value(xint)];
  [v3 addProcessID:v4 flags:0 returningDict:0];

  return 1;
}

uint64_t ___OSLogStreamFilterBytesForPIDAndUIDArray_block_invoke_2(uint64_t a1, int a2, xpc_object_t xint)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:xpc_int64_get_value(xint)];
  [v3 addUserID:v4 flags:0 returningDict:0];

  return 1;
}

@end