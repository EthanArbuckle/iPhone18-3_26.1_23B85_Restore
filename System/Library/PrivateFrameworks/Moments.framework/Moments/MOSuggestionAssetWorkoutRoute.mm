@interface MOSuggestionAssetWorkoutRoute
- (MOSuggestionAssetWorkoutRoute)initWithCoder:(id)coder;
- (id)init:(id)init workout:(id)workout;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOSuggestionAssetWorkoutRoute

- (id)init:(id)init workout:(id)workout
{
  initCopy = init;
  workoutCopy = workout;
  v12.receiver = self;
  v12.super_class = MOSuggestionAssetWorkoutRoute;
  v9 = [(MOSuggestionAssetWorkoutRoute *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_locationReadings, init);
    objc_storeStrong(p_isa + 2, workout);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)coder
{
  locationReadings = self->_locationReadings;
  coderCopy = coder;
  [coderCopy encodeObject:locationReadings forKey:@"coderKeyMOSuggestionAssetHKLocationReadings"];
  [coderCopy encodeObject:self->_workout forKey:@"coderKeyMOSuggestionAssetHKWorkout"];
}

- (MOSuggestionAssetWorkoutRoute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MOSuggestionAssetWorkoutRoute;
  v5 = [(MOSuggestionAssetWorkoutRoute *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"coderKeyMOSuggestionAssetHKLocationReadings"];
    locationReadings = v5->_locationReadings;
    v5->_locationReadings = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coderKeyMOSuggestionAssetHKWorkout"];
    workout = v5->_workout;
    v5->_workout = v11;
  }

  return v5;
}

@end