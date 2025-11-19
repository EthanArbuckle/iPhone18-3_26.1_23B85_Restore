@interface ACCNavigationRouteGuidanceUpdateInfo
+ (id)keyForChargingStationInfoType:(unsigned __int16)a3;
+ (id)keyForType:(unsigned __int16)a3;
- (ACCNavigationRouteGuidanceUpdateInfo)init;
- (BOOL)_checkDataClassForType:(unsigned __int16)a3 data:(id)a4;
@end

@implementation ACCNavigationRouteGuidanceUpdateInfo

- (ACCNavigationRouteGuidanceUpdateInfo)init
{
  v6.receiver = self;
  v6.super_class = ACCNavigationRouteGuidanceUpdateInfo;
  v2 = [(ACCNavigationRouteGuidanceUpdateInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    infoDict = v2->_infoDict;
    v2->_infoDict = v3;
  }

  return v2;
}

- (BOOL)_checkDataClassForType:(unsigned __int16)a3 data:(id)a4
{
  v4 = a3;
  v5 = a4;
  if (v4 > 0x1A)
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v9 = &_os_log_default;
    }

    else
    {
      v10 = *gLogObjects;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown RouteGuidnaceUpdate InfoType %d", v11, 8u);
    }

    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)keyForType:(unsigned __int16)a3
{
  switch(a3)
  {
    case 1u:
      v3 = &ACCNav_RGUpdate_RouteGuidanceState;
      goto LABEL_28;
    case 2u:
      v3 = &ACCNav_RGUpdate_ManeuverState;
      goto LABEL_28;
    case 3u:
      v3 = &ACCNav_RGUpdate_CurrentRoadName;
      goto LABEL_28;
    case 4u:
      v3 = &ACCNav_RGUpdate_DestinationName;
      goto LABEL_28;
    case 5u:
      v3 = &ACCNav_RGUpdate_EstimatedTimeOfArrival;
      goto LABEL_28;
    case 6u:
      v3 = &ACCNav_RGUpdate_TimeRemainingToDestination;
      goto LABEL_28;
    case 7u:
      v3 = &ACCNav_RGUpdate_DistanceRemaining;
      goto LABEL_28;
    case 8u:
      v3 = &ACCNav_RGUpdate_DistanceRemainingDisplayString;
      goto LABEL_28;
    case 9u:
      v3 = &ACCNav_RGUpdate_DistanceRemainingDisplayUnits;
      goto LABEL_28;
    case 0xAu:
      v3 = &ACCNav_RGUpdate_DistanceRemainingToNextManeuver;
      goto LABEL_28;
    case 0xBu:
      v3 = &ACCNav_RGUpdate_DistanceRemainingToNextManeuverDisplayString;
      goto LABEL_28;
    case 0xCu:
      v3 = &ACCNav_RGUpdate_DistanceRemainingToNextManeuverDisplayUnits;
      goto LABEL_28;
    case 0xDu:
      v3 = &ACCNav_RGUpdate_RouteGuidanceManeuverCurrentList;
      goto LABEL_28;
    case 0xEu:
      v3 = &ACCNav_RGUpdate_RouteGuidanceManeuverCount;
      goto LABEL_28;
    case 0xFu:
      v3 = &ACCNav_RGUpdate_RouteGuidanceBeingShownInApp;
      goto LABEL_28;
    case 0x10u:
      v3 = &ACCNav_RGUpdate_LaneGuidanceCurrentIndex;
      goto LABEL_28;
    case 0x11u:
      v3 = &ACCNav_RGUpdate_LaneGuidanceTotalCount;
      goto LABEL_28;
    case 0x12u:
      v3 = &ACCNav_RGUpdate_LaneGuidanceShowing;
      goto LABEL_28;
    case 0x13u:
      v3 = &ACCNav_RGUpdate_SourceName;
      goto LABEL_28;
    case 0x14u:
      v3 = &ACCNav_RGUpdate_SourceSupportsRouteGuidance;
      goto LABEL_28;
    case 0x15u:
      v3 = &ACCNav_RGUpdate_DestinationTimeZoneOffsetMinutes;
      goto LABEL_28;
    case 0x16u:
      v3 = &ACCNav_RGUpdate_StopType;
      goto LABEL_28;
    case 0x17u:
      v3 = &ACCNav_RGUpdate_ChargingStationInfoList;
      goto LABEL_28;
    case 0x18u:
      v3 = &ACCNav_RGUpdate_ArrivalBatteryLevel;
      goto LABEL_28;
    case 0x19u:
      v3 = &ACCNav_RGUpdate_DepartureBatteryLevel;
      goto LABEL_28;
    case 0x1Au:
      v3 = &ACCNav_RGUpdate_FinalWaypointBatteryLevel;
LABEL_28:
      v4 = *v3;
      break;
    default:
      v6 = a3;
      if (gLogObjects)
      {
        v7 = gNumLogObjects < 1;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v9 = &_os_log_default;
        v8 = &_os_log_default;
      }

      else
      {
        v9 = *gLogObjects;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10[0] = 67109120;
        v10[1] = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown RouteGuidnaceUpdate InfoType %d", v10, 8u);
      }

      v4 = 0;
      break;
  }

  return v4;
}

+ (id)keyForChargingStationInfoType:(unsigned __int16)a3
{
  if (a3 == 2)
  {
    v4 = &ACCNav_RGUpdate_ChargingStationInfo_Power;
    goto LABEL_7;
  }

  v3 = a3;
  if (a3 == 1)
  {
    v4 = &ACCNav_RGUpdate_ChargingStationInfo_Voltage;
    goto LABEL_7;
  }

  if (!a3)
  {
    v4 = &ACCNav_RGUpdate_ChargingStationInfo_ConnectorType;
LABEL_7:
    v5 = *v4;
    goto LABEL_19;
  }

  if (gLogObjects)
  {
    v6 = gNumLogObjects < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *gLogObjects;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown RouteGuidnaceUpdate CharginStation InfoType %d", v10, 8u);
  }

  v5 = 0;
LABEL_19:

  return v5;
}

@end