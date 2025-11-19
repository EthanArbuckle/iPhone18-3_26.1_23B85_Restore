@interface BMDeviceAccessoryChargingSession
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDeviceAccessoryChargingSession)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMDeviceAccessoryChargingSession)initWithProductID:(id)a3 firmwareVersion:(id)a4 startTimestamp:(id)a5 endTimestamp:(id)a6 side:(int)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDeviceAccessoryChargingSession

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productID" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"firmwareVersion" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startTimestamp" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endTimestamp" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"side" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMDeviceAccessoryChargingSession hasProductID](self, "hasProductID") || [v5 hasProductID])
    {
      if (![(BMDeviceAccessoryChargingSession *)self hasProductID])
      {
        goto LABEL_24;
      }

      if (![v5 hasProductID])
      {
        goto LABEL_24;
      }

      v6 = [(BMDeviceAccessoryChargingSession *)self productID];
      if (v6 != [v5 productID])
      {
        goto LABEL_24;
      }
    }

    if ((!-[BMDeviceAccessoryChargingSession hasFirmwareVersion](self, "hasFirmwareVersion") && ![v5 hasFirmwareVersion] || -[BMDeviceAccessoryChargingSession hasFirmwareVersion](self, "hasFirmwareVersion") && objc_msgSend(v5, "hasFirmwareVersion") && (v7 = -[BMDeviceAccessoryChargingSession firmwareVersion](self, "firmwareVersion"), v7 == objc_msgSend(v5, "firmwareVersion"))) && (!-[BMDeviceAccessoryChargingSession hasStartTimestamp](self, "hasStartTimestamp") && !objc_msgSend(v5, "hasStartTimestamp") || -[BMDeviceAccessoryChargingSession hasStartTimestamp](self, "hasStartTimestamp") && objc_msgSend(v5, "hasStartTimestamp") && (-[BMDeviceAccessoryChargingSession startTimestamp](self, "startTimestamp"), v9 = v8, objc_msgSend(v5, "startTimestamp"), v9 == v10)) && (!-[BMDeviceAccessoryChargingSession hasEndTimestamp](self, "hasEndTimestamp") && !objc_msgSend(v5, "hasEndTimestamp") || -[BMDeviceAccessoryChargingSession hasEndTimestamp](self, "hasEndTimestamp") && objc_msgSend(v5, "hasEndTimestamp") && (-[BMDeviceAccessoryChargingSession endTimestamp](self, "endTimestamp"), v12 = v11, objc_msgSend(v5, "endTimestamp"), v12 == v13)))
    {
      v14 = [(BMDeviceAccessoryChargingSession *)self side];
      v15 = v14 == [v5 side];
    }

    else
    {
LABEL_24:
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  if ([(BMDeviceAccessoryChargingSession *)self hasProductID])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAccessoryChargingSession productID](self, "productID")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMDeviceAccessoryChargingSession *)self hasFirmwareVersion])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAccessoryChargingSession firmwareVersion](self, "firmwareVersion")}];
  }

  else
  {
    v4 = 0;
  }

  if (![(BMDeviceAccessoryChargingSession *)self hasStartTimestamp]|| ([(BMDeviceAccessoryChargingSession *)self startTimestamp], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMDeviceAccessoryChargingSession *)self startTimestamp];
    v6 = MEMORY[0x1E696AD98];
    [(BMDeviceAccessoryChargingSession *)self startTimestamp];
    v7 = [v6 numberWithDouble:?];
  }

  if (![(BMDeviceAccessoryChargingSession *)self hasEndTimestamp]|| ([(BMDeviceAccessoryChargingSession *)self endTimestamp], fabs(v8) == INFINITY))
  {
    v10 = 0;
  }

  else
  {
    [(BMDeviceAccessoryChargingSession *)self endTimestamp];
    v9 = MEMORY[0x1E696AD98];
    [(BMDeviceAccessoryChargingSession *)self endTimestamp];
    v10 = [v9 numberWithDouble:?];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAccessoryChargingSession side](self, "side")}];
  v20 = v3;
  v22[0] = @"productID";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[0] = v12;
  v22[1] = @"firmwareVersion";
  v13 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v13;
  v22[2] = @"startTimestamp";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v14;
  v22[3] = @"endTimestamp";
  v15 = v10;
  if (!v10)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v15;
  v22[4] = @"side";
  v16 = v11;
  if (!v11)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{5, v20}];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (v10)
    {
LABEL_27:
      if (v7)
      {
        goto LABEL_28;
      }

LABEL_36:

      if (v4)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }
  }

  if (!v7)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (v4)
  {
    goto LABEL_29;
  }

LABEL_37:

LABEL_29:
  if (!v21)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMDeviceAccessoryChargingSession)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v50[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"productID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"firmwareVersion"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v40 = 0;
          v20 = 0;
          goto LABEL_41;
        }

        v34 = a4;
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"firmwareVersion"];
        v48 = v38;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v40 = 0;
        v20 = 0;
        *v34 = [v21 initWithDomain:v22 code:2 userInfo:v10];
        goto LABEL_40;
      }

      v40 = v9;
    }

    else
    {
      v40 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"startTimestamp"];
    v37 = v8;
    v39 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v38 = 0;
          v20 = 0;
          goto LABEL_40;
        }

        v23 = a4;
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"startTimestamp"];
        v46 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v38 = 0;
        v20 = 0;
        *v23 = [v24 initWithDomain:v25 code:2 userInfo:v11];
LABEL_39:

        self = v39;
        v8 = v37;
LABEL_40:

        goto LABEL_41;
      }

      v38 = v10;
    }

    else
    {
      v38 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"endTimestamp"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v13 = 0;
          v20 = 0;
          goto LABEL_39;
        }

        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v27 = a4;
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"endTimestamp"];
        v44 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v28 = [v35 initWithDomain:v26 code:2 userInfo:v14];
        v13 = 0;
        v20 = 0;
        *v27 = v28;
        goto LABEL_38;
      }

      v12 = a4;
      v13 = v11;
    }

    else
    {
      v12 = a4;
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"side"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v14;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v12)
          {
            v36 = objc_alloc(MEMORY[0x1E696ABC0]);
            v33 = *MEMORY[0x1E698F240];
            v41 = *MEMORY[0x1E696A578];
            v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"side"];
            v42 = v31;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
            *v12 = [v36 initWithDomain:v33 code:2 userInfo:v32];
          }

          v15 = 0;
          v20 = 0;
          goto LABEL_38;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceAccessoryChargingSessionSideFromString(v14)];
      }

      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    v20 = -[BMDeviceAccessoryChargingSession initWithProductID:firmwareVersion:startTimestamp:endTimestamp:side:](v39, "initWithProductID:firmwareVersion:startTimestamp:endTimestamp:side:", v37, v40, v38, v13, [v15 intValue]);
    v39 = v20;
LABEL_38:

    goto LABEL_39;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v20 = 0;
    goto LABEL_42;
  }

  v17 = a4;
  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v49 = *MEMORY[0x1E696A578];
  v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"productID"];
  v50[0] = v40;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v8 = 0;
  v20 = 0;
  *v17 = [v18 initWithDomain:v19 code:2 userInfo:v9];
LABEL_41:

LABEL_42:
  v29 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceAccessoryChargingSession *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (self->_hasProductID)
  {
    productID = self->_productID;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFirmwareVersion)
  {
    firmwareVersion = self->_firmwareVersion;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasStartTimestamp)
  {
    startTimestamp = self->_startTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasEndTimestamp)
  {
    endTimestamp = self->_endTimestamp;
    PBDataWriterWriteDoubleField();
  }

  side = self->_side;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = BMDeviceAccessoryChargingSession;
  v5 = [(BMEventBase *)&v48 init];
  if (!v5)
  {
    goto LABEL_80;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v49) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v49 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v49 & 0x7F) << v7;
        if ((v49 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v5->_hasProductID = 1;
          while (1)
          {
            LOBYTE(v49) = 0;
            v37 = [v4 position] + 1;
            if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 1, v38 <= objc_msgSend(v4, "length")))
            {
              v39 = [v4 data];
              [v39 getBytes:&v49 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v36 |= (v49 & 0x7F) << v34;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v13 = v35++ >= 9;
            if (v13)
            {
              v29 = 0;
              goto LABEL_62;
            }
          }

          if ([v4 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v36;
          }

LABEL_62:
          v40 = 24;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_57:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_79;
            }

            goto LABEL_77;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasFirmwareVersion = 1;
          while (1)
          {
            LOBYTE(v49) = 0;
            v26 = [v4 position] + 1;
            if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
            {
              v28 = [v4 data];
              [v28 getBytes:&v49 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v25 |= (v49 & 0x7F) << v23;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              v29 = 0;
              goto LABEL_70;
            }
          }

          if ([v4 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_70:
          v40 = 28;
        }

        *(&v5->super.super.isa + v40) = v29;
      }

      else
      {
        if (v15 == 3)
        {
          v5->_hasStartTimestamp = 1;
          v49 = 0;
          v30 = [v4 position] + 8;
          if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 8, v31 <= objc_msgSend(v4, "length")))
          {
            v41 = [v4 data];
            [v41 getBytes:&v49 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v42 = v49;
          v43 = 40;
          goto LABEL_76;
        }

        if (v15 == 4)
        {
          v5->_hasEndTimestamp = 1;
          v49 = 0;
          v32 = [v4 position] + 8;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 8, v33 <= objc_msgSend(v4, "length")))
          {
            v44 = [v4 data];
            [v44 getBytes:&v49 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v42 = v49;
          v43 = 48;
LABEL_76:
          *(&v5->super.super.isa + v43) = v42;
          goto LABEL_77;
        }

        if (v15 != 5)
        {
          goto LABEL_57;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v49) = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v49 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v49 & 0x7F) << v16;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_65;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 2)
        {
LABEL_65:
          LODWORD(v18) = 0;
        }

        v5->_side = v18;
      }

LABEL_77:
      v45 = [v4 position];
    }

    while (v45 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_79:
    v46 = 0;
  }

  else
  {
LABEL_80:
    v46 = v5;
  }

  return v46;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAccessoryChargingSession productID](self, "productID")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAccessoryChargingSession firmwareVersion](self, "firmwareVersion")}];
  v6 = MEMORY[0x1E696AD98];
  [(BMDeviceAccessoryChargingSession *)self startTimestamp];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMDeviceAccessoryChargingSession *)self endTimestamp];
  v9 = [v8 numberWithDouble:?];
  v10 = BMDeviceAccessoryChargingSessionSideAsString([(BMDeviceAccessoryChargingSession *)self side]);
  v11 = [v3 initWithFormat:@"BMDeviceAccessoryChargingSession with productID: %@, firmwareVersion: %@, startTimestamp: %@, endTimestamp: %@, side: %@", v4, v5, v7, v9, v10];

  return v11;
}

- (BMDeviceAccessoryChargingSession)initWithProductID:(id)a3 firmwareVersion:(id)a4 startTimestamp:(id)a5 endTimestamp:(id)a6 side:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v22.receiver = self;
  v22.super_class = BMDeviceAccessoryChargingSession;
  v16 = [(BMEventBase *)&v22 init];
  if (v16)
  {
    v16->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v16->_hasProductID = 1;
      v17 = [v12 unsignedIntValue];
    }

    else
    {
      v17 = 0;
      v16->_hasProductID = 0;
    }

    v16->_productID = v17;
    if (v13)
    {
      v16->_hasFirmwareVersion = 1;
      v18 = [v13 unsignedIntValue];
    }

    else
    {
      v18 = 0;
      v16->_hasFirmwareVersion = 0;
    }

    v16->_firmwareVersion = v18;
    if (v14)
    {
      v16->_hasStartTimestamp = 1;
      [v14 doubleValue];
    }

    else
    {
      v16->_hasStartTimestamp = 0;
      v19 = -1.0;
    }

    v16->_startTimestamp = v19;
    if (v15)
    {
      v16->_hasEndTimestamp = 1;
      [v15 doubleValue];
    }

    else
    {
      v16->_hasEndTimestamp = 0;
      v20 = -1.0;
    }

    v16->_endTimestamp = v20;
    v16->_side = a7;
  }

  return v16;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productID" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"firmwareVersion" number:2 type:4 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startTimestamp" number:3 type:0 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endTimestamp" number:4 type:0 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"side" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
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

    v8 = [[BMDeviceAccessoryChargingSession alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end