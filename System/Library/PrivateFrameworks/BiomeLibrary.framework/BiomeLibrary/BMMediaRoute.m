@interface BMMediaRoute
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMediaRoute)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMediaRoute)initWithRouteType:(int)a3 groupLeaderOutputDeviceID:(id)a4 isRemoteControl:(id)a5 outputDevices:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_outputDevicesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMediaRoute

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"routeType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"groupLeaderOutputDeviceID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRemoteControl" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"outputDevices_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_294];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMediaRouteRouteTypeAsString([(BMMediaRoute *)self routeType]);
  v5 = [(BMMediaRoute *)self groupLeaderOutputDeviceID];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaRoute isRemoteControl](self, "isRemoteControl")}];
  v7 = [(BMMediaRoute *)self outputDevices];
  v8 = [v3 initWithFormat:@"BMMediaRoute with routeType: %@, groupLeaderOutputDeviceID: %@, isRemoteControl: %@, outputDevices: %@", v4, v5, v6, v7];

  return v8;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaRoute *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMediaRoute *)self routeType];
    if (v6 == [v5 routeType])
    {
      v7 = [(BMMediaRoute *)self groupLeaderOutputDeviceID];
      v8 = [v5 groupLeaderOutputDeviceID];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMMediaRoute *)self groupLeaderOutputDeviceID];
        v11 = [v5 groupLeaderOutputDeviceID];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_13;
        }
      }

      if (!-[BMMediaRoute hasIsRemoteControl](self, "hasIsRemoteControl") && ![v5 hasIsRemoteControl] || -[BMMediaRoute hasIsRemoteControl](self, "hasIsRemoteControl") && objc_msgSend(v5, "hasIsRemoteControl") && (v14 = -[BMMediaRoute isRemoteControl](self, "isRemoteControl"), v14 == objc_msgSend(v5, "isRemoteControl")))
      {
        v16 = [(BMMediaRoute *)self outputDevices];
        v17 = [v5 outputDevices];
        if (v16 == v17)
        {
          v13 = 1;
        }

        else
        {
          v18 = [(BMMediaRoute *)self outputDevices];
          v19 = [v5 outputDevices];
          v13 = [v18 isEqual:v19];
        }

        goto LABEL_14;
      }
    }

LABEL_13:
    v13 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaRoute routeType](self, "routeType")}];
  v4 = [(BMMediaRoute *)self groupLeaderOutputDeviceID];
  if ([(BMMediaRoute *)self hasIsRemoteControl])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaRoute isRemoteControl](self, "isRemoteControl")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BMMediaRoute *)self _outputDevicesJSONArray];
  v14[0] = @"routeType";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v7;
  v14[1] = @"groupLeaderOutputDeviceID";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"isRemoteControl";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v14[3] = @"outputDevices";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v5)
    {
LABEL_14:
      if (v4)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (v3)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_outputDevicesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMediaRoute *)self outputDevices];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMediaRoute)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v89[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"routeType"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [v6 objectForKeyedSubscript:@"groupLeaderOutputDeviceID"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
          v27 = 0;
          goto LABEL_52;
        }

        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v64 = a4;
        v29 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"groupLeaderOutputDeviceID"];
        v87 = v30;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v32 = v28;
        v13 = v31;
        v33 = v29;
        a4 = v30;
        v11 = 0;
        v27 = 0;
        *v64 = [v32 initWithDomain:v33 code:2 userInfo:v31];
        goto LABEL_51;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"isRemoteControl"];
    v70 = v10;
    v71 = v7;
    v69 = v12;
    if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v34 = v11;
          v35 = a4;
          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v84 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isRemoteControl"];
          v85 = v14;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v38 = [v36 initWithDomain:v37 code:2 userInfo:v17];
          a4 = 0;
          v27 = 0;
          *v35 = v38;
          v11 = v34;
          goto LABEL_49;
        }

        v27 = 0;
LABEL_51:

        goto LABEL_52;
      }

      v68 = v13;
    }

    else
    {
      v68 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"outputDevices"];
    v15 = [MEMORY[0x1E695DFB0] null];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      v63 = a4;
      v65 = v11;
      v66 = self;
      v67 = v6;

      v14 = 0;
LABEL_20:
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v14 = v14;
      v18 = [v14 countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (!v18)
      {
        goto LABEL_30;
      }

      v19 = v18;
      v20 = *v74;
      v62 = v8;
LABEL_22:
      v21 = 0;
      while (1)
      {
        if (*v74 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v73 + 1) + 8 * v21);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v6 = v67;
          a4 = v68;
          v8 = v62;
          v39 = v63;
          if (!v63)
          {
            goto LABEL_48;
          }

          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v77 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"outputDevices"];
          v78 = v23;
          v42 = MEMORY[0x1E695DF20];
          v43 = &v78;
          v44 = &v77;
          goto LABEL_43;
        }

        v23 = v22;
        v24 = [BMMediaRouteOutputDevice alloc];
        v72 = 0;
        v25 = [(BMMediaRouteOutputDevice *)v24 initWithJSONDictionary:v23 error:&v72];
        v26 = v72;
        if (v26)
        {
          v45 = v26;
          if (v63)
          {
            v47 = v26;
            *v63 = v45;
          }

          v6 = v67;
          a4 = v68;
          v8 = v62;
LABEL_47:

LABEL_48:
          v27 = 0;
          v11 = v65;
          self = v66;
          goto LABEL_49;
        }

        [v17 addObject:v25];

        if (v19 == ++v21)
        {
          v19 = [v14 countByEnumeratingWithState:&v73 objects:v81 count:16];
          v8 = v62;
          if (v19)
          {
            goto LABEL_22;
          }

LABEL_30:

          v11 = v65;
          a4 = v68;
          self = -[BMMediaRoute initWithRouteType:groupLeaderOutputDeviceID:isRemoteControl:outputDevices:](v66, "initWithRouteType:groupLeaderOutputDeviceID:isRemoteControl:outputDevices:", [v8 intValue], v65, v68, v17);
          v27 = self;
          v6 = v67;
LABEL_49:

          goto LABEL_50;
        }
      }

      v6 = v67;
      a4 = v68;
      v8 = v62;
      v39 = v63;
      if (!v63)
      {
        goto LABEL_48;
      }

      v40 = objc_alloc(MEMORY[0x1E696ABC0]);
      v41 = *MEMORY[0x1E698F240];
      v79 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"outputDevices"];
      v80 = v23;
      v42 = MEMORY[0x1E695DF20];
      v43 = &v80;
      v44 = &v79;
LABEL_43:
      v45 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:1];
      v46 = v40;
      a4 = v68;
      *v39 = [v46 initWithDomain:v41 code:2 userInfo:v45];
      goto LABEL_47;
    }

    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v63 = a4;
      v65 = v11;
      v66 = self;
      v67 = v6;
      goto LABEL_20;
    }

    if (a4)
    {
      v50 = objc_alloc(MEMORY[0x1E696ABC0]);
      v51 = v11;
      v52 = a4;
      v53 = *MEMORY[0x1E698F240];
      v82 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"outputDevices"];
      v83 = v17;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      *v52 = [v50 initWithDomain:v53 code:2 userInfo:v54];
      v11 = v51;

      v27 = 0;
      a4 = v68;
      goto LABEL_49;
    }

    v27 = 0;
    a4 = v68;
LABEL_50:

    v10 = v70;
    v7 = v71;
    v13 = v69;
    goto LABEL_51;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaRouteRouteTypeFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = 0;
    v27 = 0;
    goto LABEL_53;
  }

  v55 = objc_alloc(MEMORY[0x1E696ABC0]);
  v56 = a4;
  v57 = *MEMORY[0x1E698F240];
  v88 = *MEMORY[0x1E696A578];
  v58 = self;
  v59 = objc_alloc(MEMORY[0x1E696AEC0]);
  v61 = objc_opt_class();
  v60 = v59;
  self = v58;
  v11 = [v60 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v61, @"routeType"];
  v89[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:&v88 count:1];
  v8 = 0;
  v27 = 0;
  *v56 = [v55 initWithDomain:v57 code:2 userInfo:v10];
LABEL_52:

LABEL_53:
  v48 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  routeType = self->_routeType;
  PBDataWriterWriteUint32Field();
  if (self->_groupLeaderOutputDeviceID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsRemoteControl)
  {
    isRemoteControl = self->_isRemoteControl;
    PBDataWriterWriteBOOLField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_outputDevices;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v12 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = BMMediaRoute;
  v5 = [(BMEventBase *)&v41 init];
  if (!v5)
  {
    goto LABEL_56;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_54;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v42[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v42 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v42[0] & 0x7F) << v8;
        if ((v42[0] & 0x80) == 0)
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
        goto LABEL_54;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      if (v16 == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v5->_hasIsRemoteControl = 1;
        while (1)
        {
          LOBYTE(v42[0]) = 0;
          v31 = [v4 position] + 1;
          if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
          {
            v33 = [v4 data];
            [v33 getBytes:v42 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v30 |= (v42[0] & 0x7F) << v28;
          if ((v42[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v14 = v29++ >= 9;
          if (v14)
          {
            LOBYTE(v34) = 0;
            goto LABEL_52;
          }
        }

        v34 = (v30 != 0) & ~[v4 hasError];
LABEL_52:
        v5->_isRemoteControl = v34;
        goto LABEL_53;
      }

      if (v16 != 4)
      {
        goto LABEL_27;
      }

      v42[0] = 0;
      v42[1] = 0;
      if (!PBReaderPlaceMark() || (v19 = [[BMMediaRouteOutputDevice alloc] initByReadFrom:v4]) == 0)
      {
LABEL_58:

        goto LABEL_55;
      }

      v20 = v19;
      [v6 addObject:v19];
      PBReaderRecallMark();

LABEL_53:
      v35 = [v4 position];
      if (v35 >= [v4 length])
      {
        goto LABEL_54;
      }
    }

    if (v16 == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        LOBYTE(v42[0]) = 0;
        v24 = [v4 position] + 1;
        if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 1, v25 <= objc_msgSend(v4, "length")))
        {
          v26 = [v4 data];
          [v26 getBytes:v42 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v23 |= (v42[0] & 0x7F) << v21;
        if ((v42[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        if (v22++ > 8)
        {
          goto LABEL_49;
        }
      }

      if (([v4 hasError] & 1) != 0 || v23 > 2)
      {
LABEL_49:
        LODWORD(v23) = 0;
      }

      v5->_routeType = v23;
      goto LABEL_53;
    }

    if (v16 == 2)
    {
      v17 = PBReaderReadString();
      groupLeaderOutputDeviceID = v5->_groupLeaderOutputDeviceID;
      v5->_groupLeaderOutputDeviceID = v17;

      goto LABEL_53;
    }

LABEL_27:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_53;
  }

LABEL_54:
  v36 = [v6 copy];
  outputDevices = v5->_outputDevices;
  v5->_outputDevices = v36;

  v38 = [v4 hasError];
  if (v38)
  {
LABEL_55:
    v39 = 0;
  }

  else
  {
LABEL_56:
    v39 = v5;
  }

  return v39;
}

- (BMMediaRoute)initWithRouteType:(int)a3 groupLeaderOutputDeviceID:(id)a4 isRemoteControl:(id)a5 outputDevices:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v16.receiver = self;
  v16.super_class = BMMediaRoute;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    v14->_routeType = a3;
    objc_storeStrong(&v14->_groupLeaderOutputDeviceID, a4);
    if (v12)
    {
      v14->_hasIsRemoteControl = 1;
      v14->_isRemoteControl = [v12 BOOLValue];
    }

    else
    {
      v14->_hasIsRemoteControl = 0;
      v14->_isRemoteControl = 0;
    }

    objc_storeStrong(&v14->_outputDevices, a6);
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"routeType" number:1 type:4 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"groupLeaderOutputDeviceID" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRemoteControl" number:3 type:12 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"outputDevices" number:4 type:14 subMessageClass:objc_opt_class()];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __23__BMMediaRoute_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _outputDevicesJSONArray];
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

    v8 = [[BMMediaRoute alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end