@interface NSPointerArray(DOCExtensions)
- (uint64_t)doc_indexOfPointer:()DOCExtensions;
@end

@implementation NSPointerArray(DOCExtensions)

- (uint64_t)doc_indexOfPointer:()DOCExtensions
{
  if (![a1 count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = 0;
  while ([a1 pointerAtIndex:v5] != a3)
  {
    if (++v5 >= [a1 count])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

@end