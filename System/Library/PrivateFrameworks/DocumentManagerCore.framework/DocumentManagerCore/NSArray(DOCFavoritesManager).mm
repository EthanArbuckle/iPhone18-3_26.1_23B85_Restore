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
  v5 = [self count];
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
    if (v6 != [self count])
    {
      v19 = [self objectAtIndex:v6 - 1];
      favoriteRank = [v19 favoriteRank];

      v20 = [self objectAtIndex:v6];
      favoriteRank2 = [v20 favoriteRank];

      firstObject = DOCRandomRankBetween([favoriteRank2 unsignedLongLongValue], objc_msgSend(favoriteRank, "unsignedLongLongValue"));
      goto LABEL_14;
    }

    lastObject = [self lastObject];
    favoriteRank = [lastObject favoriteRank];

    if (favoriteRank)
    {
      favoriteRank2 = [self doc_ranksForInsertingBelowRank:favoriteRank count:1];
      firstObject = [favoriteRank2 firstObject];
LABEL_14:
      v22 = firstObject;

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v11 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  favoriteRank = [v11 numberWithUnsignedLongLong:(v13 * 1000.0)];

  if ([self count] >= 2)
  {
    v14 = [self objectAtIndex:1];
    favoriteRank3 = [v14 favoriteRank];
    unsignedLongLongValue = [favoriteRank3 unsignedLongLongValue];

    if ([favoriteRank unsignedLongLongValue] <= unsignedLongLongValue)
    {
      v17 = DOCRandomRankBetween(0, 0x3E8uLL);
      unsignedLongLongValue2 = [v17 unsignedLongLongValue];

      if (!__CFADD__(unsignedLongLongValue2, unsignedLongLongValue))
      {
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue2 + unsignedLongLongValue];
LABEL_15:

        favoriteRank = v22;
        goto LABEL_16;
      }

LABEL_12:
      v22 = 0;
      goto LABEL_15;
    }
  }

LABEL_16:

  return favoriteRank;
}

- (id)doc_ranksForInsertingBetweenHigherRank:()DOCFavoritesManager lowerRank:count:
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (v8 && v9 && a5)
  {
    unsignedLongLongValue = [v8 unsignedLongLongValue];
    unsignedLongLongValue2 = [v10 unsignedLongLongValue];
    v14 = unsignedLongLongValue - unsignedLongLongValue2;
    if (unsignedLongLongValue > unsignedLongLongValue2 && v14 >= a5)
    {
      v11 = [self _doc_ranksForInsertingBelowRank:v8 spacing:v14 / a5 count:a5];
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
  unsignedLongLongValue = [v7 unsignedLongLongValue];

  v9 = [self _doc_ranksForInsertingBelowRank:v6 spacing:unsignedLongLongValue count:a4];

  return v9;
}

- (id)_doc_ranksForInsertingBelowRank:()DOCFavoritesManager spacing:count:
{
  v7 = a3;
  v8 = v7;
  if (a5 && a5 * a4 < [v7 unsignedLongLongValue])
  {
    array = [MEMORY[0x277CBEB18] array];
    v10 = [v8 unsignedLongLongValue] - a4;
    do
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
      [array addObject:v11];

      v10 -= a4;
      --a5;
    }

    while (a5);
  }

  else
  {
    array = 0;
  }

  return array;
}

@end