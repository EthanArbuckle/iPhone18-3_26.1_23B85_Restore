@interface BMWebAppInFocus
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWebAppInFocus)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMWebAppInFocus)initWithStarting:(id)a3 absoluteTimestamp:(id)a4 type:(int)a5 identifier:(id)a6 name:(id)a7 manifestId:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWebAppInFocus

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"manifestId" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
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
    if (-[BMWebAppInFocus hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMWebAppInFocus *)self hasStarting])
      {
        goto LABEL_19;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_19;
      }

      v6 = [(BMWebAppInFocus *)self starting];
      if (v6 != [v5 starting])
      {
        goto LABEL_19;
      }
    }

    v7 = [(BMWebAppInFocus *)self absoluteTimestamp];
    v8 = [v5 absoluteTimestamp];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMWebAppInFocus *)self absoluteTimestamp];
      v11 = [v5 absoluteTimestamp];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v14 = [(BMWebAppInFocus *)self type];
    if (v14 == [v5 type])
    {
      v15 = [(BMWebAppInFocus *)self identifier];
      v16 = [v5 identifier];
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        v18 = [(BMWebAppInFocus *)self identifier];
        v19 = [v5 identifier];
        v20 = [v18 isEqual:v19];

        if (!v20)
        {
          goto LABEL_19;
        }
      }

      v21 = [(BMWebAppInFocus *)self name];
      v22 = [v5 name];
      v23 = v22;
      if (v21 == v22)
      {
      }

      else
      {
        v24 = [(BMWebAppInFocus *)self name];
        v25 = [v5 name];
        v26 = [v24 isEqual:v25];

        if (!v26)
        {
          goto LABEL_19;
        }
      }

      v28 = [(BMWebAppInFocus *)self manifestId];
      v29 = [v5 manifestId];
      if (v28 == v29)
      {
        v13 = 1;
      }

      else
      {
        v30 = [(BMWebAppInFocus *)self manifestId];
        v31 = [v5 manifestId];
        v13 = [v30 isEqual:v31];
      }

      goto LABEL_20;
    }

LABEL_19:
    v13 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v13 = 0;
LABEL_21:

  return v13;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v26[6] = *MEMORY[0x1E69E9840];
  if ([(BMWebAppInFocus *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWebAppInFocus starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMWebAppInFocus *)self absoluteTimestamp];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMWebAppInFocus *)self absoluteTimestamp];
    [v6 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWebAppInFocus type](self, "type")}];
  v9 = [(BMWebAppInFocus *)self identifier];
  v10 = [(BMWebAppInFocus *)self name];
  v11 = [(BMWebAppInFocus *)self manifestId];
  v25[0] = @"starting";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v12;
  v24 = v3;
  v26[0] = v12;
  v25[1] = @"absoluteTimestamp";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v13;
  v26[1] = v13;
  v25[2] = @"type";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v14;
  v25[3] = @"identifier";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v15;
  v25[4] = @"name";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v16;
  v25[5] = @"manifestId";
  v17 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{6, v21}];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v10)
    {
LABEL_21:
      if (v9)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }
  }

  if (v9)
  {
LABEL_22:
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_32:

    if (v7)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_31:

  if (!v8)
  {
    goto LABEL_32;
  }

LABEL_23:
  if (v7)
  {
    goto LABEL_24;
  }

LABEL_33:

LABEL_24:
  if (!v24)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BMWebAppInFocus)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v70[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"absoluteTimestamp"];
    v55 = v9;
    if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = MEMORY[0x1E695DF00];
        v12 = v10;
        v13 = [v11 alloc];
        [v12 doubleValue];
        v15 = v14;

        v16 = [v13 initWithTimeIntervalSinceReferenceDate:v15];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v58 = [v21 dateFromString:v10];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v58 = 0;
            v20 = 0;
            goto LABEL_43;
          }

          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = a4;
          v47 = *MEMORY[0x1E698F240];
          v67 = *MEMORY[0x1E696A578];
          v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v68 = v57;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
          v58 = 0;
          v20 = 0;
          *v52 = [v46 initWithDomain:v47 code:2 userInfo:v22];
          goto LABEL_42;
        }

        v16 = v10;
      }

      v58 = v16;
    }

    else
    {
      v58 = 0;
    }

LABEL_16:
    v22 = [v6 objectForKeyedSubscript:@"type"];
    v54 = v7;
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v57 = 0;
            v20 = 0;
            goto LABEL_41;
          }

          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = a4;
          v45 = *MEMORY[0x1E698F240];
          v65 = *MEMORY[0x1E696A578];
          v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
          v66 = v31;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
          v57 = 0;
          v20 = 0;
          *v51 = [v44 initWithDomain:v45 code:2 userInfo:v24];
LABEL_40:

LABEL_41:
          v7 = v54;
LABEL_42:

          v10 = v55;
          goto LABEL_43;
        }

        v23 = [MEMORY[0x1E696AD98] numberWithInt:BMWebAppInFocusWebAppTypeFromString(v22)];
      }

      v57 = v23;
    }

    else
    {
      v57 = 0;
    }

    v24 = [v6 objectForKeyedSubscript:@"identifier"];
    v56 = v8;
    if (v24)
    {
      v20 = a4;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v31 = 0;
            goto LABEL_40;
          }

          v34 = a4;
          v27 = self;
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v63 = *MEMORY[0x1E696A578];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
          v64 = v28;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v37 = [v35 initWithDomain:v36 code:2 userInfo:v26];
          v31 = 0;
          v20 = 0;
          *v34 = v37;
          goto LABEL_39;
        }

        v53 = v22;
        v25 = v24;
LABEL_29:
        v26 = [v6 objectForKeyedSubscript:@"name"];
        if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v27 = self;
          v28 = 0;
        }

        else
        {
          objc_opt_class();
          v27 = self;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v20)
            {
              v28 = 0;
              v31 = v25;
              v22 = v53;
              goto LABEL_39;
            }

            v38 = v20;
            v39 = objc_alloc(MEMORY[0x1E696ABC0]);
            v40 = *MEMORY[0x1E698F240];
            v61 = *MEMORY[0x1E696A578];
            v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
            v62 = v30;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
            v41 = [v39 initWithDomain:v40 code:2 userInfo:v29];
            v28 = 0;
            v20 = 0;
            v38->super.super.isa = v41;
            v31 = v25;
            v22 = v53;
            goto LABEL_38;
          }

          v28 = v26;
        }

        v29 = [v6 objectForKeyedSubscript:@"manifestId"];
        if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          v31 = v25;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v22 = v53;
            if (v20)
            {
              v49 = objc_alloc(MEMORY[0x1E696ABC0]);
              v48 = *MEMORY[0x1E698F240];
              v59 = *MEMORY[0x1E696A578];
              v50 = v20;
              v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"manifestId"];
              v60 = v42;
              v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
              v50->super.super.isa = [v49 initWithDomain:v48 code:2 userInfo:v43];

              v30 = 0;
              v20 = 0;
            }

            else
            {
              v30 = 0;
            }

            goto LABEL_38;
          }

          v30 = v29;
        }

        else
        {
          v30 = 0;
          v31 = v25;
        }

        v22 = v53;
        v20 = -[BMWebAppInFocus initWithStarting:absoluteTimestamp:type:identifier:name:manifestId:](v27, "initWithStarting:absoluteTimestamp:type:identifier:name:manifestId:", v56, v58, [v57 intValue], v31, v28, v30);
        v27 = v20;
LABEL_38:

LABEL_39:
        self = v27;
        v8 = v56;
        goto LABEL_40;
      }

      v53 = v22;
    }

    else
    {
      v53 = v22;
      v20 = a4;
    }

    v25 = 0;
    goto LABEL_29;
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
    goto LABEL_44;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = a4;
  v19 = *MEMORY[0x1E698F240];
  v69 = *MEMORY[0x1E696A578];
  v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
  v70[0] = v58;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
  v8 = 0;
  v20 = 0;
  *v18 = [v17 initWithDomain:v19 code:2 userInfo:v10];
LABEL_43:

LABEL_44:
  v32 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWebAppInFocus *)self writeTo:v3];
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

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v8;
  if (self->_manifestId)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = BMWebAppInFocus;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_63;
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
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v23 = PBReaderReadString();
            v24 = 48;
            break;
          case 5:
            v23 = PBReaderReadString();
            v24 = 56;
            break;
          case 6:
            v23 = PBReaderReadString();
            v24 = 64;
            break;
          default:
LABEL_45:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_62;
            }

            goto LABEL_60;
        }

        v34 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;
      }

      else
      {
        switch(v15)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v5->_hasStarting = 1;
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
                goto LABEL_53;
              }
            }

            v31 = (v27 != 0) & ~[v4 hasError];
LABEL_53:
            v5->_starting = v31;
            break;
          case 2:
            v5->_hasRaw_absoluteTimestamp = 1;
            v40 = 0.0;
            v32 = [v4 position] + 8;
            if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 8, v33 <= objc_msgSend(v4, "length")))
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
            break;
          case 3:
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
                goto LABEL_56;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 2)
            {
LABEL_56:
              LODWORD(v18) = 0;
            }

            v5->_type = v18;
            break;
          default:
            goto LABEL_45;
        }
      }

LABEL_60:
      v36 = [v4 position];
    }

    while (v36 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_62:
    v37 = 0;
  }

  else
  {
LABEL_63:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWebAppInFocus starting](self, "starting")}];
  v5 = [(BMWebAppInFocus *)self absoluteTimestamp];
  v6 = BMWebAppInFocusWebAppTypeAsString([(BMWebAppInFocus *)self type]);
  v7 = [(BMWebAppInFocus *)self identifier];
  v8 = [(BMWebAppInFocus *)self name];
  v9 = [(BMWebAppInFocus *)self manifestId];
  v10 = [v3 initWithFormat:@"BMWebAppInFocus with starting: %@, absoluteTimestamp: %@, type: %@, identifier: %@, name: %@, manifestId: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMWebAppInFocus)initWithStarting:(id)a3 absoluteTimestamp:(id)a4 type:(int)a5 identifier:(id)a6 name:(id)a7 manifestId:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v22.receiver = self;
  v22.super_class = BMWebAppInFocus;
  v19 = [(BMEventBase *)&v22 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v19->_hasStarting = 1;
      v19->_starting = [v14 BOOLValue];
    }

    else
    {
      v19->_hasStarting = 0;
      v19->_starting = 0;
    }

    if (v15)
    {
      v19->_hasRaw_absoluteTimestamp = 1;
      [v15 timeIntervalSinceReferenceDate];
    }

    else
    {
      v19->_hasRaw_absoluteTimestamp = 0;
      v20 = -1.0;
    }

    v19->_raw_absoluteTimestamp = v20;
    v19->_type = a5;
    objc_storeStrong(&v19->_identifier, a6);
    objc_storeStrong(&v19->_name, a7);
    objc_storeStrong(&v19->_manifestId, a8);
  }

  return v19;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:2 type:0 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:3 type:4 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"manifestId" number:6 type:13 subMessageClass:0];
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

    v8 = [[BMWebAppInFocus alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end