@interface FCCGoalProgressConfiguration
- (FCCGoalProgressConfiguration)initWithMinimumNumberOfActiveDays:(int64_t)days userStartOfDay:(id)day userEndOfDay:(id)ofDay expirationDate:(id)date almostThereConfiguration:(id)configuration atypicalDayConfiguration:(id)dayConfiguration completionOffTrackConfiguration:(id)trackConfiguration;
- (FCCGoalProgressConfiguration)initWithProtobuf:(id)protobuf;
- (FCCGoalProgressConfiguration)initWithTransportData:(id)data;
- (NSString)description;
- (id)protobuf;
- (id)transportData;
@end

@implementation FCCGoalProgressConfiguration

- (FCCGoalProgressConfiguration)initWithMinimumNumberOfActiveDays:(int64_t)days userStartOfDay:(id)day userEndOfDay:(id)ofDay expirationDate:(id)date almostThereConfiguration:(id)configuration atypicalDayConfiguration:(id)dayConfiguration completionOffTrackConfiguration:(id)trackConfiguration
{
  dayCopy = day;
  ofDayCopy = ofDay;
  dateCopy = date;
  configurationCopy = configuration;
  dayConfigurationCopy = dayConfiguration;
  trackConfigurationCopy = trackConfiguration;
  v25.receiver = self;
  v25.super_class = FCCGoalProgressConfiguration;
  v18 = [(FCCGoalProgressConfiguration *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_minimumNumberOfActiveDays = days;
    objc_storeStrong(&v18->_userStartOfDay, day);
    objc_storeStrong(&v19->_userEndOfDay, ofDay);
    objc_storeStrong(&v19->_expirationDate, date);
    objc_storeStrong(&v19->_almostThereConfiguration, configuration);
    objc_storeStrong(&v19->_atypicalDayConfiguration, dayConfiguration);
    objc_storeStrong(&v19->_completionOffTrackConfiguration, trackConfiguration);
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

- (FCCGoalProgressConfiguration)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  minimumNumberOfActiveDays = [protobufCopy minimumNumberOfActiveDays];
  v6 = objc_alloc(MEMORY[0x277CBEAA8]);
  [protobufCopy userStartOfDayDate];
  v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
  [protobufCopy userEndOfDayDate];
  if (v8 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277CBEAA8]);
    [protobufCopy userEndOfDayDate];
    v10 = [v9 initWithTimeIntervalSinceReferenceDate:?];
  }

  v11 = minimumNumberOfActiveDays;
  v12 = objc_alloc(MEMORY[0x277CBEAA8]);
  [protobufCopy expirationDate];
  v13 = [v12 initWithTimeIntervalSinceReferenceDate:?];
  v14 = [FCCAlmostThereConfiguration alloc];
  almostThereConfiguration = [protobufCopy almostThereConfiguration];
  v16 = [(FCCAlmostThereConfiguration *)v14 initWithProtobuf:almostThereConfiguration];

  v17 = [FCCAtypicalDayConfiguration alloc];
  atypicalDayConfiguration = [protobufCopy atypicalDayConfiguration];
  v19 = [(FCCAtypicalDayConfiguration *)v17 initWithProtobuf:atypicalDayConfiguration];

  completionOffTrackConfiguration = [protobufCopy completionOffTrackConfiguration];
  v21 = [[FCCCompletionOffTrackConfiguration alloc] initWithProtobuf:completionOffTrackConfiguration];
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
  protobuf = [(FCCAlmostThereConfiguration *)self->_almostThereConfiguration protobuf];
  [(FCCGoalProgressConfigurationProtobuf *)v3 setAlmostThereConfiguration:protobuf];

  protobuf2 = [(FCCAtypicalDayConfiguration *)self->_atypicalDayConfiguration protobuf];
  [(FCCGoalProgressConfigurationProtobuf *)v3 setAtypicalDayConfiguration:protobuf2];

  protobuf3 = [(FCCCompletionOffTrackConfiguration *)self->_completionOffTrackConfiguration protobuf];
  [(FCCGoalProgressConfigurationProtobuf *)v3 setCompletionOffTrackConfiguration:protobuf3];

  return v3;
}

- (FCCGoalProgressConfiguration)initWithTransportData:(id)data
{
  dataCopy = data;
  v5 = [[FCCGoalProgressConfigurationProtobuf alloc] initWithData:dataCopy];

  v6 = [(FCCGoalProgressConfiguration *)self initWithProtobuf:v5];
  return v6;
}

- (id)transportData
{
  protobuf = [(FCCGoalProgressConfiguration *)self protobuf];
  data = [protobuf data];

  return data;
}

@end