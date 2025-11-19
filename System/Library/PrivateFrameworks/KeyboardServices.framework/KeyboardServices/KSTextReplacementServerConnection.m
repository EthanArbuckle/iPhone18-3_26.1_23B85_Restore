@interface KSTextReplacementServerConnection
@end

@implementation KSTextReplacementServerConnection

uint64_t __60___KSTextReplacementServerConnection_textReplacementEntries__block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  result = [*(*(*(a1 + 32) + 8) + 40) addObjectsFromArray:a2];
  *(*(*(a1 + 40) + 8) + 24) = a3 ^ 1;
  return result;
}

@end