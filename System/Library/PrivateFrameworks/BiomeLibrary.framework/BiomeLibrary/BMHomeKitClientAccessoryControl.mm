@interface BMHomeKitClientAccessoryControl
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMHomeKitClientAccessoryControl)initWithBase:(id)base accessoryUniqueIdentifier:(id)identifier accessoryState:(id)state serviceUniqueIdentifier:(id)uniqueIdentifier serviceType:(id)type characteristicType:(id)characteristicType serviceGroupUniqueIdentifier:(id)groupUniqueIdentifier zoneUniqueIdentifiers:(id)self0 roomUniqueIdentifier:(id)self1 accessoryName:(id)self2 serviceName:(id)self3 roomName:(id)self4 serviceGroupName:(id)self5 zoneNames:(id)self6 homeName:(id)self7;
- (BMHomeKitClientAccessoryControl)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_zoneNamesJSONArray;
- (id)_zoneUniqueIdentifiersJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMHomeKitClientAccessoryControl

+ (id)columns
{
  v20[15] = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"base_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_69540];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accessoryUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"accessoryState_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_85_69542];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"serviceUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"serviceType" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"characteristicType" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"serviceGroupUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"zoneUniqueIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_87_69543];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"roomUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accessoryName" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"serviceName" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"roomName" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"serviceGroupName" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"zoneNames_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_89_69544];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"homeName" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v20[0] = v19;
  v20[1] = v18;
  v20[2] = v17;
  v20[3] = v16;
  v20[4] = v2;
  v20[5] = v14;
  v20[6] = v3;
  v20[7] = v4;
  v20[8] = v5;
  v20[9] = v6;
  v20[10] = v7;
  v20[11] = v15;
  v20[12] = v13;
  v20[13] = v8;
  v20[14] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:15];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    base = [(BMHomeKitClientAccessoryControl *)self base];
    base2 = [v5 base];
    v8 = base2;
    if (base == base2)
    {
    }

    else
    {
      base3 = [(BMHomeKitClientAccessoryControl *)self base];
      base4 = [v5 base];
      v11 = [base3 isEqual:base4];

      if (!v11)
      {
        goto LABEL_57;
      }
    }

    accessoryUniqueIdentifier = [(BMHomeKitClientAccessoryControl *)self accessoryUniqueIdentifier];
    accessoryUniqueIdentifier2 = [v5 accessoryUniqueIdentifier];
    v15 = accessoryUniqueIdentifier2;
    if (accessoryUniqueIdentifier == accessoryUniqueIdentifier2)
    {
    }

    else
    {
      accessoryUniqueIdentifier3 = [(BMHomeKitClientAccessoryControl *)self accessoryUniqueIdentifier];
      accessoryUniqueIdentifier4 = [v5 accessoryUniqueIdentifier];
      v18 = [accessoryUniqueIdentifier3 isEqual:accessoryUniqueIdentifier4];

      if (!v18)
      {
        goto LABEL_57;
      }
    }

    accessoryState = [(BMHomeKitClientAccessoryControl *)self accessoryState];
    accessoryState2 = [v5 accessoryState];
    v21 = accessoryState2;
    if (accessoryState == accessoryState2)
    {
    }

    else
    {
      accessoryState3 = [(BMHomeKitClientAccessoryControl *)self accessoryState];
      accessoryState4 = [v5 accessoryState];
      v24 = [accessoryState3 isEqual:accessoryState4];

      if (!v24)
      {
        goto LABEL_57;
      }
    }

    serviceUniqueIdentifier = [(BMHomeKitClientAccessoryControl *)self serviceUniqueIdentifier];
    serviceUniqueIdentifier2 = [v5 serviceUniqueIdentifier];
    v27 = serviceUniqueIdentifier2;
    if (serviceUniqueIdentifier == serviceUniqueIdentifier2)
    {
    }

    else
    {
      serviceUniqueIdentifier3 = [(BMHomeKitClientAccessoryControl *)self serviceUniqueIdentifier];
      serviceUniqueIdentifier4 = [v5 serviceUniqueIdentifier];
      v30 = [serviceUniqueIdentifier3 isEqual:serviceUniqueIdentifier4];

      if (!v30)
      {
        goto LABEL_57;
      }
    }

    serviceType = [(BMHomeKitClientAccessoryControl *)self serviceType];
    serviceType2 = [v5 serviceType];
    v33 = serviceType2;
    if (serviceType == serviceType2)
    {
    }

    else
    {
      serviceType3 = [(BMHomeKitClientAccessoryControl *)self serviceType];
      serviceType4 = [v5 serviceType];
      v36 = [serviceType3 isEqual:serviceType4];

      if (!v36)
      {
        goto LABEL_57;
      }
    }

    characteristicType = [(BMHomeKitClientAccessoryControl *)self characteristicType];
    characteristicType2 = [v5 characteristicType];
    v39 = characteristicType2;
    if (characteristicType == characteristicType2)
    {
    }

    else
    {
      characteristicType3 = [(BMHomeKitClientAccessoryControl *)self characteristicType];
      characteristicType4 = [v5 characteristicType];
      v42 = [characteristicType3 isEqual:characteristicType4];

      if (!v42)
      {
        goto LABEL_57;
      }
    }

    serviceGroupUniqueIdentifier = [(BMHomeKitClientAccessoryControl *)self serviceGroupUniqueIdentifier];
    serviceGroupUniqueIdentifier2 = [v5 serviceGroupUniqueIdentifier];
    v45 = serviceGroupUniqueIdentifier2;
    if (serviceGroupUniqueIdentifier == serviceGroupUniqueIdentifier2)
    {
    }

    else
    {
      serviceGroupUniqueIdentifier3 = [(BMHomeKitClientAccessoryControl *)self serviceGroupUniqueIdentifier];
      serviceGroupUniqueIdentifier4 = [v5 serviceGroupUniqueIdentifier];
      v48 = [serviceGroupUniqueIdentifier3 isEqual:serviceGroupUniqueIdentifier4];

      if (!v48)
      {
        goto LABEL_57;
      }
    }

    zoneUniqueIdentifiers = [(BMHomeKitClientAccessoryControl *)self zoneUniqueIdentifiers];
    zoneUniqueIdentifiers2 = [v5 zoneUniqueIdentifiers];
    v51 = zoneUniqueIdentifiers2;
    if (zoneUniqueIdentifiers == zoneUniqueIdentifiers2)
    {
    }

    else
    {
      zoneUniqueIdentifiers3 = [(BMHomeKitClientAccessoryControl *)self zoneUniqueIdentifiers];
      zoneUniqueIdentifiers4 = [v5 zoneUniqueIdentifiers];
      v54 = [zoneUniqueIdentifiers3 isEqual:zoneUniqueIdentifiers4];

      if (!v54)
      {
        goto LABEL_57;
      }
    }

    roomUniqueIdentifier = [(BMHomeKitClientAccessoryControl *)self roomUniqueIdentifier];
    roomUniqueIdentifier2 = [v5 roomUniqueIdentifier];
    v57 = roomUniqueIdentifier2;
    if (roomUniqueIdentifier == roomUniqueIdentifier2)
    {
    }

    else
    {
      roomUniqueIdentifier3 = [(BMHomeKitClientAccessoryControl *)self roomUniqueIdentifier];
      roomUniqueIdentifier4 = [v5 roomUniqueIdentifier];
      v60 = [roomUniqueIdentifier3 isEqual:roomUniqueIdentifier4];

      if (!v60)
      {
        goto LABEL_57;
      }
    }

    accessoryName = [(BMHomeKitClientAccessoryControl *)self accessoryName];
    accessoryName2 = [v5 accessoryName];
    v63 = accessoryName2;
    if (accessoryName == accessoryName2)
    {
    }

    else
    {
      accessoryName3 = [(BMHomeKitClientAccessoryControl *)self accessoryName];
      accessoryName4 = [v5 accessoryName];
      v66 = [accessoryName3 isEqual:accessoryName4];

      if (!v66)
      {
        goto LABEL_57;
      }
    }

    serviceName = [(BMHomeKitClientAccessoryControl *)self serviceName];
    serviceName2 = [v5 serviceName];
    v69 = serviceName2;
    if (serviceName == serviceName2)
    {
    }

    else
    {
      serviceName3 = [(BMHomeKitClientAccessoryControl *)self serviceName];
      serviceName4 = [v5 serviceName];
      v72 = [serviceName3 isEqual:serviceName4];

      if (!v72)
      {
        goto LABEL_57;
      }
    }

    roomName = [(BMHomeKitClientAccessoryControl *)self roomName];
    roomName2 = [v5 roomName];
    v75 = roomName2;
    if (roomName == roomName2)
    {
    }

    else
    {
      roomName3 = [(BMHomeKitClientAccessoryControl *)self roomName];
      roomName4 = [v5 roomName];
      v78 = [roomName3 isEqual:roomName4];

      if (!v78)
      {
        goto LABEL_57;
      }
    }

    serviceGroupName = [(BMHomeKitClientAccessoryControl *)self serviceGroupName];
    serviceGroupName2 = [v5 serviceGroupName];
    v81 = serviceGroupName2;
    if (serviceGroupName == serviceGroupName2)
    {
    }

    else
    {
      serviceGroupName3 = [(BMHomeKitClientAccessoryControl *)self serviceGroupName];
      serviceGroupName4 = [v5 serviceGroupName];
      v84 = [serviceGroupName3 isEqual:serviceGroupName4];

      if (!v84)
      {
        goto LABEL_57;
      }
    }

    zoneNames = [(BMHomeKitClientAccessoryControl *)self zoneNames];
    zoneNames2 = [v5 zoneNames];
    v87 = zoneNames2;
    if (zoneNames == zoneNames2)
    {
    }

    else
    {
      zoneNames3 = [(BMHomeKitClientAccessoryControl *)self zoneNames];
      zoneNames4 = [v5 zoneNames];
      v90 = [zoneNames3 isEqual:zoneNames4];

      if (!v90)
      {
LABEL_57:
        v12 = 0;
LABEL_58:

        goto LABEL_59;
      }
    }

    homeName = [(BMHomeKitClientAccessoryControl *)self homeName];
    homeName2 = [v5 homeName];
    if (homeName == homeName2)
    {
      v12 = 1;
    }

    else
    {
      homeName3 = [(BMHomeKitClientAccessoryControl *)self homeName];
      homeName4 = [v5 homeName];
      v12 = [homeName3 isEqual:homeName4];
    }

    goto LABEL_58;
  }

  v12 = 0;
LABEL_59:

  return v12;
}

- (id)jsonDictionary
{
  v56[15] = *MEMORY[0x1E69E9840];
  base = [(BMHomeKitClientAccessoryControl *)self base];
  jsonDictionary = [base jsonDictionary];

  accessoryUniqueIdentifier = [(BMHomeKitClientAccessoryControl *)self accessoryUniqueIdentifier];
  accessoryState = [(BMHomeKitClientAccessoryControl *)self accessoryState];
  jsonDictionary2 = [accessoryState jsonDictionary];

  serviceUniqueIdentifier = [(BMHomeKitClientAccessoryControl *)self serviceUniqueIdentifier];
  serviceType = [(BMHomeKitClientAccessoryControl *)self serviceType];
  characteristicType = [(BMHomeKitClientAccessoryControl *)self characteristicType];
  serviceGroupUniqueIdentifier = [(BMHomeKitClientAccessoryControl *)self serviceGroupUniqueIdentifier];
  _zoneUniqueIdentifiersJSONArray = [(BMHomeKitClientAccessoryControl *)self _zoneUniqueIdentifiersJSONArray];
  roomUniqueIdentifier = [(BMHomeKitClientAccessoryControl *)self roomUniqueIdentifier];
  accessoryName = [(BMHomeKitClientAccessoryControl *)self accessoryName];
  serviceName = [(BMHomeKitClientAccessoryControl *)self serviceName];
  roomName = [(BMHomeKitClientAccessoryControl *)self roomName];
  serviceGroupName = [(BMHomeKitClientAccessoryControl *)self serviceGroupName];
  _zoneNamesJSONArray = [(BMHomeKitClientAccessoryControl *)self _zoneNamesJSONArray];
  homeName = [(BMHomeKitClientAccessoryControl *)self homeName];
  v55[0] = @"base";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null;
  v56[0] = null;
  v55[1] = @"accessoryUniqueIdentifier";
  null2 = accessoryUniqueIdentifier;
  if (!accessoryUniqueIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null2;
  v56[1] = null2;
  v55[2] = @"accessoryState";
  null3 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null3;
  v56[2] = null3;
  v55[3] = @"serviceUniqueIdentifier";
  null4 = serviceUniqueIdentifier;
  if (!serviceUniqueIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null4;
  v56[3] = null4;
  v55[4] = @"serviceType";
  null5 = serviceType;
  if (!serviceType)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null5;
  v56[4] = null5;
  v55[5] = @"characteristicType";
  null6 = characteristicType;
  if (!characteristicType)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null6;
  v56[5] = null6;
  v55[6] = @"serviceGroupUniqueIdentifier";
  null7 = serviceGroupUniqueIdentifier;
  if (!serviceGroupUniqueIdentifier)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null7;
  v56[6] = null7;
  v55[7] = @"zoneUniqueIdentifiers";
  null8 = _zoneUniqueIdentifiersJSONArray;
  if (!_zoneUniqueIdentifiersJSONArray)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = roomUniqueIdentifier;
  v35 = null8;
  v56[7] = null8;
  v55[8] = @"roomUniqueIdentifier";
  null9 = roomUniqueIdentifier;
  if (!roomUniqueIdentifier)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = homeName;
  v33 = null9;
  v56[8] = null9;
  v55[9] = @"accessoryName";
  null10 = accessoryName;
  if (!accessoryName)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = serviceType;
  v48 = serviceUniqueIdentifier;
  v56[9] = null10;
  v55[10] = @"serviceName";
  null11 = serviceName;
  if (!serviceName)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = characteristicType;
  v44 = jsonDictionary;
  v56[10] = null11;
  v55[11] = @"roomName";
  null12 = roomName;
  if (!roomName)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = accessoryUniqueIdentifier;
  v56[11] = null12;
  v55[12] = @"serviceGroupName";
  null13 = serviceGroupName;
  if (!serviceGroupName)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v56[12] = null13;
  v55[13] = @"zoneNames";
  null14 = _zoneNamesJSONArray;
  if (!_zoneNamesJSONArray)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v56[13] = null14;
  v55[14] = @"homeName";
  null15 = v49;
  if (!v49)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v56[14] = null15;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:{15, v33}];
  if (!v49)
  {
  }

  if (!_zoneNamesJSONArray)
  {
  }

  if (!serviceGroupName)
  {
  }

  if (!roomName)
  {
  }

  if (!serviceName)
  {
  }

  if (!accessoryName)
  {
  }

  if (!v45)
  {
  }

  if (_zoneUniqueIdentifiersJSONArray)
  {
    if (serviceGroupUniqueIdentifier)
    {
      goto LABEL_47;
    }
  }

  else
  {

    if (serviceGroupUniqueIdentifier)
    {
LABEL_47:
      if (v46)
      {
        goto LABEL_48;
      }

      goto LABEL_58;
    }
  }

  if (v46)
  {
LABEL_48:
    if (v47)
    {
      goto LABEL_49;
    }

    goto LABEL_59;
  }

LABEL_58:

  if (v47)
  {
LABEL_49:
    if (v48)
    {
      goto LABEL_50;
    }

    goto LABEL_60;
  }

LABEL_59:

  if (v48)
  {
LABEL_50:
    if (jsonDictionary2)
    {
      goto LABEL_51;
    }

    goto LABEL_61;
  }

LABEL_60:

  if (jsonDictionary2)
  {
LABEL_51:
    if (v27)
    {
      goto LABEL_52;
    }

LABEL_62:

    if (v44)
    {
      goto LABEL_53;
    }

    goto LABEL_63;
  }

LABEL_61:

  if (!v27)
  {
    goto LABEL_62;
  }

LABEL_52:
  if (v44)
  {
    goto LABEL_53;
  }

LABEL_63:

LABEL_53:
  v31 = *MEMORY[0x1E69E9840];

  return v43;
}

- (id)_zoneNamesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  zoneNames = [(BMHomeKitClientAccessoryControl *)self zoneNames];
  v5 = [zoneNames countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(zoneNames);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [zoneNames countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_zoneUniqueIdentifiersJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  zoneUniqueIdentifiers = [(BMHomeKitClientAccessoryControl *)self zoneUniqueIdentifiers];
  v5 = [zoneUniqueIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(zoneUniqueIdentifiers);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [zoneUniqueIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMHomeKitClientAccessoryControl)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v241[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v191 = [dictionaryCopy objectForKeyedSubscript:@"base"];
  if (!v191 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v201 = 0;
    v188 = v191;
    v7 = [[BMHomeKitBase alloc] initWithJSONDictionary:v188 error:&v201];
    v20 = v201;
    if (v20)
    {
      if (error)
      {
        v20 = v20;
        *error = v20;
      }

      error = 0;
      goto LABEL_177;
    }

LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"accessoryUniqueIdentifier"];
    errorCopy7 = self;
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v35 = v8;
          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy = error;
          v38 = v7;
          v39 = *MEMORY[0x1E698F240];
          v238 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accessoryUniqueIdentifier"];
          v239 = v21;
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v239 forKeys:&v238 count:1];
          v41 = v36;
          v8 = v35;
          v42 = v39;
          v7 = v38;
          v188 = 0;
          error = 0;
          *errorCopy = [v41 initWithDomain:v42 code:2 userInfo:v40];
          goto LABEL_174;
        }

        v188 = 0;
LABEL_176:

        goto LABEL_177;
      }

      v188 = v8;
    }

    else
    {
      v188 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"accessoryState"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v186 = 0;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v9;
      v22 = [BMHomeKitAccessoryState alloc];
      v200 = 0;
      v186 = [(BMHomeKitAccessoryState *)v22 initWithJSONDictionary:v21 error:&v200];
      v23 = v200;
      if (v23)
      {
        if (error)
        {
          v23 = v23;
          *error = v23;
        }

        error = 0;
        goto LABEL_173;
      }

LABEL_10:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"serviceUniqueIdentifier"];
      v183 = v10;
      v184 = v8;
      if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v51 = objc_alloc(MEMORY[0x1E696ABC0]);
            v52 = v7;
            v53 = *MEMORY[0x1E698F240];
            v234 = *MEMORY[0x1E696A578];
            errorCopy2 = error;
            v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"serviceUniqueIdentifier"];
            v235 = v55;
            v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v235 forKeys:&v234 count:1];
            v56 = v51;
            v8 = v184;
            v57 = v53;
            v7 = v52;
            v182 = 0;
            error = 0;
            *errorCopy2 = [v56 initWithDomain:v57 code:2 userInfo:v12];
            goto LABEL_171;
          }

          v182 = 0;
          goto LABEL_172;
        }

        v182 = v11;
      }

      else
      {
        v182 = 0;
      }

      v12 = [dictionaryCopy objectForKeyedSubscript:@"serviceType"];
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v63 = objc_alloc(MEMORY[0x1E696ABC0]);
            v64 = v7;
            v65 = *MEMORY[0x1E698F240];
            v232 = *MEMORY[0x1E696A578];
            errorCopy3 = error;
            v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"serviceType"];
            v233 = v67;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:&v232 count:1];
            v68 = v63;
            v8 = v184;
            v69 = v65;
            v7 = v64;
            v70 = v67;
            v55 = 0;
            error = 0;
            *errorCopy3 = [v68 initWithDomain:v69 code:2 userInfo:v13];
            goto LABEL_170;
          }

          v55 = 0;
          goto LABEL_171;
        }

        v181 = v12;
      }

      else
      {
        v181 = 0;
      }

      v13 = [dictionaryCopy objectForKeyedSubscript:@"characteristicType"];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v43 = v13;
        v44 = v12;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v73 = objc_alloc(MEMORY[0x1E696ABC0]);
            v74 = v7;
            v75 = *MEMORY[0x1E698F240];
            v230 = *MEMORY[0x1E696A578];
            errorCopy4 = error;
            v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"characteristicType"];
            v231 = v77;
            v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v231 forKeys:&v230 count:1];
            v79 = v73;
            v80 = v77;
            v81 = v75;
            v7 = v74;
            v70 = 0;
            error = 0;
            *errorCopy4 = [v79 initWithDomain:v81 code:2 userInfo:v78];
            v12 = v44;
            v13 = v43;
            v14 = v78;
            v55 = v181;
            goto LABEL_169;
          }

          v70 = 0;
          v55 = v181;
          v13 = v43;
          goto LABEL_170;
        }

        v178 = v43;
        v13 = v43;
      }

      else
      {
        v178 = 0;
      }

      v14 = [dictionaryCopy objectForKeyedSubscript:@"serviceGroupUniqueIdentifier"];
      errorCopy5 = error;
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v83 = v13;
            v84 = v12;
            v85 = v7;
            v86 = objc_alloc(MEMORY[0x1E696ABC0]);
            v87 = *MEMORY[0x1E698F240];
            v228 = *MEMORY[0x1E696A578];
            v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"serviceGroupUniqueIdentifier"];
            v229 = v15;
            v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v229 forKeys:&v228 count:1];
            v89 = v86;
            v7 = v85;
            v12 = v84;
            v13 = v83;
            v190 = v88;
            v90 = [v89 initWithDomain:v87 code:2 userInfo:?];
            v177 = 0;
            error = 0;
            v55 = v181;
            *errorCopy5 = v90;
            v70 = v178;

            goto LABEL_168;
          }

          v80 = 0;
          v55 = v181;
          v70 = v178;
          goto LABEL_169;
        }

        v174 = v7;
        v177 = v14;
      }

      else
      {
        v174 = v7;
        v177 = 0;
      }

      v15 = [dictionaryCopy objectForKeyedSubscript:@"zoneUniqueIdentifiers"];
      null = [MEMORY[0x1E695DFB0] null];
      v17 = [v15 isEqual:null];

      v175 = v14;
      v176 = v9;
      if (v17)
      {
        v18 = v13;
        v19 = v12;

        v15 = 0;
      }

      else
      {
        if (v15)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v91 = objc_alloc(MEMORY[0x1E696ABC0]);
              v92 = *MEMORY[0x1E698F240];
              v226 = *MEMORY[0x1E696A578];
              v189 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"zoneUniqueIdentifiers"];
              v227 = v189;
              v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v227 forKeys:&v226 count:1];
              v94 = v92;
              v9 = v176;
              v95 = [v91 initWithDomain:v94 code:2 userInfo:v93];
              errorCopy6 = error;
              error = 0;
              *errorCopy6 = v95;
              v82 = v93;
              v7 = v174;
              v55 = v181;
              v70 = v178;
              goto LABEL_166;
            }

            v7 = v174;
            v55 = v181;
            v70 = v178;
            goto LABEL_168;
          }
        }

        v18 = v13;
        v19 = v12;
      }

      v189 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
      v196 = 0u;
      v197 = 0u;
      v198 = 0u;
      v199 = 0u;
      v15 = v15;
      v28 = [v15 countByEnumeratingWithState:&v196 objects:v225 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v197;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v197 != v30)
            {
              objc_enumerationMutation(v15);
            }

            v32 = *(*(&v196 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (errorCopy5)
              {
                v58 = objc_alloc(MEMORY[0x1E696ABC0]);
                v59 = *MEMORY[0x1E698F240];
                v223 = *MEMORY[0x1E696A578];
                v170 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"zoneUniqueIdentifiers"];
                v224 = v170;
                v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v224 forKeys:&v223 count:1];
                v61 = v58;
                v62 = v59;
LABEL_73:
                v168 = v60;
                v55 = v181;
                v70 = v178;
                error = 0;
                *errorCopy5 = [v61 initWithDomain:v62 code:2 userInfo:?];
                v171 = v15;
                v9 = v176;
                v12 = v19;
                v13 = v18;
                v7 = v174;
                v14 = v175;

                goto LABEL_165;
              }

LABEL_77:
              error = 0;
              v82 = v15;
              v9 = v176;
              v12 = v19;
              v55 = v181;
              v13 = v18;
              v70 = v178;
              v7 = v174;
              v14 = v175;
              goto LABEL_166;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (errorCopy5)
              {
                v71 = objc_alloc(MEMORY[0x1E696ABC0]);
                v72 = *MEMORY[0x1E698F240];
                v221 = *MEMORY[0x1E696A578];
                v170 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"zoneUniqueIdentifiers"];
                v222 = v170;
                v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v222 forKeys:&v221 count:1];
                v61 = v71;
                v62 = v72;
                goto LABEL_73;
              }

              goto LABEL_77;
            }

            [v189 addObject:v32];
          }

          v29 = [v15 countByEnumeratingWithState:&v196 objects:v225 count:16];
        }

        while (v29);
      }

      v33 = [dictionaryCopy objectForKeyedSubscript:@"roomUniqueIdentifier"];
      v170 = v33;
      if (v33)
      {
        v34 = v33;
        objc_opt_class();
        v9 = v176;
        if (objc_opt_isKindOfClass())
        {
          v171 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy5)
            {
              v171 = 0;
              error = 0;
              v12 = v19;
              v55 = v181;
              v13 = v18;
              v70 = v178;
              v7 = v174;
              v14 = v175;
              goto LABEL_165;
            }

            v118 = objc_alloc(MEMORY[0x1E696ABC0]);
            v119 = *MEMORY[0x1E698F240];
            v219 = *MEMORY[0x1E696A578];
            v169 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"roomUniqueIdentifier"];
            v220 = v169;
            v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v220 forKeys:&v219 count:1];
            v121 = v119;
            v9 = v176;
            v166 = v120;
            v171 = 0;
            error = 0;
            *errorCopy5 = [v118 initWithDomain:v121 code:2 userInfo:?];
            goto LABEL_151;
          }

          v171 = v34;
        }
      }

      else
      {
        v171 = 0;
        v9 = v176;
      }

      v12 = v19;
      v97 = [dictionaryCopy objectForKeyedSubscript:@"accessoryName"];
      v13 = v18;
      v166 = v97;
      if (!v97)
      {
        v169 = 0;
        v14 = v175;
        goto LABEL_95;
      }

      v98 = v97;
      objc_opt_class();
      v14 = v175;
      if (objc_opt_isKindOfClass())
      {
        v169 = 0;
        goto LABEL_95;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v169 = v98;
LABEL_95:
        v99 = [dictionaryCopy objectForKeyedSubscript:@"serviceName"];
        v164 = v99;
        if (!v99 || (v100 = v99, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v165 = 0;
          goto LABEL_98;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v165 = v100;
LABEL_98:
          v101 = [dictionaryCopy objectForKeyedSubscript:@"roomName"];
          v162 = v101;
          if (!v101 || (v102 = v101, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v163 = 0;
            goto LABEL_101;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v163 = v102;
LABEL_101:
            v103 = [dictionaryCopy objectForKeyedSubscript:@"serviceGroupName"];
            v160 = v103;
            if (!v103 || (v104 = v103, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v161 = 0;
LABEL_104:
              v105 = [dictionaryCopy objectForKeyedSubscript:@"zoneNames"];
              null2 = [MEMORY[0x1E695DFB0] null];
              v107 = [v105 isEqual:null2];

              if (v107)
              {
                v108 = v13;
                v109 = v12;

                v105 = 0;
              }

              else
              {
                if (v105)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    obj = v105;
                    if (errorCopy5)
                    {
                      v146 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v147 = *MEMORY[0x1E698F240];
                      v209 = *MEMORY[0x1E696A578];
                      v172 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"zoneNames"];
                      v210 = v172;
                      v148 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
                      v149 = [v146 initWithDomain:v147 code:2 userInfo:v148];
                      v141 = v148;
                      error = 0;
                      *errorCopy5 = v149;
                      v7 = v174;
                      v9 = v176;
                      v55 = v181;
                      v70 = v178;
                      goto LABEL_157;
                    }

                    error = 0;
                    v7 = v174;
                    v9 = v176;
                    v55 = v181;
                    v70 = v178;
                    goto LABEL_159;
                  }
                }

                v108 = v13;
                v109 = v12;
              }

              v172 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v105, "count")}];
              v192 = 0u;
              v193 = 0u;
              v194 = 0u;
              v195 = 0u;
              obj = v105;
              v110 = [obj countByEnumeratingWithState:&v192 objects:v208 count:16];
              if (!v110)
              {
                goto LABEL_122;
              }

              v111 = v110;
              v112 = *v193;
LABEL_115:
              v113 = 0;
              while (1)
              {
                if (*v193 != v112)
                {
                  objc_enumerationMutation(obj);
                }

                v114 = *(*(&v192 + 1) + 8 * v113);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  break;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (errorCopy5)
                  {
                    v127 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v128 = *MEMORY[0x1E698F240];
                    v204 = *MEMORY[0x1E696A578];
                    v126 = errorCopy5;
                    v159 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"zoneNames"];
                    v205 = v159;
                    v129 = MEMORY[0x1E695DF20];
                    v130 = &v205;
                    v131 = &v204;
                    goto LABEL_140;
                  }

                  goto LABEL_143;
                }

                [v172 addObject:v114];
                if (v111 == ++v113)
                {
                  v111 = [obj countByEnumeratingWithState:&v192 objects:v208 count:16];
                  if (v111)
                  {
                    goto LABEL_115;
                  }

LABEL_122:

                  v115 = [dictionaryCopy objectForKeyedSubscript:@"homeName"];
                  v159 = v115;
                  if (!v115)
                  {
                    v117 = 0;
                    v150 = errorCopy7;
                    v7 = v174;
                    v9 = v176;
                    v12 = v109;
                    v55 = v181;
                    v13 = v108;
                    v70 = v178;
                    goto LABEL_155;
                  }

                  v116 = v115;
                  objc_opt_class();
                  v7 = v174;
                  v9 = v176;
                  v12 = v109;
                  if (objc_opt_isKindOfClass())
                  {
                    v117 = 0;
                    v55 = v181;
                    v13 = v108;
                    v70 = v178;
                    goto LABEL_154;
                  }

                  objc_opt_class();
                  v70 = v178;
                  if (objc_opt_isKindOfClass())
                  {
                    v117 = v116;
                    v55 = v181;
                    v13 = v108;
LABEL_154:
                    v150 = errorCopy7;
LABEL_155:
                    v180 = v117;
                    error = [(BMHomeKitClientAccessoryControl *)v150 initWithBase:v7 accessoryUniqueIdentifier:v188 accessoryState:v186 serviceUniqueIdentifier:v182 serviceType:v55 characteristicType:v70 serviceGroupUniqueIdentifier:v177 zoneUniqueIdentifiers:v189 roomUniqueIdentifier:v171 accessoryName:v169 serviceName:v165 roomName:v163 serviceGroupName:v161 zoneNames:v172 homeName:v117];
                    errorCopy7 = error;
                  }

                  else
                  {
                    if (errorCopy5)
                    {
                      v153 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v154 = *MEMORY[0x1E698F240];
                      v202 = *MEMORY[0x1E696A578];
                      v155 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"homeName"];
                      v203 = v155;
                      v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v203 forKeys:&v202 count:1];
                      v157 = v153;
                      v7 = v174;
                      v158 = v154;
                      v9 = v176;
                      *errorCopy5 = [v157 initWithDomain:v158 code:2 userInfo:v156];

                      v70 = v178;
                    }

                    v180 = 0;
                    error = 0;
                    v55 = v181;
                    v13 = v108;
                  }

LABEL_156:
                  v14 = v175;

                  v141 = v180;
LABEL_157:

LABEL_159:
LABEL_160:

LABEL_161:
LABEL_162:

LABEL_163:
LABEL_165:

                  v82 = v171;
LABEL_166:

LABEL_168:
                  v80 = v177;
LABEL_169:

                  v8 = v184;
LABEL_170:

LABEL_171:
LABEL_172:

                  v21 = v9;
LABEL_173:
                  v40 = v186;
LABEL_174:

                  v9 = v21;
                  goto LABEL_175;
                }
              }

              v126 = errorCopy5;
              if (errorCopy5)
              {
                v127 = objc_alloc(MEMORY[0x1E696ABC0]);
                v128 = *MEMORY[0x1E698F240];
                v206 = *MEMORY[0x1E696A578];
                v159 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"zoneNames"];
                v207 = v159;
                v129 = MEMORY[0x1E695DF20];
                v130 = &v207;
                v131 = &v206;
LABEL_140:
                v136 = [v129 dictionaryWithObjects:v130 forKeys:v131 count:1];
                *v126 = [v127 initWithDomain:v128 code:2 userInfo:v136];

                error = 0;
                v180 = obj;
                v7 = v174;
                v9 = v176;
                v12 = v109;
                v55 = v181;
                v13 = v108;
                v70 = v178;
                goto LABEL_156;
              }

LABEL_143:
              error = 0;
              v141 = obj;
              v9 = v176;
              v12 = v109;
              v55 = v181;
              v13 = v108;
              v70 = v178;
              v7 = v174;
              v14 = v175;
              goto LABEL_157;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v161 = v104;
              goto LABEL_104;
            }

            v18 = v13;
            v19 = v12;
            if (errorCopy5)
            {
              v142 = objc_alloc(MEMORY[0x1E696ABC0]);
              v143 = *MEMORY[0x1E698F240];
              v211 = *MEMORY[0x1E696A578];
              obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"serviceGroupName"];
              v212 = obj;
              v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v212 forKeys:&v211 count:1];
              v145 = v143;
              v9 = v176;
              v173 = v144;
              v161 = 0;
              error = 0;
              *errorCopy5 = [v142 initWithDomain:v145 code:2 userInfo:?];
              v55 = v181;
              v13 = v18;
              v70 = v178;
              v7 = v174;
              v14 = v175;

              goto LABEL_159;
            }

            v161 = 0;
            error = 0;
LABEL_184:
            v12 = v19;
            v55 = v181;
            v13 = v18;
            v70 = v178;
            v7 = v174;
            v14 = v175;
            goto LABEL_160;
          }

          v18 = v13;
          v19 = v12;
          if (errorCopy5)
          {
            v137 = objc_alloc(MEMORY[0x1E696ABC0]);
            v138 = *MEMORY[0x1E698F240];
            v213 = *MEMORY[0x1E696A578];
            v161 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"roomName"];
            v214 = v161;
            v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
            v140 = v138;
            v9 = v176;
            v160 = v139;
            v163 = 0;
            error = 0;
            *errorCopy5 = [v137 initWithDomain:v140 code:2 userInfo:?];
            goto LABEL_184;
          }

          v163 = 0;
          error = 0;
LABEL_182:
          v12 = v19;
          v55 = v181;
          v13 = v18;
          v70 = v178;
          v7 = v174;
          v14 = v175;
          goto LABEL_161;
        }

        v18 = v13;
        v19 = v12;
        if (errorCopy5)
        {
          v132 = objc_alloc(MEMORY[0x1E696ABC0]);
          v133 = *MEMORY[0x1E698F240];
          v215 = *MEMORY[0x1E696A578];
          v163 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"serviceName"];
          v216 = v163;
          v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
          v135 = v133;
          v9 = v176;
          v162 = v134;
          v165 = 0;
          error = 0;
          *errorCopy5 = [v132 initWithDomain:v135 code:2 userInfo:?];
          goto LABEL_182;
        }

        v165 = 0;
        error = 0;
LABEL_180:
        v12 = v19;
        v55 = v181;
        v13 = v18;
        v70 = v178;
        v7 = v174;
        v14 = v175;
        goto LABEL_162;
      }

      v18 = v13;
      v19 = v12;
      if (errorCopy5)
      {
        v122 = objc_alloc(MEMORY[0x1E696ABC0]);
        v123 = *MEMORY[0x1E698F240];
        v217 = *MEMORY[0x1E696A578];
        v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accessoryName"];
        v218 = v165;
        v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v218 forKeys:&v217 count:1];
        v125 = v123;
        v9 = v176;
        v164 = v124;
        v169 = 0;
        error = 0;
        *errorCopy5 = [v122 initWithDomain:v125 code:2 userInfo:?];
        goto LABEL_180;
      }

      v169 = 0;
      error = 0;
LABEL_151:
      v12 = v19;
      v55 = v181;
      v13 = v18;
      v70 = v178;
      v7 = v174;
      v14 = v175;
      goto LABEL_163;
    }

    if (error)
    {
      v185 = v8;
      v45 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = v7;
      v47 = *MEMORY[0x1E698F240];
      v236 = *MEMORY[0x1E696A578];
      v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"accessoryState"];
      v237 = v40;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v237 forKeys:&v236 count:1];
      v49 = v45;
      v8 = v185;
      v50 = v47;
      v7 = v46;
      *error = [v49 initWithDomain:v50 code:2 userInfo:v48];

      error = 0;
      v21 = v9;
      goto LABEL_174;
    }

LABEL_175:

    self = errorCopy7;
    goto LABEL_176;
  }

  if (error)
  {
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = *MEMORY[0x1E698F240];
    v240 = *MEMORY[0x1E696A578];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"base"];
    v241[0] = v7;
    v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v241 forKeys:&v240 count:1];
    v26 = [v24 initWithDomain:v25 code:2 userInfo:?];
    errorCopy8 = error;
    error = 0;
    *errorCopy8 = v26;
LABEL_177:
  }

  v151 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMHomeKitClientAccessoryControl *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_base)
  {
    v26 = 0;
    PBDataWriterPlaceMark();
    [(BMHomeKitBase *)self->_base writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_accessoryUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessoryState)
  {
    v26 = 0;
    PBDataWriterPlaceMark();
    [(BMHomeKitAccessoryState *)self->_accessoryState writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_serviceUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_characteristicType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serviceGroupUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_zoneUniqueIdentifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  if (self->_roomUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessoryName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_roomName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serviceGroupName)
  {
    PBDataWriterWriteStringField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_zoneNames;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v13);
  }

  if (self->_homeName)
  {
    PBDataWriterWriteStringField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v35.receiver = self;
  v35.super_class = BMHomeKitClientAccessoryControl;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
LABEL_48:
    v33 = v5;
    goto LABEL_49;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position >= [fromCopy length])
  {
LABEL_46:
    v28 = [v6 copy];
    zoneUniqueIdentifiers = v5->_zoneUniqueIdentifiers;
    v5->_zoneUniqueIdentifiers = v28;

    v30 = [v7 copy];
    zoneNames = v5->_zoneNames;
    v5->_zoneNames = v30;

    hasError = [fromCopy hasError];
    if (hasError)
    {
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  while (2)
  {
    if ([fromCopy hasError])
    {
      goto LABEL_46;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      LOBYTE(v36) = 0;
      v12 = [fromCopy position] + 1;
      if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v11 |= (v36 & 0x7F) << v9;
      if ((v36 & 0x80) == 0)
      {
        break;
      }

      v9 += 7;
      if (v10++ >= 9)
      {
        v16 = 0;
        goto LABEL_16;
      }
    }

    v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
    if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
    {
      goto LABEL_46;
    }

    switch((v16 >> 3))
    {
      case 1u:
        v36 = 0;
        v37 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_50;
        }

        v17 = [[BMHomeKitBase alloc] initByReadFrom:fromCopy];
        if (!v17)
        {
          goto LABEL_50;
        }

        v18 = 24;
        goto LABEL_30;
      case 2u:
        v19 = PBReaderReadString();
        v20 = 32;
        goto LABEL_44;
      case 3u:
        v36 = 0;
        v37 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_50;
        }

        v17 = [[BMHomeKitAccessoryState alloc] initByReadFrom:fromCopy];
        if (!v17)
        {
          goto LABEL_50;
        }

        v18 = 40;
LABEL_30:
        v21 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        PBReaderRecallMark();
        goto LABEL_45;
      case 4u:
        v19 = PBReaderReadString();
        v20 = 48;
        goto LABEL_44;
      case 5u:
        v19 = PBReaderReadString();
        v20 = 56;
        goto LABEL_44;
      case 6u:
        v19 = PBReaderReadString();
        v20 = 64;
        goto LABEL_44;
      case 7u:
        v19 = PBReaderReadString();
        v20 = 72;
        goto LABEL_44;
      case 8u:
        v22 = PBReaderReadString();
        if (!v22)
        {
          goto LABEL_50;
        }

        v23 = v22;
        v24 = v6;
        goto LABEL_40;
      case 9u:
        v19 = PBReaderReadString();
        v20 = 88;
        goto LABEL_44;
      case 0xAu:
        v19 = PBReaderReadString();
        v20 = 96;
        goto LABEL_44;
      case 0xBu:
        v19 = PBReaderReadString();
        v20 = 104;
        goto LABEL_44;
      case 0xCu:
        v19 = PBReaderReadString();
        v20 = 112;
        goto LABEL_44;
      case 0xDu:
        v19 = PBReaderReadString();
        v20 = 120;
        goto LABEL_44;
      case 0xEu:
        v25 = PBReaderReadString();
        if (!v25)
        {
          goto LABEL_50;
        }

        v23 = v25;
        v24 = v7;
LABEL_40:
        [v24 addObject:v23];

        goto LABEL_45;
      case 0xFu:
        v19 = PBReaderReadString();
        v20 = 136;
LABEL_44:
        v26 = *(&v5->super.super.isa + v20);
        *(&v5->super.super.isa + v20) = v19;

        goto LABEL_45;
      default:
        if (PBReaderSkipValueWithTag())
        {
LABEL_45:
          position2 = [fromCopy position];
          if (position2 >= [fromCopy length])
          {
            goto LABEL_46;
          }

          continue;
        }

LABEL_50:

LABEL_47:
        v33 = 0;
LABEL_49:

        return v33;
    }
  }
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  base = [(BMHomeKitClientAccessoryControl *)self base];
  accessoryUniqueIdentifier = [(BMHomeKitClientAccessoryControl *)self accessoryUniqueIdentifier];
  accessoryState = [(BMHomeKitClientAccessoryControl *)self accessoryState];
  serviceUniqueIdentifier = [(BMHomeKitClientAccessoryControl *)self serviceUniqueIdentifier];
  serviceType = [(BMHomeKitClientAccessoryControl *)self serviceType];
  characteristicType = [(BMHomeKitClientAccessoryControl *)self characteristicType];
  serviceGroupUniqueIdentifier = [(BMHomeKitClientAccessoryControl *)self serviceGroupUniqueIdentifier];
  zoneUniqueIdentifiers = [(BMHomeKitClientAccessoryControl *)self zoneUniqueIdentifiers];
  roomUniqueIdentifier = [(BMHomeKitClientAccessoryControl *)self roomUniqueIdentifier];
  accessoryName = [(BMHomeKitClientAccessoryControl *)self accessoryName];
  serviceName = [(BMHomeKitClientAccessoryControl *)self serviceName];
  roomName = [(BMHomeKitClientAccessoryControl *)self roomName];
  serviceGroupName = [(BMHomeKitClientAccessoryControl *)self serviceGroupName];
  zoneNames = [(BMHomeKitClientAccessoryControl *)self zoneNames];
  homeName = [(BMHomeKitClientAccessoryControl *)self homeName];
  v16 = [v15 initWithFormat:@"BMHomeKitClientAccessoryControl with base: %@, accessoryUniqueIdentifier: %@, accessoryState: %@, serviceUniqueIdentifier: %@, serviceType: %@, characteristicType: %@, serviceGroupUniqueIdentifier: %@, zoneUniqueIdentifiers: %@, roomUniqueIdentifier: %@, accessoryName: %@, serviceName: %@, roomName: %@, serviceGroupName: %@, zoneNames: %@, homeName: %@", base, accessoryUniqueIdentifier, accessoryState, serviceUniqueIdentifier, serviceType, characteristicType, serviceGroupUniqueIdentifier, zoneUniqueIdentifiers, roomUniqueIdentifier, accessoryName, serviceName, roomName, serviceGroupName, zoneNames, homeName];

  return v16;
}

- (BMHomeKitClientAccessoryControl)initWithBase:(id)base accessoryUniqueIdentifier:(id)identifier accessoryState:(id)state serviceUniqueIdentifier:(id)uniqueIdentifier serviceType:(id)type characteristicType:(id)characteristicType serviceGroupUniqueIdentifier:(id)groupUniqueIdentifier zoneUniqueIdentifiers:(id)self0 roomUniqueIdentifier:(id)self1 accessoryName:(id)self2 serviceName:(id)self3 roomName:(id)self4 serviceGroupName:(id)self5 zoneNames:(id)self6 homeName:(id)self7
{
  baseCopy = base;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  stateCopy = state;
  stateCopy2 = state;
  uniqueIdentifierCopy = uniqueIdentifier;
  uniqueIdentifierCopy2 = uniqueIdentifier;
  typeCopy = type;
  characteristicTypeCopy = characteristicType;
  groupUniqueIdentifierCopy = groupUniqueIdentifier;
  identifiersCopy = identifiers;
  roomUniqueIdentifierCopy = roomUniqueIdentifier;
  nameCopy = name;
  serviceNameCopy = serviceName;
  roomNameCopy = roomName;
  groupNameCopy = groupName;
  namesCopy = names;
  homeNameCopy = homeName;
  v44.receiver = self;
  v44.super_class = BMHomeKitClientAccessoryControl;
  v28 = [(BMEventBase *)&v44 init];
  if (v28)
  {
    v28->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v28->_base, base);
    objc_storeStrong(&v28->_accessoryUniqueIdentifier, identifierCopy);
    objc_storeStrong(&v28->_accessoryState, stateCopy);
    objc_storeStrong(&v28->_serviceUniqueIdentifier, uniqueIdentifierCopy);
    objc_storeStrong(&v28->_serviceType, type);
    objc_storeStrong(&v28->_characteristicType, characteristicType);
    objc_storeStrong(&v28->_serviceGroupUniqueIdentifier, groupUniqueIdentifier);
    objc_storeStrong(&v28->_zoneUniqueIdentifiers, identifiers);
    objc_storeStrong(&v28->_roomUniqueIdentifier, roomUniqueIdentifier);
    objc_storeStrong(&v28->_accessoryName, name);
    objc_storeStrong(&v28->_serviceName, serviceName);
    objc_storeStrong(&v28->_roomName, roomName);
    objc_storeStrong(&v28->_serviceGroupName, groupName);
    objc_storeStrong(&v28->_zoneNames, names);
    objc_storeStrong(&v28->_homeName, homeName);
  }

  return v28;
}

+ (id)protoFields
{
  v20[15] = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"base" number:1 type:14 subMessageClass:objc_opt_class()];
  v20[0] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accessoryUniqueIdentifier" number:2 type:13 subMessageClass:0];
  v20[1] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accessoryState" number:3 type:14 subMessageClass:objc_opt_class()];
  v20[2] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serviceUniqueIdentifier" number:4 type:13 subMessageClass:0];
  v20[3] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serviceType" number:5 type:13 subMessageClass:0];
  v20[4] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"characteristicType" number:6 type:13 subMessageClass:0];
  v20[5] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serviceGroupUniqueIdentifier" number:7 type:13 subMessageClass:0];
  v20[6] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"zoneUniqueIdentifiers" number:8 type:13 subMessageClass:0];
  v20[7] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"roomUniqueIdentifier" number:9 type:13 subMessageClass:0];
  v20[8] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accessoryName" number:10 type:13 subMessageClass:0];
  v20[9] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serviceName" number:11 type:13 subMessageClass:0];
  v20[10] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"roomName" number:12 type:13 subMessageClass:0];
  v20[11] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serviceGroupName" number:13 type:13 subMessageClass:0];
  v20[12] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"zoneNames" number:14 type:13 subMessageClass:0];
  v20[13] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"homeName" number:15 type:13 subMessageClass:0];
  v20[14] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:15];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __42__BMHomeKitClientAccessoryControl_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _zoneNamesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __42__BMHomeKitClientAccessoryControl_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _zoneUniqueIdentifiersJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __42__BMHomeKitClientAccessoryControl_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 accessoryState];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __42__BMHomeKitClientAccessoryControl_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 base];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
  {
    if (version != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMHomeKitClientAccessoryControl;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMHomeKitClientAccessoryControl_v0;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 16) = version;
  }

LABEL_9:

  return v9;
}

@end