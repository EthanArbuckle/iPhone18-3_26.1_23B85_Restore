@interface BMAudioRoute
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAudioRoute)initWithExternal:(id)external identifier:(id)identifier portType:(id)type portName:(id)name routeChangeReason:(int)reason type:(int)a8;
- (BMAudioRoute)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAudioRoute

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAudioRoute *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"external" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"portType" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"portName" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"routeChangeReason" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMAudioRoute hasExternal](self, "hasExternal") || [v5 hasExternal])
    {
      if (![(BMAudioRoute *)self hasExternal])
      {
        goto LABEL_22;
      }

      if (![v5 hasExternal])
      {
        goto LABEL_22;
      }

      external = [(BMAudioRoute *)self external];
      if (external != [v5 external])
      {
        goto LABEL_22;
      }
    }

    identifier = [(BMAudioRoute *)self identifier];
    identifier2 = [v5 identifier];
    v9 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMAudioRoute *)self identifier];
      identifier4 = [v5 identifier];
      v12 = [identifier3 isEqual:identifier4];

      if (!v12)
      {
        goto LABEL_22;
      }
    }

    portType = [(BMAudioRoute *)self portType];
    portType2 = [v5 portType];
    v16 = portType2;
    if (portType == portType2)
    {
    }

    else
    {
      portType3 = [(BMAudioRoute *)self portType];
      portType4 = [v5 portType];
      v19 = [portType3 isEqual:portType4];

      if (!v19)
      {
        goto LABEL_22;
      }
    }

    portName = [(BMAudioRoute *)self portName];
    portName2 = [v5 portName];
    v22 = portName2;
    if (portName == portName2)
    {
    }

    else
    {
      portName3 = [(BMAudioRoute *)self portName];
      portName4 = [v5 portName];
      v25 = [portName3 isEqual:portName4];

      if (!v25)
      {
        goto LABEL_22;
      }
    }

    routeChangeReason = [(BMAudioRoute *)self routeChangeReason];
    if (routeChangeReason == [v5 routeChangeReason])
    {
      type = [(BMAudioRoute *)self type];
      v13 = type == [v5 type];
LABEL_23:

      goto LABEL_24;
    }

LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  v13 = 0;
LABEL_24:

  return v13;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  if ([(BMAudioRoute *)self hasExternal])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAudioRoute external](self, "external")}];
  }

  else
  {
    v3 = 0;
  }

  identifier = [(BMAudioRoute *)self identifier];
  portType = [(BMAudioRoute *)self portType];
  portName = [(BMAudioRoute *)self portName];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAudioRoute routeChangeReason](self, "routeChangeReason")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAudioRoute type](self, "type")}];
  v22[0] = @"external";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v21 = v3;
  v23[0] = null;
  v22[1] = @"identifier";
  null2 = identifier;
  if (!identifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null2;
  v23[1] = null2;
  v22[2] = @"portType";
  null3 = portType;
  if (!portType)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v22[3] = @"portName";
  null4 = portName;
  if (!portName)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"routeChangeReason";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v22[5] = @"type";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v7)
    {
LABEL_18:
      if (portName)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  if (portName)
  {
LABEL_19:
    if (portType)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (identifier)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!portType)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (identifier)
  {
    goto LABEL_21;
  }

LABEL_30:

LABEL_21:
  if (!v21)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMAudioRoute)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v61[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"external"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v18 = 0;
          v20 = 0;
          goto LABEL_50;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = v8;
        v23 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
        v59 = v48;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v24 = v23;
        v8 = v22;
        v18 = 0;
        v20 = 0;
        *errorCopy = [v21 initWithDomain:v24 code:2 userInfo:v10];
        goto LABEL_49;
      }

      v47 = v9;
    }

    else
    {
      v47 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"portType"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v48 = 0;
          v20 = 0;
          v18 = v47;
          goto LABEL_49;
        }

        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = v8;
        v27 = *MEMORY[0x1E698F240];
        v56 = *MEMORY[0x1E696A578];
        v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"portType"];
        v57 = v45;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v28 = v27;
        v8 = v26;
        v48 = 0;
        v20 = 0;
        *errorCopy = [v25 initWithDomain:v28 code:2 userInfo:v11];
LABEL_48:
        v18 = v47;

        self = selfCopy;
LABEL_49:

        goto LABEL_50;
      }

      v48 = v10;
    }

    else
    {
      v48 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"portName"];
    v44 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v45 = 0;
          v20 = 0;
          goto LABEL_48;
        }

        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v54 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"portName"];
        v55 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v30 = [v46 initWithDomain:v29 code:2 userInfo:v12];
        v45 = 0;
        v20 = 0;
        *errorCopy = v30;
        goto LABEL_47;
      }

      v45 = v11;
    }

    else
    {
      v45 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"routeChangeReason"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v12;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v13 = 0;
            v20 = 0;
            goto LABEL_47;
          }

          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v52 = *MEMORY[0x1E696A578];
          v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"routeChangeReason"];
          v53 = v32;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v38 = [v36 initWithDomain:v37 code:2 userInfo:v31];
          v13 = 0;
          v20 = 0;
          *errorCopy = v38;
          goto LABEL_46;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMAudioRouteChangeReasonFromString(v12)];
      }

      v13 = v14;
    }

    else
    {
      v13 = 0;
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v31;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy)
          {
            v42 = objc_alloc(MEMORY[0x1E696ABC0]);
            v41 = *MEMORY[0x1E698F240];
            v50 = *MEMORY[0x1E696A578];
            v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
            v51 = v39;
            v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
            *errorCopy = [v42 initWithDomain:v41 code:2 userInfo:v40];
          }

          v32 = 0;
          v20 = 0;
          goto LABEL_46;
        }

        v33 = [MEMORY[0x1E696AD98] numberWithInt:BMAudioRouteTypeFromString(v31)];
      }

      v32 = v33;
    }

    else
    {
      v32 = 0;
    }

    v20 = -[BMAudioRoute initWithExternal:identifier:portType:portName:routeChangeReason:type:](selfCopy, "initWithExternal:identifier:portType:portName:routeChangeReason:type:", v44, v47, v48, v45, [v13 intValue], objc_msgSend(v32, "intValue"));
    selfCopy = v20;
LABEL_46:

LABEL_47:
    v8 = v44;
    goto LABEL_48;
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
    v20 = 0;
    goto LABEL_51;
  }

  errorCopy2 = error;
  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v60 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"external"];
  v61[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  v19 = [v16 initWithDomain:v17 code:2 userInfo:v9];
  v8 = 0;
  v20 = 0;
  *errorCopy2 = v19;
LABEL_50:

LABEL_51:
  v34 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasExternal)
  {
    external = self->_external;
    PBDataWriterWriteBOOLField();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_portType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_portName)
  {
    PBDataWriterWriteStringField();
  }

  routeChangeReason = self->_routeChangeReason;
  PBDataWriterWriteUint32Field();
  type = self->_type;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v42.receiver = self;
  v42.super_class = BMAudioRoute;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_72;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_70;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v43 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v43 & 0x7F) << v7;
        if ((v43 & 0x80) == 0)
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
        goto LABEL_70;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      switch(v15)
      {
        case 4:
          v16 = PBReaderReadString();
          v17 = 48;
LABEL_48:
          v32 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          goto LABEL_69;
        case 5:
          v33 = 0;
          v34 = 0;
          v20 = 0;
          while (1)
          {
            v43 = 0;
            v35 = [fromCopy position] + 1;
            if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v43 & 0x7F) << v33;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v24 = v34++ > 8;
            if (v24)
            {
              goto LABEL_66;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 7)
          {
LABEL_66:
            LODWORD(v20) = 0;
          }

          v38 = 24;
          break;
        case 6:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v43 = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v43 & 0x7F) << v18;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v24 = v19++ > 8;
            if (v24)
            {
              goto LABEL_62;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 2)
          {
LABEL_62:
            LODWORD(v20) = 0;
          }

          v38 = 28;
          break;
        default:
LABEL_45:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_71;
          }

          goto LABEL_69;
      }

      *(&v5->super.super.isa + v38) = v20;
LABEL_69:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_70;
      }
    }

    switch(v15)
    {
      case 1:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasExternal = 1;
        while (1)
        {
          v43 = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v27 |= (v43 & 0x7F) << v25;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            LOBYTE(v31) = 0;
            goto LABEL_59;
          }
        }

        v31 = (v27 != 0) & ~[fromCopy hasError];
LABEL_59:
        v5->_external = v31;
        goto LABEL_69;
      case 2:
        v16 = PBReaderReadString();
        v17 = 32;
        break;
      case 3:
        v16 = PBReaderReadString();
        v17 = 40;
        break;
      default:
        goto LABEL_45;
    }

    goto LABEL_48;
  }

LABEL_70:
  if ([fromCopy hasError])
  {
LABEL_71:
    v40 = 0;
  }

  else
  {
LABEL_72:
    v40 = v5;
  }

  return v40;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAudioRoute external](self, "external")}];
  identifier = [(BMAudioRoute *)self identifier];
  portType = [(BMAudioRoute *)self portType];
  portName = [(BMAudioRoute *)self portName];
  v8 = BMAudioRouteChangeReasonAsString([(BMAudioRoute *)self routeChangeReason]);
  v9 = BMAudioRouteTypeAsString([(BMAudioRoute *)self type]);
  v10 = [v3 initWithFormat:@"BMAudioRoute with external: %@, identifier: %@, portType: %@, portName: %@, routeChangeReason: %@, type: %@", v4, identifier, portType, portName, v8, v9];

  return v10;
}

- (BMAudioRoute)initWithExternal:(id)external identifier:(id)identifier portType:(id)type portName:(id)name routeChangeReason:(int)reason type:(int)a8
{
  externalCopy = external;
  identifierCopy = identifier;
  typeCopy = type;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = BMAudioRoute;
  v18 = [(BMEventBase *)&v20 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (externalCopy)
    {
      v18->_hasExternal = 1;
      v18->_external = [externalCopy BOOLValue];
    }

    else
    {
      v18->_hasExternal = 0;
      v18->_external = 0;
    }

    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v18->_portType, type);
    objc_storeStrong(&v18->_portName, name);
    v18->_routeChangeReason = reason;
    v18->_type = a8;
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"external" number:1 type:12 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"portType" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"portName" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"routeChangeReason" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
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

    v8 = [[BMAudioRoute alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end