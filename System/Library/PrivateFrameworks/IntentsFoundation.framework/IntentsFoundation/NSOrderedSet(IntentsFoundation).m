@interface NSOrderedSet(IntentsFoundation)
- (id)if_map:()IntentsFoundation;
- (id)if_orderedSetByAddingObject:()IntentsFoundation;
- (id)if_orderedSetByAddingObjectsFromArray:()IntentsFoundation;
- (id)if_orderedSetByAddingObjectsFromOrderedSet:()IntentsFoundation;
@end

@implementation NSOrderedSet(IntentsFoundation)

- (id)if_map:()IntentsFoundation
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__NSOrderedSet_IntentsFoundation__if_map___block_invoke;
  v8[3] = &unk_2797E9798;
  v9 = v4;
  v5 = v4;
  v6 = _IFOrderedSetTransform(a1, v8);

  return v6;
}

- (id)if_orderedSetByAddingObject:()IntentsFoundation
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 addObject:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)if_orderedSetByAddingObjectsFromArray:()IntentsFoundation
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 addObjectsFromArray:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)if_orderedSetByAddingObjectsFromOrderedSet:()IntentsFoundation
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 unionOrderedSet:v4];

  v6 = [v5 copy];

  return v6;
}

@end