@interface HFActionSetSuggestionFilter
+ (HFActionSetSuggestionFilter)filterWithServices:(id)services;
@end

@implementation HFActionSetSuggestionFilter

+ (HFActionSetSuggestionFilter)filterWithServices:(id)services
{
  servicesCopy = services;
  v4 = [[HFActionSetSuggestionFilter alloc] init];
  [(HFActionSetSuggestionFilter *)v4 setServices:servicesCopy];

  return v4;
}

@end