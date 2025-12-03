@interface NUChoicePattern
- (BOOL)isEqualToChoicePattern:(id)pattern;
- (BOOL)isEqualToPattern:(id)pattern;
- (BOOL)isFixedOrder;
- (BOOL)match:(id)match location:(unint64_t *)location count:(unint64_t *)count;
- (NUChoicePattern)initWithChoices:(id)choices;
- (id)optimizedPattern;
- (id)shortestMatch;
- (id)stringRepresentation;
- (id)tokens;
@end

@implementation NUChoicePattern

- (BOOL)match:(id)match location:(unint64_t *)location count:(unint64_t *)count
{
  v21 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  if ([(NSArray *)self->_choices count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = self->_choices;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v16 + 1) + 8 * i) match:matchCopy location:location count:{count, v16}])
          {
            v14 = 1;
            goto LABEL_12;
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:
  }

  else
  {
    *count = 0;
    v14 = 1;
  }

  return v14;
}

- (BOOL)isEqualToChoicePattern:(id)pattern
{
  patternCopy = pattern;
  choices = [(NUChoicePattern *)self choices];
  choices2 = [patternCopy choices];

  LOBYTE(patternCopy) = [choices isEqualToArray:choices2];
  return patternCopy;
}

- (BOOL)isEqualToPattern:(id)pattern
{
  patternCopy = pattern;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUChoicePattern *)self isEqualToChoicePattern:patternCopy];

  return v5;
}

- (id)stringRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_choices, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_choices;
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
  v12 = [v10 stringWithFormat:@"{%@}", v11];

  return v12;
}

- (id)optimizedPattern
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_choices, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_choices;
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
      v10 = [[NUChoicePattern alloc] initWithChoices:v3];
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
  if ([(NSArray *)self->_choices count])
  {
    if ([(NSArray *)self->_choices count]== 1)
    {
      v3 = [(NSArray *)self->_choices objectAtIndexedSubscript:0];
      shortestMatch = [v3 shortestMatch];
    }

    else
    {
      shortestMatch = 0;
    }
  }

  else
  {
    shortestMatch = MEMORY[0x1E695E0F0];
  }

  return shortestMatch;
}

- (BOOL)isFixedOrder
{
  if (![(NSArray *)self->_choices count])
  {
    return 1;
  }

  if ([(NSArray *)self->_choices count]!= 1)
  {
    return 0;
  }

  v3 = [(NSArray *)self->_choices objectAtIndexedSubscript:0];
  isFixedOrder = [v3 isFixedOrder];

  return isFixedOrder;
}

- (id)tokens
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_choices;
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

- (NUChoicePattern)initWithChoices:(id)choices
{
  v31 = *MEMORY[0x1E69E9840];
  choicesCopy = choices;
  if (!choicesCopy)
  {
    v10 = NUAssertLogger_5128();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "choices != nil"];
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

    _NUAssertFailHandler("[NUChoicePattern initWithChoices:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 608, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "choices != nil");
  }

  v5 = choicesCopy;
  v26.receiver = self;
  v26.super_class = NUChoicePattern;
  v6 = [(NUChoicePattern *)&v26 init];
  if (v6)
  {
    v7 = [v5 copy];
    choices = v6->_choices;
    v6->_choices = v7;
  }

  return v6;
}

@end