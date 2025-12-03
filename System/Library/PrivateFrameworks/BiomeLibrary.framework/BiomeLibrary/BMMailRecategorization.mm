@interface BMMailRecategorization
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMailRecategorization)initWithCategory:(int)category previous:(int)previous scope:(int)scope sender:(id)sender domain:(id)domain language:(id)language;
- (BMMailRecategorization)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    category = [(BMMailRecategorization *)self category];
    if (category != [v5 category])
    {
      goto LABEL_12;
    }

    previous = [(BMMailRecategorization *)self previous];
    if (previous != [v5 previous])
    {
      goto LABEL_12;
    }

    scope = [(BMMailRecategorization *)self scope];
    if (scope != [v5 scope])
    {
      goto LABEL_12;
    }

    sender = [(BMMailRecategorization *)self sender];
    sender2 = [v5 sender];
    v11 = sender2;
    if (sender == sender2)
    {
    }

    else
    {
      sender3 = [(BMMailRecategorization *)self sender];
      sender4 = [v5 sender];
      v14 = [sender3 isEqual:sender4];

      if (!v14)
      {
        goto LABEL_12;
      }
    }

    domain = [(BMMailRecategorization *)self domain];
    domain2 = [v5 domain];
    v18 = domain2;
    if (domain == domain2)
    {
    }

    else
    {
      domain3 = [(BMMailRecategorization *)self domain];
      domain4 = [v5 domain];
      v21 = [domain3 isEqual:domain4];

      if (!v21)
      {
LABEL_12:
        v15 = 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    language = [(BMMailRecategorization *)self language];
    language2 = [v5 language];
    if (language == language2)
    {
      v15 = 1;
    }

    else
    {
      language3 = [(BMMailRecategorization *)self language];
      language4 = [v5 language];
      v15 = [language3 isEqual:language4];
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
  sender = [(BMMailRecategorization *)self sender];
  domain = [(BMMailRecategorization *)self domain];
  language = [(BMMailRecategorization *)self language];
  v22[0] = @"category";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v23[0] = null;
  v22[1] = @"previous";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null2;
  v23[1] = null2;
  v22[2] = @"scope";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v23[2] = null3;
  v22[3] = @"sender";
  null4 = sender;
  if (!sender)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"domain";
  null5 = domain;
  if (!domain)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v22[5] = @"language";
  null6 = language;
  if (!language)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (language)
  {
    if (domain)
    {
      goto LABEL_15;
    }

LABEL_23:

    if (sender)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (!domain)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (sender)
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

- (BMMailRecategorization)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v56[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"category"];
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
        if (!error)
        {
          v41 = 0;
          v19 = 0;
          selfCopy6 = self;
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
        *error = [v30 initWithDomain:v31 code:2 userInfo:v8];
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

  v8 = [dictionaryCopy objectForKeyedSubscript:@"previous"];
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

      if (error)
      {
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"previous"];
        v54 = v43;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v44 = 0;
        v19 = 0;
        *error = [v32 initWithDomain:v33 code:2 userInfo:v10];
        goto LABEL_69;
      }

      v44 = 0;
      v19 = 0;
LABEL_67:
      selfCopy6 = self;
      goto LABEL_53;
    }
  }

  v44 = 0;
LABEL_17:
  v10 = [dictionaryCopy objectForKeyedSubscript:@"scope"];
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

      if (error)
      {
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v51 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"scope"];
        v52 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v43 = 0;
        v19 = 0;
        *error = [v34 initWithDomain:v35 code:2 userInfo:v12];
        goto LABEL_62;
      }

      v43 = 0;
      v19 = 0;
LABEL_69:
      selfCopy6 = self;
      goto LABEL_52;
    }
  }

  v43 = 0;
LABEL_25:
  v12 = [dictionaryCopy objectForKeyedSubscript:@"sender"];
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

      if (error)
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
        *error = v22;
        goto LABEL_64;
      }

      v13 = 0;
      v19 = 0;
LABEL_62:
      selfCopy6 = self;
      goto LABEL_51;
    }
  }

  v13 = 0;
LABEL_28:
  v14 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
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

      if (error)
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
        *error = v25;
        goto LABEL_48;
      }

      v15 = 0;
      v19 = 0;
LABEL_64:
      selfCopy6 = self;
      goto LABEL_50;
    }
  }

  v15 = 0;
LABEL_31:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"language"];
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

      if (error)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"language"];
        v46 = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        *error = [v37 initWithDomain:v36 code:2 userInfo:v27];
      }

      v17 = 0;
      v19 = 0;
LABEL_48:
      selfCopy6 = self;
      goto LABEL_49;
    }
  }

  v17 = 0;
LABEL_34:
  selfCopy6 = -[BMMailRecategorization initWithCategory:previous:scope:sender:domain:language:](self, "initWithCategory:previous:scope:sender:domain:language:", [v6 intValue], objc_msgSend(v44, "intValue"), objc_msgSend(v43, "intValue"), v13, v15, v17);
  v19 = selfCopy6;
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  v7 = toCopy;
  if (self->_language)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v40.receiver = self;
  v40.super_class = BMMailRecategorization;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_74;
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
        v41 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v27 = [fromCopy position] + 1;
              if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if (([fromCopy hasError] & 1) != 0 || v18 > 6)
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
              v32 = [fromCopy position] + 1;
              if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if (([fromCopy hasError] & 1) != 0 || v18 > 6)
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
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if (([fromCopy hasError] & 1) != 0 || v18 > 2)
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  sender = [(BMMailRecategorization *)self sender];
  domain = [(BMMailRecategorization *)self domain];
  language = [(BMMailRecategorization *)self language];
  v10 = [v3 initWithFormat:@"BMMailRecategorization with category: %@, previous: %@, scope: %@, sender: %@, domain: %@, language: %@", v4, v5, v6, sender, domain, language];

  return v10;
}

- (BMMailRecategorization)initWithCategory:(int)category previous:(int)previous scope:(int)scope sender:(id)sender domain:(id)domain language:(id)language
{
  senderCopy = sender;
  domainCopy = domain;
  languageCopy = language;
  v20.receiver = self;
  v20.super_class = BMMailRecategorization;
  v18 = [(BMEventBase *)&v20 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    v18->_category = category;
    v18->_previous = previous;
    v18->_scope = scope;
    objc_storeStrong(&v18->_sender, sender);
    objc_storeStrong(&v18->_domain, domain);
    objc_storeStrong(&v18->_language, language);
  }

  return v18;
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