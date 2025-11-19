@interface ACCNavigationManeuverUpdateInfo
+ (id)keyForType:(unsigned __int16)a3;
- (ACCNavigationManeuverUpdateInfo)init;
- (BOOL)_checkDataClassForType:(unsigned __int16)a3 data:(id)a4;
@end

@implementation ACCNavigationManeuverUpdateInfo

- (ACCNavigationManeuverUpdateInfo)init
{
  v6.receiver = self;
  v6.super_class = ACCNavigationManeuverUpdateInfo;
  v2 = [(ACCNavigationManeuverUpdateInfo *)&v6 init];
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
  if (v4 <= 0xD && (((1 << v4) & 0x1BAA) != 0 || ((1 << v4) & 0x2054) != 0 || v4 == 10))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
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
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown ManeuverInfoUpdate InfoType %d", v11, 8u);
    }

    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (id)keyForType:(unsigned __int16)a3
{
  switch(a3)
  {
    case 1u:
      v3 = &ACCNav_MIUpdate_Index;
      goto LABEL_23;
    case 2u:
      v3 = &ACCNav_MIUpdate_ManeuverDescription;
      goto LABEL_23;
    case 3u:
      v3 = &ACCNav_MIUpdate_ManeuverType;
      goto LABEL_23;
    case 4u:
      v3 = &ACCNav_MIUpdate_AfterManeuverRoadName;
      goto LABEL_23;
    case 5u:
      v3 = &ACCNav_MIUpdate_DistanceBetweenManeuver;
      goto LABEL_23;
    case 6u:
      v3 = &ACCNav_MIUpdate_DistanceBetweenManeuverDisplayString;
      goto LABEL_23;
    case 7u:
      v3 = &ACCNav_MIUpdate_DistanceBetweenManeuverDisplayUnits;
      goto LABEL_23;
    case 8u:
      v3 = &ACCNav_MIUpdate_DrivingSide;
      goto LABEL_23;
    case 9u:
      v3 = &ACCNav_MIUpdate_JunctionType;
      goto LABEL_23;
    case 0xAu:
      v3 = &ACCNav_MIUpdate_JunctionElementAngle;
      goto LABEL_23;
    case 0xBu:
      v3 = &ACCNav_MIUpdate_JunctionElementExitAngle;
      goto LABEL_23;
    case 0xCu:
      v3 = &ACCNav_MIUpdate_LinkedLaneGuidanceInfo;
      goto LABEL_23;
    case 0xDu:
      v3 = &ACCNav_MIUpdate_ExitInfo;
LABEL_23:
      v7 = *v3;
      break;
    default:
      v4 = a3;
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v9 = &_os_log_default;
        v6 = &_os_log_default;
      }

      else
      {
        v9 = *gLogObjects;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10[0] = 67109120;
        v10[1] = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown ManeuverInfoUpdate InfoType %d", v10, 8u);
      }

      v7 = 0;
      break;
  }

  return v7;
}

@end