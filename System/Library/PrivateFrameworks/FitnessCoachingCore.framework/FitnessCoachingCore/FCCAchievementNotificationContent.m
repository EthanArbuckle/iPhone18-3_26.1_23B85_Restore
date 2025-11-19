@interface FCCAchievementNotificationContent
- (FCCAchievementNotificationContent)initWithAchievement:(id)a3;
- (FCCAchievementNotificationContent)initWithTransportData:(id)a3;
- (id)transportData;
@end

@implementation FCCAchievementNotificationContent

- (FCCAchievementNotificationContent)initWithAchievement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCCAchievementNotificationContent;
  v6 = [(FCCAchievementNotificationContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_achievement, a3);
  }

  return v7;
}

- (FCCAchievementNotificationContent)initWithTransportData:(id)a3
{
  v4 = a3;
  v5 = [[FCCAchievementNotificationContentProtobuf alloc] initWithData:v4];

  v6 = objc_alloc(MEMORY[0x277CE8CE0]);
  v7 = [(FCCAchievementNotificationContentProtobuf *)v5 achievementData];
  v8 = [v6 initWithData:v7];

  v9 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithCodable:v8];
  v10 = [(FCCAchievementNotificationContent *)self initWithAchievement:v9];

  return v10;
}

- (id)transportData
{
  v3 = objc_alloc_init(FCCAchievementNotificationContentProtobuf);
  achievement = self->_achievement;
  v5 = ACHCodableFromAchievement();
  v6 = [v5 data];
  [(FCCAchievementNotificationContentProtobuf *)v3 setAchievementData:v6];

  v7 = [(FCCAchievementNotificationContentProtobuf *)v3 data];

  return v7;
}

@end