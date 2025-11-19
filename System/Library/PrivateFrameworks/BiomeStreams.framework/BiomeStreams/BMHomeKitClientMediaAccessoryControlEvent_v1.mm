@interface BMHomeKitClientMediaAccessoryControlEvent_v1
- (BMHomeKitClientMediaAccessoryControlEvent_v1)initWithProto:(id)a3;
@end

@implementation BMHomeKitClientMediaAccessoryControlEvent_v1

- (BMHomeKitClientMediaAccessoryControlEvent_v1)initWithProto:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v4;
      v5 = v4;
      v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v35 = v5;
      v8 = [v5 accessoryStates];
      v9 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          v14 = [v13 valueType];
          if (v14 == 3)
          {
            goto LABEL_13;
          }

          if (v14 == 2)
          {
            v18 = [v13 stringValue];
            v19 = [v13 mediaPropertyType];
            [v38 setObject:v18 forKey:v19];

LABEL_13:
            v20 = MEMORY[0x1E696AD98];
            [v13 numValue];
            v15 = [v20 numberWithDouble:?];
            v16 = [v13 mediaPropertyType];
            v17 = v6;
            goto LABEL_14;
          }

          if (v14 != 1)
          {
            goto LABEL_15;
          }

          v15 = [v13 dataValue];
          v16 = [v13 mediaPropertyType];
          v17 = v7;
LABEL_14:
          [v17 setObject:v15 forKey:v16];

LABEL_15:
        }

        v10 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (!v10)
        {
LABEL_17:

          v21 = [BMHomeKitClientBase alloc];
          v22 = v35;
          v34 = [v35 base];
          v37 = [(BMHomeKitClientBase *)v21 initWithProto:v34];
          v33 = [v35 accessoryUniqueIdentifier];
          v32 = [v35 accessoryMediaRouteIdentifier];
          v23 = [v35 zoneUniqueIdentifiers];
          v24 = [v35 roomUniqueIdentifier];
          v31 = [v35 accessoryName];
          v25 = [v35 roomName];
          v26 = [v35 zoneNames];
          v27 = [v35 homeName];
          self = [(BMHomeKitClientMediaAccessoryControlEvent *)self initWithBase:v37 accessoryUniqueIdentifier:v33 accessoryStateString:v38 accessoryStateNumber:v6 accessoryStateData:v7 accessoryMediaRouteIdentifier:v32 zoneUniqueIdentifiers:v23 roomUniqueIdentifier:v24 accessoryName:v31 roomName:v25 zoneNames:v26 homeName:v27];

          v28 = self;
          v4 = v36;
          goto LABEL_22;
        }
      }
    }

    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [BMHomeKitClientMediaAccessoryControlEvent initWithProto:];
    }

    v28 = 0;
LABEL_22:
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

@end