@interface BMScreenTimeAppUsage
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMScreenTimeAppUsage)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMScreenTimeAppUsage)initWithStarting:(id)a3 absoluteTimestamp:(id)a4 bundleID:(id)a5 parentBundleID:(id)a6 isUsageTrusted:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMScreenTimeAppUsage

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMScreenTimeAppUsage *)self writeTo:v3];
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
    if (-[BMScreenTimeAppUsage hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMScreenTimeAppUsage *)self hasStarting])
      {
        goto LABEL_25;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_25;
      }

      v6 = [(BMScreenTimeAppUsage *)self starting];
      if (v6 != [v5 starting])
      {
        goto LABEL_25;
      }
    }

    v7 = [(BMScreenTimeAppUsage *)self absoluteTimestamp];
    v8 = [v5 absoluteTimestamp];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMScreenTimeAppUsage *)self absoluteTimestamp];
      v11 = [v5 absoluteTimestamp];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    v14 = [(BMScreenTimeAppUsage *)self bundleID];
    v15 = [v5 bundleID];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMScreenTimeAppUsage *)self bundleID];
      v18 = [v5 bundleID];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_25;
      }
    }

    v20 = [(BMScreenTimeAppUsage *)self parentBundleID];
    v21 = [v5 parentBundleID];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMScreenTimeAppUsage *)self parentBundleID];
      v24 = [v5 parentBundleID];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_25;
      }
    }

    if (!-[BMScreenTimeAppUsage hasIsUsageTrusted](self, "hasIsUsageTrusted") && ![v5 hasIsUsageTrusted])
    {
      LOBYTE(v13) = 1;
      goto LABEL_26;
    }

    if (-[BMScreenTimeAppUsage hasIsUsageTrusted](self, "hasIsUsageTrusted") && [v5 hasIsUsageTrusted])
    {
      v26 = [(BMScreenTimeAppUsage *)self isUsageTrusted];
      v13 = v26 ^ [v5 isUsageTrusted] ^ 1;
LABEL_26:

      goto LABEL_27;
    }

LABEL_25:
    LOBYTE(v13) = 0;
    goto LABEL_26;
  }

  LOBYTE(v13) = 0;
LABEL_27:

  return v13;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
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
  v26[5] = *MEMORY[0x1E69E9840];
  if ([(BMScreenTimeAppUsage *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMScreenTimeAppUsage starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMScreenTimeAppUsage *)self absoluteTimestamp];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMScreenTimeAppUsage *)self absoluteTimestamp];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMScreenTimeAppUsage *)self bundleID];
  v9 = [(BMScreenTimeAppUsage *)self parentBundleID];
  if ([(BMScreenTimeAppUsage *)self hasIsUsageTrusted])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMScreenTimeAppUsage isUsageTrusted](self, "isUsageTrusted")}];
  }

  else
  {
    v10 = 0;
  }

  v21 = @"starting";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v11;
  v26[0] = v11;
  v22 = @"absoluteTimestamp";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = v12;
  v23 = @"bundleID";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v13;
  v24 = @"parentBundleID";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v14;
  v25 = @"isUsageTrusted";
  v15 = v10;
  if (!v10)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (v9)
    {
LABEL_22:
      if (v8)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }
  }

  if (v8)
  {
LABEL_23:
    if (v7)
    {
      goto LABEL_24;
    }

LABEL_31:

    if (v3)
    {
      goto LABEL_25;
    }

    goto LABEL_32;
  }

LABEL_30:

  if (!v7)
  {
    goto LABEL_31;
  }

LABEL_24:
  if (v3)
  {
    goto LABEL_25;
  }

LABEL_32:

LABEL_25:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMScreenTimeAppUsage)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v42 = 0;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"absoluteTimestamp"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = MEMORY[0x1E695DF00];
        v10 = v8;
        v11 = [v9 alloc];
        [v10 doubleValue];
        v13 = v12;

        v14 = [v11 initWithTimeIntervalSince1970:v13];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v40 = [v19 dateFromString:v8];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v18 = 0;
            goto LABEL_43;
          }

          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v49 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v50 = v41;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v18 = 0;
          *a4 = [v34 initWithDomain:v35 code:2 userInfo:v20];
          a4 = 0;
          goto LABEL_42;
        }

        v14 = v8;
      }

      v40 = v14;
    }

    else
    {
      v40 = 0;
    }

LABEL_16:
    v20 = [v6 objectForKeyedSubscript:@"bundleID"];
    v39 = v7;
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v41 = 0;
          v18 = 0;
          a4 = v40;
          goto LABEL_42;
        }

        v21 = self;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
        v48 = v23;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v41 = 0;
        v18 = 0;
        *a4 = [v26 initWithDomain:v27 code:2 userInfo:v22];
        goto LABEL_50;
      }

      v21 = self;
      v41 = v20;
    }

    else
    {
      v21 = self;
      v41 = 0;
    }

    v22 = [v6 objectForKeyedSubscript:@"parentBundleID"];
    if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v23 = 0;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
LABEL_22:
      v24 = [v6 objectForKeyedSubscript:@"isUsageTrusted"];
      if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v25 = 0;
LABEL_25:
        a4 = v40;
        v18 = [(BMScreenTimeAppUsage *)v21 initWithStarting:v42 absoluteTimestamp:v40 bundleID:v41 parentBundleID:v23 isUsageTrusted:v25];
        v21 = v18;
LABEL_40:

LABEL_41:
        self = v21;
        v7 = v39;
LABEL_42:

        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
        goto LABEL_25;
      }

      if (a4)
      {
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isUsageTrusted"];
        v44 = v30;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        *a4 = [v38 initWithDomain:v36 code:2 userInfo:v31];
      }

      v25 = 0;
      v18 = 0;
LABEL_39:
      a4 = v40;
      goto LABEL_40;
    }

    if (a4)
    {
      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v45 = *MEMORY[0x1E696A578];
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"parentBundleID"];
      v46 = v25;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v29 = [v37 initWithDomain:v28 code:2 userInfo:v24];
      v23 = 0;
      v18 = 0;
      *a4 = v29;
      goto LABEL_39;
    }

    v23 = 0;
    v18 = 0;
LABEL_50:
    a4 = v40;
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v42 = 0;
    v18 = 0;
    goto LABEL_44;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
  v52[0] = v17;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v42 = 0;
  v18 = 0;
  *a4 = [v15 initWithDomain:v16 code:2 userInfo:v8];
  a4 = v17;
LABEL_43:

LABEL_44:
  v32 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsUsageTrusted)
  {
    isUsageTrusted = self->_isUsageTrusted;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = BMScreenTimeAppUsage;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_60;
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
        LOBYTE(v40) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v40) & 0x7F) << v7;
        if ((LOBYTE(v40) & 0x80) == 0)
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
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v5->_hasStarting = 1;
          while (1)
          {
            LOBYTE(v40) = 0;
            v31 = [v4 position] + 1;
            if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
            {
              v33 = [v4 data];
              [v33 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v30 |= (LOBYTE(v40) & 0x7F) << v28;
            if ((LOBYTE(v40) & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v13 = v29++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_51;
            }
          }

          v22 = (v30 != 0) & ~[v4 hasError];
LABEL_51:
          v34 = 32;
LABEL_54:
          *(&v5->super.super.isa + v34) = v22;
          goto LABEL_57;
        }

        if (v15 != 2)
        {
LABEL_48:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_59;
          }

          goto LABEL_57;
        }

        v5->_hasRaw_absoluteTimestamp = 1;
        v40 = 0.0;
        v23 = [v4 position] + 8;
        if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 8, v24 <= objc_msgSend(v4, "length")))
        {
          v35 = [v4 data];
          [v35 getBytes:&v40 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_absoluteTimestamp = v40;
      }

      else
      {
        switch(v15)
        {
          case 3:
            v25 = PBReaderReadString();
            v26 = 40;
            break;
          case 4:
            v25 = PBReaderReadString();
            v26 = 48;
            break;
          case 5:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v5->_hasIsUsageTrusted = 1;
            while (1)
            {
              LOBYTE(v40) = 0;
              v19 = [v4 position] + 1;
              if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
              {
                v21 = [v4 data];
                [v21 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (LOBYTE(v40) & 0x7F) << v16;
              if ((LOBYTE(v40) & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v13 = v17++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_53;
              }
            }

            v22 = (v18 != 0) & ~[v4 hasError];
LABEL_53:
            v34 = 34;
            goto LABEL_54;
          default:
            goto LABEL_48;
        }

        v27 = *(&v5->super.super.isa + v26);
        *(&v5->super.super.isa + v26) = v25;
      }

LABEL_57:
      v36 = [v4 position];
    }

    while (v36 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_59:
    v37 = 0;
  }

  else
  {
LABEL_60:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMScreenTimeAppUsage starting](self, "starting")}];
  v5 = [(BMScreenTimeAppUsage *)self absoluteTimestamp];
  v6 = [(BMScreenTimeAppUsage *)self bundleID];
  v7 = [(BMScreenTimeAppUsage *)self parentBundleID];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMScreenTimeAppUsage isUsageTrusted](self, "isUsageTrusted")}];
  v9 = [v3 initWithFormat:@"BMScreenTimeAppUsage with starting: %@, absoluteTimestamp: %@, bundleID: %@, parentBundleID: %@, isUsageTrusted: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMScreenTimeAppUsage)initWithStarting:(id)a3 absoluteTimestamp:(id)a4 bundleID:(id)a5 parentBundleID:(id)a6 isUsageTrusted:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMScreenTimeAppUsage;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v17->_hasStarting = 1;
      v17->_starting = [v12 BOOLValue];
    }

    else
    {
      v17->_hasStarting = 0;
      v17->_starting = 0;
    }

    if (v13)
    {
      v17->_hasRaw_absoluteTimestamp = 1;
      [v13 timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_absoluteTimestamp = 0;
      v18 = -1.0;
    }

    v17->_raw_absoluteTimestamp = v18;
    objc_storeStrong(&v17->_bundleID, a5);
    objc_storeStrong(&v17->_parentBundleID, a6);
    if (v16)
    {
      v17->_hasIsUsageTrusted = 1;
      v17->_isUsageTrusted = [v16 BOOLValue];
    }

    else
    {
      v17->_hasIsUsageTrusted = 0;
      v17->_isUsageTrusted = 0;
    }
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:2 type:0 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parentBundleID" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isUsageTrusted" number:5 type:12 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"parentBundleID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isUsageTrusted" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
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

    v8 = [[BMScreenTimeAppUsage alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end