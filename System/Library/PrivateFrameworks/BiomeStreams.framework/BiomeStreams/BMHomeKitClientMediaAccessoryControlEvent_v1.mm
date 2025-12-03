@interface BMHomeKitClientMediaAccessoryControlEvent_v1
- (BMHomeKitClientMediaAccessoryControlEvent_v1)initWithProto:(id)proto;
@end

@implementation BMHomeKitClientMediaAccessoryControlEvent_v1

- (BMHomeKitClientMediaAccessoryControlEvent_v1)initWithProto:(id)proto
{
  v44 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = protoCopy;
      v5 = protoCopy;
      v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v35 = v5;
      accessoryStates = [v5 accessoryStates];
      v9 = [accessoryStates countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = v9;
      v11 = *v40;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(accessoryStates);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          valueType = [v13 valueType];
          if (valueType == 3)
          {
            goto LABEL_13;
          }

          if (valueType == 2)
          {
            stringValue = [v13 stringValue];
            mediaPropertyType = [v13 mediaPropertyType];
            [v38 setObject:stringValue forKey:mediaPropertyType];

LABEL_13:
            v20 = MEMORY[0x1E696AD98];
            [v13 numValue];
            dataValue = [v20 numberWithDouble:?];
            mediaPropertyType2 = [v13 mediaPropertyType];
            v17 = v6;
            goto LABEL_14;
          }

          if (valueType != 1)
          {
            goto LABEL_15;
          }

          dataValue = [v13 dataValue];
          mediaPropertyType2 = [v13 mediaPropertyType];
          v17 = v7;
LABEL_14:
          [v17 setObject:dataValue forKey:mediaPropertyType2];

LABEL_15:
        }

        v10 = [accessoryStates countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (!v10)
        {
LABEL_17:

          v21 = [BMHomeKitClientBase alloc];
          v22 = v35;
          base = [v35 base];
          v37 = [(BMHomeKitClientBase *)v21 initWithProto:base];
          accessoryUniqueIdentifier = [v35 accessoryUniqueIdentifier];
          accessoryMediaRouteIdentifier = [v35 accessoryMediaRouteIdentifier];
          zoneUniqueIdentifiers = [v35 zoneUniqueIdentifiers];
          roomUniqueIdentifier = [v35 roomUniqueIdentifier];
          accessoryName = [v35 accessoryName];
          roomName = [v35 roomName];
          zoneNames = [v35 zoneNames];
          homeName = [v35 homeName];
          self = [(BMHomeKitClientMediaAccessoryControlEvent *)self initWithBase:v37 accessoryUniqueIdentifier:accessoryUniqueIdentifier accessoryStateString:v38 accessoryStateNumber:v6 accessoryStateData:v7 accessoryMediaRouteIdentifier:accessoryMediaRouteIdentifier zoneUniqueIdentifiers:zoneUniqueIdentifiers roomUniqueIdentifier:roomUniqueIdentifier accessoryName:accessoryName roomName:roomName zoneNames:zoneNames homeName:homeName];

          selfCopy = self;
          protoCopy = v36;
          goto LABEL_22;
        }
      }
    }

    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [BMHomeKitClientMediaAccessoryControlEvent initWithProto:];
    }

    selfCopy = 0;
LABEL_22:
  }

  else
  {
    selfCopy = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end