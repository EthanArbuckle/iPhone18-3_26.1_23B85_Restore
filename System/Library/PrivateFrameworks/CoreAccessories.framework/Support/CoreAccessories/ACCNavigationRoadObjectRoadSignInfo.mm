@interface ACCNavigationRoadObjectRoadSignInfo
+ (id)keyForType:(unsigned __int16)type;
- (ACCNavigationRoadObjectRoadSignInfo)init;
- (BOOL)_checkDataClassForType:(unsigned __int16)type data:(id)data;
- (id)description;
- (void)setInfoFromDictionary:(id)dictionary;
@end

@implementation ACCNavigationRoadObjectRoadSignInfo

- (ACCNavigationRoadObjectRoadSignInfo)init
{
  v6.receiver = self;
  v6.super_class = ACCNavigationRoadObjectRoadSignInfo;
  v2 = [(ACCNavigationRoadObjectRoadSignInfo *)&v6 init];
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
  v3 = [(ACCNavigationRoadObjectRoadSignInfo *)self copyInfo:0];
  v4 = [(ACCNavigationRoadObjectRoadSignInfo *)self copyInfo:1];
  v5 = [(ACCNavigationRoadObjectRoadSignInfo *)self copyInfo:2];
  v6 = [(ACCNavigationRoadObjectRoadSignInfo *)self copyInfo:3];
  v7 = [(ACCNavigationRoadObjectRoadSignInfo *)self copyInfo:4];
  v8 = [(ACCNavigationRoadObjectRoadSignInfo *)self copyInfo:5];
  v9 = [NSString stringWithFormat:@"<ACCNavigationRoadObjectRoadSignInfo: ID %@, state %@, type %@, value '%@', lateralOffset %@, forwardOffset %@>", v3, v4, v5, v6, v7, v8];

  return v9;
}

- (BOOL)_checkDataClassForType:(unsigned __int16)type data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  if (typeCopy > 5)
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
      v11[1] = typeCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown RoadObjectDetection:RoadSign InfoType %d", v11, 8u);
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
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadSign_ID);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadSign_State);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadSign_Type);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadSign_Value);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadSign_LateralOffset);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_RoadSign_ForwardOffset);
  }
}

+ (id)keyForType:(unsigned __int16)type
{
  typeCopy = type;
  if (type > 2)
  {
    switch(type)
    {
      case 3u:
        v4 = &ACCNav_RODUpdate_RoadSign_Value;
        goto LABEL_17;
      case 4u:
        v4 = &ACCNav_RODUpdate_RoadSign_LateralOffset;
        goto LABEL_17;
      case 5u:
        v4 = &ACCNav_RODUpdate_RoadSign_ForwardOffset;
        goto LABEL_17;
    }
  }

  else
  {
    switch(type)
    {
      case 0u:
        v4 = &ACCNav_RODUpdate_RoadSign_ID;
        goto LABEL_17;
      case 1u:
        v4 = &ACCNav_RODUpdate_RoadSign_State;
        goto LABEL_17;
      case 2u:
        v4 = &ACCNav_RODUpdate_RoadSign_Type;
LABEL_17:
        v6 = *v4;
        goto LABEL_18;
    }
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v5 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = typeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown RoadObjectDetectionInfo infoType %d", v9, 8u);
  }

  v6 = 0;
LABEL_18:

  return v6;
}

@end