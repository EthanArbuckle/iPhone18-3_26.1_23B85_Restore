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
  br_watchedURL = [a3 br_watchedURL];
  br_watchedFileObjectID = [v5 br_watchedFileObjectID];
  v8 = br_watchedFileObjectID;
  if (br_watchedURL && br_watchedFileObjectID)
  {
    v9 = br_watchedURL;
  }

  else
  {
    br_urlWithWatchedChildren = [v5 br_urlWithWatchedChildren];
    v11 = br_urlWithWatchedChildren;
    v9 = 0;
    if (br_watchedURL && br_urlWithWatchedChildren)
    {
      if ([br_watchedURL isEqual:br_urlWithWatchedChildren])
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
  br_urlWithWatchedChildren = [a3 br_urlWithWatchedChildren];
  br_fileObjectIDWithWatchedChildren = [v5 br_fileObjectIDWithWatchedChildren];
  v8 = br_fileObjectIDWithWatchedChildren;
  if (br_urlWithWatchedChildren && br_fileObjectIDWithWatchedChildren)
  {
    v9 = br_urlWithWatchedChildren;
  }

  else
  {
    br_urlWithWatchedChildren2 = [v5 br_urlWithWatchedChildren];
    v11 = br_urlWithWatchedChildren2;
    v9 = 0;
    if (br_urlWithWatchedChildren && br_urlWithWatchedChildren2)
    {
      if ([br_urlWithWatchedChildren isEqual:br_urlWithWatchedChildren2])
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
  if ([self compoundPredicateType] == 1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    subpredicates = [self subpredicates];
    v3 = [subpredicates countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(subpredicates);
          }

          br_watchedURL = [*(*(&v16 + 1) + 8 * i) br_watchedURL];
          if (br_watchedURL)
          {
            v13 = br_watchedURL;
            goto LABEL_19;
          }
        }

        v4 = [subpredicates countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_16;
  }

  if ([self compoundPredicateType] != 2)
  {
LABEL_17:
    v13 = 0;
    goto LABEL_20;
  }

  subpredicates = [self subpredicates];
  if ([subpredicates count] != 2)
  {
    goto LABEL_16;
  }

  v8 = [subpredicates objectAtIndexedSubscript:0];
  v9 = [subpredicates objectAtIndexedSubscript:1];
  v10 = [self _br_watchedURLWithORPredicate1:v8 predicate2:v9];

  if (!v10)
  {
    v11 = [subpredicates objectAtIndexedSubscript:1];
    v12 = [subpredicates objectAtIndexedSubscript:0];
    v10 = [self _br_watchedURLWithORPredicate1:v11 predicate2:v12];

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
  if ([self compoundPredicateType] == 1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    subpredicates = [self subpredicates];
    v3 = [subpredicates countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(subpredicates);
          }

          br_urlWithWatchedChildren = [*(*(&v16 + 1) + 8 * i) br_urlWithWatchedChildren];
          if (br_urlWithWatchedChildren)
          {
            v13 = br_urlWithWatchedChildren;
            goto LABEL_19;
          }
        }

        v4 = [subpredicates countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_16;
  }

  if ([self compoundPredicateType] != 2)
  {
LABEL_17:
    v13 = 0;
    goto LABEL_20;
  }

  subpredicates = [self subpredicates];
  if ([subpredicates count] != 2)
  {
    goto LABEL_16;
  }

  v8 = [subpredicates objectAtIndexedSubscript:0];
  v9 = [subpredicates objectAtIndexedSubscript:1];
  v10 = [self _br_watchedParentURLWithORPredicate1:v8 predicate2:v9];

  if (!v10)
  {
    v11 = [subpredicates objectAtIndexedSubscript:1];
    v12 = [subpredicates objectAtIndexedSubscript:0];
    v10 = [self _br_watchedParentURLWithORPredicate1:v11 predicate2:v12];

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