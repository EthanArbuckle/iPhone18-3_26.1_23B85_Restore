@interface BCSLocaleHelper
- (id)description;
@end

@implementation BCSLocaleHelper

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  currentLocale = [(BCSLocaleHelper *)self currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v6 = [v3 appendObject:localeIdentifier withName:@"currentLocaleIdentifier"];

  build = [v3 build];

  return build;
}

@end