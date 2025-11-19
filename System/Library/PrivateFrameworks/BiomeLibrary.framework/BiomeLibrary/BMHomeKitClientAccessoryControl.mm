@interface BMHomeKitClientAccessoryControl
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMHomeKitClientAccessoryControl)initWithBase:(id)a3 accessoryUniqueIdentifier:(id)a4 accessoryState:(id)a5 serviceUniqueIdentifier:(id)a6 serviceType:(id)a7 characteristicType:(id)a8 serviceGroupUniqueIdentifier:(id)a9 zoneUniqueIdentifiers:(id)a10 roomUniqueIdentifier:(id)a11 accessoryName:(id)a12 serviceName:(id)a13 roomName:(id)a14 serviceGroupName:(id)a15 zoneNames:(id)a16 homeName:(id)a17;
- (BMHomeKitClientAccessoryControl)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_zoneNamesJSONArray;
- (id)_zoneUniqueIdentifiersJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMHomeKitClientAccessoryControl *)self base];
    v7 = [v5 base];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMHomeKitClientAccessoryControl *)self base];
      v10 = [v5 base];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_57;
      }
    }

    v13 = [(BMHomeKitClientAccessoryControl *)self accessoryUniqueIdentifier];
    v14 = [v5 accessoryUniqueIdentifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMHomeKitClientAccessoryControl *)self accessoryUniqueIdentifier];
      v17 = [v5 accessoryUniqueIdentifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_57;
      }
    }

    v19 = [(BMHomeKitClientAccessoryControl *)self accessoryState];
    v20 = [v5 accessoryState];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMHomeKitClientAccessoryControl *)self accessoryState];
      v23 = [v5 accessoryState];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_57;
      }
    }

    v25 = [(BMHomeKitClientAccessoryControl *)self serviceUniqueIdentifier];
    v26 = [v5 serviceUniqueIdentifier];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMHomeKitClientAccessoryControl *)self serviceUniqueIdentifier];
      v29 = [v5 serviceUniqueIdentifier];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_57;
      }
    }

    v31 = [(BMHomeKitClientAccessoryControl *)self serviceType];
    v32 = [v5 serviceType];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMHomeKitClientAccessoryControl *)self serviceType];
      v35 = [v5 serviceType];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_57;
      }
    }

    v37 = [(BMHomeKitClientAccessoryControl *)self characteristicType];
    v38 = [v5 characteristicType];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMHomeKitClientAccessoryControl *)self characteristicType];
      v41 = [v5 characteristicType];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_57;
      }
    }

    v43 = [(BMHomeKitClientAccessoryControl *)self serviceGroupUniqueIdentifier];
    v44 = [v5 serviceGroupUniqueIdentifier];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMHomeKitClientAccessoryControl *)self serviceGroupUniqueIdentifier];
      v47 = [v5 serviceGroupUniqueIdentifier];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_57;
      }
    }

    v49 = [(BMHomeKitClientAccessoryControl *)self zoneUniqueIdentifiers];
    v50 = [v5 zoneUniqueIdentifiers];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMHomeKitClientAccessoryControl *)self zoneUniqueIdentifiers];
      v53 = [v5 zoneUniqueIdentifiers];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_57;
      }
    }

    v55 = [(BMHomeKitClientAccessoryControl *)self roomUniqueIdentifier];
    v56 = [v5 roomUniqueIdentifier];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMHomeKitClientAccessoryControl *)self roomUniqueIdentifier];
      v59 = [v5 roomUniqueIdentifier];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
        goto LABEL_57;
      }
    }

    v61 = [(BMHomeKitClientAccessoryControl *)self accessoryName];
    v62 = [v5 accessoryName];
    v63 = v62;
    if (v61 == v62)
    {
    }

    else
    {
      v64 = [(BMHomeKitClientAccessoryControl *)self accessoryName];
      v65 = [v5 accessoryName];
      v66 = [v64 isEqual:v65];

      if (!v66)
      {
        goto LABEL_57;
      }
    }

    v67 = [(BMHomeKitClientAccessoryControl *)self serviceName];
    v68 = [v5 serviceName];
    v69 = v68;
    if (v67 == v68)
    {
    }

    else
    {
      v70 = [(BMHomeKitClientAccessoryControl *)self serviceName];
      v71 = [v5 serviceName];
      v72 = [v70 isEqual:v71];

      if (!v72)
      {
        goto LABEL_57;
      }
    }

    v73 = [(BMHomeKitClientAccessoryControl *)self roomName];
    v74 = [v5 roomName];
    v75 = v74;
    if (v73 == v74)
    {
    }

    else
    {
      v76 = [(BMHomeKitClientAccessoryControl *)self roomName];
      v77 = [v5 roomName];
      v78 = [v76 isEqual:v77];

      if (!v78)
      {
        goto LABEL_57;
      }
    }

    v79 = [(BMHomeKitClientAccessoryControl *)self serviceGroupName];
    v80 = [v5 serviceGroupName];
    v81 = v80;
    if (v79 == v80)
    {
    }

    else
    {
      v82 = [(BMHomeKitClientAccessoryControl *)self serviceGroupName];
      v83 = [v5 serviceGroupName];
      v84 = [v82 isEqual:v83];

      if (!v84)
      {
        goto LABEL_57;
      }
    }

    v85 = [(BMHomeKitClientAccessoryControl *)self zoneNames];
    v86 = [v5 zoneNames];
    v87 = v86;
    if (v85 == v86)
    {
    }

    else
    {
      v88 = [(BMHomeKitClientAccessoryControl *)self zoneNames];
      v89 = [v5 zoneNames];
      v90 = [v88 isEqual:v89];

      if (!v90)
      {
LABEL_57:
        v12 = 0;
LABEL_58:

        goto LABEL_59;
      }
    }

    v92 = [(BMHomeKitClientAccessoryControl *)self homeName];
    v93 = [v5 homeName];
    if (v92 == v93)
    {
      v12 = 1;
    }

    else
    {
      v94 = [(BMHomeKitClientAccessoryControl *)self homeName];
      v95 = [v5 homeName];
      v12 = [v94 isEqual:v95];
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
  v3 = [(BMHomeKitClientAccessoryControl *)self base];
  v4 = [v3 jsonDictionary];

  v5 = [(BMHomeKitClientAccessoryControl *)self accessoryUniqueIdentifier];
  v6 = [(BMHomeKitClientAccessoryControl *)self accessoryState];
  v7 = [v6 jsonDictionary];

  v8 = [(BMHomeKitClientAccessoryControl *)self serviceUniqueIdentifier];
  v9 = [(BMHomeKitClientAccessoryControl *)self serviceType];
  v10 = [(BMHomeKitClientAccessoryControl *)self characteristicType];
  v11 = [(BMHomeKitClientAccessoryControl *)self serviceGroupUniqueIdentifier];
  v12 = [(BMHomeKitClientAccessoryControl *)self _zoneUniqueIdentifiersJSONArray];
  v13 = [(BMHomeKitClientAccessoryControl *)self roomUniqueIdentifier];
  v54 = [(BMHomeKitClientAccessoryControl *)self accessoryName];
  v53 = [(BMHomeKitClientAccessoryControl *)self serviceName];
  v52 = [(BMHomeKitClientAccessoryControl *)self roomName];
  v51 = [(BMHomeKitClientAccessoryControl *)self serviceGroupName];
  v50 = [(BMHomeKitClientAccessoryControl *)self _zoneNamesJSONArray];
  v14 = [(BMHomeKitClientAccessoryControl *)self homeName];
  v55[0] = @"base";
  v15 = v4;
  if (!v4)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v15;
  v56[0] = v15;
  v55[1] = @"accessoryUniqueIdentifier";
  v16 = v5;
  if (!v5)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v16;
  v56[1] = v16;
  v55[2] = @"accessoryState";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v17;
  v56[2] = v17;
  v55[3] = @"serviceUniqueIdentifier";
  v18 = v8;
  if (!v8)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v18;
  v56[3] = v18;
  v55[4] = @"serviceType";
  v19 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v19;
  v56[4] = v19;
  v55[5] = @"characteristicType";
  v20 = v10;
  if (!v10)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v20;
  v56[5] = v20;
  v55[6] = @"serviceGroupUniqueIdentifier";
  v21 = v11;
  if (!v11)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v21;
  v56[6] = v21;
  v55[7] = @"zoneUniqueIdentifiers";
  v22 = v12;
  if (!v12)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v13;
  v35 = v22;
  v56[7] = v22;
  v55[8] = @"roomUniqueIdentifier";
  v23 = v13;
  if (!v13)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v14;
  v33 = v23;
  v56[8] = v23;
  v55[9] = @"accessoryName";
  v24 = v54;
  if (!v54)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v9;
  v48 = v8;
  v56[9] = v24;
  v55[10] = @"serviceName";
  v25 = v53;
  if (!v53)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v10;
  v44 = v4;
  v56[10] = v25;
  v55[11] = @"roomName";
  v26 = v52;
  if (!v52)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v5;
  v56[11] = v26;
  v55[12] = @"serviceGroupName";
  v28 = v51;
  if (!v51)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v56[12] = v28;
  v55[13] = @"zoneNames";
  v29 = v50;
  if (!v50)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v56[13] = v29;
  v55[14] = @"homeName";
  v30 = v49;
  if (!v49)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v56[14] = v30;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:{15, v33}];
  if (!v49)
  {
  }

  if (!v50)
  {
  }

  if (!v51)
  {
  }

  if (!v52)
  {
  }

  if (!v53)
  {
  }

  if (!v54)
  {
  }

  if (!v45)
  {
  }

  if (v12)
  {
    if (v11)
    {
      goto LABEL_47;
    }
  }

  else
  {

    if (v11)
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
    if (v7)
    {
      goto LABEL_51;
    }

    goto LABEL_61;
  }

LABEL_60:

  if (v7)
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
  v4 = [(BMHomeKitClientAccessoryControl *)self zoneNames];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [(BMHomeKitClientAccessoryControl *)self zoneUniqueIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMHomeKitClientAccessoryControl)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v241[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v191 = [v6 objectForKeyedSubscript:@"base"];
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
      if (a4)
      {
        v20 = v20;
        *a4 = v20;
      }

      a4 = 0;
      goto LABEL_177;
    }

LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"accessoryUniqueIdentifier"];
    v187 = self;
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v35 = v8;
          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = a4;
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
          a4 = 0;
          *v37 = [v41 initWithDomain:v42 code:2 userInfo:v40];
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

    v9 = [v6 objectForKeyedSubscript:@"accessoryState"];
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
        if (a4)
        {
          v23 = v23;
          *a4 = v23;
        }

        a4 = 0;
        goto LABEL_173;
      }

LABEL_10:
      v10 = [v6 objectForKeyedSubscript:@"serviceUniqueIdentifier"];
      v183 = v10;
      v184 = v8;
      if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v51 = objc_alloc(MEMORY[0x1E696ABC0]);
            v52 = v7;
            v53 = *MEMORY[0x1E698F240];
            v234 = *MEMORY[0x1E696A578];
            v54 = a4;
            v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"serviceUniqueIdentifier"];
            v235 = v55;
            v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v235 forKeys:&v234 count:1];
            v56 = v51;
            v8 = v184;
            v57 = v53;
            v7 = v52;
            v182 = 0;
            a4 = 0;
            *v54 = [v56 initWithDomain:v57 code:2 userInfo:v12];
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

      v12 = [v6 objectForKeyedSubscript:@"serviceType"];
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v63 = objc_alloc(MEMORY[0x1E696ABC0]);
            v64 = v7;
            v65 = *MEMORY[0x1E698F240];
            v232 = *MEMORY[0x1E696A578];
            v66 = a4;
            v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"serviceType"];
            v233 = v67;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:&v232 count:1];
            v68 = v63;
            v8 = v184;
            v69 = v65;
            v7 = v64;
            v70 = v67;
            v55 = 0;
            a4 = 0;
            *v66 = [v68 initWithDomain:v69 code:2 userInfo:v13];
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

      v13 = [v6 objectForKeyedSubscript:@"characteristicType"];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v43 = v13;
        v44 = v12;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v73 = objc_alloc(MEMORY[0x1E696ABC0]);
            v74 = v7;
            v75 = *MEMORY[0x1E698F240];
            v230 = *MEMORY[0x1E696A578];
            v76 = a4;
            v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"characteristicType"];
            v231 = v77;
            v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v231 forKeys:&v230 count:1];
            v79 = v73;
            v80 = v77;
            v81 = v75;
            v7 = v74;
            v70 = 0;
            a4 = 0;
            *v76 = [v79 initWithDomain:v81 code:2 userInfo:v78];
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

      v14 = [v6 objectForKeyedSubscript:@"serviceGroupUniqueIdentifier"];
      v179 = a4;
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
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
            a4 = 0;
            v55 = v181;
            *v179 = v90;
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

      v15 = [v6 objectForKeyedSubscript:@"zoneUniqueIdentifiers"];
      v16 = [MEMORY[0x1E695DFB0] null];
      v17 = [v15 isEqual:v16];

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
            if (a4)
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
              v96 = a4;
              a4 = 0;
              *v96 = v95;
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
              if (v179)
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
                a4 = 0;
                *v179 = [v61 initWithDomain:v62 code:2 userInfo:?];
                v171 = v15;
                v9 = v176;
                v12 = v19;
                v13 = v18;
                v7 = v174;
                v14 = v175;

                goto LABEL_165;
              }

LABEL_77:
              a4 = 0;
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
              if (v179)
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

      v33 = [v6 objectForKeyedSubscript:@"roomUniqueIdentifier"];
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
            if (!v179)
            {
              v171 = 0;
              a4 = 0;
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
            a4 = 0;
            *v179 = [v118 initWithDomain:v121 code:2 userInfo:?];
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
      v97 = [v6 objectForKeyedSubscript:@"accessoryName"];
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
        v99 = [v6 objectForKeyedSubscript:@"serviceName"];
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
          v101 = [v6 objectForKeyedSubscript:@"roomName"];
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
            v103 = [v6 objectForKeyedSubscript:@"serviceGroupName"];
            v160 = v103;
            if (!v103 || (v104 = v103, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v161 = 0;
LABEL_104:
              v105 = [v6 objectForKeyedSubscript:@"zoneNames"];
              v106 = [MEMORY[0x1E695DFB0] null];
              v107 = [v105 isEqual:v106];

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
                    if (v179)
                    {
                      v146 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v147 = *MEMORY[0x1E698F240];
                      v209 = *MEMORY[0x1E696A578];
                      v172 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"zoneNames"];
                      v210 = v172;
                      v148 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
                      v149 = [v146 initWithDomain:v147 code:2 userInfo:v148];
                      v141 = v148;
                      a4 = 0;
                      *v179 = v149;
                      v7 = v174;
                      v9 = v176;
                      v55 = v181;
                      v70 = v178;
                      goto LABEL_157;
                    }

                    a4 = 0;
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
                  if (v179)
                  {
                    v127 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v128 = *MEMORY[0x1E698F240];
                    v204 = *MEMORY[0x1E696A578];
                    v126 = v179;
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

                  v115 = [v6 objectForKeyedSubscript:@"homeName"];
                  v159 = v115;
                  if (!v115)
                  {
                    v117 = 0;
                    v150 = v187;
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
                    v150 = v187;
LABEL_155:
                    v180 = v117;
                    a4 = [(BMHomeKitClientAccessoryControl *)v150 initWithBase:v7 accessoryUniqueIdentifier:v188 accessoryState:v186 serviceUniqueIdentifier:v182 serviceType:v55 characteristicType:v70 serviceGroupUniqueIdentifier:v177 zoneUniqueIdentifiers:v189 roomUniqueIdentifier:v171 accessoryName:v169 serviceName:v165 roomName:v163 serviceGroupName:v161 zoneNames:v172 homeName:v117];
                    v187 = a4;
                  }

                  else
                  {
                    if (v179)
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
                      *v179 = [v157 initWithDomain:v158 code:2 userInfo:v156];

                      v70 = v178;
                    }

                    v180 = 0;
                    a4 = 0;
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

              v126 = v179;
              if (v179)
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

                a4 = 0;
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
              a4 = 0;
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
            if (v179)
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
              a4 = 0;
              *v179 = [v142 initWithDomain:v145 code:2 userInfo:?];
              v55 = v181;
              v13 = v18;
              v70 = v178;
              v7 = v174;
              v14 = v175;

              goto LABEL_159;
            }

            v161 = 0;
            a4 = 0;
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
          if (v179)
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
            a4 = 0;
            *v179 = [v137 initWithDomain:v140 code:2 userInfo:?];
            goto LABEL_184;
          }

          v163 = 0;
          a4 = 0;
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
        if (v179)
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
          a4 = 0;
          *v179 = [v132 initWithDomain:v135 code:2 userInfo:?];
          goto LABEL_182;
        }

        v165 = 0;
        a4 = 0;
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
      if (v179)
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
        a4 = 0;
        *v179 = [v122 initWithDomain:v125 code:2 userInfo:?];
        goto LABEL_180;
      }

      v169 = 0;
      a4 = 0;
LABEL_151:
      v12 = v19;
      v55 = v181;
      v13 = v18;
      v70 = v178;
      v7 = v174;
      v14 = v175;
      goto LABEL_163;
    }

    if (a4)
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
      *a4 = [v49 initWithDomain:v50 code:2 userInfo:v48];

      a4 = 0;
      v21 = v9;
      goto LABEL_174;
    }

LABEL_175:

    self = v187;
    goto LABEL_176;
  }

  if (a4)
  {
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = *MEMORY[0x1E698F240];
    v240 = *MEMORY[0x1E696A578];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"base"];
    v241[0] = v7;
    v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v241 forKeys:&v240 count:1];
    v26 = [v24 initWithDomain:v25 code:2 userInfo:?];
    v27 = a4;
    a4 = 0;
    *v27 = v26;
LABEL_177:
  }

  v151 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMHomeKitClientAccessoryControl *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_base)
  {
    v26 = 0;
    PBDataWriterPlaceMark();
    [(BMHomeKitBase *)self->_base writeTo:v4];
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
    [(BMHomeKitAccessoryState *)self->_accessoryState writeTo:v4];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
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
  v8 = [v4 position];
  if (v8 >= [v4 length])
  {
LABEL_46:
    v28 = [v6 copy];
    zoneUniqueIdentifiers = v5->_zoneUniqueIdentifiers;
    v5->_zoneUniqueIdentifiers = v28;

    v30 = [v7 copy];
    zoneNames = v5->_zoneNames;
    v5->_zoneNames = v30;

    v32 = [v4 hasError];
    if (v32)
    {
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  while (2)
  {
    if ([v4 hasError])
    {
      goto LABEL_46;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      LOBYTE(v36) = 0;
      v12 = [v4 position] + 1;
      if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
      {
        v14 = [v4 data];
        [v14 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
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

    v16 = [v4 hasError] ? 0 : v11;
LABEL_16:
    if (([v4 hasError] & 1) != 0 || (v16 & 7) == 4)
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

        v17 = [[BMHomeKitBase alloc] initByReadFrom:v4];
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

        v17 = [[BMHomeKitAccessoryState alloc] initByReadFrom:v4];
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
          v27 = [v4 position];
          if (v27 >= [v4 length])
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
  v14 = [(BMHomeKitClientAccessoryControl *)self base];
  v13 = [(BMHomeKitClientAccessoryControl *)self accessoryUniqueIdentifier];
  v20 = [(BMHomeKitClientAccessoryControl *)self accessoryState];
  v19 = [(BMHomeKitClientAccessoryControl *)self serviceUniqueIdentifier];
  v18 = [(BMHomeKitClientAccessoryControl *)self serviceType];
  v17 = [(BMHomeKitClientAccessoryControl *)self characteristicType];
  v3 = [(BMHomeKitClientAccessoryControl *)self serviceGroupUniqueIdentifier];
  v4 = [(BMHomeKitClientAccessoryControl *)self zoneUniqueIdentifiers];
  v5 = [(BMHomeKitClientAccessoryControl *)self roomUniqueIdentifier];
  v6 = [(BMHomeKitClientAccessoryControl *)self accessoryName];
  v12 = [(BMHomeKitClientAccessoryControl *)self serviceName];
  v7 = [(BMHomeKitClientAccessoryControl *)self roomName];
  v8 = [(BMHomeKitClientAccessoryControl *)self serviceGroupName];
  v9 = [(BMHomeKitClientAccessoryControl *)self zoneNames];
  v10 = [(BMHomeKitClientAccessoryControl *)self homeName];
  v16 = [v15 initWithFormat:@"BMHomeKitClientAccessoryControl with base: %@, accessoryUniqueIdentifier: %@, accessoryState: %@, serviceUniqueIdentifier: %@, serviceType: %@, characteristicType: %@, serviceGroupUniqueIdentifier: %@, zoneUniqueIdentifiers: %@, roomUniqueIdentifier: %@, accessoryName: %@, serviceName: %@, roomName: %@, serviceGroupName: %@, zoneNames: %@, homeName: %@", v14, v13, v20, v19, v18, v17, v3, v4, v5, v6, v12, v7, v8, v9, v10];

  return v16;
}

- (BMHomeKitClientAccessoryControl)initWithBase:(id)a3 accessoryUniqueIdentifier:(id)a4 accessoryState:(id)a5 serviceUniqueIdentifier:(id)a6 serviceType:(id)a7 characteristicType:(id)a8 serviceGroupUniqueIdentifier:(id)a9 zoneUniqueIdentifiers:(id)a10 roomUniqueIdentifier:(id)a11 accessoryName:(id)a12 serviceName:(id)a13 roomName:(id)a14 serviceGroupName:(id)a15 zoneNames:(id)a16 homeName:(id)a17
{
  v43 = a3;
  v31 = a4;
  v42 = a4;
  v32 = a5;
  v41 = a5;
  v33 = a6;
  v40 = a6;
  v39 = a7;
  v38 = a8;
  v37 = a9;
  v36 = a10;
  v35 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  v26 = a16;
  v27 = a17;
  v44.receiver = self;
  v44.super_class = BMHomeKitClientAccessoryControl;
  v28 = [(BMEventBase *)&v44 init];
  if (v28)
  {
    v28->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v28->_base, a3);
    objc_storeStrong(&v28->_accessoryUniqueIdentifier, v31);
    objc_storeStrong(&v28->_accessoryState, v32);
    objc_storeStrong(&v28->_serviceUniqueIdentifier, v33);
    objc_storeStrong(&v28->_serviceType, a7);
    objc_storeStrong(&v28->_characteristicType, a8);
    objc_storeStrong(&v28->_serviceGroupUniqueIdentifier, a9);
    objc_storeStrong(&v28->_zoneUniqueIdentifiers, a10);
    objc_storeStrong(&v28->_roomUniqueIdentifier, a11);
    objc_storeStrong(&v28->_accessoryName, a12);
    objc_storeStrong(&v28->_serviceName, a13);
    objc_storeStrong(&v28->_roomName, a14);
    objc_storeStrong(&v28->_serviceGroupName, a15);
    objc_storeStrong(&v28->_zoneNames, a16);
    objc_storeStrong(&v28->_homeName, a17);
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  if (a4)
  {
    if (a4 != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMHomeKitClientAccessoryControl;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMHomeKitClientAccessoryControl_v0;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 16) = a4;
  }

LABEL_9:

  return v9;
}

@end