@interface ACCNavigationRoadObjectDetectionInfo
+ (id)keyForType:(unsigned __int16)type;
- (ACCNavigationRoadObjectDetectionInfo)init;
- (BOOL)_checkDataClassForType:(unsigned __int16)type data:(id)data;
- (id)description;
- (void)setInfoFromDictionary:(id)dictionary;
@end

@implementation ACCNavigationRoadObjectDetectionInfo

- (ACCNavigationRoadObjectDetectionInfo)init
{
  v6.receiver = self;
  v6.super_class = ACCNavigationRoadObjectDetectionInfo;
  v2 = [(ACCNavigationRoadObjectDetectionInfo *)&v6 init];
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
  v2 = [(ACCNavigationRoadObjectDetectionInfo *)self copyInfo:0];
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"[ "];
  v4 = [v2 count];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v30;
    do
    {
      v10 = 0;
      v28 = v8;
      v11 = v8 + 1;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v29 + 1) + 8 * v10);
        if (v4 > v11)
        {
          v13 = [*(*(&v29 + 1) + 8 * v10) description];
          [v3 appendFormat:@"%@, ", v13];
        }

        v14 = [v12 description];
        [v3 appendFormat:@"%@ ", v14];

        v10 = v10 + 1;
        ++v11;
      }

      while (v7 != v10);
      v8 = v28 + v7;
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  v15 = v5;

  [v3 appendFormat:@"]"];
  v16 = [v3 copy];

  v17 = [(ACCNavigationRoadObjectDetectionInfo *)self copyInfo:1];
  v18 = [(ACCNavigationRoadObjectDetectionInfo *)self copyInfo:2];
  v19 = [(ACCNavigationRoadObjectDetectionInfo *)self copyInfo:3];
  v20 = [(ACCNavigationRoadObjectDetectionInfo *)self copyInfo:4];
  v21 = [v20 count];
  v22 = [(ACCNavigationRoadObjectDetectionInfo *)self copyInfo:5];
  v23 = [v22 count];
  v24 = [(ACCNavigationRoadObjectDetectionInfo *)self copyInfo:6];
  v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<ACCNavigationRoadObjectDetectionInfo: componentIDs %@, timestamp %@, egoSpeed %@, egoYawRate %@, roadSign count %lu, roadLane count %lu, roadObject count %lu>", v16, v17, v18, v19, v21, v23, [v24 count]);

  return v25;
}

- (BOOL)_checkDataClassForType:(unsigned __int16)type data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  if (typeCopy > 6)
  {
    isKindOfClass = 0;
  }

  else
  {
    v6 = *(&off_100226B50)[typeCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)setInfoFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    [(NSMutableDictionary *)self->_infoDict removeAllObjects];
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_ID);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_Timestamp);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_EgoSpeed);
    _setInfoFromDictionary(dictionaryCopy, self->_infoDict, ACCNav_RODUpdate_EgoYawRate);
    v5 = [dictionaryCopy objectForKey:ACCNav_RODUpdate_RoadSign];
    selfCopy = self;
    if (v5)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v42;
        do
        {
          v11 = 0;
          do
          {
            if (*v42 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v41 + 1) + 8 * v11);
            v13 = objc_alloc_init(ACCNavigationRoadObjectRoadSignInfo);
            [(ACCNavigationRoadObjectRoadSignInfo *)v13 setInfoFromDictionary:v12];
            [v6 addObject:v13];

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v9);
      }

      [(NSMutableDictionary *)selfCopy->_infoDict setObject:v6 forKey:ACCNav_RODUpdate_RoadSign];
    }

    v14 = [dictionaryCopy objectForKey:ACCNav_RODUpdate_RoadLane];

    if (v14)
    {
      v15 = objc_alloc_init(NSMutableArray);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v38;
        do
        {
          v20 = 0;
          do
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v37 + 1) + 8 * v20);
            v22 = objc_alloc_init(ACCNavigationRoadObjectRoadLaneInfo);
            [(ACCNavigationRoadObjectRoadLaneInfo *)v22 setInfoFromDictionary:v21];
            [v15 addObject:v22];

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v18);
      }

      [(NSMutableDictionary *)selfCopy->_infoDict setObject:v15 forKey:ACCNav_RODUpdate_RoadLane];
    }

    v23 = [dictionaryCopy objectForKey:ACCNav_RODUpdate_RoadObject];

    if (v23)
    {
      v24 = objc_alloc_init(NSMutableArray);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v25 = v23;
      v26 = [v25 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v34;
        do
        {
          v29 = 0;
          do
          {
            if (*v34 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v33 + 1) + 8 * v29);
            v31 = objc_alloc_init(ACCNavigationRoadObjectRoadObjectInfo);
            [(ACCNavigationRoadObjectRoadObjectInfo *)v31 setInfoFromDictionary:v30];
            [v24 addObject:v31];

            v29 = v29 + 1;
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v33 objects:v45 count:16];
        }

        while (v27);
      }

      [(NSMutableDictionary *)selfCopy->_infoDict setObject:v24 forKey:ACCNav_RODUpdate_RoadObject];
    }
  }
}

+ (id)keyForType:(unsigned __int16)type
{
  typeCopy = type;
  if (type <= 2)
  {
    switch(type)
    {
      case 0u:
        v4 = &ACCNav_RODUpdate_ID;
        goto LABEL_19;
      case 1u:
        v4 = &ACCNav_RODUpdate_Timestamp;
        goto LABEL_19;
      case 2u:
        v4 = &ACCNav_RODUpdate_EgoSpeed;
LABEL_19:
        v6 = *v4;
        goto LABEL_20;
    }
  }

  else
  {
    if (type <= 4)
    {
      if (type == 3)
      {
        v4 = &ACCNav_RODUpdate_EgoYawRate;
      }

      else
      {
        v4 = &ACCNav_RODUpdate_RoadSign;
      }

      goto LABEL_19;
    }

    if (type == 5)
    {
      v4 = &ACCNav_RODUpdate_RoadLane;
      goto LABEL_19;
    }

    if (type == 6)
    {
      v4 = &ACCNav_RODUpdate_RoadObject;
      goto LABEL_19;
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
LABEL_20:

  return v6;
}

@end