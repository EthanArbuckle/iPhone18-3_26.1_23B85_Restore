@interface ACCNavigationRoadObjectRoadObjectInfo
+ (id)keyForType:(unsigned __int16)type;
- (ACCNavigationRoadObjectRoadObjectInfo)init;
- (BOOL)_checkDataClassForType:(unsigned __int16)type data:(id)data;
- (id)description;
- (void)setInfoFromDictionary:(id)dictionary;
@end

@implementation ACCNavigationRoadObjectRoadObjectInfo

- (ACCNavigationRoadObjectRoadObjectInfo)init
{
  v6.receiver = self;
  v6.super_class = ACCNavigationRoadObjectRoadObjectInfo;
  v2 = [(ACCNavigationRoadObjectRoadObjectInfo *)&v6 init];
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
  v14 = [(ACCNavigationRoadObjectRoadObjectInfo *)self copyInfo:0];
  v3 = [(ACCNavigationRoadObjectRoadObjectInfo *)self copyInfo:1];
  v4 = [(ACCNavigationRoadObjectRoadObjectInfo *)self copyInfo:2];
  v5 = [(ACCNavigationRoadObjectRoadObjectInfo *)self copyInfo:3];
  v6 = [(ACCNavigationRoadObjectRoadObjectInfo *)self copyInfo:4];
  v7 = [(ACCNavigationRoadObjectRoadObjectInfo *)self copyInfo:5];
  v8 = [(ACCNavigationRoadObjectRoadObjectInfo *)self copyInfo:6];
  v9 = [(ACCNavigationRoadObjectRoadObjectInfo *)self copyInfo:7];
  v10 = [(ACCNavigationRoadObjectRoadObjectInfo *)self copyInfo:8];
  v11 = [(ACCNavigationRoadObjectRoadObjectInfo *)self copyInfo:9];
  v12 = [NSString stringWithFormat:@"<ACCNavigationRoadObjectRoadObjectInfo: ID %@, state %@, type %@, isMoving %@, lateral[offset %@, speed %@, accel %@] forward[offset %@, speed %@, accel %@]>", v14, v3, v4, v5, v6, v7, v8, v9, v10, v11];

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
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown RoadObjectDetection:RoadObject InfoType %d", v11, 8u);
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
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadObject_ID);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadObject_State);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadObject_Type);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadObject_IsMoving);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadObject_LateralOffset);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadObject_LateralSpeed);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadObject_LateralAccel);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadObject_ForwardOffset);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadObject_ForwardSpeed);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadObject_ForwardAccel);
  }
}

+ (id)keyForType:(unsigned __int16)type
{
  typeCopy = type;
  if (type > 4)
  {
    if (type <= 6)
    {
      if (type == 5)
      {
        v4 = &ACCNav_RODUpdate_RoadObject_LateralSpeed;
      }

      else
      {
        v4 = &ACCNav_RODUpdate_RoadObject_LateralAccel;
      }

      goto LABEL_22;
    }

    switch(type)
    {
      case 7u:
        v4 = &ACCNav_RODUpdate_RoadObject_ForwardOffset;
        goto LABEL_22;
      case 8u:
        v4 = &ACCNav_RODUpdate_RoadObject_ForwardSpeed;
        goto LABEL_22;
      case 9u:
        v4 = &ACCNav_RODUpdate_RoadObject_ForwardAccel;
LABEL_22:
        v5 = *v4;
        goto LABEL_23;
    }
  }

  else
  {
    if (type > 1)
    {
      if (type == 2)
      {
        v4 = &ACCNav_RODUpdate_RoadObject_Type;
      }

      else if (type == 3)
      {
        v4 = &ACCNav_RODUpdate_RoadObject_IsMoving;
      }

      else
      {
        v4 = &ACCNav_RODUpdate_RoadObject_LateralOffset;
      }

      goto LABEL_22;
    }

    if (!type)
    {
      v4 = &ACCNav_RODUpdate_RoadObject_ID;
      goto LABEL_22;
    }

    if (type == 1)
    {
      v4 = &ACCNav_RODUpdate_RoadObject_State;
      goto LABEL_22;
    }
  }

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