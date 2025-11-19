@interface OSLogEnumeratorCatalog
@end

@implementation OSLogEnumeratorCatalog

uint64_t __56___OSLogEnumeratorCatalog_enumerateSubchunksUsingBlock___block_invoke(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (!*(*(a1[6] + 8) + 24) || *a2 != 24589)
  {
    return 1;
  }

  if (*(a1[4] + 8))
  {
    v5 = off_2787AD4A8;
  }

  else
  {
    v5 = off_2787AD4A0;
  }

  v6 = [objc_alloc(*v5) initWithCatalog:a1[4] subchunk:*(*(a1[6] + 8) + 24) range:{a3, a4}];
  *(*(a1[6] + 8) + 24) = **(*(a1[6] + 8) + 24);
  v7 = (*(a1[5] + 16))();

  return v7;
}

uint64_t __56___OSLogEnumeratorCatalog_enumerateSubchunksUsingBlock___block_invoke_2(NSRange a1, NSRange a2)
{
  if (*a1.length >> 1 == 12294)
  {
    length = a1.length;
    location = a1.location;
    v4 = *(*(a1.location + 32) + 8);
    a1.location = *(v4 + 32);
    if (a1.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      a1.length = *(v4 + 40);
      a2 = NSUnionRange(a1, a2);
      v4 = *(location[4] + 8);
    }

    *(v4 + 32) = a2;
    enumerateOldChunkTracepointLimits(length, (*(location[5] + 8) + 24), (*(location[6] + 8) + 24));
  }

  return 1;
}

@end