@interface MNGuidanceSignDescription
- (MNGuidanceSignDescription)initWithCoder:(id)a3;
- (MNGuidanceSignDescription)initWithID:(id)a3 titles:(id)a4 details:(id)a5 variableOverrides:(id)a6 distanceDetailLevel:(int)a7 junction:(id)a8 artworkOverride:(id)a9 shieldText:(id)a10 shieldID:(int)a11 shieldStringID:(id)a12 composedGuidanceEventIndex:(int)a13;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNGuidanceSignDescription

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  junction = self->_junction;
  if (junction)
  {
    v5 = [(GEOJunction *)junction maneuverType];
    v6 = @"NO_TURN";
    switch(v5)
    {
      case 0:
        break;
      case 1:
        v6 = @"LEFT_TURN";
        break;
      case 2:
        v6 = @"RIGHT_TURN";
        break;
      case 3:
        v6 = @"STRAIGHT_AHEAD";
        break;
      case 4:
        v6 = @"U_TURN";
        break;
      case 5:
        v6 = @"FOLLOW_ROAD";
        break;
      case 6:
        v6 = @"ENTER_ROUNDABOUT";
        break;
      case 7:
        v6 = @"EXIT_ROUNDABOUT";
        break;
      case 11:
        v6 = @"OFF_RAMP";
        break;
      case 12:
        v6 = @"ON_RAMP";
        break;
      case 16:
        v6 = @"ARRIVE_END_OF_NAVIGATION";
        break;
      case 17:
        v6 = @"START_ROUTE";
        break;
      case 18:
        v6 = @"ARRIVE_AT_DESTINATION";
        break;
      case 20:
        v6 = @"KEEP_LEFT";
        break;
      case 21:
        v6 = @"KEEP_RIGHT";
        break;
      case 22:
        v6 = @"ENTER_FERRY";
        break;
      case 23:
        v6 = @"EXIT_FERRY";
        break;
      case 24:
        v6 = @"CHANGE_FERRY";
        break;
      case 25:
        v6 = @"START_ROUTE_WITH_U_TURN";
        break;
      case 26:
        v6 = @"U_TURN_AT_ROUNDABOUT";
        break;
      case 27:
        v6 = @"LEFT_TURN_AT_END";
        break;
      case 28:
        v6 = @"RIGHT_TURN_AT_END";
        break;
      case 29:
        v6 = @"HIGHWAY_OFF_RAMP_LEFT";
        break;
      case 30:
        v6 = @"HIGHWAY_OFF_RAMP_RIGHT";
        break;
      case 33:
        v6 = @"ARRIVE_AT_DESTINATION_LEFT";
        break;
      case 34:
        v6 = @"ARRIVE_AT_DESTINATION_RIGHT";
        break;
      case 35:
        v6 = @"U_TURN_WHEN_POSSIBLE";
        break;
      case 39:
        v6 = @"ARRIVE_END_OF_DIRECTIONS";
        break;
      case 41:
        v6 = @"ROUNDABOUT_EXIT_1";
        break;
      case 42:
        v6 = @"ROUNDABOUT_EXIT_2";
        break;
      case 43:
        v6 = @"ROUNDABOUT_EXIT_3";
        break;
      case 44:
        v6 = @"ROUNDABOUT_EXIT_4";
        break;
      case 45:
        v6 = @"ROUNDABOUT_EXIT_5";
        break;
      case 46:
        v6 = @"ROUNDABOUT_EXIT_6";
        break;
      case 47:
        v6 = @"ROUNDABOUT_EXIT_7";
        break;
      case 48:
        v6 = @"ROUNDABOUT_EXIT_8";
        break;
      case 49:
        v6 = @"ROUNDABOUT_EXIT_9";
        break;
      case 50:
        v6 = @"ROUNDABOUT_EXIT_10";
        break;
      case 51:
        v6 = @"ROUNDABOUT_EXIT_11";
        break;
      case 52:
        v6 = @"ROUNDABOUT_EXIT_12";
        break;
      case 53:
        v6 = @"ROUNDABOUT_EXIT_13";
        break;
      case 54:
        v6 = @"ROUNDABOUT_EXIT_14";
        break;
      case 55:
        v6 = @"ROUNDABOUT_EXIT_15";
        break;
      case 56:
        v6 = @"ROUNDABOUT_EXIT_16";
        break;
      case 57:
        v6 = @"ROUNDABOUT_EXIT_17";
        break;
      case 58:
        v6 = @"ROUNDABOUT_EXIT_18";
        break;
      case 59:
        v6 = @"ROUNDABOUT_EXIT_19";
        break;
      case 60:
        v6 = @"SHARP_LEFT_TURN";
        break;
      case 61:
        v6 = @"SHARP_RIGHT_TURN";
        break;
      case 62:
        v6 = @"SLIGHT_LEFT_TURN";
        break;
      case 63:
        v6 = @"SLIGHT_RIGHT_TURN";
        break;
      case 64:
        v6 = @"CHANGE_HIGHWAY";
        break;
      case 65:
        v6 = @"CHANGE_HIGHWAY_LEFT";
        break;
      case 66:
        v6 = @"CHANGE_HIGHWAY_RIGHT";
        break;
      case 80:
        v6 = @"TOLL_STATION";
        break;
      case 81:
        v6 = @"ENTER_TUNNEL";
        break;
      case 82:
        v6 = @"WAYPOINT_STOP";
        break;
      case 83:
        v6 = @"WAYPOINT_STOP_LEFT";
        break;
      case 84:
        v6 = @"WAYPOINT_STOP_RIGHT";
        break;
      case 85:
        v6 = @"RESUME_ROUTE";
        break;
      case 86:
        v6 = @"RESUME_ROUTE_WITH_U_TURN";
        break;
      case 87:
        v6 = @"CUSTOM";
        break;
      case 88:
        v6 = @"TURN_AROUND";
        break;
      default:
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v5];
        break;
    }

    [v3 addObject:v6];
  }

  v7 = [(NSArray *)self->_primaryStrings firstObject];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 stringWithOptions:0];
    if (v9)
    {
      [v3 addObject:v9];
    }
  }

  v10 = [(NSArray *)self->_secondaryStrings firstObject];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 stringWithOptions:0];
    if (v12)
    {
      [v3 addObject:v12];
    }
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"static: %d", self->_isStaticText];
  [v3 addObject:v13];

  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    v15 = [(NSUUID *)uniqueID UUIDString];
    [v3 addObject:v15];
  }

  v16 = [v3 componentsJoinedByString:@" | "];

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v20 = a3;
  v4 = [(MNGuidanceSignDescription *)self uniqueID];

  if (v4)
  {
    v5 = [(MNGuidanceSignDescription *)self uniqueID];
    [v20 encodeObject:v5 forKey:@"UniqueID"];
  }

  v6 = [(MNGuidanceSignDescription *)self titles];

  if (v6)
  {
    v7 = [(MNGuidanceSignDescription *)self titles];
    [v20 encodeObject:v7 forKey:@"Titles"];
  }

  v8 = [(MNGuidanceSignDescription *)self details];

  if (v8)
  {
    v9 = [(MNGuidanceSignDescription *)self details];
    [v20 encodeObject:v9 forKey:@"Details"];
  }

  [v20 encodeObject:self->_primaryStrings forKey:@"_primaryStrings"];
  [v20 encodeObject:self->_secondaryStrings forKey:@"_secondaryStrings"];
  [v20 encodeDouble:@"_remainingDistance" forKey:self->_remainingDistance];
  [v20 encodeObject:self->_displayRemainingDistance forKey:@"_displayRemainingDistance"];
  v10 = [(MNGuidanceSignDescription *)self shieldText];

  if (v10)
  {
    v11 = [(MNGuidanceSignDescription *)self shieldText];
    [v20 encodeObject:v11 forKey:@"ShieldText"];
  }

  [v20 encodeInt32:-[MNGuidanceSignDescription shieldID](self forKey:{"shieldID"), @"ShieldID"}];
  v12 = [(MNGuidanceSignDescription *)self shieldStringID];

  if (v12)
  {
    v13 = [(MNGuidanceSignDescription *)self shieldStringID];
    [v20 encodeObject:v13 forKey:@"ShieldStringID"];
  }

  v14 = [(MNGuidanceSignDescription *)self junction];

  if (v14)
  {
    v15 = [(MNGuidanceSignDescription *)self junction];
    [v20 encodeObject:v15 forKey:@"Junction"];
  }

  v16 = [(MNGuidanceSignDescription *)self artworkOverride];

  if (v16)
  {
    v17 = [(MNGuidanceSignDescription *)self artworkOverride];
    [v20 encodeObject:v17 forKey:@"ArtworkOverride"];
  }

  [v20 encodeInteger:-[MNGuidanceSignDescription distanceDetailLevel](self forKey:{"distanceDetailLevel"), @"DistanceDetailLevel"}];
  v18 = [(MNGuidanceSignDescription *)self variableOverrides];

  if (v18)
  {
    v19 = [(MNGuidanceSignDescription *)self variableOverrides];
    [v20 encodeObject:v19 forKey:@"VariableOverrides"];
  }

  [v20 encodeInt32:-[MNGuidanceSignDescription composedGuidanceEventIndex](self forKey:{"composedGuidanceEventIndex"), @"ComposedGuidanceEventIndex"}];
  [v20 encodeBool:self->_isStaticText forKey:@"_isStaticText"];
}

- (MNGuidanceSignDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = MNGuidanceSignDescription;
  v5 = [(MNGuidanceSignDescription *)&v48 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"Titles"];
    titles = v5->_titles;
    v5->_titles = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"Details"];
    details = v5->_details;
    v5->_details = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"_primaryStrings"];
    primaryStrings = v5->_primaryStrings;
    v5->_primaryStrings = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"_secondaryStrings"];
    secondaryStrings = v5->_secondaryStrings;
    v5->_secondaryStrings = v26;

    [v4 decodeDoubleForKey:@"_remainingDistance"];
    v5->_remainingDistance = v28;
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayRemainingDistance"];
    displayRemainingDistance = v5->_displayRemainingDistance;
    v5->_displayRemainingDistance = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"VariableOverrides"];
    variableOverrides = v5->_variableOverrides;
    v5->_variableOverrides = v35;

    v5->_distanceDetailLevel = [v4 decodeIntegerForKey:@"DistanceDetailLevel"];
    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Junction"];
    junction = v5->_junction;
    v5->_junction = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ArtworkOverride"];
    artworkOverride = v5->_artworkOverride;
    v5->_artworkOverride = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ShieldText"];
    v42 = [v41 copy];
    shieldText = v5->_shieldText;
    v5->_shieldText = v42;

    v5->_shieldID = [v4 decodeInt32ForKey:@"ShieldID"];
    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ShieldStringID"];
    v45 = [v44 copy];
    shieldStringID = v5->_shieldStringID;
    v5->_shieldStringID = v45;

    v5->_composedGuidanceEventIndex = [v4 decodeInt32ForKey:@"ComposedGuidanceEventIndex"];
    v5->_isStaticText = [v4 decodeBoolForKey:@"_isStaticText"];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MNGuidanceSignDescription *)self uniqueID];
  v5 = [v3 stringWithFormat:@"%@ | static: %d", v4, self->_isStaticText];

  v6 = [(MNGuidanceSignDescription *)self titles];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(MNGuidanceSignDescription *)self titles];
    v9 = [v8 firstObject];
    v10 = [v5 stringByAppendingFormat:@"\n  title:     %@", v9];

    v5 = v10;
  }

  v11 = [(MNGuidanceSignDescription *)self details];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(MNGuidanceSignDescription *)self details];
    v14 = [v13 firstObject];
    v15 = [v5 stringByAppendingFormat:@"\n  detail:    %@", v14];

    v5 = v15;
  }

  return v5;
}

- (MNGuidanceSignDescription)initWithID:(id)a3 titles:(id)a4 details:(id)a5 variableOverrides:(id)a6 distanceDetailLevel:(int)a7 junction:(id)a8 artworkOverride:(id)a9 shieldText:(id)a10 shieldID:(int)a11 shieldStringID:(id)a12 composedGuidanceEventIndex:(int)a13
{
  v19 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a8;
  v26 = a9;
  v25 = a10;
  v20 = a12;
  v31.receiver = self;
  v31.super_class = MNGuidanceSignDescription;
  v21 = [(MNGuidanceSignDescription *)&v31 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_uniqueID, a3);
    objc_storeStrong(&v22->_titles, a4);
    objc_storeStrong(&v22->_details, a5);
    objc_storeStrong(&v22->_variableOverrides, a6);
    v22->_distanceDetailLevel = a7;
    objc_storeStrong(&v22->_junction, a8);
    objc_storeStrong(&v22->_artworkOverride, a9);
    objc_storeStrong(&v22->_shieldText, a10);
    v22->_shieldID = a11;
    objc_storeStrong(&v22->_shieldStringID, a12);
    v22->_composedGuidanceEventIndex = a13;
  }

  return v22;
}

@end