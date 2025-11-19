@interface BMLighthouseLedgerLighthousePluginEventEventStatus
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLighthouseLedgerLighthousePluginEventEventStatus)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMLighthouseLedgerLighthousePluginEventEventStatus)initWithSucceeded:(id)a3 errorDomain:(id)a4 errorCode:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLighthouseLedgerLighthousePluginEventEventStatus

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMLighthouseLedgerLighthousePluginEventEventStatus hasSucceeded](self, "hasSucceeded") || [v5 hasSucceeded])
    {
      if (![(BMLighthouseLedgerLighthousePluginEventEventStatus *)self hasSucceeded])
      {
        goto LABEL_17;
      }

      if (![v5 hasSucceeded])
      {
        goto LABEL_17;
      }

      v6 = [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self succeeded];
      if (v6 != [v5 succeeded])
      {
        goto LABEL_17;
      }
    }

    v7 = [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self errorDomain];
    v8 = [v5 errorDomain];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self errorDomain];
      v11 = [v5 errorDomain];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_17;
      }
    }

    if (!-[BMLighthouseLedgerLighthousePluginEventEventStatus hasErrorCode](self, "hasErrorCode") && ![v5 hasErrorCode])
    {
      v13 = 1;
      goto LABEL_18;
    }

    if (-[BMLighthouseLedgerLighthousePluginEventEventStatus hasErrorCode](self, "hasErrorCode") && [v5 hasErrorCode])
    {
      v14 = [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self errorCode];
      v13 = v14 == [v5 errorCode];
LABEL_18:

      goto LABEL_19;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  if ([(BMLighthouseLedgerLighthousePluginEventEventStatus *)self hasSucceeded])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLighthouseLedgerLighthousePluginEventEventStatus succeeded](self, "succeeded")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self errorDomain];
  if ([(BMLighthouseLedgerLighthousePluginEventEventStatus *)self hasErrorCode])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseLedgerLighthousePluginEventEventStatus errorCode](self, "errorCode")}];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = @"succeeded";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v6;
  v12[1] = @"errorDomain";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"errorCode";
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_20:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_21:

LABEL_16:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMLighthouseLedgerLighthousePluginEventEventStatus)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"succeeded"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"errorDomain"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v13 = 0;
          goto LABEL_12;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"errorDomain"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        v13 = 0;
        *a4 = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"errorCode"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"errorCode"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *a4 = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self initWithSucceeded:v8 errorDomain:v10 errorCode:v12];
    v13 = self;
LABEL_11:

    goto LABEL_12;
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
    v13 = 0;
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"succeeded"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  v13 = 0;
  *a4 = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_hasSucceeded)
  {
    succeeded = self->_succeeded;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_hasErrorCode)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMLighthouseLedgerLighthousePluginEventEventStatus;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_51;
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
        v36 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v36 & 0x7F) << v7;
        if ((v36 & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasErrorCode = 1;
        while (1)
        {
          v36 = 0;
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v27 |= (v36 & 0x7F) << v25;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            v31 = 0;
            goto LABEL_45;
          }
        }

        v31 = [v4 hasError] ? 0 : v27;
LABEL_45:
        v5->_errorCode = v31;
      }

      else if (v15 == 2)
      {
        v23 = PBReaderReadString();
        errorDomain = v5->_errorDomain;
        v5->_errorDomain = v23;
      }

      else if (v15 == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasSucceeded = 1;
        while (1)
        {
          v36 = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v36 & 0x7F) << v16;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_47;
          }
        }

        v22 = (v18 != 0) & ~[v4 hasError];
LABEL_47:
        v5->_succeeded = v22;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_50;
      }

      v32 = [v4 position];
    }

    while (v32 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_50:
    v33 = 0;
  }

  else
  {
LABEL_51:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLighthouseLedgerLighthousePluginEventEventStatus succeeded](self, "succeeded")}];
  v5 = [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self errorDomain];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseLedgerLighthousePluginEventEventStatus errorCode](self, "errorCode")}];
  v7 = [v3 initWithFormat:@"BMLighthouseLedgerLighthousePluginEventEventStatus with succeeded: %@, errorDomain: %@, errorCode: %@", v4, v5, v6];

  return v7;
}

- (BMLighthouseLedgerLighthousePluginEventEventStatus)initWithSucceeded:(id)a3 errorDomain:(id)a4 errorCode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BMLighthouseLedgerLighthousePluginEventEventStatus;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v8)
    {
      v11->_hasSucceeded = 1;
      v11->_succeeded = [v8 BOOLValue];
    }

    else
    {
      v11->_hasSucceeded = 0;
      v11->_succeeded = 0;
    }

    objc_storeStrong(&v11->_errorDomain, a4);
    if (v10)
    {
      v11->_hasErrorCode = 1;
      v12 = [v10 intValue];
    }

    else
    {
      v11->_hasErrorCode = 0;
      v12 = -1;
    }

    v11->_errorCode = v12;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"succeeded" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorDomain" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorCode" number:3 type:2 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"succeeded" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"errorDomain" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"errorCode" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
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

    v8 = [[BMLighthouseLedgerLighthousePluginEventEventStatus alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end