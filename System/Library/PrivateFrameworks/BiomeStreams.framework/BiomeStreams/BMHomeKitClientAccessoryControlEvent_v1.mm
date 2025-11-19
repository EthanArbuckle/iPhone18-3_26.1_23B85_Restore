@interface BMHomeKitClientAccessoryControlEvent_v1
- (BMHomeKitClientAccessoryControlEvent_v1)initWithProto:(id)a3;
@end

@implementation BMHomeKitClientAccessoryControlEvent_v1

- (BMHomeKitClientAccessoryControlEvent_v1)initWithProto:(id)a3
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
      switch(v7)
      {
        case 3:
          v27 = [BMHomeKitClientBase alloc];
          v56 = [v5 base];
          v62 = [(BMHomeKitClientBase *)v27 initWithProto:?];
          v28 = MEMORY[0x1E696AD98];
          v57 = v6;
          [v6 numValue];
          v61 = [v28 numberWithDouble:?];
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
          v19 = [BMHomeKitClientAccessoryControlEvent initWithBase:"initWithBase:numberAccessoryState:accessoryUniqueIdentifier:serviceUniqueIdentifier:serviceType:characteristicType:serviceGroupUniqueIdentifier:zoneUniqueIdentifiers:roomUniqueIdentifier:accessoryName:serviceName:roomName:serviceGroupName:zoneNames:homeName:" numberAccessoryState:v62 accessoryUniqueIdentifier:v61 serviceUniqueIdentifier:v60 serviceType:v59 characteristicType:v58 serviceGroupUniqueIdentifier:v36 zoneUniqueIdentifiers:v39 roomUniqueIdentifier:v31 accessoryName:v42 serviceName:v13 roomName:v14 serviceGroupName:v15 zoneNames:? homeName:?];
          break;
        case 2:
          v22 = [BMHomeKitClientBase alloc];
          v56 = [v5 base];
          v62 = [(BMHomeKitClientBase *)v22 initWithProto:?];
          v57 = v6;
          v61 = [v6 stringValue];
          v60 = [v5 accessoryUniqueIdentifier];
          v50 = [v5 serviceUniqueIdentifier];
          v47 = [v5 serviceType];
          v44 = [v5 characteristicType];
          v59 = [v5 serviceGroupUniqueIdentifier];
          v58 = [v5 zoneUniqueIdentifiers];
          v23 = [v5 roomUniqueIdentifier];
          v24 = [v5 accessoryName];
          v25 = [v5 serviceName];
          v26 = [v5 roomName];
          v13 = [v5 serviceGroupName];
          v14 = [v5 zoneNames];
          v15 = [v5 homeName];
          v41 = v26;
          v52 = v26;
          v53 = v25;
          v38 = v24;
          v54 = v24;
          v55 = v23;
          v35 = v23;
          v16 = v50;
          v17 = v47;
          v18 = v44;
          v19 = [BMHomeKitClientAccessoryControlEvent initWithBase:"initWithBase:stringAccessoryState:accessoryUniqueIdentifier:serviceUniqueIdentifier:serviceType:characteristicType:serviceGroupUniqueIdentifier:zoneUniqueIdentifiers:roomUniqueIdentifier:accessoryName:serviceName:roomName:serviceGroupName:zoneNames:homeName:" stringAccessoryState:v62 accessoryUniqueIdentifier:v61 serviceUniqueIdentifier:v60 serviceType:v59 characteristicType:v58 serviceGroupUniqueIdentifier:v35 zoneUniqueIdentifiers:v38 roomUniqueIdentifier:v25 accessoryName:v41 serviceName:v13 roomName:v14 serviceGroupName:v15 zoneNames:? homeName:?];
          break;
        case 1:
          v8 = [BMHomeKitClientBase alloc];
          v56 = [v5 base];
          v62 = [(BMHomeKitClientBase *)v8 initWithProto:?];
          v57 = v6;
          v61 = [v6 dataValue];
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
          v19 = [BMHomeKitClientAccessoryControlEvent initWithBase:"initWithBase:dataAccessoryState:accessoryUniqueIdentifier:serviceUniqueIdentifier:serviceType:characteristicType:serviceGroupUniqueIdentifier:zoneUniqueIdentifiers:roomUniqueIdentifier:accessoryName:serviceName:roomName:serviceGroupName:zoneNames:homeName:" dataAccessoryState:v62 accessoryUniqueIdentifier:v61 serviceUniqueIdentifier:v60 serviceType:v59 characteristicType:v58 serviceGroupUniqueIdentifier:v34 zoneUniqueIdentifiers:v37 roomUniqueIdentifier:v11 accessoryName:v40 serviceName:v13 roomName:v14 serviceGroupName:v15 zoneNames:? homeName:?];
          break;
        default:
          v21 = 0;
          goto LABEL_15;
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

@end