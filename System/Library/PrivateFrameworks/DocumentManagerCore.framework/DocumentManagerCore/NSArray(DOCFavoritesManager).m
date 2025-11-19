@interface NSArray(DOCFavoritesManager)
- (id)_doc_ranksForInsertingBelowRank:()DOCFavoritesManager spacing:count:;
- (id)doc_computeNewRankForIndex:()DOCFavoritesManager;
- (id)doc_ranksForInsertingBelowRank:()DOCFavoritesManager count:;
- (id)doc_ranksForInsertingBetweenHigherRank:()DOCFavoritesManager lowerRank:count:;
@end

@implementation NSArray(DOCFavoritesManager)

- (id)doc_computeNewRankForIndex:()DOCFavoritesManager
{
  v4 = a3 & ~(a3 >> 63);
  v5 = [a1 count];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 != [a1 count])
    {
      v19 = [a1 objectAtIndex:v6 - 1];
      v8 = [v19 favoriteRank];

      v20 = [a1 objectAtIndex:v6];
      v9 = [v20 favoriteRank];

      v10 = DOCRandomRankBetween([v9 unsignedLongLongValue], objc_msgSend(v8, "unsignedLongLongValue"));
      goto LABEL_14;
    }

    v7 = [a1 lastObject];
    v8 = [v7 favoriteRank];

    if (v8)
    {
      v9 = [a1 doc_ranksForInsertingBelowRank:v8 count:1];
      v10 = [v9 firstObject];
LABEL_14:
      v22 = v10;

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v11 = MEMORY[0x277CCABB0];
  v12 = [MEMORY[0x277CBEAA8] date];
  [v12 timeIntervalSince1970];
  v8 = [v11 numberWithUnsignedLongLong:(v13 * 1000.0)];

  if ([a1 count] >= 2)
  {
    v14 = [a1 objectAtIndex:1];
    v15 = [v14 favoriteRank];
    v16 = [v15 unsignedLongLongValue];

    if ([v8 unsignedLongLongValue] <= v16)
    {
      v17 = DOCRandomRankBetween(0, 0x3E8uLL);
      v18 = [v17 unsignedLongLongValue];

      if (!__CFADD__(v18, v16))
      {
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18 + v16];
LABEL_15:

        v8 = v22;
        goto LABEL_16;
      }

LABEL_12:
      v22 = 0;
      goto LABEL_15;
    }
  }

LABEL_16:

  return v8;
}

- (id)doc_ranksForInsertingBetweenHigherRank:()DOCFavoritesManager lowerRank:count:
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (v8 && v9 && a5)
  {
    v12 = [v8 unsignedLongLongValue];
    v13 = [v10 unsignedLongLongValue];
    v14 = v12 - v13;
    if (v12 > v13 && v14 >= a5)
    {
      v11 = [a1 _doc_ranksForInsertingBelowRank:v8 spacing:v14 / a5 count:a5];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)doc_ranksForInsertingBelowRank:()DOCFavoritesManager count:
{
  v6 = a3;
  v7 = DOCRandomRankBetween(0, 0x3E8uLL);
  v8 = [v7 unsignedLongLongValue];

  v9 = [a1 _doc_ranksForInsertingBelowRank:v6 spacing:v8 count:a4];

  return v9;
}

- (id)_doc_ranksForInsertingBelowRank:()DOCFavoritesManager spacing:count:
{
  v7 = a3;
  v8 = v7;
  if (a5 && a5 * a4 < [v7 unsignedLongLongValue])
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = [v8 unsignedLongLongValue] - a4;
    do
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
      [v9 addObject:v11];

      v10 -= a4;
      --a5;
    }

    while (a5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end