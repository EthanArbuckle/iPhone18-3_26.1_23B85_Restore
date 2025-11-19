@interface BMMailRecategorization
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMailRecategorization)initWithCategory:(int)a3 previous:(int)a4 scope:(int)a5 sender:(id)a6 domain:(id)a7 language:(id)a8;
- (BMMailRecategorization)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMailRecategorization

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"category" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"previous" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"scope" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sender" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domain" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"language" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
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

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"category" number:1 type:4 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"previous" number:2 type:4 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"scope" number:3 type:4 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sender" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domain" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"language" number:6 type:13 subMessageClass:0];
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
    v6 = [(BMMailRecategorization *)self category];
    if (v6 != [v5 category])
    {
      goto LABEL_12;
    }

    v7 = [(BMMailRecategorization *)self previous];
    if (v7 != [v5 previous])
    {
      goto LABEL_12;
    }

    v8 = [(BMMailRecategorization *)self scope];
    if (v8 != [v5 scope])
    {
      goto LABEL_12;
    }

    v9 = [(BMMailRecategorization *)self sender];
    v10 = [v5 sender];
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = [(BMMailRecategorization *)self sender];
      v13 = [v5 sender];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_12;
      }
    }

    v16 = [(BMMailRecategorization *)self domain];
    v17 = [v5 domain];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [(BMMailRecategorization *)self domain];
      v20 = [v5 domain];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
LABEL_12:
        v15 = 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    v23 = [(BMMailRecategorization *)self language];
    v24 = [v5 language];
    if (v23 == v24)
    {
      v15 = 1;
    }

    else
    {
      v25 = [(BMMailRecategorization *)self language];
      v26 = [v5 language];
      v15 = [v25 isEqual:v26];
    }

    goto LABEL_13;
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailRecategorization category](self, "category")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailRecategorization previous](self, "previous")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailRecategorization scope](self, "scope")}];
  v6 = [(BMMailRecategorization *)self sender];
  v7 = [(BMMailRecategorization *)self domain];
  v8 = [(BMMailRecategorization *)self language];
  v22[0] = @"category";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v23[0] = v9;
  v22[1] = @"previous";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v10;
  v23[1] = v10;
  v22[2] = @"scope";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v23[2] = v11;
  v22[3] = @"sender";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v12;
  v22[4] = @"domain";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v13;
  v22[5] = @"language";
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
      goto LABEL_15;
    }

LABEL_23:

    if (v6)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_24:

LABEL_16:
  if (v5)
  {
    if (v4)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v21)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMMailRecategorization)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v56[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"category"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v41 = 0;
          v19 = 0;
          v18 = self;
          goto LABEL_54;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v55 = *MEMORY[0x1E696A578];
        v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"category"];
        v56[0] = v44;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:&v55 count:1];
        v41 = 0;
        v19 = 0;
        *a4 = [v30 initWithDomain:v31 code:2 userInfo:v8];
        goto LABEL_67;
      }

      v7 = [MEMORY[0x1E696AD98] numberWithInt:BMMailRecategorizationCategoryFromString(v5)];
    }

    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = [v4 objectForKeyedSubscript:@"previous"];
  v41 = v6;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
LABEL_16:
        v44 = v9;
        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMailRecategorizationCategoryFromString(v8)];
        goto LABEL_16;
      }

      if (a4)
      {
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"previous"];
        v54 = v43;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v44 = 0;
        v19 = 0;
        *a4 = [v32 initWithDomain:v33 code:2 userInfo:v10];
        goto LABEL_69;
      }

      v44 = 0;
      v19 = 0;
LABEL_67:
      v18 = self;
      goto LABEL_53;
    }
  }

  v44 = 0;
LABEL_17:
  v10 = [v4 objectForKeyedSubscript:@"scope"];
  v40 = v8;
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
LABEL_24:
        v43 = v11;
        goto LABEL_25;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMMailRecategorizationScopeFromString(v10)];
        goto LABEL_24;
      }

      if (a4)
      {
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v51 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"scope"];
        v52 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v43 = 0;
        v19 = 0;
        *a4 = [v34 initWithDomain:v35 code:2 userInfo:v12];
        goto LABEL_62;
      }

      v43 = 0;
      v19 = 0;
LABEL_69:
      v18 = self;
      goto LABEL_52;
    }
  }

  v43 = 0;
LABEL_25:
  v12 = [v4 objectForKeyedSubscript:@"sender"];
  v38 = v5;
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        goto LABEL_28;
      }

      if (a4)
      {
        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v49 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sender"];
        v50 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v22 = [v20 initWithDomain:v21 code:2 userInfo:v14];
        v13 = 0;
        v19 = 0;
        *a4 = v22;
        goto LABEL_64;
      }

      v13 = 0;
      v19 = 0;
LABEL_62:
      v18 = self;
      goto LABEL_51;
    }
  }

  v13 = 0;
LABEL_28:
  v14 = [v4 objectForKeyedSubscript:@"domain"];
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
        goto LABEL_31;
      }

      if (a4)
      {
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domain"];
        v48 = v17;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v25 = [v23 initWithDomain:v24 code:2 userInfo:v16];
        v15 = 0;
        v19 = 0;
        *a4 = v25;
        goto LABEL_48;
      }

      v15 = 0;
      v19 = 0;
LABEL_64:
      v18 = self;
      goto LABEL_50;
    }
  }

  v15 = 0;
LABEL_31:
  v16 = [v4 objectForKeyedSubscript:@"language"];
  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
        goto LABEL_34;
      }

      if (a4)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"language"];
        v46 = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        *a4 = [v37 initWithDomain:v36 code:2 userInfo:v27];
      }

      v17 = 0;
      v19 = 0;
LABEL_48:
      v18 = self;
      goto LABEL_49;
    }
  }

  v17 = 0;
LABEL_34:
  v18 = -[BMMailRecategorization initWithCategory:previous:scope:sender:domain:language:](self, "initWithCategory:previous:scope:sender:domain:language:", [v6 intValue], objc_msgSend(v44, "intValue"), objc_msgSend(v43, "intValue"), v13, v15, v17);
  v19 = v18;
LABEL_49:

LABEL_50:
  v5 = v38;
LABEL_51:

  v8 = v40;
LABEL_52:

LABEL_53:
LABEL_54:

  v28 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMailRecategorization *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  category = self->_category;
  PBDataWriterWriteUint32Field();
  previous = self->_previous;
  PBDataWriterWriteUint32Field();
  scope = self->_scope;
  PBDataWriterWriteUint32Field();
  if (self->_sender)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v8;
  if (self->_language)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = BMMailRecategorization;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_74;
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
        v41 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v41 & 0x7F) << v7;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
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
            v24 = 32;
            break;
          case 5:
            v23 = PBReaderReadString();
            v24 = 40;
            break;
          case 6:
            v23 = PBReaderReadString();
            v24 = 48;
            break;
          default:
LABEL_45:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_73;
            }

            goto LABEL_71;
        }

        v35 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;
      }

      else
      {
        switch(v15)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v18 = 0;
            while (1)
            {
              v41 = 0;
              v27 = [v4 position] + 1;
              if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
              {
                v29 = [v4 data];
                [v29 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (v41 & 0x7F) << v25;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v22 = v26++ > 8;
              if (v22)
              {
                goto LABEL_60;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 6)
            {
LABEL_60:
              LODWORD(v18) = 0;
            }

            v36 = 20;
            break;
          case 2:
            v30 = 0;
            v31 = 0;
            v18 = 0;
            while (1)
            {
              v41 = 0;
              v32 = [v4 position] + 1;
              if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
              {
                v34 = [v4 data];
                [v34 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (v41 & 0x7F) << v30;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v22 = v31++ > 8;
              if (v22)
              {
                goto LABEL_68;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 6)
            {
LABEL_68:
              LODWORD(v18) = 0;
            }

            v36 = 24;
            break;
          case 3:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v41 = 0;
              v19 = [v4 position] + 1;
              if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
              {
                v21 = [v4 data];
                [v21 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (v41 & 0x7F) << v16;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                goto LABEL_64;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 2)
            {
LABEL_64:
              LODWORD(v18) = 0;
            }

            v36 = 28;
            break;
          default:
            goto LABEL_45;
        }

        *(&v5->super.super.isa + v36) = v18;
      }

LABEL_71:
      v37 = [v4 position];
    }

    while (v37 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_73:
    v38 = 0;
  }

  else
  {
LABEL_74:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMailRecategorizationCategoryAsString([(BMMailRecategorization *)self category]);
  v5 = BMMailRecategorizationCategoryAsString([(BMMailRecategorization *)self previous]);
  v6 = BMMailRecategorizationScopeAsString([(BMMailRecategorization *)self scope]);
  v7 = [(BMMailRecategorization *)self sender];
  v8 = [(BMMailRecategorization *)self domain];
  v9 = [(BMMailRecategorization *)self language];
  v10 = [v3 initWithFormat:@"BMMailRecategorization with category: %@, previous: %@, scope: %@, sender: %@, domain: %@, language: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMMailRecategorization)initWithCategory:(int)a3 previous:(int)a4 scope:(int)a5 sender:(id)a6 domain:(id)a7 language:(id)a8
{
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v20.receiver = self;
  v20.super_class = BMMailRecategorization;
  v18 = [(BMEventBase *)&v20 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    v18->_category = a3;
    v18->_previous = a4;
    v18->_scope = a5;
    objc_storeStrong(&v18->_sender, a6);
    objc_storeStrong(&v18->_domain, a7);
    objc_storeStrong(&v18->_language, a8);
  }

  return v18;
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

    v8 = [[BMMailRecategorization alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end