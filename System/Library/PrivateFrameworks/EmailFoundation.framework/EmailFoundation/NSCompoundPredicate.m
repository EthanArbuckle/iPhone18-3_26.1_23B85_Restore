@interface NSCompoundPredicate
@end

@implementation NSCompoundPredicate

void __71__NSCompoundPredicate_EmailFoundationAdditions__ef_simplifiedPredicate__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  if ([v15 ef_matchesEverything])
  {
    if (*(a1 + 56) != 1)
    {
      v7 = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
LABEL_7:
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      *a4 = 1;
      goto LABEL_12;
    }

LABEL_8:
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v10 = [*(a1 + 32) ef_prefix:a3];
      v11 = [v10 mutableCopy];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    goto LABEL_12;
  }

  if ([v15 ef_matchesNothing])
  {
    if (*(a1 + 56) == 1)
    {
      v7 = [MEMORY[0x1E696AE18] ef_matchNothingPredicate];
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v14 = *(*(*(a1 + 48) + 8) + 40);
  if (v14)
  {
    [v14 addObject:v15];
  }

LABEL_12:
}

void __71__NSCompoundPredicate_EmailFoundationAdditions__ef_simplifiedPredicate__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 compoundPredicateType] == *(a1 + 48))
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v5 = [*(a1 + 32) ef_prefix:a3];
      v6 = [v5 mutableCopy];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    v9 = [v16 subpredicates];
    v10 = [v9 ef_mapSelector:sel_ef_simplifiedPredicate];

    [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v10];
  }

  else
  {
    v10 = [v16 ef_simplifiedPredicate];
    if (v10 != v16 && !*(*(*(a1 + 40) + 8) + 40))
    {
      v11 = [*(a1 + 32) ef_prefix:a3];
      v12 = [v11 mutableCopy];
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v15 = *(*(*(a1 + 40) + 8) + 40);
    if (v15)
    {
      [v15 addObject:v10];
    }
  }
}

void __69__NSCompoundPredicate_EmailFoundationAdditions__ef_publicDescription__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  v7 = [v5 _ef_parenthesizedPublicDescription];
  [v6 appendString:v7];

  if (*(a1 + 48) - 1 != a3)
  {
    [*(a1 + 32) appendString:@" "];
    [*(a1 + 32) appendString:*(a1 + 40)];
    [*(a1 + 32) appendString:@" "];
  }
}

@end