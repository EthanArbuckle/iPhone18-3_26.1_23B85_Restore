@interface BMSafariWindowProxy
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariWindowProxy)initWithDomain:(id)domain openedDomain:(id)openedDomain visited:(id)visited property:(int)property accessedPropertyDirectly:(id)directly;
- (BMSafariWindowProxy)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)visited;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariWindowProxy

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    domain = [(BMSafariWindowProxy *)self domain];
    domain2 = [v5 domain];
    v8 = domain2;
    if (domain == domain2)
    {
    }

    else
    {
      domain3 = [(BMSafariWindowProxy *)self domain];
      domain4 = [v5 domain];
      v11 = [domain3 isEqual:domain4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    openedDomain = [(BMSafariWindowProxy *)self openedDomain];
    openedDomain2 = [v5 openedDomain];
    v15 = openedDomain2;
    if (openedDomain == openedDomain2)
    {
    }

    else
    {
      openedDomain3 = [(BMSafariWindowProxy *)self openedDomain];
      openedDomain4 = [v5 openedDomain];
      v18 = [openedDomain3 isEqual:openedDomain4];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    visited = [(BMSafariWindowProxy *)self visited];
    visited2 = [v5 visited];
    v21 = visited2;
    if (visited == visited2)
    {
    }

    else
    {
      visited3 = [(BMSafariWindowProxy *)self visited];
      visited4 = [v5 visited];
      v24 = [visited3 isEqual:visited4];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    property = [(BMSafariWindowProxy *)self property];
    if (property == [v5 property])
    {
      if (!-[BMSafariWindowProxy hasAccessedPropertyDirectly](self, "hasAccessedPropertyDirectly") && ![v5 hasAccessedPropertyDirectly])
      {
        LOBYTE(v12) = 1;
        goto LABEL_22;
      }

      if (-[BMSafariWindowProxy hasAccessedPropertyDirectly](self, "hasAccessedPropertyDirectly") && [v5 hasAccessedPropertyDirectly])
      {
        accessedPropertyDirectly = [(BMSafariWindowProxy *)self accessedPropertyDirectly];
        v12 = accessedPropertyDirectly ^ [v5 accessedPropertyDirectly] ^ 1;
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
  domain = [(BMSafariWindowProxy *)self domain];
  openedDomain = [(BMSafariWindowProxy *)self openedDomain];
  visited = [(BMSafariWindowProxy *)self visited];
  if (visited)
  {
    v6 = MEMORY[0x1E696AD98];
    visited2 = [(BMSafariWindowProxy *)self visited];
    [visited2 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariWindowProxy property](self, "property")}];
  if ([(BMSafariWindowProxy *)self hasAccessedPropertyDirectly])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariWindowProxy accessedPropertyDirectly](self, "accessedPropertyDirectly")}];
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
  v22 = @"openedDomain";
  null2 = openedDomain;
  if (!openedDomain)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v23 = @"visited";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v24 = @"property";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25 = @"accessedPropertyDirectly";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
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
    if (openedDomain)
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

  if (!openedDomain)
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

- (BMSafariWindowProxy)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v43 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"openedDomain"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v42 = 0;
          v18 = 0;
          goto LABEL_38;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v50 = *MEMORY[0x1E696A578];
        errorCopy = error;
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"openedDomain"];
        errorCopy2 = error;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy2 forKeys:&v50 count:1];
        v42 = 0;
        v18 = 0;
        *errorCopy = [v19 initWithDomain:v20 code:2 userInfo:v9];
        goto LABEL_37;
      }

      v42 = v8;
    }

    else
    {
      v42 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"visited"];
    errorCopy3 = error;
    v41 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = MEMORY[0x1E695DF00];
        v11 = v9;
        v12 = [v10 alloc];
        [v11 doubleValue];
        v14 = v13;

        v15 = [v12 initWithTimeIntervalSince1970:v14];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = objc_alloc_init(MEMORY[0x1E696AC80]);
          error = [v22 dateFromString:v9];

          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v18 = 0;
            goto LABEL_37;
          }

          v32 = objc_alloc(MEMORY[0x1E696ABC0]);
          v33 = *MEMORY[0x1E698F240];
          v48 = *MEMORY[0x1E696A578];
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"visited"];
          v49 = v24;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          v34 = [v32 initWithDomain:v33 code:2 userInfo:v23];
          errorCopy4 = error;
          error = 0;
          v18 = 0;
          *errorCopy4 = v34;
LABEL_36:

          v7 = v41;
LABEL_37:

          goto LABEL_38;
        }

        v15 = v9;
      }

      error = v15;
    }

    else
    {
      error = 0;
    }

LABEL_23:
    v23 = [dictionaryCopy objectForKeyedSubscript:@"property"];
    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v23;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
          {
            v24 = 0;
            v18 = 0;
            goto LABEL_36;
          }

          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v46 = *MEMORY[0x1E696A578];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"property"];
          v47 = v27;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          v24 = 0;
          v18 = 0;
          *errorCopy3 = [v39 initWithDomain:v37 code:2 userInfo:v26];
          goto LABEL_35;
        }

        v25 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariWindowProxyPropertyFromString(v23)];
      }

      v24 = v25;
    }

    else
    {
      v24 = 0;
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"accessedPropertyDirectly"];
    if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v44 = *MEMORY[0x1E696A578];
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"accessedPropertyDirectly"];
          v45 = v30;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          *errorCopy3 = [v38 initWithDomain:v36 code:2 userInfo:v31];
        }

        v27 = 0;
        v18 = 0;
        goto LABEL_35;
      }

      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v18 = -[BMSafariWindowProxy initWithDomain:openedDomain:visited:property:accessedPropertyDirectly:](self, "initWithDomain:openedDomain:visited:property:accessedPropertyDirectly:", v43, v42, error, [v24 intValue], v27);
    self = v18;
LABEL_35:

    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v43 = 0;
    v18 = 0;
    goto LABEL_39;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v52 = *MEMORY[0x1E696A578];
  v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domain"];
  v53[0] = v42;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  v43 = 0;
  v18 = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v8];
LABEL_38:

LABEL_39:
  v28 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariWindowProxy *)self writeTo:v3];
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

  if (self->_openedDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_visited)
  {
    raw_visited = self->_raw_visited;
    PBDataWriterWriteDoubleField();
  }

  property = self->_property;
  PBDataWriterWriteUint32Field();
  if (self->_hasAccessedPropertyDirectly)
  {
    accessedPropertyDirectly = self->_accessedPropertyDirectly;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v39.receiver = self;
  v39.super_class = BMSafariWindowProxy;
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
          v23 = PBReaderReadString();
          v24 = 48;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_48:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_60;
            }

            goto LABEL_58;
          }

          v23 = PBReaderReadString();
          v24 = 56;
        }

        v34 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;
      }

      else
      {
        switch(v15)
        {
          case 3:
            v5->_hasRaw_visited = 1;
            v40 = 0.0;
            v25 = [fromCopy position] + 8;
            if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
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
            break;
          case 5:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v5->_hasAccessedPropertyDirectly = 1;
            while (1)
            {
              LOBYTE(v40) = 0;
              v30 = [fromCopy position] + 1;
              if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v29 |= (LOBYTE(v40) & 0x7F) << v27;
              if ((LOBYTE(v40) & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v13 = v28++ >= 9;
              if (v13)
              {
                LOBYTE(v33) = 0;
                goto LABEL_51;
              }
            }

            v33 = (v29 != 0) & ~[fromCopy hasError];
LABEL_51:
            v5->_accessedPropertyDirectly = v33;
            break;
          case 4:
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

            if (([fromCopy hasError] & 1) != 0 || v18 > 4)
            {
LABEL_54:
              LODWORD(v18) = 0;
            }

            v5->_property = v18;
            break;
          default:
            goto LABEL_48;
        }
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
  domain = [(BMSafariWindowProxy *)self domain];
  openedDomain = [(BMSafariWindowProxy *)self openedDomain];
  visited = [(BMSafariWindowProxy *)self visited];
  v7 = BMSafariWindowProxyPropertyAsString([(BMSafariWindowProxy *)self property]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariWindowProxy accessedPropertyDirectly](self, "accessedPropertyDirectly")}];
  v9 = [v3 initWithFormat:@"BMSafariWindowProxy with domain: %@, openedDomain: %@, visited: %@, property: %@, accessedPropertyDirectly: %@", domain, openedDomain, visited, v7, v8];

  return v9;
}

- (BMSafariWindowProxy)initWithDomain:(id)domain openedDomain:(id)openedDomain visited:(id)visited property:(int)property accessedPropertyDirectly:(id)directly
{
  domainCopy = domain;
  openedDomainCopy = openedDomain;
  visitedCopy = visited;
  directlyCopy = directly;
  v20.receiver = self;
  v20.super_class = BMSafariWindowProxy;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_domain, domain);
    objc_storeStrong(&v17->_openedDomain, openedDomain);
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
    v17->_property = property;
    if (directlyCopy)
    {
      v17->_hasAccessedPropertyDirectly = 1;
      v17->_accessedPropertyDirectly = [directlyCopy BOOLValue];
    }

    else
    {
      v17->_hasAccessedPropertyDirectly = 0;
      v17->_accessedPropertyDirectly = 0;
    }
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domain" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"openedDomain" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visited" number:3 type:0 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"property" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accessedPropertyDirectly" number:5 type:12 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domain" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"openedDomain" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visited" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"property" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accessedPropertyDirectly" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
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

    v8 = [[BMSafariWindowProxy alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end