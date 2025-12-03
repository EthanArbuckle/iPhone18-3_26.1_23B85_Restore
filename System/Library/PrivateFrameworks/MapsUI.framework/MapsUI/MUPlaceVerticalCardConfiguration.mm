@interface MUPlaceVerticalCardConfiguration
+ (id)developerPlaceCardConfiguration;
+ (id)plainConfiguration;
+ (id)separatorConfiguration;
@end

@implementation MUPlaceVerticalCardConfiguration

+ (id)developerPlaceCardConfiguration
{
  plainConfiguration = [self plainConfiguration];
  [plainConfiguration setDeveloperPlaceCard:1];

  return plainConfiguration;
}

+ (id)separatorConfiguration
{
  v2 = objc_alloc_init(MUPlaceVerticalCardConfiguration);
  [(MUPlaceVerticalCardConfiguration *)v2 setShowSeparators:1];

  return v2;
}

+ (id)plainConfiguration
{
  v2 = objc_alloc_init(MUPlaceVerticalCardConfiguration);
  [(MUPlaceVerticalCardConfiguration *)v2 setShowSeparators:0];

  return v2;
}

@end