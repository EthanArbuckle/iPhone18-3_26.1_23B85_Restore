@interface FCCAchievementNotificationContent
- (FCCAchievementNotificationContent)initWithAchievement:(id)achievement;
- (FCCAchievementNotificationContent)initWithTransportData:(id)data;
- (id)transportData;
@end

@implementation FCCAchievementNotificationContent

- (FCCAchievementNotificationContent)initWithAchievement:(id)achievement
{
  achievementCopy = achievement;
  v9.receiver = self;
  v9.super_class = FCCAchievementNotificationContent;
  v6 = [(FCCAchievementNotificationContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_achievement, achievement);
  }

  return v7;
}

- (FCCAchievementNotificationContent)initWithTransportData:(id)data
{
  dataCopy = data;
  v5 = [[FCCAchievementNotificationContentProtobuf alloc] initWithData:dataCopy];

  v6 = objc_alloc(MEMORY[0x277CE8CE0]);
  achievementData = [(FCCAchievementNotificationContentProtobuf *)v5 achievementData];
  v8 = [v6 initWithData:achievementData];

  v9 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithCodable:v8];
  v10 = [(FCCAchievementNotificationContent *)self initWithAchievement:v9];

  return v10;
}

- (id)transportData
{
  v3 = objc_alloc_init(FCCAchievementNotificationContentProtobuf);
  achievement = self->_achievement;
  v5 = ACHCodableFromAchievement();
  data = [v5 data];
  [(FCCAchievementNotificationContentProtobuf *)v3 setAchievementData:data];

  data2 = [(FCCAchievementNotificationContentProtobuf *)v3 data];

  return data2;
}

@end