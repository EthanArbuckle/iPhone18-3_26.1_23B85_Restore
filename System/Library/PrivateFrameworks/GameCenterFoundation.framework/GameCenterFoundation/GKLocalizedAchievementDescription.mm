@interface GKLocalizedAchievementDescription
- (id)_localizedStringFromKey:(id)key;
- (id)achievedDescription;
- (id)title;
- (id)unachievedDescription;
@end

@implementation GKLocalizedAchievementDescription

- (id)_localizedStringFromKey:(id)key
{
  keyCopy = key;
  game = [(GKLocalizedAchievementDescription *)self game];
  gameDescriptorDictionary = [game gameDescriptorDictionary];
  v7 = [GKContentPropertyList localPropertyListForGameDescriptor:gameDescriptorDictionary];

  v8 = [v7 localizedStringForKey:keyCopy];

  return v8;
}

- (id)title
{
  v6.receiver = self;
  v6.super_class = GKLocalizedAchievementDescription;
  title = [(GKLocalizedAchievementDescription *)&v6 title];
  v4 = [(GKLocalizedAchievementDescription *)self _localizedStringFromKey:title];

  return v4;
}

- (id)achievedDescription
{
  v6.receiver = self;
  v6.super_class = GKLocalizedAchievementDescription;
  achievedDescription = [(GKLocalizedAchievementDescription *)&v6 achievedDescription];
  v4 = [(GKLocalizedAchievementDescription *)self _localizedStringFromKey:achievedDescription];

  return v4;
}

- (id)unachievedDescription
{
  v6.receiver = self;
  v6.super_class = GKLocalizedAchievementDescription;
  unachievedDescription = [(GKLocalizedAchievementDescription *)&v6 unachievedDescription];
  v4 = [(GKLocalizedAchievementDescription *)self _localizedStringFromKey:unachievedDescription];

  return v4;
}

@end