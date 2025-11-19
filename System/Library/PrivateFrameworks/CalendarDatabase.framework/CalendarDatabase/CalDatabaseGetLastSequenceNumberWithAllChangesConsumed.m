@interface CalDatabaseGetLastSequenceNumberWithAllChangesConsumed
@end

@implementation CalDatabaseGetLastSequenceNumberWithAllChangesConsumed

uint64_t ___CalDatabaseGetLastSequenceNumberWithAllChangesConsumed_block_invoke(uint64_t a1, int a2, int a3, int a4, int a5, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    v9 = result;
    for (i = 0; i != v9; ++i)
    {
      result = CFArrayGetValueAtIndex(theArray, i);
      v11 = *(*(a1 + 32) + 8);
      if (*(v11 + 24) > result)
      {
        *(v11 + 24) = result;
      }
    }
  }

  return result;
}

@end