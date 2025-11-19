@interface NSCompoundPredicate(BRQueryItemAdditions_Private)
- (id)_br_watchedParentURLWithORPredicate1:()BRQueryItemAdditions_Private predicate2:;
- (id)_br_watchedURLWithORPredicate1:()BRQueryItemAdditions_Private predicate2:;
- (id)br_urlWithWatchedChildren;
- (id)br_watchedURL;
@end

@implementation NSCompoundPredicate(BRQueryItemAdditions_Private)

- (id)_br_watchedURLWithORPredicate1:()BRQueryItemAdditions_Private predicate2:
{
  v5 = a4;
  v6 = [a3 br_watchedURL];
  v7 = [v5 br_watchedFileObjectID];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = v6;
  }

  else
  {
    v10 = [v5 br_urlWithWatchedChildren];
    v11 = v10;
    v9 = 0;
    if (v6 && v10)
    {
      if ([v6 isEqual:v10])
      {
        v9 = v11;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (id)_br_watchedParentURLWithORPredicate1:()BRQueryItemAdditions_Private predicate2:
{
  v5 = a4;
  v6 = [a3 br_urlWithWatchedChildren];
  v7 = [v5 br_fileObjectIDWithWatchedChildren];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = v6;
  }

  else
  {
    v10 = [v5 br_urlWithWatchedChildren];
    v11 = v10;
    v9 = 0;
    if (v6 && v10)
    {
      if ([v6 isEqual:v10])
      {
        v9 = v11;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (id)br_watchedURL
{
  v21 = *MEMORY[0x1E69E9840];
  if ([a1 compoundPredicateType] == 1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = [a1 subpredicates];
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(*(&v16 + 1) + 8 * i) br_watchedURL];
          if (v7)
          {
            v13 = v7;
            goto LABEL_19;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_16;
  }

  if ([a1 compoundPredicateType] != 2)
  {
LABEL_17:
    v13 = 0;
    goto LABEL_20;
  }

  v2 = [a1 subpredicates];
  if ([v2 count] != 2)
  {
    goto LABEL_16;
  }

  v8 = [v2 objectAtIndexedSubscript:0];
  v9 = [v2 objectAtIndexedSubscript:1];
  v10 = [a1 _br_watchedURLWithORPredicate1:v8 predicate2:v9];

  if (!v10)
  {
    v11 = [v2 objectAtIndexedSubscript:1];
    v12 = [v2 objectAtIndexedSubscript:0];
    v10 = [a1 _br_watchedURLWithORPredicate1:v11 predicate2:v12];

    if (!v10)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  v13 = v10;

LABEL_19:
LABEL_20:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)br_urlWithWatchedChildren
{
  v21 = *MEMORY[0x1E69E9840];
  if ([a1 compoundPredicateType] == 1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = [a1 subpredicates];
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(*(&v16 + 1) + 8 * i) br_urlWithWatchedChildren];
          if (v7)
          {
            v13 = v7;
            goto LABEL_19;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_16;
  }

  if ([a1 compoundPredicateType] != 2)
  {
LABEL_17:
    v13 = 0;
    goto LABEL_20;
  }

  v2 = [a1 subpredicates];
  if ([v2 count] != 2)
  {
    goto LABEL_16;
  }

  v8 = [v2 objectAtIndexedSubscript:0];
  v9 = [v2 objectAtIndexedSubscript:1];
  v10 = [a1 _br_watchedParentURLWithORPredicate1:v8 predicate2:v9];

  if (!v10)
  {
    v11 = [v2 objectAtIndexedSubscript:1];
    v12 = [v2 objectAtIndexedSubscript:0];
    v10 = [a1 _br_watchedParentURLWithORPredicate1:v11 predicate2:v12];

    if (!v10)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  v13 = v10;

LABEL_19:
LABEL_20:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end