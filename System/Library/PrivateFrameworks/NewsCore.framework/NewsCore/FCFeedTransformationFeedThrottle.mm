@interface FCFeedTransformationFeedThrottle
+ (id)transformationWithDailyLimit:(unint64_t)limit timeInterval:(double)interval condition:(id)condition;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationFeedThrottle

+ (id)transformationWithDailyLimit:(unint64_t)limit timeInterval:(double)interval condition:(id)condition
{
  conditionCopy = condition;
  v8 = objc_opt_new();
  [v8 setLimit:{fmax(ceil(interval / 86400.0 * limit), 1.0)}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__FCFeedTransformationFeedThrottle_transformationWithDailyLimit_timeInterval_condition___block_invoke;
  v11[3] = &unk_1E7C407B8;
  v12 = conditionCopy;
  v9 = conditionCopy;
  [v8 setCondition:v11];

  return v8;
}

- (id)transformFeedItems:(id)items
{
  itemsCopy = items;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__FCFeedTransformationFeedThrottle_transformFeedItems___block_invoke;
  v7[3] = &unk_1E7C43320;
  v7[4] = self;
  v7[5] = v8;
  v5 = [itemsCopy fc_arrayOfObjectsPassingTest:v7];
  _Block_object_dispose(v8, 8);

  return v5;
}

BOOL __55__FCFeedTransformationFeedThrottle_transformFeedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 condition];
  v6 = (v5)[2](v5, v4);

  if (v6)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 24) + 1;
    *(v7 + 24) = v8;
    v9 = v8 <= [*(a1 + 32) limit];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end