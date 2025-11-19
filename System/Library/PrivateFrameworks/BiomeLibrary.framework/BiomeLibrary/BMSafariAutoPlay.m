@interface BMSafariAutoPlay
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSafariAutoPlay)initWithDomain:(id)a3 visited:(id)a4 signal:(int)a5 countryCode:(id)a6 privacyProxy:(id)a7;
- (BMSafariAutoPlay)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)visited;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSafariAutoPlay

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSafariAutoPlay *)self domain];
    v7 = [v5 domain];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSafariAutoPlay *)self domain];
      v10 = [v5 domain];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMSafariAutoPlay *)self visited];
    v14 = [v5 visited];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSafariAutoPlay *)self visited];
      v17 = [v5 visited];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = [(BMSafariAutoPlay *)self signal];
    if (v19 == [v5 signal])
    {
      v20 = [(BMSafariAutoPlay *)self countryCode];
      v21 = [v5 countryCode];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMSafariAutoPlay *)self countryCode];
        v24 = [v5 countryCode];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_21;
        }
      }

      if (!-[BMSafariAutoPlay hasPrivacyProxy](self, "hasPrivacyProxy") && ![v5 hasPrivacyProxy])
      {
        LOBYTE(v12) = 1;
        goto LABEL_22;
      }

      if (-[BMSafariAutoPlay hasPrivacyProxy](self, "hasPrivacyProxy") && [v5 hasPrivacyProxy])
      {
        v26 = [(BMSafariAutoPlay *)self privacyProxy];
        v12 = v26 ^ [v5 privacyProxy] ^ 1;
LABEL_22:

        goto LABEL_23;
      }
    }

LABEL_21:
    LOBYTE(v12) = 0;
    goto LABEL_22;
  }

  LOBYTE(v12) = 0;
LABEL_23:

  return v12;
}

- (NSDate)visited
{
  if (self->_hasRaw_visited)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_visited];
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
  v3 = [(BMSafariAutoPlay *)self domain];
  v4 = [(BMSafariAutoPlay *)self visited];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMSafariAutoPlay *)self visited];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariAutoPlay signal](self, "signal")}];
  v9 = [(BMSafariAutoPlay *)self countryCode];
  if ([(BMSafariAutoPlay *)self hasPrivacyProxy])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariAutoPlay privacyProxy](self, "privacyProxy")}];
  }

  else
  {
    v10 = 0;
  }

  v21 = @"domain";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v11;
  v26[0] = v11;
  v22 = @"visited";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = v12;
  v23 = @"signal";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v13;
  v24 = @"countryCode";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v14;
  v25 = @"privacyProxy";
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
      goto LABEL_19;
    }
  }

  else
  {

    if (v9)
    {
LABEL_19:
      if (v8)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  if (v8)
  {
LABEL_20:
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_28:

    if (v3)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:

  if (!v7)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMSafariAutoPlay)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"domain"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v42 = 0;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"visited"];
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
          v39 = [v19 dateFromString:v8];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v18 = 0;
            goto LABEL_44;
          }

          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v49 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"visited"];
          v50 = v41;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v18 = 0;
          *a4 = [v34 initWithDomain:v35 code:2 userInfo:v20];
          a4 = 0;
          goto LABEL_43;
        }

        v14 = v8;
      }

      v39 = v14;
    }

    else
    {
      v39 = 0;
    }

LABEL_16:
    v20 = [v6 objectForKeyedSubscript:@"signal"];
    v40 = v7;
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v41 = 0;
            v18 = 0;
            a4 = v39;
            goto LABEL_43;
          }

          v32 = objc_alloc(MEMORY[0x1E696ABC0]);
          v33 = *MEMORY[0x1E698F240];
          v47 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"signal"];
          v48 = v23;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v41 = 0;
          v18 = 0;
          *a4 = [v32 initWithDomain:v33 code:2 userInfo:v22];
          goto LABEL_52;
        }

        v21 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariAutoPlayAutoPlaySignalFromString(v20)];
      }

      v41 = v21;
    }

    else
    {
      v41 = 0;
    }

    v22 = [v6 objectForKeyedSubscript:@"countryCode"];
    if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v23 = 0;
      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
LABEL_27:
      v24 = [v6 objectForKeyedSubscript:@"privacyProxy"];
      if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v25 = 0;
LABEL_30:
        a4 = v39;
        v18 = -[BMSafariAutoPlay initWithDomain:visited:signal:countryCode:privacyProxy:](self, "initWithDomain:visited:signal:countryCode:privacyProxy:", v42, v39, [v41 intValue], v23, v25);
        self = v18;
LABEL_41:

LABEL_42:
        v7 = v40;
LABEL_43:

        goto LABEL_44;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
        goto LABEL_30;
      }

      if (a4)
      {
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"privacyProxy"];
        v44 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        *a4 = [v38 initWithDomain:v36 code:2 userInfo:v29];
      }

      v25 = 0;
      v18 = 0;
LABEL_40:
      a4 = v39;
      goto LABEL_41;
    }

    if (a4)
    {
      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v26 = *MEMORY[0x1E698F240];
      v45 = *MEMORY[0x1E696A578];
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"countryCode"];
      v46 = v25;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v27 = [v37 initWithDomain:v26 code:2 userInfo:v24];
      v23 = 0;
      v18 = 0;
      *a4 = v27;
      goto LABEL_40;
    }

    v23 = 0;
    v18 = 0;
LABEL_52:
    a4 = v39;
    goto LABEL_42;
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
    goto LABEL_45;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domain"];
  v52[0] = v17;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v42 = 0;
  v18 = 0;
  *a4 = [v15 initWithDomain:v16 code:2 userInfo:v8];
  a4 = v17;
LABEL_44:

LABEL_45:
  v30 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariAutoPlay *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_visited)
  {
    raw_visited = self->_raw_visited;
    PBDataWriterWriteDoubleField();
  }

  signal = self->_signal;
  PBDataWriterWriteUint32Field();
  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPrivacyProxy)
  {
    privacyProxy = self->_privacyProxy;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = BMSafariAutoPlay;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_61;
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
          v32 = PBReaderReadString();
          v33 = 48;
          goto LABEL_47;
        }

        if (v15 != 2)
        {
LABEL_48:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_60;
          }

          goto LABEL_58;
        }

        v5->_hasRaw_visited = 1;
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

        v5->_raw_visited = v40;
      }

      else
      {
        if (v15 == 5)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v5->_hasPrivacyProxy = 1;
          while (1)
          {
            LOBYTE(v40) = 0;
            v28 = [v4 position] + 1;
            if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
            {
              v30 = [v4 data];
              [v30 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v27 |= (LOBYTE(v40) & 0x7F) << v25;
            if ((LOBYTE(v40) & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v13 = v26++ >= 9;
            if (v13)
            {
              LOBYTE(v31) = 0;
              goto LABEL_51;
            }
          }

          v31 = (v27 != 0) & ~[v4 hasError];
LABEL_51:
          v5->_privacyProxy = v31;
          goto LABEL_58;
        }

        if (v15 == 4)
        {
          v32 = PBReaderReadString();
          v33 = 56;
LABEL_47:
          v34 = *(&v5->super.super.isa + v33);
          *(&v5->super.super.isa + v33) = v32;

          goto LABEL_58;
        }

        if (v15 != 3)
        {
          goto LABEL_48;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
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
          if (v17++ > 8)
          {
            goto LABEL_54;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 3)
        {
LABEL_54:
          LODWORD(v18) = 0;
        }

        v5->_signal = v18;
      }

LABEL_58:
      v36 = [v4 position];
    }

    while (v36 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_60:
    v37 = 0;
  }

  else
  {
LABEL_61:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSafariAutoPlay *)self domain];
  v5 = [(BMSafariAutoPlay *)self visited];
  v6 = BMSafariAutoPlayAutoPlaySignalAsString([(BMSafariAutoPlay *)self signal]);
  v7 = [(BMSafariAutoPlay *)self countryCode];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariAutoPlay privacyProxy](self, "privacyProxy")}];
  v9 = [v3 initWithFormat:@"BMSafariAutoPlay with domain: %@, visited: %@, signal: %@, countryCode: %@, privacyProxy: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMSafariAutoPlay)initWithDomain:(id)a3 visited:(id)a4 signal:(int)a5 countryCode:(id)a6 privacyProxy:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMSafariAutoPlay;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_domain, a3);
    if (v14)
    {
      v17->_hasRaw_visited = 1;
      [v14 timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_visited = 0;
      v18 = -1.0;
    }

    v17->_raw_visited = v18;
    v17->_signal = a5;
    objc_storeStrong(&v17->_countryCode, a6);
    if (v16)
    {
      v17->_hasPrivacyProxy = 1;
      v17->_privacyProxy = [v16 BOOLValue];
    }

    else
    {
      v17->_hasPrivacyProxy = 0;
      v17->_privacyProxy = 0;
    }
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domain" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visited" number:2 type:0 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"signal" number:3 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countryCode" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privacyProxy" number:5 type:12 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domain" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visited" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"signal" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countryCode" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privacyProxy" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
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

    v8 = [[BMSafariAutoPlay alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end