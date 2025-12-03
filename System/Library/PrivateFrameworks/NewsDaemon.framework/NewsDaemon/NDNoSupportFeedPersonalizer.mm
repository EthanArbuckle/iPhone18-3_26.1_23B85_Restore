@interface NDNoSupportFeedPersonalizer
- (id)rankTagIDsDescending:(id)descending;
- (id)sortItems:(id)items options:(int64_t)options configurationSet:(int64_t)set;
@end

@implementation NDNoSupportFeedPersonalizer

- (id)rankTagIDsDescending:(id)descending
{
  v3 = [descending copy];

  return v3;
}

- (id)sortItems:(id)items options:(int64_t)options configurationSet:(int64_t)set
{
  v5 = objc_alloc_init(FCFeedPersonalizedItems);
  [v5 setSortedItems:&__NSArray0__struct];
  v6 = objc_opt_new();
  [v5 setScoreProfiles:v6];

  return v5;
}

@end