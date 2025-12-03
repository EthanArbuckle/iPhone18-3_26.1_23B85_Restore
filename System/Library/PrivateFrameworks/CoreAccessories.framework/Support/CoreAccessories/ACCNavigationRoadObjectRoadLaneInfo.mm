@interface ACCNavigationRoadObjectRoadLaneInfo
+ (id)keyForType:(unsigned __int16)type;
- (ACCNavigationRoadObjectRoadLaneInfo)init;
- (BOOL)_checkDataClassForType:(unsigned __int16)type data:(id)data;
- (id)description;
- (void)setInfoFromDictionary:(id)dictionary;
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

- (BOOL)_checkDataClassForType:(unsigned __int16)type data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  if (typeCopy > 9)
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
      v11[1] = typeCopy;
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

- (void)setInfoFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    infoDict = self->_infoDict;
    dictionaryCopy = dictionary;
    [(NSMutableDictionary *)infoDict removeAllObjects];
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadLane_ID);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadLane_State);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadLane_TypeLeft);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadLane_TypeRight);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadLane_ColorLeft);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadLane_ColorRight);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadLane_Width);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadLane_CurvatureCenter);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadLane_CurvatureLeft);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadLane_ColorRight);
  }
}

+ (id)keyForType:(unsigned __int16)type
{
  typeCopy = type;
  if (type > 4)
  {
    if (type <= 6)
    {
      if (type != 5)
      {
        v4 = &ACCNav_RODUpdate_RoadLane_Width;
        goto LABEL_22;
      }
    }

    else
    {
      if (type == 7)
      {
        v4 = &ACCNav_RODUpdate_RoadLane_CurvatureCenter;
        goto LABEL_22;
      }

      if (type == 8)
      {
        v4 = &ACCNav_RODUpdate_RoadLane_CurvatureLeft;
        goto LABEL_22;
      }

      if (type != 9)
      {
        goto LABEL_26;
      }
    }

    v4 = &ACCNav_RODUpdate_RoadLane_ColorRight;
    goto LABEL_22;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      v4 = &ACCNav_RODUpdate_RoadLane_TypeLeft;
    }

    else if (type == 3)
    {
      v4 = &ACCNav_RODUpdate_RoadLane_TypeRight;
    }

    else
    {
      v4 = &ACCNav_RODUpdate_RoadLane_ColorLeft;
    }

    goto LABEL_22;
  }

  if (!type)
  {
    v4 = &ACCNav_RODUpdate_RoadLane_ID;
    goto LABEL_22;
  }

  if (type == 1)
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
    v9[1] = typeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown RoadObjectDetectionInfo infoType %d", v9, 8u);
  }

  v5 = 0;
LABEL_23:

  return v5;
}

@end