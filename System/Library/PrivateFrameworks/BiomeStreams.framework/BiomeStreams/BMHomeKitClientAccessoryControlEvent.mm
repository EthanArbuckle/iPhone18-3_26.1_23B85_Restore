@interface BMHomeKitClientAccessoryControlEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMHomeKitClientAccessoryControlEvent)initWithBase:(id)base dataAccessoryState:(id)state accessoryUniqueIdentifier:(id)identifier serviceUniqueIdentifier:(id)uniqueIdentifier serviceType:(id)type characteristicType:(id)characteristicType serviceGroupUniqueIdentifier:(id)groupUniqueIdentifier zoneUniqueIdentifiers:(id)self0 roomUniqueIdentifier:(id)self1 accessoryName:(id)self2 serviceName:(id)self3 roomName:(id)self4 serviceGroupName:(id)self5 zoneNames:(id)self6 homeName:(id)self7;
- (BMHomeKitClientAccessoryControlEvent)initWithBase:(id)base numberAccessoryState:(id)state accessoryUniqueIdentifier:(id)identifier serviceUniqueIdentifier:(id)uniqueIdentifier serviceType:(id)type characteristicType:(id)characteristicType serviceGroupUniqueIdentifier:(id)groupUniqueIdentifier zoneUniqueIdentifiers:(id)self0 roomUniqueIdentifier:(id)self1 accessoryName:(id)self2 serviceName:(id)self3 roomName:(id)self4 serviceGroupName:(id)self5 zoneNames:(id)self6 homeName:(id)self7;
- (BMHomeKitClientAccessoryControlEvent)initWithBase:(id)base stringAccessoryState:(id)state accessoryUniqueIdentifier:(id)identifier serviceUniqueIdentifier:(id)uniqueIdentifier serviceType:(id)type characteristicType:(id)characteristicType serviceGroupUniqueIdentifier:(id)groupUniqueIdentifier zoneUniqueIdentifiers:(id)self0 roomUniqueIdentifier:(id)self1 accessoryName:(id)self2 serviceName:(id)self3 roomName:(id)self4 serviceGroupName:(id)self5 zoneNames:(id)self6 homeName:(id)self7;
- (BMHomeKitClientAccessoryControlEvent)initWithProto:(id)proto;
- (BMHomeKitClientAccessoryControlEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMHomeKitClientAccessoryControlEvent

- (BMHomeKitClientAccessoryControlEvent)initWithBase:(id)base stringAccessoryState:(id)state accessoryUniqueIdentifier:(id)identifier serviceUniqueIdentifier:(id)uniqueIdentifier serviceType:(id)type characteristicType:(id)characteristicType serviceGroupUniqueIdentifier:(id)groupUniqueIdentifier zoneUniqueIdentifiers:(id)self0 roomUniqueIdentifier:(id)self1 accessoryName:(id)self2 serviceName:(id)self3 roomName:(id)self4 serviceGroupName:(id)self5 zoneNames:(id)self6 homeName:(id)self7
{
  baseCopy = base;
  stateCopy = state;
  stateCopy2 = state;
  identifierCopy = identifier;
  v45 = stateCopy2;
  identifierCopy2 = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  uniqueIdentifierCopy2 = uniqueIdentifier;
  typeCopy = type;
  characteristicTypeCopy = characteristicType;
  characteristicTypeCopy2 = characteristicType;
  groupUniqueIdentifierCopy = groupUniqueIdentifier;
  identifiersCopy = identifiers;
  roomUniqueIdentifierCopy = roomUniqueIdentifier;
  nameCopy = name;
  serviceNameCopy = serviceName;
  roomNameCopy = roomName;
  groupNameCopy = groupName;
  namesCopy = names;
  homeNameCopy = homeName;
  v47.receiver = self;
  v47.super_class = BMHomeKitClientAccessoryControlEvent;
  v30 = [(BMEventBase *)&v47 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_base, base);
    objc_storeStrong(&v31->_accessoryUniqueIdentifier, identifierCopy);
    objc_storeStrong(&v31->_accessoryStateString, stateCopy);
    objc_storeStrong(&v31->_serviceUniqueIdentifier, uniqueIdentifierCopy);
    objc_storeStrong(&v31->_serviceType, type);
    objc_storeStrong(&v31->_characteristicType, characteristicTypeCopy);
    objc_storeStrong(&v31->_serviceGroupUniqueIdentifier, groupUniqueIdentifier);
    objc_storeStrong(&v31->_zoneUniqueIdentifiers, identifiers);
    objc_storeStrong(&v31->_roomUniqueIdentifier, roomUniqueIdentifier);
    objc_storeStrong(&v31->_accessoryName, name);
    objc_storeStrong(&v31->_serviceName, serviceName);
    objc_storeStrong(&v31->_roomName, roomName);
    objc_storeStrong(&v31->_serviceGroupName, groupName);
    objc_storeStrong(&v31->_zoneNames, names);
    objc_storeStrong(&v31->_homeName, homeName);
  }

  return v31;
}

- (BMHomeKitClientAccessoryControlEvent)initWithBase:(id)base numberAccessoryState:(id)state accessoryUniqueIdentifier:(id)identifier serviceUniqueIdentifier:(id)uniqueIdentifier serviceType:(id)type characteristicType:(id)characteristicType serviceGroupUniqueIdentifier:(id)groupUniqueIdentifier zoneUniqueIdentifiers:(id)self0 roomUniqueIdentifier:(id)self1 accessoryName:(id)self2 serviceName:(id)self3 roomName:(id)self4 serviceGroupName:(id)self5 zoneNames:(id)self6 homeName:(id)self7
{
  baseCopy = base;
  stateCopy = state;
  stateCopy2 = state;
  identifierCopy = identifier;
  v45 = stateCopy2;
  identifierCopy2 = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  uniqueIdentifierCopy2 = uniqueIdentifier;
  typeCopy = type;
  characteristicTypeCopy = characteristicType;
  characteristicTypeCopy2 = characteristicType;
  groupUniqueIdentifierCopy = groupUniqueIdentifier;
  identifiersCopy = identifiers;
  roomUniqueIdentifierCopy = roomUniqueIdentifier;
  nameCopy = name;
  serviceNameCopy = serviceName;
  roomNameCopy = roomName;
  groupNameCopy = groupName;
  namesCopy = names;
  homeNameCopy = homeName;
  v47.receiver = self;
  v47.super_class = BMHomeKitClientAccessoryControlEvent;
  v30 = [(BMEventBase *)&v47 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_base, base);
    objc_storeStrong(&v31->_accessoryUniqueIdentifier, identifierCopy);
    objc_storeStrong(&v31->_accessoryStateNumber, stateCopy);
    objc_storeStrong(&v31->_serviceUniqueIdentifier, uniqueIdentifierCopy);
    objc_storeStrong(&v31->_serviceType, type);
    objc_storeStrong(&v31->_characteristicType, characteristicTypeCopy);
    objc_storeStrong(&v31->_serviceGroupUniqueIdentifier, groupUniqueIdentifier);
    objc_storeStrong(&v31->_zoneUniqueIdentifiers, identifiers);
    objc_storeStrong(&v31->_roomUniqueIdentifier, roomUniqueIdentifier);
    objc_storeStrong(&v31->_accessoryName, name);
    objc_storeStrong(&v31->_serviceName, serviceName);
    objc_storeStrong(&v31->_roomName, roomName);
    objc_storeStrong(&v31->_serviceGroupName, groupName);
    objc_storeStrong(&v31->_zoneNames, names);
    objc_storeStrong(&v31->_homeName, homeName);
  }

  return v31;
}

- (BMHomeKitClientAccessoryControlEvent)initWithBase:(id)base dataAccessoryState:(id)state accessoryUniqueIdentifier:(id)identifier serviceUniqueIdentifier:(id)uniqueIdentifier serviceType:(id)type characteristicType:(id)characteristicType serviceGroupUniqueIdentifier:(id)groupUniqueIdentifier zoneUniqueIdentifiers:(id)self0 roomUniqueIdentifier:(id)self1 accessoryName:(id)self2 serviceName:(id)self3 roomName:(id)self4 serviceGroupName:(id)self5 zoneNames:(id)self6 homeName:(id)self7
{
  baseCopy = base;
  stateCopy = state;
  stateCopy2 = state;
  identifierCopy = identifier;
  v45 = stateCopy2;
  identifierCopy2 = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  uniqueIdentifierCopy2 = uniqueIdentifier;
  typeCopy = type;
  characteristicTypeCopy = characteristicType;
  characteristicTypeCopy2 = characteristicType;
  groupUniqueIdentifierCopy = groupUniqueIdentifier;
  identifiersCopy = identifiers;
  roomUniqueIdentifierCopy = roomUniqueIdentifier;
  nameCopy = name;
  serviceNameCopy = serviceName;
  roomNameCopy = roomName;
  groupNameCopy = groupName;
  namesCopy = names;
  homeNameCopy = homeName;
  v47.receiver = self;
  v47.super_class = BMHomeKitClientAccessoryControlEvent;
  v30 = [(BMEventBase *)&v47 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_base, base);
    objc_storeStrong(&v31->_accessoryUniqueIdentifier, identifierCopy);
    objc_storeStrong(&v31->_accessoryStateData, stateCopy);
    objc_storeStrong(&v31->_serviceUniqueIdentifier, uniqueIdentifierCopy);
    objc_storeStrong(&v31->_serviceType, type);
    objc_storeStrong(&v31->_characteristicType, characteristicTypeCopy);
    objc_storeStrong(&v31->_serviceGroupUniqueIdentifier, groupUniqueIdentifier);
    objc_storeStrong(&v31->_zoneUniqueIdentifiers, identifiers);
    objc_storeStrong(&v31->_roomUniqueIdentifier, roomUniqueIdentifier);
    objc_storeStrong(&v31->_accessoryName, name);
    objc_storeStrong(&v31->_serviceName, serviceName);
    objc_storeStrong(&v31->_roomName, roomName);
    objc_storeStrong(&v31->_serviceGroupName, groupName);
    objc_storeStrong(&v31->_zoneNames, names);
    objc_storeStrong(&v31->_homeName, homeName);
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
    selfCopy = BMHomeKitClientAccessoryControlEvent_v1;
LABEL_5:
    v8 = [[selfCopy alloc] initWithProtoData:dataCopy];
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
  proto = [(BMHomeKitClientAccessoryControlEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMHomeKitClientAccessoryControlEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      accessoryState = [v5 accessoryState];
      valueType = [accessoryState valueType];
      if (valueType)
      {
        if (valueType == 2)
        {
          v22 = [BMHomeKitClientBase alloc];
          base = [v5 base];
          v62 = [(BMHomeKitClientBase *)v22 initWithProto:?];
          v23 = MEMORY[0x1E696AD98];
          v57 = accessoryState;
          [accessoryState numValue];
          stringValue = [v23 numberWithDouble:?];
          accessoryUniqueIdentifier = [v5 accessoryUniqueIdentifier];
          serviceUniqueIdentifier = [v5 serviceUniqueIdentifier];
          serviceType = [v5 serviceType];
          characteristicType = [v5 characteristicType];
          serviceGroupUniqueIdentifier = [v5 serviceGroupUniqueIdentifier];
          zoneUniqueIdentifiers = [v5 zoneUniqueIdentifiers];
          roomUniqueIdentifier = [v5 roomUniqueIdentifier];
          accessoryName = [v5 accessoryName];
          serviceName = [v5 serviceName];
          roomName = [v5 roomName];
          serviceGroupName = [v5 serviceGroupName];
          zoneNames = [v5 zoneNames];
          homeName = [v5 homeName];
          v41 = roomName;
          v52 = roomName;
          v53 = serviceName;
          v38 = accessoryName;
          v54 = accessoryName;
          v55 = roomUniqueIdentifier;
          v35 = roomUniqueIdentifier;
          v16 = serviceUniqueIdentifier;
          v17 = serviceType;
          v18 = characteristicType;
          v19 = [BMHomeKitClientAccessoryControlEvent initWithBase:"initWithBase:numberAccessoryState:accessoryUniqueIdentifier:serviceUniqueIdentifier:serviceType:characteristicType:serviceGroupUniqueIdentifier:zoneUniqueIdentifiers:roomUniqueIdentifier:accessoryName:serviceName:roomName:serviceGroupName:zoneNames:homeName:" numberAccessoryState:v62 accessoryUniqueIdentifier:stringValue serviceUniqueIdentifier:accessoryUniqueIdentifier serviceType:serviceGroupUniqueIdentifier characteristicType:zoneUniqueIdentifiers serviceGroupUniqueIdentifier:v35 zoneUniqueIdentifiers:v38 roomUniqueIdentifier:serviceName accessoryName:v41 serviceName:serviceGroupName roomName:zoneNames serviceGroupName:homeName zoneNames:? homeName:?];
        }

        else
        {
          if (valueType != 1)
          {
            selfCopy = 0;
            goto LABEL_15;
          }

          v8 = [BMHomeKitClientBase alloc];
          base = [v5 base];
          v62 = [(BMHomeKitClientBase *)v8 initWithProto:?];
          v57 = accessoryState;
          stringValue = [accessoryState stringValue];
          accessoryUniqueIdentifier = [v5 accessoryUniqueIdentifier];
          serviceUniqueIdentifier2 = [v5 serviceUniqueIdentifier];
          serviceType2 = [v5 serviceType];
          characteristicType2 = [v5 characteristicType];
          serviceGroupUniqueIdentifier = [v5 serviceGroupUniqueIdentifier];
          zoneUniqueIdentifiers = [v5 zoneUniqueIdentifiers];
          roomUniqueIdentifier2 = [v5 roomUniqueIdentifier];
          accessoryName2 = [v5 accessoryName];
          serviceName2 = [v5 serviceName];
          roomName2 = [v5 roomName];
          serviceGroupName = [v5 serviceGroupName];
          zoneNames = [v5 zoneNames];
          homeName = [v5 homeName];
          v40 = roomName2;
          v52 = roomName2;
          v53 = serviceName2;
          v37 = accessoryName2;
          v54 = accessoryName2;
          v55 = roomUniqueIdentifier2;
          v34 = roomUniqueIdentifier2;
          v16 = serviceUniqueIdentifier2;
          v17 = serviceType2;
          v18 = characteristicType2;
          v19 = [BMHomeKitClientAccessoryControlEvent initWithBase:"initWithBase:stringAccessoryState:accessoryUniqueIdentifier:serviceUniqueIdentifier:serviceType:characteristicType:serviceGroupUniqueIdentifier:zoneUniqueIdentifiers:roomUniqueIdentifier:accessoryName:serviceName:roomName:serviceGroupName:zoneNames:homeName:" stringAccessoryState:v62 accessoryUniqueIdentifier:stringValue serviceUniqueIdentifier:accessoryUniqueIdentifier serviceType:serviceGroupUniqueIdentifier characteristicType:zoneUniqueIdentifiers serviceGroupUniqueIdentifier:v34 zoneUniqueIdentifiers:v37 roomUniqueIdentifier:serviceName2 accessoryName:v40 serviceName:serviceGroupName roomName:zoneNames serviceGroupName:homeName zoneNames:? homeName:?];
        }
      }

      else
      {
        v28 = [BMHomeKitClientBase alloc];
        base = [v5 base];
        v62 = [(BMHomeKitClientBase *)v28 initWithProto:?];
        v57 = accessoryState;
        stringValue = [accessoryState dataValue];
        accessoryUniqueIdentifier = [v5 accessoryUniqueIdentifier];
        serviceUniqueIdentifier3 = [v5 serviceUniqueIdentifier];
        serviceType3 = [v5 serviceType];
        characteristicType3 = [v5 characteristicType];
        serviceGroupUniqueIdentifier = [v5 serviceGroupUniqueIdentifier];
        zoneUniqueIdentifiers = [v5 zoneUniqueIdentifiers];
        roomUniqueIdentifier3 = [v5 roomUniqueIdentifier];
        accessoryName3 = [v5 accessoryName];
        serviceName3 = [v5 serviceName];
        roomName3 = [v5 roomName];
        serviceGroupName = [v5 serviceGroupName];
        zoneNames = [v5 zoneNames];
        homeName = [v5 homeName];
        v42 = roomName3;
        v52 = roomName3;
        v53 = serviceName3;
        v39 = accessoryName3;
        v54 = accessoryName3;
        v55 = roomUniqueIdentifier3;
        v36 = roomUniqueIdentifier3;
        v16 = serviceUniqueIdentifier3;
        v17 = serviceType3;
        v18 = characteristicType3;
        v19 = [BMHomeKitClientAccessoryControlEvent initWithBase:"initWithBase:dataAccessoryState:accessoryUniqueIdentifier:serviceUniqueIdentifier:serviceType:characteristicType:serviceGroupUniqueIdentifier:zoneUniqueIdentifiers:roomUniqueIdentifier:accessoryName:serviceName:roomName:serviceGroupName:zoneNames:homeName:" dataAccessoryState:v62 accessoryUniqueIdentifier:stringValue serviceUniqueIdentifier:accessoryUniqueIdentifier serviceType:serviceGroupUniqueIdentifier characteristicType:zoneUniqueIdentifiers serviceGroupUniqueIdentifier:v36 zoneUniqueIdentifiers:v39 roomUniqueIdentifier:serviceName3 accessoryName:v42 serviceName:serviceGroupName roomName:zoneNames serviceGroupName:homeName zoneNames:? homeName:?];
      }

      self = v19;

      selfCopy = self;
      accessoryState = v57;
LABEL_15:

      goto LABEL_16;
    }

    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [BMHomeKitClientAccessoryControlEvent initWithProto:];
    }
  }

  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

- (BMHomeKitClientAccessoryControlEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBHomeKitClientAccessoryControlEvent alloc] initWithData:dataCopy];

    self = [(BMHomeKitClientAccessoryControlEvent *)self initWithProto:v5];
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
  v3 = objc_opt_new();
  base = [(BMHomeKitClientAccessoryControlEvent *)self base];
  proto = [base proto];
  [v3 setBase:proto];

  accessoryUniqueIdentifier = [(BMHomeKitClientAccessoryControlEvent *)self accessoryUniqueIdentifier];
  [v3 setAccessoryUniqueIdentifier:accessoryUniqueIdentifier];

  v7 = objc_opt_new();
  accessoryStateNumber = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateNumber];

  if (accessoryStateNumber)
  {
    accessoryStateNumber2 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateNumber];
    [accessoryStateNumber2 doubleValue];
    [v7 setNumValue:?];
    v10 = 2;
LABEL_7:

    [v7 setValueType:v10];
    [v3 setAccessoryState:v7];
    serviceUniqueIdentifier = [(BMHomeKitClientAccessoryControlEvent *)self serviceUniqueIdentifier];
    [v3 setServiceUniqueIdentifier:serviceUniqueIdentifier];

    serviceType = [(BMHomeKitClientAccessoryControlEvent *)self serviceType];
    [v3 setServiceType:serviceType];

    characteristicType = [(BMHomeKitClientAccessoryControlEvent *)self characteristicType];
    [v3 setCharacteristicType:characteristicType];

    serviceGroupUniqueIdentifier = [(BMHomeKitClientAccessoryControlEvent *)self serviceGroupUniqueIdentifier];
    [v3 setServiceGroupUniqueIdentifier:serviceGroupUniqueIdentifier];

    v17 = MEMORY[0x1E695DF70];
    zoneUniqueIdentifiers = [(BMHomeKitClientAccessoryControlEvent *)self zoneUniqueIdentifiers];
    v19 = [v17 arrayWithArray:zoneUniqueIdentifiers];
    [v3 setZoneUniqueIdentifiers:v19];

    roomUniqueIdentifier = [(BMHomeKitClientAccessoryControlEvent *)self roomUniqueIdentifier];
    [v3 setRoomUniqueIdentifier:roomUniqueIdentifier];

    accessoryName = [(BMHomeKitClientAccessoryControlEvent *)self accessoryName];
    [v3 setAccessoryName:accessoryName];

    serviceName = [(BMHomeKitClientAccessoryControlEvent *)self serviceName];
    [v3 setServiceName:serviceName];

    roomName = [(BMHomeKitClientAccessoryControlEvent *)self roomName];
    [v3 setRoomName:roomName];

    serviceGroupName = [(BMHomeKitClientAccessoryControlEvent *)self serviceGroupName];
    [v3 setServiceGroupName:serviceGroupName];

    v25 = MEMORY[0x1E695DF70];
    zoneNames = [(BMHomeKitClientAccessoryControlEvent *)self zoneNames];
    v27 = [v25 arrayWithArray:zoneNames];
    [v3 setZoneNames:v27];

    homeName = [(BMHomeKitClientAccessoryControlEvent *)self homeName];
    [v3 setHomeName:homeName];

    v29 = v3;
    goto LABEL_8;
  }

  accessoryStateString = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateString];

  if (accessoryStateString)
  {
    accessoryStateNumber2 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateString];
    [v7 setStringValue:accessoryStateNumber2];
    v10 = 1;
    goto LABEL_7;
  }

  accessoryStateData = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateData];

  if (accessoryStateData)
  {
    accessoryStateNumber2 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateData];
    [v7 setDataValue:accessoryStateNumber2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = equalCopy;
    v8 = equalCopy;
    base = [(BMHomeKitClientAccessoryControlEvent *)self base];
    if (base || ([v8 base], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      base2 = [(BMHomeKitClientAccessoryControlEvent *)self base];
      base3 = [v8 base];
      v49 = [base2 isEqual:base3];

      if (base)
      {
LABEL_9:

        accessoryUniqueIdentifier = [(BMHomeKitClientAccessoryControlEvent *)self accessoryUniqueIdentifier];
        if (accessoryUniqueIdentifier || ([v8 accessoryUniqueIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          base2 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryUniqueIdentifier];
          base3 = [v8 accessoryUniqueIdentifier];
          v48 = [base2 isEqual:base3];

          if (accessoryUniqueIdentifier)
          {
LABEL_15:

            accessoryStateString = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateString];
            if (accessoryStateString || ([v8 accessoryStateString], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              base2 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateString];
              base3 = [v8 accessoryStateString];
              v47 = [base2 isEqual:base3];

              if (accessoryStateString)
              {
LABEL_21:

                accessoryStateNumber = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateNumber];
                if (accessoryStateNumber || ([v8 accessoryStateNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  base2 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateNumber];
                  base3 = [v8 accessoryStateNumber];
                  v46 = [base2 isEqual:base3];

                  if (accessoryStateNumber)
                  {
LABEL_27:

                    accessoryStateData = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateData];
                    if (accessoryStateData || ([v8 accessoryStateData], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      base2 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryStateData];
                      base3 = [v8 accessoryStateData];
                      v45 = [base2 isEqual:base3];

                      if (accessoryStateData)
                      {
LABEL_33:

                        serviceUniqueIdentifier = [(BMHomeKitClientAccessoryControlEvent *)self serviceUniqueIdentifier];
                        if (serviceUniqueIdentifier || ([v8 serviceUniqueIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          base2 = [(BMHomeKitClientAccessoryControlEvent *)self serviceUniqueIdentifier];
                          base3 = [v8 serviceUniqueIdentifier];
                          v44 = [base2 isEqual:base3];

                          if (serviceUniqueIdentifier)
                          {
LABEL_39:

                            serviceType = [(BMHomeKitClientAccessoryControlEvent *)self serviceType];
                            if (serviceType || ([v8 serviceType], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                            {
                              base2 = [(BMHomeKitClientAccessoryControlEvent *)self serviceType];
                              base3 = [v8 serviceType];
                              v43 = [base2 isEqual:base3];

                              if (serviceType)
                              {
LABEL_45:

                                characteristicType = [(BMHomeKitClientAccessoryControlEvent *)self characteristicType];
                                if (characteristicType || ([v8 characteristicType], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                {
                                  base2 = [(BMHomeKitClientAccessoryControlEvent *)self characteristicType];
                                  base3 = [v8 characteristicType];
                                  v42 = [base2 isEqual:base3];

                                  if (characteristicType)
                                  {
LABEL_51:

                                    serviceGroupUniqueIdentifier = [(BMHomeKitClientAccessoryControlEvent *)self serviceGroupUniqueIdentifier];
                                    if (serviceGroupUniqueIdentifier || ([v8 serviceGroupUniqueIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                    {
                                      base2 = [(BMHomeKitClientAccessoryControlEvent *)self serviceGroupUniqueIdentifier];
                                      base3 = [v8 serviceGroupUniqueIdentifier];
                                      v41 = [base2 isEqual:base3];

                                      if (serviceGroupUniqueIdentifier)
                                      {
LABEL_57:

                                        zoneUniqueIdentifiers = [(BMHomeKitClientAccessoryControlEvent *)self zoneUniqueIdentifiers];
                                        if (zoneUniqueIdentifiers || ([v8 zoneUniqueIdentifiers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                        {
                                          base2 = [(BMHomeKitClientAccessoryControlEvent *)self zoneUniqueIdentifiers];
                                          base3 = [v8 zoneUniqueIdentifiers];
                                          v40 = [base2 isEqual:base3];

                                          if (zoneUniqueIdentifiers)
                                          {
LABEL_63:

                                            roomUniqueIdentifier = [(BMHomeKitClientAccessoryControlEvent *)self roomUniqueIdentifier];
                                            if (roomUniqueIdentifier || ([v8 roomUniqueIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                            {
                                              base2 = [(BMHomeKitClientAccessoryControlEvent *)self roomUniqueIdentifier];
                                              base3 = [v8 roomUniqueIdentifier];
                                              v39 = [base2 isEqual:base3];

                                              if (roomUniqueIdentifier)
                                              {
LABEL_69:

                                                accessoryName = [(BMHomeKitClientAccessoryControlEvent *)self accessoryName];
                                                if (accessoryName || ([v8 accessoryName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                                {
                                                  base2 = [(BMHomeKitClientAccessoryControlEvent *)self accessoryName];
                                                  base3 = [v8 accessoryName];
                                                  v38 = [base2 isEqual:base3];

                                                  if (accessoryName)
                                                  {
LABEL_75:

                                                    serviceName = [(BMHomeKitClientAccessoryControlEvent *)self serviceName];
                                                    if (serviceName || ([v8 serviceName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                                    {
                                                      base2 = [(BMHomeKitClientAccessoryControlEvent *)self serviceName];
                                                      base3 = [v8 serviceName];
                                                      v23 = [base2 isEqual:base3];

                                                      if (serviceName)
                                                      {
LABEL_81:

                                                        roomName = [(BMHomeKitClientAccessoryControlEvent *)self roomName];
                                                        if (roomName || ([v8 roomName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                                                        {
                                                          base2 = [(BMHomeKitClientAccessoryControlEvent *)self roomName];
                                                          base3 = [v8 roomName];
                                                          v25 = [base2 isEqual:base3];

                                                          if (roomName)
                                                          {
LABEL_87:

                                                            serviceGroupName = [(BMHomeKitClientAccessoryControlEvent *)self serviceGroupName];
                                                            if (serviceGroupName || ([v8 serviceGroupName], (base2 = objc_claimAutoreleasedReturnValue()) != 0))
                                                            {
                                                              base3 = [(BMHomeKitClientAccessoryControlEvent *)self serviceGroupName];
                                                              serviceGroupName2 = [v8 serviceGroupName];
                                                              v28 = [base3 isEqual:serviceGroupName2];

                                                              if (serviceGroupName)
                                                              {
LABEL_93:

                                                                zoneNames = [(BMHomeKitClientAccessoryControlEvent *)self zoneNames];
                                                                if (zoneNames || ([v8 zoneNames], (base3 = objc_claimAutoreleasedReturnValue()) != 0))
                                                                {
                                                                  zoneNames2 = [(BMHomeKitClientAccessoryControlEvent *)self zoneNames];
                                                                  zoneNames3 = [v8 zoneNames];
                                                                  v32 = [zoneNames2 isEqual:zoneNames3];

                                                                  if (zoneNames)
                                                                  {
LABEL_99:

                                                                    homeName = [(BMHomeKitClientAccessoryControlEvent *)self homeName];
                                                                    if (homeName || ([v8 homeName], (base3 = objc_claimAutoreleasedReturnValue()) != 0))
                                                                    {
                                                                      homeName2 = [(BMHomeKitClientAccessoryControlEvent *)self homeName];
                                                                      homeName3 = [v8 homeName];
                                                                      v36 = [homeName2 isEqual:homeName3];

                                                                      if (homeName)
                                                                      {
LABEL_105:

                                                                        v10 = v49 & v48 & v47 & v46 & v45 & v44 & v43 & v42 & v41 & v40 & v39 & v38 & v23 & v25 & v28 & v32 & v36;
                                                                        equalCopy = v50;
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