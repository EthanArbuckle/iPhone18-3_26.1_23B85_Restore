@interface CSScenarioRestrictionsAttributesTemplate
- (BOOL)isEqual:(id)a3;
@end

@implementation CSScenarioRestrictionsAttributesTemplate

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CSScenarioRestrictionsAttributesTemplate *)self restrictions];
    v6 = [v4 restrictions];
    v7 = [v5 isEqualToArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end