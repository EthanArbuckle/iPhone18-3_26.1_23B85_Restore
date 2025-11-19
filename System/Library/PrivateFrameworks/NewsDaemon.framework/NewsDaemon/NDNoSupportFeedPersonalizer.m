@interface NDNoSupportFeedPersonalizer
- (id)rankTagIDsDescending:(id)a3;
- (id)sortItems:(id)a3 options:(int64_t)a4 configurationSet:(int64_t)a5;
@end

@implementation NDNoSupportFeedPersonalizer

- (id)rankTagIDsDescending:(id)a3
{
  v3 = [a3 copy];

  return v3;
}

- (id)sortItems:(id)a3 options:(int64_t)a4 configurationSet:(int64_t)a5
{
  v5 = objc_alloc_init(FCFeedPersonalizedItems);
  [v5 setSortedItems:&__NSArray0__struct];
  v6 = objc_opt_new();
  [v5 setScoreProfiles:v6];

  return v5;
}

@end