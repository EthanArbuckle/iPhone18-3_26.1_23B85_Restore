@interface NSData(ISMutableStoreIndex_HashTable_Internal)
- (uint64_t)_ISStoreIndex_setNodeRef:()ISMutableStoreIndex_HashTable_Internal forKey:;
@end

@implementation NSData(ISMutableStoreIndex_HashTable_Internal)

- (uint64_t)_ISStoreIndex_setNodeRef:()ISMutableStoreIndex_HashTable_Internal forKey:
{
  _ISStoreIndex_hashTable = [self _ISStoreIndex_hashTable];
  result = [self _ISStoreIndex_hashTableHeader];
  if (result)
  {
    v9 = result;
    result = 0;
    if (_ISStoreIndex_hashTable)
    {
      v10 = *(v9 + 12);
      if (v10)
      {
        *(_ISStoreIndex_hashTable + 8 * (a4 % v10)) = a3;
        return 1;
      }
    }
  }

  return result;
}

@end