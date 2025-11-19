@interface CalDisjointDateRange
+ (id)disjointRangeWithDistinctRanges:(id)a3;
+ (id)disjointRangeWithSingleRange:(id)a3;
- (BOOL)containsDate:(id)a3;
- (BOOL)containsRange:(id)a3;
- (BOOL)intersectsRange:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CalDisjointDateRange)initWithCoder:(id)a3;
- (CalDisjointDateRange)initWithDistinctRanges:(id)a3;
- (double)totalDuration;
- (id)addDisjointRange:(id)a3;
- (id)addRange:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)intersectionWithDisjointRange:(id)a3;
- (id)intersectionWithRange:(id)a3;
- (id)sortedDistinctRanges;
- (id)subtractDisjointRange:(id)a3;
- (id)subtractRange:(id)a3;
@end

@implementation CalDisjointDateRange

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CalDisjointDateRange *)self sortedDistinctRanges];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", *(*(&v13 + 1) + 8 * i)];
        [v3 appendString:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)sortedDistinctRanges
{
  v2 = [(CalDisjointDateRange *)self distinctRanges];
  v3 = [v2 allObjects];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_164];

  return v4;
}

uint64_t __44__CalDisjointDateRange_sortedDistinctRanges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)disjointRangeWithDistinctRanges:(id)a3
{
  v3 = a3;
  v4 = [[CalDisjointDateRange alloc] initWithDistinctRanges:v3];

  return v4;
}

+ (id)disjointRangeWithSingleRange:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E695DFD8] setWithObject:v3];

  v6 = [v4 disjointRangeWithDistinctRanges:v5];

  return v6;
}

- (CalDisjointDateRange)initWithDistinctRanges:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CalDisjointDateRange;
  v5 = [(CalDisjointDateRange *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = objc_opt_new();
    }

    distinctRanges = v5->_distinctRanges;
    v5->_distinctRanges = v6;
  }

  return v5;
}

- (double)totalDuration
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CalDisjointDateRange *)self distinctRanges];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * i) duration];
        v6 = v6 + v8;
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)containsDate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CalDisjointDateRange *)self distinctRanges];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) containsDate:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)containsRange:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CalDisjointDateRange *)self distinctRanges];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) containsRange:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)intersectsRange:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CalDisjointDateRange *)self distinctRanges];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) intersectsRange:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)addRange:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFA8];
  v6 = [(CalDisjointDateRange *)self distinctRanges];
  v7 = [v5 setWithSet:v6];

  v8 = [MEMORY[0x1E695DFA8] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = [(CalDisjointDateRange *)self distinctRanges];
  v10 = [v9 copy];

  v11 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        if ([v15 intersectsRange:v4 allowSinglePointIntersection:1])
        {
          [v8 addObject:v15];
          [v7 removeObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
  }

  v16 = [CalDateRange rangeWithRange:v4];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      v21 = 0;
      v22 = v16;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v16 = [v22 unionRange:{*(*(&v28 + 1) + 8 * v21), v28}];

        ++v21;
        v22 = v16;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
  }

  v23 = [MEMORY[0x1E695DFA8] setWithObject:v16];
  if ([v7 count])
  {
    v24 = [v7 allObjects];
    [v23 addObjectsFromArray:v24];
  }

  v25 = [objc_opt_class() disjointRangeWithDistinctRanges:v23];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)addDisjointRange:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = self;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 distinctRanges];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 = [(CalDisjointDateRange *)v10 addRange:*(*(&v13 + 1) + 8 * v9)];

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)subtractRange:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(CalDisjointDateRange *)self distinctRanges];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) subtractRange:v4];
        v12 = [v11 distinctRanges];

        if (v12)
        {
          v13 = [v11 distinctRanges];
          v14 = [v13 allObjects];
          [v5 addObjectsFromArray:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [CalDisjointDateRange disjointRangeWithDistinctRanges:v5];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)subtractDisjointRange:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = self;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 distinctRanges];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 = [(CalDisjointDateRange *)v10 subtractRange:*(*(&v13 + 1) + 8 * v9)];

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)intersectionWithRange:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(CalDisjointDateRange *)self distinctRanges];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) intersectionWithRange:v4];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [CalDisjointDateRange disjointRangeWithDistinctRanges:v5];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)intersectionWithDisjointRange:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v4 distinctRanges];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CalDisjointDateRange *)self intersectionWithRange:*(*(&v18 + 1) + 8 * i)];
        v12 = [v11 distinctRanges];

        if (v12)
        {
          v13 = [v11 distinctRanges];
          v14 = [v13 allObjects];
          [v5 addObjectsFromArray:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [CalDisjointDateRange disjointRangeWithDistinctRanges:v5];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CalDisjointDateRange *)self distinctRanges];
  v6 = [v4 initWithDistinctRanges:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      v5 = [(CalDisjointDateRange *)self distinctRanges];
      v6 = [(CalDisjointDateRange *)v4 distinctRanges];
      v7 = [v5 isEqualToSet:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CalDisjointDateRange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_distinctRanges"];

  v6 = [v5 copy];
  distinctRanges = self->_distinctRanges;
  self->_distinctRanges = v6;

  return self;
}

@end