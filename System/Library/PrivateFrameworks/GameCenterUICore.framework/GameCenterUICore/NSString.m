@interface NSString
@end

@implementation NSString

BOOL __82__NSString_GKTextStyle___gkAttributedStringByApplyingStylesForTags_untaggedStyle___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v6 = *(*(*(a1 + 48) + 8) + 24);
  do
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 24);
    if (v8 < 0 || (v9 = *(*(a1 + 56) + 8), v10 = *(v9 + 192), v10 <= v8))
    {
      v12 = 0;
    }

    else
    {
      v11 = *(v9 + 168);
      if (v11)
      {
        v12 = *(v11 + 2 * *(v9 + 184) + 2 * v8);
      }

      else
      {
        v13 = *(v9 + 176);
        if (v13)
        {
          v12 = *(v13 + *(v9 + 184) + v8);
        }

        else
        {
          if (*(v9 + 208) <= v8 || (v14 = *(v9 + 200), v15 = *(v7 + 24), v14 > v8))
          {
            v16 = v8 - 4;
            if (v8 < 4)
            {
              v16 = 0;
            }

            if (v16 + 64 < v10)
            {
              v10 = v16 + 64;
            }

            *(v9 + 200) = v16;
            *(v9 + 208) = v10;
            v18.length = v10 - v16;
            v18.location = *(v9 + 184) + v16;
            CFStringGetCharacters(*(v9 + 160), v18, (v9 + 32));
            v14 = *(v9 + 200);
            v7 = *(*(a1 + 48) + 8);
            v15 = *(v7 + 24);
          }

          v12 = *(v9 + 32 + 2 * (v8 - v14));
          v8 = v15;
        }
      }
    }

    *(v7 + 24) = v8 + 1;
  }

  while (a2 != v12 && !(*(*(a1 + 40) + 16))());
  if (a3)
  {
    *a3 = [*(a1 + 32) substringWithRange:{v6, *(*(*(a1 + 48) + 8) + 24) + ~v6}];
  }

  return a2 == v12;
}

@end