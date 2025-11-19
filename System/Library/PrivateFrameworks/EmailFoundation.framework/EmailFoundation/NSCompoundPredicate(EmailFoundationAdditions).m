@interface NSCompoundPredicate(EmailFoundationAdditions)
- (id)ef_publicDescription;
- (id)ef_simplifiedPredicate;
- (uint64_t)ef_containsKeyPath:()EmailFoundationAdditions;
- (uint64_t)ef_containsSubpredicate:()EmailFoundationAdditions;
- (uint64_t)ef_matchesEverything;
- (uint64_t)ef_matchesNothing;
@end

@implementation NSCompoundPredicate(EmailFoundationAdditions)

- (uint64_t)ef_matchesEverything
{
  v1 = a1;
  v2 = [a1 subpredicates];
  v3 = [v1 compoundPredicateType];
  if (v3)
  {
    if (v3 == 1)
    {
      LOBYTE(v1) = [v2 count] == 0;
    }

    else if (v3 == 2)
    {
      LOBYTE(v1) = [v2 ef_any:&__block_literal_global_20];
    }
  }

  else if ([v2 count] == 1)
  {
    v4 = [v2 firstObject];
    LOBYTE(v1) = [v4 ef_matchesNothing];
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

- (uint64_t)ef_matchesNothing
{
  v1 = a1;
  v2 = [a1 subpredicates];
  v3 = [v1 compoundPredicateType];
  if (v3)
  {
    if (v3 == 1)
    {
      LOBYTE(v1) = [v2 ef_any:&__block_literal_global_150];
    }

    else if (v3 == 2)
    {
      LOBYTE(v1) = [v2 count] == 0;
    }
  }

  else if ([v2 count] == 1)
  {
    v4 = [v2 firstObject];
    LOBYTE(v1) = [v4 ef_matchesEverything];
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

- (id)ef_simplifiedPredicate
{
  v2 = [a1 compoundPredicateType];
  v3 = [a1 subpredicates];
  v4 = v3;
  if (v2)
  {
    if ([v3 count] == 1)
    {
      v5 = [v4 firstObject];
      v6 = [v5 ef_simplifiedPredicate];
LABEL_17:
      v2 = v6;
LABEL_18:

      goto LABEL_34;
    }

    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__3;
    v46 = __Block_byref_object_dispose__3;
    v47 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__3;
    v40 = __Block_byref_object_dispose__3;
    v41 = 0;
    v7 = v4;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __71__NSCompoundPredicate_EmailFoundationAdditions__ef_simplifiedPredicate__block_invoke;
    v31[3] = &unk_1E82492C8;
    v34 = &v36;
    v35 = v2;
    v33 = &v42;
    v8 = v7;
    v32 = v8;
    [v8 enumerateObjectsUsingBlock:v31];
    v9 = v43[5];
    if (v9)
    {
      v10 = v9;
LABEL_9:
      v2 = v10;
LABEL_10:
      v11 = 0;
      v4 = v8;
      goto LABEL_32;
    }

    v12 = v37[5];
    v13 = v8;
    if (v12)
    {
      v14 = [v12 count];
      if (!v14)
      {
        if (v2 == 1)
        {
          [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
        }

        else
        {
          [MEMORY[0x1E696AE18] ef_matchNothingPredicate];
        }
        v10 = ;
        goto LABEL_9;
      }

      if (v14 == 1)
      {
        v15 = [v37[5] firstObject];
        v2 = [v15 ef_simplifiedPredicate];

        goto LABEL_10;
      }

      v13 = v37[5];

      v21 = v37[5];
      v37[5] = 0;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __71__NSCompoundPredicate_EmailFoundationAdditions__ef_simplifiedPredicate__block_invoke_2;
    v27[3] = &unk_1E82492F0;
    v29 = &v36;
    v30 = v2;
    v4 = v13;
    v28 = v4;
    [v4 enumerateObjectsUsingBlock:v27];
    v22 = v37[5];
    if (v22)
    {
      v2 = v22;

      v4 = v2;
    }

    v11 = v4 == v8;
    if (v4 != v8)
    {
      v23 = objc_alloc(MEMORY[0x1E696AB28]);
      v24 = [a1 compoundPredicateType];
      v2 = [v23 initWithType:v24 subpredicates:v37[5]];
    }

LABEL_32:
    _Block_object_dispose(&v36, 8);

    _Block_object_dispose(&v42, 8);
    if (!v11)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if ([v3 count] == 1)
  {
    v5 = [v4 firstObject];
    if ([v5 ef_matchesEverything])
    {
      v6 = [MEMORY[0x1E696AE18] ef_matchNothingPredicate];
      goto LABEL_17;
    }

    if ([v5 ef_matchesNothing])
    {
      v6 = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
      goto LABEL_17;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v5;
      if (![v16 compoundPredicateType])
      {
        v17 = [v16 subpredicates];
        v18 = [v17 count];

        if (v18 == 1)
        {
          v19 = [v16 subpredicates];
          v20 = [v19 firstObject];
          v2 = [v20 ef_simplifiedPredicate];

LABEL_40:
          goto LABEL_18;
        }
      }
    }

    v26 = [v5 ef_simplifiedPredicate];
    v16 = v26;
    if (v5 != v26)
    {
      v2 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v26];
      goto LABEL_40;
    }
  }

LABEL_33:
  v2 = a1;
LABEL_34:

  return v2;
}

- (id)ef_publicDescription
{
  v2 = [a1 compoundPredicateType];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E8249338[v2];
  }

  v4 = [a1 subpredicates];
  v5 = [v4 count];
  v6 = [a1 compoundPredicateType];
  if (v5)
  {
    if (v5 != 1)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __69__NSCompoundPredicate_EmailFoundationAdditions__ef_publicDescription__block_invoke;
      v17[3] = &unk_1E8249280;
      v10 = v9;
      v19 = v3;
      v20 = v5;
      v18 = v10;
      [v4 enumerateObjectsUsingBlock:v17];
      v11 = v19;
      v12 = v10;

      goto LABEL_15;
    }

    if (!v6)
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      v7 = [v4 firstObject];
      v15 = [v7 _ef_parenthesizedPublicDescription];
      v12 = [v14 initWithFormat:@"%@ %@", v3, v15];

      goto LABEL_14;
    }

    v7 = [v4 firstObject];
    v8 = [v7 ef_publicDescription];
  }

  else if (v6 == 1)
  {
    v7 = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
    v8 = [v7 ef_publicDescription];
  }

  else
  {
    if (!v6)
    {
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't have a NOT predicate with no subpredicate." userInfo:0];
      objc_exception_throw(v16);
    }

    v7 = [MEMORY[0x1E696AE18] ef_matchNothingPredicate];
    v8 = [v7 ef_publicDescription];
  }

  v12 = v8;
LABEL_14:

LABEL_15:

  return v12;
}

- (uint64_t)ef_containsKeyPath:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [a1 subpredicates];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__NSCompoundPredicate_EmailFoundationAdditions__ef_containsKeyPath___block_invoke;
  v9[3] = &unk_1E8249318;
  v6 = v4;
  v10 = v6;
  v7 = [v5 ef_any:v9];

  return v7;
}

- (uint64_t)ef_containsSubpredicate:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [a1 subpredicates];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__NSCompoundPredicate_EmailFoundationAdditions__ef_containsSubpredicate___block_invoke;
  v9[3] = &unk_1E8249318;
  v6 = v4;
  v10 = v6;
  v7 = [v5 ef_any:v9];

  return v7;
}

@end