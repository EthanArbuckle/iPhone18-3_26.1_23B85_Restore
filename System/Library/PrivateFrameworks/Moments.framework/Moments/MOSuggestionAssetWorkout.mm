@interface MOSuggestionAssetWorkout
- (MOSuggestionAssetWorkout)initWithCoder:(id)coder;
- (id)init:(id)init route:(id)route renderedRouteMap:(id)map icon:(id)icon iconURL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOSuggestionAssetWorkout

- (id)init:(id)init route:(id)route renderedRouteMap:(id)map icon:(id)icon iconURL:(id)l
{
  initCopy = init;
  routeCopy = route;
  mapCopy = map;
  iconCopy = icon;
  lCopy = l;
  v21.receiver = self;
  v21.super_class = MOSuggestionAssetWorkout;
  v17 = [(MOSuggestionAssetWorkout *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_activityRings, init);
    objc_storeStrong(p_isa + 5, route);
    objc_storeStrong(p_isa + 6, icon);
    objc_storeStrong(p_isa + 8, map);
    objc_storeStrong(p_isa + 7, l);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)coder
{
  activityRings = self->_activityRings;
  coderCopy = coder;
  [coderCopy encodeObject:activityRings forKey:@"coderKeyMOSuggestionAssetWorkoutActivitySummary"];
  [coderCopy encodeObject:self->_route forKey:@"coderKeyMOSuggestionAssetWorkoutRoute"];
  [coderCopy encodeObject:self->_icon forKey:@"coderKeyMOSuggestionAssetWorkoutIcon"];
  [coderCopy encodeObject:self->_iconURL forKey:@"coderKeyMOSuggestionAssetWorkoutIconURL"];
}

- (MOSuggestionAssetWorkout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MOSuggestionAssetWorkout;
  v5 = [(MOSuggestionAssetWorkout *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coderKeyMOSuggestionAssetWorkoutActivitySummary"];
    activityRings = v5->_activityRings;
    v5->_activityRings = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coderKeyMOSuggestionAssetWorkoutRoute"];
    route = v5->_route;
    v5->_route = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coderKeyMOSuggestionAssetWorkoutIcon"];
    icon = v5->_icon;
    v5->_icon = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coderKeyMOSuggestionAssetWorkoutIconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v12;
  }

  return v5;
}

@end