@interface CSScenarioRestrictionsAttributesTemplate
- (BOOL)isEqual:(id)equal;
@end

@implementation CSScenarioRestrictionsAttributesTemplate

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    restrictions = [(CSScenarioRestrictionsAttributesTemplate *)self restrictions];
    restrictions2 = [equalCopy restrictions];
    v7 = [restrictions isEqualToArray:restrictions2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end