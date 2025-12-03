@interface NSPredicate(EmailFoundationAdditions)
+ (id)_ef_compoundPredicateForOptionalPredicate:()EmailFoundationAdditions second:isAnd:;
+ (id)_ef_compoundPredicateWithSubpredicates:()EmailFoundationAdditions isAnd:;
+ (id)_ef_compoundPredicateWithSubpredicatesForSearch:()EmailFoundationAdditions isAnd:;
+ (id)ef_andCompoundPredicateForOptionalPredicate:()EmailFoundationAdditions second:;
+ (id)ef_andCompoundPredicateWithSubpredicates:()EmailFoundationAdditions;
+ (id)ef_andCompoundPredicateWithSubpredicatesForSearchQuery:()EmailFoundationAdditions;
+ (id)ef_orCompoundPredicateForOptionalPredicate:()EmailFoundationAdditions second:;
+ (id)ef_orCompoundPredicateWithSubpredicates:()EmailFoundationAdditions;
@end

@implementation NSPredicate(EmailFoundationAdditions)

+ (id)ef_orCompoundPredicateForOptionalPredicate:()EmailFoundationAdditions second:
{
  v4 = [self _ef_compoundPredicateForOptionalPredicate:a3 second:a4 isAnd:0];

  return v4;
}

+ (id)ef_andCompoundPredicateForOptionalPredicate:()EmailFoundationAdditions second:
{
  v4 = [self _ef_compoundPredicateForOptionalPredicate:a3 second:a4 isAnd:1];

  return v4;
}

+ (id)_ef_compoundPredicateForOptionalPredicate:()EmailFoundationAdditions second:isAnd:
{
  v18[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8)
  {
    v10 = MEMORY[0x1E696AB28];
    if (a5)
    {
      v18[0] = v7;
      v18[1] = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
      v12 = [v10 andPredicateWithSubpredicates:v11];
    }

    else
    {
      v17[0] = v7;
      v17[1] = v8;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      v12 = [v10 orPredicateWithSubpredicates:v14];
    }
  }

  else
  {
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v8;
    }

    v12 = v13;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)ef_orCompoundPredicateWithSubpredicates:()EmailFoundationAdditions
{
  v3 = [self _ef_compoundPredicateWithSubpredicates:a3 isAnd:0];

  return v3;
}

+ (id)ef_andCompoundPredicateWithSubpredicates:()EmailFoundationAdditions
{
  v3 = [self _ef_compoundPredicateWithSubpredicates:a3 isAnd:1];

  return v3;
}

+ (id)ef_andCompoundPredicateWithSubpredicatesForSearchQuery:()EmailFoundationAdditions
{
  v3 = [self _ef_compoundPredicateWithSubpredicatesForSearch:a3 isAnd:1];

  return v3;
}

+ (id)_ef_compoundPredicateWithSubpredicates:()EmailFoundationAdditions isAnd:
{
  v5 = a3;
  if ([v5 count])
  {
    if ([v5 count] == 1)
    {
      firstObject = [v5 firstObject];
    }

    else
    {
      if (a4)
      {
        [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v5];
      }

      else
      {
        [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v5];
      }
      firstObject = ;
    }

    v7 = firstObject;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_ef_compoundPredicateWithSubpredicatesForSearch:()EmailFoundationAdditions isAnd:
{
  v5 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__NSPredicate_EmailFoundationAdditions___ef_compoundPredicateWithSubpredicatesForSearch_isAnd___block_invoke;
  v10[3] = &unk_1E8249230;
  v10[4] = &v11;
  [v5 enumerateObjectsUsingBlock:v10];
  if ([v5 count])
  {
    if ([v5 count] == 1)
    {
      firstObject = [v5 firstObject];
    }

    else
    {
      v8 = v12[5];
      if (a4)
      {
        [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v8];
      }

      else
      {
        [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v8];
      }
      firstObject = ;
    }

    v7 = firstObject;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v7;
}

@end