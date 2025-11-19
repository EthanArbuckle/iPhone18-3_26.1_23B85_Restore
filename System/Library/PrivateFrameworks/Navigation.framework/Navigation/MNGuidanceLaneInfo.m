@interface MNGuidanceLaneInfo
- (MNGuidanceLaneInfo)initWithCoder:(id)a3;
- (MNGuidanceLaneInfo)initWithID:(id)a3 isForManeuver:(BOOL)a4 lanes:(id)a5 titles:(id)a6 instructions:(id)a7 variableOverrides:(id)a8 distanceDetailLevel:(int64_t)a9 composedGuidanceEventIndex:(int)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNGuidanceLaneInfo

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(MNGuidanceLaneInfo *)self uniqueID];

  if (v4)
  {
    v5 = [(MNGuidanceLaneInfo *)self uniqueID];
    [v14 encodeObject:v5 forKey:@"UniqueID"];
  }

  [v14 encodeBool:-[MNGuidanceLaneInfo isForManeuver](self forKey:{"isForManeuver"), @"IsForManeuver"}];
  v6 = [(MNGuidanceLaneInfo *)self lanes];

  if (v6)
  {
    v7 = [(MNGuidanceLaneInfo *)self lanes];
    [v14 encodeObject:v7 forKey:@"Lanes"];
  }

  v8 = [(MNGuidanceLaneInfo *)self titles];

  if (v8)
  {
    v9 = [(MNGuidanceLaneInfo *)self titles];
    [v14 encodeObject:v9 forKey:@"Titles"];
  }

  v10 = [(MNGuidanceLaneInfo *)self instructions];

  if (v10)
  {
    v11 = [(MNGuidanceLaneInfo *)self instructions];
    [v14 encodeObject:v11 forKey:@"Instructions"];
  }

  [v14 encodeObject:self->_primaryStrings forKey:@"_primaryStrings"];
  [v14 encodeObject:self->_secondaryStrings forKey:@"_secondaryStrings"];
  v12 = [(MNGuidanceLaneInfo *)self variableOverrides];

  if (v12)
  {
    v13 = [(MNGuidanceLaneInfo *)self variableOverrides];
    [v14 encodeObject:v13 forKey:@"VariableOverrides"];
  }

  [v14 encodeInteger:-[MNGuidanceLaneInfo distanceDetailLevel](self forKey:{"distanceDetailLevel"), @"DistanceDetailLevel"}];
  [v14 encodeInt32:-[MNGuidanceLaneInfo composedGuidanceEventIndex](self forKey:{"composedGuidanceEventIndex"), @"ComposedGuidanceEventIndex"}];
}

- (MNGuidanceLaneInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = MNGuidanceLaneInfo;
  v5 = [(MNGuidanceLaneInfo *)&v40 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v6;

    v5->_isForManeuver = [v4 decodeBoolForKey:@"IsForManeuver"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"Lanes"];
    lanes = v5->_lanes;
    v5->_lanes = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"Titles"];
    titles = v5->_titles;
    v5->_titles = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"Instructions"];
    instructions = v5->_instructions;
    v5->_instructions = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"_primaryStrings"];
    primaryStrings = v5->_primaryStrings;
    v5->_primaryStrings = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"_secondaryStrings"];
    secondaryStrings = v5->_secondaryStrings;
    v5->_secondaryStrings = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = [v33 setWithObjects:{v34, v35, objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"VariableOverrides"];
    variableOverrides = v5->_variableOverrides;
    v5->_variableOverrides = v37;

    v5->_distanceDetailLevel = [v4 decodeIntegerForKey:@"DistanceDetailLevel"];
    v5->_composedGuidanceEventIndex = [v4 decodeInt32ForKey:@"ComposedGuidanceEventIndex"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  lanes = self->_lanes;
  v5 = descriptionForLaneInfos();
  [v3 addObject:v5];
  v6 = [(NSArray *)self->_titles firstObject];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] _navigation_stringForServerFormattedString:v6 abbreviatedUnits:0 detail:0 spoken:0 overrideVariables:self->_variableOverrides];
    if (v7)
    {
      [v3 addObject:v7];
    }
  }

  v8 = [(NSArray *)self->_instructions firstObject];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 formatTokens];
    v11 = [v10 firstObject];

    v12 = [v11 type];
    v13 = MEMORY[0x1E696AEC0];
    if (v12 == 11)
    {
      v14 = [v11 stringValue];
      v15 = [v13 stringWithFormat:@"{%@}", v14];

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

- (MNGuidanceLaneInfo)initWithID:(id)a3 isForManeuver:(BOOL)a4 lanes:(id)a5 titles:(id)a6 instructions:(id)a7 variableOverrides:(id)a8 distanceDetailLevel:(int64_t)a9 composedGuidanceEventIndex:(int)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v24 = a7;
  v19 = a8;
  v25.receiver = self;
  v25.super_class = MNGuidanceLaneInfo;
  v20 = [(MNGuidanceLaneInfo *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_uniqueID, a3);
    v21->_isForManeuver = a4;
    objc_storeStrong(&v21->_lanes, a5);
    objc_storeStrong(&v21->_titles, a6);
    objc_storeStrong(&v21->_instructions, a7);
    objc_storeStrong(&v21->_variableOverrides, a8);
    v21->_distanceDetailLevel = a9;
    v21->_composedGuidanceEventIndex = a10;
  }

  return v21;
}

@end