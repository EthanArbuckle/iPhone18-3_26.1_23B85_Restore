@interface NUGroupPattern
- (BOOL)isEqualToGroupPattern:(id)a3;
- (BOOL)isEqualToPattern:(id)a3;
- (BOOL)isFixedOrder;
- (BOOL)match:(id)a3 location:(unint64_t *)a4 count:(unint64_t *)a5;
- (NUGroupPattern)initWithGroup:(id)a3;
- (id)optimizedPattern;
- (id)shortestMatch;
- (id)stringRepresentation;
- (id)tokens;
@end

@implementation NUGroupPattern

- (BOOL)match:(id)a3 location:(unint64_t *)a4 count:(unint64_t *)a5
{
  v11 = a5;
  v7 = a3;
  v8 = [(NSArray *)self->_group mutableCopy];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  while (1)
  {
    v9 = [v8 count];
    if (!v9)
    {
      break;
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__NUGroupPattern_match_location_count___block_invoke;
    v12[3] = &unk_1E8109BE0;
    v13 = v7;
    v14 = &v17;
    v15 = &v21;
    v16 = a4;
    [v8 enumerateObjectsUsingBlock:v12];
    if (v18[3] == 0x7FFFFFFFFFFFFFFFLL)
    {

      _Block_object_dispose(&v17, 8);
      break;
    }

    [v8 removeObjectAtIndex:?];

    _Block_object_dispose(&v17, 8);
  }

  *v11 = v22[3];
  _Block_object_dispose(&v21, 8);

  return v9 == 0;
}

uint64_t __39__NUGroupPattern_match_location_count___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = 0;
  result = [a2 match:a1[4] location:a1[7] count:&v8];
  if (result)
  {
    *(*(a1[5] + 8) + 24) = a3;
    if (v8)
    {
      *(*(a1[6] + 8) + 24) += v8;
      *a4 = 1;
    }
  }

  return result;
}

- (BOOL)isEqualToGroupPattern:(id)a3
{
  v4 = a3;
  v5 = [(NUGroupPattern *)self group];
  v6 = [v4 group];

  LOBYTE(v4) = [v5 isEqualToArray:v6];
  return v4;
}

- (BOOL)isEqualToPattern:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUGroupPattern *)self isEqualToGroupPattern:v4];

  return v5;
}

- (id)stringRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_group, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_group;
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

        v9 = [*(*(&v14 + 1) + 8 * i) stringRepresentation];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = [v10 stringWithFormat:@"(%@)", v11];

  return v12;
}

- (id)optimizedPattern
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_group, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_group;
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

        v9 = [*(*(&v13 + 1) + 8 * i) optimizedPattern];
        if (([v9 isEmpty] & 1) == 0)
        {
          [v3 addObject:v9];
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
      v10 = [[NUGroupPattern alloc] initWithGroup:v3];
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
  if ([(NSArray *)self->_group count])
  {
    if ([(NSArray *)self->_group count]== 1)
    {
      v3 = [(NSArray *)self->_group objectAtIndexedSubscript:0];
      v4 = [v3 shortestMatch];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (BOOL)isFixedOrder
{
  if (![(NSArray *)self->_group count])
  {
    return 1;
  }

  if ([(NSArray *)self->_group count]!= 1)
  {
    return 0;
  }

  v3 = [(NSArray *)self->_group objectAtIndexedSubscript:0];
  v4 = [v3 isFixedOrder];

  return v4;
}

- (id)tokens
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_group;
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

        v9 = [*(*(&v11 + 1) + 8 * i) tokens];
        [v3 unionSet:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NUGroupPattern)initWithGroup:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v10 = NUAssertLogger_5128();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "group != nil"];
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
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGroupPattern initWithGroup:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 445, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "group != nil");
  }

  v5 = v4;
  v26.receiver = self;
  v26.super_class = NUGroupPattern;
  v6 = [(NUGroupPattern *)&v26 init];
  if (v6)
  {
    v7 = [v5 copy];
    group = v6->_group;
    v6->_group = v7;
  }

  return v6;
}

@end