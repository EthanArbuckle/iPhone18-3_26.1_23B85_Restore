@interface NSMutableArray(HFAdditions)
- (uint64_t)hf_insertObject:()HFAdditions intoSortedArrayWithOptions:comparator:;
@end

@implementation NSMutableArray(HFAdditions)

- (uint64_t)hf_insertObject:()HFAdditions intoSortedArrayWithOptions:comparator:
{
  v8 = a3;
  v9 = a5;
  v10 = [self indexOfObject:v8 inSortedRange:0 options:objc_msgSend(self usingComparator:{"count"), a4, v9}];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self insertObject:v8 atIndex:v10];
  }

  return v10;
}

@end