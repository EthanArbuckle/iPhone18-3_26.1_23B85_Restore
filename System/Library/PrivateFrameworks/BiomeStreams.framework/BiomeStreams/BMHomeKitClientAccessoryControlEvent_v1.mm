@interface BMHomeKitClientAccessoryControlEvent_v1
- (BMHomeKitClientAccessoryControlEvent_v1)initWithProto:(id)proto;
@end

@implementation BMHomeKitClientAccessoryControlEvent_v1

- (BMHomeKitClientAccessoryControlEvent_v1)initWithProto:(id)proto
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
      switch(valueType)
      {
        case 3:
          v27 = [BMHomeKitClientBase alloc];
          base = [v5 base];
          v62 = [(BMHomeKitClientBase *)v27 initWithProto:?];
          v28 = MEMORY[0x1E696AD98];
          v57 = accessoryState;
          [accessoryState numValue];
          stringValue = [v28 numberWithDouble:?];
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
          v42 = roomName;
          v52 = roomName;
          v53 = serviceName;
          v39 = accessoryName;
          v54 = accessoryName;
          v55 = roomUniqueIdentifier;
          v36 = roomUniqueIdentifier;
          v16 = serviceUniqueIdentifier;
          v17 = serviceType;
          v18 = characteristicType;
          v19 = [BMHomeKitClientAccessoryControlEvent initWithBase:"initWithBase:numberAccessoryState:accessoryUniqueIdentifier:serviceUniqueIdentifier:serviceType:characteristicType:serviceGroupUniqueIdentifier:zoneUniqueIdentifiers:roomUniqueIdentifier:accessoryName:serviceName:roomName:serviceGroupName:zoneNames:homeName:" numberAccessoryState:v62 accessoryUniqueIdentifier:stringValue serviceUniqueIdentifier:accessoryUniqueIdentifier serviceType:serviceGroupUniqueIdentifier characteristicType:zoneUniqueIdentifiers serviceGroupUniqueIdentifier:v36 zoneUniqueIdentifiers:v39 roomUniqueIdentifier:serviceName accessoryName:v42 serviceName:serviceGroupName roomName:zoneNames serviceGroupName:homeName zoneNames:? homeName:?];
          break;
        case 2:
          v22 = [BMHomeKitClientBase alloc];
          base = [v5 base];
          v62 = [(BMHomeKitClientBase *)v22 initWithProto:?];
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
          v41 = roomName2;
          v52 = roomName2;
          v53 = serviceName2;
          v38 = accessoryName2;
          v54 = accessoryName2;
          v55 = roomUniqueIdentifier2;
          v35 = roomUniqueIdentifier2;
          v16 = serviceUniqueIdentifier2;
          v17 = serviceType2;
          v18 = characteristicType2;
          v19 = [BMHomeKitClientAccessoryControlEvent initWithBase:"initWithBase:stringAccessoryState:accessoryUniqueIdentifier:serviceUniqueIdentifier:serviceType:characteristicType:serviceGroupUniqueIdentifier:zoneUniqueIdentifiers:roomUniqueIdentifier:accessoryName:serviceName:roomName:serviceGroupName:zoneNames:homeName:" stringAccessoryState:v62 accessoryUniqueIdentifier:stringValue serviceUniqueIdentifier:accessoryUniqueIdentifier serviceType:serviceGroupUniqueIdentifier characteristicType:zoneUniqueIdentifiers serviceGroupUniqueIdentifier:v35 zoneUniqueIdentifiers:v38 roomUniqueIdentifier:serviceName2 accessoryName:v41 serviceName:serviceGroupName roomName:zoneNames serviceGroupName:homeName zoneNames:? homeName:?];
          break;
        case 1:
          v8 = [BMHomeKitClientBase alloc];
          base = [v5 base];
          v62 = [(BMHomeKitClientBase *)v8 initWithProto:?];
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
          v40 = roomName3;
          v52 = roomName3;
          v53 = serviceName3;
          v37 = accessoryName3;
          v54 = accessoryName3;
          v55 = roomUniqueIdentifier3;
          v34 = roomUniqueIdentifier3;
          v16 = serviceUniqueIdentifier3;
          v17 = serviceType3;
          v18 = characteristicType3;
          v19 = [BMHomeKitClientAccessoryControlEvent initWithBase:"initWithBase:dataAccessoryState:accessoryUniqueIdentifier:serviceUniqueIdentifier:serviceType:characteristicType:serviceGroupUniqueIdentifier:zoneUniqueIdentifiers:roomUniqueIdentifier:accessoryName:serviceName:roomName:serviceGroupName:zoneNames:homeName:" dataAccessoryState:v62 accessoryUniqueIdentifier:stringValue serviceUniqueIdentifier:accessoryUniqueIdentifier serviceType:serviceGroupUniqueIdentifier characteristicType:zoneUniqueIdentifiers serviceGroupUniqueIdentifier:v34 zoneUniqueIdentifiers:v37 roomUniqueIdentifier:serviceName3 accessoryName:v40 serviceName:serviceGroupName roomName:zoneNames serviceGroupName:homeName zoneNames:? homeName:?];
          break;
        default:
          selfCopy = 0;
          goto LABEL_15;
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

@end