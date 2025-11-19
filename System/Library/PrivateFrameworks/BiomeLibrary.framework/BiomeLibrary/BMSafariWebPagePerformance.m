@interface BMSafariWebPagePerformance
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSafariWebPagePerformance)initWithDomain:(id)a3 visited:(id)a4 platform:(int)a5 performanceEvent:(int)a6 privacyProxy:(id)a7;
- (BMSafariWebPagePerformance)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)visited;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSafariWebPagePerformance

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSafariWebPagePerformance *)self domain];
    v7 = [v5 domain];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSafariWebPagePerformance *)self domain];
      v10 = [v5 domain];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    v13 = [(BMSafariWebPagePerformance *)self visited];
    v14 = [v5 visited];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSafariWebPagePerformance *)self visited];
      v17 = [v5 visited];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_18;
      }
    }

    v19 = [(BMSafariWebPagePerformance *)self platform];
    if (v19 == [v5 platform])
    {
      v20 = [(BMSafariWebPagePerformance *)self performanceEvent];
      if (v20 == [v5 performanceEvent])
      {
        if (!-[BMSafariWebPagePerformance hasPrivacyProxy](self, "hasPrivacyProxy") && ![v5 hasPrivacyProxy])
        {
          LOBYTE(v12) = 1;
          goto LABEL_19;
        }

        if (-[BMSafariWebPagePerformance hasPrivacyProxy](self, "hasPrivacyProxy") && [v5 hasPrivacyProxy])
        {
          v21 = [(BMSafariWebPagePerformance *)self privacyProxy];
          v12 = v21 ^ [v5 privacyProxy] ^ 1;
LABEL_19:

          goto LABEL_20;
        }
      }
    }

LABEL_18:
    LOBYTE(v12) = 0;
    goto LABEL_19;
  }

  LOBYTE(v12) = 0;
LABEL_20:

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
  v3 = [(BMSafariWebPagePerformance *)self domain];
  v4 = [(BMSafariWebPagePerformance *)self visited];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMSafariWebPagePerformance *)self visited];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariWebPagePerformance platform](self, "platform")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariWebPagePerformance performanceEvent](self, "performanceEvent")}];
  if ([(BMSafariWebPagePerformance *)self hasPrivacyProxy])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariWebPagePerformance privacyProxy](self, "privacyProxy")}];
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
  v23 = @"platform";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v13;
  v24 = @"performanceEvent";
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

- (BMSafariWebPagePerformance)initWithJSONDictionary:(id)a3 error:(id *)a4
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
            goto LABEL_39;
          }

          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v49 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"visited"];
          v50 = v41;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v18 = 0;
          *a4 = [v33 initWithDomain:v34 code:2 userInfo:v20];
          a4 = 0;
          goto LABEL_38;
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
    v20 = [v6 objectForKeyedSubscript:@"platform"];
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
            goto LABEL_38;
          }

          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v32 = *MEMORY[0x1E698F240];
          v47 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"platform"];
          v48 = v23;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v41 = 0;
          v18 = 0;
          *a4 = [v31 initWithDomain:v32 code:2 userInfo:v22];
          goto LABEL_58;
        }

        v21 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariWebPagePerformancePlatformFromString(v20)];
      }

      v41 = v21;
    }

    else
    {
      v41 = 0;
    }

    v22 = [v6 objectForKeyedSubscript:@"performanceEvent"];
    if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v23 = 0;
      goto LABEL_32;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v22;
LABEL_31:
      v23 = v24;
LABEL_32:
      v25 = [v6 objectForKeyedSubscript:@"privacyProxy"];
      if (!v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v26 = 0;
LABEL_35:
        a4 = v39;
        v18 = -[BMSafariWebPagePerformance initWithDomain:visited:platform:performanceEvent:privacyProxy:](self, "initWithDomain:visited:platform:performanceEvent:privacyProxy:", v42, v39, [v41 intValue], objc_msgSend(v23, "intValue"), v26);
        self = v18;
LABEL_36:

LABEL_37:
        v7 = v40;
LABEL_38:

        goto LABEL_39;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
        goto LABEL_35;
      }

      if (a4)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"privacyProxy"];
        v44 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        *a4 = [v37 initWithDomain:v35 code:2 userInfo:v30];
      }

      v26 = 0;
      v18 = 0;
LABEL_53:
      a4 = v39;
      goto LABEL_36;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariWebPagePerformanceWebPerformanceEventFromString(v22)];
      goto LABEL_31;
    }

    if (a4)
    {
      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v45 = *MEMORY[0x1E696A578];
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"performanceEvent"];
      v46 = v26;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v23 = 0;
      v18 = 0;
      *a4 = [v38 initWithDomain:v36 code:2 userInfo:v25];
      goto LABEL_53;
    }

    v23 = 0;
    v18 = 0;
LABEL_58:
    a4 = v39;
    goto LABEL_37;
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
    goto LABEL_40;
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
LABEL_39:

LABEL_40:
  v27 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariWebPagePerformance *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_visited)
  {
    raw_visited = self->_raw_visited;
    PBDataWriterWriteDoubleField();
  }

  platform = self->_platform;
  PBDataWriterWriteUint32Field();
  performanceEvent = self->_performanceEvent;
  PBDataWriterWriteUint32Field();
  if (self->_hasPrivacyProxy)
  {
    privacyProxy = self->_privacyProxy;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = BMSafariWebPagePerformance;
  v5 = [(BMEventBase *)&v44 init];
  if (!v5)
  {
    goto LABEL_73;
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
        LOBYTE(v45) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v45 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v45) & 0x7F) << v7;
        if ((LOBYTE(v45) & 0x80) == 0)
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
          v37 = PBReaderReadString();
          domain = v5->_domain;
          v5->_domain = v37;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_55:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_72;
            }

            goto LABEL_70;
          }

          v5->_hasRaw_visited = 1;
          v45 = 0.0;
          v23 = [v4 position] + 8;
          if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 8, v24 <= objc_msgSend(v4, "length")))
          {
            v40 = [v4 data];
            [v40 getBytes:&v45 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_raw_visited = v45;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v25 = 0;
            v26 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v27 = [v4 position] + 1;
              if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
              {
                v29 = [v4 data];
                [v29 getBytes:&v45 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (LOBYTE(v45) & 0x7F) << v25;
              if ((LOBYTE(v45) & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v22 = v26++ > 8;
              if (v22)
              {
                goto LABEL_59;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 3)
            {
LABEL_59:
              LODWORD(v18) = 0;
            }

            v39 = 40;
            break;
          case 5:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v5->_hasPrivacyProxy = 1;
            while (1)
            {
              LOBYTE(v45) = 0;
              v33 = [v4 position] + 1;
              if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
              {
                v35 = [v4 data];
                [v35 getBytes:&v45 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v32 |= (LOBYTE(v45) & 0x7F) << v30;
              if ((LOBYTE(v45) & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v13 = v31++ >= 9;
              if (v13)
              {
                LOBYTE(v36) = 0;
                goto LABEL_62;
              }
            }

            v36 = (v32 != 0) & ~[v4 hasError];
LABEL_62:
            v5->_privacyProxy = v36;
            goto LABEL_70;
          case 4:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v19 = [v4 position] + 1;
              if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
              {
                v21 = [v4 data];
                [v21 getBytes:&v45 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (LOBYTE(v45) & 0x7F) << v16;
              if ((LOBYTE(v45) & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                goto LABEL_65;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 3)
            {
LABEL_65:
              LODWORD(v18) = 0;
            }

            v39 = 44;
            break;
          default:
            goto LABEL_55;
        }

        *(&v5->super.super.isa + v39) = v18;
      }

LABEL_70:
      v41 = [v4 position];
    }

    while (v41 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_72:
    v42 = 0;
  }

  else
  {
LABEL_73:
    v42 = v5;
  }

  return v42;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSafariWebPagePerformance *)self domain];
  v5 = [(BMSafariWebPagePerformance *)self visited];
  v6 = BMSafariWebPagePerformancePlatformAsString([(BMSafariWebPagePerformance *)self platform]);
  v7 = BMSafariWebPagePerformanceWebPerformanceEventAsString([(BMSafariWebPagePerformance *)self performanceEvent]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariWebPagePerformance privacyProxy](self, "privacyProxy")}];
  v9 = [v3 initWithFormat:@"BMSafariWebPagePerformance with domain: %@, visited: %@, platform: %@, performanceEvent: %@, privacyProxy: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMSafariWebPagePerformance)initWithDomain:(id)a3 visited:(id)a4 platform:(int)a5 performanceEvent:(int)a6 privacyProxy:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = BMSafariWebPagePerformance;
  v16 = [(BMEventBase *)&v19 init];
  if (v16)
  {
    v16->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v16->_domain, a3);
    if (v14)
    {
      v16->_hasRaw_visited = 1;
      [v14 timeIntervalSince1970];
    }

    else
    {
      v16->_hasRaw_visited = 0;
      v17 = -1.0;
    }

    v16->_raw_visited = v17;
    v16->_platform = a5;
    v16->_performanceEvent = a6;
    if (v15)
    {
      v16->_hasPrivacyProxy = 1;
      v16->_privacyProxy = [v15 BOOLValue];
    }

    else
    {
      v16->_hasPrivacyProxy = 0;
      v16->_privacyProxy = 0;
    }
  }

  return v16;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domain" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visited" number:2 type:0 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"platform" number:3 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"performanceEvent" number:4 type:4 subMessageClass:0];
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
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"platform" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"performanceEvent" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
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

    v8 = [[BMSafariWebPagePerformance alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end