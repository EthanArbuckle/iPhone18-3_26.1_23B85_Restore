@interface OSLogChunkStore
@end

@implementation OSLogChunkStore

BOOL __54___OSLogChunkStore_enumerateChunksInRange_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*(*(a1 + 32) + 8) == a2)
  {
    if (v4 != 4096 || *(a2 + 8) <= 0x27uLL)
    {
      return 0;
    }

    goto LABEL_37;
  }

  if (v4 > 24577)
  {
    if (v4 > 24586)
    {
      if (v4 > 24588)
      {
        if (v4 == 24589)
        {
          goto LABEL_37;
        }

        v5 = 24592;
      }

      else
      {
        if (v4 == 24587)
        {
          if ((*(a2 + 4) - 14) <= 3)
          {
            goto LABEL_37;
          }

          return 1;
        }

        v5 = 24588;
      }

      if (v4 != v5 || (*(a2 + 4) - 14) >= 4)
      {
        return 1;
      }

      goto LABEL_37;
    }

    if (v4 == 24578 || v4 == 24579)
    {
LABEL_29:
      if (!*(a2 + 4))
      {
        goto LABEL_37;
      }

      return 1;
    }

    v8 = 24580;
LABEL_28:
    if (v4 != v8)
    {
      return 1;
    }

    goto LABEL_29;
  }

  if (v4 <= 7423)
  {
    if (v4 != 4096 && v4 != 6912 && v4 != 7168)
    {
      return 1;
    }

    goto LABEL_37;
  }

  if (v4 >= 0x2000)
  {
    if (v4 == 0x2000)
    {
      goto LABEL_37;
    }

    v8 = 24577;
    goto LABEL_28;
  }

  if (v4 != 7424 && v4 != 7680)
  {
    return 1;
  }

LABEL_37:
  v9 = objc_autoreleasePoolPush();
  v10 = a2 - *(*(a1 + 32) + 8);
  v11 = *(a2 + 8);
  v12 = (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v9);
  return v12 != 0;
}

@end