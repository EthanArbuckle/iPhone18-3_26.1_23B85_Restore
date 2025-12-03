@interface EFMeasuredObject
+ (id)max:(id)max;
+ (id)object:(id)object withMeasure:(double)measure;
+ (id)reverseSortedObjects:(id)objects limit:(unint64_t)limit;
- (EFMeasuredObject)initWithObject:(id)object measure:(double)measure;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation EFMeasuredObject

+ (id)object:(id)object withMeasure:(double)measure
{
  objectCopy = object;
  v6 = [objc_alloc(objc_opt_class()) initWithObject:objectCopy measure:measure];

  return v6;
}

- (EFMeasuredObject)initWithObject:(id)object measure:(double)measure
{
  objectCopy = object;
  v10.receiver = self;
  v10.super_class = EFMeasuredObject;
  v7 = [(EFMeasuredObject *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(EFMeasuredObject *)v7 setMeasure:measure];
    [(EFMeasuredObject *)v8 setObject:objectCopy];
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(EFMeasuredObject *)self measure];
  v6 = v5;
  object = [(EFMeasuredObject *)self object];
  v8 = [v3 stringWithFormat:@"<%@: %lf: %@>", v4, v6, object];

  return v8;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFMeasuredObject.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"[otherObject isKindOfClass:[EFMeasuredObject class]]"}];
  }

  [(EFMeasuredObject *)self measure];
  v7 = v6;
  [compareCopy measure];
  if (v7 >= v8)
  {
    [(EFMeasuredObject *)self measure];
    v11 = v10;
    [compareCopy measure];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

+ (id)max:(id)max
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  maxCopy = max;
  v4 = 0;
  v5 = [maxCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(maxCopy);
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

      v5 = [maxCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)reverseSortedObjects:(id)objects limit:(unint64_t)limit
{
  v5 = [objects sortedArrayUsingComparator:&__block_literal_global_10];
  if ([v5 count] <= limit)
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 subarrayWithRange:{0, limit}];
  }

  v7 = v6;

  return v7;
}

@end