@interface NavSignLaneGuidanceInfo
+ (_NSRange)highlightedLaneRangeForLanes:(id)lanes;
+ (id)_createFakeLanes;
- (BOOL)isEqual:(id)equal;
- (NavSignLaneGuidanceInfo)initWithGuidanceLaneInfo:(id)info;
- (NavSignLaneGuidanceInfo)initWithLaneInfoId:(id)id lanes:(id)lanes forManeuver:(BOOL)maneuver midStepTitles:(id)titles details:(id)details;
- (_NSRange)highlightedLaneRange;
- (id)description;
- (id)highlightedLanes;
@end

@implementation NavSignLaneGuidanceInfo

+ (id)_createFakeLanes
{
  v2 = arc4random_uniform(9u);
  v3 = v2 + 2;
  v4 = arc4random_uniform(v2 + 2);
  v5 = v4;
  v6 = arc4random_uniform(v3 - v4 + 1);
  v7 = v6 + v4;
  v8 = [NSMutableArray arrayWithCapacity:v3];
  v9 = 0;
  do
  {
    if (v9 < v5 || v9 > v7)
    {
      v10 = +[GEOComposedRouteLaneInfo _debug_straightLane];
    }

    else
    {
      v10 = [GEOComposedRouteLaneInfo _debug_laneWithDirections:&off_10008CA28 good:1 preferred:v6 == 0];
    }

    v11 = v10;
    [v8 addObject:v10];

    ++v9;
  }

  while (v3 != v9);

  return v8;
}

- (NavSignLaneGuidanceInfo)initWithGuidanceLaneInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v5 = [MKServerFormattedStringParameters alloc];
    distanceDetailLevel = [infoCopy distanceDetailLevel];
    variableOverrides = [infoCopy variableOverrides];
    v8 = [v5 initWithInstructionsDistanceDetailLevel:distanceDetailLevel variableOverrides:variableOverrides];

    secondaryStrings = [infoCopy secondaryStrings];
    v10 = [secondaryStrings count];

    if (v10)
    {
      secondaryStrings2 = [infoCopy secondaryStrings];
      v12 = sub_1000282B8(secondaryStrings2, &stru_100085488);
    }

    else
    {
      instructions = [infoCopy instructions];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100010FD4;
      v25[3] = &unk_1000854B0;
      v26 = v8;
      v12 = sub_1000282B8(instructions, v25);
    }

    primaryStrings = [infoCopy primaryStrings];
    v16 = [primaryStrings count];

    if (v16)
    {
      primaryStrings2 = [infoCopy primaryStrings];
      v18 = sub_1000282B8(primaryStrings2, &stru_1000854D0);
    }

    else
    {
      titles = [infoCopy titles];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100011094;
      v23[3] = &unk_1000854B0;
      v24 = v8;
      v18 = sub_1000282B8(titles, v23);

      primaryStrings2 = v24;
    }

    uniqueID = [infoCopy uniqueID];
    lanes = [infoCopy lanes];
    self = -[NavSignLaneGuidanceInfo initWithLaneInfoId:lanes:forManeuver:midStepTitles:details:](self, "initWithLaneInfoId:lanes:forManeuver:midStepTitles:details:", uniqueID, lanes, [infoCopy isForManeuver], v18, v12);

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NavSignLaneGuidanceInfo)initWithLaneInfoId:(id)id lanes:(id)lanes forManeuver:(BOOL)maneuver midStepTitles:(id)titles details:(id)details
{
  idCopy = id;
  lanesCopy = lanes;
  titlesCopy = titles;
  detailsCopy = details;
  if (idCopy)
  {
    v21.receiver = self;
    v21.super_class = NavSignLaneGuidanceInfo;
    v17 = [(NavSignLaneGuidanceInfo *)&v21 init];
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(&v17->_laneInfoId, id);
      objc_storeStrong(&v18->_lanes, lanes);
      v18->_isForManeuver = maneuver;
      objc_storeStrong(&v18->_textAlternatives, details);
      objc_storeStrong(&v18->_midStepTitles, titles);
    }

    self = v18;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    laneInfoId = [(NavSignLaneGuidanceInfo *)self laneInfoId];
    laneInfoId2 = [v5 laneInfoId];

    v8 = [laneInfoId isEqual:laneInfoId2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  laneInfoId = [(NavSignLaneGuidanceInfo *)self laneInfoId];
  lanes = [(NavSignLaneGuidanceInfo *)self lanes];
  v5 = [lanes count];
  isForManeuver = [(NavSignLaneGuidanceInfo *)self isForManeuver];
  textAlternatives = [(NavSignLaneGuidanceInfo *)self textAlternatives];
  if ([textAlternatives count])
  {
    textAlternatives2 = [(NavSignLaneGuidanceInfo *)self textAlternatives];
    v9 = [NSString stringWithFormat:@"laneInfoID: [%@] %d lanes (forManeuver:%d) %@", laneInfoId, v5, isForManeuver, textAlternatives2];
  }

  else
  {
    v9 = [NSString stringWithFormat:@"laneInfoID: [%@] %d lanes (forManeuver:%d) %@", laneInfoId, v5, isForManeuver, &stru_100087EB8];
  }

  return v9;
}

- (_NSRange)highlightedLaneRange
{
  v3 = objc_opt_class();
  lanes = [(NavSignLaneGuidanceInfo *)self lanes];
  v5 = [v3 highlightedLaneRangeForLanes:lanes];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

+ (_NSRange)highlightedLaneRangeForLanes:(id)lanes
{
  lanesCopy = lanes;
  if ([lanesCopy count])
  {
    v4 = +[NSMutableArray array];
    v5 = +[NSMutableArray array];
    if ([lanesCopy count])
    {
      v6 = 0;
      do
      {
        v7 = [lanesCopy objectAtIndexedSubscript:v6];
        v8 = v4;
        if (([v7 isPreferredLaneForManeuver] & 1) != 0 || (v8 = v5, objc_msgSend(v7, "isLaneForManeuver")))
        {
          v9 = [NSNumber numberWithUnsignedInteger:v6];
          [v8 addObject:v9];
        }

        ++v6;
      }

      while (v6 < [lanesCopy count]);
    }

    v10 = [v4 count];
    v11 = v4;
    if (!v10)
    {
      if ([v5 count])
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }
    }

    v12 = v11;
    if ([v12 count])
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v13 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    if ([v12 count])
    {
      lastObject = [v12 lastObject];
      unsignedIntegerValue2 = [lastObject unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v18 = unsignedIntegerValue != 0x7FFFFFFFFFFFFFFFLL;
    v19 = unsignedIntegerValue2 != 0x7FFFFFFFFFFFFFFFLL;
    if (v18 && v19)
    {
      v15 = unsignedIntegerValue2 - unsignedIntegerValue + 1;
    }

    else
    {
      v15 = 0;
    }

    if (!v18 || !v19)
    {
      unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 0;
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = unsignedIntegerValue;
  v21 = v15;
  result.length = v21;
  result.location = v20;
  return result;
}

- (id)highlightedLanes
{
  lanes = self->_lanes;
  highlightedLaneRange = [(NavSignLaneGuidanceInfo *)self highlightedLaneRange];

  return [(NSArray *)lanes subarrayWithRange:highlightedLaneRange, v3];
}

@end