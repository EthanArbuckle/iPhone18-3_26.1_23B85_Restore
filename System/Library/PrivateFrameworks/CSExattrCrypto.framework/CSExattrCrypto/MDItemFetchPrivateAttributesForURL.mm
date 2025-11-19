@interface MDItemFetchPrivateAttributesForURL
@end

@implementation MDItemFetchPrivateAttributesForURL

uint64_t ___MDItemFetchPrivateAttributesForURL_block_invoke(uint64_t a1, uint64_t a2, const __CFArray *ValueAtIndex)
{
  v4 = *(a1 + 32);
  if (ValueAtIndex)
  {
    v5 = ValueAtIndex;
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v5) && CFArrayGetCount(v5))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
    }

    else
    {
      ValueAtIndex = 0;
    }
  }

  v7 = *(v4 + 16);

  return v7(v4, a2, ValueAtIndex);
}

@end