@interface NSData(ISMutableStoreIndex_HashTable_Internal)
- (uint64_t)_ISStoreIndex_setNodeRef:()ISMutableStoreIndex_HashTable_Internal forKey:;
@end

@implementation NSData(ISMutableStoreIndex_HashTable_Internal)

- (uint64_t)_ISStoreIndex_setNodeRef:()ISMutableStoreIndex_HashTable_Internal forKey:
{
  v7 = [a1 _ISStoreIndex_hashTable];
  result = [a1 _ISStoreIndex_hashTableHeader];
  if (result)
  {
    v9 = result;
    result = 0;
    if (v7)
    {
      v10 = *(v9 + 12);
      if (v10)
      {
        *(v7 + 8 * (a4 % v10)) = a3;
        return 1;
      }
    }
  }

  return result;
}

@end