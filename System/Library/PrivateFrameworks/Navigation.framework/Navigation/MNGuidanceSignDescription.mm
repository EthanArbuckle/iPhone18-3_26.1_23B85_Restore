@interface MNGuidanceSignDescription
- (MNGuidanceSignDescription)initWithCoder:(id)coder;
- (MNGuidanceSignDescription)initWithID:(id)d titles:(id)titles details:(id)details variableOverrides:(id)overrides distanceDetailLevel:(int)level junction:(id)junction artworkOverride:(id)override shieldText:(id)self0 shieldID:(int)self1 shieldStringID:(id)self2 composedGuidanceEventIndex:(int)self3;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNGuidanceSignDescription

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  junction = self->_junction;
  if (junction)
  {
    maneuverType = [(GEOJunction *)junction maneuverType];
    v6 = @"NO_TURN";
    switch(maneuverType)
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
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", maneuverType];
        break;
    }

    [v3 addObject:v6];
  }

  firstObject = [(NSArray *)self->_primaryStrings firstObject];
  v8 = firstObject;
  if (firstObject)
  {
    v9 = [firstObject stringWithOptions:0];
    if (v9)
    {
      [v3 addObject:v9];
    }
  }

  firstObject2 = [(NSArray *)self->_secondaryStrings firstObject];
  v11 = firstObject2;
  if (firstObject2)
  {
    v12 = [firstObject2 stringWithOptions:0];
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
    uUIDString = [(NSUUID *)uniqueID UUIDString];
    [v3 addObject:uUIDString];
  }

  v16 = [v3 componentsJoinedByString:@" | "];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueID = [(MNGuidanceSignDescription *)self uniqueID];

  if (uniqueID)
  {
    uniqueID2 = [(MNGuidanceSignDescription *)self uniqueID];
    [coderCopy encodeObject:uniqueID2 forKey:@"UniqueID"];
  }

  titles = [(MNGuidanceSignDescription *)self titles];

  if (titles)
  {
    titles2 = [(MNGuidanceSignDescription *)self titles];
    [coderCopy encodeObject:titles2 forKey:@"Titles"];
  }

  details = [(MNGuidanceSignDescription *)self details];

  if (details)
  {
    details2 = [(MNGuidanceSignDescription *)self details];
    [coderCopy encodeObject:details2 forKey:@"Details"];
  }

  [coderCopy encodeObject:self->_primaryStrings forKey:@"_primaryStrings"];
  [coderCopy encodeObject:self->_secondaryStrings forKey:@"_secondaryStrings"];
  [coderCopy encodeDouble:@"_remainingDistance" forKey:self->_remainingDistance];
  [coderCopy encodeObject:self->_displayRemainingDistance forKey:@"_displayRemainingDistance"];
  shieldText = [(MNGuidanceSignDescription *)self shieldText];

  if (shieldText)
  {
    shieldText2 = [(MNGuidanceSignDescription *)self shieldText];
    [coderCopy encodeObject:shieldText2 forKey:@"ShieldText"];
  }

  [coderCopy encodeInt32:-[MNGuidanceSignDescription shieldID](self forKey:{"shieldID"), @"ShieldID"}];
  shieldStringID = [(MNGuidanceSignDescription *)self shieldStringID];

  if (shieldStringID)
  {
    shieldStringID2 = [(MNGuidanceSignDescription *)self shieldStringID];
    [coderCopy encodeObject:shieldStringID2 forKey:@"ShieldStringID"];
  }

  junction = [(MNGuidanceSignDescription *)self junction];

  if (junction)
  {
    junction2 = [(MNGuidanceSignDescription *)self junction];
    [coderCopy encodeObject:junction2 forKey:@"Junction"];
  }

  artworkOverride = [(MNGuidanceSignDescription *)self artworkOverride];

  if (artworkOverride)
  {
    artworkOverride2 = [(MNGuidanceSignDescription *)self artworkOverride];
    [coderCopy encodeObject:artworkOverride2 forKey:@"ArtworkOverride"];
  }

  [coderCopy encodeInteger:-[MNGuidanceSignDescription distanceDetailLevel](self forKey:{"distanceDetailLevel"), @"DistanceDetailLevel"}];
  variableOverrides = [(MNGuidanceSignDescription *)self variableOverrides];

  if (variableOverrides)
  {
    variableOverrides2 = [(MNGuidanceSignDescription *)self variableOverrides];
    [coderCopy encodeObject:variableOverrides2 forKey:@"VariableOverrides"];
  }

  [coderCopy encodeInt32:-[MNGuidanceSignDescription composedGuidanceEventIndex](self forKey:{"composedGuidanceEventIndex"), @"ComposedGuidanceEventIndex"}];
  [coderCopy encodeBool:self->_isStaticText forKey:@"_isStaticText"];
}

- (MNGuidanceSignDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v48.receiver = self;
  v48.super_class = MNGuidanceSignDescription;
  v5 = [(MNGuidanceSignDescription *)&v48 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Titles"];
    titles = v5->_titles;
    v5->_titles = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"Details"];
    details = v5->_details;
    v5->_details = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"_primaryStrings"];
    primaryStrings = v5->_primaryStrings;
    v5->_primaryStrings = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"_secondaryStrings"];
    secondaryStrings = v5->_secondaryStrings;
    v5->_secondaryStrings = v26;

    [coderCopy decodeDoubleForKey:@"_remainingDistance"];
    v5->_remainingDistance = v28;
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayRemainingDistance"];
    displayRemainingDistance = v5->_displayRemainingDistance;
    v5->_displayRemainingDistance = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"VariableOverrides"];
    variableOverrides = v5->_variableOverrides;
    v5->_variableOverrides = v35;

    v5->_distanceDetailLevel = [coderCopy decodeIntegerForKey:@"DistanceDetailLevel"];
    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Junction"];
    junction = v5->_junction;
    v5->_junction = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ArtworkOverride"];
    artworkOverride = v5->_artworkOverride;
    v5->_artworkOverride = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ShieldText"];
    v42 = [v41 copy];
    shieldText = v5->_shieldText;
    v5->_shieldText = v42;

    v5->_shieldID = [coderCopy decodeInt32ForKey:@"ShieldID"];
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ShieldStringID"];
    v45 = [v44 copy];
    shieldStringID = v5->_shieldStringID;
    v5->_shieldStringID = v45;

    v5->_composedGuidanceEventIndex = [coderCopy decodeInt32ForKey:@"ComposedGuidanceEventIndex"];
    v5->_isStaticText = [coderCopy decodeBoolForKey:@"_isStaticText"];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  uniqueID = [(MNGuidanceSignDescription *)self uniqueID];
  v5 = [v3 stringWithFormat:@"%@ | static: %d", uniqueID, self->_isStaticText];

  titles = [(MNGuidanceSignDescription *)self titles];
  v7 = [titles count];

  if (v7)
  {
    titles2 = [(MNGuidanceSignDescription *)self titles];
    firstObject = [titles2 firstObject];
    v10 = [v5 stringByAppendingFormat:@"\n  title:     %@", firstObject];

    v5 = v10;
  }

  details = [(MNGuidanceSignDescription *)self details];
  v12 = [details count];

  if (v12)
  {
    details2 = [(MNGuidanceSignDescription *)self details];
    firstObject2 = [details2 firstObject];
    v15 = [v5 stringByAppendingFormat:@"\n  detail:    %@", firstObject2];

    v5 = v15;
  }

  return v5;
}

- (MNGuidanceSignDescription)initWithID:(id)d titles:(id)titles details:(id)details variableOverrides:(id)overrides distanceDetailLevel:(int)level junction:(id)junction artworkOverride:(id)override shieldText:(id)self0 shieldID:(int)self1 shieldStringID:(id)self2 composedGuidanceEventIndex:(int)self3
{
  dCopy = d;
  titlesCopy = titles;
  detailsCopy = details;
  overridesCopy = overrides;
  junctionCopy = junction;
  overrideCopy = override;
  textCopy = text;
  stringIDCopy = stringID;
  v31.receiver = self;
  v31.super_class = MNGuidanceSignDescription;
  v21 = [(MNGuidanceSignDescription *)&v31 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_uniqueID, d);
    objc_storeStrong(&v22->_titles, titles);
    objc_storeStrong(&v22->_details, details);
    objc_storeStrong(&v22->_variableOverrides, overrides);
    v22->_distanceDetailLevel = level;
    objc_storeStrong(&v22->_junction, junction);
    objc_storeStrong(&v22->_artworkOverride, override);
    objc_storeStrong(&v22->_shieldText, text);
    v22->_shieldID = iD;
    objc_storeStrong(&v22->_shieldStringID, stringID);
    v22->_composedGuidanceEventIndex = index;
  }

  return v22;
}

@end