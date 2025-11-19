@interface BMHomeKitClientAccessoryControlEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMHomeKitClientAccessoryControlEvent)initWithBase:(id)a3 dataAccessoryState:(id)a4 accessoryUniqueIdentifier:(id)a5 serviceUniqueIdentifier:(id)a6 serviceType:(id)a7 characteristicType:(id)a8 serviceGroupUniqueIdentifier:(id)a9 zoneUniqueIdentifiers:(id)a10 roomUniqueIdentifier:(id)a11 accessoryName:(id)a12 serviceName:(id)a13 roomName:(id)a14 serviceGroupName:(id)a15 zoneNames:(id)a16 homeName:(id)a17;
- (BMHomeKitClientAccessoryControlEvent)initWithBase:(id)a3 numberAccessoryState:(id)a4 accessoryUniqueIdentifier:(id)a5 serviceUniqueIdentifier:(id)a6 serviceType:(id)a7 characteristicType:(id)a8 serviceGroupUniqueIdentifier:(id)a9 zoneUniqueIdentifiers:(id)a10 roomUniqueIdentifier:(id)a11 accessoryName:(id)a12 serviceName:(id)a13 roomName:(id)a14 serviceGroupName:(id)a15 zoneNames:(id)a16 homeName:(id)a17;
- (BMHomeKitClientAccessoryControlEvent)initWithBase:(id)a3 stringAccessoryState:(id)a4 accessoryUniqueIdentifier:(id)a5 serviceUniqueIdentifier:(id)a6 serviceType:(id)a7 characteristicType:(id)a8 serviceGroupUniqueIdentifier:(id)a9 zoneUniqueIdentifiers:(id)a10 roomUniqueIdentifier:(id)a11 accessoryName:(id)a12 serviceName:(id)a13 roomName:(id)a14 serviceGroupName:(id)a15 zoneNames:(id)a16 homeName:(id)a17;
- (BMHomeKitClientAccessoryControlEvent)initWithProto:(id)a3;
- (BMHomeKitClientAccessoryControlEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMHomeKitClientAccessoryControlEvent

- (BMHomeKitClientAccessoryControlEvent)initWithBase:(id)a3 stringAccessoryState:(id)a4 accessoryUniqueIdentifier:(id)a5 serviceUniqueIdentifier:(id)a6 serviceType:(id)a7 characteristicType:(id)a8 serviceGroupUniqueIdentifier:(id)a9 zoneUniqueIdentifiers:(id)a10 roomUniqueIdentifier:(id)a11 accessoryName:(id)a12 serviceName:(id)a13 roomName:(id)a14 serviceGroupName:(id)a15 zoneNames:(id)a16 homeName:(id)a17
{
  v46 = a3;
  v34 = a4;
  v22 = a4;
  v23 = a5;
  v45 = v22;
  v44 = a5;
  v35 = a6;
  v43 = a6;
  v42 = a7;
  v36 = a8;
  v41 = a8;
  v40 = a9;
  v39 = a10;
  v38 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v47.receiver = self;
  v47.super_class = BMHomeKitClientAccessoryControlEvent;
  v30 = [(BMEventBase *)&v47 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_base, a3);
    objc_storeStrong(&v31->_accessoryUniqueIdentifier, v23);
    objc_storeStrong(&v31->_accessoryStateString, v34);
    objc_storeStrong(&v31->_serviceUniqueIdentifier, v35);
    objc_storeStrong(&v31->_serviceType, a7);
    objc_storeStrong(&v31->_characteristicType, v36);
    objc_storeStrong(&v31->_serviceGroupUniqueIdentifier, a9);
    objc_storeStrong(&v31->_zoneUniqueIdentifiers, a10);
    objc_storeStrong(&v31->_roomUniqueIdentifier, a11);
    objc_storeStrong(&v31->_accessoryName, a12);
    objc_storeStrong(&v31->_serviceName, a13);
    objc_storeStrong(&v31->_roomName, a14);
    objc_storeStrong(&v31->_serviceGroupName, a15);
    objc_storeStrong(&v31->_zoneNames, a16);
    objc_storeStrong(&v31->_homeName, a17);
  }

  return v31;
}

- (BMHomeKitClientAccessoryControlEvent)initWithBase:(id)a3 numberAccessoryState:(id)a4 accessoryUniqueIdentifier:(id)a5 serviceUniqueIdentifier:(id)a6 serviceType:(id)a7 characteristicType:(id)a8 serviceGroupUniqueIdentifier:(id)a9 zoneUniqueIdentifiers:(id)a10 roomUniqueIdentifier:(id)a11 accessoryName:(id)a12 serviceName:(id)a13 roomName:(id)a14 serviceGroupName:(id)a15 zoneNames:(id)a16 homeName:(id)a17
{
  v46 = a3;
  v34 = a4;
  v22 = a4;
  v23 = a5;
  v45 = v22;
  v44 = a5;
  v35 = a6;
  v43 = a6;
  v42 = a7;
  v36 = a8;
  v41 = a8;
  v40 = a9;
  v39 = a10;
  v38 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v47.receiver = self;
  v47.super_class = BMHomeKitClientAccessoryControlEvent;
  v30 = [(BMEventBase *)&v47 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_base, a3);
    objc_storeStrong(&v31->_accessoryUniqueIdentifier, v23);
    objc_storeStrong(&v31->_accessoryStateNumber, v34);
    objc_storeStrong(&v31->_serviceUniqueIdentifier, v35);
    objc_storeStrong(&v31->_serviceType, a7);
    objc_storeStrong(&v31->_characteristicType, v36);
    objc_storeStrong(&v31->_serviceGroupUniqueIdentifier, a9);
    objc_storeStrong(&v31->_zoneUniqueIdentifiers, a10);
    objc_storeStrong(&v31->_roomUniqueIdentifier, a11);
    objc_storeStrong(&v31->_accessoryName, a12);
    objc_storeStrong(&v31->_serviceName, a13);
    objc_storeStrong(&v31->_roomName, a14);
    objc_storeStrong(&v31->_serviceGroupName, a15);
    objc_storeStrong(&v31->_zoneNames, a16);
    objc_storeStrong(&v31->_homeName, a17);
  }

  return v31;
}

- (BMHomeKitClientAccessoryControlEvent)initWithBase:(id)a3 dataAccessoryState:(id)a4 accessoryUniqueIdentifier:(id)a5 serviceUniqueIdentifier:(id)a6 serviceType:(id)a7 characteristicType:(id)a8 serviceGroupUniqueIdentifier:(id)a9 zoneUniqueIdentifiers:(id)a10 roomUniqueIdentifier:(id)a11 accessoryName:(id)a12 serviceName:(id)a13 roomName:(id)a14 serviceGroupName:(id)a15 zoneNames:(id)a16 homeName:(id)a17
{
  v46 = a3;
  v34 = a4;
  v22 = a4;
  v23 = a5;
  v45 = v22;
  v44 = a5;
  v35 = a6;
  v43 = a6;
  v42 = a7;
  v36 = a8;
  v41 = a8;
  v40 = a9;
  v39 = a10;
  v38 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v47.receiver = self;
  v47.super_class = BMHomeKitClientAccessoryControlEvent;
  v30 = [(BMEventBase *)&v47 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_base, a3);
    objc_storeStrong(&v31->_accessoryUniqueIdentifier, v23);
    objc_storeStrong(&v31->_accessoryStateData, v34);
    objc_storeStrong(&v31->_serviceUniqueIdentifier, v35);
    objc_storeStrong(&v31->_serviceType, a7);
    objc_storeStrong(&v31->_characteristicType, v36);
    objc_storeStrong(&v31->_serviceGroupUniqueIdentifier, a9);
    objc_storeStrong(&v31->_zoneUniqueIdentifiers, a10);
    objc_storeStrong(&v31->_roomUniqueIdentifier, a11);
    objc_storeStrong(&v31->_accessoryName, a12);
    objc_storeStrong(&v31->_serviceName, a13);
    objc_storeStrong(&v31->_roomName, a14);
    objc_storeStrong(&v31->_serviceGroupName, a15);
    objc_storeStrong(&v31->_zoneNames, a16);
    objc_storeStrong(&v31->_homeName, a17);
  }

  return v31;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  roomName = self->_roomName;
  zoneNames = self->_zoneNames;
  v6 = [v3 initWithFormat:@"BMHomeKitClientAccessoryControlEvent event with base: %@, accessoryUniqueIdentifier: %@, accessoryStateString: %@, accessoryStateNumber: %@, accessoryStateData: %@, serviceUniqueIdentifier: %@, serviceType: %@, characteristicType: %@, serviceGroupUniqueIdentifier: %@, zoneUniqueIdentifiers: %@, roomUniqueIdentifier: %@, accessoryName: %@, serviceName: %@, roomName: %@, serviceGroupName: %@, zoneNames: %@, homeName: %@", self->_base, self->_accessoryUniqueIdentifier, self->_accessoryStateString, self->_accessoryStateNumber, self->_accessoryStateData, self->_serviceUniqueIdentifier, self->_serviceType, self->_characteristicType, self->_serviceGroupUniqueIdentifier, self->_zoneUniqueIdentifiers, self->_roomUniqueIdentifier, self->_accessoryName, self->_serviceName, roomName, self->_serviceGroupName, zoneNames, self->_homeName];

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
    v7 = BMHomeKitClientAccessoryControlEvent_v1;
LABEL_5:
    v8 = [[v7 alloc] initWithProtoData:v6];
    goto LABEL_9;
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [BMHomeKitClientAccessoryControlEvent eventWithData:v9 dataVersion:?];
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)encodeAsProto
{
  v2 = [(BMHomeKitClientAccessoryControlEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMHomeKitClientAccessoryControlEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 accessoryState];
      v7 = [v6 valueType];
      if (v7)
      {
        if (v7 == 2)
        {
          v22 = [BMHomeKitClientBase alloc];
          v56 = [v5 base];
          v62 = [(BMHomeKitClientBase *)v22 initWithProto:?];
          v23 = MEMORY[0x1E696AD98];
          v57 = v6;
          [v6 numValue];
          v61 = [v23 numberWithDouble:?];
          v60 = [v5 accessoryUniqueIdentifier];
          v50 = [v5 serviceUniqueIdentifier];
          v47 = [v5 serviceType];
          v44 = [v5 characteristicType];
          v59 = [v5 serviceGroupUniqueIdentifier];
          v58 = [v5 zoneUniqueIdentifiers];
          v24 = [v5 roomUniqueIdentifier];
          v25 = [v5 accessoryName];
          v26 = [v5 serviceName];
          v27 = [v5 roomName];
          v13 = [v5 serviceGroupName];
          v14 = [v5 zoneNames];
          v15 = [v5 homeName];
          v41 = v27;
          v52 = v27;
          v53 = v26;
          v38 = v25;
          v54 = v25;
          v55 = v24;
          v35 = v24;
          v16 = v50;
          v17 = v47;
          v18 = v44;
          v19 = [BMHomeKitClientAccessoryControlEvent initWithBase:"initWithBase:numberAccessoryState:accessoryUniqueIdentifier:serviceUniqueIdentifier:serviceType:characteristicType:serviceGroupUniqueIdentifier:zoneUniqueIdentifiers:roomUniqueIdentifier:accessoryName:serviceName:roomName:serviceGroupName:zoneNames:homeName:" numberAccessoryState:v62 accessoryUniqueIdentifier:v61 serviceUniqueIdentifier:v60 serviceType:v59 characteristicType:v58 serviceGroupUniqueIdentifier:v35 zoneUniqueIdentifiers:v38 roomUniqueIdentifier:v26 accessoryName:v41 serviceName:v13 roomName:v14 serviceGroupName:v15 zoneNames:? homeName:?];
        }

        else
        {
          if (v7 != 1)
          {
            v21 = 0;
            goto LABEL_15;
          }

          v8 = [BMHomeKitClientBase alloc];
          v56 = [v5 base];
          v62 = [(BMHomeKitClientBase *)v8 initWithProto:?];
          v57 = v6;
          v61 = [v6 stringValue];
          v60 = [v5 accessoryUniqueIdentifier];
          v49 = [v5 serviceUniqueIdentifier];
          v46 = [v5 serviceType];
          v43 = [v5 characteristicType];
          v59 = [v5 serviceGroupUniqueIdentifier];
          v58 = [v5 zoneUniqueIdentifiers];
          v9 = [v5 roomUniqueIdentifier];
          v10 = [v5 accessoryName];
          v11 = [v5 serviceName];
          v12 = [v5 roomName];
          v13 = [v5 serviceGroupName];
          v14 = [v5 zoneNames];
          v15 = [v5 homeName];
          v40 = v12;
          v52 = v12;
          v53 = v11;
          v37 = v10;
          v54 = v10;
          v55 = v9;
          v34 = v9;
          v16 = v49;
          v17 = v46;
          v18 = v43;
          v19 = [BMHomeKitClientAccessoryControlEvent initWithBase:"initWithBase:stringAccessoryState:accessoryUniqueIdentifier:serviceUniqueIdentifier:serviceType:characteristicType:serviceGroupUniqueIdentifier:zoneUniqueIdentifiers:roomUniqueIdentifier:accessoryName:serviceName:roomName:serviceGroupName:zoneNames:homeName:" stringAccessoryState:v62 accessoryUniqueIdentifier:v61 serviceUniqueIdentifier:v60 serviceType:v59 characteristicType:v58 serviceGroupUniqueIdentifier:v34 zoneUniqueIdentifiers:v37 roomUniqueIdentifier:v11 accessoryName:v40 serviceName:v13 roomName:v14 serviceGroupName:v15 zoneNames:? homeName:?];
        }
      }

      else
      {
        v28 = [BMHomeKitClientBase alloc];
        v56 = [v5 base];
        v62 = [(BMHomeKitClientBase *)v28 initWithProto:?];
        v57 = v6;
        v61 = [v6 dataValue];
        v60 = [v5 accessoryUniqueIdentifier];
        v51 = [v5 serviceUniqueIdentifier];
        v48 = [v5 serviceType];
        v45 = [v5 characteristicType];
        v59 = [v5 serviceGroupUniqueIdentifier];
        v58 = [v5 zoneUniqueIdentifiers];
        v29 = [v5 roomUniqueIdentifier];
        v30 = [v5 accessoryName];
        v31 = [v5 serviceName];
        v32 = [v5 roomName];
        v13 = [v5 serviceGroupName];
        v14 = [v5 zoneNames];
        v15 = [v5 homeName];
        v42 = v32;
        v52 = v32;
        v53 = v31;
        v39 = v30;
        v54 = v30;
        v55 = v29;
        v36 = v29;
        v16 = v51;
        v17 = v48;
        v18 = v45;
        v19 = [BMHomeKitClientAccessoryControlEvent initWithBase:"initWithBase:dataAccessoryState:accessoryUniqueIdentifier:serviceUniqueIdentifier:serviceType:characteristicType:serviceGroupUniqueIdentifier:zoneUniqueIdentifiers:roomUniqueIdentifier:accessoryName:serviceName:roomName:serviceGroupName:zoneNames:homeName:" dataAccessoryState:v62 accessoryUniqueIdentifier:v61 serviceUniqueIdentifier:v60 serviceType:v59 characteristicType:v58 serviceGroupUniqueIdentifier:v36 zoneUniqueIdentifiers:v39 roomUniqueIdentifier:v31 accessoryName:v42 serviceName:v13 roomName:v14 serviceGroupName:v15 zoneNames:? homeName:?];
      }

      self = v19;

      v21 = self;
      v6 = v57;
LABEL_15:

      goto LABEL_16;
    }

    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [BMHomeKitClientAccessoryControlEvent initWithProto:];
    }
  }

  v21 = 0;
LABEL_16:

  return v21;
}

- (BMHomeKitClientAccessoryControlEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBHomeKitClientAccessoryControlEvent alloc] initWithData:v4];

    self = [(BMHomeKitClientAccessoryControlEvent *)self initWithProto:v5];
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
  v3 = objc_opt_new();
  v4 = [(BMHomeKitClientAccessoryControlEvent *)self base];
  v5 = [v4 proto];
  [v3 setBase:v5];

  v6 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryUniqueIdentifier];
  [v3 setAccessoryUniqueIdentifier:v6];

  v7 = objc_opt_new();
  v8 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateNumber];

  if (v8)
  {
    v9 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateNumber];
    [v9 doubleValue];
    [v7 setNumValue:?];
    v10 = 2;
LABEL_7:

    [v7 setValueType:v10];
    [v3 setAccessoryState:v7];
    v13 = [(BMHomeKitClientAccessoryControlEvent *)self serviceUniqueIdentifier];
    [v3 setServiceUniqueIdentifier:v13];

    v14 = [(BMHomeKitClientAccessoryControlEvent *)self serviceType];
    [v3 setServiceType:v14];

    v15 = [(BMHomeKitClientAccessoryControlEvent *)self characteristicType];
    [v3 setCharacteristicType:v15];

    v16 = [(BMHomeKitClientAccessoryControlEvent *)self serviceGroupUniqueIdentifier];
    [v3 setServiceGroupUniqueIdentifier:v16];

    v17 = MEMORY[0x1E695DF70];
    v18 = [(BMHomeKitClientAccessoryControlEvent *)self zoneUniqueIdentifiers];
    v19 = [v17 arrayWithArray:v18];
    [v3 setZoneUniqueIdentifiers:v19];

    v20 = [(BMHomeKitClientAccessoryControlEvent *)self roomUniqueIdentifier];
    [v3 setRoomUniqueIdentifier:v20];

    v21 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryName];
    [v3 setAccessoryName:v21];

    v22 = [(BMHomeKitClientAccessoryControlEvent *)self serviceName];
    [v3 setServiceName:v22];

    v23 = [(BMHomeKitClientAccessoryControlEvent *)self roomName];
    [v3 setRoomName:v23];

    v24 = [(BMHomeKitClientAccessoryControlEvent *)self serviceGroupName];
    [v3 setServiceGroupName:v24];

    v25 = MEMORY[0x1E695DF70];
    v26 = [(BMHomeKitClientAccessoryControlEvent *)self zoneNames];
    v27 = [v25 arrayWithArray:v26];
    [v3 setZoneNames:v27];

    v28 = [(BMHomeKitClientAccessoryControlEvent *)self homeName];
    [v3 setHomeName:v28];

    v29 = v3;
    goto LABEL_8;
  }

  v11 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateString];

  if (v11)
  {
    v9 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateString];
    [v7 setStringValue:v9];
    v10 = 1;
    goto LABEL_7;
  }

  v12 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateData];

  if (v12)
  {
    v9 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateData];
    [v7 setDataValue:v9];
    v10 = 0;
    goto LABEL_7;
  }

  v31 = __biome_log_for_category();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [(BMHomeKitClientAccessoryControlEvent *)v31 proto];
  }

  v29 = 0;
LABEL_8:

  return v29;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = v7;
    v8 = v7;
    v9 = [(BMHomeKitClientAccessoryControlEvent *)self base];
    if (v9 || ([v8 base], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = [(BMHomeKitClientAccessoryControlEvent *)self base];
      v5 = [v8 base];
      v49 = [v4 isEqual:v5];

      if (v9)
      {
LABEL_9:

        v11 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryUniqueIdentifier];
        if (v11 || ([v8 accessoryUniqueIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v4 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryUniqueIdentifier];
          v5 = [v8 accessoryUniqueIdentifier];
          v48 = [v4 isEqual:v5];

          if (v11)
          {
LABEL_15:

            v12 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateString];
            if (v12 || ([v8 accessoryStateString], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v4 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateString];
              v5 = [v8 accessoryStateString];
              v47 = [v4 isEqual:v5];

              if (v12)
              {
LABEL_21:

                v13 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateNumber];
                if (v13 || ([v8 accessoryStateNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v4 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateNumber];
                  v5 = [v8 accessoryStateNumber];
                  v46 = [v4 isEqual:v5];

                  if (v13)
                  {
LABEL_27:

                    v14 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateData];
                    if (v14 || ([v8 accessoryStateData], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      v4 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateData];
                      v5 = [v8 accessoryStateData];
                      v45 = [v4 isEqual:v5];

                      if (v14)
                      {
LABEL_33:

                        v15 = [(BMHomeKitClientAccessoryControlEvent *)self serviceUniqueIdentifier];
                        if (v15 || ([v8 serviceUniqueIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          v4 = [(BMHomeKitClientAccessoryControlEvent *)self serviceUniqueIdentifier];
                          v5 = [v8 serviceUniqueIdentifier];
                          v44 = [v4 isEqual:v5];

                          if (v15)
                          {
LABEL_39:

                            v16 = [(BMHomeKitClientAccessoryControlEvent *)self serviceType];
                            if (v16 || ([v8 serviceType], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                            {
                              v4 = [(BMHomeKitClientAccessoryControlEvent *)self serviceType];
                              v5 = [v8 serviceType];
                              v43 = [v4 isEqual:v5];

                              if (v16)
                              {
LABEL_45:

                                v17 = [(BMHomeKitClientAccessoryControlEvent *)self characteristicType];
                                if (v17 || ([v8 characteristicType], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                {
                                  v4 = [(BMHomeKitClientAccessoryControlEvent *)self characteristicType];
                                  v5 = [v8 characteristicType];
                                  v42 = [v4 isEqual:v5];

                                  if (v17)
                                  {
LABEL_51:

                                    v18 = [(BMHomeKitClientAccessoryControlEvent *)self serviceGroupUniqueIdentifier];
                                    if (v18 || ([v8 serviceGroupUniqueIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                    {
                                      v4 = [(BMHomeKitClientAccessoryControlEvent *)self serviceGroupUniqueIdentifier];
                                      v5 = [v8 serviceGroupUniqueIdentifier];
                                      v41 = [v4 isEqual:v5];

                                      if (v18)
                                      {
LABEL_57:

                                        v19 = [(BMHomeKitClientAccessoryControlEvent *)self zoneUniqueIdentifiers];
                                        if (v19 || ([v8 zoneUniqueIdentifiers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                        {
                                          v4 = [(BMHomeKitClientAccessoryControlEvent *)self zoneUniqueIdentifiers];
                                          v5 = [v8 zoneUniqueIdentifiers];
                                          v40 = [v4 isEqual:v5];

                                          if (v19)
                                          {
LABEL_63:

                                            v20 = [(BMHomeKitClientAccessoryControlEvent *)self roomUniqueIdentifier];
                                            if (v20 || ([v8 roomUniqueIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                            {
                                              v4 = [(BMHomeKitClientAccessoryControlEvent *)self roomUniqueIdentifier];
                                              v5 = [v8 roomUniqueIdentifier];
                                              v39 = [v4 isEqual:v5];

                                              if (v20)
                                              {
LABEL_69:

                                                v21 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryName];
                                                if (v21 || ([v8 accessoryName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                                {
                                                  v4 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryName];
                                                  v5 = [v8 accessoryName];
                                                  v38 = [v4 isEqual:v5];

                                                  if (v21)
                                                  {
LABEL_75:

                                                    v22 = [(BMHomeKitClientAccessoryControlEvent *)self serviceName];
                                                    if (v22 || ([v8 serviceName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                                    {
                                                      v4 = [(BMHomeKitClientAccessoryControlEvent *)self serviceName];
                                                      v5 = [v8 serviceName];
                                                      v23 = [v4 isEqual:v5];

                                                      if (v22)
                                                      {
LABEL_81:

                                                        v24 = [(BMHomeKitClientAccessoryControlEvent *)self roomName];
                                                        if (v24 || ([v8 roomName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                                        {
                                                          v4 = [(BMHomeKitClientAccessoryControlEvent *)self roomName];
                                                          v5 = [v8 roomName];
                                                          v25 = [v4 isEqual:v5];

                                                          if (v24)
                                                          {
LABEL_87:

                                                            v26 = [(BMHomeKitClientAccessoryControlEvent *)self serviceGroupName];
                                                            if (v26 || ([v8 serviceGroupName], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
                                                            {
                                                              v5 = [(BMHomeKitClientAccessoryControlEvent *)self serviceGroupName];
                                                              v27 = [v8 serviceGroupName];
                                                              v28 = [v5 isEqual:v27];

                                                              if (v26)
                                                              {
LABEL_93:

                                                                v29 = [(BMHomeKitClientAccessoryControlEvent *)self zoneNames];
                                                                if (v29 || ([v8 zoneNames], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
                                                                {
                                                                  v30 = [(BMHomeKitClientAccessoryControlEvent *)self zoneNames];
                                                                  v31 = [v8 zoneNames];
                                                                  v32 = [v30 isEqual:v31];

                                                                  if (v29)
                                                                  {
LABEL_99:

                                                                    v33 = [(BMHomeKitClientAccessoryControlEvent *)self homeName];
                                                                    if (v33 || ([v8 homeName], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
                                                                    {
                                                                      v34 = [(BMHomeKitClientAccessoryControlEvent *)self homeName];
                                                                      v35 = [v8 homeName];
                                                                      v36 = [v34 isEqual:v35];

                                                                      if (v33)
                                                                      {
LABEL_105:

                                                                        v10 = v49 & v48 & v47 & v46 & v45 & v44 & v43 & v42 & v41 & v40 & v39 & v38 & v23 & v25 & v28 & v32 & v36;
                                                                        v7 = v50;
                                                                        goto LABEL_106;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v36 = 1;
                                                                    }

                                                                    goto LABEL_105;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v32 = 1;
                                                                }

                                                                goto LABEL_99;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v28 = 1;
                                                            }

                                                            goto LABEL_93;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v25 = 1;
                                                        }

                                                        goto LABEL_87;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v23 = 1;
                                                    }

                                                    goto LABEL_81;
                                                  }
                                                }

                                                else
                                                {
                                                  v38 = 1;
                                                }

                                                goto LABEL_75;
                                              }
                                            }

                                            else
                                            {
                                              v39 = 1;
                                            }

                                            goto LABEL_69;
                                          }
                                        }

                                        else
                                        {
                                          v40 = 1;
                                        }

                                        goto LABEL_63;
                                      }
                                    }

                                    else
                                    {
                                      v41 = 1;
                                    }

                                    goto LABEL_57;
                                  }
                                }

                                else
                                {
                                  v42 = 1;
                                }

                                goto LABEL_51;
                              }
                            }

                            else
                            {
                              v43 = 1;
                            }

                            goto LABEL_45;
                          }
                        }

                        else
                        {
                          v44 = 1;
                        }

                        goto LABEL_39;
                      }
                    }

                    else
                    {
                      v45 = 1;
                    }

                    goto LABEL_33;
                  }
                }

                else
                {
                  v46 = 1;
                }

                goto LABEL_27;
              }
            }

            else
            {
              v47 = 1;
            }

            goto LABEL_21;
          }
        }

        else
        {
          v48 = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v49 = 1;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_106:

  return v10 & 1;
}

@end