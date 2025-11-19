@interface FCCFitnessPlusPlanState
- (FCCFitnessPlusPlanState)initWithHasWorkoutScheduledToday:(BOOL)a3;
- (FCCFitnessPlusPlanState)initWithTransportData:(id)a3;
- (id)transportData;
@end

@implementation FCCFitnessPlusPlanState

- (FCCFitnessPlusPlanState)initWithHasWorkoutScheduledToday:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = FCCFitnessPlusPlanState;
  result = [(FCCFitnessPlusPlanState *)&v5 init];
  if (result)
  {
    result->_hasWorkoutScheduledToday = a3;
  }

  return result;
}

- (FCCFitnessPlusPlanState)initWithTransportData:(id)a3
{
  v4 = a3;
  v5 = [[FCCFitnessPlusPlanStateProtobuf alloc] initWithData:v4];

  v6 = [(FCCFitnessPlusPlanState *)self initWithHasWorkoutScheduledToday:[(FCCFitnessPlusPlanStateProtobuf *)v5 hasWorkoutScheduledToday]];
  return v6;
}

- (id)transportData
{
  v3 = objc_alloc_init(FCCFitnessPlusPlanStateProtobuf);
  [(FCCFitnessPlusPlanStateProtobuf *)v3 setHasWorkoutScheduledToday:self->_hasWorkoutScheduledToday];
  v4 = [(FCCFitnessPlusPlanStateProtobuf *)v3 data];

  return v4;
}

@end