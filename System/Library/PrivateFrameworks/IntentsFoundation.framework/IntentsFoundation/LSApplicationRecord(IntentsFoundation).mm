@interface LSApplicationRecord(IntentsFoundation)
- (id)if_userActivityTypes;
@end

@implementation LSApplicationRecord(IntentsFoundation)

- (id)if_userActivityTypes
{
  infoDictionary = [self infoDictionary];
  v2 = [infoDictionary objectForKey:@"NSUserActivityTypes" ofClass:objc_opt_class()];
  v3 = [v2 if_objectsPassingTest:&__block_literal_global_125];

  return v3;
}

@end