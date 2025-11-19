@interface MOSuggestionAssetWorkoutRoute
- (MOSuggestionAssetWorkoutRoute)initWithCoder:(id)a3;
- (id)init:(id)a3 workout:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOSuggestionAssetWorkoutRoute

- (id)init:(id)a3 workout:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MOSuggestionAssetWorkoutRoute;
  v9 = [(MOSuggestionAssetWorkoutRoute *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_locationReadings, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)a3
{
  locationReadings = self->_locationReadings;
  v5 = a3;
  [v5 encodeObject:locationReadings forKey:@"coderKeyMOSuggestionAssetHKLocationReadings"];
  [v5 encodeObject:self->_workout forKey:@"coderKeyMOSuggestionAssetHKWorkout"];
}

- (MOSuggestionAssetWorkoutRoute)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MOSuggestionAssetWorkoutRoute;
  v5 = [(MOSuggestionAssetWorkoutRoute *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"coderKeyMOSuggestionAssetHKLocationReadings"];
    locationReadings = v5->_locationReadings;
    v5->_locationReadings = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coderKeyMOSuggestionAssetHKWorkout"];
    workout = v5->_workout;
    v5->_workout = v11;
  }

  return v5;
}

@end