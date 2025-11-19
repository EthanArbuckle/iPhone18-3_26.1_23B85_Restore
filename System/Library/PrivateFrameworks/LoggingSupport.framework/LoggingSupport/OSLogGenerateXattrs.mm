@interface OSLogGenerateXattrs
@end

@implementation OSLogGenerateXattrs

uint64_t ___OSLogGenerateXattrs_block_invoke(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (*a2 == 4096)
  {
    v4 = *(a1 + 32);
    if (*(a2 + 1) <= 0xA7uLL)
    {
      uuid_clear((v4 + 4));
      return 1;
    }

    *(v4 + 4) = *(a2 + 9);
    v3 = *a2;
  }

  if (v3 == 24587 && a2[1] >= 0x11)
  {
    v5 = _catalog_create_with_chunk(a2, 0);
    if (v5)
    {
      v6 = *(v5 + 64);
      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 24);
        v9 = *(v7 + 32);
        do
        {
          if (v8 >= v6[2])
          {
            v8 = v6[2];
          }

          if (v9 <= v6[3])
          {
            v9 = v6[3];
          }

          v6 = *v6;
        }

        while (v6);
        *(v7 + 24) = v8;
        *(v7 + 32) = v9;
      }

      _catalog_destroy(v5);
    }
  }

  return 1;
}

@end