@interface FCCFitnessPlusPlanState
- (FCCFitnessPlusPlanState)initWithHasWorkoutScheduledToday:(BOOL)today;
- (FCCFitnessPlusPlanState)initWithTransportData:(id)data;
- (id)transportData;
@end

@implementation FCCFitnessPlusPlanState

- (FCCFitnessPlusPlanState)initWithHasWorkoutScheduledToday:(BOOL)today
{
  v5.receiver = self;
  v5.super_class = FCCFitnessPlusPlanState;
  result = [(FCCFitnessPlusPlanState *)&v5 init];
  if (result)
  {
    result->_hasWorkoutScheduledToday = today;
  }

  return result;
}

- (FCCFitnessPlusPlanState)initWithTransportData:(id)data
{
  dataCopy = data;
  v5 = [[FCCFitnessPlusPlanStateProtobuf alloc] initWithData:dataCopy];

  v6 = [(FCCFitnessPlusPlanState *)self initWithHasWorkoutScheduledToday:[(FCCFitnessPlusPlanStateProtobuf *)v5 hasWorkoutScheduledToday]];
  return v6;
}

- (id)transportData
{
  v3 = objc_alloc_init(FCCFitnessPlusPlanStateProtobuf);
  [(FCCFitnessPlusPlanStateProtobuf *)v3 setHasWorkoutScheduledToday:self->_hasWorkoutScheduledToday];
  data = [(FCCFitnessPlusPlanStateProtobuf *)v3 data];

  return data;
}

@end