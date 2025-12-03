@interface MNGuidanceLaneInfo
- (MNGuidanceLaneInfo)initWithCoder:(id)coder;
- (MNGuidanceLaneInfo)initWithID:(id)d isForManeuver:(BOOL)maneuver lanes:(id)lanes titles:(id)titles instructions:(id)instructions variableOverrides:(id)overrides distanceDetailLevel:(int64_t)level composedGuidanceEventIndex:(int)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNGuidanceLaneInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueID = [(MNGuidanceLaneInfo *)self uniqueID];

  if (uniqueID)
  {
    uniqueID2 = [(MNGuidanceLaneInfo *)self uniqueID];
    [coderCopy encodeObject:uniqueID2 forKey:@"UniqueID"];
  }

  [coderCopy encodeBool:-[MNGuidanceLaneInfo isForManeuver](self forKey:{"isForManeuver"), @"IsForManeuver"}];
  lanes = [(MNGuidanceLaneInfo *)self lanes];

  if (lanes)
  {
    lanes2 = [(MNGuidanceLaneInfo *)self lanes];
    [coderCopy encodeObject:lanes2 forKey:@"Lanes"];
  }

  titles = [(MNGuidanceLaneInfo *)self titles];

  if (titles)
  {
    titles2 = [(MNGuidanceLaneInfo *)self titles];
    [coderCopy encodeObject:titles2 forKey:@"Titles"];
  }

  instructions = [(MNGuidanceLaneInfo *)self instructions];

  if (instructions)
  {
    instructions2 = [(MNGuidanceLaneInfo *)self instructions];
    [coderCopy encodeObject:instructions2 forKey:@"Instructions"];
  }

  [coderCopy encodeObject:self->_primaryStrings forKey:@"_primaryStrings"];
  [coderCopy encodeObject:self->_secondaryStrings forKey:@"_secondaryStrings"];
  variableOverrides = [(MNGuidanceLaneInfo *)self variableOverrides];

  if (variableOverrides)
  {
    variableOverrides2 = [(MNGuidanceLaneInfo *)self variableOverrides];
    [coderCopy encodeObject:variableOverrides2 forKey:@"VariableOverrides"];
  }

  [coderCopy encodeInteger:-[MNGuidanceLaneInfo distanceDetailLevel](self forKey:{"distanceDetailLevel"), @"DistanceDetailLevel"}];
  [coderCopy encodeInt32:-[MNGuidanceLaneInfo composedGuidanceEventIndex](self forKey:{"composedGuidanceEventIndex"), @"ComposedGuidanceEventIndex"}];
}

- (MNGuidanceLaneInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v40.receiver = self;
  v40.super_class = MNGuidanceLaneInfo;
  v5 = [(MNGuidanceLaneInfo *)&v40 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v6;

    v5->_isForManeuver = [coderCopy decodeBoolForKey:@"IsForManeuver"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Lanes"];
    lanes = v5->_lanes;
    v5->_lanes = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"Titles"];
    titles = v5->_titles;
    v5->_titles = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"Instructions"];
    instructions = v5->_instructions;
    v5->_instructions = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"_primaryStrings"];
    primaryStrings = v5->_primaryStrings;
    v5->_primaryStrings = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"_secondaryStrings"];
    secondaryStrings = v5->_secondaryStrings;
    v5->_secondaryStrings = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = [v33 setWithObjects:{v34, v35, objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"VariableOverrides"];
    variableOverrides = v5->_variableOverrides;
    v5->_variableOverrides = v37;

    v5->_distanceDetailLevel = [coderCopy decodeIntegerForKey:@"DistanceDetailLevel"];
    v5->_composedGuidanceEventIndex = [coderCopy decodeInt32ForKey:@"ComposedGuidanceEventIndex"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  lanes = self->_lanes;
  v5 = descriptionForLaneInfos();
  [v3 addObject:v5];
  firstObject = [(NSArray *)self->_titles firstObject];
  if (firstObject)
  {
    v7 = [MEMORY[0x1E696AEC0] _navigation_stringForServerFormattedString:firstObject abbreviatedUnits:0 detail:0 spoken:0 overrideVariables:self->_variableOverrides];
    if (v7)
    {
      [v3 addObject:v7];
    }
  }

  firstObject2 = [(NSArray *)self->_instructions firstObject];
  v9 = firstObject2;
  if (firstObject2)
  {
    formatTokens = [firstObject2 formatTokens];
    firstObject3 = [formatTokens firstObject];

    type = [firstObject3 type];
    v13 = MEMORY[0x1E696AEC0];
    if (type == 11)
    {
      stringValue = [firstObject3 stringValue];
      v15 = [v13 stringWithFormat:@"{%@}", stringValue];

      if (!v15)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = [MEMORY[0x1E696AEC0] _navigation_stringForServerFormattedString:v9 abbreviatedUnits:0 detail:0 spoken:0 overrideVariables:self->_variableOverrides];
      if (!v15)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    [v3 addObject:v15];
    goto LABEL_11;
  }

LABEL_12:
  v16 = [v3 componentsJoinedByString:{@", "}];

  return v16;
}

- (MNGuidanceLaneInfo)initWithID:(id)d isForManeuver:(BOOL)maneuver lanes:(id)lanes titles:(id)titles instructions:(id)instructions variableOverrides:(id)overrides distanceDetailLevel:(int64_t)level composedGuidanceEventIndex:(int)self0
{
  dCopy = d;
  lanesCopy = lanes;
  titlesCopy = titles;
  instructionsCopy = instructions;
  overridesCopy = overrides;
  v25.receiver = self;
  v25.super_class = MNGuidanceLaneInfo;
  v20 = [(MNGuidanceLaneInfo *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_uniqueID, d);
    v21->_isForManeuver = maneuver;
    objc_storeStrong(&v21->_lanes, lanes);
    objc_storeStrong(&v21->_titles, titles);
    objc_storeStrong(&v21->_instructions, instructions);
    objc_storeStrong(&v21->_variableOverrides, overrides);
    v21->_distanceDetailLevel = level;
    v21->_composedGuidanceEventIndex = index;
  }

  return v21;
}

@end