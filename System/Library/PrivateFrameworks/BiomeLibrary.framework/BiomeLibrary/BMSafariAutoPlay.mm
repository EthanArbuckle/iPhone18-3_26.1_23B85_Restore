@interface BMSafariAutoPlay
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariAutoPlay)initWithDomain:(id)domain visited:(id)visited signal:(int)signal countryCode:(id)code privacyProxy:(id)proxy;
- (BMSafariAutoPlay)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)visited;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariAutoPlay

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    domain = [(BMSafariAutoPlay *)self domain];
    domain2 = [v5 domain];
    v8 = domain2;
    if (domain == domain2)
    {
    }

    else
    {
      domain3 = [(BMSafariAutoPlay *)self domain];
      domain4 = [v5 domain];
      v11 = [domain3 isEqual:domain4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    visited = [(BMSafariAutoPlay *)self visited];
    visited2 = [v5 visited];
    v15 = visited2;
    if (visited == visited2)
    {
    }

    else
    {
      visited3 = [(BMSafariAutoPlay *)self visited];
      visited4 = [v5 visited];
      v18 = [visited3 isEqual:visited4];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    signal = [(BMSafariAutoPlay *)self signal];
    if (signal == [v5 signal])
    {
      countryCode = [(BMSafariAutoPlay *)self countryCode];
      countryCode2 = [v5 countryCode];
      v22 = countryCode2;
      if (countryCode == countryCode2)
      {
      }

      else
      {
        countryCode3 = [(BMSafariAutoPlay *)self countryCode];
        countryCode4 = [v5 countryCode];
        v25 = [countryCode3 isEqual:countryCode4];

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
        privacyProxy = [(BMSafariAutoPlay *)self privacyProxy];
        v12 = privacyProxy ^ [v5 privacyProxy] ^ 1;
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
  domain = [(BMSafariAutoPlay *)self domain];
  visited = [(BMSafariAutoPlay *)self visited];
  if (visited)
  {
    v5 = MEMORY[0x1E696AD98];
    visited2 = [(BMSafariAutoPlay *)self visited];
    [visited2 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariAutoPlay signal](self, "signal")}];
  countryCode = [(BMSafariAutoPlay *)self countryCode];
  if ([(BMSafariAutoPlay *)self hasPrivacyProxy])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariAutoPlay privacyProxy](self, "privacyProxy")}];
  }

  else
  {
    v10 = 0;
  }

  v21 = @"domain";
  null = domain;
  if (!domain)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v26[0] = null;
  v22 = @"visited";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v23 = @"signal";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v24 = @"countryCode";
  null4 = countryCode;
  if (!countryCode)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25 = @"privacyProxy";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (v10)
  {
    if (countryCode)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (countryCode)
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

    if (domain)
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
  if (domain)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMSafariAutoPlay)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v42 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"visited"];
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
          if (!error)
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
          *error = [v34 initWithDomain:v35 code:2 userInfo:v20];
          error = 0;
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
    v20 = [dictionaryCopy objectForKeyedSubscript:@"signal"];
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
          if (!error)
          {
            v41 = 0;
            v18 = 0;
            error = v39;
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
          *error = [v32 initWithDomain:v33 code:2 userInfo:v22];
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

    v22 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
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
      v24 = [dictionaryCopy objectForKeyedSubscript:@"privacyProxy"];
      if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v25 = 0;
LABEL_30:
        error = v39;
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

      if (error)
      {
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"privacyProxy"];
        v44 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        *error = [v38 initWithDomain:v36 code:2 userInfo:v29];
      }

      v25 = 0;
      v18 = 0;
LABEL_40:
      error = v39;
      goto LABEL_41;
    }

    if (error)
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
      *error = v27;
      goto LABEL_40;
    }

    v23 = 0;
    v18 = 0;
LABEL_52:
    error = v39;
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = v7;
    goto LABEL_4;
  }

  if (!error)
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
  *error = [v15 initWithDomain:v16 code:2 userInfo:v8];
  error = v17;
LABEL_44:

LABEL_45:
  v30 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariAutoPlay *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v39.receiver = self;
  v39.super_class = BMSafariAutoPlay;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_61;
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
        LOBYTE(v40) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
        v23 = [fromCopy position] + 8;
        if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 8, v24 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
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
            v28 = [fromCopy position] + 1;
            if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v31 = (v27 != 0) & ~[fromCopy hasError];
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
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if (([fromCopy hasError] & 1) != 0 || v18 > 3)
        {
LABEL_54:
          LODWORD(v18) = 0;
        }

        v5->_signal = v18;
      }

LABEL_58:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  domain = [(BMSafariAutoPlay *)self domain];
  visited = [(BMSafariAutoPlay *)self visited];
  v6 = BMSafariAutoPlayAutoPlaySignalAsString([(BMSafariAutoPlay *)self signal]);
  countryCode = [(BMSafariAutoPlay *)self countryCode];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariAutoPlay privacyProxy](self, "privacyProxy")}];
  v9 = [v3 initWithFormat:@"BMSafariAutoPlay with domain: %@, visited: %@, signal: %@, countryCode: %@, privacyProxy: %@", domain, visited, v6, countryCode, v8];

  return v9;
}

- (BMSafariAutoPlay)initWithDomain:(id)domain visited:(id)visited signal:(int)signal countryCode:(id)code privacyProxy:(id)proxy
{
  domainCopy = domain;
  visitedCopy = visited;
  codeCopy = code;
  proxyCopy = proxy;
  v20.receiver = self;
  v20.super_class = BMSafariAutoPlay;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_domain, domain);
    if (visitedCopy)
    {
      v17->_hasRaw_visited = 1;
      [visitedCopy timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_visited = 0;
      v18 = -1.0;
    }

    v17->_raw_visited = v18;
    v17->_signal = signal;
    objc_storeStrong(&v17->_countryCode, code);
    if (proxyCopy)
    {
      v17->_hasPrivacyProxy = 1;
      v17->_privacyProxy = [proxyCopy BOOLValue];
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