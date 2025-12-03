@interface NUListPattern
- (BOOL)isEqualToListPattern:(id)pattern;
- (BOOL)isEqualToPattern:(id)pattern;
- (BOOL)isFixedOrder;
- (BOOL)match:(id)match location:(unint64_t *)location count:(unint64_t *)count;
- (NUListPattern)initWithList:(id)list;
- (id)optimizedPattern;
- (id)shortestMatch;
- (id)stringRepresentation;
- (id)tokens;
@end

@implementation NUListPattern

- (BOOL)match:(id)match location:(unint64_t *)location count:(unint64_t *)count
{
  v24 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_list;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v18 = 0;
        if (![v15 match:matchCopy location:location count:&v18])
        {
          v16 = 0;
          goto LABEL_13;
        }

        v12 += v18;
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = 1;
LABEL_13:

  *count = v12;
  return v16;
}

- (BOOL)isEqualToListPattern:(id)pattern
{
  patternCopy = pattern;
  list = [(NUListPattern *)self list];
  list2 = [patternCopy list];

  LOBYTE(patternCopy) = [list isEqualToArray:list2];
  return patternCopy;
}

- (BOOL)isEqualToPattern:(id)pattern
{
  patternCopy = pattern;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUListPattern *)self isEqualToListPattern:patternCopy];

  return v5;
}

- (id)stringRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_list, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_list;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        stringRepresentation = [*(*(&v14 + 1) + 8 * i) stringRepresentation];
        [v3 addObject:stringRepresentation];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = [v10 stringWithFormat:@"[%@]", v11];

  return v12;
}

- (id)optimizedPattern
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_list, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_list;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        optimizedPattern = [*(*(&v13 + 1) + 8 * i) optimizedPattern];
        if (([optimizedPattern isEmpty] & 1) == 0)
        {
          [v3 addObject:optimizedPattern];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v10 = [v3 objectAtIndexedSubscript:0];
    }

    else
    {
      v10 = [[NUListPattern alloc] initWithList:v3];
    }
  }

  else
  {
    v10 = objc_alloc_init(NUEmptyPattern);
  }

  v11 = v10;

  return v11;
}

- (id)shortestMatch
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_list;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        shortestMatch = [*(*(&v13 + 1) + 8 * i) shortestMatch];
        if (!shortestMatch)
        {

          v11 = 0;
          goto LABEL_11;
        }

        v10 = shortestMatch;
        [v3 addObjectsFromArray:shortestMatch];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = [v3 copy];
LABEL_11:

  return v11;
}

- (BOOL)isFixedOrder
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_list;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) isFixedOrder])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (id)tokens
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_list;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        tokens = [*(*(&v11 + 1) + 8 * i) tokens];
        [v3 unionSet:tokens];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NUListPattern)initWithList:(id)list
{
  v31 = *MEMORY[0x1E69E9840];
  listCopy = list;
  if (!listCopy)
  {
    v10 = NUAssertLogger_5128();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "list != nil"];
      *buf = 138543362;
      v28 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_5128();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUListPattern initWithList:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 302, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "list != nil");
  }

  v5 = listCopy;
  v26.receiver = self;
  v26.super_class = NUListPattern;
  v6 = [(NUListPattern *)&v26 init];
  if (v6)
  {
    v7 = [v5 copy];
    list = v6->_list;
    v6->_list = v7;
  }

  return v6;
}

@end