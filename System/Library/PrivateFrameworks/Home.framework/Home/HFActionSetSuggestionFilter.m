@interface HFActionSetSuggestionFilter
+ (HFActionSetSuggestionFilter)filterWithServices:(id)a3;
@end

@implementation HFActionSetSuggestionFilter

+ (HFActionSetSuggestionFilter)filterWithServices:(id)a3
{
  v3 = a3;
  v4 = [[HFActionSetSuggestionFilter alloc] init];
  [(HFActionSetSuggestionFilter *)v4 setServices:v3];

  return v4;
}

@end