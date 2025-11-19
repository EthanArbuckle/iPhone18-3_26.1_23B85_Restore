@interface BMHomeKitClientMediaAccessoryControlEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMHomeKitClientMediaAccessoryControlEvent)initWithBase:(id)a3 accessoryUniqueIdentifier:(id)a4 accessoryStateString:(id)a5 accessoryStateNumber:(id)a6 accessoryStateData:(id)a7 accessoryMediaRouteIdentifier:(id)a8 zoneUniqueIdentifiers:(id)a9 roomUniqueIdentifier:(id)a10 accessoryName:(id)a11 roomName:(id)a12 zoneNames:(id)a13 homeName:(id)a14;
- (BMHomeKitClientMediaAccessoryControlEvent)initWithProto:(id)a3;
- (BMHomeKitClientMediaAccessoryControlEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMHomeKitClientMediaAccessoryControlEvent

- (BMHomeKitClientMediaAccessoryControlEvent)initWithBase:(id)a3 accessoryUniqueIdentifier:(id)a4 accessoryStateString:(id)a5 accessoryStateNumber:(id)a6 accessoryStateData:(id)a7 accessoryMediaRouteIdentifier:(id)a8 zoneUniqueIdentifiers:(id)a9 roomUniqueIdentifier:(id)a10 accessoryName:(id)a11 roomName:(id)a12 zoneNames:(id)a13 homeName:(id)a14
{
  v38 = a3;
  v27 = a4;
  v37 = a4;
  v28 = a5;
  v36 = a5;
  v29 = a6;
  v35 = a6;
  v34 = a7;
  v33 = a8;
  v32 = a9;
  v31 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v39.receiver = self;
  v39.super_class = BMHomeKitClientMediaAccessoryControlEvent;
  v23 = [(BMEventBase *)&v39 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_base, a3);
    objc_storeStrong(&v24->_accessoryUniqueIdentifier, v27);
    objc_storeStrong(&v24->_accessoryStateString, v28);
    objc_storeStrong(&v24->_accessoryStateNumber, v29);
    objc_storeStrong(&v24->_accessoryStateData, a7);
    objc_storeStrong(&v24->_accessoryMediaRouteIdentifier, a8);
    objc_storeStrong(&v24->_zoneUniqueIdentifiers, a9);
    objc_storeStrong(&v24->_roomUniqueIdentifier, a10);
    objc_storeStrong(&v24->_accessoryName, a11);
    objc_storeStrong(&v24->_roomName, a12);
    objc_storeStrong(&v24->_zoneNames, a13);
    objc_storeStrong(&v24->_homeName, a14);
  }

  return v24;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  base = self->_base;
  zoneNames = self->_zoneNames;
  v6 = [v3 initWithFormat:@"BMHomeKitClientMediaAccessoryControlEvent event with base: %@, accessoryUniqueIdentifier: %@, accessoryStateString: %@, accessoryStateNumber: %@, accessoryStateData: %@, accessoryMediaRouteIdentifier: %@, zoneUniqueIdentifiers: %@, roomUniqueIdentifier: %@, accessoryName: %@, roomName: %@, zoneNames: %@, homeName: %@", base, self->_accessoryUniqueIdentifier, self->_accessoryStateString, self->_accessoryStateNumber, self->_accessoryStateData, self->_accessoryMediaRouteIdentifier, self->_zoneUniqueIdentifiers, self->_roomUniqueIdentifier, self->_accessoryName, self->_roomName, zoneNames, self->_homeName];

  return v6;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (!a4)
  {
    v7 = a1;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v7 = BMHomeKitClientMediaAccessoryControlEvent_v1;
LABEL_5:
    v8 = [[v7 alloc] initWithProtoData:v6];
    goto LABEL_9;
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [BMHomeKitClientMediaAccessoryControlEvent eventWithData:v9 dataVersion:?];
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)encodeAsProto
{
  v2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMHomeKitClientMediaAccessoryControlEvent)initWithProto:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = self;
      v36 = v4;
      v5 = v4;
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v34 = v5;
      v9 = [v5 accessoryStates];
      v10 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (!v10)
      {
        goto LABEL_17;
      }

      v11 = v10;
      v12 = *v40;
      while (1)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = [v14 valueType];
          if (v15)
          {
            if (v15 == 2)
            {
              v19 = MEMORY[0x1E696AD98];
              [v14 numValue];
              v16 = [v19 numberWithDouble:?];
              v17 = [v14 mediaPropertyType];
              v18 = v7;
            }

            else
            {
              if (v15 != 1)
              {
                goto LABEL_15;
              }

              v16 = [v14 stringValue];
              v17 = [v14 mediaPropertyType];
              v18 = v6;
            }
          }

          else
          {
            v16 = [v14 dataValue];
            v17 = [v14 mediaPropertyType];
            v18 = v8;
          }

          [v18 setObject:v16 forKey:v17];

LABEL_15:
        }

        v11 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (!v11)
        {
LABEL_17:

          v20 = [BMHomeKitClientBase alloc];
          v21 = v34;
          v33 = [v34 base];
          v38 = [(BMHomeKitClientBase *)v20 initWithProto:v33];
          v37 = [v34 accessoryUniqueIdentifier];
          v32 = [v34 accessoryMediaRouteIdentifier];
          v31 = [v34 zoneUniqueIdentifiers];
          v30 = [v34 roomUniqueIdentifier];
          v22 = [v34 accessoryName];
          v23 = [v34 roomName];
          v24 = [v34 zoneNames];
          v25 = [v34 homeName];
          v26 = v6;
          self = [(BMHomeKitClientMediaAccessoryControlEvent *)v35 initWithBase:v38 accessoryUniqueIdentifier:v37 accessoryStateString:v6 accessoryStateNumber:v7 accessoryStateData:v8 accessoryMediaRouteIdentifier:v32 zoneUniqueIdentifiers:v31 roomUniqueIdentifier:v30 accessoryName:v22 roomName:v23 zoneNames:v24 homeName:v25];

          v27 = self;
          v4 = v36;
          goto LABEL_22;
        }
      }
    }

    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [BMHomeKitClientMediaAccessoryControlEvent initWithProto:];
    }

    v27 = 0;
LABEL_22:
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BMHomeKitClientMediaAccessoryControlEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBHomeKitClientMediaAccessoryControlEvent alloc] initWithData:v4];

    self = [(BMHomeKitClientMediaAccessoryControlEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(BMHomeKitClientMediaAccessoryControlEvent *)self base];
  v5 = [v4 proto];
  [v3 setBase:v5];

  v6 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryUniqueIdentifier];
  v48 = v3;
  [v3 setAccessoryUniqueIdentifier:v6];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateString];
  v9 = [v8 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v58;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v58 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v57 + 1) + 8 * i);
        v14 = objc_opt_new();
        [v14 setMediaPropertyType:v13];
        v15 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateString];
        v16 = [v15 objectForKey:v13];
        [v14 setStringValue:v16];

        [v14 setValueType:1];
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v10);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v17 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateNumber];
  v18 = [v17 countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v54;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v54 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v53 + 1) + 8 * j);
        v23 = objc_opt_new();
        [v23 setMediaPropertyType:v22];
        v24 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateNumber];
        v25 = [v24 objectForKey:v22];

        [v25 doubleValue];
        [v23 setNumValue:?];
        [v23 setValueType:2];
        [v7 addObject:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v19);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v26 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateData];
  v27 = [v26 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v50;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v50 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v49 + 1) + 8 * k);
        v32 = objc_opt_new();
        [v32 setMediaPropertyType:v31];
        v33 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateData];
        v34 = [v33 objectForKey:v31];
        [v32 setDataValue:v34];

        [v32 setValueType:0];
        [v7 addObject:v32];
      }

      v28 = [v26 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v28);
  }

  [v48 setAccessoryStates:v7];
  v35 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryMediaRouteIdentifier];
  [v48 setAccessoryMediaRouteIdentifier:v35];

  v36 = MEMORY[0x1E695DF70];
  v37 = [(BMHomeKitClientMediaAccessoryControlEvent *)self zoneUniqueIdentifiers];
  v38 = [v36 arrayWithArray:v37];
  [v48 setZoneUniqueIdentifiers:v38];

  v39 = [(BMHomeKitClientMediaAccessoryControlEvent *)self roomUniqueIdentifier];
  [v48 setRoomUniqueIdentifier:v39];

  v40 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryName];
  [v48 setAccessoryName:v40];

  v41 = [(BMHomeKitClientMediaAccessoryControlEvent *)self roomName];
  [v48 setRoomName:v41];

  v42 = MEMORY[0x1E695DF70];
  v43 = [(BMHomeKitClientMediaAccessoryControlEvent *)self zoneNames];
  v44 = [v42 arrayWithArray:v43];
  [v48 setZoneNames:v44];

  v45 = [(BMHomeKitClientMediaAccessoryControlEvent *)self homeName];
  [v48 setHomeName:v45];

  v46 = *MEMORY[0x1E69E9840];

  return v48;
}

- (BOOL)isEqual:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [(BMHomeKitClientMediaAccessoryControlEvent *)self base];
    if (v11 || ([v10 base], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = [(BMHomeKitClientMediaAccessoryControlEvent *)self base];
      v5 = [v10 base];
      v40 = [v4 isEqual:v5];

      if (v11)
      {
LABEL_9:

        v13 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryUniqueIdentifier];
        if (v13 || ([v10 accessoryUniqueIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v4 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryUniqueIdentifier];
          v5 = [v10 accessoryUniqueIdentifier];
          v39 = [v4 isEqual:v5];

          if (v13)
          {
LABEL_15:

            v14 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateString];
            if (v14 || ([v10 accessoryStateString], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v4 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateString];
              v5 = [v10 accessoryStateString];
              v38 = [v4 isEqual:v5];

              if (v14)
              {
LABEL_21:

                v15 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateNumber];
                if (v15 || ([v10 accessoryStateNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v4 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateNumber];
                  v5 = [v10 accessoryStateNumber];
                  v37 = [v4 isEqual:v5];

                  if (v15)
                  {
LABEL_27:

                    v16 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateData];
                    if (v16 || ([v10 accessoryStateData], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      v4 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateData];
                      v5 = [v10 accessoryStateData];
                      v36 = [v4 isEqual:v5];

                      if (v16)
                      {
LABEL_33:

                        v17 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryMediaRouteIdentifier];
                        if (v17 || ([v10 accessoryMediaRouteIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          v4 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryMediaRouteIdentifier];
                          v5 = [v10 accessoryMediaRouteIdentifier];
                          v35 = [v4 isEqual:v5];

                          if (v17)
                          {
LABEL_39:

                            v18 = [(BMHomeKitClientMediaAccessoryControlEvent *)self zoneUniqueIdentifiers];
                            if (v18 || ([v10 zoneUniqueIdentifiers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                            {
                              v4 = [(BMHomeKitClientMediaAccessoryControlEvent *)self zoneUniqueIdentifiers];
                              v5 = [v10 zoneUniqueIdentifiers];
                              HIDWORD(v34) = [v4 isEqual:v5];

                              if (v18)
                              {
LABEL_45:

                                v19 = [(BMHomeKitClientMediaAccessoryControlEvent *)self roomUniqueIdentifier];
                                if (v19 || ([v10 roomUniqueIdentifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
                                {
                                  v5 = [(BMHomeKitClientMediaAccessoryControlEvent *)self roomUniqueIdentifier];
                                  v6 = [v10 roomUniqueIdentifier];
                                  LODWORD(v34) = [v5 isEqual:v6];

                                  if (v19)
                                  {
LABEL_51:

                                    v20 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryName];
                                    if (v20 || ([v10 accessoryName], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
                                    {
                                      v6 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryName];
                                      v7 = [v10 accessoryName];
                                      v21 = [v6 isEqual:v7];

                                      if (v20)
                                      {
LABEL_57:

                                        v22 = [(BMHomeKitClientMediaAccessoryControlEvent *)self roomName];
                                        if (v22 || ([v10 roomName], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
                                        {
                                          v7 = [(BMHomeKitClientMediaAccessoryControlEvent *)self roomName];
                                          v23 = [v10 roomName];
                                          v24 = [v7 isEqual:v23];

                                          if (v22)
                                          {
LABEL_63:

                                            v25 = [(BMHomeKitClientMediaAccessoryControlEvent *)self zoneNames];
                                            if (v25 || ([v10 zoneNames], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
                                            {
                                              v26 = [(BMHomeKitClientMediaAccessoryControlEvent *)self zoneNames];
                                              v27 = [v10 zoneNames];
                                              v28 = [v26 isEqual:v27];

                                              if (v25)
                                              {
LABEL_69:

                                                v29 = [(BMHomeKitClientMediaAccessoryControlEvent *)self homeName];
                                                if (v29 || ([v10 homeName], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
                                                {
                                                  v30 = [(BMHomeKitClientMediaAccessoryControlEvent *)self homeName];
                                                  v31 = [v10 homeName];
                                                  v32 = [v30 isEqual:v31];

                                                  if (v29)
                                                  {
LABEL_75:

                                                    v12 = v40 & v39 & v38 & v37 & v36 & v35 & BYTE4(v34) & v34 & v21 & v24 & v28 & v32;
                                                    goto LABEL_76;
                                                  }
                                                }

                                                else
                                                {
                                                  v32 = 1;
                                                }

                                                goto LABEL_75;
                                              }
                                            }

                                            else
                                            {
                                              v28 = 1;
                                            }

                                            goto LABEL_69;
                                          }
                                        }

                                        else
                                        {
                                          v24 = 1;
                                        }

                                        goto LABEL_63;
                                      }
                                    }

                                    else
                                    {
                                      v21 = 1;
                                    }

                                    goto LABEL_57;
                                  }
                                }

                                else
                                {
                                  LODWORD(v34) = 1;
                                }

                                goto LABEL_51;
                              }
                            }

                            else
                            {
                              HIDWORD(v34) = 1;
                            }

                            goto LABEL_45;
                          }
                        }

                        else
                        {
                          v35 = 1;
                        }

                        goto LABEL_39;
                      }
                    }

                    else
                    {
                      v36 = 1;
                    }

                    goto LABEL_33;
                  }
                }

                else
                {
                  v37 = 1;
                }

                goto LABEL_27;
              }
            }

            else
            {
              v38 = 1;
            }

            goto LABEL_21;
          }
        }

        else
        {
          v39 = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v40 = 1;
    }

    goto LABEL_9;
  }

  v12 = 0;
LABEL_76:

  return v12 & 1;
}

@end