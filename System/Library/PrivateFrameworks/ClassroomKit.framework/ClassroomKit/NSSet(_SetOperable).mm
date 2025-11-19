@interface NSSet(_SetOperable)
- (id)setByIntersectingSet:()_SetOperable;
- (id)setBySubtractingSet:()_SetOperable;
@end

@implementation NSSet(_SetOperable)

- (id)setBySubtractingSet:()_SetOperable
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    [v5 minusSet:v6];
  }

  else
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = [v6 allObjects];

    v11 = [v9 setWithArray:v10];
    [v5 minusSet:v11];

    v8 = v10;
  }

  v12 = [v5 copy];

  return v12;
}

- (id)setByIntersectingSet:()_SetOperable
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    [v5 intersectSet:v6];
  }

  else
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = [v6 allObjects];

    v11 = [v9 setWithArray:v10];
    [v5 intersectSet:v11];

    v8 = v10;
  }

  v12 = [v5 copy];

  return v12;
}

@end