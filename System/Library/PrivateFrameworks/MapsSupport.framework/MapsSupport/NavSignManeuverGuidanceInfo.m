@interface NavSignManeuverGuidanceInfo
+ (id)updatedGuidanceWithPreviousGuidance:(id)a3 currentGuidance:(id)a4;
- (BOOL)matchesManeuver:(int)a3 minorTextAlternatives:(id)a4;
- (BOOL)matchesManeuver:(int)a3 minorTextAlternatives:(id)a4 shieldInfo:(id)a5;
- (MKServerFormattedString)majorText;
- (MKServerFormattedString)minorText;
- (NavSignManeuverGuidanceInfo)initWithSignID:(id)a3 maneuverArtwork:(id)a4 majorTextAlternatives:(id)a5 minorTextAlternatives:(id)a6 shieldInfo:(id)a7;
- (id)description;
- (void)_notifyObserversWithBlock:(id)a3;
- (void)_setNeedsChangeNotification;
- (void)setMajorText:(id)a3;
- (void)setMajorTextAlternatives:(id)a3;
- (void)setManeuverArtwork:(id)a3;
- (void)setMinorText:(id)a3;
- (void)setMinorTextAlternatives:(id)a3;
- (void)setShieldInfo:(id)a3;
@end

@implementation NavSignManeuverGuidanceInfo

+ (id)updatedGuidanceWithPreviousGuidance:(id)a3 currentGuidance:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 signID];
  v8 = [v6 signID];
  v9 = [v7 isEqual:v8];

  v10 = v6;
  if (v9)
  {
    v11 = [v6 maneuverArtwork];
    [v5 setManeuverArtwork:v11];

    v12 = [v6 majorTextAlternatives];
    [v5 setMajorTextAlternatives:v12];

    v13 = [v6 minorTextAlternatives];
    [v5 setMinorTextAlternatives:v13];

    v14 = [v6 shieldInfo];
    [v5 setShieldInfo:v14];

    v10 = v5;
  }

  v15 = v10;

  return v10;
}

- (NavSignManeuverGuidanceInfo)initWithSignID:(id)a3 maneuverArtwork:(id)a4 majorTextAlternatives:(id)a5 minorTextAlternatives:(id)a6 shieldInfo:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v27.receiver = self;
  v27.super_class = NavSignManeuverGuidanceInfo;
  v18 = [(NavSignManeuverGuidanceInfo *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_signID, a3);
    objc_storeStrong(&v19->_maneuverArtwork, a4);
    v20 = [v15 copy];
    majorTextAlternatives = v19->_majorTextAlternatives;
    v19->_majorTextAlternatives = v20;

    v22 = [v16 copy];
    minorTextAlternatives = v19->_minorTextAlternatives;
    v19->_minorTextAlternatives = v22;

    objc_storeStrong(&v19->_shieldInfo, a7);
    v24 = +[NSHashTable weakObjectsHashTable];
    observers = v19->_observers;
    v19->_observers = v24;
  }

  return v19;
}

- (MKServerFormattedString)majorText
{
  v2 = [(NavSignManeuverGuidanceInfo *)self majorTextAlternatives];
  v3 = [v2 firstObject];

  return v3;
}

- (MKServerFormattedString)minorText
{
  v2 = [(NavSignManeuverGuidanceInfo *)self minorTextAlternatives];
  v3 = [v2 firstObject];

  return v3;
}

- (void)setMajorText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [(NavSignManeuverGuidanceInfo *)self setMajorTextAlternatives:v6];
  }

  else
  {
    [(NavSignManeuverGuidanceInfo *)self setMajorTextAlternatives:0];
  }
}

- (void)setMinorText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [(NavSignManeuverGuidanceInfo *)self setMinorTextAlternatives:v6];
  }

  else
  {
    [(NavSignManeuverGuidanceInfo *)self setMinorTextAlternatives:0];
  }
}

- (BOOL)matchesManeuver:(int)a3 minorTextAlternatives:(id)a4 shieldInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(NavSignManeuverGuidanceInfo *)self maneuverArtwork];
  v11 = [v10 maneuver];

  if (v11 != a3)
  {
    goto LABEL_7;
  }

  v12 = [(NavSignManeuverGuidanceInfo *)self shieldInfo];
  if (!v12)
  {
    if (!v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_10;
  }

  v13 = v12;
  v14 = [(NavSignManeuverGuidanceInfo *)self shieldInfo];
  v15 = [v14 isEqual:v9];

  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = [(NavSignManeuverGuidanceInfo *)self minorTextAlternatives];
  if ([v16 count])
  {
    v17 = [(NavSignManeuverGuidanceInfo *)self minorTextAlternatives];
    v18 = [v17 isEqualToArray:v8];
  }

  else
  {
    v18 = [v8 count] == 0;
  }

LABEL_10:
  return v18;
}

- (BOOL)matchesManeuver:(int)a3 minorTextAlternatives:(id)a4
{
  v6 = a4;
  v7 = [(NavSignManeuverGuidanceInfo *)self maneuverArtwork];
  v8 = [v7 maneuver];

  if (v8 == a3)
  {
    v9 = [(NavSignManeuverGuidanceInfo *)self minorTextAlternatives];
    if ([v9 count])
    {
      v10 = [(NavSignManeuverGuidanceInfo *)self minorTextAlternatives];
      v11 = [v10 isEqualToArray:v6];
    }

    else
    {
      v11 = [v6 count] == 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v17.receiver = self;
  v17.super_class = NavSignManeuverGuidanceInfo;
  v3 = [(NavSignManeuverGuidanceInfo *)&v17 description];
  v4 = [(NavSignManeuverGuidanceInfo *)self signID];
  v16 = [(NavSignManeuverGuidanceInfo *)self maneuverArtwork];
  v5 = [v16 maneuver];
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
      v6 = [NSString stringWithFormat:@"(unknown: %i)", v5];
      break;
  }

  v7 = [(NavSignManeuverGuidanceInfo *)self majorTextAlternatives];
  v8 = [v7 firstObject];
  v9 = [v8 debugDescription];
  v10 = [(NavSignManeuverGuidanceInfo *)self minorTextAlternatives];
  v11 = [v10 firstObject];
  v12 = [v11 debugDescription];
  v13 = [(NavSignManeuverGuidanceInfo *)self shieldInfo];
  v15 = [NSString stringWithFormat:@"%@ signID: [%@] maneuver: [%@] major: [%@] minor: [%@] shield: [%@]", v3, v4, v6, v9, v12, v13];

  return v15;
}

- (void)_notifyObserversWithBlock:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_observers allObjects];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_setNeedsChangeNotification
{
  if (!self->_willNotify)
  {
    self->_willNotify = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002B7D0;
    block[3] = &unk_100084F10;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)setManeuverArtwork:(id)a3
{
  v5 = a3;
  maneuverArtwork = self->_maneuverArtwork;
  if (maneuverArtwork != v5 && ![(GuidanceManeuverArtwork *)maneuverArtwork isEqual:v5])
  {
    objc_storeStrong(&self->_maneuverArtwork, a3);
    [(NavSignManeuverGuidanceInfo *)self _setNeedsChangeNotification];
  }

  _objc_release_x1();
}

- (void)setMajorTextAlternatives:(id)a3
{
  v4 = a3;
  majorTextAlternatives = self->_majorTextAlternatives;
  if (majorTextAlternatives != v4)
  {
    v9 = v4;
    if (!v4 || (v6 = [(NSArray *)majorTextAlternatives isEqualToArray:v4], v4 = v9, (v6 & 1) == 0))
    {
      v7 = [(NSArray *)v4 copy];
      v8 = self->_majorTextAlternatives;
      self->_majorTextAlternatives = v7;

      [(NavSignManeuverGuidanceInfo *)self _setNeedsChangeNotification];
    }
  }

  _objc_release_x1();
}

- (void)setMinorTextAlternatives:(id)a3
{
  v4 = a3;
  minorTextAlternatives = self->_minorTextAlternatives;
  if (minorTextAlternatives != v4)
  {
    v9 = v4;
    if (!v4 || (v6 = [(NSArray *)minorTextAlternatives isEqualToArray:v4], v4 = v9, (v6 & 1) == 0))
    {
      v7 = [(NSArray *)v4 copy];
      v8 = self->_minorTextAlternatives;
      self->_minorTextAlternatives = v7;

      [(NavSignManeuverGuidanceInfo *)self _setNeedsChangeNotification];
    }
  }

  _objc_release_x1();
}

- (void)setShieldInfo:(id)a3
{
  v5 = a3;
  shieldInfo = self->_shieldInfo;
  if (shieldInfo != v5 && ![(NavSignShieldInfo *)shieldInfo isEqual:v5])
  {
    objc_storeStrong(&self->_shieldInfo, a3);
    [(NavSignManeuverGuidanceInfo *)self _setNeedsChangeNotification];
  }

  _objc_release_x1();
}

@end