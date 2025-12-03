@interface FCFeedTransformationBlockFilter
+ (id)blockFilterWithPredicate:(id)predicate;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationBlockFilter

+ (id)blockFilterWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = objc_opt_new();
  [v4 setPredicate:predicateCopy];

  return v4;
}

- (id)transformFeedItems:(id)items
{
  v3 = MEMORY[0x1E696AE18];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__FCFeedTransformationBlockFilter_transformFeedItems___block_invoke;
  v8[3] = &unk_1E7C42A58;
  v8[4] = self;
  itemsCopy = items;
  v5 = [v3 predicateWithBlock:v8];
  v6 = [itemsCopy filteredArrayUsingPredicate:v5];

  return v6;
}

uint64_t __54__FCFeedTransformationBlockFilter_transformFeedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 predicate];
  v5 = (v4)[2](v4, v3);

  return v5;
}

@end