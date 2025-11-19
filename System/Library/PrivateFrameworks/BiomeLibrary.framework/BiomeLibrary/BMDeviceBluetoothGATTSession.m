@interface BMDeviceBluetoothGATTSession
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDeviceBluetoothGATTSession)initWithBundleID:(id)a3 serviceUUID:(id)a4 sessionType:(id)a5 sessionState:(int)a6 supportsBackgrounding:(id)a7 supportsStateRestoration:(id)a8;
- (BMDeviceBluetoothGATTSession)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_serviceUUIDJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDeviceBluetoothGATTSession

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"serviceUUID_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_72_52174];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionType" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionState" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"supportsBackgrounding" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"supportsStateRestoration" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMDeviceBluetoothGATTSession *)self bundleID];
    v7 = [v5 bundleID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMDeviceBluetoothGATTSession *)self bundleID];
      v10 = [v5 bundleID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    v13 = [(BMDeviceBluetoothGATTSession *)self serviceUUID];
    v14 = [v5 serviceUUID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMDeviceBluetoothGATTSession *)self serviceUUID];
      v17 = [v5 serviceUUID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_26;
      }
    }

    v19 = [(BMDeviceBluetoothGATTSession *)self sessionType];
    v20 = [v5 sessionType];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMDeviceBluetoothGATTSession *)self sessionType];
      v23 = [v5 sessionType];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_26;
      }
    }

    v25 = [(BMDeviceBluetoothGATTSession *)self sessionState];
    if (v25 == [v5 sessionState])
    {
      if (!-[BMDeviceBluetoothGATTSession hasSupportsBackgrounding](self, "hasSupportsBackgrounding") && ![v5 hasSupportsBackgrounding] || -[BMDeviceBluetoothGATTSession hasSupportsBackgrounding](self, "hasSupportsBackgrounding") && objc_msgSend(v5, "hasSupportsBackgrounding") && (v26 = -[BMDeviceBluetoothGATTSession supportsBackgrounding](self, "supportsBackgrounding"), v26 == objc_msgSend(v5, "supportsBackgrounding")))
      {
        if (!-[BMDeviceBluetoothGATTSession hasSupportsStateRestoration](self, "hasSupportsStateRestoration") && ![v5 hasSupportsStateRestoration])
        {
          LOBYTE(v12) = 1;
          goto LABEL_27;
        }

        if (-[BMDeviceBluetoothGATTSession hasSupportsStateRestoration](self, "hasSupportsStateRestoration") && [v5 hasSupportsStateRestoration])
        {
          v27 = [(BMDeviceBluetoothGATTSession *)self supportsStateRestoration];
          v12 = v27 ^ [v5 supportsStateRestoration] ^ 1;
LABEL_27:

          goto LABEL_28;
        }
      }
    }

LABEL_26:
    LOBYTE(v12) = 0;
    goto LABEL_27;
  }

  LOBYTE(v12) = 0;
LABEL_28:

  return v12;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  v3 = [(BMDeviceBluetoothGATTSession *)self bundleID];
  v4 = [(BMDeviceBluetoothGATTSession *)self _serviceUUIDJSONArray];
  v5 = [(BMDeviceBluetoothGATTSession *)self sessionType];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBluetoothGATTSession sessionState](self, "sessionState")}];
  if ([(BMDeviceBluetoothGATTSession *)self hasSupportsBackgrounding])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetoothGATTSession supportsBackgrounding](self, "supportsBackgrounding")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMDeviceBluetoothGATTSession *)self hasSupportsStateRestoration])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetoothGATTSession supportsStateRestoration](self, "supportsStateRestoration")}];
  }

  else
  {
    v8 = 0;
  }

  v22[0] = @"bundleID";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v21 = v3;
  v23[0] = v9;
  v22[1] = @"serviceUUID";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v10;
  v23[1] = v10;
  v22[2] = @"sessionType";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v11;
  v22[3] = @"sessionState";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v12;
  v22[4] = @"supportsBackgrounding";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v13;
  v22[5] = @"supportsStateRestoration";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v7)
    {
LABEL_21:
      if (v6)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }
  }

  if (v6)
  {
LABEL_22:
    if (v5)
    {
      goto LABEL_23;
    }

LABEL_32:

    if (v4)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_31:

  if (!v5)
  {
    goto LABEL_32;
  }

LABEL_23:
  if (v4)
  {
    goto LABEL_24;
  }

LABEL_33:

LABEL_24:
  if (!v21)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_serviceUUIDJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMDeviceBluetoothGATTSession *)self serviceUUID];
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

- (BMDeviceBluetoothGATTSession)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v84[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"bundleID"];
  v63 = a4;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v83 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
        v84[0] = v9;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
        v12 = v32 = a4;
        v8 = 0;
        v29 = 0;
        *v32 = [v30 initWithDomain:v31 code:2 userInfo:v12];
        goto LABEL_60;
      }

      v8 = 0;
      v29 = 0;
      goto LABEL_62;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"serviceUUID"];
  v10 = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:v10];

  v61 = v7;
  if (v11)
  {
    v62 = self;

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v63)
        {
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v81 = *MEMORY[0x1E696A578];
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"serviceUUID"];
          v82 = v12;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
          v29 = 0;
          *v63 = [v33 initWithDomain:v34 code:2 userInfo:v21];
          goto LABEL_59;
        }

        v29 = 0;
        goto LABEL_61;
      }
    }

    v62 = self;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v9 = v9;
  v13 = [v9 countByEnumeratingWithState:&v64 objects:v80 count:16];
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v15 = *v65;
  while (2)
  {
    v16 = v6;
    v17 = v8;
    for (i = 0; i != v14; ++i)
    {
      if (*v65 != v15)
      {
        objc_enumerationMutation(v9);
      }

      v19 = *(*(&v64 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v63)
        {
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = *MEMORY[0x1E698F240];
          v78 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"serviceUUID"];
          v79 = v20;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
          v25 = v23;
          v26 = v24;
LABEL_30:
          v8 = v17;
          v29 = 0;
          *v63 = [v25 initWithDomain:v26 code:2 userInfo:v22];
          v21 = v9;
          v6 = v16;
          goto LABEL_57;
        }

LABEL_31:
        v29 = 0;
        v21 = v9;
        self = v62;
        v8 = v17;
        v6 = v16;
        goto LABEL_59;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v63)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v76 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"serviceUUID"];
          v77 = v20;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v25 = v27;
          v26 = v28;
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      [v12 addObject:v19];
    }

    v14 = [v9 countByEnumeratingWithState:&v64 objects:v80 count:16];
    v8 = v17;
    v6 = v16;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_18:

  v20 = [v6 objectForKeyedSubscript:@"sessionType"];
  if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21 = 0;
    goto LABEL_21;
  }

  v35 = v6;
  v36 = v8;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v63)
    {
      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v74 = *MEMORY[0x1E696A578];
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionType"];
      v75 = v22;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v40 = [v38 initWithDomain:v39 code:2 userInfo:?];
      v21 = 0;
      v29 = 0;
      *v63 = v40;
      goto LABEL_77;
    }

    v21 = 0;
    v29 = 0;
    v6 = v35;
    goto LABEL_58;
  }

  v21 = v20;
  v6 = v35;
LABEL_21:
  v22 = [v6 objectForKeyedSubscript:@"sessionState"];
  v58 = v22;
  if (!v22)
  {
LABEL_47:
    v41 = [v6 objectForKeyedSubscript:@"supportsBackgrounding"];
    v56 = v41;
    if (v41 && (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v63)
        {
          v59 = 0;
          v29 = 0;
LABEL_55:

          goto LABEL_56;
        }

        v60 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v70 = *MEMORY[0x1E696A578];
        v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"supportsBackgrounding"];
        v71 = v44;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v48 = [v60 initWithDomain:v47 code:2 userInfo:v43];
        v59 = 0;
        v29 = 0;
        *v63 = v48;
        goto LABEL_54;
      }

      v59 = v42;
    }

    else
    {
      v59 = 0;
    }

    v43 = [v6 objectForKeyedSubscript:@"supportsStateRestoration"];
    if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v63)
        {
          v55 = objc_alloc(MEMORY[0x1E696ABC0]);
          v54 = *MEMORY[0x1E698F240];
          v68 = *MEMORY[0x1E696A578];
          v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"supportsStateRestoration"];
          v69 = v49;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
          *v63 = [v55 initWithDomain:v54 code:2 userInfo:v50];
        }

        v44 = 0;
        v29 = 0;
        goto LABEL_54;
      }

      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    v29 = -[BMDeviceBluetoothGATTSession initWithBundleID:serviceUUID:sessionType:sessionState:supportsBackgrounding:supportsStateRestoration:](v62, "initWithBundleID:serviceUUID:sessionType:sessionState:supportsBackgrounding:supportsStateRestoration:", v8, v12, v21, [v22 intValue], v59, v44);
    v62 = v29;
LABEL_54:

    v42 = v56;
    goto LABEL_55;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0;
    goto LABEL_47;
  }

  v35 = v6;
  v36 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v22;
LABEL_46:
    v22 = v37;
    v6 = v35;
    goto LABEL_47;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceBluetoothGATTSessionStateFromString(v22)];
    goto LABEL_46;
  }

  if (v63)
  {
    v51 = objc_alloc(MEMORY[0x1E696ABC0]);
    v57 = *MEMORY[0x1E698F240];
    v72 = *MEMORY[0x1E696A578];
    v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"sessionState"];
    v73 = v59;
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v53 = [v51 initWithDomain:v57 code:2 userInfo:v52];
    v22 = 0;
    v29 = 0;
    *v63 = v53;
    v6 = v35;
    v42 = v52;
    goto LABEL_55;
  }

  v22 = 0;
  v29 = 0;
LABEL_77:
  v8 = v36;
  v6 = v35;
LABEL_56:

LABEL_57:
LABEL_58:

  self = v62;
LABEL_59:

  v7 = v61;
LABEL_60:

LABEL_61:
LABEL_62:

  v45 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceBluetoothGATTSession *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_serviceUUID;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if (self->_sessionType)
  {
    PBDataWriterWriteStringField();
  }

  sessionState = self->_sessionState;
  PBDataWriterWriteUint32Field();
  if (self->_hasSupportsBackgrounding)
  {
    supportsBackgrounding = self->_supportsBackgrounding;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasSupportsStateRestoration)
  {
    supportsStateRestoration = self->_supportsStateRestoration;
    PBDataWriterWriteBOOLField();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = BMDeviceBluetoothGATTSession;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_71;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_69;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v50 = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v50 & 0x7F) << v8;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_69;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 3)
      {
        break;
      }

      if (v16 == 1)
      {
        v17 = PBReaderReadString();
        v18 = 32;
        goto LABEL_36;
      }

      if (v16 != 2)
      {
        if (v16 == 3)
        {
          v17 = PBReaderReadString();
          v18 = 48;
LABEL_36:
          v26 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_68;
        }

        goto LABEL_46;
      }

      v34 = PBReaderReadString();
      if (!v34)
      {
LABEL_73:

        goto LABEL_70;
      }

      v35 = v34;
      [v6 addObject:v34];

LABEL_68:
      v43 = [v4 position];
      if (v43 >= [v4 length])
      {
        goto LABEL_69;
      }
    }

    switch(v16)
    {
      case 6:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v5->_hasSupportsStateRestoration = 1;
        while (1)
        {
          v50 = 0;
          v30 = [v4 position] + 1;
          if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 1, v31 <= objc_msgSend(v4, "length")))
          {
            v32 = [v4 data];
            [v32 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v29 |= (v50 & 0x7F) << v27;
          if ((v50 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v14 = v28++ >= 9;
          if (v14)
          {
            LOBYTE(v33) = 0;
            goto LABEL_60;
          }
        }

        v33 = (v29 != 0) & ~[v4 hasError];
LABEL_60:
        v42 = 18;
        goto LABEL_67;
      case 5:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v5->_hasSupportsBackgrounding = 1;
        while (1)
        {
          v50 = 0;
          v39 = [v4 position] + 1;
          if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 1, v40 <= objc_msgSend(v4, "length")))
          {
            v41 = [v4 data];
            [v41 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v38 |= (v50 & 0x7F) << v36;
          if ((v50 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v14 = v37++ >= 9;
          if (v14)
          {
            LOBYTE(v33) = 0;
            goto LABEL_66;
          }
        }

        v33 = (v38 != 0) & ~[v4 hasError];
LABEL_66:
        v42 = 16;
LABEL_67:
        *(&v5->super.super.isa + v42) = v33;
        goto LABEL_68;
      case 4:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        while (1)
        {
          v50 = 0;
          v22 = [v4 position] + 1;
          if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
          {
            v24 = [v4 data];
            [v24 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v21 |= (v50 & 0x7F) << v19;
          if ((v50 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          if (v20++ > 8)
          {
            goto LABEL_63;
          }
        }

        if (([v4 hasError] & 1) != 0 || v21 > 5)
        {
LABEL_63:
          LODWORD(v21) = 0;
        }

        v5->_sessionState = v21;
        goto LABEL_68;
    }

LABEL_46:
    if (!PBReaderSkipValueWithTag())
    {
      goto LABEL_73;
    }

    goto LABEL_68;
  }

LABEL_69:
  v44 = [v6 copy];
  serviceUUID = v5->_serviceUUID;
  v5->_serviceUUID = v44;

  v46 = [v4 hasError];
  if (v46)
  {
LABEL_70:
    v47 = 0;
  }

  else
  {
LABEL_71:
    v47 = v5;
  }

  return v47;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMDeviceBluetoothGATTSession *)self bundleID];
  v5 = [(BMDeviceBluetoothGATTSession *)self serviceUUID];
  v6 = [(BMDeviceBluetoothGATTSession *)self sessionType];
  v7 = BMDeviceBluetoothGATTSessionStateAsString([(BMDeviceBluetoothGATTSession *)self sessionState]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetoothGATTSession supportsBackgrounding](self, "supportsBackgrounding")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetoothGATTSession supportsStateRestoration](self, "supportsStateRestoration")}];
  v10 = [v3 initWithFormat:@"BMDeviceBluetoothGATTSession with bundleID: %@, serviceUUID: %@, sessionType: %@, sessionState: %@, supportsBackgrounding: %@, supportsStateRestoration: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMDeviceBluetoothGATTSession)initWithBundleID:(id)a3 serviceUUID:(id)a4 sessionType:(id)a5 sessionState:(int)a6 supportsBackgrounding:(id)a7 supportsStateRestoration:(id)a8
{
  v21 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v22.receiver = self;
  v22.super_class = BMDeviceBluetoothGATTSession;
  v19 = [(BMEventBase *)&v22 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_bundleID, a3);
    objc_storeStrong(&v19->_serviceUUID, a4);
    objc_storeStrong(&v19->_sessionType, a5);
    v19->_sessionState = a6;
    if (v17)
    {
      v19->_hasSupportsBackgrounding = 1;
      v19->_supportsBackgrounding = [v17 BOOLValue];
    }

    else
    {
      v19->_hasSupportsBackgrounding = 0;
      v19->_supportsBackgrounding = 0;
    }

    if (v18)
    {
      v19->_hasSupportsStateRestoration = 1;
      v19->_supportsStateRestoration = [v18 BOOLValue];
    }

    else
    {
      v19->_hasSupportsStateRestoration = 0;
      v19->_supportsStateRestoration = 0;
    }
  }

  return v19;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serviceUUID" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionType" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionState" number:4 type:4 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"supportsBackgrounding" number:5 type:12 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"supportsStateRestoration" number:6 type:12 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __39__BMDeviceBluetoothGATTSession_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _serviceUUIDJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMDeviceBluetoothGATTSession alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end