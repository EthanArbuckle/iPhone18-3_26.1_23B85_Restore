@interface ACCNavigationLaneGuidanceInfo
+ (id)keyForType:(unsigned __int16)type;
- (ACCNavigationLaneGuidanceInfo)init;
- (BOOL)_checkDataClassForType:(unsigned __int16)type data:(id)data;
- (id)copyDictionary;
@end

@implementation ACCNavigationLaneGuidanceInfo

- (ACCNavigationLaneGuidanceInfo)init
{
  v6.receiver = self;
  v6.super_class = ACCNavigationLaneGuidanceInfo;
  v2 = [(ACCNavigationLaneGuidanceInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    infoDict = v2->_infoDict;
    v2->_infoDict = v3;
  }

  return v2;
}

- (BOOL)_checkDataClassForType:(unsigned __int16)type data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  if (typeCopy >= 4)
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
      v10[1] = typeCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown LaneGuidanceInfoUpdate InfoType %d", v10, 8u);
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

- (id)copyDictionary
{
  v2 = [NSMutableDictionary dictionaryWithDictionary:self->_infoDict];
  v3 = [v2 objectForKey:ACCNav_LGIUpdate_LaneInfo];
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          copyDictionary = [*(*(&v12 + 1) + 8 * v9) copyDictionary];
          [v4 addObject:copyDictionary];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [v2 setObject:v4 forKey:ACCNav_LGIUpdate_LaneInfo];
  }

  return v2;
}

+ (id)keyForType:(unsigned __int16)type
{
  if (type == 3)
  {
    v4 = &ACCNav_LGIUpdate_InstructionText;
    goto LABEL_7;
  }

  typeCopy = type;
  if (type == 2)
  {
    v4 = &ACCNav_LGIUpdate_LaneInfo;
    goto LABEL_7;
  }

  if (type == 1)
  {
    v4 = &ACCNav_LGIUpdate_LaneGuidanceIndex;
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
    v10[1] = typeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[#Navigation] ERROR: Unknown LaneGuidanceInfoUpdate InfoType %d", v10, 8u);
  }

  v5 = 0;
LABEL_19:

  return v5;
}

@end