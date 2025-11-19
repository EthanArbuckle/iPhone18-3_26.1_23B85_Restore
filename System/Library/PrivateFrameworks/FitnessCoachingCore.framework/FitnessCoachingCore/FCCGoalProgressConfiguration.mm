@interface FCCGoalProgressConfiguration
- (FCCGoalProgressConfiguration)initWithMinimumNumberOfActiveDays:(int64_t)a3 userStartOfDay:(id)a4 userEndOfDay:(id)a5 expirationDate:(id)a6 almostThereConfiguration:(id)a7 atypicalDayConfiguration:(id)a8 completionOffTrackConfiguration:(id)a9;
- (FCCGoalProgressConfiguration)initWithProtobuf:(id)a3;
- (FCCGoalProgressConfiguration)initWithTransportData:(id)a3;
- (NSString)description;
- (id)protobuf;
- (id)transportData;
@end

@implementation FCCGoalProgressConfiguration

- (FCCGoalProgressConfiguration)initWithMinimumNumberOfActiveDays:(int64_t)a3 userStartOfDay:(id)a4 userEndOfDay:(id)a5 expirationDate:(id)a6 almostThereConfiguration:(id)a7 atypicalDayConfiguration:(id)a8 completionOffTrackConfiguration:(id)a9
{
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = FCCGoalProgressConfiguration;
  v18 = [(FCCGoalProgressConfiguration *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_minimumNumberOfActiveDays = a3;
    objc_storeStrong(&v18->_userStartOfDay, a4);
    objc_storeStrong(&v19->_userEndOfDay, a5);
    objc_storeStrong(&v19->_expirationDate, a6);
    objc_storeStrong(&v19->_almostThereConfiguration, a7);
    objc_storeStrong(&v19->_atypicalDayConfiguration, a8);
    objc_storeStrong(&v19->_completionOffTrackConfiguration, a9);
  }

  return v19;
}

- (NSString)description
{
  v2 = @"YES";
  if (self->_almostThereConfiguration)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_atypicalDayConfiguration)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (!self->_completionOffTrackConfiguration)
  {
    v2 = @"NO";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"FCCGoalProgressConfiguration: { \n    minimumNumberOfActiveDays: %ld, \n    userStartOfDay: %@, \n    userEndOfDay: %@, \n    expirationDate: %@ \n    almostThereConfiguration: %@ \n    atypicalDayConfiguration: %@ \n    completionOffTrackConfiguration %@ \n}", *&self->_minimumNumberOfActiveDays, self->_userEndOfDay, self->_expirationDate, v3, v4, v2];
}

- (FCCGoalProgressConfiguration)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [v4 minimumNumberOfActiveDays];
  v6 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v4 userStartOfDayDate];
  v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
  [v4 userEndOfDayDate];
  if (v8 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v4 userEndOfDayDate];
    v10 = [v9 initWithTimeIntervalSinceReferenceDate:?];
  }

  v11 = v5;
  v12 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v4 expirationDate];
  v13 = [v12 initWithTimeIntervalSinceReferenceDate:?];
  v14 = [FCCAlmostThereConfiguration alloc];
  v15 = [v4 almostThereConfiguration];
  v16 = [(FCCAlmostThereConfiguration *)v14 initWithProtobuf:v15];

  v17 = [FCCAtypicalDayConfiguration alloc];
  v18 = [v4 atypicalDayConfiguration];
  v19 = [(FCCAtypicalDayConfiguration *)v17 initWithProtobuf:v18];

  v20 = [v4 completionOffTrackConfiguration];
  v21 = [[FCCCompletionOffTrackConfiguration alloc] initWithProtobuf:v20];
  v22 = [(FCCGoalProgressConfiguration *)self initWithMinimumNumberOfActiveDays:v11 userStartOfDay:v7 userEndOfDay:v10 expirationDate:v13 almostThereConfiguration:v16 atypicalDayConfiguration:v19 completionOffTrackConfiguration:v21];

  return v22;
}

- (id)protobuf
{
  v3 = objc_alloc_init(FCCGoalProgressConfigurationProtobuf);
  [(FCCGoalProgressConfigurationProtobuf *)v3 setMinimumNumberOfActiveDays:LODWORD(self->_minimumNumberOfActiveDays)];
  [(NSDate *)self->_userStartOfDay timeIntervalSinceReferenceDate];
  [(FCCGoalProgressConfigurationProtobuf *)v3 setUserStartOfDayDate:?];
  userEndOfDay = self->_userEndOfDay;
  if (userEndOfDay)
  {
    [(NSDate *)userEndOfDay timeIntervalSinceReferenceDate];
  }

  else
  {
    v5 = 0.0;
  }

  [(FCCGoalProgressConfigurationProtobuf *)v3 setUserEndOfDayDate:v5];
  [(NSDate *)self->_expirationDate timeIntervalSinceReferenceDate];
  [(FCCGoalProgressConfigurationProtobuf *)v3 setExpirationDate:?];
  v6 = [(FCCAlmostThereConfiguration *)self->_almostThereConfiguration protobuf];
  [(FCCGoalProgressConfigurationProtobuf *)v3 setAlmostThereConfiguration:v6];

  v7 = [(FCCAtypicalDayConfiguration *)self->_atypicalDayConfiguration protobuf];
  [(FCCGoalProgressConfigurationProtobuf *)v3 setAtypicalDayConfiguration:v7];

  v8 = [(FCCCompletionOffTrackConfiguration *)self->_completionOffTrackConfiguration protobuf];
  [(FCCGoalProgressConfigurationProtobuf *)v3 setCompletionOffTrackConfiguration:v8];

  return v3;
}

- (FCCGoalProgressConfiguration)initWithTransportData:(id)a3
{
  v4 = a3;
  v5 = [[FCCGoalProgressConfigurationProtobuf alloc] initWithData:v4];

  v6 = [(FCCGoalProgressConfiguration *)self initWithProtobuf:v5];
  return v6;
}

- (id)transportData
{
  v2 = [(FCCGoalProgressConfiguration *)self protobuf];
  v3 = [v2 data];

  return v3;
}

@end