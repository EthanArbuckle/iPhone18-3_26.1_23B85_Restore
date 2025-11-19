@interface ACCNavigationLaneGuidanceLaneInfo
+ (id)keyForType:(unsigned __int16)a3;
- (ACCNavigationLaneGuidanceLaneInfo)init;
- (BOOL)_checkDataClassForType:(unsigned __int16)a3 data:(id)a4;
@end

@implementation ACCNavigationLaneGuidanceLaneInfo

- (ACCNavigationLaneGuidanceLaneInfo)init
{
  v6.receiver = self;
  v6.super_class = ACCNavigationLaneGuidanceLaneInfo;
  v2 = [(ACCNavigationLaneGuidanceLaneInfo *)&v6 init];
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
  if (v4 >= 4)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v8 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown LaneGuidanceInfoUpdate:LaneInfo InfoType %d", v10, 8u);
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
  v3 = a3;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = &ACCNav_LGIUpdate_LaneInfo_Angle;
      goto LABEL_18;
    }

    if (a3 == 3)
    {
      v4 = &ACCNav_LGIUpdate_LaneInfo_AngleHighlight;
      goto LABEL_18;
    }
  }

  else
  {
    if (!a3)
    {
      v4 = &ACCNav_LGIUpdate_LaneInfo_Index;
      goto LABEL_18;
    }

    if (a3 == 1)
    {
      v4 = &ACCNav_LGIUpdate_LaneInfo_Status;
LABEL_18:
      v7 = *v4;
      goto LABEL_19;
    }
  }

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
    v10[1] = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown LaneGuidanceInfoUpdate:LaneInfo InfoType %d", v10, 8u);
  }

  v7 = 0;
LABEL_19:

  return v7;
}

@end