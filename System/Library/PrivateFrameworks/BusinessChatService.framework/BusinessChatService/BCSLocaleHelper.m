@interface BCSLocaleHelper
- (id)description;
@end

@implementation BCSLocaleHelper

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BCSLocaleHelper *)self currentLocale];
  v5 = [v4 localeIdentifier];
  v6 = [v3 appendObject:v5 withName:@"currentLocaleIdentifier"];

  v7 = [v3 build];

  return v7;
}

@end