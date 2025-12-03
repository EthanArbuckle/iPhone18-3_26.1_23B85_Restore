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
  selfCopy = self;
  subpredicates = [self subpredicates];
  compoundPredicateType = [selfCopy compoundPredicateType];
  if (compoundPredicateType)
  {
    if (compoundPredicateType == 1)
    {
      LOBYTE(selfCopy) = [subpredicates count] == 0;
    }

    else if (compoundPredicateType == 2)
    {
      LOBYTE(selfCopy) = [subpredicates ef_any:&__block_literal_global_20];
    }
  }

  else if ([subpredicates count] == 1)
  {
    firstObject = [subpredicates firstObject];
    LOBYTE(selfCopy) = [firstObject ef_matchesNothing];
  }

  else
  {
    LOBYTE(selfCopy) = 0;
  }

  return selfCopy & 1;
}

- (uint64_t)ef_matchesNothing
{
  selfCopy = self;
  subpredicates = [self subpredicates];
  compoundPredicateType = [selfCopy compoundPredicateType];
  if (compoundPredicateType)
  {
    if (compoundPredicateType == 1)
    {
      LOBYTE(selfCopy) = [subpredicates ef_any:&__block_literal_global_150];
    }

    else if (compoundPredicateType == 2)
    {
      LOBYTE(selfCopy) = [subpredicates count] == 0;
    }
  }

  else if ([subpredicates count] == 1)
  {
    firstObject = [subpredicates firstObject];
    LOBYTE(selfCopy) = [firstObject ef_matchesEverything];
  }

  else
  {
    LOBYTE(selfCopy) = 0;
  }

  return selfCopy & 1;
}

- (id)ef_simplifiedPredicate
{
  selfCopy = [self compoundPredicateType];
  subpredicates = [self subpredicates];
  v4 = subpredicates;
  if (selfCopy)
  {
    if ([subpredicates count] == 1)
    {
      firstObject = [v4 firstObject];
      ef_simplifiedPredicate = [firstObject ef_simplifiedPredicate];
LABEL_17:
      selfCopy = ef_simplifiedPredicate;
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
    v35 = selfCopy;
    v33 = &v42;
    v8 = v7;
    v32 = v8;
    [v8 enumerateObjectsUsingBlock:v31];
    v9 = v43[5];
    if (v9)
    {
      v10 = v9;
LABEL_9:
      selfCopy = v10;
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
        if (selfCopy == 1)
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
        firstObject2 = [v37[5] firstObject];
        selfCopy = [firstObject2 ef_simplifiedPredicate];

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
    v30 = selfCopy;
    v4 = v13;
    v28 = v4;
    [v4 enumerateObjectsUsingBlock:v27];
    v22 = v37[5];
    if (v22)
    {
      selfCopy = v22;

      v4 = selfCopy;
    }

    v11 = v4 == v8;
    if (v4 != v8)
    {
      v23 = objc_alloc(MEMORY[0x1E696AB28]);
      compoundPredicateType = [self compoundPredicateType];
      selfCopy = [v23 initWithType:compoundPredicateType subpredicates:v37[5]];
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

  if ([subpredicates count] == 1)
  {
    firstObject = [v4 firstObject];
    if ([firstObject ef_matchesEverything])
    {
      ef_simplifiedPredicate = [MEMORY[0x1E696AE18] ef_matchNothingPredicate];
      goto LABEL_17;
    }

    if ([firstObject ef_matchesNothing])
    {
      ef_simplifiedPredicate = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
      goto LABEL_17;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = firstObject;
      if (![v16 compoundPredicateType])
      {
        subpredicates2 = [v16 subpredicates];
        v18 = [subpredicates2 count];

        if (v18 == 1)
        {
          subpredicates3 = [v16 subpredicates];
          firstObject3 = [subpredicates3 firstObject];
          selfCopy = [firstObject3 ef_simplifiedPredicate];

LABEL_40:
          goto LABEL_18;
        }
      }
    }

    ef_simplifiedPredicate2 = [firstObject ef_simplifiedPredicate];
    v16 = ef_simplifiedPredicate2;
    if (firstObject != ef_simplifiedPredicate2)
    {
      selfCopy = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:ef_simplifiedPredicate2];
      goto LABEL_40;
    }
  }

LABEL_33:
  selfCopy = self;
LABEL_34:

  return selfCopy;
}

- (id)ef_publicDescription
{
  compoundPredicateType = [self compoundPredicateType];
  if (compoundPredicateType > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E8249338[compoundPredicateType];
  }

  subpredicates = [self subpredicates];
  v5 = [subpredicates count];
  compoundPredicateType2 = [self compoundPredicateType];
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
      [subpredicates enumerateObjectsUsingBlock:v17];
      v11 = v19;
      v12 = v10;

      goto LABEL_15;
    }

    if (!compoundPredicateType2)
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      firstObject = [subpredicates firstObject];
      _ef_parenthesizedPublicDescription = [firstObject _ef_parenthesizedPublicDescription];
      v12 = [v14 initWithFormat:@"%@ %@", v3, _ef_parenthesizedPublicDescription];

      goto LABEL_14;
    }

    firstObject = [subpredicates firstObject];
    ef_publicDescription = [firstObject ef_publicDescription];
  }

  else if (compoundPredicateType2 == 1)
  {
    firstObject = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
    ef_publicDescription = [firstObject ef_publicDescription];
  }

  else
  {
    if (!compoundPredicateType2)
    {
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't have a NOT predicate with no subpredicate." userInfo:0];
      objc_exception_throw(v16);
    }

    firstObject = [MEMORY[0x1E696AE18] ef_matchNothingPredicate];
    ef_publicDescription = [firstObject ef_publicDescription];
  }

  v12 = ef_publicDescription;
LABEL_14:

LABEL_15:

  return v12;
}

- (uint64_t)ef_containsKeyPath:()EmailFoundationAdditions
{
  v4 = a3;
  subpredicates = [self subpredicates];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__NSCompoundPredicate_EmailFoundationAdditions__ef_containsKeyPath___block_invoke;
  v9[3] = &unk_1E8249318;
  v6 = v4;
  v10 = v6;
  v7 = [subpredicates ef_any:v9];

  return v7;
}

- (uint64_t)ef_containsSubpredicate:()EmailFoundationAdditions
{
  v4 = a3;
  subpredicates = [self subpredicates];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__NSCompoundPredicate_EmailFoundationAdditions__ef_containsSubpredicate___block_invoke;
  v9[3] = &unk_1E8249318;
  v6 = v4;
  v10 = v6;
  v7 = [subpredicates ef_any:v9];

  return v7;
}

@end