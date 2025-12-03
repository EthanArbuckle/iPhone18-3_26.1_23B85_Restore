@interface BMDeviceBluetoothGATTSession
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceBluetoothGATTSession)initWithBundleID:(id)d serviceUUID:(id)iD sessionType:(id)type sessionState:(int)state supportsBackgrounding:(id)backgrounding supportsStateRestoration:(id)restoration;
- (BMDeviceBluetoothGATTSession)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_serviceUUIDJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleID = [(BMDeviceBluetoothGATTSession *)self bundleID];
    bundleID2 = [v5 bundleID];
    v8 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMDeviceBluetoothGATTSession *)self bundleID];
      bundleID4 = [v5 bundleID];
      v11 = [bundleID3 isEqual:bundleID4];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    serviceUUID = [(BMDeviceBluetoothGATTSession *)self serviceUUID];
    serviceUUID2 = [v5 serviceUUID];
    v15 = serviceUUID2;
    if (serviceUUID == serviceUUID2)
    {
    }

    else
    {
      serviceUUID3 = [(BMDeviceBluetoothGATTSession *)self serviceUUID];
      serviceUUID4 = [v5 serviceUUID];
      v18 = [serviceUUID3 isEqual:serviceUUID4];

      if (!v18)
      {
        goto LABEL_26;
      }
    }

    sessionType = [(BMDeviceBluetoothGATTSession *)self sessionType];
    sessionType2 = [v5 sessionType];
    v21 = sessionType2;
    if (sessionType == sessionType2)
    {
    }

    else
    {
      sessionType3 = [(BMDeviceBluetoothGATTSession *)self sessionType];
      sessionType4 = [v5 sessionType];
      v24 = [sessionType3 isEqual:sessionType4];

      if (!v24)
      {
        goto LABEL_26;
      }
    }

    sessionState = [(BMDeviceBluetoothGATTSession *)self sessionState];
    if (sessionState == [v5 sessionState])
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
          supportsStateRestoration = [(BMDeviceBluetoothGATTSession *)self supportsStateRestoration];
          v12 = supportsStateRestoration ^ [v5 supportsStateRestoration] ^ 1;
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
  bundleID = [(BMDeviceBluetoothGATTSession *)self bundleID];
  _serviceUUIDJSONArray = [(BMDeviceBluetoothGATTSession *)self _serviceUUIDJSONArray];
  sessionType = [(BMDeviceBluetoothGATTSession *)self sessionType];
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
  null = bundleID;
  if (!bundleID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v21 = bundleID;
  v23[0] = null;
  v22[1] = @"serviceUUID";
  null2 = _serviceUUIDJSONArray;
  if (!_serviceUUIDJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null2;
  v23[1] = null2;
  v22[2] = @"sessionType";
  null3 = sessionType;
  if (!sessionType)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v22[3] = @"sessionState";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"supportsBackgrounding";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v22[5] = @"supportsStateRestoration";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null6;
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
    if (sessionType)
    {
      goto LABEL_23;
    }

LABEL_32:

    if (_serviceUUIDJSONArray)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_31:

  if (!sessionType)
  {
    goto LABEL_32;
  }

LABEL_23:
  if (_serviceUUIDJSONArray)
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
  serviceUUID = [(BMDeviceBluetoothGATTSession *)self serviceUUID];
  v5 = [serviceUUID countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(serviceUUID);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [serviceUUID countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMDeviceBluetoothGATTSession)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v84[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  errorCopy = error;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v83 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
        v84[0] = v9;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
        v12 = v32 = error;
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

  v9 = [dictionaryCopy objectForKeyedSubscript:@"serviceUUID"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  v61 = v7;
  if (v11)
  {
    selfCopy2 = self;

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v81 = *MEMORY[0x1E696A578];
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"serviceUUID"];
          v82 = v12;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
          v29 = 0;
          *errorCopy = [v33 initWithDomain:v34 code:2 userInfo:v21];
          goto LABEL_59;
        }

        v29 = 0;
        goto LABEL_61;
      }
    }

    selfCopy2 = self;
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
    v16 = dictionaryCopy;
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
        if (errorCopy)
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
          *errorCopy = [v25 initWithDomain:v26 code:2 userInfo:v22];
          v21 = v9;
          dictionaryCopy = v16;
          goto LABEL_57;
        }

LABEL_31:
        v29 = 0;
        v21 = v9;
        self = selfCopy2;
        v8 = v17;
        dictionaryCopy = v16;
        goto LABEL_59;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
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
    dictionaryCopy = v16;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_18:

  v20 = [dictionaryCopy objectForKeyedSubscript:@"sessionType"];
  if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21 = 0;
    goto LABEL_21;
  }

  v35 = dictionaryCopy;
  v36 = v8;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy)
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
      *errorCopy = v40;
      goto LABEL_77;
    }

    v21 = 0;
    v29 = 0;
    dictionaryCopy = v35;
    goto LABEL_58;
  }

  v21 = v20;
  dictionaryCopy = v35;
LABEL_21:
  v22 = [dictionaryCopy objectForKeyedSubscript:@"sessionState"];
  v58 = v22;
  if (!v22)
  {
LABEL_47:
    v41 = [dictionaryCopy objectForKeyedSubscript:@"supportsBackgrounding"];
    v56 = v41;
    if (v41 && (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
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
        *errorCopy = v48;
        goto LABEL_54;
      }

      v59 = v42;
    }

    else
    {
      v59 = 0;
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"supportsStateRestoration"];
    if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v55 = objc_alloc(MEMORY[0x1E696ABC0]);
          v54 = *MEMORY[0x1E698F240];
          v68 = *MEMORY[0x1E696A578];
          v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"supportsStateRestoration"];
          v69 = v49;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
          *errorCopy = [v55 initWithDomain:v54 code:2 userInfo:v50];
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

    v29 = -[BMDeviceBluetoothGATTSession initWithBundleID:serviceUUID:sessionType:sessionState:supportsBackgrounding:supportsStateRestoration:](selfCopy2, "initWithBundleID:serviceUUID:sessionType:sessionState:supportsBackgrounding:supportsStateRestoration:", v8, v12, v21, [v22 intValue], v59, v44);
    selfCopy2 = v29;
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

  v35 = dictionaryCopy;
  v36 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v22;
LABEL_46:
    v22 = v37;
    dictionaryCopy = v35;
    goto LABEL_47;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceBluetoothGATTSessionStateFromString(v22)];
    goto LABEL_46;
  }

  if (errorCopy)
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
    *errorCopy = v53;
    dictionaryCopy = v35;
    v42 = v52;
    goto LABEL_55;
  }

  v22 = 0;
  v29 = 0;
LABEL_77:
  v8 = v36;
  dictionaryCopy = v35;
LABEL_56:

LABEL_57:
LABEL_58:

  self = selfCopy2;
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v49.receiver = self;
  v49.super_class = BMDeviceBluetoothGATTSession;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_71;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_69;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v50 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
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
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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
          v30 = [fromCopy position] + 1;
          if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v33 = (v29 != 0) & ~[fromCopy hasError];
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
          v39 = [fromCopy position] + 1;
          if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v33 = (v38 != 0) & ~[fromCopy hasError];
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
          v22 = [fromCopy position] + 1;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if (([fromCopy hasError] & 1) != 0 || v21 > 5)
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

  hasError = [fromCopy hasError];
  if (hasError)
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
  bundleID = [(BMDeviceBluetoothGATTSession *)self bundleID];
  serviceUUID = [(BMDeviceBluetoothGATTSession *)self serviceUUID];
  sessionType = [(BMDeviceBluetoothGATTSession *)self sessionType];
  v7 = BMDeviceBluetoothGATTSessionStateAsString([(BMDeviceBluetoothGATTSession *)self sessionState]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetoothGATTSession supportsBackgrounding](self, "supportsBackgrounding")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetoothGATTSession supportsStateRestoration](self, "supportsStateRestoration")}];
  v10 = [v3 initWithFormat:@"BMDeviceBluetoothGATTSession with bundleID: %@, serviceUUID: %@, sessionType: %@, sessionState: %@, supportsBackgrounding: %@, supportsStateRestoration: %@", bundleID, serviceUUID, sessionType, v7, v8, v9];

  return v10;
}

- (BMDeviceBluetoothGATTSession)initWithBundleID:(id)d serviceUUID:(id)iD sessionType:(id)type sessionState:(int)state supportsBackgrounding:(id)backgrounding supportsStateRestoration:(id)restoration
{
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  backgroundingCopy = backgrounding;
  restorationCopy = restoration;
  v22.receiver = self;
  v22.super_class = BMDeviceBluetoothGATTSession;
  v19 = [(BMEventBase *)&v22 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_bundleID, d);
    objc_storeStrong(&v19->_serviceUUID, iD);
    objc_storeStrong(&v19->_sessionType, type);
    v19->_sessionState = state;
    if (backgroundingCopy)
    {
      v19->_hasSupportsBackgrounding = 1;
      v19->_supportsBackgrounding = [backgroundingCopy BOOLValue];
    }

    else
    {
      v19->_hasSupportsBackgrounding = 0;
      v19->_supportsBackgrounding = 0;
    }

    if (restorationCopy)
    {
      v19->_hasSupportsStateRestoration = 1;
      v19->_supportsStateRestoration = [restorationCopy BOOLValue];
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

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