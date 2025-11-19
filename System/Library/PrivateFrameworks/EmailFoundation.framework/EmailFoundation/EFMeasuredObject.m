@interface EFMeasuredObject
+ (id)max:(id)a3;
+ (id)object:(id)a3 withMeasure:(double)a4;
+ (id)reverseSortedObjects:(id)a3 limit:(unint64_t)a4;
- (EFMeasuredObject)initWithObject:(id)a3 measure:(double)a4;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation EFMeasuredObject

+ (id)object:(id)a3 withMeasure:(double)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithObject:v5 measure:a4];

  return v6;
}

- (EFMeasuredObject)initWithObject:(id)a3 measure:(double)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = EFMeasuredObject;
  v7 = [(EFMeasuredObject *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(EFMeasuredObject *)v7 setMeasure:a4];
    [(EFMeasuredObject *)v8 setObject:v6];
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(EFMeasuredObject *)self measure];
  v6 = v5;
  v7 = [(EFMeasuredObject *)self object];
  v8 = [v3 stringWithFormat:@"<%@: %lf: %@>", v4, v6, v7];

  return v8;
}

- (int64_t)compare:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"EFMeasuredObject.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"[otherObject isKindOfClass:[EFMeasuredObject class]]"}];
  }

  [(EFMeasuredObject *)self measure];
  v7 = v6;
  [v5 measure];
  if (v7 >= v8)
  {
    [(EFMeasuredObject *)self measure];
    v11 = v10;
    [v5 measure];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

+ (id)max:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a3;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        [v8 measure];
        v10 = v9;
        [v4 measure];
        if (v10 > v11)
        {
          v12 = v8;

          v4 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)reverseSortedObjects:(id)a3 limit:(unint64_t)a4
{
  v5 = [a3 sortedArrayUsingComparator:&__block_literal_global_10];
  if ([v5 count] <= a4)
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 subarrayWithRange:{0, a4}];
  }

  v7 = v6;

  return v7;
}

@end