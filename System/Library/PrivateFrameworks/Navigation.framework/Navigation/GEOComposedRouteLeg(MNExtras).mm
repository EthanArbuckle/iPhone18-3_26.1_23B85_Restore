@interface GEOComposedRouteLeg(MNExtras)
- (id)destinationListInstructionString;
- (id)originListInstructionString;
- (id)waypointSubstitutedComposedStringForString:()MNExtras waypoint:useWaypointAddress:;
@end

@implementation GEOComposedRouteLeg(MNExtras)

- (id)waypointSubstitutedComposedStringForString:()MNExtras waypoint:useWaypointAddress:
{
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (a3 && v7)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __104__GEOComposedRouteLeg_MNExtras__waypointSubstitutedComposedStringForString_waypoint_useWaypointAddress___block_invoke;
    v16 = &unk_1E8430C48;
    v18 = a5;
    v17 = v7;
    v10 = a3;
    v11 = [v10 optionsWithArgumentHandler:&v13];
    v9 = [v10 composedStringWithOptions:{v11, v13, v14, v15, v16}];
  }

  return v9;
}

- (id)destinationListInstructionString
{
  destinationListInstruction = [self destinationListInstruction];
  destination = [self destination];
  v4 = [self waypointSubstitutedComposedStringForString:destinationListInstruction waypoint:destination useWaypointAddress:0];

  stringWithDefaultOptions = [v4 stringWithDefaultOptions];

  return stringWithDefaultOptions;
}

- (id)originListInstructionString
{
  originListInstruction = [self originListInstruction];
  origin = [self origin];
  v4 = [self waypointSubstitutedComposedStringForString:originListInstruction waypoint:origin useWaypointAddress:0];

  stringWithDefaultOptions = [v4 stringWithDefaultOptions];

  return stringWithDefaultOptions;
}

@end