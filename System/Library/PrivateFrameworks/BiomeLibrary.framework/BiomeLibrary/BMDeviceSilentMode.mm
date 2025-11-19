@interface BMDeviceSilentMode
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDeviceSilentMode)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMDeviceSilentMode)initWithStarting:(id)a3 clientType:(int)a4 untilTime:(id)a5 reason:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSDate)untilTime;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDeviceSilentMode

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"untilTime" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reason" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v5 = v4;
  if (-[BMDeviceSilentMode hasStarting](self, "hasStarting") || [v5 hasStarting])
  {
    if (![(BMDeviceSilentMode *)self hasStarting])
    {
      goto LABEL_10;
    }

    if (![v5 hasStarting])
    {
      goto LABEL_10;
    }

    v6 = [(BMDeviceSilentMode *)self starting];
    if (v6 != [v5 starting])
    {
      goto LABEL_10;
    }
  }

  v7 = [(BMDeviceSilentMode *)self clientType];
  if (v7 != [v5 clientType])
  {
    goto LABEL_10;
  }

  v8 = [(BMDeviceSilentMode *)self untilTime];
  v9 = [v5 untilTime];
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_15;
  }

  v11 = [(BMDeviceSilentMode *)self untilTime];
  v12 = [v5 untilTime];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
LABEL_15:
    v16 = [(BMDeviceSilentMode *)self reason];
    v17 = [v5 reason];
    if (v16 == v17)
    {
      v14 = 1;
    }

    else
    {
      v18 = [(BMDeviceSilentMode *)self reason];
      v19 = [v5 reason];
      v14 = [v18 isEqual:v19];
    }

    goto LABEL_11;
  }

LABEL_10:
  v14 = 0;
LABEL_11:

LABEL_13:
  return v14;
}

- (NSDate)untilTime
{
  if (self->_hasRaw_untilTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_untilTime];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v18[4] = *MEMORY[0x1E69E9840];
  if ([(BMDeviceSilentMode *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceSilentMode starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceSilentMode clientType](self, "clientType")}];
  v5 = [(BMDeviceSilentMode *)self untilTime];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMDeviceSilentMode *)self untilTime];
    [v7 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMDeviceSilentMode *)self reason];
  v17[0] = @"starting";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v10;
  v17[1] = @"clientType";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v11;
  v17[2] = @"untilTime";
  v12 = v8;
  if (!v8)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v12;
  v17[3] = @"reason";
  v13 = v9;
  if (!v9)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v8)
    {
LABEL_17:
      if (v4)
      {
        goto LABEL_18;
      }

LABEL_24:

      if (v3)
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }
  }

  if (!v4)
  {
    goto LABEL_24;
  }

LABEL_18:
  if (v3)
  {
    goto LABEL_19;
  }

LABEL_25:

LABEL_19:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMDeviceSilentMode)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v46[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v37 = 0;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"clientType"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v38 = 0;
            v13 = 0;
            v12 = v37;
            goto LABEL_30;
          }

          v29 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v43 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"clientType"];
          v44 = v15;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          v38 = 0;
          v13 = 0;
          *a4 = [v29 initWithDomain:v30 code:2 userInfo:v14];
          goto LABEL_46;
        }

        v9 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceSilentModeClientTypeFromString(v8)];
      }

      v38 = v9;
    }

    else
    {
      v38 = 0;
    }

    v36 = a4;
    v14 = [v6 objectForKeyedSubscript:@"untilTime"];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = 0;
      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = MEMORY[0x1E695DF00];
      v17 = v14;
      v18 = [v16 alloc];
      [v17 doubleValue];
      v20 = v19;

      v21 = [v18 initWithTimeIntervalSince1970:v20];
LABEL_21:
      v15 = v21;
      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v15 = [v22 dateFromString:v14];

LABEL_24:
      v23 = [v6 objectForKeyedSubscript:@"reason"];
      if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        v12 = v37;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v36)
          {
            v34 = objc_alloc(MEMORY[0x1E696ABC0]);
            v33 = *MEMORY[0x1E698F240];
            v39 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"reason"];
            v40 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
            *v36 = [v34 initWithDomain:v33 code:2 userInfo:v28];
          }

          v24 = 0;
          v13 = 0;
          goto LABEL_28;
        }

        v24 = v23;
      }

      else
      {
        v24 = 0;
        v12 = v37;
      }

      self = -[BMDeviceSilentMode initWithStarting:clientType:untilTime:reason:](self, "initWithStarting:clientType:untilTime:reason:", v12, [v38 intValue], v15, v24);
      v13 = self;
LABEL_28:

LABEL_29:
      goto LABEL_30;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v14;
      goto LABEL_21;
    }

    if (a4)
    {
      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v31 = *MEMORY[0x1E698F240];
      v41 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"untilTime"];
      v42 = v24;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v32 = [v35 initWithDomain:v31 code:2 userInfo:v23];
      v15 = 0;
      v13 = 0;
      *v36 = v32;
      v12 = v37;
      goto LABEL_28;
    }

    v15 = 0;
    v13 = 0;
LABEL_46:
    v12 = v37;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_31;
  }

  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = *MEMORY[0x1E698F240];
  v45 = *MEMORY[0x1E696A578];
  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
  v46[0] = v38;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
  v12 = 0;
  v13 = 0;
  *a4 = [v10 initWithDomain:v11 code:2 userInfo:v8];
LABEL_30:

LABEL_31:
  v25 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceSilentMode *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
  }

  clientType = self->_clientType;
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_untilTime)
  {
    raw_untilTime = self->_raw_untilTime;
    PBDataWriterWriteDoubleField();
  }

  v7 = v8;
  if (self->_reason)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = BMDeviceSilentMode;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_58;
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
        LOBYTE(v39) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v39) & 0x7F) << v7;
        if ((LOBYTE(v39) & 0x80) == 0)
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
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v5->_hasRaw_untilTime = 1;
          v39 = 0.0;
          v32 = [v4 position] + 8;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 8, v33 <= objc_msgSend(v4, "length")))
          {
            v34 = [v4 data];
            [v34 getBytes:&v39 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_raw_untilTime = v39;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_33:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_57;
            }

            goto LABEL_55;
          }

          v23 = PBReaderReadString();
          reason = v5->_reason;
          v5->_reason = v23;
        }
      }

      else if (v15 == 1)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasStarting = 1;
        while (1)
        {
          LOBYTE(v39) = 0;
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v27 |= (LOBYTE(v39) & 0x7F) << v25;
          if ((LOBYTE(v39) & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            LOBYTE(v31) = 0;
            goto LABEL_52;
          }
        }

        v31 = (v27 != 0) & ~[v4 hasError];
LABEL_52:
        v5->_starting = v31;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_33;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v39) = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (LOBYTE(v39) & 0x7F) << v16;
          if ((LOBYTE(v39) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_49;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 9)
        {
LABEL_49:
          LODWORD(v18) = 0;
        }

        v5->_clientType = v18;
      }

LABEL_55:
      v35 = [v4 position];
    }

    while (v35 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_57:
    v36 = 0;
  }

  else
  {
LABEL_58:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceSilentMode starting](self, "starting")}];
  v5 = BMDeviceSilentModeClientTypeAsString([(BMDeviceSilentMode *)self clientType]);
  v6 = [(BMDeviceSilentMode *)self untilTime];
  v7 = [(BMDeviceSilentMode *)self reason];
  v8 = [v3 initWithFormat:@"BMDeviceSilentMode with starting: %@, clientType: %@, untilTime: %@, reason: %@", v4, v5, v6, v7];

  return v8;
}

- (BMDeviceSilentMode)initWithStarting:(id)a3 clientType:(int)a4 untilTime:(id)a5 reason:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = BMDeviceSilentMode;
  v13 = [(BMEventBase *)&v16 init];
  if (v13)
  {
    v13->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v13->_hasStarting = 1;
      v13->_starting = [v10 BOOLValue];
    }

    else
    {
      v13->_hasStarting = 0;
      v13->_starting = 0;
    }

    v13->_clientType = a4;
    if (v11)
    {
      v13->_hasRaw_untilTime = 1;
      [v11 timeIntervalSince1970];
    }

    else
    {
      v13->_hasRaw_untilTime = 0;
      v14 = -1.0;
    }

    v13->_raw_untilTime = v14;
    objc_storeStrong(&v13->_reason, a6);
  }

  return v13;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientType" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"untilTime" number:3 type:0 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reason" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMDeviceSilentMode alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end