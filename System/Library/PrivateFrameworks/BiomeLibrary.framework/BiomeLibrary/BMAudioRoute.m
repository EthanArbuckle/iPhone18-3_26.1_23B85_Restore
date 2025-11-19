@interface BMAudioRoute
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAudioRoute)initWithExternal:(id)a3 identifier:(id)a4 portType:(id)a5 portName:(id)a6 routeChangeReason:(int)a7 type:(int)a8;
- (BMAudioRoute)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAudioRoute

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAudioRoute *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

      v6 = [(BMAudioRoute *)self external];
      if (v6 != [v5 external])
      {
        goto LABEL_22;
      }
    }

    v7 = [(BMAudioRoute *)self identifier];
    v8 = [v5 identifier];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMAudioRoute *)self identifier];
      v11 = [v5 identifier];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_22;
      }
    }

    v14 = [(BMAudioRoute *)self portType];
    v15 = [v5 portType];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMAudioRoute *)self portType];
      v18 = [v5 portType];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_22;
      }
    }

    v20 = [(BMAudioRoute *)self portName];
    v21 = [v5 portName];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMAudioRoute *)self portName];
      v24 = [v5 portName];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_22;
      }
    }

    v26 = [(BMAudioRoute *)self routeChangeReason];
    if (v26 == [v5 routeChangeReason])
    {
      v27 = [(BMAudioRoute *)self type];
      v13 = v27 == [v5 type];
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

  v4 = [(BMAudioRoute *)self identifier];
  v5 = [(BMAudioRoute *)self portType];
  v6 = [(BMAudioRoute *)self portName];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAudioRoute routeChangeReason](self, "routeChangeReason")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAudioRoute type](self, "type")}];
  v22[0] = @"external";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v21 = v3;
  v23[0] = v9;
  v22[1] = @"identifier";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v10;
  v23[1] = v10;
  v22[2] = @"portType";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v11;
  v22[3] = @"portName";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v12;
  v22[4] = @"routeChangeReason";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v13;
  v22[5] = @"type";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = v14;
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
      if (v6)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  if (v6)
  {
LABEL_19:
    if (v5)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (v4)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (v4)
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

- (BMAudioRoute)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v61[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"external"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"identifier"];
    v43 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        *v43 = [v21 initWithDomain:v24 code:2 userInfo:v10];
        goto LABEL_49;
      }

      v47 = v9;
    }

    else
    {
      v47 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"portType"];
    v49 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        *v43 = [v25 initWithDomain:v28 code:2 userInfo:v11];
LABEL_48:
        v18 = v47;

        self = v49;
LABEL_49:

        goto LABEL_50;
      }

      v48 = v10;
    }

    else
    {
      v48 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"portName"];
    v44 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        *v43 = v30;
        goto LABEL_47;
      }

      v45 = v11;
    }

    else
    {
      v45 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"routeChangeReason"];
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
          if (!v43)
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
          *v43 = v38;
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

    v31 = [v6 objectForKeyedSubscript:@"type"];
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
          if (v43)
          {
            v42 = objc_alloc(MEMORY[0x1E696ABC0]);
            v41 = *MEMORY[0x1E698F240];
            v50 = *MEMORY[0x1E696A578];
            v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
            v51 = v39;
            v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
            *v43 = [v42 initWithDomain:v41 code:2 userInfo:v40];
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

    v20 = -[BMAudioRoute initWithExternal:identifier:portType:portName:routeChangeReason:type:](v49, "initWithExternal:identifier:portType:portName:routeChangeReason:type:", v44, v47, v48, v45, [v13 intValue], objc_msgSend(v32, "intValue"));
    v49 = v20;
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

  if (!a4)
  {
    v8 = 0;
    v20 = 0;
    goto LABEL_51;
  }

  v15 = a4;
  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v60 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"external"];
  v61[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  v19 = [v16 initWithDomain:v17 code:2 userInfo:v9];
  v8 = 0;
  v20 = 0;
  *v15 = v19;
LABEL_50:

LABEL_51:
  v34 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = BMAudioRoute;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_72;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_70;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v43 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v43 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v35 = [v4 position] + 1;
            if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
            {
              v37 = [v4 data];
              [v37 getBytes:&v43 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if (([v4 hasError] & 1) != 0 || v20 > 7)
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
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v43 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if (([v4 hasError] & 1) != 0 || v20 > 2)
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
      v39 = [v4 position];
      if (v39 >= [v4 length])
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
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v43 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        v31 = (v27 != 0) & ~[v4 hasError];
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
  if ([v4 hasError])
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
  v5 = [(BMAudioRoute *)self identifier];
  v6 = [(BMAudioRoute *)self portType];
  v7 = [(BMAudioRoute *)self portName];
  v8 = BMAudioRouteChangeReasonAsString([(BMAudioRoute *)self routeChangeReason]);
  v9 = BMAudioRouteTypeAsString([(BMAudioRoute *)self type]);
  v10 = [v3 initWithFormat:@"BMAudioRoute with external: %@, identifier: %@, portType: %@, portName: %@, routeChangeReason: %@, type: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMAudioRoute)initWithExternal:(id)a3 identifier:(id)a4 portType:(id)a5 portName:(id)a6 routeChangeReason:(int)a7 type:(int)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v20.receiver = self;
  v20.super_class = BMAudioRoute;
  v18 = [(BMEventBase *)&v20 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v18->_hasExternal = 1;
      v18->_external = [v14 BOOLValue];
    }

    else
    {
      v18->_hasExternal = 0;
      v18->_external = 0;
    }

    objc_storeStrong(&v18->_identifier, a4);
    objc_storeStrong(&v18->_portType, a5);
    objc_storeStrong(&v18->_portName, a6);
    v18->_routeChangeReason = a7;
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