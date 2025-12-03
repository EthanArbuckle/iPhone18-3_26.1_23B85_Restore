@interface BMTextUnderstandingPoemBufferExtraction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMTextUnderstandingPoemBufferExtraction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMTextUnderstandingPoemBufferExtraction)initWithType:(int)type text:(id)text identifier:(id)identifier confidenceScore:(id)score contactIdentifier:(id)contactIdentifier role:(int)role isCoref:(id)coref;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMTextUnderstandingPoemBufferExtraction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(BMTextUnderstandingPoemBufferExtraction *)self type];
    if (type == [v5 type])
    {
      text = [(BMTextUnderstandingPoemBufferExtraction *)self text];
      text2 = [v5 text];
      v9 = text2;
      if (text == text2)
      {
      }

      else
      {
        text3 = [(BMTextUnderstandingPoemBufferExtraction *)self text];
        text4 = [v5 text];
        v12 = [text3 isEqual:text4];

        if (!v12)
        {
          goto LABEL_27;
        }
      }

      identifier = [(BMTextUnderstandingPoemBufferExtraction *)self identifier];
      identifier2 = [v5 identifier];
      v16 = identifier2;
      if (identifier == identifier2)
      {
      }

      else
      {
        identifier3 = [(BMTextUnderstandingPoemBufferExtraction *)self identifier];
        identifier4 = [v5 identifier];
        v19 = [identifier3 isEqual:identifier4];

        if (!v19)
        {
          goto LABEL_27;
        }
      }

      if (-[BMTextUnderstandingPoemBufferExtraction hasConfidenceScore](self, "hasConfidenceScore") || [v5 hasConfidenceScore])
      {
        if (![(BMTextUnderstandingPoemBufferExtraction *)self hasConfidenceScore])
        {
          goto LABEL_27;
        }

        if (![v5 hasConfidenceScore])
        {
          goto LABEL_27;
        }

        [(BMTextUnderstandingPoemBufferExtraction *)self confidenceScore];
        v21 = v20;
        [v5 confidenceScore];
        if (v21 != v22)
        {
          goto LABEL_27;
        }
      }

      contactIdentifier = [(BMTextUnderstandingPoemBufferExtraction *)self contactIdentifier];
      contactIdentifier2 = [v5 contactIdentifier];
      v25 = contactIdentifier2;
      if (contactIdentifier == contactIdentifier2)
      {
      }

      else
      {
        contactIdentifier3 = [(BMTextUnderstandingPoemBufferExtraction *)self contactIdentifier];
        contactIdentifier4 = [v5 contactIdentifier];
        v28 = [contactIdentifier3 isEqual:contactIdentifier4];

        if (!v28)
        {
          goto LABEL_27;
        }
      }

      role = [(BMTextUnderstandingPoemBufferExtraction *)self role];
      if (role == [v5 role])
      {
        if (!-[BMTextUnderstandingPoemBufferExtraction hasIsCoref](self, "hasIsCoref") && ![v5 hasIsCoref])
        {
          LOBYTE(v13) = 1;
          goto LABEL_28;
        }

        if (-[BMTextUnderstandingPoemBufferExtraction hasIsCoref](self, "hasIsCoref") && [v5 hasIsCoref])
        {
          isCoref = [(BMTextUnderstandingPoemBufferExtraction *)self isCoref];
          v13 = isCoref ^ [v5 isCoref] ^ 1;
LABEL_28:

          goto LABEL_29;
        }
      }
    }

LABEL_27:
    LOBYTE(v13) = 0;
    goto LABEL_28;
  }

  LOBYTE(v13) = 0;
LABEL_29:

  return v13;
}

- (id)jsonDictionary
{
  v26[7] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMTextUnderstandingPoemBufferExtraction type](self, "type")}];
  text = [(BMTextUnderstandingPoemBufferExtraction *)self text];
  identifier = [(BMTextUnderstandingPoemBufferExtraction *)self identifier];
  if (![(BMTextUnderstandingPoemBufferExtraction *)self hasConfidenceScore]|| ([(BMTextUnderstandingPoemBufferExtraction *)self confidenceScore], fabs(v5) == INFINITY))
  {
    v23 = 0;
  }

  else
  {
    [(BMTextUnderstandingPoemBufferExtraction *)self confidenceScore];
    v6 = MEMORY[0x1E696AD98];
    [(BMTextUnderstandingPoemBufferExtraction *)self confidenceScore];
    v23 = [v6 numberWithDouble:?];
  }

  contactIdentifier = [(BMTextUnderstandingPoemBufferExtraction *)self contactIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMTextUnderstandingPoemBufferExtraction role](self, "role")}];
  if ([(BMTextUnderstandingPoemBufferExtraction *)self hasIsCoref])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemBufferExtraction isCoref](self, "isCoref")}];
  }

  else
  {
    v9 = 0;
  }

  v25[0] = @"type";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v26[0] = null;
  v25[1] = @"text";
  null2 = text;
  if (!text)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null2;
  v26[1] = null2;
  v25[2] = @"identifier";
  null3 = identifier;
  if (!identifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v25[3] = @"confidenceScore";
  null4 = v23;
  if (!v23)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v3;
  v26[3] = null4;
  v25[4] = @"contactIdentifier";
  null5 = contactIdentifier;
  if (!contactIdentifier)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"role";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v25[6] = @"isCoref";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_24;
    }

LABEL_34:

    if (contactIdentifier)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  if (!v8)
  {
    goto LABEL_34;
  }

LABEL_24:
  if (contactIdentifier)
  {
    goto LABEL_25;
  }

LABEL_35:

LABEL_25:
  if (!v23)
  {
  }

  if (identifier)
  {
    if (text)
    {
      goto LABEL_29;
    }

LABEL_37:

    if (v22)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  if (!text)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v22)
  {
    goto LABEL_30;
  }

LABEL_38:

LABEL_30:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMTextUnderstandingPoemBufferExtraction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v73[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    errorCopy = error;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          v22 = 0;
          goto LABEL_56;
        }

        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v70 = *MEMORY[0x1E696A578];
        v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"text"];
        v71 = v59;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v12 = v20 = error;
        v21 = [v58 initWithDomain:v19 code:2 userInfo:v12];
        v11 = 0;
        v22 = 0;
        *v20 = v21;
        goto LABEL_55;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    v52 = v10;
    v53 = v7;
    v57 = v11;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v59 = 0;
          v22 = 0;
          goto LABEL_55;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v68 = *MEMORY[0x1E696A578];
        v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
        v69 = v56;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v25 = v23;
        v10 = v52;
        v26 = v24;
        v11 = v57;
        v59 = 0;
        v22 = 0;
        *errorCopy = [v25 initWithDomain:v26 code:2 userInfo:v13];
LABEL_54:

        v7 = v53;
LABEL_55:

        goto LABEL_56;
      }

      v59 = v12;
    }

    else
    {
      v59 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"confidenceScore"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v56 = 0;
          v22 = 0;
          goto LABEL_54;
        }

        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidenceScore"];
        v67 = v55;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v29 = v27;
        v10 = v52;
        v30 = [v29 initWithDomain:v28 code:2 userInfo:v14];
        v56 = 0;
        v22 = 0;
        *errorCopy = v30;
        goto LABEL_53;
      }

      v56 = v13;
    }

    else
    {
      v56 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"contactIdentifier"];
    v51 = v8;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v55 = 0;
          v22 = 0;
          goto LABEL_53;
        }

        selfCopy3 = self;
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v64 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contactIdentifier"];
        v65 = v17;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v33 = [v31 initWithDomain:v32 code:2 userInfo:v15];
        v55 = 0;
        v22 = 0;
        *errorCopy = v33;
LABEL_52:

        self = selfCopy3;
        v8 = v51;
        v10 = v52;
LABEL_53:

        v11 = v57;
        goto LABEL_54;
      }

      v55 = v14;
    }

    else
    {
      v55 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"role"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      selfCopy3 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v15;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v17 = 0;
            v22 = 0;
            goto LABEL_52;
          }

          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v46 = *MEMORY[0x1E698F240];
          v62 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"role"];
          v63 = v41;
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          v47 = [v50 initWithDomain:v46 code:2 userInfo:v40];
          v17 = 0;
          v22 = 0;
          *errorCopy = v47;
          goto LABEL_51;
        }

        v18 = [MEMORY[0x1E696AD98] numberWithInt:BMTextUnderstandingPoemBufferExtractionRoleTypeFromString(v15)];
      }

      v17 = v18;
    }

    else
    {
      selfCopy3 = self;
      v17 = 0;
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"isCoref"];
    if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v60 = *MEMORY[0x1E696A578];
          v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isCoref"];
          v61 = v44;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          *errorCopy = [v49 initWithDomain:v48 code:2 userInfo:v45];
        }

        v41 = 0;
        v22 = 0;
        goto LABEL_51;
      }

      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v22 = -[BMTextUnderstandingPoemBufferExtraction initWithType:text:identifier:confidenceScore:contactIdentifier:role:isCoref:](selfCopy3, "initWithType:text:identifier:confidenceScore:contactIdentifier:role:isCoref:", [v51 intValue], v57, v59, v56, v55, objc_msgSend(v17, "intValue"), v41);
    selfCopy3 = v22;
LABEL_51:

    goto LABEL_52;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMTextUnderstandingPoemBufferExtractionExtractionTypeFromString(v7)];
    goto LABEL_8;
  }

  if (!error)
  {
    v8 = 0;
    v22 = 0;
    goto LABEL_57;
  }

  v34 = objc_alloc(MEMORY[0x1E696ABC0]);
  v35 = *MEMORY[0x1E698F240];
  v72 = *MEMORY[0x1E696A578];
  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
  v73[0] = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
  v38 = v34;
  v10 = v37;
  v39 = v35;
  v11 = v36;
  v8 = 0;
  v22 = 0;
  *error = [v38 initWithDomain:v39 code:2 userInfo:v37];
LABEL_56:

LABEL_57:
  v42 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTextUnderstandingPoemBufferExtraction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  type = self->_type;
  v9 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_text)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasConfidenceScore)
  {
    confidenceScore = self->_confidenceScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  role = self->_role;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsCoref)
  {
    isCoref = self->_isCoref;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v45.receiver = self;
  v45.super_class = BMTextUnderstandingPoemBufferExtraction;
  v5 = [(BMEventBase *)&v45 init];
  if (!v5)
  {
    goto LABEL_79;
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
        LOBYTE(v46) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v46) & 0x7F) << v7;
        if ((LOBYTE(v46) & 0x80) == 0)
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
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v46) = 0;
              v27 = [fromCopy position] + 1;
              if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (LOBYTE(v46) & 0x7F) << v25;
              if ((LOBYTE(v46) & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v24 = v26++ > 8;
              if (v24)
              {
                goto LABEL_65;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 4)
            {
LABEL_65:
              LODWORD(v20) = 0;
            }

            v40 = 24;
LABEL_73:
            *(&v5->super.super.isa + v40) = v20;
            goto LABEL_76;
          case 2:
            v16 = PBReaderReadString();
            v17 = 32;
            break;
          case 3:
            v16 = PBReaderReadString();
            v17 = 40;
            break;
          default:
            goto LABEL_47;
        }
      }

      else
      {
        if (v15 > 5)
        {
          if (v15 == 7)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v5->_hasIsCoref = 1;
            while (1)
            {
              LOBYTE(v46) = 0;
              v35 = [fromCopy position] + 1;
              if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v34 |= (LOBYTE(v46) & 0x7F) << v32;
              if ((LOBYTE(v46) & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v13 = v33++ >= 9;
              if (v13)
              {
                LOBYTE(v38) = 0;
                goto LABEL_68;
              }
            }

            v38 = (v34 != 0) & ~[fromCopy hasError];
LABEL_68:
            v5->_isCoref = v38;
            goto LABEL_76;
          }

          if (v15 != 6)
          {
LABEL_47:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_78;
            }

            goto LABEL_76;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v46) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (LOBYTE(v46) & 0x7F) << v18;
            if ((LOBYTE(v46) & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v24 = v19++ > 8;
            if (v24)
            {
              goto LABEL_71;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 3)
          {
LABEL_71:
            LODWORD(v20) = 0;
          }

          v40 = 28;
          goto LABEL_73;
        }

        if (v15 == 4)
        {
          v5->_hasConfidenceScore = 1;
          v46 = 0.0;
          v30 = [fromCopy position] + 8;
          if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 8, v31 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_confidenceScore = v46;
          goto LABEL_76;
        }

        if (v15 != 5)
        {
          goto LABEL_47;
        }

        v16 = PBReaderReadString();
        v17 = 56;
      }

      v39 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_76:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_78:
    v43 = 0;
  }

  else
  {
LABEL_79:
    v43 = v5;
  }

  return v43;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMTextUnderstandingPoemBufferExtractionExtractionTypeAsString([(BMTextUnderstandingPoemBufferExtraction *)self type]);
  text = [(BMTextUnderstandingPoemBufferExtraction *)self text];
  identifier = [(BMTextUnderstandingPoemBufferExtraction *)self identifier];
  v7 = MEMORY[0x1E696AD98];
  [(BMTextUnderstandingPoemBufferExtraction *)self confidenceScore];
  v8 = [v7 numberWithDouble:?];
  contactIdentifier = [(BMTextUnderstandingPoemBufferExtraction *)self contactIdentifier];
  v10 = BMTextUnderstandingPoemBufferExtractionRoleTypeAsString([(BMTextUnderstandingPoemBufferExtraction *)self role]);
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemBufferExtraction isCoref](self, "isCoref")}];
  v12 = [v3 initWithFormat:@"BMTextUnderstandingPoemBufferExtraction with type: %@, text: %@, identifier: %@, confidenceScore: %@, contactIdentifier: %@, role: %@, isCoref: %@", v4, text, identifier, v8, contactIdentifier, v10, v11];

  return v12;
}

- (BMTextUnderstandingPoemBufferExtraction)initWithType:(int)type text:(id)text identifier:(id)identifier confidenceScore:(id)score contactIdentifier:(id)contactIdentifier role:(int)role isCoref:(id)coref
{
  textCopy = text;
  identifierCopy = identifier;
  scoreCopy = score;
  contactIdentifierCopy = contactIdentifier;
  corefCopy = coref;
  v24.receiver = self;
  v24.super_class = BMTextUnderstandingPoemBufferExtraction;
  v20 = [(BMEventBase *)&v24 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    v20->_type = type;
    objc_storeStrong(&v20->_text, text);
    objc_storeStrong(&v20->_identifier, identifier);
    if (scoreCopy)
    {
      v20->_hasConfidenceScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v20->_hasConfidenceScore = 0;
      v21 = -1.0;
    }

    v20->_confidenceScore = v21;
    objc_storeStrong(&v20->_contactIdentifier, contactIdentifier);
    v20->_role = role;
    if (corefCopy)
    {
      v20->_hasIsCoref = 1;
      v20->_isCoref = [corefCopy BOOLValue];
    }

    else
    {
      v20->_hasIsCoref = 0;
      v20->_isCoref = 0;
    }
  }

  return v20;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"text" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidenceScore" number:4 type:0 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactIdentifier" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"role" number:6 type:4 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCoref" number:7 type:12 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"text" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidenceScore" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contactIdentifier" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"role" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCoref" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
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

    v8 = [[BMTextUnderstandingPoemBufferExtraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end