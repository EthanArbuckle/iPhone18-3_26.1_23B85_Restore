@interface MOSuggestionAssetWorkout
- (MOSuggestionAssetWorkout)initWithCoder:(id)a3;
- (id)init:(id)a3 route:(id)a4 renderedRouteMap:(id)a5 icon:(id)a6 iconURL:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOSuggestionAssetWorkout

- (id)init:(id)a3 route:(id)a4 renderedRouteMap:(id)a5 icon:(id)a6 iconURL:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = MOSuggestionAssetWorkout;
  v17 = [(MOSuggestionAssetWorkout *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_activityRings, a3);
    objc_storeStrong(p_isa + 5, a4);
    objc_storeStrong(p_isa + 6, a6);
    objc_storeStrong(p_isa + 8, a5);
    objc_storeStrong(p_isa + 7, a7);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)a3
{
  activityRings = self->_activityRings;
  v5 = a3;
  [v5 encodeObject:activityRings forKey:@"coderKeyMOSuggestionAssetWorkoutActivitySummary"];
  [v5 encodeObject:self->_route forKey:@"coderKeyMOSuggestionAssetWorkoutRoute"];
  [v5 encodeObject:self->_icon forKey:@"coderKeyMOSuggestionAssetWorkoutIcon"];
  [v5 encodeObject:self->_iconURL forKey:@"coderKeyMOSuggestionAssetWorkoutIconURL"];
}

- (MOSuggestionAssetWorkout)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MOSuggestionAssetWorkout;
  v5 = [(MOSuggestionAssetWorkout *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coderKeyMOSuggestionAssetWorkoutActivitySummary"];
    activityRings = v5->_activityRings;
    v5->_activityRings = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coderKeyMOSuggestionAssetWorkoutRoute"];
    route = v5->_route;
    v5->_route = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coderKeyMOSuggestionAssetWorkoutIcon"];
    icon = v5->_icon;
    v5->_icon = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coderKeyMOSuggestionAssetWorkoutIconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v12;
  }

  return v5;
}

@end