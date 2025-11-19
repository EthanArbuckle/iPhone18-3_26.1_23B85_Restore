@interface GKLocalizedAchievementDescription
- (id)_localizedStringFromKey:(id)a3;
- (id)achievedDescription;
- (id)title;
- (id)unachievedDescription;
@end

@implementation GKLocalizedAchievementDescription

- (id)_localizedStringFromKey:(id)a3
{
  v4 = a3;
  v5 = [(GKLocalizedAchievementDescription *)self game];
  v6 = [v5 gameDescriptorDictionary];
  v7 = [GKContentPropertyList localPropertyListForGameDescriptor:v6];

  v8 = [v7 localizedStringForKey:v4];

  return v8;
}

- (id)title
{
  v6.receiver = self;
  v6.super_class = GKLocalizedAchievementDescription;
  v3 = [(GKLocalizedAchievementDescription *)&v6 title];
  v4 = [(GKLocalizedAchievementDescription *)self _localizedStringFromKey:v3];

  return v4;
}

- (id)achievedDescription
{
  v6.receiver = self;
  v6.super_class = GKLocalizedAchievementDescription;
  v3 = [(GKLocalizedAchievementDescription *)&v6 achievedDescription];
  v4 = [(GKLocalizedAchievementDescription *)self _localizedStringFromKey:v3];

  return v4;
}

- (id)unachievedDescription
{
  v6.receiver = self;
  v6.super_class = GKLocalizedAchievementDescription;
  v3 = [(GKLocalizedAchievementDescription *)&v6 unachievedDescription];
  v4 = [(GKLocalizedAchievementDescription *)self _localizedStringFromKey:v3];

  return v4;
}

@end