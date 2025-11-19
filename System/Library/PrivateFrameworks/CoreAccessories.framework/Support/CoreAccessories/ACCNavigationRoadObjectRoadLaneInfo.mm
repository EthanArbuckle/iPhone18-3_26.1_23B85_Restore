@interface ACCNavigationRoadObjectRoadLaneInfo
+ (id)keyForType:(unsigned __int16)a3;
- (ACCNavigationRoadObjectRoadLaneInfo)init;
- (BOOL)_checkDataClassForType:(unsigned __int16)a3 data:(id)a4;
- (id)description;
- (void)setInfoFromDictionary:(id)a3;
@end

@implementation ACCNavigationRoadObjectRoadLaneInfo

- (ACCNavigationRoadObjectRoadLaneInfo)init
{
  v6.receiver = self;
  v6.super_class = ACCNavigationRoadObjectRoadLaneInfo;
  v2 = [(ACCNavigationRoadObjectRoadLaneInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    infoDict = v2->_infoDict;
    v2->_infoDict = v3;
  }

  return v2;
}

- (id)description
{
  v14 = [(ACCNavigationRoadObjectRoadLaneInfo *)self copyInfo:0];
  v3 = [(ACCNavigationRoadObjectRoadLaneInfo *)self copyInfo:1];
  v4 = [(ACCNavigationRoadObjectRoadLaneInfo *)self copyInfo:2];
  v5 = [(ACCNavigationRoadObjectRoadLaneInfo *)self copyInfo:3];
  v6 = [(ACCNavigationRoadObjectRoadLaneInfo *)self copyInfo:4];
  v7 = [(ACCNavigationRoadObjectRoadLaneInfo *)self copyInfo:5];
  v8 = [(ACCNavigationRoadObjectRoadLaneInfo *)self copyInfo:6];
  v9 = [(ACCNavigationRoadObjectRoadLaneInfo *)self copyInfo:7];
  v10 = [(ACCNavigationRoadObjectRoadLaneInfo *)self copyInfo:8];
  v11 = [(ACCNavigationRoadObjectRoadLaneInfo *)self copyInfo:9];
  v12 = [NSString stringWithFormat:@"<ACCNavigationRoadObjectRoadLaneInfo: ID %@, state %@, type[left %@, right %@], color[left %@, right %@], width %@, curvature[center %@, left %@, right %@]>", v14, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)_checkDataClassForType:(unsigned __int16)a3 data:(id)a4
{
  v4 = a3;
  v5 = a4;
  if (v4 > 9)
  {
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
      v11[0] = 67109120;
      v11[1] = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown RoadObjectDetection:RoadLane InfoType %d", v11, 8u);
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

- (void)setInfoFromDictionary:(id)a3
{
  if (a3)
  {
    infoDict = self->_infoDict;
    v5 = a3;
    [(NSMutableDictionary *)infoDict removeAllObjects];
    _setInfoFromDictionary(v5, self->_infoDict, ACCNav_RODUpdate_RoadLane_ID);
    _setInfoFromDictionary(v5, self->_infoDict, ACCNav_RODUpdate_RoadLane_State);
    _setInfoFromDictionary(v5, self->_infoDict, ACCNav_RODUpdate_RoadLane_TypeLeft);
    _setInfoFromDictionary(v5, self->_infoDict, ACCNav_RODUpdate_RoadLane_TypeRight);
    _setInfoFromDictionary(v5, self->_infoDict, ACCNav_RODUpdate_RoadLane_ColorLeft);
    _setInfoFromDictionary(v5, self->_infoDict, ACCNav_RODUpdate_RoadLane_ColorRight);
    _setInfoFromDictionary(v5, self->_infoDict, ACCNav_RODUpdate_RoadLane_Width);
    _setInfoFromDictionary(v5, self->_infoDict, ACCNav_RODUpdate_RoadLane_CurvatureCenter);
    _setInfoFromDictionary(v5, self->_infoDict, ACCNav_RODUpdate_RoadLane_CurvatureLeft);
    _setInfoFromDictionary(v5, self->_infoDict, ACCNav_RODUpdate_RoadLane_ColorRight);
  }
}

+ (id)keyForType:(unsigned __int16)a3
{
  v3 = a3;
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 != 5)
      {
        v4 = &ACCNav_RODUpdate_RoadLane_Width;
        goto LABEL_22;
      }
    }

    else
    {
      if (a3 == 7)
      {
        v4 = &ACCNav_RODUpdate_RoadLane_CurvatureCenter;
        goto LABEL_22;
      }

      if (a3 == 8)
      {
        v4 = &ACCNav_RODUpdate_RoadLane_CurvatureLeft;
        goto LABEL_22;
      }

      if (a3 != 9)
      {
        goto LABEL_26;
      }
    }

    v4 = &ACCNav_RODUpdate_RoadLane_ColorRight;
    goto LABEL_22;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = &ACCNav_RODUpdate_RoadLane_TypeLeft;
    }

    else if (a3 == 3)
    {
      v4 = &ACCNav_RODUpdate_RoadLane_TypeRight;
    }

    else
    {
      v4 = &ACCNav_RODUpdate_RoadLane_ColorLeft;
    }

    goto LABEL_22;
  }

  if (!a3)
  {
    v4 = &ACCNav_RODUpdate_RoadLane_ID;
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = &ACCNav_RODUpdate_RoadLane_State;
LABEL_22:
    v5 = *v4;
    goto LABEL_23;
  }

LABEL_26:
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v7 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown RoadObjectDetectionInfo infoType %d", v9, 8u);
  }

  v5 = 0;
LABEL_23:

  return v5;
}

@end