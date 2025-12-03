@interface BMMediaRouteOutputDeviceClusterMember
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMediaRouteOutputDeviceClusterMember)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMediaRouteOutputDeviceClusterMember)initWithOutputDeviceID:(id)d type:(int)type subType:(int)subType;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMediaRouteOutputDeviceClusterMember

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    outputDeviceID = [(BMMediaRouteOutputDeviceClusterMember *)self outputDeviceID];
    outputDeviceID2 = [v5 outputDeviceID];
    v8 = outputDeviceID2;
    if (outputDeviceID == outputDeviceID2)
    {
    }

    else
    {
      outputDeviceID3 = [(BMMediaRouteOutputDeviceClusterMember *)self outputDeviceID];
      outputDeviceID4 = [v5 outputDeviceID];
      v11 = [outputDeviceID3 isEqual:outputDeviceID4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    type = [(BMMediaRouteOutputDeviceClusterMember *)self type];
    if (type == [v5 type])
    {
      subType = [(BMMediaRouteOutputDeviceClusterMember *)self subType];
      v12 = subType == [v5 subType];
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  outputDeviceID = [(BMMediaRouteOutputDeviceClusterMember *)self outputDeviceID];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaRouteOutputDeviceClusterMember type](self, "type")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaRouteOutputDeviceClusterMember subType](self, "subType")}];
  v12[0] = @"outputDeviceID";
  null = outputDeviceID;
  if (!outputDeviceID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"type";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"subType";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (outputDeviceID)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (outputDeviceID)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMMediaRouteOutputDeviceClusterMember)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"outputDeviceID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v10 = 0;
            selfCopy = 0;
            goto LABEL_26;
          }

          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v20 = *MEMORY[0x1E698F240];
          v29 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
          v30 = v16;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          v21 = [v25 initWithDomain:v20 code:2 userInfo:v15];
          v10 = 0;
          selfCopy = 0;
          *error = v21;
          goto LABEL_25;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaRouteOutputDeviceTypeFromString(v9)];
      }

      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"subType"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v15;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v26 = objc_alloc(MEMORY[0x1E696ABC0]);
            v24 = *MEMORY[0x1E698F240];
            v27 = *MEMORY[0x1E696A578];
            v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"subType"];
            v28 = v22;
            v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
            *error = [v26 initWithDomain:v24 code:2 userInfo:v23];
          }

          v16 = 0;
          selfCopy = 0;
          goto LABEL_25;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaRouteOutputDeviceSubTypeFromString(v15)];
      }

      v16 = v17;
    }

    else
    {
      v16 = 0;
    }

    self = -[BMMediaRouteOutputDeviceClusterMember initWithOutputDeviceID:type:subType:](self, "initWithOutputDeviceID:type:subType:", v8, [v10 intValue], objc_msgSend(v16, "intValue"));
    selfCopy = self;
LABEL_25:

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    selfCopy = 0;
    goto LABEL_27;
  }

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = *MEMORY[0x1E698F240];
  v31 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"outputDeviceID"];
  v32[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v12 initWithDomain:v13 code:2 userInfo:v9];
LABEL_26:

LABEL_27:
  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaRouteOutputDeviceClusterMember *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_outputDeviceID)
  {
    PBDataWriterWriteStringField();
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
  subType = self->_subType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v34.receiver = self;
  v34.super_class = BMMediaRouteOutputDeviceClusterMember;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_54;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v35 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v35 & 0x7F) << v7;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 1)
      {
        v28 = PBReaderReadString();
        outputDeviceID = v5->_outputDeviceID;
        v5->_outputDeviceID = v28;
      }

      else
      {
        if (v15 == 2)
        {
          v23 = 0;
          v24 = 0;
          v18 = 0;
          while (1)
          {
            v35 = 0;
            v25 = [fromCopy position] + 1;
            if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v35 & 0x7F) << v23;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v22 = v24++ > 8;
            if (v22)
            {
              goto LABEL_44;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 5)
          {
LABEL_44:
            LODWORD(v18) = 0;
          }

          v30 = 20;
        }

        else
        {
          if (v15 != 3)
          {
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_53;
            }

            goto LABEL_51;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v35 = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_48;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 0x15)
          {
LABEL_48:
            LODWORD(v18) = 0;
          }

          v30 = 24;
        }

        *(&v5->super.super.isa + v30) = v18;
      }

LABEL_51:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_53:
    v32 = 0;
  }

  else
  {
LABEL_54:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  outputDeviceID = [(BMMediaRouteOutputDeviceClusterMember *)self outputDeviceID];
  v5 = BMMediaRouteOutputDeviceTypeAsString([(BMMediaRouteOutputDeviceClusterMember *)self type]);
  v6 = BMMediaRouteOutputDeviceSubTypeAsString([(BMMediaRouteOutputDeviceClusterMember *)self subType]);
  v7 = [v3 initWithFormat:@"BMMediaRouteOutputDeviceClusterMember with outputDeviceID: %@, type: %@, subType: %@", outputDeviceID, v5, v6];

  return v7;
}

- (BMMediaRouteOutputDeviceClusterMember)initWithOutputDeviceID:(id)d type:(int)type subType:(int)subType
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = BMMediaRouteOutputDeviceClusterMember;
  v10 = [(BMEventBase *)&v12 init];
  if (v10)
  {
    v10->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v10->_outputDeviceID, d);
    v10->_type = type;
    v10->_subType = subType;
  }

  return v10;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"outputDeviceID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:2 type:4 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subType" number:3 type:4 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"outputDeviceID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
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

    v8 = [[BMMediaRouteOutputDeviceClusterMember alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end