@interface BMHomeKitClientMediaAccessoryControl
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMHomeKitClientMediaAccessoryControl)initWithBase:(id)base accessoryUniqueIdentifier:(id)identifier accessoryState:(id)state accessoryMediaRouteIdentifier:(id)routeIdentifier zoneUniqueIdentifiers:(id)identifiers roomUniqueIdentifier:(id)uniqueIdentifier accessoryName:(id)name roomName:(id)self0 zoneNames:(id)self1 homeName:(id)self2;
- (BMHomeKitClientMediaAccessoryControl)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_accessoryStateJSONArray;
- (id)_zoneNamesJSONArray;
- (id)_zoneUniqueIdentifiersJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMHomeKitClientMediaAccessoryControl

+ (id)columns
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"base_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_33083];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accessoryUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"accessoryState_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_70];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accessoryMediaRouteIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"zoneUniqueIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_72_33085];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"roomUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accessoryName" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"roomName" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"zoneNames_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_74];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"homeName" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v6;
  v15[5] = v14;
  v15[6] = v7;
  v15[7] = v8;
  v15[8] = v9;
  v15[9] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    base = [(BMHomeKitClientMediaAccessoryControl *)self base];
    base2 = [v5 base];
    v8 = base2;
    if (base == base2)
    {
    }

    else
    {
      base3 = [(BMHomeKitClientMediaAccessoryControl *)self base];
      base4 = [v5 base];
      v11 = [base3 isEqual:base4];

      if (!v11)
      {
        goto LABEL_37;
      }
    }

    accessoryUniqueIdentifier = [(BMHomeKitClientMediaAccessoryControl *)self accessoryUniqueIdentifier];
    accessoryUniqueIdentifier2 = [v5 accessoryUniqueIdentifier];
    v15 = accessoryUniqueIdentifier2;
    if (accessoryUniqueIdentifier == accessoryUniqueIdentifier2)
    {
    }

    else
    {
      accessoryUniqueIdentifier3 = [(BMHomeKitClientMediaAccessoryControl *)self accessoryUniqueIdentifier];
      accessoryUniqueIdentifier4 = [v5 accessoryUniqueIdentifier];
      v18 = [accessoryUniqueIdentifier3 isEqual:accessoryUniqueIdentifier4];

      if (!v18)
      {
        goto LABEL_37;
      }
    }

    accessoryState = [(BMHomeKitClientMediaAccessoryControl *)self accessoryState];
    accessoryState2 = [v5 accessoryState];
    v21 = accessoryState2;
    if (accessoryState == accessoryState2)
    {
    }

    else
    {
      accessoryState3 = [(BMHomeKitClientMediaAccessoryControl *)self accessoryState];
      accessoryState4 = [v5 accessoryState];
      v24 = [accessoryState3 isEqual:accessoryState4];

      if (!v24)
      {
        goto LABEL_37;
      }
    }

    accessoryMediaRouteIdentifier = [(BMHomeKitClientMediaAccessoryControl *)self accessoryMediaRouteIdentifier];
    accessoryMediaRouteIdentifier2 = [v5 accessoryMediaRouteIdentifier];
    v27 = accessoryMediaRouteIdentifier2;
    if (accessoryMediaRouteIdentifier == accessoryMediaRouteIdentifier2)
    {
    }

    else
    {
      accessoryMediaRouteIdentifier3 = [(BMHomeKitClientMediaAccessoryControl *)self accessoryMediaRouteIdentifier];
      accessoryMediaRouteIdentifier4 = [v5 accessoryMediaRouteIdentifier];
      v30 = [accessoryMediaRouteIdentifier3 isEqual:accessoryMediaRouteIdentifier4];

      if (!v30)
      {
        goto LABEL_37;
      }
    }

    zoneUniqueIdentifiers = [(BMHomeKitClientMediaAccessoryControl *)self zoneUniqueIdentifiers];
    zoneUniqueIdentifiers2 = [v5 zoneUniqueIdentifiers];
    v33 = zoneUniqueIdentifiers2;
    if (zoneUniqueIdentifiers == zoneUniqueIdentifiers2)
    {
    }

    else
    {
      zoneUniqueIdentifiers3 = [(BMHomeKitClientMediaAccessoryControl *)self zoneUniqueIdentifiers];
      zoneUniqueIdentifiers4 = [v5 zoneUniqueIdentifiers];
      v36 = [zoneUniqueIdentifiers3 isEqual:zoneUniqueIdentifiers4];

      if (!v36)
      {
        goto LABEL_37;
      }
    }

    roomUniqueIdentifier = [(BMHomeKitClientMediaAccessoryControl *)self roomUniqueIdentifier];
    roomUniqueIdentifier2 = [v5 roomUniqueIdentifier];
    v39 = roomUniqueIdentifier2;
    if (roomUniqueIdentifier == roomUniqueIdentifier2)
    {
    }

    else
    {
      roomUniqueIdentifier3 = [(BMHomeKitClientMediaAccessoryControl *)self roomUniqueIdentifier];
      roomUniqueIdentifier4 = [v5 roomUniqueIdentifier];
      v42 = [roomUniqueIdentifier3 isEqual:roomUniqueIdentifier4];

      if (!v42)
      {
        goto LABEL_37;
      }
    }

    accessoryName = [(BMHomeKitClientMediaAccessoryControl *)self accessoryName];
    accessoryName2 = [v5 accessoryName];
    v45 = accessoryName2;
    if (accessoryName == accessoryName2)
    {
    }

    else
    {
      accessoryName3 = [(BMHomeKitClientMediaAccessoryControl *)self accessoryName];
      accessoryName4 = [v5 accessoryName];
      v48 = [accessoryName3 isEqual:accessoryName4];

      if (!v48)
      {
        goto LABEL_37;
      }
    }

    roomName = [(BMHomeKitClientMediaAccessoryControl *)self roomName];
    roomName2 = [v5 roomName];
    v51 = roomName2;
    if (roomName == roomName2)
    {
    }

    else
    {
      roomName3 = [(BMHomeKitClientMediaAccessoryControl *)self roomName];
      roomName4 = [v5 roomName];
      v54 = [roomName3 isEqual:roomName4];

      if (!v54)
      {
        goto LABEL_37;
      }
    }

    zoneNames = [(BMHomeKitClientMediaAccessoryControl *)self zoneNames];
    zoneNames2 = [v5 zoneNames];
    v57 = zoneNames2;
    if (zoneNames == zoneNames2)
    {
    }

    else
    {
      zoneNames3 = [(BMHomeKitClientMediaAccessoryControl *)self zoneNames];
      zoneNames4 = [v5 zoneNames];
      v60 = [zoneNames3 isEqual:zoneNames4];

      if (!v60)
      {
LABEL_37:
        v12 = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    homeName = [(BMHomeKitClientMediaAccessoryControl *)self homeName];
    homeName2 = [v5 homeName];
    if (homeName == homeName2)
    {
      v12 = 1;
    }

    else
    {
      homeName3 = [(BMHomeKitClientMediaAccessoryControl *)self homeName];
      homeName4 = [v5 homeName];
      v12 = [homeName3 isEqual:homeName4];
    }

    goto LABEL_38;
  }

  v12 = 0;
LABEL_39:

  return v12;
}

- (id)jsonDictionary
{
  v39[10] = *MEMORY[0x1E69E9840];
  base = [(BMHomeKitClientMediaAccessoryControl *)self base];
  jsonDictionary = [base jsonDictionary];

  accessoryUniqueIdentifier = [(BMHomeKitClientMediaAccessoryControl *)self accessoryUniqueIdentifier];
  _accessoryStateJSONArray = [(BMHomeKitClientMediaAccessoryControl *)self _accessoryStateJSONArray];
  accessoryMediaRouteIdentifier = [(BMHomeKitClientMediaAccessoryControl *)self accessoryMediaRouteIdentifier];
  _zoneUniqueIdentifiersJSONArray = [(BMHomeKitClientMediaAccessoryControl *)self _zoneUniqueIdentifiersJSONArray];
  roomUniqueIdentifier = [(BMHomeKitClientMediaAccessoryControl *)self roomUniqueIdentifier];
  accessoryName = [(BMHomeKitClientMediaAccessoryControl *)self accessoryName];
  roomName = [(BMHomeKitClientMediaAccessoryControl *)self roomName];
  _zoneNamesJSONArray = [(BMHomeKitClientMediaAccessoryControl *)self _zoneNamesJSONArray];
  homeName = [(BMHomeKitClientMediaAccessoryControl *)self homeName];
  v38[0] = @"base";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null;
  v39[0] = null;
  v38[1] = @"accessoryUniqueIdentifier";
  null2 = accessoryUniqueIdentifier;
  if (!accessoryUniqueIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null2;
  v39[1] = null2;
  v38[2] = @"accessoryState";
  null3 = _accessoryStateJSONArray;
  if (!_accessoryStateJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = jsonDictionary;
  v29 = null3;
  v39[2] = null3;
  v38[3] = @"accessoryMediaRouteIdentifier";
  null4 = accessoryMediaRouteIdentifier;
  if (!accessoryMediaRouteIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = accessoryUniqueIdentifier;
  v28 = null4;
  v39[3] = null4;
  v38[4] = @"zoneUniqueIdentifiers";
  null5 = _zoneUniqueIdentifiersJSONArray;
  if (!_zoneUniqueIdentifiersJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = _accessoryStateJSONArray;
  v27 = null5;
  v39[4] = null5;
  v38[5] = @"roomUniqueIdentifier";
  null6 = roomUniqueIdentifier;
  if (!roomUniqueIdentifier)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = accessoryMediaRouteIdentifier;
  v39[5] = null6;
  v38[6] = @"accessoryName";
  null7 = accessoryName;
  if (!accessoryName)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = _zoneUniqueIdentifiersJSONArray;
  v39[6] = null7;
  v38[7] = @"roomName";
  null8 = roomName;
  if (!roomName)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = roomUniqueIdentifier;
  v39[7] = null8;
  v38[8] = @"zoneNames";
  null9 = _zoneNamesJSONArray;
  if (!_zoneNamesJSONArray)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v39[8] = null9;
  v38[9] = @"homeName";
  null10 = homeName;
  if (!homeName)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v39[9] = null10;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:10];
  if (homeName)
  {
    if (_zoneNamesJSONArray)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (_zoneNamesJSONArray)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  if (!roomName)
  {
  }

  if (!accessoryName)
  {
  }

  if (!v22)
  {
  }

  if (!v20)
  {
  }

  if (!v33)
  {
  }

  if (v34)
  {
    if (v35)
    {
      goto LABEL_35;
    }

LABEL_42:

    if (v36)
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

  if (!v35)
  {
    goto LABEL_42;
  }

LABEL_35:
  if (v36)
  {
    goto LABEL_36;
  }

LABEL_43:

LABEL_36:
  v25 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)_zoneNamesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  zoneNames = [(BMHomeKitClientMediaAccessoryControl *)self zoneNames];
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
  zoneUniqueIdentifiers = [(BMHomeKitClientMediaAccessoryControl *)self zoneUniqueIdentifiers];
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

- (id)_accessoryStateJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  accessoryState = [(BMHomeKitClientMediaAccessoryControl *)self accessoryState];
  v5 = [accessoryState countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(accessoryState);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [accessoryState countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMHomeKitClientMediaAccessoryControl)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v192[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"base"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v136 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    v157 = 0;
    v25 = [[BMHomeKitBase alloc] initWithJSONDictionary:v9 error:&v157];
    v26 = v157;
    if (v26)
    {
      if (error)
      {
        v26 = v26;
        *error = v26;
      }

      selfCopy4 = 0;
      goto LABEL_149;
    }

    v136 = v25;

LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"accessoryUniqueIdentifier"];
    v135 = v6;
    v137 = v7;
    if (v7 && (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v189 = *MEMORY[0x1E696A578];
          v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accessoryUniqueIdentifier"];
          v190 = v10;
          v143 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
          v32 = [v30 initWithDomain:v31 code:2 userInfo:?];
          v9 = 0;
          selfCopy4 = 0;
          *error = v32;
          v25 = v136;

          goto LABEL_147;
        }

        v9 = 0;
        selfCopy4 = 0;
        v25 = v136;
LABEL_148:

        goto LABEL_149;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"accessoryState"];
    null = [MEMORY[0x1E695DFB0] null];
    v12 = [v10 isEqual:null];

    v134 = dictionaryCopy;
    if (v12)
    {
      selfCopy2 = self;
      v133 = v9;

      v10 = 0;
      goto LABEL_12;
    }

    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      selfCopy2 = self;
      v133 = v9;
LABEL_12:
      v142 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
      v153 = 0u;
      v154 = 0u;
      v155 = 0u;
      v156 = 0u;
      v10 = v10;
      v13 = [v10 countByEnumeratingWithState:&v153 objects:v186 count:16];
      if (!v13)
      {
LABEL_22:

        v18 = [dictionaryCopy objectForKeyedSubscript:@"accessoryMediaRouteIdentifier"];
        if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v61 = objc_alloc(MEMORY[0x1E696ABC0]);
              v62 = *MEMORY[0x1E698F240];
              v180 = *MEMORY[0x1E696A578];
              v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accessoryMediaRouteIdentifier"];
              v181 = v22;
              v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
              v63 = [v61 initWithDomain:v62 code:2 userInfo:?];
              v41 = 0;
              selfCopy4 = 0;
              *error = v63;
              self = selfCopy2;
              v9 = v133;

              goto LABEL_143;
            }

            v41 = 0;
            selfCopy4 = 0;
            self = selfCopy2;
            v9 = v133;
            goto LABEL_144;
          }

          v127 = v18;
        }

        else
        {
          v127 = 0;
        }

        v22 = [dictionaryCopy objectForKeyedSubscript:@"zoneUniqueIdentifiers"];
        null2 = [MEMORY[0x1E695DFB0] null];
        v24 = [v22 isEqual:null2];

        if (v24)
        {

          v22 = 0;
        }

        else
        {
          v9 = v133;
          if (v22)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                selfCopy4 = 0;
                v41 = v127;
                self = selfCopy2;
                goto LABEL_143;
              }

              v64 = objc_alloc(MEMORY[0x1E696ABC0]);
              v65 = *MEMORY[0x1E698F240];
              v178 = *MEMORY[0x1E696A578];
              v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"zoneUniqueIdentifiers"];
              v179 = v138;
              v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v179 forKeys:&v178 count:1];
              v67 = v64;
              v60 = v66;
              v68 = [v67 initWithDomain:v65 code:2 userInfo:v66];
              selfCopy4 = 0;
              *error = v68;
              goto LABEL_80;
            }
          }
        }

        v138 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v151 = 0u;
        v22 = v22;
        v45 = [v22 countByEnumeratingWithState:&v148 objects:v177 count:16];
        if (!v45)
        {
          goto LABEL_60;
        }

        v46 = v45;
        v47 = *v149;
        while (1)
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v149 != v47)
            {
              objc_enumerationMutation(v22);
            }

            v49 = *(*(&v148 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              errorCopy2 = error;
              if (error)
              {
                v52 = objc_alloc(MEMORY[0x1E696ABC0]);
                v53 = *MEMORY[0x1E698F240];
                v175 = *MEMORY[0x1E696A578];
                v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"zoneUniqueIdentifiers"];
                v176 = v54;
                v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
                v56 = v52;
                v50 = v54;
                v57 = v53;
LABEL_73:
                v122 = v55;
                dictionaryCopy = v134;
                self = selfCopy2;
                selfCopy4 = 0;
                *errorCopy2 = [v56 initWithDomain:v57 code:2 userInfo:?];
                v124 = v22;
                v9 = v133;
                v41 = v127;

                goto LABEL_140;
              }

LABEL_75:
              selfCopy4 = 0;
              v60 = v22;
              v9 = v133;
              dictionaryCopy = v134;
LABEL_80:
              v41 = v127;
              self = selfCopy2;
              goto LABEL_141;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              errorCopy2 = error;
              if (error)
              {
                v58 = objc_alloc(MEMORY[0x1E696ABC0]);
                v59 = *MEMORY[0x1E698F240];
                v173 = *MEMORY[0x1E696A578];
                v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"zoneUniqueIdentifiers"];
                v174 = v50;
                v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
                v56 = v58;
                v57 = v59;
                goto LABEL_73;
              }

              goto LABEL_75;
            }

            [v138 addObject:v49];
          }

          v46 = [v22 countByEnumeratingWithState:&v148 objects:v177 count:16];
          dictionaryCopy = v134;
          if (!v46)
          {
LABEL_60:

            v50 = [dictionaryCopy objectForKeyedSubscript:@"roomUniqueIdentifier"];
            if (!v50)
            {
              v124 = 0;
              self = selfCopy2;
              goto LABEL_84;
            }

            objc_opt_class();
            self = selfCopy2;
            if (objc_opt_isKindOfClass())
            {
              v124 = 0;
LABEL_84:
              v69 = [dictionaryCopy objectForKeyedSubscript:@"accessoryName"];
              v121 = v69;
              if (!v69 || (v70 = v69, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v123 = 0;
LABEL_87:
                v71 = [dictionaryCopy objectForKeyedSubscript:@"roomName"];
                v119 = v71;
                if (!v71 || (v72 = v71, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v118 = v50;
                  v120 = 0;
                  goto LABEL_90;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v118 = v50;
                  v120 = v72;
LABEL_90:
                  v73 = [dictionaryCopy objectForKeyedSubscript:@"zoneNames"];
                  null3 = [MEMORY[0x1E695DFB0] null];
                  v75 = [v73 isEqual:null3];

                  if (v75)
                  {
                    selfCopy5 = self;

                    v76 = 0;
LABEL_95:
                    v77 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v76, "count")}];
                    v144 = 0u;
                    v145 = 0u;
                    v146 = 0u;
                    v147 = 0u;
                    obj = v76;
                    v78 = [obj countByEnumeratingWithState:&v144 objects:v164 count:16];
                    if (!v78)
                    {
                      goto LABEL_104;
                    }

                    v79 = v78;
                    v80 = *v145;
LABEL_97:
                    v81 = 0;
                    while (1)
                    {
                      if (*v145 != v80)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v82 = *(*(&v144 + 1) + 8 * v81);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        break;
                      }

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        errorCopy4 = error;
                        if (error)
                        {
                          v94 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v87 = *MEMORY[0x1E698F240];
                          v160 = *MEMORY[0x1E696A578];
                          v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"zoneNames"];
                          v161 = v117;
                          v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
                          v89 = v94;
                          goto LABEL_119;
                        }

                        goto LABEL_122;
                      }

                      [v77 addObject:v82];
                      if (v79 == ++v81)
                      {
                        v79 = [obj countByEnumeratingWithState:&v144 objects:v164 count:16];
                        dictionaryCopy = v134;
                        if (v79)
                        {
                          goto LABEL_97;
                        }

LABEL_104:

                        v83 = [dictionaryCopy objectForKeyedSubscript:@"homeName"];
                        v117 = v83;
                        if (!v83)
                        {
                          self = selfCopy5;
                          v9 = v133;
                          v41 = v127;
                          v50 = v118;
                          goto LABEL_132;
                        }

                        v84 = v83;
                        objc_opt_class();
                        self = selfCopy5;
                        v50 = v118;
                        if (objc_opt_isKindOfClass())
                        {
                          v83 = 0;
                          goto LABEL_131;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v83 = v84;
LABEL_131:
                          v9 = v133;
                          v41 = v127;
LABEL_132:
                          v141 = v83;
                          self = [(BMHomeKitClientMediaAccessoryControl *)self initWithBase:v136 accessoryUniqueIdentifier:v9 accessoryState:v142 accessoryMediaRouteIdentifier:v41 zoneUniqueIdentifiers:v138 roomUniqueIdentifier:v124 accessoryName:v123 roomName:v120 zoneNames:v77 homeName:v83];
                          selfCopy4 = self;
                        }

                        else
                        {
                          if (error)
                          {
                            v116 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v115 = *MEMORY[0x1E698F240];
                            v158 = *MEMORY[0x1E696A578];
                            v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"homeName"];
                            v159 = v110;
                            v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
                            *error = [v116 initWithDomain:v115 code:2 userInfo:v111];

                            v50 = v118;
                          }

                          v141 = 0;
                          selfCopy4 = 0;
                          v9 = v133;
                          v41 = v127;
                        }

LABEL_133:

                        v99 = v141;
LABEL_134:

LABEL_135:
LABEL_136:

LABEL_137:
LABEL_138:

LABEL_140:
                        v60 = v124;
LABEL_141:

LABEL_143:
LABEL_144:

LABEL_145:
                        v25 = v136;

                        goto LABEL_147;
                      }
                    }

                    errorCopy4 = error;
                    if (error)
                    {
                      v86 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v87 = *MEMORY[0x1E698F240];
                      v162 = *MEMORY[0x1E696A578];
                      v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"zoneNames"];
                      v163 = v117;
                      v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
                      v89 = v86;
LABEL_119:
                      dictionaryCopy = v134;
                      *errorCopy4 = [v89 initWithDomain:v87 code:2 userInfo:v88];

                      selfCopy4 = 0;
                      v41 = v127;
                      v141 = obj;
                      self = selfCopy5;
                      v9 = v133;
                      v50 = v118;
                      goto LABEL_133;
                    }

LABEL_122:
                    selfCopy4 = 0;
                    v99 = obj;
                    v9 = v133;
                    dictionaryCopy = v134;
                    self = selfCopy5;
                  }

                  else
                  {
                    v76 = v73;
                    if (!v73 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      selfCopy5 = self;
                      goto LABEL_95;
                    }

                    obj = v73;
                    v9 = v133;
                    if (!error)
                    {
                      selfCopy4 = 0;
                      v41 = v127;
                      v50 = v118;
                      goto LABEL_136;
                    }

                    v132 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v105 = *MEMORY[0x1E698F240];
                    v165 = *MEMORY[0x1E696A578];
                    v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"zoneNames"];
                    v166 = v77;
                    v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
                    v107 = [v132 initWithDomain:v105 code:2 userInfo:v106];
                    selfCopy4 = 0;
                    *error = v107;
                    v99 = v106;
                  }

                  v41 = v127;
                  v50 = v118;
                  goto LABEL_134;
                }

                if (error)
                {
                  v100 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v131 = *MEMORY[0x1E698F240];
                  v167 = *MEMORY[0x1E696A578];
                  v101 = v50;
                  v102 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v114 = objc_opt_class();
                  v103 = v102;
                  v50 = v101;
                  obj = [v103 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v114, @"roomName"];
                  v168 = obj;
                  v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
                  v104 = [v100 initWithDomain:v131 code:2 userInfo:v77];
                  v120 = 0;
                  selfCopy4 = 0;
                  *error = v104;
                  v9 = v133;
                  v41 = v127;
                  goto LABEL_135;
                }

                v120 = 0;
                selfCopy4 = 0;
LABEL_155:
                v9 = v133;
                v41 = v127;
                goto LABEL_137;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v123 = v70;
                goto LABEL_87;
              }

              if (error)
              {
                v95 = objc_alloc(MEMORY[0x1E696ABC0]);
                v130 = *MEMORY[0x1E698F240];
                v169 = *MEMORY[0x1E696A578];
                v96 = v50;
                v97 = objc_alloc(MEMORY[0x1E696AEC0]);
                v113 = objc_opt_class();
                v98 = v97;
                v50 = v96;
                v120 = [v98 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v113, @"accessoryName"];
                v170 = v120;
                v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
                v123 = 0;
                selfCopy4 = 0;
                *error = [v95 initWithDomain:v130 code:2 userInfo:?];
                goto LABEL_155;
              }

              v123 = 0;
              selfCopy4 = 0;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v124 = v50;
                goto LABEL_84;
              }

              if (!error)
              {
                v124 = 0;
                selfCopy4 = 0;
                v9 = v133;
                v41 = v127;
                goto LABEL_140;
              }

              v90 = objc_alloc(MEMORY[0x1E696ABC0]);
              obja = *MEMORY[0x1E698F240];
              v171 = *MEMORY[0x1E696A578];
              v91 = v50;
              v92 = objc_alloc(MEMORY[0x1E696AEC0]);
              v112 = objc_opt_class();
              v93 = v92;
              v50 = v91;
              v123 = [v93 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v112, @"roomUniqueIdentifier"];
              v172 = v123;
              v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
              v124 = 0;
              selfCopy4 = 0;
              *error = [v90 initWithDomain:obja code:2 userInfo:?];
            }

            v9 = v133;
            v41 = v127;
            goto LABEL_138;
          }
        }
      }

      v14 = v13;
      v15 = *v154;
LABEL_14:
      v16 = 0;
      while (1)
      {
        if (*v154 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v153 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          errorCopy6 = error;
          if (error)
          {
            v34 = objc_alloc(MEMORY[0x1E696ABC0]);
            v35 = *MEMORY[0x1E698F240];
            v182 = *MEMORY[0x1E696A578];
            v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"accessoryState"];
            v183 = v18;
            v36 = MEMORY[0x1E695DF20];
            v37 = &v183;
            v38 = &v182;
            goto LABEL_42;
          }

          goto LABEL_63;
        }

        v18 = v17;
        v19 = [BMHomeKitAccessoryState alloc];
        v152 = 0;
        v20 = [(BMHomeKitAccessoryState *)v19 initWithJSONDictionary:v18 error:&v152];
        v21 = v152;
        if (v21)
        {
          v22 = v21;
          if (error)
          {
            v40 = v21;
            *error = v22;
          }

          selfCopy4 = 0;
          goto LABEL_46;
        }

        [v142 addObject:v20];

        if (v14 == ++v16)
        {
          v14 = [v10 countByEnumeratingWithState:&v153 objects:v186 count:16];
          if (!v14)
          {
            goto LABEL_22;
          }

          goto LABEL_14;
        }
      }

      errorCopy6 = error;
      if (error)
      {
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v184 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"accessoryState"];
        v185 = v18;
        v36 = MEMORY[0x1E695DF20];
        v37 = &v185;
        v38 = &v184;
LABEL_42:
        v22 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:1];
        v39 = [v34 initWithDomain:v35 code:2 userInfo:v22];
        selfCopy4 = 0;
        *errorCopy6 = v39;
LABEL_46:
        v41 = v10;
        v9 = v133;
        self = selfCopy2;
        goto LABEL_143;
      }

LABEL_63:
      selfCopy4 = 0;
      v41 = v10;
      v9 = v133;
      self = selfCopy2;
      goto LABEL_145;
    }

    if (error)
    {
      v42 = objc_alloc(MEMORY[0x1E696ABC0]);
      v43 = *MEMORY[0x1E698F240];
      v187 = *MEMORY[0x1E696A578];
      v142 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"accessoryState"];
      v188 = v142;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
      v44 = [v42 initWithDomain:v43 code:2 userInfo:v41];
      selfCopy4 = 0;
      *error = v44;
      goto LABEL_145;
    }

    selfCopy4 = 0;
    v25 = v136;
LABEL_147:

    v6 = v135;
    goto LABEL_148;
  }

  if (error)
  {
    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    v29 = *MEMORY[0x1E698F240];
    v191 = *MEMORY[0x1E696A578];
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"base"];
    v192[0] = v25;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v192 forKeys:&v191 count:1];
    selfCopy4 = 0;
    *error = [v28 initWithDomain:v29 code:2 userInfo:v9];
LABEL_149:

    goto LABEL_150;
  }

  selfCopy4 = 0;
LABEL_150:

  v108 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMHomeKitClientMediaAccessoryControl *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v40 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_base)
  {
    v36 = 0;
    PBDataWriterPlaceMark();
    [(BMHomeKitBase *)self->_base writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_accessoryUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_accessoryState;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v36 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v7);
  }

  if (self->_accessoryMediaRouteIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_zoneUniqueIdentifiers;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v13);
  }

  if (self->_roomUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessoryName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_roomName)
  {
    PBDataWriterWriteStringField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_zoneNames;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteStringField();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v37 count:16];
    }

    while (v19);
  }

  if (self->_homeName)
  {
    PBDataWriterWriteStringField();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v39.receiver = self;
  v39.super_class = BMHomeKitClientMediaAccessoryControl;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_54;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_52;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v13 = [fromCopy position] + 1;
        if (v13 >= [fromCopy position] && (v14 = objc_msgSend(fromCopy, "position") + 1, v14 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v17 = 0;
          goto LABEL_16;
        }
      }

      v17 = [fromCopy hasError] ? 0 : v12;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v17 & 7) == 4)
      {
        goto LABEL_52;
      }

      v18 = v17 >> 3;
      if ((v17 >> 3) > 5)
      {
        if (v18 <= 7)
        {
          if (v18 == 6)
          {
            v22 = PBReaderReadString();
            v23 = 64;
            goto LABEL_45;
          }

          if (v18 == 7)
          {
            v22 = PBReaderReadString();
            v23 = 72;
            goto LABEL_45;
          }
        }

        else
        {
          switch(v18)
          {
            case 8:
              v22 = PBReaderReadString();
              v23 = 80;
              goto LABEL_45;
            case 9:
              v28 = PBReaderReadString();
              if (!v28)
              {
                goto LABEL_56;
              }

              v20 = v28;
              v21 = v8;
LABEL_48:
              [v21 addObject:v20];
LABEL_49:

              goto LABEL_51;
            case 0xA:
              v22 = PBReaderReadString();
              v23 = 96;
LABEL_45:
              v27 = *(&v5->super.super.isa + v23);
              *(&v5->super.super.isa + v23) = v22;

              goto LABEL_51;
          }
        }

        goto LABEL_50;
      }

      if (v18 > 2)
      {
        break;
      }

      if (v18 != 1)
      {
        if (v18 == 2)
        {
          v22 = PBReaderReadString();
          v23 = 32;
          goto LABEL_45;
        }

        goto LABEL_50;
      }

      v40 = 0;
      v41 = 0;
      if (!PBReaderPlaceMark() || (v24 = [[BMHomeKitBase alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_56:

        goto LABEL_53;
      }

      base = v5->_base;
      v5->_base = v24;

      PBReaderRecallMark();
LABEL_51:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_52;
      }
    }

    switch(v18)
    {
      case 3:
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_56;
        }

        v26 = [[BMHomeKitAccessoryState alloc] initByReadFrom:fromCopy];
        if (!v26)
        {
          goto LABEL_56;
        }

        v20 = v26;
        [v6 addObject:v26];
        PBReaderRecallMark();
        goto LABEL_49;
      case 4:
        v22 = PBReaderReadString();
        v23 = 48;
        goto LABEL_45;
      case 5:
        v19 = PBReaderReadString();
        if (!v19)
        {
          goto LABEL_56;
        }

        v20 = v19;
        v21 = v7;
        goto LABEL_48;
    }

LABEL_50:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

LABEL_52:
  v30 = [v6 copy];
  accessoryState = v5->_accessoryState;
  v5->_accessoryState = v30;

  v32 = [v7 copy];
  zoneUniqueIdentifiers = v5->_zoneUniqueIdentifiers;
  v5->_zoneUniqueIdentifiers = v32;

  v34 = [v8 copy];
  zoneNames = v5->_zoneNames;
  v5->_zoneNames = v34;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_53:
    v37 = 0;
  }

  else
  {
LABEL_54:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  base = [(BMHomeKitClientMediaAccessoryControl *)self base];
  accessoryUniqueIdentifier = [(BMHomeKitClientMediaAccessoryControl *)self accessoryUniqueIdentifier];
  accessoryState = [(BMHomeKitClientMediaAccessoryControl *)self accessoryState];
  accessoryMediaRouteIdentifier = [(BMHomeKitClientMediaAccessoryControl *)self accessoryMediaRouteIdentifier];
  zoneUniqueIdentifiers = [(BMHomeKitClientMediaAccessoryControl *)self zoneUniqueIdentifiers];
  roomUniqueIdentifier = [(BMHomeKitClientMediaAccessoryControl *)self roomUniqueIdentifier];
  accessoryName = [(BMHomeKitClientMediaAccessoryControl *)self accessoryName];
  roomName = [(BMHomeKitClientMediaAccessoryControl *)self roomName];
  zoneNames = [(BMHomeKitClientMediaAccessoryControl *)self zoneNames];
  homeName = [(BMHomeKitClientMediaAccessoryControl *)self homeName];
  v12 = [v15 initWithFormat:@"BMHomeKitClientMediaAccessoryControl with base: %@, accessoryUniqueIdentifier: %@, accessoryState: %@, accessoryMediaRouteIdentifier: %@, zoneUniqueIdentifiers: %@, roomUniqueIdentifier: %@, accessoryName: %@, roomName: %@, zoneNames: %@, homeName: %@", base, accessoryUniqueIdentifier, accessoryState, accessoryMediaRouteIdentifier, zoneUniqueIdentifiers, roomUniqueIdentifier, accessoryName, roomName, zoneNames, homeName];

  return v12;
}

- (BMHomeKitClientMediaAccessoryControl)initWithBase:(id)base accessoryUniqueIdentifier:(id)identifier accessoryState:(id)state accessoryMediaRouteIdentifier:(id)routeIdentifier zoneUniqueIdentifiers:(id)identifiers roomUniqueIdentifier:(id)uniqueIdentifier accessoryName:(id)name roomName:(id)self0 zoneNames:(id)self1 homeName:(id)self2
{
  baseCopy = base;
  identifierCopy = identifier;
  stateCopy = state;
  routeIdentifierCopy = routeIdentifier;
  routeIdentifierCopy2 = routeIdentifier;
  identifiersCopy = identifiers;
  identifiersCopy2 = identifiers;
  uniqueIdentifierCopy = uniqueIdentifier;
  nameCopy = name;
  roomNameCopy = roomName;
  namesCopy = names;
  homeNameCopy = homeName;
  v33.receiver = self;
  v33.super_class = BMHomeKitClientMediaAccessoryControl;
  v22 = [(BMEventBase *)&v33 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_base, base);
    objc_storeStrong(&v22->_accessoryUniqueIdentifier, identifier);
    objc_storeStrong(&v22->_accessoryState, state);
    objc_storeStrong(&v22->_accessoryMediaRouteIdentifier, routeIdentifierCopy);
    objc_storeStrong(&v22->_zoneUniqueIdentifiers, identifiersCopy);
    objc_storeStrong(&v22->_roomUniqueIdentifier, uniqueIdentifier);
    objc_storeStrong(&v22->_accessoryName, name);
    objc_storeStrong(&v22->_roomName, roomName);
    objc_storeStrong(&v22->_zoneNames, names);
    objc_storeStrong(&v22->_homeName, homeName);
  }

  return v22;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"base" number:1 type:14 subMessageClass:objc_opt_class()];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accessoryUniqueIdentifier" number:2 type:13 subMessageClass:0];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accessoryState" number:3 type:14 subMessageClass:objc_opt_class()];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accessoryMediaRouteIdentifier" number:4 type:13 subMessageClass:0];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"zoneUniqueIdentifiers" number:5 type:13 subMessageClass:0];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"roomUniqueIdentifier" number:6 type:13 subMessageClass:0];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accessoryName" number:7 type:13 subMessageClass:0];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"roomName" number:8 type:13 subMessageClass:0];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"zoneNames" number:9 type:13 subMessageClass:0];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"homeName" number:10 type:13 subMessageClass:0];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __47__BMHomeKitClientMediaAccessoryControl_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _zoneNamesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __47__BMHomeKitClientMediaAccessoryControl_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _zoneUniqueIdentifiersJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __47__BMHomeKitClientMediaAccessoryControl_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _accessoryStateJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __47__BMHomeKitClientMediaAccessoryControl_columns__block_invoke(uint64_t a1, void *a2)
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
    v7 = BMHomeKitClientMediaAccessoryControl;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMHomeKitClientMediaAccessoryControl_v0;
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