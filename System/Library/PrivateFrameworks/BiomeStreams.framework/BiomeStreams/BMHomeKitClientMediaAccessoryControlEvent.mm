@interface BMHomeKitClientMediaAccessoryControlEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMHomeKitClientMediaAccessoryControlEvent)initWithBase:(id)base accessoryUniqueIdentifier:(id)identifier accessoryStateString:(id)string accessoryStateNumber:(id)number accessoryStateData:(id)data accessoryMediaRouteIdentifier:(id)routeIdentifier zoneUniqueIdentifiers:(id)identifiers roomUniqueIdentifier:(id)self0 accessoryName:(id)self1 roomName:(id)self2 zoneNames:(id)self3 homeName:(id)self4;
- (BMHomeKitClientMediaAccessoryControlEvent)initWithProto:(id)proto;
- (BMHomeKitClientMediaAccessoryControlEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMHomeKitClientMediaAccessoryControlEvent

- (BMHomeKitClientMediaAccessoryControlEvent)initWithBase:(id)base accessoryUniqueIdentifier:(id)identifier accessoryStateString:(id)string accessoryStateNumber:(id)number accessoryStateData:(id)data accessoryMediaRouteIdentifier:(id)routeIdentifier zoneUniqueIdentifiers:(id)identifiers roomUniqueIdentifier:(id)self0 accessoryName:(id)self1 roomName:(id)self2 zoneNames:(id)self3 homeName:(id)self4
{
  baseCopy = base;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  stringCopy = string;
  stringCopy2 = string;
  numberCopy = number;
  numberCopy2 = number;
  dataCopy = data;
  routeIdentifierCopy = routeIdentifier;
  identifiersCopy = identifiers;
  uniqueIdentifierCopy = uniqueIdentifier;
  nameCopy = name;
  roomNameCopy = roomName;
  namesCopy = names;
  homeNameCopy = homeName;
  v39.receiver = self;
  v39.super_class = BMHomeKitClientMediaAccessoryControlEvent;
  v23 = [(BMEventBase *)&v39 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_base, base);
    objc_storeStrong(&v24->_accessoryUniqueIdentifier, identifierCopy);
    objc_storeStrong(&v24->_accessoryStateString, stringCopy);
    objc_storeStrong(&v24->_accessoryStateNumber, numberCopy);
    objc_storeStrong(&v24->_accessoryStateData, data);
    objc_storeStrong(&v24->_accessoryMediaRouteIdentifier, routeIdentifier);
    objc_storeStrong(&v24->_zoneUniqueIdentifiers, identifiers);
    objc_storeStrong(&v24->_roomUniqueIdentifier, uniqueIdentifier);
    objc_storeStrong(&v24->_accessoryName, name);
    objc_storeStrong(&v24->_roomName, roomName);
    objc_storeStrong(&v24->_zoneNames, names);
    objc_storeStrong(&v24->_homeName, homeName);
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (!version)
  {
    selfCopy = self;
    goto LABEL_5;
  }

  if (version == 1)
  {
    selfCopy = BMHomeKitClientMediaAccessoryControlEvent_v1;
LABEL_5:
    v8 = [[selfCopy alloc] initWithProtoData:dataCopy];
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
  proto = [(BMHomeKitClientMediaAccessoryControlEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMHomeKitClientMediaAccessoryControlEvent)initWithProto:(id)proto
{
  v44 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      v36 = protoCopy;
      v5 = protoCopy;
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v34 = v5;
      accessoryStates = [v5 accessoryStates];
      v10 = [accessoryStates countByEnumeratingWithState:&v39 objects:v43 count:16];
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
            objc_enumerationMutation(accessoryStates);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          valueType = [v14 valueType];
          if (valueType)
          {
            if (valueType == 2)
            {
              v19 = MEMORY[0x1E696AD98];
              [v14 numValue];
              stringValue = [v19 numberWithDouble:?];
              mediaPropertyType = [v14 mediaPropertyType];
              v18 = v7;
            }

            else
            {
              if (valueType != 1)
              {
                goto LABEL_15;
              }

              stringValue = [v14 stringValue];
              mediaPropertyType = [v14 mediaPropertyType];
              v18 = v6;
            }
          }

          else
          {
            stringValue = [v14 dataValue];
            mediaPropertyType = [v14 mediaPropertyType];
            v18 = v8;
          }

          [v18 setObject:stringValue forKey:mediaPropertyType];

LABEL_15:
        }

        v11 = [accessoryStates countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (!v11)
        {
LABEL_17:

          v20 = [BMHomeKitClientBase alloc];
          v21 = v34;
          base = [v34 base];
          v38 = [(BMHomeKitClientBase *)v20 initWithProto:base];
          accessoryUniqueIdentifier = [v34 accessoryUniqueIdentifier];
          accessoryMediaRouteIdentifier = [v34 accessoryMediaRouteIdentifier];
          zoneUniqueIdentifiers = [v34 zoneUniqueIdentifiers];
          roomUniqueIdentifier = [v34 roomUniqueIdentifier];
          accessoryName = [v34 accessoryName];
          roomName = [v34 roomName];
          zoneNames = [v34 zoneNames];
          homeName = [v34 homeName];
          v26 = v6;
          self = [(BMHomeKitClientMediaAccessoryControlEvent *)selfCopy initWithBase:v38 accessoryUniqueIdentifier:accessoryUniqueIdentifier accessoryStateString:v6 accessoryStateNumber:v7 accessoryStateData:v8 accessoryMediaRouteIdentifier:accessoryMediaRouteIdentifier zoneUniqueIdentifiers:zoneUniqueIdentifiers roomUniqueIdentifier:roomUniqueIdentifier accessoryName:accessoryName roomName:roomName zoneNames:zoneNames homeName:homeName];

          selfCopy2 = self;
          protoCopy = v36;
          goto LABEL_22;
        }
      }
    }

    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [BMHomeKitClientMediaAccessoryControlEvent initWithProto:];
    }

    selfCopy2 = 0;
LABEL_22:
  }

  else
  {
    selfCopy2 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (BMHomeKitClientMediaAccessoryControlEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBHomeKitClientMediaAccessoryControlEvent alloc] initWithData:dataCopy];

    self = [(BMHomeKitClientMediaAccessoryControlEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  base = [(BMHomeKitClientMediaAccessoryControlEvent *)self base];
  proto = [base proto];
  [v3 setBase:proto];

  accessoryUniqueIdentifier = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryUniqueIdentifier];
  v48 = v3;
  [v3 setAccessoryUniqueIdentifier:accessoryUniqueIdentifier];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  accessoryStateString = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateString];
  v9 = [accessoryStateString countByEnumeratingWithState:&v57 objects:v63 count:16];
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
          objc_enumerationMutation(accessoryStateString);
        }

        v13 = *(*(&v57 + 1) + 8 * i);
        v14 = objc_opt_new();
        [v14 setMediaPropertyType:v13];
        accessoryStateString2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateString];
        v16 = [accessoryStateString2 objectForKey:v13];
        [v14 setStringValue:v16];

        [v14 setValueType:1];
        [v7 addObject:v14];
      }

      v10 = [accessoryStateString countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v10);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  accessoryStateNumber = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateNumber];
  v18 = [accessoryStateNumber countByEnumeratingWithState:&v53 objects:v62 count:16];
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
          objc_enumerationMutation(accessoryStateNumber);
        }

        v22 = *(*(&v53 + 1) + 8 * j);
        v23 = objc_opt_new();
        [v23 setMediaPropertyType:v22];
        accessoryStateNumber2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateNumber];
        v25 = [accessoryStateNumber2 objectForKey:v22];

        [v25 doubleValue];
        [v23 setNumValue:?];
        [v23 setValueType:2];
        [v7 addObject:v23];
      }

      v19 = [accessoryStateNumber countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v19);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  accessoryStateData = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateData];
  v27 = [accessoryStateData countByEnumeratingWithState:&v49 objects:v61 count:16];
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
          objc_enumerationMutation(accessoryStateData);
        }

        v31 = *(*(&v49 + 1) + 8 * k);
        v32 = objc_opt_new();
        [v32 setMediaPropertyType:v31];
        accessoryStateData2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateData];
        v34 = [accessoryStateData2 objectForKey:v31];
        [v32 setDataValue:v34];

        [v32 setValueType:0];
        [v7 addObject:v32];
      }

      v28 = [accessoryStateData countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v28);
  }

  [v48 setAccessoryStates:v7];
  accessoryMediaRouteIdentifier = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryMediaRouteIdentifier];
  [v48 setAccessoryMediaRouteIdentifier:accessoryMediaRouteIdentifier];

  v36 = MEMORY[0x1E695DF70];
  zoneUniqueIdentifiers = [(BMHomeKitClientMediaAccessoryControlEvent *)self zoneUniqueIdentifiers];
  v38 = [v36 arrayWithArray:zoneUniqueIdentifiers];
  [v48 setZoneUniqueIdentifiers:v38];

  roomUniqueIdentifier = [(BMHomeKitClientMediaAccessoryControlEvent *)self roomUniqueIdentifier];
  [v48 setRoomUniqueIdentifier:roomUniqueIdentifier];

  accessoryName = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryName];
  [v48 setAccessoryName:accessoryName];

  roomName = [(BMHomeKitClientMediaAccessoryControlEvent *)self roomName];
  [v48 setRoomName:roomName];

  v42 = MEMORY[0x1E695DF70];
  zoneNames = [(BMHomeKitClientMediaAccessoryControlEvent *)self zoneNames];
  v44 = [v42 arrayWithArray:zoneNames];
  [v48 setZoneNames:v44];

  homeName = [(BMHomeKitClientMediaAccessoryControlEvent *)self homeName];
  [v48 setHomeName:homeName];

  v46 = *MEMORY[0x1E69E9840];

  return v48;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = equalCopy;
    base = [(BMHomeKitClientMediaAccessoryControlEvent *)self base];
    if (base || ([v10 base], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      base2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self base];
      base3 = [v10 base];
      v40 = [base2 isEqual:base3];

      if (base)
      {
LABEL_9:

        accessoryUniqueIdentifier = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryUniqueIdentifier];
        if (accessoryUniqueIdentifier || ([v10 accessoryUniqueIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          base2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryUniqueIdentifier];
          base3 = [v10 accessoryUniqueIdentifier];
          v39 = [base2 isEqual:base3];

          if (accessoryUniqueIdentifier)
          {
LABEL_15:

            accessoryStateString = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateString];
            if (accessoryStateString || ([v10 accessoryStateString], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              base2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateString];
              base3 = [v10 accessoryStateString];
              v38 = [base2 isEqual:base3];

              if (accessoryStateString)
              {
LABEL_21:

                accessoryStateNumber = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateNumber];
                if (accessoryStateNumber || ([v10 accessoryStateNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  base2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateNumber];
                  base3 = [v10 accessoryStateNumber];
                  v37 = [base2 isEqual:base3];

                  if (accessoryStateNumber)
                  {
LABEL_27:

                    accessoryStateData = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateData];
                    if (accessoryStateData || ([v10 accessoryStateData], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      base2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryStateData];
                      base3 = [v10 accessoryStateData];
                      v36 = [base2 isEqual:base3];

                      if (accessoryStateData)
                      {
LABEL_33:

                        accessoryMediaRouteIdentifier = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryMediaRouteIdentifier];
                        if (accessoryMediaRouteIdentifier || ([v10 accessoryMediaRouteIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          base2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryMediaRouteIdentifier];
                          base3 = [v10 accessoryMediaRouteIdentifier];
                          v35 = [base2 isEqual:base3];

                          if (accessoryMediaRouteIdentifier)
                          {
LABEL_39:

                            zoneUniqueIdentifiers = [(BMHomeKitClientMediaAccessoryControlEvent *)self zoneUniqueIdentifiers];
                            if (zoneUniqueIdentifiers || ([v10 zoneUniqueIdentifiers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                            {
                              base2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self zoneUniqueIdentifiers];
                              base3 = [v10 zoneUniqueIdentifiers];
                              HIDWORD(v34) = [base2 isEqual:base3];

                              if (zoneUniqueIdentifiers)
                              {
LABEL_45:

                                roomUniqueIdentifier = [(BMHomeKitClientMediaAccessoryControlEvent *)self roomUniqueIdentifier];
                                if (roomUniqueIdentifier || ([v10 roomUniqueIdentifier], (base2 = objc_claimAutoreleasedReturnValue()) != 0))
                                {
                                  base3 = [(BMHomeKitClientMediaAccessoryControlEvent *)self roomUniqueIdentifier];
                                  roomUniqueIdentifier2 = [v10 roomUniqueIdentifier];
                                  LODWORD(v34) = [base3 isEqual:roomUniqueIdentifier2];

                                  if (roomUniqueIdentifier)
                                  {
LABEL_51:

                                    accessoryName = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryName];
                                    if (accessoryName || ([v10 accessoryName], (base3 = objc_claimAutoreleasedReturnValue()) != 0))
                                    {
                                      roomUniqueIdentifier2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self accessoryName];
                                      accessoryName2 = [v10 accessoryName];
                                      v21 = [roomUniqueIdentifier2 isEqual:accessoryName2];

                                      if (accessoryName)
                                      {
LABEL_57:

                                        roomName = [(BMHomeKitClientMediaAccessoryControlEvent *)self roomName];
                                        if (roomName || ([v10 roomName], (roomUniqueIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
                                        {
                                          accessoryName2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self roomName];
                                          roomName2 = [v10 roomName];
                                          v24 = [accessoryName2 isEqual:roomName2];

                                          if (roomName)
                                          {
LABEL_63:

                                            zoneNames = [(BMHomeKitClientMediaAccessoryControlEvent *)self zoneNames];
                                            if (zoneNames || ([v10 zoneNames], (accessoryName2 = objc_claimAutoreleasedReturnValue()) != 0))
                                            {
                                              zoneNames2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self zoneNames];
                                              zoneNames3 = [v10 zoneNames];
                                              v28 = [zoneNames2 isEqual:zoneNames3];

                                              if (zoneNames)
                                              {
LABEL_69:

                                                homeName = [(BMHomeKitClientMediaAccessoryControlEvent *)self homeName];
                                                if (homeName || ([v10 homeName], (accessoryName2 = objc_claimAutoreleasedReturnValue()) != 0))
                                                {
                                                  homeName2 = [(BMHomeKitClientMediaAccessoryControlEvent *)self homeName];
                                                  homeName3 = [v10 homeName];
                                                  v32 = [homeName2 isEqual:homeName3];

                                                  if (homeName)
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