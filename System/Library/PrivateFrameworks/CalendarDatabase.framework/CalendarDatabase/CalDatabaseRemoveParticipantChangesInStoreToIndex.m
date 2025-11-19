@interface CalDatabaseRemoveParticipantChangesInStoreToIndex
@end

@implementation CalDatabaseRemoveParticipantChangesInStoreToIndex

uint64_t ___CalDatabaseRemoveParticipantChangesInStoreToIndex_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 60);
  result = _CalDatabaseRemoveParticipantChangesInStoreToIndexInternal(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end